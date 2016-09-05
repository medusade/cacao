///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2016 $organization$
///
/// This software is provided by the author and contributors ``as is'' 
/// and any express or implied warranties, including, but not limited to, 
/// the implied warranties of merchantability and fitness for a particular 
/// purpose are disclaimed. In no event shall the author or contributors 
/// be liable for any direct, indirect, incidental, special, exemplary, 
/// or consequential damages (including, but not limited to, procurement 
/// of substitute goods or services; loss of use, data, or profits; or 
/// business interruption) however caused and on any theory of liability, 
/// whether in contract, strict liability, or tort (including negligence 
/// or otherwise) arising in any way out of the use of this software, 
/// even if advised of the possibility of such damage.
///
///   File: MainWindow.hh
///
/// Author: $author$
///   Date: 9/3/2016
///////////////////////////////////////////////////////////////////////
#ifndef _CACAO_APP_COCOA_APPLE_OSX_CRYPTO_IHASH_MAINWINDOW_HH
#define _CACAO_APP_COCOA_APPLE_OSX_CRYPTO_IHASH_MAINWINDOW_HH

#include "cacao/app/cocoa/apple/osx/crypto/iHash/iHashMain.hh"
#include "cacao/app/cocoa/crypto/iHash/MainWindow.hh"
#include "cacao/cocoa/mt/apple/osx/Thread.hh"
#include "cacao/cocoa/base/Waited.hh"

namespace cacao {
namespace app {
namespace cocoa {
namespace apple {
namespace osx {
namespace iHash {

typedef cacao::cocoa::apple::osx::Thread Thread;
///////////////////////////////////////////////////////////////////////
///  Class: ThreadRun
///////////////////////////////////////////////////////////////////////
class _EXPORT_CLASS ThreadRun: public Thread::Run {
public:
    typedef Thread::Run Extends;
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    ThreadRun(iHashMainWindow* mainWindow)
    : m_mainWindow(mainWindow), m_done(false) {
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual RunStatus operator()() {
        /*for (bool done = false; !done;) {
            try {
                volatile Waiter waitr(m_updateFileHash);
                LOG_DEBUG("...waited on m_updateFileHash");
                if (!(done = m_done)) {
                    [m_mainWindow performSelectorOnMainThread:@selector(updateFileHash:) withObject:m_mainWindow waitUntilDone:NO];
                }
            } catch (const WaitInterface::Status& status) {
                LOG_DEBUG("...failed wait m_updateFileHash");
                done = true;
            } catch (const Error& error) {
                LOG_ERROR("...failed " << error << " on wait m_updateFileHash");
                done = true;
            }
        }*/
        return RunSuccess;
    }
    void Stop() {
        m_done = true;
        //m_updateFileHash.Release();
        //m_updateFileHash.Destroy();
    }
    void UpdateFileHash() {
        //m_updateFileHash.Release();
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
protected:
    iHashMainWindow* m_mainWindow;
    bool m_done;
    //Semaphore m_updateFileHash;
};

typedef cocoa::crypto::iHash::MainWindow MainWindowExtends;
///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
class _EXPORT_CLASS MainWindow: public MainWindowExtends {
public:
    typedef MainWindowExtends Extends;
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    MainWindow()
    : m_controlView(0),
      m_threadRun(0),
      m_thread(0) {
    }
    virtual ~MainWindow() {
        if (!(Fini())) {
            LOG_ERROR("...failed on Fini()");
        }
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool Init(iHashMainWindow* mainWindow) {
        if ((mainWindow)) {
            if ((m_threadRun = new ThreadRun(mainWindow))) {
                if ((m_thread = new Thread(*m_threadRun))) {
                    return true;
                }
                delete m_threadRun;
                m_threadRun = 0;
            }
        }
        return false;
    }
    virtual bool Fini() {
        bool success = true;
        if ((m_threadRun)) {
            m_threadRun->Stop();
        }
        if ((m_thread)) {
            try {
                delete m_thread;
            } catch (const Creator::Exception& e) {
                LOG_ERROR("...caught const Creator::Exception& e = " << e << " on delete m_thread");
                success = false;
            }
            m_thread = 0;
        }
        if ((m_threadRun)) {
            delete m_threadRun;
            m_threadRun = 0;
        }
        return success;
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
    virtual bool Hash() {
        String s;
        if (GetHashText(s)) {
            LOG_DEBUG("...text = \"" << s << "\"");
            if (0 < s.length()) {
                return HashText();
            }
        }
        if (GetHashFileName(s)) {
            LOG_DEBUG("...file = \"" << s << "\"");
            if (0 < s.length()) {
                return HashFile();
            }
        }
        return HashBlank();
    }
    ///////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////
protected:
    iHashControlView* m_controlView;
    ThreadRun* m_threadRun;
    Thread* m_thread;
};

} // namespace iHash 
} // namespace osx 
} // namespace apple 
} // namespace cocoa 
} // namespace app 
} // namespace cacao 

#endif // _CACAO_APP_COCOA_APPLE_OSX_CRYPTO_IHASH_MAINWINDOW_HH 
