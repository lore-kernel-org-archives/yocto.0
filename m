Return-Path: <picmaster@mail.bg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88EF2E00992; Wed, 26 Aug 2015 08:16:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (picmaster[at]mail.bg)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [193.201.172.119 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mx3.mail.bg (mx3.mail.bg [193.201.172.119])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 331E0E00349
	for <yocto@yoctoproject.org>; Wed, 26 Aug 2015 08:15:58 -0700 (PDT)
Received: from [192.168.0.62] (unknown [93.152.143.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx3.mail.bg (Postfix) with ESMTPSA id 4EBB7205A4E7;
	Wed, 26 Aug 2015 18:15:56 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mail.bg; s=default;
	t=1440602156; bh=Uhb3NM/o9jdoviBMzS/b4eTcu135HnAyIzkyW+SAJJ4=;
	h=Message-ID:Date:From:MIME-Version:To:CC:Subject:References:
	In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=XYSCmTNl8cmRqUYNMduqVkbCoBLcSnvBd9smNQNGNk+FtfyVAh1Rv+AyPkOy5Laul
	bLpmwyKdwKpb9gwlJKebJVz8Cr0sXwJ3U2oVuvzRmlc64vdMuXwDGrR3CUvcaCJZNl
	CCQLU2jghpTwZSj/D9VOmMEImX+l2Dxv5eszGmYg=
Message-ID: <55DDD82B.6030804@mail.bg>
Date: Wed, 26 Aug 2015 18:15:55 +0300
From: Nikolay Dimitrov <picmaster@mail.bg>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.8.0
MIME-Version: 1.0
To: Lenivyy Viktor <Viktor.Lenivyy@author.kiev.ua>
References: <f42259e1da79432a951109af8c20574d@E2013a.CORP.ICS.COM.UA>
In-Reply-To: <f42259e1da79432a951109af8c20574d@E2013a.CORP.ICS.COM.UA>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to recreate rootfs image
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
X-List-Received-Date: Wed, 26 Aug 2015 15:16:01 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Hi Lenivyy Viktor,

On 08/26/2015 05:37 PM, Lenivyy Viktor wrote:
> Hello.
>
> I have “altera-image-minimal” recipe which creates minimal rootfs based
> on Linux kernel provided by “linux-altera-local” recipe. This kernel is
> fetched from local directory.
>
> After first time building “altera-image-minimal”, it produced rootfs
> with modules version contained “-dirty” at the end. However kernel built
> from sources in local directory doesn’t have “-dirty” in version string.
> Thus kernel can’t run with produced rootfs.
>
> I opened directory which contains Yocto’s copy of Linux sources
>
> build/tmp/work/socfpga_socrates-poky-linux-gnueabi/linux-altera-local-1.0-r1/socrates_linux/
>
> then run “make ARCH=arm kernelrelease” to investigate kernel version.
> This command outputs the version with “-dirty”. I have found that
> “-dirty” string is appended from script in kernel sources. That script
> uses output from “git diff-index --name-only HEAD” to determine if
> working directory is “dirty”. To find changed files, I ran same command,
> it’s oddly but the output was empty. Then I rerun “make ARCH=arm
> kernelrelease”. This time it prints  the version without “-dirty”.
>
> Does someone have any clue why it can be so?
>
> My main question is: how can I recreate rootfs image starting from the
> point after fetching Linux sources, so Yocto’s copy will remain intact?
>
> I spent lot of time trying to figure it out by myself with no luck. My
> idea was to find sequence of commands used to create image and run only
> commands after fetching kernel sources. Unfortunately I didn’t manage to
> find the sequence anywhere. How such things need to be solved in Yocto?
>

Can you please try this and share if it works for you:

bitbake -c cleanall dirtypackage myimage
bitbake myimage

Regards,
Nikolay

