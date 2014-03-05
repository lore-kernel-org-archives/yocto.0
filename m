Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f182.google.com (mail-lb0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0C0BE0081F
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 07:32:07 -0800 (PST)
Received: by mail-lb0-f182.google.com with SMTP id n15so823940lbi.27
	for <yocto@yoctoproject.org>; Wed, 05 Mar 2014 07:32:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=5EB9RllL3L6GIIi/TOCvQmKkCPVlF1p4RYpEeP/njOY=;
	b=DETpBUDrSLl7aG18pPeAG9/0hU6enpD0I0/LP007bpopCjvfrwNGxytbwwzYk7IvY5
	HMK77FSxdxxo4oepg04EMf9DUUefSL+4dQn3QSoH3kFlksnWjsCbKhJrEXVpQcKHXtXG
	NJofuy2BIU9QZCMcJasu9afuiacROkG3KmOTheOwpQegh2BtipnOi2C3wdZHvjEDUnht
	eTQ8V3xMFah88/vkkZZfWKGp0I9BKW2rjAmTRdKhZgdvg/JDOPBpiiYg8pJLMJ77HKD0
	3QHhxQqAXNr7zmawWW21ZLGx/Avc0DiV9xzcB5lR28GUr77J1F3oWaWNSiLGagVyavru
	a1MQ==
X-Received: by 10.112.137.137 with SMTP id qi9mr2523685lbb.36.1394033525309;
	Wed, 05 Mar 2014 07:32:05 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.35.200 with HTTP; Wed, 5 Mar 2014 07:31:45 -0800 (PST)
In-Reply-To: <CAA7h+EreYR9drptegiSJmnk9b3asLHdemDNLyPeSF4pyUE9ukw@mail.gmail.com>
References: <CAA7h+EreYR9drptegiSJmnk9b3asLHdemDNLyPeSF4pyUE9ukw@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 5 Mar 2014 08:31:45 -0700
X-Google-Sender-Auth: 0CDeloHDMYLPTFkFSrBAymdyksY
Message-ID: <CABcZANnoOxT2x1ZQ_wbmJrjuWMbZOCYOA7U2qfygES09qkd7MQ@mail.gmail.com>
To: Rick Bianchi <bianchirickkutta@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: GLIB-2.0 target compile issue
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
X-List-Received-Date: Wed, 05 Mar 2014 15:32:08 -0000
Content-Type: multipart/alternative; boundary=089e012287b814c47504f3ddb9ae

--089e012287b814c47504f3ddb9ae
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 5, 2014 at 8:29 AM, Rick Bianchi <bianchirickkutta@gmail.com>wrote:

> I have add IMAGE_INSTALL_append =" glib-2.0" to my local.conf and compile
> the image on the host without any issues.
>
> When I try to compile on the target I get the following error:
>
> checking pkg-config is at least version 0.9.0... yes
> checking for PACKAGE... no
> configure: error: Package requirements (glib-2.0 >= 2.6.0) were not met:
>
> No package 'glib-2.0' found
>

You did install the development files, either with the dev-pkgs image
feature, or by directly installing them (glib-2.0-dev, .)? Our packaging is
quite granular, so the 'glib-2.0' package won't provide development files,
just the files necessary to run software using glib.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--089e012287b814c47504f3ddb9ae
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Wed, Mar 5, 2014 at 8:29 AM, Rick Bianchi <span dir=3D"ltr">&lt;<a href=
=3D"mailto:bianchirickkutta@gmail.com" target=3D"_blank">bianchirickkutta@g=
mail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">I have add=C2=A0IMAGE_INSTA=
LL_append =3D&quot; glib-2.0&quot; to my local.conf and compile the image o=
n the host without any issues.=C2=A0<div>

<br></div><div>When I try to compile on the target I get the following erro=
r:</div>
<div><br></div><div><div>checking pkg-config is at least version 0.9.0... y=
es</div><div>checking for PACKAGE... no</div><div>configure: error: Package=
 requirements (glib-2.0 &gt;=3D 2.6.0) were not met:</div><div>
<br></div><div>No package &#39;glib-2.0&#39; found</div></div></div></block=
quote></div><br></div><div class=3D"gmail_extra">You did install the develo=
pment files, either with the dev-pkgs image feature, or by directly install=
ing them (glib-2.0-dev, .)? Our packaging is quite granular, so the &#39;gl=
ib-2.0&#39; package won&#39;t provide development files, just the files nec=
essary to run software using glib.<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--089e012287b814c47504f3ddb9ae--
