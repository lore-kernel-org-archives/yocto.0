Return-Path: <valentin.popa@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF313E007E6
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 09:36:21 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 13 Feb 2014 09:35:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,839,1384329600"; d="scan'208";a="481011144"
Received: from vpopa-desktop.rb.intel.com (HELO [10.237.105.47])
	([10.237.105.47])
	by fmsmga002.fm.intel.com with ESMTP; 13 Feb 2014 09:35:48 -0800
Message-ID: <52FD0277.3000703@intel.com>
Date: Thu, 13 Feb 2014 19:35:51 +0200
From: Valentin Popa <valentin.popa@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>, 
 Gary Thomas <gary@mlbassoc.com>
References: <52FCD87B.30301@mlbassoc.com>
	<CAJTo0LaJ4rmWpvPZK62kgkoBm9CTK4uUSaYFZ8JPdZ4qXycQTQ@mail.gmail.com>
In-Reply-To: <CAJTo0LaJ4rmWpvPZK62kgkoBm9CTK4uUSaYFZ8JPdZ4qXycQTQ@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Can't build core-image-weston
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
X-List-Received-Date: Thu, 13 Feb 2014 17:36:25 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/13/2014 06:56 PM, Burton, Ross wrote:
> Hi Gary,
>
> On 13 February 2014 14:36, Gary Thomas <gary@mlbassoc.com> wrote:
>> I had previously built core-image-sato-sdk with some extra packages:
>>    CORE_IMAGE_EXTRA_INSTALL += "rsync openssh"
>> That worked fine, but core-image-weston fails as above.  Is there a
>> reason I can't choose openssh instead of dropbear (and perhaps there
>> is some other way I am supposed to choose)?
> You might find EXTRA_IMAGE_FEATURES += "ssh-server-openssh" better
> than CORE_IMAGE_EXTRA_INSTALL, because core-image-weston has the
> ssh-server-dropbear image feature. When specifying both the right
> thing happens (dropbear is dropped).
>
>> I removed the openssh from the extras and now it builds, but it doesn't
>> do anything [useful] - should it actually work?  I don't see anything
>> that looks like 'weston' running.
> Looks like weston is crashing.  There are known problems with Weston in qemu:
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=5660
>
> Valentin did the research here and I can't remember the details:
> Valentin, can you elaborate on the comments there about what is
> working/breaking?  I remember there being a qemu option that changed
> behaviour too.
>
> Try changing the init script (or just running weston manually) to pick
> the fbdev backend.  Note that right now this isn't enabled but there's
> a patch on the list to enable it by default, but it's just a
> PACKAGECONFIG away from being enabled.
>
> Ross
Hi,
To get something on the screen build weston with fbdev and with 
WESTON_NATIVE_BACKEND="fbdev-backend.so":
     1) add fbdev to PACKAGECONFIG ( PACKAGECONFIG ??= 
"${@base_contains('DISTRO_FEATURES', 'wayland', 'kms fbdev wayland', '', 
d)} \ .... )
     2) append EXTRA_OECONF with WESTON_NATIVE_BACKEND="fbdev-backend.so".
If it's not working make sure you have a framebuffer device (/dev/fb0 
should be there).
If it's still not working, try with kms:
     1) configure mesa (edit mesa.inc ) to build mesa dri driver :
        a) PACKAGECONFIG ??= "egl gles dri gallium gallium-egl 
gallium-gbm \ ....
        b) change DRIDRIVERS = "swrast" to DRIDRIVERS = "" (so you can 
build all dri drivers including vmwgfx)
         c) (optional I think) change GALLIUMDRIVERS = "swrast" to 
GALLIUMDRIVERS = "svga" (as I know vmwgfx is part of svga gallium drivers)
     2) add this to your local.conf
          CORE_IMAGE_EXTRA_INSTALL += "  libgles2-mesa libegl-gallium 
libgbm-gallium mesa-driver-vmwgfx "
If still not working, reply to this mail.


