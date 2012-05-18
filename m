Return-Path: <challinan@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18C1EE013B7
	for <yocto@yoctoproject.org>; Fri, 18 May 2012 14:38:21 -0700 (PDT)
Received: by vbjk17 with SMTP id k17so4236944vbj.35
	for <yocto@yoctoproject.org>; Fri, 18 May 2012 14:38:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ObAzxOxI08DTCFokg1sB9cAr+wxDgfzsQUkXNyY2gmA=;
	b=r89oL29gUFoq+nsgx5KoyA2mVYQM4QBcCvDu6Y9cjwIDp4rjiKdTKt25z1fAEJXhml
	ygqpuB3pfoWowzfIfGsmQrQaoSMsf9wQGGY8TKePu7ZB4VrdUcn1Q5d522kj4BLNJLme
	sxP1oRXW0DZzMMp1aAJPy+hybLCh/abzo6cM4cn/GCwrOvT7JYndSWUnA0w5bVlHjCXI
	EqmTNczy3dna+90dTcBbxXhqsQwbQ13pFzDWc4yDJSWfL2dxirVpjHaEmE0+c9ojrZ2Y
	wYCZ679iuMbs/Ffz5jNlw2Rann/NQG2MVrFtIbC0fEBAhsC7rLTSwJhXVgyG3dWeMRaO
	qqrg==
MIME-Version: 1.0
Received: by 10.52.99.106 with SMTP id ep10mr5789758vdb.130.1337377100090;
	Fri, 18 May 2012 14:38:20 -0700 (PDT)
Received: by 10.52.70.241 with HTTP; Fri, 18 May 2012 14:38:20 -0700 (PDT)
Date: Fri, 18 May 2012 17:38:20 -0400
Message-ID: <CAME0jBS7RtPtcM46CjK7JfO0hu+SsE2W1v-ZHZKJQagQFRijSA@mail.gmail.com>
From: Chris Hallinan <challinan@gmail.com>
To: yocto@yoctoproject.org
Subject: [PATCH] Fix X server on emenlow when built with GCC 4.7.x
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 18 May 2012 21:38:21 -0000
Content-Type: text/plain; charset=ISO-8859-1

Note: this patch has already been submitted against other BSPs,
originally submitted to oe-core by Gary Thomas.  I ran into this same
issue building MACHINE=emenlow on my own Z530 platform.  There are
likely others as well where this needs to be applied.

Upstream is here:
https://bugs.freedesktop.org/show_bug.cgi?id=18451

PR has been bumped.

---

 .../files/fix-bogus-stack-variables.patch |  204
++++++++++++++++++++++++++++++++++
 .../xserver-psb-1.7.99.2.inc              |    5
 2 files changed, 207 insertions(+), 2 deletions(-)

diff --git a/meta-emenlow/recipes-graphics/xorg-xserver/files/fix-bogus-stack-variables.patch
b/meta-emenlow/recipes-graphics/xorg-xserver/files/fix-bogus-stack-variables.patch
new file mode 100644
index 0000000..5c9581a
--- /dev/null
+++ b/meta-emenlow/recipes-graphics/xorg-xserver/files/fix-bogus-stack-variables.patch
@@ -0,0 +1,204 @@
+diff --git a/Xext/xace.c b/Xext/xace.c
+index e10d837..c757cad 100644
+--- a/Xext/xace.c
++++ b/Xext/xace.c
+@@ -87,7 +87,18 @@ void XaceHookAuditEnd(ClientPtr ptr, int result)
+  */
+ int XaceHook(int hook, ...)
+ {
+-    pointer calldata;	/* data passed to callback */
++    union {
++	XaceResourceAccessRec res;
++	XaceDeviceAccessRec dev;
++	XaceSendAccessRec send;
++	XaceReceiveAccessRec recv;
++	XaceClientAccessRec client;
++	XaceExtAccessRec ext;
++	XaceServerAccessRec server;
++	XaceScreenAccessRec screen;
++	XaceAuthAvailRec auth;
++	XaceKeyAvailRec key;
++    } u;
+     int *prv = NULL;	/* points to return value from callback */
+     va_list ap;		/* argument list */
+     va_start(ap, hook);
+@@ -99,117 +110,86 @@ int XaceHook(int hook, ...)
+      */
+     switch (hook)
+     {
+-	case XACE_RESOURCE_ACCESS: {
+-	    XaceResourceAccessRec rec;
+-	    rec.client = va_arg(ap, ClientPtr);
+-	    rec.id = va_arg(ap, XID);
+-	    rec.rtype = va_arg(ap, RESTYPE);
+-	    rec.res = va_arg(ap, pointer);
+-	    rec.ptype = va_arg(ap, RESTYPE);
+-	    rec.parent = va_arg(ap, pointer);
+-	    rec.access_mode = va_arg(ap, Mask);
+-	    rec.status = Success; /* default allow */
+-	    calldata = &rec;
+-	    prv = &rec.status;
++	case XACE_RESOURCE_ACCESS:
++	    u.res.client = va_arg(ap, ClientPtr);
++	    u.res.id = va_arg(ap, XID);
++	    u.res.rtype = va_arg(ap, RESTYPE);
++	    u.res.res = va_arg(ap, pointer);
++	    u.res.ptype = va_arg(ap, RESTYPE);
++	    u.res.parent = va_arg(ap, pointer);
++	    u.res.access_mode = va_arg(ap, Mask);
++	    u.res.status = Success; /* default allow */
++	    prv = &u.res.status;
+ 	    break;
+-	}
+-	case XACE_DEVICE_ACCESS: {
+-	    XaceDeviceAccessRec rec;
+-	    rec.client = va_arg(ap, ClientPtr);
+-	    rec.dev = va_arg(ap, DeviceIntPtr);
+-	    rec.access_mode = va_arg(ap, Mask);
+-	    rec.status = Success; /* default allow */
+-	    calldata = &rec;
+-	    prv = &rec.status;
++	case XACE_DEVICE_ACCESS:
++	    u.dev.client = va_arg(ap, ClientPtr);
++	    u.dev.dev = va_arg(ap, DeviceIntPtr);
++	    u.dev.access_mode = va_arg(ap, Mask);
++	    u.dev.status = Success; /* default allow */
++	    prv = &u.dev.status;
+ 	    break;
+-	}
+-	case XACE_SEND_ACCESS: {
+-	    XaceSendAccessRec rec;
+-	    rec.client = va_arg(ap, ClientPtr);
+-	    rec.dev = va_arg(ap, DeviceIntPtr);
+-	    rec.pWin = va_arg(ap, WindowPtr);
+-	    rec.events = va_arg(ap, xEventPtr);
+-	    rec.count = va_arg(ap, int);
+-	    rec.status = Success; /* default allow */
+-	    calldata = &rec;
+-	    prv = &rec.status;
++	case XACE_SEND_ACCESS:
++	    u.send.client = va_arg(ap, ClientPtr);
++	    u.send.dev = va_arg(ap, DeviceIntPtr);
++	    u.send.pWin = va_arg(ap, WindowPtr);
++	    u.send.events = va_arg(ap, xEventPtr);
++	    u.send.count = va_arg(ap, int);
++	    u.send.status = Success; /* default allow */
++	    prv = &u.send.status;
+ 	    break;
+-	}
+-	case XACE_RECEIVE_ACCESS: {
+-	    XaceReceiveAccessRec rec;
+-	    rec.client = va_arg(ap, ClientPtr);
+-	    rec.pWin = va_arg(ap, WindowPtr);
+-	    rec.events = va_arg(ap, xEventPtr);
+-	    rec.count = va_arg(ap, int);
+-	    rec.status = Success; /* default allow */
+-	    calldata = &rec;
+-	    prv = &rec.status;
++	case XACE_RECEIVE_ACCESS:
++	    u.recv.client = va_arg(ap, ClientPtr);
++	    u.recv.pWin = va_arg(ap, WindowPtr);
++	    u.recv.events = va_arg(ap, xEventPtr);
++	    u.recv.count = va_arg(ap, int);
++	    u.recv.status = Success; /* default allow */
++	    prv = &u.recv.status;
+ 	    break;
+-	}
+-	case XACE_CLIENT_ACCESS: {
+-	    XaceClientAccessRec rec;
+-	    rec.client = va_arg(ap, ClientPtr);
+-	    rec.target = va_arg(ap, ClientPtr);
+-	    rec.access_mode = va_arg(ap, Mask);
+-	    rec.status = Success; /* default allow */
+-	    calldata = &rec;
+-	    prv = &rec.status;
++	case XACE_CLIENT_ACCESS:
++	    u.client.client = va_arg(ap, ClientPtr);
++	    u.client.target = va_arg(ap, ClientPtr);
++	    u.client.access_mode = va_arg(ap, Mask);
++	    u.client.status = Success; /* default allow */
++	    prv = &u.client.status;
+ 	    break;
+-	}
+-	case XACE_EXT_ACCESS: {
+-	    XaceExtAccessRec rec;
+-	    rec.client = va_arg(ap, ClientPtr);
+-	    rec.ext = va_arg(ap, ExtensionEntry*);
+-	    rec.access_mode = DixGetAttrAccess;
+-	    rec.status = Success; /* default allow */
+-	    calldata = &rec;
+-	    prv = &rec.status;
++	case XACE_EXT_ACCESS:
++	    u.ext.client = va_arg(ap, ClientPtr);
++	    u.ext.ext = va_arg(ap, ExtensionEntry*);
++	    u.ext.access_mode = DixGetAttrAccess;
++	    u.ext.status = Success; /* default allow */
++	    prv = &u.ext.status;
+ 	    break;
+-	}
+-	case XACE_SERVER_ACCESS: {
+-	    XaceServerAccessRec rec;
+-	    rec.client = va_arg(ap, ClientPtr);
+-	    rec.access_mode = va_arg(ap, Mask);
+-	    rec.status = Success; /* default allow */
+-	    calldata = &rec;
+-	    prv = &rec.status;
++	case XACE_SERVER_ACCESS:
++	    u.server.client = va_arg(ap, ClientPtr);
++	    u.server.access_mode = va_arg(ap, Mask);
++	    u.server.status = Success; /* default allow */
++	    prv = &u.server.status;
+ 	    break;
+-	}
+ 	case XACE_SCREEN_ACCESS:
+-	case XACE_SCREENSAVER_ACCESS: {
+-	    XaceScreenAccessRec rec;
+-	    rec.client = va_arg(ap, ClientPtr);
+-	    rec.screen = va_arg(ap, ScreenPtr);
+-	    rec.access_mode = va_arg(ap, Mask);
+-	    rec.status = Success; /* default allow */
+-	    calldata = &rec;
+-	    prv = &rec.status;
++	case XACE_SCREENSAVER_ACCESS:
++	    u.screen.client = va_arg(ap, ClientPtr);
++	    u.screen.screen = va_arg(ap, ScreenPtr);
++	    u.screen.access_mode = va_arg(ap, Mask);
++	    u.screen.status = Success; /* default allow */
++	    prv = &u.screen.status;
+ 	    break;
+-	}
+-	case XACE_AUTH_AVAIL: {
+-	    XaceAuthAvailRec rec;
+-	    rec.client = va_arg(ap, ClientPtr);
+-	    rec.authId = va_arg(ap, XID);
+-	    calldata = &rec;
++	case XACE_AUTH_AVAIL:
++	    u.auth.client = va_arg(ap, ClientPtr);
++	    u.auth.authId = va_arg(ap, XID);
+ 	    break;
+-	}
+-	case XACE_KEY_AVAIL: {
+-	    XaceKeyAvailRec rec;
+-	    rec.event = va_arg(ap, xEventPtr);
+-	    rec.keybd = va_arg(ap, DeviceIntPtr);
+-	    rec.count = va_arg(ap, int);
+-	    calldata = &rec;
++	case XACE_KEY_AVAIL:
++	    u.key.event = va_arg(ap, xEventPtr);
++	    u.key.keybd = va_arg(ap, DeviceIntPtr);
++	    u.key.count = va_arg(ap, int);
+ 	    break;
+-	}
+-	default: {
++	default:
+ 	    va_end(ap);
+ 	    return 0;	/* unimplemented hook number */
+-	}
+     }
+     va_end(ap);
+
+     /* call callbacks and return result, if any. */
+-    CallCallbacks(&XaceHooks[hook], calldata);
++    CallCallbacks(&XaceHooks[hook], &u);
+     return prv ? *prv : Success;
+ }
diff --git a/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb-1.7.99.2.inc
b/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb-1.7.99.2.inc
index 9ee9c97..1fe962b 100644
--- a/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb-1.7.99.2.inc
+++ b/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb-1.7.99.2.inc
@@ -1,4 +1,4 @@
-PR = "r5"
+PR = "r6"

 PROTO_DEPS += "xf86driproto dri2proto"

@@ -8,7 +8,8 @@ SRC_URI += "file://nodolt.patch \
             file://crosscompile.patch \
 	    file://libdrm-poulsbo.patch \
 	    file://werror-address-fix.patch \
-	    file://ptr-to-int-cast-fix.patch"
+	    file://ptr-to-int-cast-fix.patch \
+	    file://fix-bogus-stack-variables.patch"

 # Misc build failure for master HEAD
 SRC_URI += "file://fix_open_max_preprocessor_error.patch"

