Return-Path: <winotu.email@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7105E00D11; Wed, 15 Jun 2016 12:21:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (winotu.email[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f41.google.com (mail-vk0-f41.google.com
	[209.85.213.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58FA9E00D0E
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 12:21:20 -0700 (PDT)
Received: by mail-vk0-f41.google.com with SMTP id j2so43464915vkg.2
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 12:21:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=PjUwcQ8YbhREJAbCl6LLPQ4Pd7UlPgTQjdu2FfGPVb8=;
	b=TzIFw3G3sPJUmBQBD0/WbWRa04+an1jd05NBWfexRiQNDsHgj4do1gp7ixxkEAUrjy
	Tp1+gVwKQOVbWK/4EyZzNTF/yJNCcX3saJxw3tNuBm4+nSMOIO4rUZ1ssZWSeMQrWq+a
	cBLT9owP5z+8K/GOkCXvgIqFKdsS1ZqhvWPmoky1KJAjgDEflYjyjtm06+jrTe2Hjar0
	pvTN43jqkFi32P+chpLHRFg45yf1+M918Yc4Graew8gw3m4gsRAHJKWleFyPW/oh5v2E
	0C71powbZMCqupfXIsrbo32JlwpsUWeLorzQpVBLgyha/g4i/tp/XCJAa7TieX/GSrYV
	sa+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=PjUwcQ8YbhREJAbCl6LLPQ4Pd7UlPgTQjdu2FfGPVb8=;
	b=YDlcqZ7Q1GHL/4wnrWEPlL8Xk6W8lX/EKSVumUhPaKAjNluR417a+Kerx0SHmCz5Hq
	fSXn2rYcU0Ae3IFNJDj5eSYdFkL1vaDSnJS8c1wiwYxIS9c6wpbVMWhLy/HcvwVd+Yup
	hvKdjkzruG3aQh8q5FBEAp5WX+YGkrWX9pkuzx56h5UWuSihEokCRJ4SdaaCM80ipAzz
	DxyCeH1WefyP9dlO60ihotUA7qRYhaAHcswmEhCLxS1r60GTzlDJRBV1C17SpYQ/Vo8e
	jhIobiHaUDJr7syK5IveF2TdclwRLGo3AN2qUC53XPHJe1TkzTCEa1MX1ncqZDFijBkA
	ImUw==
X-Gm-Message-State: ALyK8tKqXGaCtzrTCCRTIcMHE/UPcanU4Pw/d1PeDp0MMaVsOEYiGtsOu1CFe1irYdOsySl6hnblxClfwEFA3g==
X-Received: by 10.31.64.76 with SMTP id n73mr189920vka.42.1466018479221; Wed,
	15 Jun 2016 12:21:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.55.171 with HTTP; Wed, 15 Jun 2016 12:21:18 -0700 (PDT)
In-Reply-To: <57616B51.7070001@nokia.com>
References: <57616B51.7070001@nokia.com>
From: "Chris Z." <winotu.email@gmail.com>
Date: Wed, 15 Jun 2016 21:21:18 +0200
Message-ID: <CAEjjReKap3QniWcA_+_DQhoLn_wnRugBZZZL448yvkE0HGogWg@mail.gmail.com>
To: "Woronicz, Bartosz ( NSN - PL/Wroclaw)" <bartosz.woronicz@nokia.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Additional layers with class and conf
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
X-List-Received-Date: Wed, 15 Jun 2016 19:21:22 -0000
Content-Type: multipart/alternative; boundary=001a1143c934b032af05355606d8

--001a1143c934b032af05355606d8
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

HI,

Have you checked full output of -e bitbake run ? Were INHERIT variable is
resolved ? To check if *.conf file was checked ? Maybe some confs change
INHERIT variables during parsing.

Br,
KZ


On Wed, Jun 15, 2016 at 4:50 PM, Woronicz, Bartosz ( NSN - PL/Wroclaw) <
bartosz.woronicz@nokia.com> wrote:

> I got two layers, meta-x and meta-y , meta-x got meta-y in bblayers.conf.
>  in meta-y contains conf/layer.conf with BBPATH .=3D ":${LAYERDIR}", plus
> classes/my.bbclass plus local.conf containing INHERIT +=3D "my"
> when I ran bitbake -e my-image, the INHERIT doesn't seem to contain "my"
>
> When I put it directly in layer.conf it works, but what to add to
> layer.conf to make bitbake to look for other *.conf files in meta-y/conf/=
 ??
>
> My bblayers.conf.sample is modified in meta-x (the project meta), which i=
s
> copied over to $BUILDDIR when i run oe-init-build-env ,
> here is meta-y/conf/layer.conf  :  http://pastebin.com/mhxe9K5C
>
> when I ran
> bitbake -e my-image
> i see
>
> BBPATH=3D"/var/fpwork/mastier/myproject/poky/meta-yocto:/var/fpwork/masti=
er/myproject/mymachine:/var/fpwork/mastier/myproject/poky/meta:/var/fpwork/=
mastier/myproject/poky/meta-yocto-bsp:/var/fpwork/mastier/myproject/meta-x:=
/var/fpwork/mastier/myproject/meta-y"
>
> where "mymachine" is my BUILDDIR
>
> --
> Kind regards,
> Bartosz Woronicz
> Engineer, Software Configuration (SCM)
> Nokia Networks - PL/Wroclaw
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1143c934b032af05355606d8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>HI,<br><br></div>Have you checked full outp=
ut of -e bitbake run ? Were INHERIT variable is resolved ? To check if *.co=
nf file was checked ? Maybe some confs change INHERIT variables during pars=
ing.<br><br></div>Br,<br></div>KZ<br><br></div><div class=3D"gmail_extra"><=
br><div class=3D"gmail_quote">On Wed, Jun 15, 2016 at 4:50 PM, Woronicz, Ba=
rtosz ( NSN - PL/Wroclaw) <span dir=3D"ltr">&lt;<a href=3D"mailto:bartosz.w=
oronicz@nokia.com" target=3D"_blank">bartosz.woronicz@nokia.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">I got two layers, meta-x and m=
eta-y , meta-x got meta-y in bblayers.conf.=C2=A0 =C2=A0in meta-y contains =
conf/layer.conf with BBPATH .=3D &quot;:${LAYERDIR}&quot;, plus classes/my.=
bbclass plus local.conf containing INHERIT +=3D &quot;my&quot;<br>
when I ran bitbake -e my-image, the INHERIT doesn&#39;t seem to contain &qu=
ot;my&quot;<br>
<br>
When I put it directly in layer.conf it works, but what to add to layer.con=
f to make bitbake to look for other *.conf files in meta-y/conf/ ??<br>
<br>
My bblayers.conf.sample is modified in meta-x (the project meta), which is =
copied over to $BUILDDIR when i run oe-init-build-env ,<br>
here is meta-y/conf/layer.conf=C2=A0 :=C2=A0 <a href=3D"http://pastebin.com=
/mhxe9K5C" rel=3D"noreferrer" target=3D"_blank">http://pastebin.com/mhxe9K5=
C</a><br>
<br>
when I ran<br>
bitbake -e my-image<br>
i see<br>
BBPATH=3D&quot;/var/fpwork/mastier/myproject/poky/meta-yocto:/var/fpwork/ma=
stier/myproject/mymachine:/var/fpwork/mastier/myproject/poky/meta:/var/fpwo=
rk/mastier/myproject/poky/meta-yocto-bsp:/var/fpwork/mastier/myproject/meta=
-x:/var/fpwork/mastier/myproject/meta-y&quot;<br>
<br>
where &quot;mymachine&quot; is my BUILDDIR<span class=3D"HOEnZb"><font colo=
r=3D"#888888"><br>
<br>
-- <br>
Kind regards,<br>
Bartosz Woronicz<br>
Engineer, Software Configuration (SCM)<br>
Nokia Networks - PL/Wroclaw<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--001a1143c934b032af05355606d8--
