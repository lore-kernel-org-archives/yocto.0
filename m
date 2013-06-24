Return-Path: <insop.song@gmail.com>
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 854FEE01525
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 05:05:51 -0700 (PDT)
Received: by mail-wi0-f170.google.com with SMTP id ey16so2570549wid.5
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 05:05:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=0zHRz5P97tsJOghQ7Fnapgc16enf22KuX0ePDNRg0Gc=;
	b=JhSREYX2OlrpYHClI4lAQ4OSVTV5qmczABixqs2EV3Fldf2Y5vqm8ZcbSRSuVhh8Hd
	JM9r3DLZ7M8yXX3TTJW2YeNGeFlP49z8qJnURFIVaO6CB6M7WLqi/1JAI7GzvK7j1zOP
	us32xnAPNcGkgP9iSoGsZMqzVaCIGeyqMlcYhKHEhNtNDH8sGBbLXEn+vR/rO+mupojN
	+iL85cAJasBHmc2PJd5wnl0FE0HQeg7vEY5duqc8Bwy9FX1j0pKuYNhooWqrN6da3JNw
	yX2gEABafkuzTFZJgUq36uRB0nWQP3+bRlGEgRs0R5d31P2r7TmQJZ5nlIyef2NmIpCV
	clxw==
X-Received: by 10.194.19.3 with SMTP id a3mr16890774wje.54.1372075550595; Mon,
	24 Jun 2013 05:05:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.0.227 with HTTP; Mon, 24 Jun 2013 05:05:29 -0700 (PDT)
In-Reply-To: <CA452391058F6D4E9715FB2C29D9312A015BCAFD@039-SN2MPN1-022.039d.mgd.msft.net>
References: <CACzyEJ97cTe5x7OOqQVjkCeUa1NBv750-=y=7tSWgcaoQnEa7A@mail.gmail.com>
	<51C7BD29.6060607@windriver.com>
	<CACzyEJ-A-U=0XV3qUxV-14+Cxn+r8aZOrM+g7EKBXJWdHD=T=A@mail.gmail.com>
	<20130624090457.GA22807@ad.chargestorm.se>
	<CA452391058F6D4E9715FB2C29D9312A015BCAFD@039-SN2MPN1-022.039d.mgd.msft.net>
From: Insop Song <insop.song@gmail.com>
Date: Mon, 24 Jun 2013 05:05:29 -0700
Message-ID: <CACzyEJ88FZyH1Qx=j+f2p-5Cs5hGYqcBfpu03jEB_icnafnTqQ@mail.gmail.com>
To: Luo Zhenhua-B19537 <B19537@freescale.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How NOT to include kernel image to the rootfs?
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
X-List-Received-Date: Mon, 24 Jun 2013 12:05:54 -0000
Content-Type: text/plain; charset=ISO-8859-1

Thank you all for the help.

I've added "RDEPENDS_kernel-base = """ at conf/local.conf
Also I had to take out "oprofile" in my image, as oprofile needs
kernel-vmlinux ...

Then it worked.

Thank you all.

Regards,

Insop


On Mon, Jun 24, 2013 at 2:12 AM, Luo Zhenhua-B19537
<B19537@freescale.com> wrote:
> Insop,
>
> You can check the actual dependency in the output file of "bitbake -g fsl-image-min-net2".
>
>
> Best Regards,
>
> Zhenhua
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of Anders Darander
>> Sent: Monday, June 24, 2013 5:05 PM
>> To: yocto@yoctoproject.org
>> Subject: Re: [yocto] How NOT to include kernel image to the rootfs?
>>
>> * Insop Song <insop.song@gmail.com> [130624 10:56]:
>> > I've tried
>> > - by commenting "RDEPENDS_kernel-base ?= "kernel-image"" from
>> > kernel.bbclass
>> > - and/or adding "RDEPENDS_kernel-base = "" in my image definition
>>
>> You should add this line in either your local.conf, or in a .bbappend for
>> the kernel recipe in question.
>>
>> > But neither worked.
>>
>> That should make it work.
>>
>>
>> Cheers,
>> Anders
>>
>>
>> --
>> Anders Darander
>> ChargeStorm AB / eStorm AB
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>

