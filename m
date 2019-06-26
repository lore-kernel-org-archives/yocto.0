Return-Path: <pierrelucbuhler@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00B1FE00D75; Wed, 26 Jun 2019 11:21:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (pierrelucbuhler[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B082FE00B65
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2019 11:21:38 -0700 (PDT)
Received: by mail-wm1-f41.google.com with SMTP id f17so3051719wme.2
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2019 11:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=uMcUa5huk7UfLs0eeW/kTO/vwM50WMBGezo056fcEOk=;
	b=d5+fG3c0QxaL/wugH7/OFsyo5sDuEdzxNGRXsylNem17ZnsGiPiqssNXAXjG7Kj3HF
	GImtbiFQqjJX2nsPPJe74ugE41Zp79aAENB3mWVgl/tvi7g/L1aT8hCGTtCWzPq3VRJ1
	nKdxzh5TSTkqnOPoh3UacB+MxqaXx/K/eXkpjjXYowtNZ6v2+x5G0ZBR50ifZo4rVIj2
	z+rH2GYN9a1QMQb1nc6sMY5rZ8IzELyUBjNk1Z5LLhW4pyFwTk2ax8mcHBzzyz8gXOSe
	5q5BBN4jE6J+82zbEM3/4y+PusXCEAM+bsiUOqJ5FnAQjEuPN5IK9KVkUQLOw1lM3KhU
	l2+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=uMcUa5huk7UfLs0eeW/kTO/vwM50WMBGezo056fcEOk=;
	b=UzqrC3PNMMW0U+mkyWZt/z8ORkDRVzV6xmucGqQo2B3jyrulVJxcfR10n55YJRkwSh
	5zzgkErsZoEiHUpiP6RnfTXuHDWBFfwcYPXxzDVk7LzLouX7wxYIG0fhM0cKqDhoZzNy
	kAREzQY1m4+GV7b4IXDAEvRGMcjMWpBFA2HilVNQisJ6nkxvZAafFaMNFvFxN9JJ6g7M
	3fuRS7vY3IsEV5gGLfdc2uKsVHU/f5Z463xmbGR8TAewQLEotBz/QDVU10MLWP0wvsWS
	HWG7LcsdJusb0gGIAcMykRmwnET/IsDNCKmYNHgeOFvG/D3zChlrx4LKx0LTflLjh+K6
	5XLg==
X-Gm-Message-State: APjAAAVaTG94ExxPnUm2mQUhuSKXUKyP2tb1ZIRuF3yPqhYVohg/qw/Y
	bOrWCoyfMa6jXxs9nqZYtwKAEheKDHpGakSlM5Y=
X-Google-Smtp-Source: APXvYqyylNFiajwgkhAOHT06/cWsWqzSK24XrfygTxvv+m8fso/+ioWr/ZRSr0+BRWCDSE7NP9HazLDyj27PQmLklJk=
X-Received: by 2002:a1c:a848:: with SMTP id r69mr242212wme.12.1561573297675;
	Wed, 26 Jun 2019 11:21:37 -0700 (PDT)
MIME-Version: 1.0
References: <5d111b11.1c69fb81.bbbda.d4fc@mx.google.com>
	<CAJTo0LYm6Zgh3OD2t1ZXHny+cEcTCNO2ujD1S1w6VRv8bpdnOw@mail.gmail.com>
In-Reply-To: <CAJTo0LYm6Zgh3OD2t1ZXHny+cEcTCNO2ujD1S1w6VRv8bpdnOw@mail.gmail.com>
From: Pierre-Luc Buhler <pierrelucbuhler@gmail.com>
Date: Wed, 26 Jun 2019 14:21:28 -0400
Message-ID: <CADNqb7RULJx_V5u0twHxSMK8Gv8QxGrYOkx_PRNLCqR6XCaCAg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Are native packages dependencies listed in license.manifest?
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
X-List-Received-Date: Wed, 26 Jun 2019 18:21:45 -0000
Content-Type: multipart/alternative; boundary="000000000000b2e3ad058c3e1d62"

--000000000000b2e3ad058c3e1d62
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the response.

Have a nice day.

PLB

Le lun. 24 juin 2019, =C3=A0 17 h 49, Burton, Ross <ross.burton@intel.com> =
a
=C3=A9crit :

> The image manifest lists what is being *distributed* so doesn't
> include native dependencies.
>
> Ross
>
> On Mon, 24 Jun 2019 at 19:50, <pierrelucbuhler@gmail.com> wrote:
> >
> > Hi,
> > I=E2=80=99m currently working to remove all GPLv3 packages included in =
my image.
> > I was using the license manifest file to list the remaining GPLv3
> packages to remove.
> > While I was trying to remove gdbm, I ecountered some native dependencie=
s.
> > When I looked at the license.manifest file, gdbm was still listed.
> > So I was asking myself if I still had packages that depends/includes
> gdbm hidden somewhere or it=E2=80=99s because the license.manifest also l=
ist
> packages used on the build host even if they are not included in the imag=
e.
> > For example, if curl-native is used in a recipe will curl be listed in
> license.manifest even if curl is not in the image?
> >
> > So in other words, does license.manifest also includes native packages
> or it only lists the packages that make up the image (included in the
> image)?
> >
> > Thanks for the support,
> >
> > PLB
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000b2e3ad058c3e1d62
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the response.<div><br></div><div>Have a nice da=
y.</div><div><br></div><div>PLB</div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">Le lun. 24 juin 2019, =C3=A0 17 h 49, =
Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com">ross.burton@intel=
.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">The image manifest lists what is being *distributed* so do=
esn&#39;t<br>
include native dependencies.<br>
<br>
Ross<br>
<br>
On Mon, 24 Jun 2019 at 19:50, &lt;<a href=3D"mailto:pierrelucbuhler@gmail.c=
om" target=3D"_blank">pierrelucbuhler@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt; I=E2=80=99m currently working to remove all GPLv3 packages included in=
 my image.<br>
&gt; I was using the license manifest file to list the remaining GPLv3 pack=
ages to remove.<br>
&gt; While I was trying to remove gdbm, I ecountered some native dependenci=
es.<br>
&gt; When I looked at the license.manifest file, gdbm was still listed.<br>
&gt; So I was asking myself if I still had packages that depends/includes g=
dbm hidden somewhere or it=E2=80=99s because the license.manifest also list=
 packages used on the build host even if they are not included in the image=
.<br>
&gt; For example, if curl-native is used in a recipe will curl be listed in=
 license.manifest even if curl is not in the image?<br>
&gt;<br>
&gt; So in other words, does license.manifest also includes native packages=
 or it only lists the packages that make up the image (included in the imag=
e)?<br>
&gt;<br>
&gt; Thanks for the support,<br>
&gt;<br>
&gt; PLB<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>

--000000000000b2e3ad058c3e1d62--
