Return-Path: <raltherr@google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5C39E00CE0; Wed, 21 Dec 2016 11:55:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f174.google.com (mail-yw0-f174.google.com
	[209.85.161.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21545E00A4D
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2016 11:55:18 -0800 (PST)
Received: by mail-yw0-f174.google.com with SMTP id a10so104725772ywa.3
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2016 11:55:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ygW5OBOtPV5L2C+E9fOMfYZNtbqfhCjajaCp8qD69XM=;
	b=SCxrOna9ydrUQyL+waCflMhybSxXso0Vmt+j1D6VsFBJGRA897/jSOZcL9mYXCELro
	TdhMVZM2eKzhl+noOwRxpqpZODT1/AZByZuLhmN91sH1ruY87pJa/hWnYo+1FrZXJ4le
	9o/Ua/majJIzSf0EkLUabm/4bxSjpJt93T8eUKzSp29MRY8j3GvxP0LDVKzTndsny0fP
	Q/UMK835uL0N0I31gOFBXxKIKqtNB3ZZZ6EDceeQ37rjdTaX+V9MSLaFaqM3EDhVG/PT
	Gbl21PBQcqirziujXReXURU5gMP2Eyc9lUrJmfFx7vlPDM1p0p8ztQPBM4V0TmmAcSfW
	k7Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ygW5OBOtPV5L2C+E9fOMfYZNtbqfhCjajaCp8qD69XM=;
	b=rlje2pHpBTHSA+esLt1VeHuppcHUeqp95us0QUndpHmvXxjoUtVclkA0sJ8caT3nXy
	F94BFjiCaMi0ziCXNJLmsAbIMOye6GOiGVFdvgF7JqZMiimTXVDHQhncuy+REvRvLLym
	i3iy4UjqT2ogIgEshuZsEk9lZbNhstLrGzIKQ0DDGbVPnSh4m6nJz3uKzkpm+XGJcTGC
	zif12UlCv0GVxeUPoNWPF7Y4eSq2QKaM2zMc7K51xWv1TmBlWDBhoR9ZPTlZ2p3paRAv
	gCQq4BCZrOQzCDeMtSgs18M3FkktDlKneNTFXv/DsJkdK8iAm1WDNBk85p68Mz8ZnLzo
	g+4w==
X-Gm-Message-State: AIkVDXK7Ce5t+oESUfaS69ZDUHUGV07opqp7tnyv0mqZbDtG/BDTZH/NCf8r7dUlAQX9Al86TQzgcaPN9dLfQjcg
X-Received: by 10.129.53.203 with SMTP id c194mr2908286ywa.205.1482350117973; 
	Wed, 21 Dec 2016 11:55:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.15.69 with HTTP; Wed, 21 Dec 2016 11:55:17 -0800 (PST)
In-Reply-To: <7411EC580D08984EBA0A1730211182191AA8E7ED@kihagwinex01.int.kistler.com>
References: <7411EC580D08984EBA0A1730211182191AA8E7A2@kihagwinex01.int.kistler.com>
	<CAPLgG=kHYWHWzYPiaGdW7avoxzjQy1WnJkMnRDXaXsDH3ODAaA@mail.gmail.com>
	<7411EC580D08984EBA0A1730211182191AA8E7C3@kihagwinex01.int.kistler.com>
	<CAPLgG==_xUCSGDEitJNj_OY-wvOUB50_eagrdW+58n4aXreX_w@mail.gmail.com>
	<7411EC580D08984EBA0A1730211182191AA8E7ED@kihagwinex01.int.kistler.com>
From: Rick Altherr <raltherr@google.com>
Date: Wed, 21 Dec 2016 11:55:17 -0800
Message-ID: <CAPLgG==LF60y5yevKR32jJp3V78+dcfqAWTowh=35MZina_RRw@mail.gmail.com>
To: Hamish Guthrie <Hamish.Guthrie@kistler.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: fitImage and initramfs
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
X-List-Received-Date: Wed, 21 Dec 2016 19:55:21 -0000
Content-Type: multipart/alternative; boundary=001a1142265637633c05443088f9

--001a1142265637633c05443088f9
Content-Type: text/plain; charset=UTF-8

I was thinking that core-image-minimal-initramfs did something special to
avoid a dependency problem.  I just checked the recipe and it doesn't.
Everything in kernel-fitimage.bbclass seems to setup dependencies correctly
so that the INITRAMFS_IMAGE gets created before trying to bundle it.

The log message you posted ("Creating a kernel image with a bundled
initramfs....") comes from kernel.bbclass:do_bundle_initramfs() which is
for the zImage bundling.  fitImage bundling happens in
kernel-fitimage.bbclass:do_assemble_fitimage_initramfs() and doesn't print
anything to the logs.  Because of that, I can't tell which code path is
having a problem.  Please check the logs in the kernel recipe's work
directory, specifically the logs for those two tasks.  Hopefully they
describe more of where the problem is.

Rick

On Wed, Dec 21, 2016 at 10:11 AM, Hamish Guthrie <Hamish.Guthrie@kistler.com
> wrote:

> Hi Rick,
>
> >> What happens if you use core-image-minimal-initramfs for
> INITRAMFS_IMAGE?
>
> I just tried that and Yocto complains with Nothing PROVIDES
> 'core-image-minimal-initramfs'
>
> >> I think the main problem is that you are telling Yocto to include the
> full rootfs image as an initramfs instead of the reduced, special-purpose
> initramfs image.
>
> I am not sure that Yocto should give a damn about what I am trying to put
> into my initramfs, if I am stupid enough to include a 100G image into my
> initramfs, it is my problem, not Yocto's! If I am stupid enough to do that,
> knowing that I only have 256M RAM, I should be the one bitten!
>
> I have tried doing the same thing with a special reduced filesystem for
> our update software (which is about 4M, by the way), and I get the same
> error with (Unexpected end of input), so I do not believe for a moment it
> is the size of the initramfs. I suspect something in the kernel.bbclass,
> but for the life of me I cannot see why it would fail. It should just WORK!
>
> Hamish
>

--001a1142265637633c05443088f9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I was thinking that core-image-minimal-initramfs did somet=
hing special to avoid a dependency problem.=C2=A0 I just checked the recipe=
 and it doesn&#39;t.=C2=A0 Everything in kernel-fitimage.bbclass seems to s=
etup dependencies correctly so that the INITRAMFS_IMAGE gets created before=
 trying to bundle it.<div><br></div><div>The log message you posted (&quot;=
Creating a kernel image with a bundled initramfs....&quot;) comes from kern=
el.bbclass:do_bundle_initramfs() which is for the zImage bundling. =C2=A0fi=
tImage bundling happens in kernel-fitimage.bbclass:do_assemble_fitimage_ini=
tramfs() and doesn&#39;t print anything to the logs.=C2=A0 Because of that,=
 I can&#39;t tell which code path is having a problem.=C2=A0 Please check t=
he logs in the kernel recipe&#39;s work directory, specifically the logs fo=
r those two tasks.=C2=A0 Hopefully they describe more of where the problem =
is.</div><div><br></div><div>Rick</div></div><div class=3D"gmail_extra"><br=
><div class=3D"gmail_quote">On Wed, Dec 21, 2016 at 10:11 AM, Hamish Guthri=
e <span dir=3D"ltr">&lt;<a href=3D"mailto:Hamish.Guthrie@kistler.com" targe=
t=3D"_blank">Hamish.Guthrie@kistler.com</a>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex">Hi Rick,<br>
<span class=3D""><br>
&gt;&gt; What happens if you use core-image-minimal-initramfs for INITRAMFS=
_IMAGE?=C2=A0<br>
<br>
</span>I just tried that and Yocto complains with Nothing PROVIDES &#39;cor=
e-image-minimal-initramfs&#39;<br>
<span class=3D""><br>
&gt;&gt; I think the main problem is that you are telling Yocto to include =
the full rootfs image as an initramfs instead of the reduced, special-purpo=
se initramfs image.<br>
<br>
</span>I am not sure that Yocto should give a damn about what I am trying t=
o put into my initramfs, if I am stupid enough to include a 100G image into=
 my initramfs, it is my problem, not Yocto&#39;s! If I am stupid enough to =
do that, knowing that I only have 256M RAM, I should be the one bitten!<br>
<br>
I have tried doing the same thing with a special reduced filesystem for our=
 update software (which is about 4M, by the way), and I get the same error =
with (Unexpected end of input), so I do not believe for a moment it is the =
size of the initramfs. I suspect something in the kernel.bbclass, but for t=
he life of me I cannot see why it would fail. It should just WORK!<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Hamish<br>
</font></span></blockquote></div><br></div>

--001a1142265637633c05443088f9--
