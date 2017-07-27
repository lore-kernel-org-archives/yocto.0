Return-Path: <so61pi.re@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1AE4E00C80; Thu, 27 Jul 2017 05:57:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (so61pi.re[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.48 listed in dnsbl.sorbs.net]
Received: from mail-lf0-f48.google.com (mail-lf0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A626E00C61
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 05:57:48 -0700 (PDT)
Received: by mail-lf0-f48.google.com with SMTP id o85so20377673lff.3
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 05:57:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=d7xWz+G+7CF/qm47IVo4O3uDgVeIjo21fyBpIkCkoDA=;
	b=lXplVQSvvE9tO2DLa2o5YFsKTq9TTIFumrKvA2t06g4Ci1xSkZXj1Um1BYTReY9eoJ
	7ONZi4/YtyfK6b+OBIXNlCVYI8HS5YUcIT1GfP/Cxj+5eZkocgjLIuddmfX/yTHg7kpq
	6aH9ZA6YV75nyTu3YI5IZX0VW9ZYHuZi23LNIHtKO/6yaf+h54ng6zGbwbC//8JcaHgF
	+Hx8rQbBXoilV+M/EqhipG31sXfdM/O8GzK5yoHZqZcW7ISTaZgkRpQF9+afk4heBuGx
	0+2d+fTtZ3BRW9yfaKqsZZ1lmFLANoGvbSO04RQdCLnhTl7MWaONgzEHoFdTaKQvhp/y
	kJXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=d7xWz+G+7CF/qm47IVo4O3uDgVeIjo21fyBpIkCkoDA=;
	b=dH6De26nON1JflaOlX2zXv9+swpw4hrtVZavNfJJB5SQS/g9JKTSc4pGuTLOE2WsIj
	wWC+mOx9aGnhgsfw/KKnXcRkeGV4uo7LiOv5NeHH33Zpzz8sjzFMEwcPsgnoxPSKpPvf
	87l/Ljx7BeooNdWgukNw7YHHrg+eaR83aHTa9OYApadxVOaPbEkPMwHqRZAehn67qg/6
	hPI84cO19Q4ZGIhBOZetZOqcJxUsd8fJL49vy3cklbJwWqy2w++6V+e0c2RYY8RTihh+
	DlflMhaR6JIOx+aWlRXp4iiXppD2o/6+N+8veDxLRwD+X6vsOVQuvc69GMfMC3D0V07k
	pnfA==
X-Gm-Message-State: AIVw110rNmzqovv4KKVKoAmgjjjKh81lE0rHZdfhXzsh6kFS8P6tSC2N
	joegse0hQ9BiWKCtgYJ7A+ELNJGUiw==
X-Received: by 10.25.42.67 with SMTP id f64mr1314524lfl.185.1501160267153;
	Thu, 27 Jul 2017 05:57:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.201.129 with HTTP; Thu, 27 Jul 2017 05:57:46 -0700 (PDT)
In-Reply-To: <f9d7925e-e938-6f80-9fba-b271ec568c90@posteo.de>
References: <CAGnCEbuysuVU34RSX435ftsa+GKawUB0tWtcEdVdCFRqvY4TSw@mail.gmail.com>
	<f9d7925e-e938-6f80-9fba-b271ec568c90@posteo.de>
From: =?UTF-8?B?Tmfhu41jIFRoaSBIdeG7s25o?= <so61pi.re@gmail.com>
Date: Thu, 27 Jul 2017 19:57:46 +0700
Message-ID: <CAGnCEbs2=wHR3UhvPF5s=Pu_yCO5F9XRXbHojM4CNB5DUopWJw@mail.gmail.com>
To: Dennis Menschel <menschel-d@posteo.de>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: How to build a same package twice with different configurations for same MACHINE?
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
X-List-Received-Date: Thu, 27 Jul 2017 12:57:50 -0000
Content-Type: multipart/alternative; boundary="94eb2c14a81479854905554c1c06"

--94eb2c14a81479854905554c1c06
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dennis,

I've tried what you suggested, the problem is the busybox recipe uses some
files in its original directory so the bitbake complained about the missing
files.
My current solution is duplicating the busybox recipe and its related files
& directories.

Thanks anyway.

Best Regards,
Thi Huynh

Best Regards,
Thi Huynh

On Wed, Jul 26, 2017 at 4:18 AM, Dennis Menschel <menschel-d@posteo.de>
wrote:

> Hi,
>
> Am 18.07.2017 um 15:24 schrieb Ng=E1=BB=8Dc Thi Hu=E1=BB=B3nh:
> > [...]
> >
> > Both images use busybox package but in different ways. The main-image
> > can use several busybox' tools but the initial-flasher-image only uses
> > one or two of them just to complete the flashing goal.
> >
> > My question is, is there a way to build busybox for main-image with one
> > defconfig, then build the busybox for initial-flasher-image with a
> > different defconfig when I issue "bitbake initial-flasher-image" comman=
d?
> >
> > [...]
> I'm not aware of such a feature in BitBake. As for your situation I'd
> suggest creating a secondary recipe (e.g. "busybox-flasher") in your own
> layer which includes the original busybox recipe and adapts its feature
> set with a configuration fragment.
>
> Example: busybox-flasher_1.24.1.bb
>
>     require recipes-core/busybox/busybox_${PV}.bb
>     SRC_URI +=3D "file://flasher-options.cfg"
>
> That way you can easily distinguish busybox and busybox-flasher in your
> images and you can minimize the redundancies between the recipes.
>
> Hope it helps!
>
> Best regards,
> Dennis Menschel
>
>

--94eb2c14a81479854905554c1c06
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi Dennis,<br><br></div>I&#39;ve tried=
 what you suggested, the problem is the busybox recipe uses some files in i=
ts original directory so the bitbake complained about the missing files.<br=
></div>My current solution is duplicating the busybox recipe and its relate=
d files &amp; directories.<br><br></div><div>Thanks anyway.<br></div><div><=
br></div>Best Regards,<br></div>Thi Huynh<br></div><div class=3D"gmail_extr=
a"><br clear=3D"all"><div><div class=3D"gmail_signature" data-smartmail=3D"=
gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Best Regards,<br>Th=
i Huynh</div></div></div></div></div>
<br><div class=3D"gmail_quote">On Wed, Jul 26, 2017 at 4:18 AM, Dennis Mens=
chel <span dir=3D"ltr">&lt;<a href=3D"mailto:menschel-d@posteo.de" target=
=3D"_blank">menschel-d@posteo.de</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">Hi,<br>
<br>
Am 18.07.2017 um 15:24 schrieb Ng=E1=BB=8Dc Thi Hu=E1=BB=B3nh:<br>
&gt; [...]<br>
<span class=3D"">&gt;<br>
&gt; Both images use busybox package but in different ways. The main-image<=
br>
&gt; can use several busybox&#39; tools but the initial-flasher-image only =
uses<br>
&gt; one or two of them just to complete the flashing goal.<br>
&gt;<br>
&gt; My question is, is there a way to build busybox for main-image with on=
e<br>
&gt; defconfig, then build the busybox for initial-flasher-image with a<br>
&gt; different defconfig when I issue &quot;bitbake initial-flasher-image&q=
uot; command?<br>
&gt;<br>
</span>&gt; [...]<br>
I&#39;m not aware of such a feature in BitBake. As for your situation I&#39=
;d<br>
suggest creating a secondary recipe (e.g. &quot;busybox-flasher&quot;) in y=
our own<br>
layer which includes the original busybox recipe and adapts its feature<br>
set with a configuration fragment.<br>
<br>
Example: <a href=3D"http://busybox-flasher_1.24.1.bb" rel=3D"noreferrer" ta=
rget=3D"_blank">busybox-flasher_1.24.1.bb</a><br>
<br>
=C2=A0 =C2=A0 require recipes-core/busybox/busybox_$<wbr>{PV}.bb<br>
=C2=A0 =C2=A0 SRC_URI +=3D &quot;file://flasher-options.cfg&quot;<br>
<br>
That way you can easily distinguish busybox and busybox-flasher in your<br>
images and you can minimize the redundancies between the recipes.<br>
<br>
Hope it helps!<br>
<br>
Best regards,<br>
Dennis Menschel<br>
<br>
</blockquote></div><br></div>

--94eb2c14a81479854905554c1c06--
