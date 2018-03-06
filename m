Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C078AE00E54; Tue,  6 Mar 2018 05:40:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9DBBE00E4D
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 05:40:24 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w26DeNjJ006533
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 6 Mar 2018 05:40:23 -0800
Received: from soho-mhatle-m.local (172.25.36.227) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Tue, 6 Mar 2018 05:39:50 -0800
To: "Burton, Ross" <ross.burton@intel.com>, "Reyna, David"
	<david.reyna@windriver.com>
References: <5E53D14CE4667A45B9A06760DE5D13D0F11F2DA2@ALA-MBC.corp.ad.wrs.com>
	<CAJTo0La4LkRgwmNqs6p9tGEj+fWY=Tm6q-ATLtTOm6TLUz3tuQ@mail.gmail.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <2bd4e7ea-ee28-432d-0c74-f816c8223664@windriver.com>
Date: Tue, 6 Mar 2018 07:40:21 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0La4LkRgwmNqs6p9tGEj+fWY=Tm6q-ATLtTOm6TLUz3tuQ@mail.gmail.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Are Windows SDKs (mingw layer) supposed to work?
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
X-List-Received-Date: Tue, 06 Mar 2018 13:40:25 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 3/6/18 4:39 AM, Burton, Ross wrote:
> Have you tried using 2.4 to identify when it broke?  Clearly we need to extend
> the selftest so the mingw SDK is actually tested...
> 
> Ross
> 
> On 6 March 2018 at 05:32, Reyna, David <david.reyna@windriver.com
> <mailto:david.reyna@windriver.com>> wrote:
> 
>     Hi all,____
> 
>     __ __
> 
>     I am trying to enable a customer for using YP SDKs on Windows. It apparently
>     is supposed to work, but I am unable to get past fatal errors.____
> 
>     __ __
> 
>     I have looked for documentation at the YP site and the meta-mingw repo, but
>     to no avail.____
> 
>     __ __
> 
>     1) My project is a simple default “qemux86-64” with YP-2.5 HEAD, with the
>     latest “meta-mingw” layer added and <SDKMACHINE ?= "i686-mingw32">.____
> 
>     __ __
> 
>     The SDK builds fine and I get the “*.xz” generated file.____

The output format from the Yocto Project of a tarball has been that way since
the beginning.  We (WR) had code that would produce a zip format, but that
stopped working a few releases ago when the archive chaining was reworked..

We've not yet resurrected the code for the .zip generation but probably will in
the next few months.

>     __ __
> 
>     2) However, when I use 7ZIP to extract it on my Windows host (which is
>     recommended for XY files), I get several fatal issues.____
> 
>     __ __
> 
>       (a) I get more than a hundred errors “Can not create symbolic link: Access
>     is denied”. ____

This is odd.  In the past 7ZIP (when not the admin) would create either copies
or 'shortcuts' instead of actual symbolic links.  It sounds like something has
changed in 7zip.

>     __ __
> 
>     While I do not care about the ones for the bin tools in the sysroot, I do
>     care that most of the cross toolchain EXE files are thusly broken, plus many
>     of the libraries and header files in the sysroot.____
> 
>     __ __
> 
>     Am I missing a step?____
> 
>     __ __
> 
>     If I in fact extract this file on my Linux host, I can directly see that it
>     is full of symlinks! Why are there symlinks in a Windows-specific tarball?____

Often I've extracted it on a linux machine, and then uses zip to recompress it.
(You still need to use 7zip to extract because of the long pathnames that blow
up winzip.)

>     __ __
> 
>       (b) If I attempt to build a simple C file from the shell in the SDK
>     environment, I either get a silent failure (for the 32-bit toolchain) or a
>     blatant error as per:____

What version of windows are you using?  The last time I tested this (Rocko) it
was working properly still, but I tested with Win 7.  So it's possible that
something more recent has broken it.

I'm not sure if I'll have time today to retry this with Rocko, but I'll see if I
can.

--Mark

