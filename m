Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id EB4414C804C2
	for <yocto@yoctoproject.org>; Wed,  1 Jun 2011 11:28:37 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 01 Jun 2011 09:28:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,304,1304319600"; 
   d="scan'208";a="7929871"
Received: from unknown (HELO [10.255.13.41]) ([10.255.13.41])
	by orsmga001.jf.intel.com with ESMTP; 01 Jun 2011 09:28:34 -0700
Message-ID: <4DE668B1.6000305@linux.intel.com>
Date: Wed, 01 Jun 2011 09:28:33 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Nikhil Kamath <Nikhil.Kamath@lnties.com>
References: <87C8C51E47F55D47ABF9BB39687792ED42021A@POCITMSEXMB01.LntUniverse.com>
	<4ED62A07621E9C41B8CB2F608655EF45FD4C@POCITMSEXMB01.LntUniverse.com>
In-Reply-To: <4ED62A07621E9C41B8CB2F608655EF45FD4C@POCITMSEXMB01.LntUniverse.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Prashanth Shiva <Prashanth.Shiva@lnties.com>
Subject: Re: FW: problem in LIC_FILES_CHKSUM
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
X-List-Received-Date: Wed, 01 Jun 2011 16:28:38 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 06/01/2011 07:42 AM, Nikhil Kamath wrote:
> Hi,
>
> We are trying to build a linux kernel 2.6.35.3 for imx platform. We are
> facing a problem as attached in the mail.
>
>
> The following steps followed are as follows
>
> 1.Initially we have run the $bitbake poky-image-minimal for ‘qemuarm’
> machine. It got compiled.
>
> 2.Next I added a folder named ‘ linux-imx’ in
> ‘\poky-bernard-5.0\meta\recipes-kernel\linux’ to create a kernel image
> for imx platform.
>
> 3.The linux-imx folder contains mx35pdk folder, which inturn contains
> defconfig file for imx35pdk board.
>
> 4.The linux.inc & linux-imx_git.bb is added in linux folder
> ‘\poky-bernard-5.0\meta\recipes-kernel\linux’.
>
> 5.Added mx35pdk.conf file in ‘\poky-bernard-5.0\meta\conf\machine’.
>
> 6.Then I ran $bitbake linux-imx
>
> Please see the following attached image.
>
You need to setup the LIC_FILES_CHKSUM correctly, is your linux-imx a 
regular kernel source or does it contain other source?

LIC_FILES_CHKSUM is looking for a COPYING in the source directory, which 
may not be in your source area, you can look at 
tmp/work/mx35pdk-poky-linux/linux-imx-2.6.35.3-r0/git to check for the 
correct licensing files.


Sau!

> Thanks,
> Prashanth Shiva
> EmSyS, Larsen & Toubro Limited,
> Mysore | Ph: +91-821-2405582
> http://www.Lntemsys.com
>
>
>
> This mail is classified as :
> ( ) L&T EmSyS Proprietary ( ) L&T EmSyS Confidential ( x ) L&T EmSyS
> Internal Use ( ) L&T EmSyS General Business
>
> This email may contain confidential or privileged information for the
> intended recipient(s). If you are not the intended recipient, please do
> not use or disseminate the information, notify the sender and delete it
> from your system. Thanks!!
>
>
>
> *Larsen & Toubro Limited
>
> www.larsentoubro.com <http://www.larsentoubro.com>
>
> *This Email may contain confidential or privileged information for the
> intended recipient (s) If you are not the intended recipient, please do
> not use or disseminate the information, notify the sender and delete it
> from your system.
>
>
>
> *Larsen & Toubro Limited
>
> www.larsentoubro.com
>
> *This Email may contain confidential or privileged information for the
> intended recipient (s) If you are not the intended recipient, please do
> not use or disseminate the information, notify the sender and delete it
> from your system.
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

