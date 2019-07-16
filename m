Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55533E00D5D; Tue, 16 Jul 2019 01:12:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com
	[209.85.166.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B58CDE00D53
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 01:12:49 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id k20so38468181ios.10
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 01:12:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=WC39yvp1lGEhXbyiaOyjEpDoQrCHnND7gdFs7xqajl8=;
	b=DC1QA7Afw3RB5yAw/PxT9zDqDg8tNljFJ/H5JtSvQAvuhgUymijAkXJ6pOBd7O2FbD
	rgPnmjKlN+1r0/D2iCQvfheBpLL5RzstwnKPHi42RLOFGeUS8j8r4wNocsofAbqF7kSC
	gqT9eBsApDvWykLy7g0ruUSVTXFVHxRjWUgAMpKXMFvE4xo6+6oBEV0zbsSoKcZrC2+j
	cnRBoTCp+c3Me2jPZsy58K8PN20DWblWn8jqtumjoTvzQOo/on4G/xZIfe2SwjfEZDmh
	AQ4bPMb3Bbl2qNnKwTJTQ0NuLd9qnPjpor3NRLIfkkBOXajobg/dA9SDaSzMwKh6J/94
	jzpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=WC39yvp1lGEhXbyiaOyjEpDoQrCHnND7gdFs7xqajl8=;
	b=VR1DgfidN+T843t2LaYGy2fWUgKmN8uXHL8VmdCBuD0ecstr+OYFu4TVL4SQNZ9yEl
	IAWHsa9h90z7McaRNZ1SSqBjJLu/LwZwMfXv1PMnfKzCmK17ZovQ48rnb1hh5TMQ2lAy
	IS3cPXuE8aRMKYfjg3IORCBfS+vs06bUxmR1tdvV+UzjOEzB64r1cVH7rJ9WCoZkEjnx
	oLZhtml/k5rzGFhMhyGMRT70W8qbF8DPuibJn0ImoBYASvAcZOXaD9K2uhEIN1BaIzrp
	TffQYQC8nryoRaXgKbVUiXCYocSp7sEesjNl97qm1FuhiNT/zoFxTbxthpF0GB5ds6fW
	PjnQ==
X-Gm-Message-State: APjAAAXAxVUHmz8/QVYtZ0JHguaCEB9KaP5AfBcp8W+JJhxOqp/STw5J
	tgBQpEWeqhOgj6DtlmX0M/9Q7raEqAoNLcOgciQ=
X-Google-Smtp-Source: APXvYqy6LHnWMT+miHMAytgJThYZ60gnmuayDfoimuJdyUChQSro6TLNkX42cfI1DJTY5fyBPeLo4TTnzcCiuYD8C7U=
X-Received: by 2002:a6b:dc13:: with SMTP id s19mr7415929ioc.53.1563264769160; 
	Tue, 16 Jul 2019 01:12:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP; Tue, 16 Jul 2019 01:12:48
	-0700 (PDT)
In-Reply-To: <CAGAf8LxtLJKvrJemB=1r5gRVoGRbyjk==UM7fvFOnczt_HV8=A@mail.gmail.com>
References: <89d3d916-1fca-5ff5-e68e-79370dd0bfb7@gmx.de>
	<CAGAf8Lz2t90EjsaXPXxsSoioHb33u7dutnREiFr53NYp-WVD5A@mail.gmail.com>
	<34ae2007-e315-4b5a-c388-9c8adab28cbd@gmx.de>
	<CAGAf8Ly7JjRxj0aduWbB26jsuKqFVLDLVr=qgKPQMxcUhWiadg@mail.gmail.com>
	<66af0e83-056c-ee5a-7bcd-863c14da72de@gmx.de>
	<CAGAf8LxHRZ8+UcSWjE4tNfnkGEGnQGAjWjmL3svMqVUUvd60gg@mail.gmail.com>
	<29974dbb-39f5-cf15-7c64-4b707ce0d157@gmx.de>
	<CAGAf8Ly+e5WCacexoLK9fMxnUK_p9oE_Stsuw98o2Nk_O0O78Q@mail.gmail.com>
	<CAA=hcWSvSDx5sXRdiLFFE8cJa_wyLDhDO6OHmB+c0JcgfRLc6Q@mail.gmail.com>
	<CAGAf8LxtLJKvrJemB=1r5gRVoGRbyjk==UM7fvFOnczt_HV8=A@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Tue, 16 Jul 2019 18:12:48 +1000
Message-ID: <CAA=hcWTyjUJ-LgMF-ATj3w3kuvrP2ho0xY62_g3vXUHfGgU35g@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Can't boot to initramfs
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
X-List-Received-Date: Tue, 16 Jul 2019 08:12:50 -0000
Content-Type: text/plain; charset="UTF-8"

Thanks Zoran, I have tools to test it, I'll try it, it will be a long
journey though.

Thank you.

- jupter

On 7/16/19, Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com> wrote:
> Hello Jupiter,
>
> I actually continued this topic initiated by Moritz, to find out how
> you and me and somebody else also can build the yocto build system
> with bundled rescue kernel into the rootfs.
>
> My target architecture I am playing with is armv7 A8 (BBB), since I am
> experimenting with it.
>
> I actually built the armv7 A8 (BBB) with the unbundled initramfs,
> where the BSP actually ends up for the testing purposes. All this how
> I did it is described here:
> https://lists.yoctoproject.org/pipermail/yocto/2018-July/041696.html
>
> Here is also latest local.conf for warrior (how I am buillding it):
> https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-releases/bbb-warrior/local.conf_full
>
> I never built such a system with rescue initramfs, ending with/in
> rootfs on mtd/flash, or SD card, YOCTO wise, so I actually continued
> this topic to find out exactly the same what you asked me above.
>
> You can go over this email thread, and try while building with what we
> all put as collection of patchworks.
>
> I have no time to do this, since I need very urgently to do some other
> important for me stuff on BBB.
>
> Zoran
> _______
>
>
>
>
> On Mon, Jul 15, 2019 at 2:10 PM JH <jupiter.hce@gmail.com> wrote:
>>
>> Hi Zoran,
>>
>> On 7/12/19, Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com> wrote:
>> > Moritz,
>> >
>> > Thank you very much for this reply. It makes it very clear... What is
>> > the current State of Affairs for the topic.
>> >
>> > Let us see if there will be the improvement to this topic. I'll
>> > document this on one of my private GitHubs. And archive this email.
>>
>> Any chance to access your documents?
>>
>> Thank you.
>>
>> - jupiter
>

