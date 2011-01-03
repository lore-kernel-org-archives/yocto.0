Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 693654C80039
	for <yocto@yoctoproject.org>; Mon,  3 Jan 2011 14:38:38 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p03KcbTu023971;
	Mon, 3 Jan 2011 12:38:37 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 3 Jan 2011 12:38:37 -0800
Received: from [128.224.146.67] ([128.224.146.67]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 3 Jan 2011 12:38:37 -0800
Message-ID: <4D2233CC.7020707@windriver.com>
Date: Mon, 03 Jan 2011 15:38:36 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.9pre) Gecko/20100217 Shredder/3.0.3pre
	ThunderBrowse/3.2.8.1
MIME-Version: 1.0
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
References: <DC74E0187B44084E9AD28300B75DFE300557D6E8@orsmsx504.amr.corp.intel.com>
In-Reply-To: <DC74E0187B44084E9AD28300B75DFE300557D6E8@orsmsx504.amr.corp.intel.com>
X-OriginalArrivalTime: 03 Jan 2011 20:38:37.0364 (UTC)
	FILETIME=[32A20F40:01CBAB86]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Recent build issues.
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
X-List-Received-Date: Mon, 03 Jan 2011 20:38:38 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10-12-23 05:08 PM, Flanagan, Elizabeth wrote:
> Recent build issues:
>
> - There seem to be a few issues going on with sanity testing:
>
> First, I've made a change to how sanity tests are run on the autobuilder that should speed them up some. bitbake @ -c qemuimagetest creates a rootfs. I've switched this to bitbake @ -c qemuimagetest_standalone, so this shouldn't create a rootfs and should use the one already existing. We should see some performance improvement with this. I thought this had been included in my pull with BB 0.8.3 but I must have not included it.
>
> Next,  the following bugs have been making it difficult to track down build failures:
>
> Sanity Test Boot test returns invalid results.
> http://bugzilla.pokylinux.org/show_bug.cgi?id=611
>
> Sanity tests do not always kill QEMU once timeout is reached
> http://bugzilla.pokylinux.org/show_bug.cgi?id=595
>
> There are also sanity test failures in a few images:
>
> qemuarm poky-image-sato
> qemuarm poky-image-minimal
> qemumips poky-image-sato
>
> mips seems to have run poky-image-minimal ok, but with Bug #611, I can't be sure that is the case and I doubt it's actually the case. My inclination is that there is an issue with arm and mips builds that should be looked at.
>
> - PPC is broken.
>
> PPC is having serious issues that seem to revolve around linux-yocto-2.6.37. Bruce I believe is working on this. Can anyone give an update around where this stands?

Were we talking build or boot for this one ? The slow boot is only
being seen during auto-tests, and I've never reproduced it here.

I'm looking for someone who has time to debug this by tweaking
the kernel configuration, but as for what we produce for qemuppc
the configuration is sane and boots fine. Does anyone who can
reproduce this have time to look into it a bit more, or get me
access to a reproducing environment ?

Bruce

>
> I'm running nightly-incremental and nightly now to pull in some changes made this morning and to prepare for weekend delivery to QA. I'll send out those build results on Sunday (or whenever the build finishes.)
> -b
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


