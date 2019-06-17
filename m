Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96AE5E00D64; Mon, 17 Jun 2019 10:47:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [212.227.17.20 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36ADBE00D4A
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 10:47:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1560793656;
	bh=6fwN29NhxjNgwkgkMRFczyqxaZnOjR1Md6PLytAuoIk=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
	b=TMMBWNKVbWzuSy8bCBeSGEOyF4jyFZ0H+wEIYApyF+H1ye0/7siggeslcgkVccvy4
	EtOf12Vy3RfvYWGK5CKGzyynYY7VcRwN8fflJf/31PoyzdWlcoSmr3VufM++Amfl0z
	NAW/WDXSjV8IYGNraMqY5QSHHt5Zi4yw3mAshGYE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.225.80.207] ([217.225.80.207]) by web-mail.gmx.net
	(3c-app-gmx-bs55.server.lan [172.19.170.139]) (via HTTP);
	Mon, 17 Jun 2019 19:47:36 +0200
MIME-Version: 1.0
Message-ID: <trinity-fe27ef88-5231-4c98-92a3-47d5fb327d83-1560793656274@3c-app-gmx-bs55>
From: "Arno Steffens" <star@gmx.li>
To: "Zoran Stojsavljevic" <zoran.stojsavljevic@gmail.com>
Date: Mon, 17 Jun 2019 19:47:36 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <CAGAf8LwnPTFedqXA6zwSF22bK_VPs2otSsVg5e=hDAXp+q5Csg@mail.gmail.com>
References: <trinity-1bbd10a3-ee46-4746-90c7-0b5a49a62f26-1560772981350@3c-app-gmx-bs08>
	<CAGAf8LyBsd9Ya+RV94FQj+19f5Um+AypitaAoO0pn5_w+rq+nA@mail.gmail.com>
	<trinity-90f4bc6a-aa89-4bf8-aa92-72aec6a019e5-1560776407716@3c-app-gmx-bs08>
	<CAGAf8LwnPTFedqXA6zwSF22bK_VPs2otSsVg5e=hDAXp+q5Csg@mail.gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:3ZqoTBqzfxjRhJWxpp/HDsznU4nzQPEcm/25mI0L/P3qklEsa7qbBKSxAQklv8Tp8uUDw
	NSI/6C+YYY1OP8R3OPYTJeLRSfRhCKkluKrgMfVACCKoAcN0Ojnx4bq+VxD8kBRuKpSQefyWwVm3
	xUKajfiuzG21zZxPUz/jkgmWRaVxdZAXki4Sza/ulFfVIEz7+dzz0adOwR4TLmxXiXYEjng1yM9Q
	Qx9Ifr2n9E31J64WgY14fRg7DIyOiU2QBAy99wAYhmoKy8YyHNyDs8D8alIgsAA21oAB962e6jsY
	JU=
X-UI-Out-Filterresults: notjunk:1;V03:K0:912PKm2tAWk=:jXOxvFPKOFSeJ8hELnoAaF
	4D8jygk6bGLn0WgOzOzv9acjHHxdyO88laLt2z8al6boGgdcEJW4V350Kdiq9OrUFOcZR4wos
	RMKil5ZqzMD7c/QXpRx8zhWExHyEkQBwqOZKms4798ivy0CpbvxuK7XOkk3+EgnznsE/zb0l6
	ovtv/ZOOqpAu44NaukPDRjbXvDta48zGDeBAw5BhXj++1seEo1XaFJUDshn0fC3OcZbshzMLm
	vwxgyXxuwumjPH6WmIM2jKO/Y1oHQr3qCvcW1llz891HiD5SNTaGsgDiYAjpS6Dvk4VKd/H3m
	gPSonrVQ5CIarshNqs5kB/gQ9ZByGo+rQcxWCp4uP5yZXvmFNuIvn8RckPnZXrgFxGZuHbLQH
	Sen1sY04CmOurzHkch99sJLM2jMNYsm/ecZtrDy9zt2BZD7tXfBkWqCFBF9H1//D//vvMhUAa
	PZJ4EPWHy8zvLFCZZjYxJhOR9oTYoArfy5dlCIRVQhPV6Snzl+Pk/XgDFI01/17T5DgWdys0D
	N6aa3fnKr0hNbbwsobQm5fzdy0AltIL6KDa9Oe4dRf6xbmYHBmYwLhoEXTxIP/j3QKnnQfKEV
	PR/mkkAzEbPYs46c1ZZPht4QRP6FhDcbfObQn1Ta/Z8zu4VZFNzL88Xw==
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 17 Jun 2019 17:47:45 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks for explaining this.
I take some time to read about thumb/thumb2. The feedback is mixed. It see=
ms to generate more compact code, but some say it speeds up, others it slo=
ws down because of reduced function set - and it can cause strange effects=
.
And mixing this causes time to switch processor mode. So, as I am not an e=
xpert in this and can't decide what ist best on per function base and spee=
d is of highest priority, I think I better should use not thumb(2).

So, do I get it right that with this cortexa9t2hf I just have the option t=
o compile it for thumb2? But without using a dedicated compiler option it =
generates same "standard" arm code and the difference is just to adapt all=
 the Makefiles for this suffix.

According to Martin I can get the previous setting by just set ARM_INSTRUC=
TION_SET to "arm" instead of "armv7a". Mh - I just afraid that I lose othe=
r kinds of optimisation. (I am just a user not an expert in arm architectu=
re).
On the other hand for those like me it is better go the standard way. Once=
 I am sure compiler results will not become worse (see above) I go for the=
 pain and renaming my toolchain/makefiles/stuff.

Thanks for you taking the time.
Arno

> Hello Arno,
>
> Let me try to explain my point of view. Since here (my best guess) we
> have some asynchronous bitbake code which went South upon introducing
> T2 HW extension.
>
> Point [1]: as far as I understand arm, cortexa9t2hf is is just a
> superset of previous cortexa9hf (HW wise). NEON HW extension (NEON
> media coprocessor) exists in both of them. In other words:
> cortexa9t2hf =3D cortexa9hf HW + T2 HW extension.
>
> Point [2]:
> > bitbake gives me in 2.5:
> > TUNE_FEATURES        =3D "arm armv7a vfp thumb neon callconvention-har=
d cortexa9"
> > TARGET_FPU           =3D "hard"
> >
> > and in 2.7:
> > TUNE_FEATURES        =3D "arm vfp cortexa9 neon thumb callconvention-h=
ard"
> > TARGET_FPU           =3D "hard"
>
> These two lines are the same: you are able to use 32b arm mode, 16bit
> thumb mode, using armv7 HW with neon HW extension, and using HW FP
> extension as well. The Cortex in both cases is A9.
>
> I expect that somebody somewhere in bitbake version 1.42 - 100% sure
> (since 2.5/Sumo uses bitbake 1.38) dropped "armv7a" as TUNE FEATURE,
> and I have no idea if this is done intentionally or not.
>
> Because of that I copied Alex and Ross to CC: into email, so they
> should unveil this mystery (I would prefer "armv7" to stay in bitbake
> 1.42, since A8 and A9 belongs to armv7, A15 belongs to armv8 (IIRC).
>
> Bottom line: nothing to be done by you, Arno, seems that bitbake 1.42
> should return "armv7" as TUNE FEATURE.
>
> Best Regards,
> Zoran
> _______
>
>
> On Mon, Jun 17, 2019 at 3:00 PM Arno Steffens <star@gmx.li> wrote:
> >
> > Hello Zoran,
> > thanks. As far as I understand is thumb2 another mode of coding, that =
might create more compact code.
> > But I want to keep all compatible to my previous tool-chain and settin=
gs.
> > The only file where I can found this "cortexa9t2hf" is
> > ./meta/conf/machine/include/tune-cortexa9.inc
> > but I can't see how I can control Yocto to generate "cortexa9hf-neon" =
as before.
> > Or have I been wrong the time before?
> >
> > bitbake gives me in 2.5:
> >
> > TUNE_FEATURES        =3D "arm armv7a vfp thumb neon callconvention-har=
d cortexa9"
> > TARGET_FPU           =3D "hard"
> >
> > and in 2.7:
> > TUNE_FEATURES        =3D "arm vfp cortexa9 neon thumb callconvention-h=
ard"
> > TARGET_FPU           =3D "hard"
> >
> > so armv7a seem to be missing. In terms of thumb both is same. But is t=
hat the reason? Where to set it?
> > Arno
> >
> > >
> > > Hello Arno,
> > >
> > > Your question, per say, has little to do with YOCTO forum. But I'll
> > > try (as my best) to answer your question.
> > >
> > > Cortexa9hf should be armv7 A9 Hard Floating (it contains HW FP unit)=
.
> > >
> > > Cortexa9t2hf is by analogy armv7 A9 T2 Hard Floating. Now, the
> > > question is what is T2? T2 is addition to the previous architecture
> > > Cortexa9hf, and addition is Thumb-2 mode.
> > >
> > > Hope this helps,
> > >
> > > Zoran
> > > _______
> > >
> > > On Mon, Jun 17, 2019 at 2:03 PM Arno Steffens <star@gmx.li> wrote:
> > > >
> > > > I switched from Yocto 2.5 to 2.7 and recognised a new architetcure=
 name.
> > > > Instead of cortexa9hf it is now build for cortexa9t2hf? Did I do s=
omething wrong or what exactly does this t2 mean?
> > > > Target system is a Zynq7020 system.
> > > > --
> > > > _______________________________________________
> > > > yocto mailing list
> > > > yocto@yoctoproject.org
> > > > https://lists.yoctoproject.org/listinfo/yocto
> > >
>

