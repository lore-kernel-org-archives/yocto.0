Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A204FE00C96; Tue, 15 Sep 2015 11:22:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 781C1E00A80
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 11:22:28 -0700 (PDT)
Received: by iofh134 with SMTP id h134so208231656iof.0
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 11:22:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=tSByRMchmaURo8AA9/Y3+qLsrWHt7TzCrB2fs5+Px+8=;
	b=fRyXxmuddFisQeKsM/2fFe+ERt6zeGQ/58PfAWr5yIMk2L8gn7ZJtAyVyS0kepW6zn
	ck35Ej7QG1Lz5ebJl2C0cqPnT2YWMzffYNQbTHJaIYy7pl2dKEAsJr8SkIsmDQrStyiq
	R4mb0ZQQ6B4CbvxFanix33zBT/Om8IabHri8LjHkJPl6swyPVGxcfc07VCMVaor+wpvn
	nJZ+IekyUmaZSflS0s63K89kB0shWpWRJtoumCj5suFO6bPI5H3JROsFKkRoy/2v2BnO
	b+vdefBCjQpH069xDpZQC74kMGH4wvCEZNKpiX7sgqazcqqmWo3ysxPfUa7Mj65a3fR4
	WnPw==
X-Received: by 10.107.40.200 with SMTP id o191mr35642264ioo.83.1442341347990; 
	Tue, 15 Sep 2015 11:22:27 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	y100sm8600114ioi.29.2015.09.15.11.22.26
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 15 Sep 2015 11:22:27 -0700 (PDT)
To: Bob Cochran <yocto@mindchasers.com>,
	Romain Perier <romain.perier@gmail.com>, William Mills <wmills@ti.com>
References: <A240ECF1A90D49B7ACC78379329FE808@PAULD> <55F82F8A.0@gmail.com>
	<55F830DF.5030804@gmail.com> <55F83B9D.3020002@ti.com>
	<CABgxDoLS0nZa3vK-NnkLk_sCPj4N9AxqSmrCBNSKCXxWQ3+8uQ@mail.gmail.com>
	<55F84EFE.7080002@mindchasers.com>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <55F861DF.2090508@gmail.com>
Date: Tue, 15 Sep 2015 14:22:23 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <55F84EFE.7080002@mindchasers.com>
Cc: yocto@yoctoproject.org
Subject: Re: I hate busybox!
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
X-List-Received-Date: Tue, 15 Sep 2015 18:22:33 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 09/15/15 13:01, Bob Cochran wrote:
> On 09/15/2015 12:38 PM, Romain Perier wrote:
>> Hi all,
>>
>> I disagree,
>> Unfortunately some embedded devices in the industry are not like most
>> of the tablets and smartphones in the market (no quad or octo cores
>> with few GB of ram... and few GB of flash...)   ;)  .For example,
>> these days, at work, we're designing a board with the SoC zynq-7000
>> and a quad-spi NOR flash. The NOR only has 16MB... now remove ~2Mb for
>> u-boot... 4Mb for the bistream (fpga)... I only have 10MB for my
>> kernel and my rootfs.
>>
>> Embedded projects like uclibc, musl or busybox are very appreciated in
>> cases like this one :)
>>
>> I am not saying that it is a great thing to have busybox built and
>> enabled by default, but that is a great thing to be able to use it.
>> In fact, it strongly depends on your needs for the target...
>
> Agreed.
>
> I just tack on IMAGE_INSTALL_append = " tar findutils tree etc..." in
> my image recipe when I have the rootfs space, and I want the full
> tool. The build system seems to do a nice job of creating the links
> properly.

This is merely an example of the exception being taken for the norm/default.

You'd be hard-pressed to find many boards that don't have an SD or
microSD slot for your bootloader, kernel, and filesystem image. And
you'd be hard-pressed to buy an SD/microSD card less than 8GB now-a-days.

Even amongst boards that have on-board flash, most of them have 1GB or
more with 4GB being quite common:

   
https://en.wikipedia.org/wiki/Comparison_of_single-board_computers#I.2FO_interfaces_and_ports

In any case, choice in deciding what goes into an image is good. I
simply think that, now-a-days, basing all images on busybox (and having
the option to swap some out) is rather quaint. The problem is: your
image doesn't have "ls", it has "busybox's ls". And your image doesn't
have "ps", it has "busybox's ps"... and those aren't the same. In most
cases I want the "real" utilities (the ones I've spent that last 20
years using) not some crippled version.

Ideally the basic OE images would be based on the real utilities (i.e.
the images that get built by default and tested by the Yocto Project's
QA machinery), and there would be a core-image-minimal-busybox (and
core-image-minimal-toybox) provided in those vanishingly rare cases
where they might be needed. Instead of the current situation where
busybox is the default, and some images swap out some of its components
for the real ones.

