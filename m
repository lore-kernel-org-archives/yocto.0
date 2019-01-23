Return-Path: <joao.jfgoncalves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06A22E00C29; Wed, 23 Jan 2019 08:23:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (joao.jfgoncalves[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.182 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-it1-f182.google.com (mail-it1-f182.google.com
	[209.85.166.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71050E00B9D
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 08:23:44 -0800 (PST)
Received: by mail-it1-f182.google.com with SMTP id m62so4160722ith.5
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2019 08:23:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=2UH3nNfG6tMD5LQhQGa3erw6L4wjVa1uEd5kJDQIxGU=;
	b=suvnMZv3UYLEQqjhF6iJSEhFh/NXN8tu36UhVN8PZM2le5srxxZkykS4A2rem1VvKp
	r+OY2H6ESfstUh1nDiQ/x8K7DJcZ0r3EIjoWUcevvr1MwmUXGigoTWjUY7xdGQVGPLEj
	Zd+T8+oWAQLnFSzNuTa+6b3WvxmgoNCfS1L4ZtHX6oPw2wsi2PCoDGA8dayhCFT9Jt8C
	zakBmooEpO0x0JDq4QppKDFRx88VT7mZO71Uem8234hKiMNz0jXvYyhZUB7QjMkQDQjO
	bEIpHll2aS5lP+uZYan9iKBXIUuRIwV31t0vYd5dAMeCP0MiNFCTMjFARr7Of2ZM6ZNG
	ejhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=2UH3nNfG6tMD5LQhQGa3erw6L4wjVa1uEd5kJDQIxGU=;
	b=fraWe7wBzWWO+dLYsJbuSsAgMrpfp7WMYofdam6IYJkfp2GLxws/MwDBywy+dfNXlE
	ZSn7hu8bd0iI3momMuGSD9ZKDgvQvQHGC5Xi/i5510lJIUOUo9DfGnLtkknAcT1GgDAL
	MuZGVd+LXdkrBMBWQ2kRlcIN6xH9MqRH+Phhy6Ty97sREOkuz1IvXDxv2RT6XDl/nm6F
	CpViVztDVDrJjbBWiV3f4G7MF18AM52R39P9mmbWvenAlPUcKo0ir24vsQU9OuDg5c6d
	lKR3Nsz6Ej5QpgKCBqNXvz28+yS9Zq9zQ/vhShc+XAr06bKCn+OTNu4MkMigb6KkkHia
	L/Vw==
X-Gm-Message-State: AJcUukeeMEI4CxwbcEBPb15y4O0Tsq5ByXupMNdxAinz/Ohfgs6YO/Vi
	BOQtdttlklFyDalvlcDpT9KlFzSVG3eIggk6FIixMajO
X-Google-Smtp-Source: ALg8bN7dtvhjdQ/BgE9Ogd4LPl2L6fsZtD0P0BtLYsGP0p3NDGe/dWdbNSF+9TEA57Qy/1Yzp0ofZPXIbXFHrnnX2a4=
X-Received: by 2002:a24:d6:: with SMTP id 205mr1671446ita.99.1548260623593;
	Wed, 23 Jan 2019 08:23:43 -0800 (PST)
MIME-Version: 1.0
References: <CAHXEV+=d3fQNxNUSAMUxzkeK4UbrWQxT6qJKf6DTXUmxQSWggA@mail.gmail.com>
In-Reply-To: <CAHXEV+=d3fQNxNUSAMUxzkeK4UbrWQxT6qJKf6DTXUmxQSWggA@mail.gmail.com>
From: =?UTF-8?B?Sm/Do28gR29uw6dhbHZlcw==?= <joao.jfgoncalves@gmail.com>
Date: Wed, 23 Jan 2019 16:23:32 +0000
Message-ID: <CAHXEV+=tu-iM7DLbSwo4+o_0-SpAqUZgXfHB_Dd0MG_LfgTs-Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Error: file provided by multiple packages
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
X-List-Received-Date: Wed, 23 Jan 2019 16:23:45 -0000
Content-Type: multipart/alternative; boundary="0000000000007d390805802284ad"

--0000000000007d390805802284ad
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I just found that one systemd append recipe was installed the conflict file=
.
Fixed.

Jo=C3=A3o Gon=C3=A7alves <joao.jfgoncalves@gmail.com> escreveu no dia ter=
=C3=A7a,
22/01/2019 =C3=A0(s) 22:11:

> I'm using master branch or embedded core to build a most recent toolchain
> with gcc 8.2 (I previously had 7.3 but it didn't provide the libstdc++fs
> that I needed).
>
> I almost made this build work but now I'm having the following error on m=
y
> image do_rootfs:
>
> Package systemd wants to install file
> /home/joao/master_imx6/build/tmp-glibc/work/thomson_apalis_imx6-angstrom-=
linux-gnueabi/kelvin-base-image/0.2.4-r0/thomson-apalis-imx6_kelvin-base-im=
age_2.8.5/rootfs/etc/systemd/journald.conf
> But that file is already provided by package  * systemd-conf
>
> Then I checked that systemd_239.bb do_install() remove installed conf
> files that should be handled by systemd-conf.
> What I suppose is that systemd-conf do_install() is executed first and
> then systemd do_install() eventually breaks when installs the file (befor=
e
> removing it).
>
> Does anyone know if is possible to specify the install order? or if this
> is really the problem
>
> Thanks,
> Joao Goncalves
>
>
>
>
>

--0000000000007d390805802284ad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I just found that one systemd=C2=A0append recipe was insta=
lled the conflict=C2=A0file.<div>Fixed.</div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">Jo=C3=A3o Gon=C3=A7alves &lt;<=
a href=3D"mailto:joao.jfgoncalves@gmail.com">joao.jfgoncalves@gmail.com</a>=
&gt; escreveu no dia ter=C3=A7a, 22/01/2019 =C3=A0(s) 22:11:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"l=
tr">I&#39;m using master branch or embedded core to build a most recent too=
lchain with gcc=C2=A08.2 (I previously had 7.3 but it didn&#39;t provide th=
e libstdc++fs that I needed).<div><br></div><div>I almost made this build w=
ork but now I&#39;m having the following error on my image do_rootfs:</div>=
<div><br></div><div><div>Package systemd wants to install file /home/joao/m=
aster_imx6/build/tmp-glibc/work/thomson_apalis_imx6-angstrom-linux-gnueabi/=
kelvin-base-image/0.2.4-r0/thomson-apalis-imx6_kelvin-base-image_2.8.5/root=
fs/etc/systemd/journald.conf</div><div><span style=3D"white-space:pre-wrap"=
>	</span>But that file is already provided by package=C2=A0 * systemd-conf<=
/div></div><div><br></div><div>Then I checked that <a href=3D"http://system=
d_239.bb" target=3D"_blank">systemd_239.bb</a> do_install() remove installe=
d conf files that should be handled by systemd-conf.</div><div>What I suppo=
se=C2=A0is that systemd-conf do_install() is executed first and then system=
d=C2=A0do_install() eventually breaks when installs the file (before removi=
ng it).</div><div><br></div><div>Does anyone know if is possible to specify=
 the install order? or if this is really the problem</div><div><br></div><d=
iv>Thanks,</div><div>Joao Goncalves</div><div><br></div><div><br></div><div=
><br></div><div><br></div></div></div>
</blockquote></div>

--0000000000007d390805802284ad--
