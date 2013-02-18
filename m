Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C402BE01457
	for <yocto@yoctoproject.org>; Sun, 17 Feb 2013 22:28:57 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 17 Feb 2013 22:28:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,684,1355126400"; d="scan'208";a="263945144"
Received: from unknown (HELO [10.255.12.96]) ([10.255.12.96])
	by orsmga001.jf.intel.com with ESMTP; 17 Feb 2013 22:28:56 -0800
Message-ID: <1361168935.27904.25.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Trevor Woerner <twoerner@gmail.com>
Date: Mon, 18 Feb 2013 00:28:55 -0600
In-Reply-To: <CAHUNapRj7r+u500hA4WSc3TMMo85E9yJSrUinfcR7P+6WgU-tA@mail.gmail.com>
References: <1360981747.1691.29.camel@empanada>
	<CAHUNapRsL+R2+inZztqdTBfVM9EZNtgTWayjLWXE_6tQnd+6Mw@mail.gmail.com>
	<CAHUNapRj7r+u500hA4WSc3TMMo85E9yJSrUinfcR7P+6WgU-tA@mail.gmail.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Updated Yocto Hands-on Kernel Lab available
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
X-List-Received-Date: Mon, 18 Feb 2013 06:28:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2013-02-17 at 21:16 -0500, Trevor Woerner wrote:
> ...sorry, I meant to CC the list too
> 
> 
> ---------- Forwarded message ----------
> From: Trevor Woerner <twoerner@gmail.com>
> Date: Sun, Feb 17, 2013 at 9:15 PM
> Subject: Re: [yocto] Updated Yocto Hands-on Kernel Lab available
> To: Tom Zanussi <tom.zanussi@intel.com>
> 
> 
> Hi Tom,
> 
> I can see how the kernel *.bb files get pulled in due to the following
> line in each lab's layer configuration (${LAYERDIR}/conf/layer.conf):
> 
>     BBFILES := "... ${LAYERDIR}/recipes-*/*/*.bb ..."
> 
> Since the *.bb files are located under
> ${LAYERDIR}/recipes-kernel/linux/<kernel>.bb this matched the above
> pattern.
> 
> What I can't figure out is why, for example, in lab1 are the kernel
> patch files located in
> 
>     ${LAYERDIR}/recipes-kernel/linux/linux
> 
> while the kernel patch files for lab2 are in
> 
>     ${LAYERDIR}/recipes-kernel/linux/files
> 
> Does bitbake find the patch files for lab1 in a subdirectory called
> "linux" because the recipe's name is linux_3.0.18.bb? Because I don't
> see anything in that particular recipe which would suggest it
> (bitbake) should look there (linux). And when I go to lab2 and rename
> the "files" directory to "linux-yocto" the build doesn't work, so this
> behaviour would seem to discount the belief that a patch directory
> name can take on the recipe name and be found.
> 

Hi,

Yes, in lab1 bitbake finds the patch files because they're in the
'linux' subdirectory.  It should also be able to find them if you
renamed that directory to 'linux-3.0.18', and it would also find them in
the 'files' directory.  These subdirectories are added to FILESPATH in
base.bbclass:

FILESPATH = "${@base_set_filespath(["${FILE_DIRNAME}/${BP}", "${FILE_DIRNAME}/${BPN}", "${FILE_DIRNAME}/files"], d)}"

Those are relative to a .bb, which is what we have in lab1 - the kernel
recipe is linux_3.0.18.bb.

In lab2, we have a linux-yocto_3.4.bbappend file rather than a .bb file.

If you look at the .bbappend, you can see:

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

which is what we need to add to the .bbappend to get bitbake to look in
the 'files' subdirectory under the .bbappend - since the FILESPATH is
relative to the base recipe in meta/, linux-yocto_3.4.bb, and not
our .bbappend, bitbake won't find the files under our .bbappend unless
we add our .bbappend's 'files' subdir to FILESPATH via FILESEXTRAPATHS. 

If you wanted to change the name of the directory under the .bbappend to
'linux-yocto', you could just use:

FILESEXTRAPATHS_prepend := "${THISDIR}/linux-yocto:"

or better:

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

Tom

> Best regards,
>     Trevor
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



