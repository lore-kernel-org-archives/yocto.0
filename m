Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7C0FE00CBD; Mon, 17 Jun 2019 06:00:10 -0700 (PDT)
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
	*      [212.227.17.22 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5D27E00CBD
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 06:00:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1560776407;
	bh=oNeCoC55DWdU2A7nhSaiLlZpBosJZAC4ipzPGMMjji4=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
	b=eCQbVcu+S3mvSN7H5nxSogp5mzUsuSqNcaZ189K/WMpMXL08hRMZJenquLGBxjSFX
	iFBJ4Pf1A8y86Q0rpCg/bqPfeqn+kAJYmIHpSJFnqW/fJEm44c+XUtj9JtHAHptWfl
	mO+xkh63B9pwg6L/f0bmgR0/rQtzWmsuB/11vjnc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [62.225.157.196] ([62.225.157.196]) by web-mail.gmx.net
	(3c-app-gmx-bs08.server.lan [172.19.170.59]) (via HTTP);
	Mon, 17 Jun 2019 15:00:07 +0200
MIME-Version: 1.0
Message-ID: <trinity-90f4bc6a-aa89-4bf8-aa92-72aec6a019e5-1560776407716@3c-app-gmx-bs08>
From: "Arno Steffens" <star@gmx.li>
To: "Zoran Stojsavljevic" <zoran.stojsavljevic@gmail.com>
Date: Mon, 17 Jun 2019 15:00:07 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <CAGAf8LyBsd9Ya+RV94FQj+19f5Um+AypitaAoO0pn5_w+rq+nA@mail.gmail.com>
References: <trinity-1bbd10a3-ee46-4746-90c7-0b5a49a62f26-1560772981350@3c-app-gmx-bs08>
	<CAGAf8LyBsd9Ya+RV94FQj+19f5Um+AypitaAoO0pn5_w+rq+nA@mail.gmail.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:jzUqFTyu/8kyI/cDw5doEVcC7cjyGygt89fnrtiOEWVNGtMDnIa7ZwCNC1dkNmyRQt82r
	b8lWyntJEubF0Emjq1QiXe8RnLIQYpjUfIjhI0ncpEHnMT+I0ikxxfm4bDxa/LB7IVzvDQRjcvbJ
	aeDn7BO/KA/NztR5QWCgPX7XUogoWE+DgvgUjEfFZ8pfual2JSzQnWwXRJRVQxcmtvlgaAdNEZyL
	HDqtKIvwBrkdgRFXX64odLI0xqX0trqXm0k/bRxm1/8tEPyzfi5hMGUJTC4FGv2fnH0DQVRp842j
	fM=
X-UI-Out-Filterresults: notjunk:1;V03:K0:GHcQlkPy+Vc=:pSBXNcvk09SwBpliOzzAyx
	7B8ZdICvpSrGSV56zlhkCXzAKvqusMOvniHnjiGv/xPUWmbV4L7DpSZHY/RLMgMApsiTYqt+T
	4JVEwfoVwGNYeW8Zee3FLBCoVnyszMK5oJkfznNlW8Qq6wWHHYpqYxtT01fMtwqc4J3AMuINm
	A/EcrXr7ce3dhY1cD07DNoRceWMddRivKcT2zSAndSSoLMZaLIoykjHgm7py2i9cNDsZvDUY/
	kQkse0uPRK5Xn2CGZOpTVQyjty/PrUKvsG8Xu9akuTrlUsFAUX1yimmpdhINZprEQIfyadNy3
	METZM7NnDOgDUjvGP/0CemsQuRyMXB5DNB5HiemfRXsItfyxy3FTY2uEN3+kWRX4J/NVuQkzg
	cFb4eCAT/SpR8TJnnEpMKiljL4ECb6fVTKqyYbz+jSv4ET8X+OO1TNccCLrqmYa1fBwrsGqbC
	F8gISXCU2SixjLTpJdqVHuo+HpYfBUP1m/UeXwzuBMKiJB6NCzynJM4GFnF+hgkj9eRLIYR2H
	xYY2MJjn7VENBW7oSr91BiP+vkKY+YJmyqgOFt4gwqOXu90NgcuASXtwlMrWyyRtAMCk40T3l
	Tlz+hf76ydIxxCrQRWrnNTF/KW1QAGiOF5P6fPxeT3rF6v3MihVuYQaw==
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
X-List-Received-Date: Mon, 17 Jun 2019 13:00:10 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello Zoran,
thanks. As far as I understand is thumb2 another mode of coding, that migh=
t create more compact code.
But I want to keep all compatible to my previous tool-chain and settings.
The only file where I can found this "cortexa9t2hf" is
./meta/conf/machine/include/tune-cortexa9.inc
but I can't see how I can control Yocto to generate "cortexa9hf-neon" as b=
efore.
Or have I been wrong the time before?

bitbake gives me in 2.5:

TUNE_FEATURES        =3D "arm armv7a vfp thumb neon callconvention-hard co=
rtexa9"
TARGET_FPU           =3D "hard"

and in 2.7:
TUNE_FEATURES        =3D "arm vfp cortexa9 neon thumb callconvention-hard"
TARGET_FPU           =3D "hard"

so armv7a seem to be missing. In terms of thumb both is same. But is that =
the reason? Where to set it?
Arno

>
> Hello Arno,
>
> Your question, per say, has little to do with YOCTO forum. But I'll
> try (as my best) to answer your question.
>
> Cortexa9hf should be armv7 A9 Hard Floating (it contains HW FP unit).
>
> Cortexa9t2hf is by analogy armv7 A9 T2 Hard Floating. Now, the
> question is what is T2? T2 is addition to the previous architecture
> Cortexa9hf, and addition is Thumb-2 mode.
>
> Hope this helps,
>
> Zoran
> _______
>
> On Mon, Jun 17, 2019 at 2:03 PM Arno Steffens <star@gmx.li> wrote:
> >
> > I switched from Yocto 2.5 to 2.7 and recognised a new architetcure nam=
e.
> > Instead of cortexa9hf it is now build for cortexa9t2hf? Did I do somet=
hing wrong or what exactly does this t2 mean?
> > Target system is a Zynq7020 system.
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

