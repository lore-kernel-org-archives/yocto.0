Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E615E0030B
	for <yocto@yoctoproject.org>; Fri, 18 May 2012 15:25:19 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 18 May 2012 15:25:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="101794303"
Received: from unknown (HELO [10.255.13.136]) ([10.255.13.136])
	by AZSMGA002.ch.intel.com with ESMTP; 18 May 2012 15:25:17 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Chris Hallinan <challinan@gmail.com>
In-Reply-To: <CAME0jBS7RtPtcM46CjK7JfO0hu+SsE2W1v-ZHZKJQagQFRijSA@mail.gmail.com>
References: <CAME0jBS7RtPtcM46CjK7JfO0hu+SsE2W1v-ZHZKJQagQFRijSA@mail.gmail.com>
Date: Fri, 18 May 2012 17:25:17 -0500
Message-ID: <1337379917.2409.3.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
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
X-List-Received-Date: Fri, 18 May 2012 22:25:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-05-18 at 17:38 -0400, Chris Hallinan wrote:
> Note: this patch has already been submitted against other BSPs,
> originally submitted to oe-core by Gary Thomas.  I ran into this same
> issue building MACHINE=emenlow on my own Z530 platform.  There are
> likely others as well where this needs to be applied.
> 
> Upstream is here:
> https://bugs.freedesktop.org/show_bug.cgi?id=18451
> 
> PR has been bumped.
> 

Hi, thanks for the patch - I see the problem and will pull this in as
soon as I can build and test it, but am getting a patch failure in the
build after pulling it in for testing.  I'll fix it up, but just
mentioning it in case you had any ideas why it might work for you but
fail here...

Tom

NOTE: Running task 4904 of 4941 (ID:
1563, /usr/local/dev/yocto/cl-test/meta-intel/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb_1.7.99.2.bb, do_patch)
NOTE: package xserver-psb-1_1.7.99.2-r6: task do_patch: Started
ERROR: Command Error: exit status: 1  Output:
Applying patch fix-bogus-stack-variables.patch
patching file Xext/xace.c
Hunk #2 FAILED at 110.
1 out of 2 hunks FAILED -- rejects in file Xext/xace.c
Patch fix-bogus-stack-variables.patch does not apply (enforce with -f)
ERROR: Function failed: patch_do_patch
ERROR: Logfile of failure stored
in: /usr/local/dev/yocto/cl-test/build/tmp/work/core2-poky-linux/xserver-psb-1_1.7.99.2-r6/temp/log.do_patch.3393
NOTE: package xserver-psb-1_1.7.99.2-r6: task do_patch: Failed
ERROR: Task 1563
(/usr/local/dev/yocto/cl-test/meta-intel/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb_1.7.99.2.bb, do_patch) failed with exit code '1'
Waiting for 1 running tasks to finish:
0: core-image-minimal-initramfs-1.0-r0 do_rootfs (pid 3355)
NOTE: package core-image-minimal-initramfs-1.0-r0: task do_rootfs:
Succeeded
NOTE: Tasks Summary: Attempted 4904 tasks of which 4900 didn't need to
be rerun and 1 failed.

Summary: 1 task failed:
  /usr/local/dev/yocto/cl-test/meta-intel/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb_1.7.99.2.bb, do_patch
Summary: There was 1 WARNING message shown.
Summary: There were 2 ERROR messages shown, returning a non-zero exit
code.



> ---
> 
>  .../files/fix-bogus-stack-variables.patch |  204
> ++++++++++++++++++++++++++++++++++
>  .../xserver-psb-1.7.99.2.inc              |    5
>  2 files changed, 207 insertions(+), 2 deletions(-)
> 
> diff --git a/meta-emenlow/recipes-graphics/xorg-xserver/files/fix-bogus-stack-variables.patch
> b/meta-emenlow/recipes-graphics/xorg-xserver/files/fix-bogus-stack-variables.patch
> new file mode 100644
> index 0000000..5c9581a
> --- /dev/null
> +++ b/meta-emenlow/recipes-graphics/xorg-xserver/files/fix-bogus-stack-variables.patch
> @@ -0,0 +1,204 @@
> +diff --git a/Xext/xace.c b/Xext/xace.c
> +index e10d837..c757cad 100644
> +--- a/Xext/xace.c
> ++++ b/Xext/xace.c
> +@@ -87,7 +87,18 @@ void XaceHookAuditEnd(ClientPtr ptr, int result)
> +  */
> + int XaceHook(int hook, ...)
> + {
> +-    pointer calldata;	/* data passed to callback */
> ++    union {
> ++	XaceResourceAccessRec res;
> ++	XaceDeviceAccessRec dev;
> ++	XaceSendAccessRec send;
> ++	XaceReceiveAccessRec recv;
> ++	XaceClientAccessRec client;
> ++	XaceExtAccessRec ext;
> ++	XaceServerAccessRec server;
> ++	XaceScreenAccessRec screen;
> ++	XaceAuthAvailRec auth;
> ++	XaceKeyAvailRec key;
> ++    } u;
> +     int *prv = NULL;	/* points to return value from callback */
> +     va_list ap;		/* argument list */
> +     va_start(ap, hook);
> +@@ -99,117 +110,86 @@ int XaceHook(int hook, ...)
> +      */
> +     switch (hook)
> +     {
> +-	case XACE_RESOURCE_ACCESS: {
> +-	    XaceResourceAccessRec rec;
> +-	    rec.client = va_arg(ap, ClientPtr);
> +-	    rec.id = va_arg(ap, XID);
> +-	    rec.rtype = va_arg(ap, RESTYPE);
> +-	    rec.res = va_arg(ap, pointer);
> +-	    rec.ptype = va_arg(ap, RESTYPE);
> +-	    rec.parent = va_arg(ap, pointer);
> +-	    rec.access_mode = va_arg(ap, Mask);
> +-	    rec.status = Success; /* default allow */
> +-	    calldata = &rec;
> +-	    prv = &rec.status;
> ++	case XACE_RESOURCE_ACCESS:
> ++	    u.res.client = va_arg(ap, ClientPtr);
> ++	    u.res.id = va_arg(ap, XID);
> ++	    u.res.rtype = va_arg(ap, RESTYPE);
> ++	    u.res.res = va_arg(ap, pointer);
> ++	    u.res.ptype = va_arg(ap, RESTYPE);
> ++	    u.res.parent = va_arg(ap, pointer);
> ++	    u.res.access_mode = va_arg(ap, Mask);
> ++	    u.res.status = Success; /* default allow */
> ++	    prv = &u.res.status;
> + 	    break;
> +-	}
> +-	case XACE_DEVICE_ACCESS: {
> +-	    XaceDeviceAccessRec rec;
> +-	    rec.client = va_arg(ap, ClientPtr);
> +-	    rec.dev = va_arg(ap, DeviceIntPtr);
> +-	    rec.access_mode = va_arg(ap, Mask);
> +-	    rec.status = Success; /* default allow */
> +-	    calldata = &rec;
> +-	    prv = &rec.status;
> ++	case XACE_DEVICE_ACCESS:
> ++	    u.dev.client = va_arg(ap, ClientPtr);
> ++	    u.dev.dev = va_arg(ap, DeviceIntPtr);
> ++	    u.dev.access_mode = va_arg(ap, Mask);
> ++	    u.dev.status = Success; /* default allow */
> ++	    prv = &u.dev.status;
> + 	    break;
> +-	}
> +-	case XACE_SEND_ACCESS: {
> +-	    XaceSendAccessRec rec;
> +-	    rec.client = va_arg(ap, ClientPtr);
> +-	    rec.dev = va_arg(ap, DeviceIntPtr);
> +-	    rec.pWin = va_arg(ap, WindowPtr);
> +-	    rec.events = va_arg(ap, xEventPtr);
> +-	    rec.count = va_arg(ap, int);
> +-	    rec.status = Success; /* default allow */
> +-	    calldata = &rec;
> +-	    prv = &rec.status;
> ++	case XACE_SEND_ACCESS:
> ++	    u.send.client = va_arg(ap, ClientPtr);
> ++	    u.send.dev = va_arg(ap, DeviceIntPtr);
> ++	    u.send.pWin = va_arg(ap, WindowPtr);
> ++	    u.send.events = va_arg(ap, xEventPtr);
> ++	    u.send.count = va_arg(ap, int);
> ++	    u.send.status = Success; /* default allow */
> ++	    prv = &u.send.status;
> + 	    break;
> +-	}
> +-	case XACE_RECEIVE_ACCESS: {
> +-	    XaceReceiveAccessRec rec;
> +-	    rec.client = va_arg(ap, ClientPtr);
> +-	    rec.pWin = va_arg(ap, WindowPtr);
> +-	    rec.events = va_arg(ap, xEventPtr);
> +-	    rec.count = va_arg(ap, int);
> +-	    rec.status = Success; /* default allow */
> +-	    calldata = &rec;
> +-	    prv = &rec.status;
> ++	case XACE_RECEIVE_ACCESS:
> ++	    u.recv.client = va_arg(ap, ClientPtr);
> ++	    u.recv.pWin = va_arg(ap, WindowPtr);
> ++	    u.recv.events = va_arg(ap, xEventPtr);
> ++	    u.recv.count = va_arg(ap, int);
> ++	    u.recv.status = Success; /* default allow */
> ++	    prv = &u.recv.status;
> + 	    break;
> +-	}
> +-	case XACE_CLIENT_ACCESS: {
> +-	    XaceClientAccessRec rec;
> +-	    rec.client = va_arg(ap, ClientPtr);
> +-	    rec.target = va_arg(ap, ClientPtr);
> +-	    rec.access_mode = va_arg(ap, Mask);
> +-	    rec.status = Success; /* default allow */
> +-	    calldata = &rec;
> +-	    prv = &rec.status;
> ++	case XACE_CLIENT_ACCESS:
> ++	    u.client.client = va_arg(ap, ClientPtr);
> ++	    u.client.target = va_arg(ap, ClientPtr);
> ++	    u.client.access_mode = va_arg(ap, Mask);
> ++	    u.client.status = Success; /* default allow */
> ++	    prv = &u.client.status;
> + 	    break;
> +-	}
> +-	case XACE_EXT_ACCESS: {
> +-	    XaceExtAccessRec rec;
> +-	    rec.client = va_arg(ap, ClientPtr);
> +-	    rec.ext = va_arg(ap, ExtensionEntry*);
> +-	    rec.access_mode = DixGetAttrAccess;
> +-	    rec.status = Success; /* default allow */
> +-	    calldata = &rec;
> +-	    prv = &rec.status;
> ++	case XACE_EXT_ACCESS:
> ++	    u.ext.client = va_arg(ap, ClientPtr);
> ++	    u.ext.ext = va_arg(ap, ExtensionEntry*);
> ++	    u.ext.access_mode = DixGetAttrAccess;
> ++	    u.ext.status = Success; /* default allow */
> ++	    prv = &u.ext.status;
> + 	    break;
> +-	}
> +-	case XACE_SERVER_ACCESS: {
> +-	    XaceServerAccessRec rec;
> +-	    rec.client = va_arg(ap, ClientPtr);
> +-	    rec.access_mode = va_arg(ap, Mask);
> +-	    rec.status = Success; /* default allow */
> +-	    calldata = &rec;
> +-	    prv = &rec.status;
> ++	case XACE_SERVER_ACCESS:
> ++	    u.server.client = va_arg(ap, ClientPtr);
> ++	    u.server.access_mode = va_arg(ap, Mask);
> ++	    u.server.status = Success; /* default allow */
> ++	    prv = &u.server.status;
> + 	    break;
> +-	}
> + 	case XACE_SCREEN_ACCESS:
> +-	case XACE_SCREENSAVER_ACCESS: {
> +-	    XaceScreenAccessRec rec;
> +-	    rec.client = va_arg(ap, ClientPtr);
> +-	    rec.screen = va_arg(ap, ScreenPtr);
> +-	    rec.access_mode = va_arg(ap, Mask);
> +-	    rec.status = Success; /* default allow */
> +-	    calldata = &rec;
> +-	    prv = &rec.status;
> ++	case XACE_SCREENSAVER_ACCESS:
> ++	    u.screen.client = va_arg(ap, ClientPtr);
> ++	    u.screen.screen = va_arg(ap, ScreenPtr);
> ++	    u.screen.access_mode = va_arg(ap, Mask);
> ++	    u.screen.status = Success; /* default allow */
> ++	    prv = &u.screen.status;
> + 	    break;
> +-	}
> +-	case XACE_AUTH_AVAIL: {
> +-	    XaceAuthAvailRec rec;
> +-	    rec.client = va_arg(ap, ClientPtr);
> +-	    rec.authId = va_arg(ap, XID);
> +-	    calldata = &rec;
> ++	case XACE_AUTH_AVAIL:
> ++	    u.auth.client = va_arg(ap, ClientPtr);
> ++	    u.auth.authId = va_arg(ap, XID);
> + 	    break;
> +-	}
> +-	case XACE_KEY_AVAIL: {
> +-	    XaceKeyAvailRec rec;
> +-	    rec.event = va_arg(ap, xEventPtr);
> +-	    rec.keybd = va_arg(ap, DeviceIntPtr);
> +-	    rec.count = va_arg(ap, int);
> +-	    calldata = &rec;
> ++	case XACE_KEY_AVAIL:
> ++	    u.key.event = va_arg(ap, xEventPtr);
> ++	    u.key.keybd = va_arg(ap, DeviceIntPtr);
> ++	    u.key.count = va_arg(ap, int);
> + 	    break;
> +-	}
> +-	default: {
> ++	default:
> + 	    va_end(ap);
> + 	    return 0;	/* unimplemented hook number */
> +-	}
> +     }
> +     va_end(ap);
> +
> +     /* call callbacks and return result, if any. */
> +-    CallCallbacks(&XaceHooks[hook], calldata);
> ++    CallCallbacks(&XaceHooks[hook], &u);
> +     return prv ? *prv : Success;
> + }
> diff --git a/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb-1.7.99.2.inc
> b/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb-1.7.99.2.inc
> index 9ee9c97..1fe962b 100644
> --- a/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb-1.7.99.2.inc
> +++ b/meta-emenlow/recipes-graphics/xorg-xserver/xserver-psb-1.7.99.2.inc
> @@ -1,4 +1,4 @@
> -PR = "r5"
> +PR = "r6"
> 
>  PROTO_DEPS += "xf86driproto dri2proto"
> 
> @@ -8,7 +8,8 @@ SRC_URI += "file://nodolt.patch \
>              file://crosscompile.patch \
>  	    file://libdrm-poulsbo.patch \
>  	    file://werror-address-fix.patch \
> -	    file://ptr-to-int-cast-fix.patch"
> +	    file://ptr-to-int-cast-fix.patch \
> +	    file://fix-bogus-stack-variables.patch"
> 
>  # Misc build failure for master HEAD
>  SRC_URI += "file://fix_open_max_preprocessor_error.patch"
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



