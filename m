Return-Path: <ayoub.zaki@embexus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 078BCE00D20; Sun, 10 Dec 2017 13:52:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.30.212.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mailrelay1-3.pub.mailoutpod1-cph3.one.com
	(mailrelay1-3.pub.mailoutpod1-cph3.one.com [46.30.212.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5AD9E008FB
	for <yocto@yoctoproject.org>; Sun, 10 Dec 2017 13:52:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embexus.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type:
	content-transfer-encoding:in-reply-to:references;
	bh=qhwDNRJhjEUjBBLiIxWlKahPIxM1At9kkx5jGDmLZU8=;
	b=E4zBd1sTKYro9UWDxBQ6SYLA46F6X6dCJRVnSwcbHIHb+YCEdpkPGuVK/UufS0o4bxwvXz9G+AO39
	weaj+1TwFr4nUEYQWJ0v5HOfGhetaMHeAXOC1OiA8gMPyecu1Kexd7gOWnFG6i5AVK/y8RINCpSMJj
	/PUG8iVDgG/kdmgA=
X-HalOne-Cookie: 2549a7be7a5ca4589c364158e43a38fd3adcff49
X-HalOne-ID: 5e49f576-ddf4-11e7-b926-d0431ea8a283
Received: from [192.168.178.20] (unknown [77.177.198.239])
	by mailrelay1.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 5e49f576-ddf4-11e7-b926-d0431ea8a283;
	Sun, 10 Dec 2017 21:52:08 +0000 (UTC)
To: yocto@yoctoproject.org
References: <CAPb0b+NJuuxBb3=VfHvYd8EzUb-O1WdPudCdSyDZ5zBO4bVoaQ@mail.gmail.com>
	<CAGAf8Lz_e6y-GU3apr_QCVzpjPhZZczUcxrs6sfhTJBhH_0YGA@mail.gmail.com>
	<CAPb0b+N6+9PTKF2z6VCUfye9RF8tEavUCkK7SBa2LaF-3TGrMw@mail.gmail.com>
	<CAPb0b+NGzO888YqtD8t5RHuqDD1eT3Gc7zqSoVFepEhUX6h9QA@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@embexus.com>
Message-ID: <ab6b73d3-60af-af0a-aee6-1be2e1e3c5c0@embexus.com>
Date: Sun, 10 Dec 2017 22:52:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <CAPb0b+NGzO888YqtD8t5RHuqDD1eT3Gc7zqSoVFepEhUX6h9QA@mail.gmail.com>
Subject: Re: disable psplash
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
X-List-Received-Date: Sun, 10 Dec 2017 21:52:12 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hi,

you can disable psplash by removing the package from your image:


IMAGE_FEATURES_remove = "splash"



cheers,

-- 

Ayoub Zaki
Embedded Systems Consultant

Vaihinger Straße 2/1
D-71634 Ludwigsburg

Email    : ayoub.zaki@embexus.com
Homepage : https://embexus.com
VAT No.  : DE313902634



On 10.12.2017 22:43, Sherif Omran wrote:
> |i found the solution for it and posted it here 
> https://stackoverflow.com/questions/47738738/how-to-disable-psplash-screen-in-yocto/47743610#47743610 
> |
> |but there is still one problem, that comes from this patch 
> https://patchwork.openembedded.org/patch/47017/ |
> |i get the following : |
> *umount: can't unmount /mnt/.psplash: Invalid argument *
> *it comes from the umount -> because it is unmounting unexisitng 
> folder. i dont understand this code clearly. *if type psplash-write >/dev/null 2>&1; then
>           TMPDIR=/mnt/.psplash psplash-write "QUIT" || true
>       	umount /mnt/.psplash
>
> On Sun, Dec 10, 2017 at 8:37 PM, Sherif Omran 
> <sherifomran2000@gmail.com <mailto:sherifomran2000@gmail.com>> wrote:
>
>     thank you for your reply. I don't find these parameters in any
>     recipe. I am still confused, how to approach.
>
>
>     On Sun, Dec 10, 2017 at 5:45 PM, Zoran Stojsavljevic
>     <zoran.stojsavljevic@gmail.com
>     <mailto:zoran.stojsavljevic@gmail.com>> wrote:
>
>         > As far as i understood, we can pass it from uboot, but how?
>         https://community.nxp.com/thread/460796
>         <https://community.nxp.com/thread/460796>
>
>         Zoran
>
>         On Sun, Dec 10, 2017 at 1:02 PM, Sherif Omran
>         <sherifomran2000@gmail.com <mailto:sherifomran2000@gmail.com>>
>         wrote:
>
>             hi
>
>             any body knows how to diable the psplash? as per
>             documentation it says pass psplash=false to the kernel.
>             But how to pass it to the kernel? I tried adding it to
>             kernel.cfg but does not seem to be correct. As far as i
>             understood, we can pass it from uboot, but how?
>
>             thanks for your help
>
>             --
>             _______________________________________________
>             yocto mailing list
>             yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>             https://lists.yoctoproject.org/listinfo/yocto
>             <https://lists.yoctoproject.org/listinfo/yocto>
>
>
>
>
>
>


