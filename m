Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFB02E00D6B; Tue, 18 Jun 2019 11:47:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C43E0E00D42
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2019 11:47:44 -0700 (PDT)
Received: by mail-qt1-f173.google.com with SMTP id p15so16708444qtl.3
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2019 11:47:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=62194ZRk0uYABx9XWSKcFlh/mSMUhHh3K/DA61sHfuA=;
	b=nxthRpwuIjxU3XNusozHZIH8LPiPHX2JnYmhIIg7fMScdKIJR+7Fb4BqNL5tUu3yTt
	4o/3uUkKjH0jfS0XJXDhYYRIk/+0TzINrEXvzQBd62eYVCkRbxJ9EBFAByricm4BVQqX
	1wI9FPWQxTcPRY38HJy77Cuav1B7WECrCY9gA3vDNbMFlBlzhxSvXLlItOhclC7wDTcU
	m9po02GTy34id5wWjSJab1bQGEoCnRMXLXqGz//w/ZL7SS5tEG9y9kXkUUwcRbux8rep
	+hY9kAACPbZLgnVswib/SpigP4JIf48O6X/kwfOXCVs8ApY3Vlt4KEd+YWUqP6grKlpS
	y1cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=62194ZRk0uYABx9XWSKcFlh/mSMUhHh3K/DA61sHfuA=;
	b=F5GThB5oHOuosmFU865im6Phhiow4PQZhZfTB+N0RjJLdbU6/x0vFHjr4k5jO1bEvf
	d8iCBgurt7HdXgLr5yaxpGuKm/0Im6vHZT599dHQqXqthqfaqYxWkEPdu7MDfN7Ms6g8
	Xh8JpM8EbgyXEGR1U+pDC0zNusyPt9puUqjTnHarowea9qZEU4DJ3UC8UePxMn+MTI9+
	Q0zfHElmeyg3fAdGJXhCLzU89NwBusWr9fc6SS4C+6xrkU3YuV7+Wc7VIjOO8IGu3AZf
	gHluI+bbBusqG7L5rdsexVD+mtcsIp0IWEoDkHPQYiBWPnJKNEXKOry6BadqwUkxn60v
	BC4g==
X-Gm-Message-State: APjAAAWWnRdKlmKEf8vIY5mnUejWSyC+hFWlc5VqwH4zq0zTZilI5r4k
	QUCiRuP1OdmciZ3rVBECbmWHdJ6xC0qx+rQ8L1g=
X-Google-Smtp-Source: APXvYqzCnLZ4SLv0VIFucaWNJr3uBiUhRD1cl9LJ5gBKY/c1v0vieppjSjWf2m8AqpbllnNOo/uQq74u/m4S5uOvabM=
X-Received: by 2002:a0c:8a23:: with SMTP id 32mr29564888qvt.231.1560883663941; 
	Tue, 18 Jun 2019 11:47:43 -0700 (PDT)
MIME-Version: 1.0
References: <trinity-1bbd10a3-ee46-4746-90c7-0b5a49a62f26-1560772981350@3c-app-gmx-bs08>
	<CAGAf8LyBsd9Ya+RV94FQj+19f5Um+AypitaAoO0pn5_w+rq+nA@mail.gmail.com>
	<trinity-90f4bc6a-aa89-4bf8-aa92-72aec6a019e5-1560776407716@3c-app-gmx-bs08>
	<CAGAf8LwnPTFedqXA6zwSF22bK_VPs2otSsVg5e=hDAXp+q5Csg@mail.gmail.com>
	<trinity-fe27ef88-5231-4c98-92a3-47d5fb327d83-1560793656274@3c-app-gmx-bs55>
	<20190618171345.GB1501@jama>
In-Reply-To: <20190618171345.GB1501@jama>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 18 Jun 2019 20:47:32 +0200
Message-ID: <CAGAf8LwYfO93pTwkKzsxHJPaJUz12vm9d+HBufyLS+bzDqR0hQ@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Arno Steffens <star@gmx.li>, Yocto Project <yocto@yoctoproject.org>
Subject: Re: cortexa9t2hf instead of cortexa9hf
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
X-List-Received-Date: Tue, 18 Jun 2019 18:47:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> Just ARM_INSTRUCTION_SET to "arm" which will give you "cortexa9hf" again
> (not "armv7a").

I think this is impossible for the current state of YOCTO affairs. I
do not think bitbake is able to determine type of arm silicon, since
it needs to implement the following instruction somewhere beneath (in
privileged mode):
asm volatile("mrc p15, 0, r0, c0, c0, 0" : "=3Dr"(reg_value) );

But according to the variable MACHINE (example: MACHINE ??=3D
"beaglebone"), it is able to determine that the platform is a type of
armv7a.

My two cent worth thinking,
Zoran
_______


On Tue, Jun 18, 2019 at 7:13 PM Martin Jansa <martin.jansa@gmail.com> wrote=
:
>
> On Mon, Jun 17, 2019 at 07:47:36PM +0200, Arno Steffens wrote:
> > Thanks for explaining this.
> > I take some time to read about thumb/thumb2. The feedback is mixed. It =
seems to generate more compact code, but some say it speeds up, others it s=
lows down because of reduced function set - and it can cause strange effect=
s.
> > And mixing this causes time to switch processor mode. So, as I am not a=
n expert in this and can't decide what ist best on per function base and sp=
eed is of highest priority, I think I better should use not thumb(2).
> >
> > So, do I get it right that with this cortexa9t2hf I just have the optio=
n to compile it for thumb2? But without using a dedicated compiler option i=
t generates same "standard" arm code and the difference is just to adapt al=
l the Makefiles for this suffix.
> >
> > According to Martin I can get the previous setting by just set ARM_INST=
RUCTION_SET to "arm" instead of "armv7a". Mh - I just afraid that I lose ot=
her kinds of optimisation. (I am just a user not an expert in arm architect=
ure).
>
> I didn't say anything about changing the DEFAULTTUNE.
>
> Just ARM_INSTRUCTION_SET to "arm" which will give you "cortexa9hf" again
> (not "armv7a").
>
> > On the other hand for those like me it is better go the standard way. O=
nce I am sure compiler results will not become worse (see above) I go for t=
he pain and renaming my toolchain/makefiles/stuff.
>
> The results should be almost the same, maybe slightly better, depends on
> the actual code as Khem mentioned.
>
> But if this causes you a lot of pain "renaming my toolchain/makefiles/stu=
ff"
> then you should probably spend the time on your tooling instead of
> replacing one hardcoded value with another.
>
> Cheers,
>
> >
> > Thanks for you taking the time.
> > Arno
> >
> > > Hello Arno,
> > >
> > > Let me try to explain my point of view. Since here (my best guess) we
> > > have some asynchronous bitbake code which went South upon introducing
> > > T2 HW extension.
> > >
> > > Point [1]: as far as I understand arm, cortexa9t2hf is is just a
> > > superset of previous cortexa9hf (HW wise). NEON HW extension (NEON
> > > media coprocessor) exists in both of them. In other words:
> > > cortexa9t2hf =3D cortexa9hf HW + T2 HW extension.
> > >
> > > Point [2]:
> > > > bitbake gives me in 2.5:
> > > > TUNE_FEATURES        =3D "arm armv7a vfp thumb neon callconvention-=
hard cortexa9"
> > > > TARGET_FPU           =3D "hard"
> > > >
> > > > and in 2.7:
> > > > TUNE_FEATURES        =3D "arm vfp cortexa9 neon thumb callconventio=
n-hard"
> > > > TARGET_FPU           =3D "hard"
> > >
> > > These two lines are the same: you are able to use 32b arm mode, 16bit
> > > thumb mode, using armv7 HW with neon HW extension, and using HW FP
> > > extension as well. The Cortex in both cases is A9.
> > >
> > > I expect that somebody somewhere in bitbake version 1.42 - 100% sure
> > > (since 2.5/Sumo uses bitbake 1.38) dropped "armv7a" as TUNE FEATURE,
> > > and I have no idea if this is done intentionally or not.
> > >
> > > Because of that I copied Alex and Ross to CC: into email, so they
> > > should unveil this mystery (I would prefer "armv7" to stay in bitbake
> > > 1.42, since A8 and A9 belongs to armv7, A15 belongs to armv8 (IIRC).
> > >
> > > Bottom line: nothing to be done by you, Arno, seems that bitbake 1.42
> > > should return "armv7" as TUNE FEATURE.
> > >
> > > Best Regards,
> > > Zoran
> > > _______
> > >
> > >
> > > On Mon, Jun 17, 2019 at 3:00 PM Arno Steffens <star@gmx.li> wrote:
> > > >
> > > > Hello Zoran,
> > > > thanks. As far as I understand is thumb2 another mode of coding, th=
at might create more compact code.
> > > > But I want to keep all compatible to my previous tool-chain and set=
tings.
> > > > The only file where I can found this "cortexa9t2hf" is
> > > > ./meta/conf/machine/include/tune-cortexa9.inc
> > > > but I can't see how I can control Yocto to generate "cortexa9hf-neo=
n" as before.
> > > > Or have I been wrong the time before?
> > > >
> > > > bitbake gives me in 2.5:
> > > >
> > > > TUNE_FEATURES        =3D "arm armv7a vfp thumb neon callconvention-=
hard cortexa9"
> > > > TARGET_FPU           =3D "hard"
> > > >
> > > > and in 2.7:
> > > > TUNE_FEATURES        =3D "arm vfp cortexa9 neon thumb callconventio=
n-hard"
> > > > TARGET_FPU           =3D "hard"
> > > >
> > > > so armv7a seem to be missing. In terms of thumb both is same. But i=
s that the reason? Where to set it?
> > > > Arno
> > > >
> > > > >
> > > > > Hello Arno,
> > > > >
> > > > > Your question, per say, has little to do with YOCTO forum. But I'=
ll
> > > > > try (as my best) to answer your question.
> > > > >
> > > > > Cortexa9hf should be armv7 A9 Hard Floating (it contains HW FP un=
it).
> > > > >
> > > > > Cortexa9t2hf is by analogy armv7 A9 T2 Hard Floating. Now, the
> > > > > question is what is T2? T2 is addition to the previous architectu=
re
> > > > > Cortexa9hf, and addition is Thumb-2 mode.
> > > > >
> > > > > Hope this helps,
> > > > >
> > > > > Zoran
> > > > > _______
> > > > >
> > > > > On Mon, Jun 17, 2019 at 2:03 PM Arno Steffens <star@gmx.li> wrote=
:
> > > > > >
> > > > > > I switched from Yocto 2.5 to 2.7 and recognised a new architetc=
ure name.
> > > > > > Instead of cortexa9hf it is now build for cortexa9t2hf? Did I d=
o something wrong or what exactly does this t2 mean?
> > > > > > Target system is a Zynq7020 system.
> > > > > > --
> > > > > > _______________________________________________
> > > > > > yocto mailing list
> > > > > > yocto@yoctoproject.org
> > > > > > https://lists.yoctoproject.org/listinfo/yocto
> > > > >
> > >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
> --
> Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

