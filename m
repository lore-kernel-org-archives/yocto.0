Return-Path: <challinan@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46DD1E0137A
	for <yocto@yoctoproject.org>; Fri, 18 May 2012 20:02:09 -0700 (PDT)
Received: by vbjk17 with SMTP id k17so4360642vbj.35
	for <yocto@yoctoproject.org>; Fri, 18 May 2012 20:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=M1UensoqOeK1lGheIx0870xVFClu91kZBwC/jClnyww=;
	b=soMaYRjrths+DLInZh/ovKWnlv5QFsQhRoXoyirI9owdl/lQBWQChLIxKN+itS+55C
	MO+4QfNql4ozbZwywHgbMIOBagBcVDxrNJmJnrGQDzTXa667RBW3bsQcqiSVxzL5bPqO
	W/LbOZtjUoUjDbyjH5jixEFX3b19DDLEXSnkPa3evoA1XuxkOyZ6/GX6fq0NoHOpV+ma
	Yq3Onowa2YNCZuyyROLmK5QilfOt6hFbK+0epSBpQqDPbnpUpMrFr/SGbaNpBbFImPYR
	tH40zJRHQmIqvBPsGsbqsq3YSuez+lI3bRHIsBrTXDr8HwE6Ge2kPHs5VDwF5x9H9BJD
	7jHg==
MIME-Version: 1.0
Received: by 10.52.177.41 with SMTP id cn9mr6372874vdc.53.1337396528075; Fri,
	18 May 2012 20:02:08 -0700 (PDT)
Received: by 10.52.70.241 with HTTP; Fri, 18 May 2012 20:02:07 -0700 (PDT)
In-Reply-To: <1337379917.2409.3.camel@elmorro>
References: <CAME0jBS7RtPtcM46CjK7JfO0hu+SsE2W1v-ZHZKJQagQFRijSA@mail.gmail.com>
	<1337379917.2409.3.camel@elmorro>
Date: Fri, 18 May 2012 23:02:07 -0400
Message-ID: <CAME0jBRfSHAWp5Q1vX7D5uV6fz=cU5bQZg-j-bjqRyKHM-tLtg@mail.gmail.com>
From: Chris Hallinan <challinan@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] Fix X server on emenlow when built with GCC 4.7.x
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
X-List-Received-Date: Sat, 19 May 2012 03:02:09 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, May 18, 2012 at 6:25 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> On Fri, 2012-05-18 at 17:38 -0400, Chris Hallinan wrote:
>> Note: this patch has already been submitted against other BSPs,
>> originally submitted to oe-core by Gary Thomas. =A0I ran into this same
>> issue building MACHINE=3Demenlow on my own Z530 platform. =A0There are
>> likely others as well where this needs to be applied.
>>
>> Upstream is here:
>> https://bugs.freedesktop.org/show_bug.cgi?id=3D18451
>>
>> PR has been bumped.
>>
>
> Hi, thanks for the patch - I see the problem and will pull this in as
> soon as I can build and test it, but am getting a patch failure in the
> build after pulling it in for testing. =A0I'll fix it up, but just
> mentioning it in case you had any ideas why it might work for you but
> fail here...
>

Sorry, Tom.
Odd, I generated the patch using git diff, but didn't actually try to
apply it to an unpatched tree.  Looking at it, it isn't obvious why it
fails. Someone with more git/patch foo than me could probably explain
it ;)

This one works (for me) against current top of tree:

--
diff --git a/meta-emenlow/recipes-graphics/xorg-xserver/files/fix-bogus-sta=
ck-variables.patch
b/meta-emenlow/recipes-graphics/xorg-xserver/files/fix-bogus-stack-variable=
s.patch
new file mode 100644
index 0000000..a5101b6
--- /dev/null
+++ b/meta-emenlow/recipes-graphics/xorg-xserver/files/fix-bogus-stack-vari=
ables.patch
@@ -0,0 +1,204 @@
+diff --git a/Xext/xace.c b/Xext/xace.c
+index e10d837..c757cad 100644
+--- a/Xext/xace.c
++++ b/Xext/xace.c
+@@ -87,7 +87,18 @@ void XaceHookAuditEnd(ClientPtr ptr, int result)
+  */
+ int XaceHook(int hook, ...)
+ {
+-    pointer calldata; /* data passed to callback */
++    union {
++      XaceResourceAccessRec res;
++      XaceDeviceAccessRec dev;
++      XaceSendAccessRec send;
++      XaceReceiveAccessRec recv;
++      XaceClientAccessRec client;
++      XaceExtAccessRec ext;
++      XaceServerAccessRec server;
++      XaceScreenAccessRec screen;
++      XaceAuthAvailRec auth;
++      XaceKeyAvailRec key;
++    } u;
+     int *prv =3D NULL;  /* points to return value from callback */
+     va_list ap;               /* argument list */
+     va_start(ap, hook);
+@@ -99,117 +110,86 @@ int XaceHook(int hook, ...)
+      */
+     switch (hook)
+     {
+-      case XACE_RESOURCE_ACCESS: {
+-          XaceResourceAccessRec rec;
+-          rec.client =3D va_arg(ap, ClientPtr);
+-          rec.id =3D va_arg(ap, XID);
+-          rec.rtype =3D va_arg(ap, RESTYPE);
+-          rec.res =3D va_arg(ap, pointer);
+-          rec.ptype =3D va_arg(ap, RESTYPE);
+-          rec.parent =3D va_arg(ap, pointer);
+-          rec.access_mode =3D va_arg(ap, Mask);
+-          rec.status =3D Success; /* default allow */
+-          calldata =3D &rec;
+-          prv =3D &rec.status;
++      case XACE_RESOURCE_ACCESS:
++          u.res.client =3D va_arg(ap, ClientPtr);
++          u.res.id =3D va_arg(ap, XID);
++          u.res.rtype =3D va_arg(ap, RESTYPE);
++          u.res.res =3D va_arg(ap, pointer);
++          u.res.ptype =3D va_arg(ap, RESTYPE);
++          u.res.parent =3D va_arg(ap, pointer);
++          u.res.access_mode =3D va_arg(ap, Mask);
++          u.res.status =3D Success; /* default allow */
++          prv =3D &u.res.status;
+           break;
+-      }
+-      case XACE_DEVICE_ACCESS: {
+-          XaceDeviceAccessRec rec;
+-          rec.client =3D va_arg(ap, ClientPtr);
+-          rec.dev =3D va_arg(ap, DeviceIntPtr);
+-          rec.access_mode =3D va_arg(ap, Mask);
+-          rec.status =3D Success; /* default allow */
+-          calldata =3D &rec;
+-          prv =3D &rec.status;
++      case XACE_DEVICE_ACCESS:
++          u.dev.client =3D va_arg(ap, ClientPtr);
++          u.dev.dev =3D va_arg(ap, DeviceIntPtr);
++          u.dev.access_mode =3D va_arg(ap, Mask);
++          u.dev.status =3D Success; /* default allow */
++          prv =3D &u.dev.status;
+           break;
+-      }
+-      case XACE_SEND_ACCESS: {
+-          XaceSendAccessRec rec;
+-          rec.client =3D va_arg(ap, ClientPtr);
+-          rec.dev =3D va_arg(ap, DeviceIntPtr);
+-          rec.pWin =3D va_arg(ap, WindowPtr);
+-          rec.events =3D va_arg(ap, xEventPtr);
+-          rec.count =3D va_arg(ap, int);
+-          rec.status =3D Success; /* default allow */
+-          calldata =3D &rec;
+-          prv =3D &rec.status;
++      case XACE_SEND_ACCESS:
++          u.send.client =3D va_arg(ap, ClientPtr);
++          u.send.dev =3D va_arg(ap, DeviceIntPtr);
++          u.send.pWin =3D va_arg(ap, WindowPtr);
++          u.send.events =3D va_arg(ap, xEventPtr);
++          u.send.count =3D va_arg(ap, int);
++          u.send.status =3D Success; /* default allow */
++          prv =3D &u.send.status;
+           break;
+-      }
+-      case XACE_RECEIVE_ACCESS: {
+-          XaceReceiveAccessRec rec;
+-          rec.client =3D va_arg(ap, ClientPtr);
+-          rec.pWin =3D va_arg(ap, WindowPtr);
+-          rec.events =3D va_arg(ap, xEventPtr);
+-          rec.count =3D va_arg(ap, int);
+-          rec.status =3D Success; /* default allow */
+-          calldata =3D &rec;
+-          prv =3D &rec.status;
++      case XACE_RECEIVE_ACCESS:
++          u.recv.client =3D va_arg(ap, ClientPtr);
++          u.recv.pWin =3D va_arg(ap, WindowPtr);
++          u.recv.events =3D va_arg(ap, xEventPtr);
++          u.recv.count =3D va_arg(ap, int);
++          u.recv.status =3D Success; /* default allow */
++          prv =3D &u.recv.status;
+           break;
+-      }
+-      case XACE_CLIENT_ACCESS: {
+-          XaceClientAccessRec rec;
+-          rec.client =3D va_arg(ap, ClientPtr);
+-          rec.target =3D va_arg(ap, ClientPtr);
+-          rec.access_mode =3D va_arg(ap, Mask);
+-          rec.status =3D Success; /* default allow */
+-          calldata =3D &rec;
+-          prv =3D &rec.status;
++      case XACE_CLIENT_ACCESS:
++          u.client.client =3D va_arg(ap, ClientPtr);
++          u.client.target =3D va_arg(ap, ClientPtr);
++          u.client.access_mode =3D va_arg(ap, Mask);
++          u.client.status =3D Success; /* default allow */
++          prv =3D &u.client.status;
+           break;
+-      }
+-      case XACE_EXT_ACCESS: {
+-          XaceExtAccessRec rec;
+-          rec.client =3D va_arg(ap, ClientPtr);
+-          rec.ext =3D va_arg(ap, ExtensionEntry*);
+-          rec.access_mode =3D DixGetAttrAccess;
+-          rec.status =3D Success; /* default allow */
+-          calldata =3D &rec;
+-          prv =3D &rec.status;
++      case XACE_EXT_ACCESS:
++          u.ext.client =3D va_arg(ap, ClientPtr);
++          u.ext.ext =3D va_arg(ap, ExtensionEntry*);
++          u.ext.access_mode =3D DixGetAttrAccess;
++          u.ext.status =3D Success; /* default allow */
++          prv =3D &u.ext.status;
+           break;
+-      }
+-      case XACE_SERVER_ACCESS: {
+-          XaceServerAccessRec rec;
+-          rec.client =3D va_arg(ap, ClientPtr);
+-          rec.access_mode =3D va_arg(ap, Mask);
+-          rec.status =3D Success; /* default allow */
+-          calldata =3D &rec;
+-          prv =3D &rec.status;
++      case XACE_SERVER_ACCESS:
++          u.server.client =3D va_arg(ap, ClientPtr);
++          u.server.access_mode =3D va_arg(ap, Mask);
++          u.server.status =3D Success; /* default allow */
++          prv =3D &u.server.status;
+           break;
+-      }
+       case XACE_SCREEN_ACCESS:
+-      case XACE_SCREENSAVER_ACCESS: {
+-          XaceScreenAccessRec rec;
+-          rec.client =3D va_arg(ap, ClientPtr);
+-          rec.screen =3D va_arg(ap, ScreenPtr);
+-          rec.access_mode =3D va_arg(ap, Mask);
+-          rec.status =3D Success; /* default allow */
+-          calldata =3D &rec;
+-          prv =3D &rec.status;
++      case XACE_SCREENSAVER_ACCESS:
++          u.screen.client =3D va_arg(ap, ClientPtr);
++          u.screen.screen =3D va_arg(ap, ScreenPtr);
++          u.screen.access_mode =3D va_arg(ap, Mask);
++          u.screen.status =3D Success; /* default allow */
++          prv =3D &u.screen.status;
+           break;
+-      }
+-      case XACE_AUTH_AVAIL: {
+-          XaceAuthAvailRec rec;
+-          rec.client =3D va_arg(ap, ClientPtr);
+-          rec.authId =3D va_arg(ap, XID);
+-          calldata =3D &rec;
++      case XACE_AUTH_AVAIL:
++          u.auth.client =3D va_arg(ap, ClientPtr);
++          u.auth.authId =3D va_arg(ap, XID);
+           break;
+-      }
+-      case XACE_KEY_AVAIL: {
+-          XaceKeyAvailRec rec;
+-          rec.event =3D va_arg(ap, xEventPtr);
+-          rec.keybd =3D va_arg(ap, DeviceIntPtr);
+-          rec.count =3D va_arg(ap, int);
+-          calldata =3D &rec;
++      case XACE_KEY_AVAIL:
++          u.key.event =3D va_arg(ap, xEventPtr);
++          u.key.keybd =3D va_arg(ap, DeviceIntPtr);
++          u.key.count =3D va_arg(ap, int);
+           break;
+-      }
+-      default: {
++      default:
+           va_end(ap);
+           return 0;   /* unimplemented hook number */
+-      }
+     }
+     va_end(ap);
+
+     /* call callbacks and return result, if any. */
+-    CallCallbacks(&XaceHooks[hook], calldata);
++    CallCallbacks(&XaceHooks[hook], &u);
+     return prv ? *prv : Success;
+ }
diff --git a/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb-1.7.99.=
2.inc
b/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb-1.7.99.2.inc
index 9ee9c97..e96440f 100644
--- a/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb-1.7.99.2.inc
+++ b/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb-1.7.99.2.inc
@@ -8,6 +8,7 @@ SRC_URI +=3D "file://nodolt.patch \
             file://crosscompile.patch \
 	    file://libdrm-poulsbo.patch \
 	    file://werror-address-fix.patch \
+	    file://fix-bogus-stack-variables.patch \
 	    file://ptr-to-int-cast-fix.patch"

 # Misc build failure for master HEAD

