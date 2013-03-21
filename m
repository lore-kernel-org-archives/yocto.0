Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 434B5E014A4
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 02:10:03 -0700 (PDT)
Received: by mail-vc0-f176.google.com with SMTP id ib11so2065273vcb.21
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 02:10:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=m6Q0FuPbEZ4wRa8ep+vZEL9GN2NVZo3kvPnMVEeR59c=;
	b=TxEPoYLpF2CkqgeWibnKE9bG9FqhMB+kmMrxsr6Xzt2y/kRvZqH8NmS0z3GQMrhQZi
	/+mlVSILlgZoXXMJFX+KoLEVEf0Q760J2hb5WREmx6wssD1gXLf8YvwIRe+e3JkAvg1T
	wOMpkrq/WzGCl1rrlsLJx7vUsnKUIq1no7ezxKTk38GcIt9hZJuh7GEzuoJN9dx3vdFQ
	CLWHwZ1HRgyCBDofXum3idr+nFNlaZdLbZ9NKqHefIPg4LSrDHutYgcYSvCnbah1HKQf
	tL7Xw5AJxAGBJJJtXchQqQozQDbIwUm/1hF/2QTusO4c1JsYOL87nyQeM5d+MmcyQxjQ
	TXQw==
X-Received: by 10.58.143.116 with SMTP id sd20mr12181002veb.39.1363857002412; 
	Thu, 21 Mar 2013 02:10:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.125.102 with HTTP; Thu, 21 Mar 2013 02:09:42 -0700 (PDT)
In-Reply-To: <29BFB1FE-41FC-484E-900A-58A29001E39C@keylevel.com>
References: <29BFB1FE-41FC-484E-900A-58A29001E39C@keylevel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 21 Mar 2013 09:09:42 +0000
Message-ID: <CAJTo0LYfUK7LuqUCA+SxmBYBnQZDuLAst0GGTz+U3hXV7_=HhQ@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
X-Gm-Message-State: ALoCoQm7+UUe545AxfttTZhd4kNXWS6DWZ+re2N9Kskyai4CyKUSvPkKKICfmY6DJDDOBDhmLiui
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Possible Cedartrail PVR build race
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
X-List-Received-Date: Thu, 21 Mar 2013 09:10:03 -0000
Content-Type: text/plain; charset=UTF-8

On 21 March 2013 09:01, Chris Tapp <opensource@keylevel.com> wrote:
> I think I have a build race condition for a project:
>
> 1) Using the meta-intel/cedartrail BSP;
> 2) Building under Danny 8.0;
> 3) Custom image;
> 4) Custom task;
> 5) OpenGLES application which runs under 'X'.
>
> If I do a clean build (i.e. after deleting tmp/ sstate-cache/) then my application produces 'fuzz' on the screen - some vertical strips visible, but nothing recognisable.
>
> If I then 'cleanall' the image, task and application and rebuild the image I get an image with an application that works as expected.
>
> I suspect this is something to do with some warning messages I get during the clean build:
>
> WARNING: The recipe is trying to install files into a shared area when those files already exist. Those files are:
>    /media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include/KHR/khrplatform.h
>    /media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include/GLES/gl.h
>    /media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include/GLES/egl.h
>    /media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include/GLES/glext.h
>    /media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include/GLES/glplatform.h
>    /media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include/EGL/egl.h
>    /media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include/EGL/eglplatform.h
>    /media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include/EGL/eglext.h
>    /media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include/GLES2/gl2platform.h
>    /media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include/GLES2/gl2.h
>    /media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include/GLES2/gl2ext.h
>    /media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/lib/libGLESv1_CM.so
>    /media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/lib/libGLESv2.so.2
>    /media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/lib/libGLESv2.so
>    /media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/lib/libGLESv1_CM.so.1
>    /media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/lib/libEGL.so.1
>    /media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/lib/libEGL.so
>
> Is there something I can add to my image/task/application .bb to prevent this?

If you were using master you'd see some more useful output, such as
the recipes that are conflicting.  I'm 99% certain that in this case
it's pvr-cdt-driver and mesa-dri.  On CDT you really don't want
mesa-dri.

I suspect this is coming through the xserver-xorg package which
defaults to enabling GLX, which requires mesa-dri.  Inspecting your
dependency tree with depexp should confirm this.  Presumably your GLES
application is using EGL and not GLX?

I'm always forgetting the exact syntax here, but try setting
PACKAGECONFIG_pn-xserver-xorg = "udev" in your local.conf.  This
should disable the glx options, and drop the mesa-dri dependency.

Ross

