Return-Path: <muhammad_shakeel@mentor.com>
Received: from gemini.alm.mentorg.com (nat-lmt.mentorg.com [139.181.28.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B31BE013AE
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2013 00:58:29 -0700 (PDT)
Received: from pkl-mshakeel-ubuntu.mgc.mentorg.com ([137.202.157.119])
	by gemini.alm.mentorg.com (8.14.4/8.14.4) with ESMTP id r6M7wLBn027716; 
	Mon, 22 Jul 2013 02:58:23 -0500
From: "Shakeel, Muhammad" <muhammad_shakeel@mentor.com>
To: holger.behrens@windriver.com, florin.sarbu@windriver.com
Date: Mon, 22 Jul 2013 12:59:01 +0500
Message-Id: <1374479941-31611-1-git-send-email-muhammad_shakeel@mentor.com>
X-Mailer: git-send-email 1.7.9.5
Cc: yocto@yoctoproject.org
Subject: [PATCH] [meta-ivi] audiomanager: Fix runtime exception from AmNodeStateCommunicatorTest
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 22 Jul 2013 07:58:31 -0000

From: Muhammad Shakeel <muhammad_shakeel@mentor.com>

- Fixed data type issues
- Fixed some error log messages
- Modified the way for reading XML file
- Explicitly type cast the variables before sending message to
  sendLifeCycleRequest interface

- This commit has been merged into upstream Audiomanager (master) but
required here for tag 3.2

Signed-off-by: Muhammad Shakeel <muhammad_shakeel@mentor.com>
---
 ...-78-AmNodeStateCommunicatorTest-throws-a-.patch |  174 ++++++++++++++++++++
 .../audiomanager/audiomanager_3.2.bb               |    3 +-
 2 files changed, 176 insertions(+), 1 deletion(-)

diff --git a/recipes-multimedia/audiomanager/audiomanager/0001-Fix-for-bug-78-AmNodeStateCommunicatorTest-throws-a-.patch b/recipes-multimedia/audiomanager/audiomanager/0001-Fix-for-bug-78-AmNodeStateCommunicatorTest-throws-a-.patch
new file mode 100644
index 0000000..c360149
--- /dev/null
+++ b/recipes-multimedia/audiomanager/audiomanager/0001-Fix-for-bug-78-AmNodeStateCommunicatorTest-throws-a-.patch
@@ -0,0 +1,174 @@
+From 72a1c8d4fbf5ca1ef919e9463d21476d0a8c6f3a Mon Sep 17 00:00:00 2001
+From: Muhammad Shakeel <muhammad_shakeel@mentor.com>
+Date: Thu, 18 Jul 2013 15:37:39 +0500
+Subject: [PATCH] Fix for bug 78: AmNodeStateCommunicatorTest throws a runtime
+ exception
+
+- Fixed data type issues
+- Fixed some error log messages
+- Modified the way for reading XML file
+- Explicitly type cast the variables before sending message to
+  sendLifeCycleRequest interface
+
+Signed-off-by: Muhammad Shakeel <muhammad_shakeel@mentor.com>
+---
+ .../src/CAmNodeStateCommunicator.cpp               |   33 +++++++++++---------
+ .../test/AmNodeStateCommunicatorTest/send2nsm.py   |    2 +-
+ 2 files changed, 19 insertions(+), 16 deletions(-)
+
+diff --git a/AudioManagerDaemon/src/CAmNodeStateCommunicator.cpp b/AudioManagerDaemon/src/CAmNodeStateCommunicator.cpp
+index 01c4c6e..689b975 100644
+--- a/AudioManagerDaemon/src/CAmNodeStateCommunicator.cpp
++++ b/AudioManagerDaemon/src/CAmNodeStateCommunicator.cpp
+@@ -27,6 +27,7 @@
+ #include "CAmControlSender.h"
+ #include "shared/CAmDltWrapper.h"
+ #include "config.h"
++#include <sstream>
+ 
+ namespace am
+ {
+@@ -167,13 +168,13 @@ NsmErrorStatus_e CAmNodeStateCommunicator::nsmGetSessionState(const std::string&
+ 
+     if (!dbus_message_iter_append_basic(&iter, DBUS_TYPE_STRING, &sessionName))
+     {
+-        logError( "CAmNodeStateCommunicator::nsmRegisterShutdownClient no more memory");
++        logError( "CAmNodeStateCommunicator::nsmGetSessionState no more memory");
+         return (NsmErrorStatus_Dbus);
+     }
+ 
+     if (!dbus_message_iter_append_basic(&iter, DBUS_TYPE_INT32, &seatID))
+     {
+-        logError( "CAmNodeStateCommunicator::nsmRegisterShutdownClient no more memory");
++        logError( "CAmNodeStateCommunicator::nsmGetSessionState no more memory");
+         return (NsmErrorStatus_Dbus);
+     }
+ 
+@@ -242,7 +243,7 @@ NsmErrorStatus_e CAmNodeStateCommunicator::nsmRegisterShutdownClient(const uint3
+     DBusError error;
+     DBusMessageIter iter;
+     dbus_error_init(&error);
+-    int16_t returnError(0);
++    int32_t returnError(0);
+     std::string path = std::string(DBUS_SERVICE_OBJECT_PATH) + "/LifeCycleConsumer";
+     const char* charPath = path.c_str();
+     const char* service =DBUS_SERVICE_PREFIX;
+@@ -309,7 +310,7 @@ NsmErrorStatus_e CAmNodeStateCommunicator::nsmUnRegisterShutdownClient(const uin
+     DBusError error;
+     DBusMessageIter iter;
+     dbus_error_init(&error);
+-    int16_t returnError(0);
++    int32_t returnError(0);
+     std::string path = std::string(DBUS_SERVICE_OBJECT_PATH) + "/LifeCycleConsumer";
+     const char* charPath = path.c_str();
+     const char* service =DBUS_SERVICE_PREFIX;
+@@ -317,26 +318,26 @@ NsmErrorStatus_e CAmNodeStateCommunicator::nsmUnRegisterShutdownClient(const uin
+ 
+     if (!message)
+     {
+-        logError( "CAmNodeStateCommunicator::nsmRegisterShutdownClient dbus error:", error.message);
++        logError( "CAmNodeStateCommunicator::nsmUnRegisterShutdownClient dbus error:", error.message);
+         return (NsmErrorStatus_Dbus);
+     }
+     dbus_message_iter_init_append(message, &iter);
+ 
+     if (!dbus_message_iter_append_basic(&iter, DBUS_TYPE_STRING, &service))
+     {
+-        logError( "CAmNodeStateCommunicator::nsmRegisterShutdownClient no more memory");
++        logError( "CAmNodeStateCommunicator::nsmUnRegisterShutdownClient no more memory");
+         return (NsmErrorStatus_Dbus);
+     }
+ 
+     if (!dbus_message_iter_append_basic(&iter, DBUS_TYPE_STRING, &charPath))
+     {
+-        logError( "CAmNodeStateCommunicator::nsmRegisterShutdownClient no more memory");
++        logError( "CAmNodeStateCommunicator::nsmUnRegisterShutdownClient no more memory");
+         return (NsmErrorStatus_Dbus);
+     }
+ 
+     if (!dbus_message_iter_append_basic(&iter, DBUS_TYPE_UINT32, &shutdownMode))
+     {
+-        logError( "CAmNodeStateCommunicator::nsmRegisterShutdownClient no more memory");
++        logError( "CAmNodeStateCommunicator::nsmUnRegisterShutdownClient no more memory");
+         return (NsmErrorStatus_Dbus);
+     }
+ 
+@@ -345,13 +346,13 @@ NsmErrorStatus_e CAmNodeStateCommunicator::nsmUnRegisterShutdownClient(const uin
+ 
+     if (!reply)
+     {
+-        logError( "CAmNodeStateCommunicator::nsmRegisterShutdownClient failed, dbus error", error.message);
++        logError( "CAmNodeStateCommunicator::nsmUnRegisterShutdownClient failed, dbus error", error.message);
+         return (NsmErrorStatus_Dbus);
+     }
+ 
+     if(!dbus_message_get_args(reply, &error, DBUS_TYPE_INT32, &returnError, DBUS_TYPE_INVALID))
+     {
+-        logError( "CAmNodeStateCommunicator::nsmRegisterShutdownClient failed, dbus error", error.message);
++        logError( "CAmNodeStateCommunicator::nsmUnRegisterShutdownClient failed, dbus error", error.message);
+         return (NsmErrorStatus_Dbus);
+     }
+     dbus_message_unref(reply);
+@@ -409,7 +410,7 @@ NsmErrorStatus_e CAmNodeStateCommunicator::nsmSendLifecycleRequestComplete(const
+     DBusError error;
+     DBusMessageIter iter;
+     dbus_error_init(&error);
+-    int16_t returnError(0);
++    int32_t returnError(0);
+     DBusMessage * message = dbus_message_new_method_call(NSM_BUS_INTERFACE, NSM_PATH, NSM_INTERFACE, "LifecycleRequestComplete");
+ 
+     if (!message)
+@@ -473,7 +474,7 @@ DBusHandlerResult CAmNodeStateCommunicator::receiveCallbackDelegate(DBusConnecti
+     else
+     {
+         DBusMessage * returnMessage;
+-        dbus_uint16_t Request(0),RequestId(0);
++        dbus_uint32_t Request(0),RequestId(0);
+         //no introspection - ok. So we are only interested in out LifecycleRequest message...
+         std::string method(dbus_message_get_member(msg));
+         if (method=="LifecycleRequest")
+@@ -490,7 +491,7 @@ DBusHandlerResult CAmNodeStateCommunicator::receiveCallbackDelegate(DBusConnecti
+             if (dbus_message_iter_get_arg_type(&iter)!=DBUS_TYPE_UINT32)
+             {
+                 logError("CAmNodeStateCommunicator::receiveCallbackDelegate DBus Message has invalid arguments!");
+-                returnMessage = dbus_message_new_error(msg,DBUS_ERROR_INVALID_ARGS,"DBus argument is no uint16_t!");
++                returnMessage = dbus_message_new_error(msg,DBUS_ERROR_INVALID_ARGS,"DBus argument is not uint32_t!");
+                 sendMessage(returnMessage,msg);
+                 return (DBUS_HANDLER_RESULT_HANDLED);
+             }
+@@ -501,7 +502,7 @@ DBusHandlerResult CAmNodeStateCommunicator::receiveCallbackDelegate(DBusConnecti
+             if (dbus_message_iter_get_arg_type(&iter)!=DBUS_TYPE_UINT32)
+             {
+                 logError("CAmNodeStateCommunicator::receiveCallbackDelegate DBus Message has invalid arguments!");
+-                returnMessage = dbus_message_new_error(msg,DBUS_ERROR_INVALID_ARGS,"DBus argument is no uint16_t!");
++                returnMessage = dbus_message_new_error(msg,DBUS_ERROR_INVALID_ARGS,"DBus argument is not uint32_t!");
+                 sendMessage(returnMessage,msg);
+                 return (DBUS_HANDLER_RESULT_HANDLED);
+             }
+@@ -552,7 +553,9 @@ void CAmNodeStateCommunicator::sendIntrospection(DBusConnection* conn, DBusMessa
+        logError("IAmCommandReceiverShadow::sendIntrospection could not load xml file ",fullpath);
+        throw std::runtime_error("IAmCommandReceiverShadow::sendIntrospection Could not load introspecton XML");
+     }
+-    std::string introspect((std::istreambuf_iterator<char>(in)), std::istreambuf_iterator<char>());
++    std::stringstream buffer;
++    buffer << in.rdbuf();
++    std::string introspect = buffer.str();
+     const char* string = introspect.c_str();
+ 
+     // add the arguments to the reply
+diff --git a/AudioManagerDaemon/test/AmNodeStateCommunicatorTest/send2nsm.py b/AudioManagerDaemon/test/AmNodeStateCommunicatorTest/send2nsm.py
+index 3b6cad3..c7e8bf5 100644
+--- a/AudioManagerDaemon/test/AmNodeStateCommunicatorTest/send2nsm.py
++++ b/AudioManagerDaemon/test/AmNodeStateCommunicatorTest/send2nsm.py
+@@ -53,7 +53,7 @@ def LifecycleRequest(Request,RequestID):
+ 	bus = dbus.SessionBus()
+ 	remote_object = bus.get_object('org.genivi.NodeStateManager','/org/genivi/NodeStateManager')
+ 	iface = dbus.Interface(remote_object, 'org.genivi.NodeStateManager.Control')
+-	iface.sendLifeCycleRequest(Request,RequestID)
++	iface.sendLifeCycleRequest(dbus.UInt32(Request),dbus.UInt32(RequestID))
+ 
+ command=sys.argv[1]
+ if command=="nodeState":
+-- 
+1.7.9.5
+
diff --git a/recipes-multimedia/audiomanager/audiomanager_3.2.bb b/recipes-multimedia/audiomanager/audiomanager_3.2.bb
index d3dcb56..e3092b0 100644
--- a/recipes-multimedia/audiomanager/audiomanager_3.2.bb
+++ b/recipes-multimedia/audiomanager/audiomanager_3.2.bb
@@ -11,7 +11,8 @@ DEPENDS = "dlt-daemon sqlite3 dbus"
 
 SRC_URI = "git://git.projects.genivi.org/AudioManager.git;protocol=git;tag=${PV} \
            file://AudioManager.service file://setup_amgr.sh \
-           file://0001-Build-plugins-as-modules-instead-of-shared-libraries.patch"
+           file://0001-Build-plugins-as-modules-instead-of-shared-libraries.patch \
+           file://0001-Fix-for-bug-78-AmNodeStateCommunicatorTest-throws-a-.patch "
 
 S = "${WORKDIR}/git"
 inherit autotools gettext cmake pkgconfig systemd
-- 
1.7.9.5


