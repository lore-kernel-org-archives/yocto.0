Return-Path: <challinan@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A325FE0044A
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 19:56:33 -0700 (PDT)
Received: by obbef5 with SMTP id ef5so13137367obb.35
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 19:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=GvpCspSYq4gSYK7ruibKLB0fcL/6yhLMbF3X6bzKsQU=;
	b=wkdna9xExT7HdjCCp3k8ViBQACYGpCGCwOScEKqnt401vLKGc5tQttlPpXr/ws9ZKz
	ISwBhUIxdvXo28vI90eZzDM9ffU9BRl7E4zC+NtxVCpHILOZFLmCDsLEc4j94pppQI20
	SEtEvVEs4IWT8DwUpBnCqnaR5xt2mr0fknb/c18FMP6niZxzcWiunUmJPbSuIbmkN9Up
	w6SKmJZdUjm4a6hjvMpWrtqxnj6jnGY3v4UNqGSxJ328oAcQswZJUZH3H9FU/pSK/POy
	opJoNE7ZU9eQmU8SD4wH+awtY+713nm4fgcoTRztxOSvyk7/aJ/O3a5EYk524UuVN1+R
	7ncw==
Received: by 10.182.115.74 with SMTP id jm10mr21501430obb.71.1337655392782;
	Mon, 21 May 2012 19:56:32 -0700 (PDT)
Received: from localhost.localdomain (nat-lmt.mentorg.com. [139.181.28.34])
	by mx.google.com with ESMTPS id ch5sm17229008obb.16.2012.05.21.19.56.31
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 21 May 2012 19:56:31 -0700 (PDT)
From: Christopher Hallinan <challinan@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 21 May 2012 21:56:43 -0500
Message-Id: <1337655403-4049-1-git-send-email-challinan@gmail.com>
X-Mailer: git-send-email 1.7.0.4
Subject: [PATCH] Fix X server on emenlow when built with gcc 4.7.x
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
X-List-Received-Date: Tue, 22 May 2012 02:56:33 -0000

On Mon, May 21, 2012 at 2:30 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> On Fri, 2012-05-18 at 23:02 -0400, Chris Hallinan wrote:
>> On Fri, May 18, 2012 at 6:25 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
>> > On Fri, 2012-05-18 at 17:38 -0400, Chris Hallinan wrote:
>> >> Note: this patch has already been submitted against other BSPs,
>> >> originally submitted to oe-core by Gary Thomas.  I ran into this same
>> >> issue building MACHINE=emenlow on my own Z530 platform.  There are
>> >> likely others as well where this needs to be applied.
>> >>
>> >> Upstream is here:
>> >> https://bugs.freedesktop.org/show_bug.cgi?id=18451
>> >>
>> >> PR has been bumped.
>> >>
>> >
>> > Hi, thanks for the patch - I see the problem and will pull this in as
>> > soon as I can build and test it, but am getting a patch failure in the
>> > build after pulling it in for testing.  I'll fix it up, but just
>> > mentioning it in case you had any ideas why it might work for you but
>> > fail here...
>> >
>>
>> Sorry, Tom.
>> Odd, I generated the patch using git diff, but didn't actually try to
>> apply it to an unpatched tree.  Looking at it, it isn't obvious why it
>> fails. Someone with more git/patch foo than me could probably explain
>> it ;)
>>
>> This one works (for me) against current top of tree:
>>
>
> It must be a whitespace problem - I still couldn't apply it, so manually
> fixed it up here, patch below.
>
> I also added an Upstream-status: section to the patch.
>
> Also, before pulling it in, I'll need to have you send me your
> Signed-off-by: line.
>
> Unfortunately, the problem now is that although I am getting a sato
> desktop, it has no icons or mouse/keyboard and I see this in the
> Xorg.0.log:
>
> Backtrace:
> 0: /usr/bin/Xorg (xorg_backtrace+0x37) [0x80e2e37]
> 1: /usr/bin/Xorg (0x8047000+0x5bda6) [0x80a2da6]
> 2: linux-gate.so.1 (__kernel_rt_sigreturn+0x0) [0xffffe40c]
> 3: /usr/lib/xorg/modules/drivers/psb_drv.so (0xb769b000+0x690c)
> [0xb76a190c]
> 4: /usr/lib/xorg/modules/libexa.so (0xb71ab000+0xcd0a) [0xb71b7d0a]
> 5: /usr/lib/xorg/modules/libexa.so (0xb71ab000+0xd300) [0xb71b8300]
> 6: /usr/lib/xorg/modules/libexa.so (0xb71ab000+0xb5fd) [0xb71b65fd]
> 7: /usr/bin/Xorg (0x8047000+0xc60c0) [0x810d0c0]
> 8: /usr/bin/Xorg (CompositeGlyphs+0xb1) [0x819f131]
> 9: /usr/bin/Xorg (0x8047000+0xc2e1e) [0x8109e1e]
> 10: /usr/bin/Xorg (0x8047000+0xbdb2e) [0x8104b2e]
> 11: /usr/bin/Xorg (0x8047000+0x286cf) [0x806f6cf]
> 12: /usr/bin/Xorg (0x8047000+0x1bbca) [0x8062bca]
> 13: /lib/libc.so.6 (__libc_start_main+0xf5) [0x42892ba5]
> 14: /usr/bin/Xorg (0x8047000+0x1bea1) [0x8062ea1]
> Segmentation fault at address 0xc
>
> Fatal server error:
> Caught signal 11 (Segmentation fault). Server aborting
>
>
> Can you tell me which poky commit you're using?

I haven't sync'd lately. I'm using 
poky: f39ba520d6f2477c99839a92049b1bb279f092cf
meta-intel: bde31fd7e66faea865d24ff0858a9006b89e4e54

Third time should be a charm.  With kergoth's help, I think I got this patch format correct!

Signed-off-by: Christopher Hallinan <challinan@gmail.com>
---
 .../files/fix-bogus-stack-variables.patch          |  204 ++++++++++++++++++++
 .../xorg-xserver/xserver-psb-1.7.99.2.inc          |    5 +-
 2 files changed, 207 insertions(+), 2 deletions(-)
 create mode 100644 meta-emenlow/recipes-graphics/xorg-xserver/files/fix-bogus-stack-variables.patch

diff --git a/meta-emenlow/recipes-graphics/xorg-xserver/files/fix-bogus-stack-variables.patch b/meta-emenlow/recipes-graphics/xorg-xserver/files/fix-bogus-stack-variables.patch
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
diff --git a/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb-1.7.99.2.inc b/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb-1.7.99.2.inc
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
-- 
1.7.0.4


