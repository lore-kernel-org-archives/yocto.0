Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC02BE00ED4; Tue,  6 Mar 2018 04:28:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9EBFE00E44
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 04:28:26 -0800 (PST)
Received: by mail-it0-f53.google.com with SMTP id k79so14535255ita.2
	for <yocto@yoctoproject.org>; Tue, 06 Mar 2018 04:28:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8SNk37ArD1KlAJM0Oz8WnumMQx4IUND+07JasAw7sE0=;
	b=Q20Ks6XByKl22Poz2BM80t26kjcXn1Zppz7rLRKUAyUnC9tEdi/CZY8119sUIn50nH
	GYtnuT4Wjc8z0uqbYZI140qYOi8B5neO+n8sYRXt/9yL9NwlzTaFA+aUz9xW0ebNoDzY
	QZ5cD0cCqU8TKpe52eWCUMToudXkSRSDJrcSdX4KE0TLFCj3sdvRKIdFr+OhRXBFJ95p
	6cTta4fReKXCjl7JlswFaAWjJHYvZvkN1EmWn9RQy0fz8uNY6svYi5vUAEe+yoP5gD5m
	o3Q/FPu3ecezZAKfE3unpMxK2u66AwhjCl8Ebzlhnd41YIoikK9/BPW0pdFo2j6xNTO6
	pvOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8SNk37ArD1KlAJM0Oz8WnumMQx4IUND+07JasAw7sE0=;
	b=FwHNO2uGXSmkK0vXiUptHEV/o0QQKV4Ug3Bp8gMz3TJPHXIoNNDMmFx+RLlkVo/Evw
	SEuKsVc9dSpGBOJXk4pDIqopNZqantUUJ7LSiVuzEcpCYlA75GKI+qBAVXE9XMEuwyYy
	hNpqZGQxKMKRVrutaz5OwHvAd8CuGUs1bbqA/iubijNlH3uXd6xCLOlTqAxA8EV4tvXW
	LvGN+Nb9zeFFqdYOqv5p11EkFP0NhW0wsi1ObE9ZRNUKXkG2mDlfKREv6c02O1SJZq99
	0IJ04lq7tBohhxy51ntXsu0FBHW4xczdlV//A5Ybymj4k0YIG5mNFP1v+1oFeL1G1Xb/
	AuqA==
X-Gm-Message-State: AElRT7HDH08/b4HNOe5defs3bYenC9G/JpfP68jJqGFCTIey7SBYlK7r
	eCqLK6me1P6bqag7x7ZY1gBHrHBVBtDTIRhIYxhpBAjQ
X-Google-Smtp-Source: AG47ELu2DHFuShesDOTjg+8RjwKq1AAgn97eMTr5iXb9Ncad0zvxQpMerbDkUIdIIQbFaYOEvC09MsGiFmgmyMfCdgQ=
X-Received: by 10.36.36.144 with SMTP id f138mr17213918ita.131.1520339305924; 
	Tue, 06 Mar 2018 04:28:25 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Tue, 6 Mar 2018 04:28:05 -0800 (PST)
In-Reply-To: <VI1P192MB014378FB73375D22C8AFE5838DD90@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
References: <VI1P192MB0143C3B885E5344B5BEB65308DDA0@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
	<VI1P192MB014378FB73375D22C8AFE5838DD90@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 6 Mar 2018 12:28:05 +0000
Message-ID: <CAJTo0Lbg0UcoBeKRTC-xoSQ+StVsnzt4FaZTBOqOB1+1mc7BCg@mail.gmail.com>
To: Vincent Daanen <vincent.daanen@orthotaxy.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bbappend file not used
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
X-List-Received-Date: Tue, 06 Mar 2018 12:28:33 -0000
Content-Type: multipart/alternative; boundary="001a1147cd3044f6b10566bd94fb"

--001a1147cd3044f6b10566bd94fb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Does your layer.conf tell bitbake to read bbappends?  Should be something
like:

BBFILES +=3D "${LAYERDIR}/recipes-*/*/*.bb \
            ${LAYERDIR}/recipes-*/*/*.bbappend"

Ross

On 6 March 2018 at 12:07, Vincent Daanen <vincent.daanen@orthotaxy.com>
wrote:

> Dears,
>
>
>
> I want to build an image using systemd and system-networkd as network
> manager and set static ip address to eth0.
>
>
>
> To do so, I use a bbappend file to systemd.
>
>
>
> The problem is that the systemd_%.bbappend file does not appear when
> calling bitbake-layers show-appends. I=E2=80=99m quite sure it is not pro=
cessed
> because when a voluntary add a typo, it does not break the bitbake proces=
s.
>
>
>
> What did I do wrong ??
>
>
>
> Below is my =E2=80=9Cfiles architecture=E2=80=9D:
>
> Yocto
>
>  |-- Sources (Rocko 2.4.1)
>
>   |-- myDir
>
>         |-- build
>
>               |-- conf
>
>                          Local.conf
>
>         |-- meta-myLayer
>
>               |-- conf
>
>               |-- recipes-core
>
>                     |-- images
>
>                           my-image.bb
>
>                     |-- systemd
>
>                           systemd_%.bbappend
>
>                           |-- system
>
>                                 eth.network
>
>
>
> The target is a generic x86_64 board (AAEON GENE BT 05 with J1900
> processor).
>
> Host system is ubuntu 16.04 LTS
>
>
>
>
>
>
>
> Thanks
>
>
>
> Vince
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a1147cd3044f6b10566bd94fb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Does your layer.conf tell bitbake to read bbappends?=C2=A0=
 Should be something like:<div><div><br></div><div><div>BBFILES +=3D &quot;=
${LAYERDIR}/recipes-*/*/*.bb \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 ${LAYERDIR}/recipes-*/*/*.bbappend&quot;</div></div><div><br></div>=
<div>Ross</div></div></div><div class=3D"gmail_extra"><br><div class=3D"gma=
il_quote">On 6 March 2018 at 12:07, Vincent Daanen <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:vincent.daanen@orthotaxy.com" target=3D"_blank">vincent.daa=
nen@orthotaxy.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-GB" link=3D"blue" vlink=3D"purple">
<div class=3D"m_5944530671759123039WordSection1">
<p class=3D"MsoNormal">Dears,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I want to build an image using systemd and system-ne=
tworkd as network manager and set static ip address to eth0.<u></u><u></u><=
/p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">To do so, I use a bbappend file to systemd.<u></u><u=
></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">The problem is that the systemd_%.bbappend file does=
 not appear when calling bitbake-layers show-appends. I=E2=80=99m quite sur=
e it is not processed because when a voluntary add a typo, it does not brea=
k the bitbake process.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">What did I do wrong ??<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Below is my =E2=80=9Cfiles architecture=E2=80=9D:<u>=
</u><u></u></p>
<p class=3D"MsoNormal">Yocto<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0|-- Sources (Rocko 2.4.1)<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0 |-- myDir<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0|-- build=
<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0|-- conf<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>Local.conf<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0|-- meta-=
myLayer <u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|-- conf<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0|-- recipes-core<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |-- images<=
u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 <a href=3D"http://my-image.bb" target=3D"_blank">m=
y-image.bb</a><u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |-- systemd=
<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0systemd_%.bbappend<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0|-- system<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0 eth.netwo=
rk<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">The target is a generic x86_64 board (AAEON GENE BT =
05 with J1900 processor).<u></u><u></u></p>
<p class=3D"MsoNormal">Host system is ubuntu 16.04 LTS<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks<span style=3D"font-family:&quot;Arial&quot;,s=
ans-serif;color:#222222;background:white"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"FR">Vince<u></u><u></u></span></p>
</div>
</div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a1147cd3044f6b10566bd94fb--
