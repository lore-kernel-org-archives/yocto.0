Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-vc0-f171.google.com (mail-vc0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D51F3E00991
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 07:47:15 -0800 (PST)
Received: by mail-vc0-f171.google.com with SMTP id le5so1229701vcb.30
	for <yocto@yoctoproject.org>; Wed, 05 Mar 2014 07:47:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=YUbKaNXs2ccELoUAIve9Azkg0ORPh1n2HLT7UBGb4o8=;
	b=DfpCfP3TCLvtDtUIc2V0o3ppt1yLkFVg9A0ANN2XiD+lxOh/R6eF9NY+PC+d8U4nZO
	Km4a1TYNVRr4OPXJy9cvhwY/6Fqo0Ge+KzNi2YWq1O3FktQ52ZchYdyNPN3dUq6BEul3
	WleC2jxquwGz8Io6YS/xKK5qf5zOxiB6bRpy15uNvZ8PKXJQXiyKQYMTEqeg0HhSLxel
	UHzTAIqVwW1GrZtNPjNhWoMHoDrz06Xf5abDb44ocT4TrKJcl9akPX6WyPNSfIWnGZqf
	g5GmY5KGfz20SOsyZAP0cwMR5t9O2y6mKgvDAYAOjlXVjn8aPQ29+lscMIJBi561w6dh
	xxkw==
MIME-Version: 1.0
X-Received: by 10.221.26.10 with SMTP id rk10mr613963vcb.0.1394034434612; Wed,
	05 Mar 2014 07:47:14 -0800 (PST)
Received: by 10.220.96.66 with HTTP; Wed, 5 Mar 2014 07:47:14 -0800 (PST)
In-Reply-To: <CABcZANnoOxT2x1ZQ_wbmJrjuWMbZOCYOA7U2qfygES09qkd7MQ@mail.gmail.com>
References: <CAA7h+EreYR9drptegiSJmnk9b3asLHdemDNLyPeSF4pyUE9ukw@mail.gmail.com>
	<CABcZANnoOxT2x1ZQ_wbmJrjuWMbZOCYOA7U2qfygES09qkd7MQ@mail.gmail.com>
Date: Wed, 5 Mar 2014 08:47:14 -0700
Message-ID: <CAA7h+Eo4YT9Wq9sG827u1sX23eE5asfzv3kEkQ_5d+7B-cMTWA@mail.gmail.com>
From: Rick Bianchi <bianchirickkutta@gmail.com>
To: Chris Larson <clarson@kergoth.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 05 Mar 2014 15:47:16 -0000
Content-Type: multipart/alternative; boundary=001a11339ae447a4d004f3ddef2b

--001a11339ae447a4d004f3ddef2b
Content-Type: text/plain; charset=ISO-8859-1

Chris,
Can I just add the dev-pkgs to my local.conf?


On Wed, Mar 5, 2014 at 8:31 AM, Chris Larson <clarson@kergoth.com> wrote:

>
> On Wed, Mar 5, 2014 at 8:29 AM, Rick Bianchi <bianchirickkutta@gmail.com>wrote:
>
>> I have add IMAGE_INSTALL_append =" glib-2.0" to my local.conf and compile
>> the image on the host without any issues.
>>
>> When I try to compile on the target I get the following error:
>>
>> checking pkg-config is at least version 0.9.0... yes
>> checking for PACKAGE... no
>> configure: error: Package requirements (glib-2.0 >= 2.6.0) were not met:
>>
>> No package 'glib-2.0' found
>>
>
> You did install the development files, either with the dev-pkgs image
> feature, or by directly installing them (glib-2.0-dev, .)? Our packaging is
> quite granular, so the 'glib-2.0' package won't provide development files,
> just the files necessary to run software using glib.
> --
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics
>

--001a11339ae447a4d004f3ddef2b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Chris,<div style>Can I just add the dev-pkgs to my local.c=
onf?</div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quot=
e">On Wed, Mar 5, 2014 at 8:31 AM, Chris Larson <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:clarson@kergoth.com" target=3D"_blank">clarson@kergoth.com</a>=
&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D""><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Mar 5, 2014 at 8:29=
 AM, Rick Bianchi <span dir=3D"ltr">&lt;<a href=3D"mailto:bianchirickkutta@=
gmail.com" target=3D"_blank">bianchirickkutta@gmail.com</a>&gt;</span> wrot=
e:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">I have add=A0IMAGE_INSTALL_=
append =3D&quot; glib-2.0&quot; to my local.conf and compile the image on t=
he host without any issues.=A0<div>


<br></div><div>When I try to compile on the target I get the following erro=
r:</div>
<div><br></div><div><div>checking pkg-config is at least version 0.9.0... y=
es</div><div>checking for PACKAGE... no</div><div>configure: error: Package=
 requirements (glib-2.0 &gt;=3D 2.6.0) were not met:</div><div>
<br></div><div>No package &#39;glib-2.0&#39; found</div></div></div></block=
quote></div><br></div></div><div class=3D"gmail_extra">You did install the =
development files, either with the dev-pkgs image feature, or by directly i=
nstalling them (glib-2.0-dev, .)? Our packaging is quite granular, so the &=
#39;glib-2.0&#39; package won&#39;t provide development files, just the fil=
es necessary to run software using glib.<span class=3D"HOEnZb"><font color=
=3D"#888888"><br>


-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</font></span></div></div>
</blockquote></div><br></div>

--001a11339ae447a4d004f3ddef2b--
