Return-Path: <romain.perier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 222ABE00C42; Tue, 15 Sep 2015 09:38:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (romain.perier[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f180.google.com (mail-lb0-f180.google.com
	[209.85.217.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A9E0E00B51
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 09:38:45 -0700 (PDT)
Received: by lbcao8 with SMTP id ao8so88496613lbc.3
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 09:38:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=CwKyC3UGYoS8LYx+4N69pl9CDmRcM+VS3yF22vm8s84=;
	b=vEBJ3qbez56LHrFRU4PEOLMTV0QgrOMASdjw7IPFmdBnGeFgCDhO6eY8EaekECisJh
	4h79iqifo1ASRCErOPGyuKsYeeFIAFNPqWKqwJffooiosuZEhg1ncdo/VpEbrgG3Lccd
	8sTWU4YLWI0djOiJdP4TiAeOpq9xLj/i7y56aMQSARxcCR9M/r8ORWyFSjJQCogjhXVu
	cS9/cHKMi/9FmJlzlKhYOF1fC1GB0TFEq22FpXpbtu1iZ4BTTBJryNU3kxMc3fjRyTGl
	qaT3xGFGAaIQwPdP+oPYh9QXF+QcXwHtT2A3MY5Q58kgglOZnrARsbyCXPstTixPDws2
	s/IQ==
MIME-Version: 1.0
X-Received: by 10.152.234.72 with SMTP id uc8mr23139308lac.80.1442335123591;
	Tue, 15 Sep 2015 09:38:43 -0700 (PDT)
Received: by 10.112.188.193 with HTTP; Tue, 15 Sep 2015 09:38:43 -0700 (PDT)
In-Reply-To: <55F83B9D.3020002@ti.com>
References: <A240ECF1A90D49B7ACC78379329FE808@PAULD> <55F82F8A.0@gmail.com>
	<55F830DF.5030804@gmail.com> <55F83B9D.3020002@ti.com>
Date: Tue, 15 Sep 2015 18:38:43 +0200
Message-ID: <CABgxDoLS0nZa3vK-NnkLk_sCPj4N9AxqSmrCBNSKCXxWQ3+8uQ@mail.gmail.com>
From: Romain Perier <romain.perier@gmail.com>
To: William Mills <wmills@ti.com>
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
X-List-Received-Date: Tue, 15 Sep 2015 16:38:49 -0000
Content-Type: text/plain; charset=UTF-8

Hi all,

I disagree,
Unfortunately some embedded devices in the industry are not like most
of the tablets and smartphones in the market (no quad or octo cores
with few GB of ram... and few GB of flash...)   ;)  .For example,
these days, at work, we're designing a board with the SoC zynq-7000
and a quad-spi NOR flash. The NOR only has 16MB... now remove ~2Mb for
u-boot... 4Mb for the bistream (fpga)... I only have 10MB for my
kernel and my rootfs.

Embedded projects like uclibc, musl or busybox are very appreciated in
cases like this one :)

I am not saying that it is a great thing to have busybox built and
enabled by default, but that is a great thing to be able to use it.
In fact, it strongly depends on your needs for the target...

Regards,
Romain

2015-09-15 17:39 GMT+02:00 William Mills <wmills@ti.com>:
>
> On 09/15/2015 10:53 AM, Trevor Woerner wrote:
>> On 09/15/15 10:47, Trevor Woerner wrote:
>>> The only place busybox (and
>>> toybox) are needed today are in the MMU-less-type systems, such as
>>> Cortex-Ms etc.
>>
>> Actually, the presence or lack of MMU is irrelevant, I meant to single
>> out those systems with limited on-SoC flash.
>>
>
> OE-core is capable of building a system that has no GPLv3.
> This capability is still important to some users and busybox is needed
> for that as I understand.
>
> (Other users want the capability to build a system w/o proprietary code.
>  OE serves both needs.)
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

