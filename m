Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9588DE009F3; Sat, 11 Feb 2017 17:56:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kergoth[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.179 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.179 listed in list.dnswl.org]
Received: from mail-ot0-f179.google.com (mail-ot0-f179.google.com
	[74.125.82.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7BEBDE009D7
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 17:56:51 -0800 (PST)
Received: by mail-ot0-f179.google.com with SMTP id 65so50518473otq.2
	for <yocto@yoctoproject.org>; Sat, 11 Feb 2017 17:56:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=67oGNfPxp9pzZfNQRRBIooyPxFDVVdIivyUBfry3rnI=;
	b=MMtHnU2B1VJSAtMOVQqxJ2nJi0Ikli/Mdqk7OgNwNS0jdUic0ZGjn4okFNre0YKDj9
	3n3+Lij+sQ3kzRYhUa+K8ny+lcRJhEZaXOrGIoqro3DugTXQgMPJkp0VaxnZL4ijcv8y
	qpMIgNpHltG/B9rxSmHvMBvhLeOOIkOlfR7RdnpIyZ9WwYjy87L+DnHKzqid6fQEIArx
	wJtMwO5QZjMIY7kp9KalctvA1d7oBRU8s73+64VgxK5fT1pwnBp7Nlyl7bvt1A/F26rR
	v2newSZ/cQgh74x/76+t438xAWPmvTfAzkvcGuuAEDbtyNgPs0wt4o6vmkoglpOTHpHs
	wlHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=67oGNfPxp9pzZfNQRRBIooyPxFDVVdIivyUBfry3rnI=;
	b=Gd5G9XJnjkhVE3Xz567cJiS/wR5TF0HCYruWc1TT+8amIZZOHRNIowC9IBbaUZAv45
	LyZjJuZV3xVEPdMMYTjly16PgwTz2hjxqjrAiMr2Mi2oy0Xy1Z/BKp6IkSgkAeVm+i84
	4POhgIH3Kmufbh2v1pE6tFO3cxW64FW6slzN3SIiZMh11y17IKLlz6P7vYWlCfMZgK3E
	MVx6WztGQOj7e3Oono/VCrtTBhK1xuV9ZJ4eyatydLXq2h+eaHlFG88YpJzRI8eV3JzR
	jrBvGdUXUgYTyh8EyUyrH9mb7Dw2a5Bjpuxalbg2Bn685KSFJY3Z5gVNjA3GGmGWIgZm
	L9nQ==
X-Gm-Message-State: AMke39kpdf+Kh6k1hBrWgj11LgLsutlKdyAF2wYAr+N8+k6PoDbeJq0TT94P7EkdpGR4m4O16Y0uqxMt5OVNsg==
X-Received: by 10.157.32.69 with SMTP id n63mr8575051ota.259.1486864611094;
	Sat, 11 Feb 2017 17:56:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.5.8 with HTTP; Sat, 11 Feb 2017 17:56:30 -0800 (PST)
In-Reply-To: <CAF3SDA7qoMq=ejqR9QCx7xCFk9kFg9MkJ6Lph4JUGQ0rrNj0WA@mail.gmail.com>
References: <CAF3SDA7qoMq=ejqR9QCx7xCFk9kFg9MkJ6Lph4JUGQ0rrNj0WA@mail.gmail.com>
From: Christopher Larson <kergoth@gmail.com>
Date: Sat, 11 Feb 2017 18:56:30 -0700
Message-ID: <CABcZANkuZSjY2cPJieu0wKkiLJmopNjK3L6dZ-0fxe1VwZKZPw@mail.gmail.com>
To: "Daniel." <danielhilst@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to make a recipe MACHINE specific?
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
X-List-Received-Date: Sun, 12 Feb 2017 01:56:59 -0000
Content-Type: multipart/alternative; boundary=001a113b0444f9382805484ba435

--001a113b0444f9382805484ba435
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 11, 2017 at 6:47 PM, Daniel. <danielhilst@gmail.com> wrote:

> I have two machines and a recipe that uses MACHINE value to decide, at
> compilation time, proper code to be used. The package (.rpm in my
> case) ends up at tmp/deploy/rpm/cortex-arm-v6-hf-... folder.
>
> I see at my tmp/deploy/rpm/ folder both of my machines folders aside
> of cortex-arm-v6-hf-... folder. How can I make the package goes to the
> specific machine that was used in build instead of the cortex-arm-...
> one?
>

PACKAGE_ARCH =3D =E2=80=9C${MACHINE_ARCH}=E2=80=9D
--=20
Christopher Larson
kergoth at gmail dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Senior Software Engineer, Mentor Graphics

--001a113b0444f9382805484ba435
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Sat, Feb 11, 2017 at 6:47 PM, Daniel. <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:danielhilst@gmail.com" target=3D"_blank">danielhilst@gmail.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":p5" class=3D"=
a3s aXjCH m15a30022b260aa10">I have two machines and a recipe that uses MAC=
HINE value to decide, at<br>
compilation time, proper code to be used. The package (.rpm in my<br>
case) ends up at tmp/deploy/rpm/cortex-arm-v6-<wbr>hf-... folder.<br>
<br>
I see at my tmp/deploy/rpm/ folder both of my machines folders aside<br>
of cortex-arm-v6-hf-... folder. How can I make the package goes to the<br>
specific machine that was used in build instead of the cortex-arm-...<br>
one?<br></div></blockquote></div><div class=3D"gmail_extra"><br></div>PACKA=
GE_ARCH =3D =E2=80=9C${MACHINE_ARCH}=E2=80=9D<br>-- <br><div class=3D"gmail=
_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div d=
ir=3D"ltr">Christopher Larson<br>kergoth at gmail dot com<br>Founder - BitB=
ake, OpenEmbedded, OpenZaurus<br>Senior Software Engineer, Mentor Graphics<=
/div></div></div></div>
</div></div>

--001a113b0444f9382805484ba435--
