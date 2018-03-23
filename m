Return-Path: <texier.pj2@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2E88E008D2; Fri, 23 Mar 2018 09:09:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (texier.pj2[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC527E007E1
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 09:09:04 -0700 (PDT)
Received: by mail-wm0-f51.google.com with SMTP id t6so4486254wmt.5
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 09:09:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wkG4zsuHTa6flopZvZ8pAxVyLyd4oDtj3xSaZ4e9v7s=;
	b=FdYtqC4zhhiTowpq79AU8lASoDigXqyRI/73C4/L9rLiwDK+i/ItjIIX6nYVznv6yk
	wUaSujbdw6AjDonUdwlWDKZNzyScwYGOyyS14Sk90VhWPezJM2OI4v59j0DzPPaDnsC7
	gbVpCvQDW1RAaXBolqmmsX/X5d9k1l+qr5ltM90AGVqt2Ig7K/3pfMECXCRYDKsVrPDW
	Qm0cKf8izFeNefCbmjayE9kpPI63trAcUr6AyjKH+rxbOBIsHa/4lVS9GYa3ILPYUK6l
	+MkudW/1k5sLGo9nl+FC7Lz4Ui/XDwid5Mchi7zOxySZtho1at8FKiCuETu+VZ7nMPsT
	v/WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wkG4zsuHTa6flopZvZ8pAxVyLyd4oDtj3xSaZ4e9v7s=;
	b=RKo9fIr7m0AZ4xNmEi6KAolvbqp417WS+YJ8wno1ntL8WYVza4l5ua/6pJdPmL3fRd
	ToLHDZ+/10eMFdx85deHKflkdFSX8MEd2bhcwugtDOiN1RVW69AI2EjDy+7YR1+fkx0x
	yTjEJO9GBMM0XcmVeErlpLXc+nY/g7QEdbJ/71ZGGb5up5VKGvU5GLIs/o5AL/mmNL6X
	56IuNID6LelVb36oo4stP29fIbB/UjTAB38uuM4ygLsAzxn9xRhH6nXvZr99dBetm7ss
	P+vjo1QbOMdZdJ46WHUvcY7qgtnNJJAfNmVY9kpFY63bF4kcD5XPI2anMkIKY5nKFoCP
	JwiA==
X-Gm-Message-State: AElRT7F8EgX8iyXW+J94KAK8Vyq2f/75xhqSHPQrU+DOQG/+IXjMdYr1
	uO6vctyvR06KT8CLrrdwbQRHRZt6Og8aVrKmLDVRtw==
X-Google-Smtp-Source: AG47ELuXzkHxTdqFjhUwa7bw5PwjSLvj1RbSIgwn8aoPgOkapNNqG9mUvTJu21oiDcwxSq2lM4AV2zv/mwInah8eSPc=
X-Received: by 10.80.169.89 with SMTP id m25mr11164668edc.244.1521821343339;
	Fri, 23 Mar 2018 09:09:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.172.226 with HTTP; Fri, 23 Mar 2018 09:09:02 -0700 (PDT)
In-Reply-To: <1490723767.9894976.1521817791424.JavaMail.zimbra@kapelse.com>
References: <mailman.7.1521745201.12814.yocto@yoctoproject.org>
	<1931396871.9886250.1521812366094.JavaMail.zimbra@kapelse.com>
	<CALRtUqvUHaaEf-jOWmFHzotarYtOBrV0ZZf6kS8fgFaCNeM4AQ@mail.gmail.com>
	<1490723767.9894976.1521817791424.JavaMail.zimbra@kapelse.com>
From: TEXIER Pierre-Jean <texier.pj2@gmail.com>
Date: Fri, 23 Mar 2018 17:09:02 +0100
Message-ID: <CALRtUqvLtvCVB_U06qU+7D-4-gZqOV5xFfGmUc2cm15OvQ_1ww@mail.gmail.com>
To: Laurent JOLI <laurent.joli@kapelse.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Add lib to meta-qt5
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
X-List-Received-Date: Fri, 23 Mar 2018 16:09:06 -0000
Content-Type: multipart/alternative; boundary="94eb2c0de31c94d904056816a4bd"

--94eb2c0de31c94d904056816a4bd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Laurent,

Have you tried to install the SDK ? if not, runnning the following command:

$: ./pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-toolchain-1.0.sh

And follow the steps to install the SDK, and then go to
<install_path>/poky/sysroots/<your target architecture>/usr/lib

And you'll be able to find libQt5Declarative library.

---
Pierre-Jean

2018-03-23 16:09 GMT+01:00 Laurent JOLI <laurent.joli@kapelse.com>:

>
>
> ------------------------------
> *De: *"TEXIER Pierre-Jean" <texier.pj2@gmail.com>
> *=C3=80: *"Laurent JOLI" <laurent.joli@kapelse.com>
> *Cc: *"yocto" <yocto@yoctoproject.org>
> *Envoy=C3=A9: *Vendredi 23 Mars 2018 15:20:50
> *Objet: *Re: [yocto] Add lib to meta-qt5
>
> Hi Laurent,
> The SDK is defined by the following packagegroup:
> https://github.com/meta-qt5/meta-qt5/blob/jethro/recipes-
> qt/packagegroups/packagegroup-qt5-toolchain-target.bb.
>
> I build all my SDK with :
>
> bitbake  -v meta-toolchain-qt5
>
> At the end I have a big script :
>
> .-(/media/tmp-jethro-XXX/deploy/sdk)--------
> `--> lc
> total 824M
> -rw-r--r-- 1 ljoli ljoli 8,9K mars  23 13:28 pokykapsofia-glibc-i686-meta=
-
> toolchain-qt5-core2-32-toolchain-1.0.host.manifest
> -rwxr-xr-x 1 ljoli ljoli 824M mars  23 13:29 pokykapsofia-glibc-i686-meta=
-
> toolchain-qt5-core2-32-toolchain-1.0.sh
> -rw-r--r-- 1 ljoli ljoli  19K mars  23 13:28 pokykapsofia-glibc-i686-meta=
-
> toolchain-qt5-core2-32-toolchain-1.0.target.manifest
>
> But I have not my lib of libqt5declarative :
>
> `--> cat * | grep -ri libqt5
>
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5sensors-dbg core2-32
> 5.5.1+git0+6a16281ace
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5sensors-dev core2-32
> 5.5.1+git0+6a16281ace
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5sensors-examples-dbg core2-32
> 5.5.1+git0+6a16281ace
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5sensors-mkspecs core2-32
> 5.5.1+git0+6a16281ace
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5sensors-plugins core2-32
> 5.5.1+git0+6a16281ace
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5sensors-plugins-dbg core2-32
> 5.5.1+git0+6a16281ace
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5sensors-qmlplugins core2-32
> 5.5.1+git0+6a16281ace
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5sensors-qmlplugins-dbg core2-32
> 5.5.1+git0+6a16281ace
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5sensors5 core2-32
> 5.5.1+git0+6a16281ace
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5serialport-dbg core2-32
> 5.5.1+git0+ad108e9d56
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5serialport-dev core2-32
> 5.5.1+git0+ad108e9d56
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5serialport-mkspecs core2-32
> 5.5.1+git0+ad108e9d56
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5serialport5 core2-32
> 5.5.1+git0+ad108e9d56
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5svg-dbg core2-32 5.5.1+git0+b5d689eaa=
f
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5svg-dev core2-32 5.5.1+git0+b5d689eaa=
f
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5svg-mkspecs core2-32
> 5.5.1+git0+b5d689eaaf
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5svg-plugins core2-32
> 5.5.1+git0+b5d689eaaf
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5svg-plugins-dbg core2-32
> 5.5.1+git0+b5d689eaaf
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5svg5 core2-32 5.5.1+git0+b5d689eaaf
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5webchannel-dbg core2-32
> 5.5.1+git0+906d910415
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5webchannel-dev core2-32
> 5.5.1+git0+906d910415
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5webchannel-mkspecs core2-32
> 5.5.1+git0+906d910415
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5webchannel-qmlplugins core2-32
> 5.5.1+git0+906d910415
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5webchannel-qmlplugins-dbg core2-32
> 5.5.1+git0+906d910415
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5webchannel5 core2-32
> 5.5.1+git0+906d910415
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5websockets-dbg core2-32
> 5.5.1+git0+08582917b4
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5websockets-dev core2-32
> 5.5.1+git0+08582917b4
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5websockets-mkspecs core2-32
> 5.5.1+git0+08582917b4
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5websockets-qmlplugins core2-32
> 5.5.1+git0+08582917b4
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5websockets-qmlplugins-dbg core2-32
> 5.5.1+git0+08582917b4
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5websockets5 core2-32
> 5.5.1+git0+08582917b4
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5xmlpatterns-dbg core2-32
> 5.5.1+git0+3338de7bbe
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5xmlpatterns-dev core2-32
> 5.5.1+git0+3338de7bbe
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5xmlpatterns-mkspecs core2-32
> 5.5.1+git0+3338de7bbe
> pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-
> toolchain-1.0.target.manifest:libqt5xmlpatterns5 core2-32
> 5.5.1+git0+3338de7bbe
>
>
> ---
> Pierre-Jean
>
> 2018-03-23 14:39 GMT+01:00 Laurent JOLI <laurent.joli@kapelse.com>:
>
>> Hello,
>>
>> I'm working with an old version of YOCTO, jethro 2.0.
>> And I want to produce an SDK of QT5, version 5.5.1.
>>
>> So, I add the layer meta-qt5 on YOCTO for build the following recipe :
>>
>> https://github.com/meta-qt5/meta-qt5/tree/jethro
>>
>> meta-toolchain-qt5
>>
>> My question is :
>>
>> How to add an lib ( libqt5declarative.so.5.5.1 for example ) on SDK of
>> QT5 ?
>>
>> thanks by advance.
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--94eb2c0de31c94d904056816a4bd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Laurent,<div><br></div><div>Have you tried to install the =
SDK ? if not, runnning the following command:</div><div><br></div><div>$: .=
/<a href=3D"http://pokykapsofia-glibc-i686-meta-toolchain-qt5-core2-32-tool=
chain-1.0.sh/" target=3D"_blank" style=3D"color:rgb(17,85,204);font-family:=
Arial,Helvetica,sans-serif;font-size:13.3333px;font-style:normal;font-varia=
nt-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing=
:normal;text-align:start;text-indent:0px;text-transform:none;white-space:no=
rmal;word-spacing:0px;background-color:rgb(255,255,255)">pokykapsofia-glibc=
-i686-meta-<wbr>toolchain-qt5-core2-32-<wbr>toolchain-1.0.sh</a>

</div><div><br></div><div>And follow the steps to install the SDK, and then=
 go to &lt;install_path&gt;/poky/sysroots/&lt;your target architecture&gt;/=
usr/lib</div><div><br></div><div>And you&#39;ll be able to find libQt5Decla=
rative library.</div><div><br></div><div>---</div><div>Pierre-Jean</div><di=
v class=3D"gmail_extra"><br><div class=3D"gmail_quote">2018-03-23 16:09 GMT=
+01:00 Laurent JOLI <span dir=3D"ltr">&lt;<a href=3D"mailto:laurent.joli@ka=
pelse.com" target=3D"_blank">laurent.joli@kapelse.com</a>&gt;</span>:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex"><div><div style=3D"font-family:Arial,Helvetica=
,sans-serif;font-size:10pt;color:#000000"><div><br></div><div><br></div><hr=
 id=3D"m_-8716020980262694782zwchr"><div><b>De: </b>&quot;TEXIER Pierre-Jea=
n&quot; &lt;<a href=3D"mailto:texier.pj2@gmail.com" target=3D"_blank">texie=
r.pj2@gmail.com</a>&gt;<br><b>=C3=80: </b>&quot;Laurent JOLI&quot; &lt;<a h=
ref=3D"mailto:laurent.joli@kapelse.com" target=3D"_blank">laurent.joli@kape=
lse.com</a>&gt;<br><b>Cc: </b>&quot;yocto&quot; &lt;<a href=3D"mailto:yocto=
@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a>&gt;<br><b>E=
nvoy=C3=A9: </b>Vendredi 23 Mars 2018 15:20:50<br><b>Objet: </b>Re: [yocto]=
 Add lib to meta-qt5<br></div><br><div><div dir=3D"ltr"><span class=3D"">Hi=
 Laurent,<br><div><div>The SDK is defined by the following packagegroup:</d=
iv><div><a href=3D"https://github.com/meta-qt5/meta-qt5/blob/jethro/recipes=
-qt/packagegroups/packagegroup-qt5-toolchain-target.bb" target=3D"_blank">h=
ttps://github.com/meta-qt5/<wbr>meta-qt5/blob/jethro/recipes-<wbr>qt/packag=
egroups/packagegroup-<wbr>qt5-toolchain-target.bb</a>.</div></div><div><br>=
</div></span><div>I build all my SDK with :<br></div><div><br></div><div>bi=
tbake=C2=A0 -v meta-toolchain-qt5<br></div><div><br></div><div>At the end I=
 have a big script :<br></div><div><br></div><div>.-(/media/tmp-jethro-XXX/=
<wbr>deploy/sdk)--------<br>`--&gt; lc<br>total 824M<br>-rw-r--r-- 1 ljoli =
ljoli 8,9K mars=C2=A0 23 13:28 pokykapsofia-glibc-i686-meta-<wbr>toolchain-=
qt5-core2-32-<wbr>toolchain-1.0.host.manifest<br>-rwxr-xr-x 1 ljoli ljoli 8=
24M mars=C2=A0 23 13:29 <a href=3D"http://pokykapsofia-glibc-i686-meta-tool=
chain-qt5-core2-32-toolchain-1.0.sh" target=3D"_blank">pokykapsofia-glibc-i=
686-meta-<wbr>toolchain-qt5-core2-32-<wbr>toolchain-1.0.sh</a><br>-rw-r--r-=
- 1 ljoli ljoli=C2=A0 19K mars=C2=A0 23 13:28 pokykapsofia-glibc-i686-meta-=
<wbr>toolchain-qt5-core2-32-<wbr>toolchain-1.0.target.manifest<br><br></div=
><div>But I have not my lib of libqt5declarative :<br></div><div><br></div>=
<div>`--&gt; cat * | grep -ri libqt5=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>pokykapsofia-glibc-i686-meta-<w=
br>toolchain-qt5-core2-32-<wbr>toolchain-1.0.target.manifest:<wbr>libqt5sen=
sors-dbg core2-32 5.5.1+git0+6a16281ace<br>pokykapsofia-glibc-i686-meta-<wb=
r>toolchain-qt5-core2-32-<wbr>toolchain-1.0.target.manifest:<wbr>libqt5sens=
ors-dev core2-32 5.5.1+git0+6a16281ace<br>pokykapsofia-glibc-i686-meta-<wbr=
>toolchain-qt5-core2-32-<wbr>toolchain-1.0.target.manifest:<wbr>libqt5senso=
rs-examples-dbg core2-32 5.5.1+git0+6a16281ace<br>pokykapsofia-glibc-i686-m=
eta-<wbr>toolchain-qt5-core2-32-<wbr>toolchain-1.0.target.manifest:<wbr>lib=
qt5sensors-mkspecs core2-32 5.5.1+git0+6a16281ace<br>pokykapsofia-glibc-i68=
6-meta-<wbr>toolchain-qt5-core2-32-<wbr>toolchain-1.0.target.manifest:<wbr>=
libqt5sensors-plugins core2-32 5.5.1+git0+6a16281ace<br>pokykapsofia-glibc-=
i686-meta-<wbr>toolchain-qt5-core2-32-<wbr>toolchain-1.0.target.manifest:<w=
br>libqt5sensors-plugins-dbg core2-32 5.5.1+git0+6a16281ace<br>pokykapsofia=
-glibc-i686-meta-<wbr>toolchain-qt5-core2-32-<wbr>toolchain-1.0.target.mani=
fest:<wbr>libqt5sensors-qmlplugins core2-32 5.5.1+git0+6a16281ace<br>pokyka=
psofia-glibc-i686-meta-<wbr>toolchain-qt5-core2-32-<wbr>toolchain-1.0.targe=
t.manifest:<wbr>libqt5sensors-qmlplugins-dbg core2-32 5.5.1+git0+6a16281ace=
<br>pokykapsofia-glibc-i686-meta-<wbr>toolchain-qt5-core2-32-<wbr>toolchain=
-1.0.target.manifest:<wbr>libqt5sensors5 core2-32 5.5.1+git0+6a16281ace<br>=
pokykapsofia-glibc-i686-meta-<wbr>toolchain-qt5-core2-32-<wbr>toolchain-1.0=
.target.manifest:<wbr>libqt5serialport-dbg core2-32 5.5.1+git0+ad108e9d56<b=
r>pokykapsofia-glibc-i686-meta-<wbr>toolchain-qt5-core2-32-<wbr>toolchain-1=
.0.target.manifest:<wbr>libqt5serialport-dev core2-32 5.5.1+git0+ad108e9d56=
<br>pokykapsofia-glibc-i686-meta-<wbr>toolchain-qt5-core2-32-<wbr>toolchain=
-1.0.target.manifest:<wbr>libqt5serialport-mkspecs core2-32 5.5.1+git0+ad10=
8e9d56<br>pokykapsofia-glibc-i686-meta-<wbr>toolchain-qt5-core2-32-<wbr>too=
lchain-1.0.target.manifest:<wbr>libqt5serialport5 core2-32 5.5.1+git0+ad108=
e9d56<br>pokykapsofia-glibc-i686-meta-<wbr>toolchain-qt5-core2-32-<wbr>tool=
chain-1.0.target.manifest:<wbr>libqt5svg-dbg core2-32 5.5.1+git0+b5d689eaaf=
<br>pokykapsofia-glibc-i686-meta-<wbr>toolchain-qt5-core2-32-<wbr>toolchain=
-1.0.target.manifest:<wbr>libqt5svg-dev core2-32 5.5.1+git0+b5d689eaaf<br>p=
okykapsofia-glibc-i686-meta-<wbr>toolchain-qt5-core2-32-<wbr>toolchain-1.0.=
target.manifest:<wbr>libqt5svg-mkspecs core2-32 5.5.1+git0+b5d689eaaf<br>po=
kykapsofia-glibc-i686-meta-<wbr>toolchain-qt5-core2-32-<wbr>toolchain-1.0.t=
arget.manifest:<wbr>libqt5svg-plugins core2-32 5.5.1+git0+b5d689eaaf<br>pok=
ykapsofia-glibc-i686-meta-<wbr>toolchain-qt5-core2-32-<wbr>toolchain-1.0.ta=
rget.manifest:<wbr>libqt5svg-plugins-dbg core2-32 5.5.1+git0+b5d689eaaf<br>=
pokykapsofia-glibc-i686-meta-<wbr>toolchain-qt5-core2-32-<wbr>toolchain-1.0=
.target.manifest:<wbr>libqt5svg5 core2-32 5.5.1+git0+b5d689eaaf<br>pokykaps=
ofia-glibc-i686-meta-<wbr>toolchain-qt5-core2-32-<wbr>toolchain-1.0.target.=
manifest:<wbr>libqt5webchannel-dbg core2-32 5.5.1+git0+906d910415<br>pokyka=
psofia-glibc-i686-meta-<wbr>toolchain-qt5-core2-32-<wbr>toolchain-1.0.targe=
t.manifest:<wbr>libqt5webchannel-dev core2-32 5.5.1+git0+906d910415<br>poky=
kapsofia-glibc-i686-meta-<wbr>toolchain-qt5-core2-32-<wbr>toolchain-1.0.tar=
get.manifest:<wbr>libqt5webchannel-mkspecs core2-32 5.5.1+git0+906d910415<b=
r>pokykapsofia-glibc-i686-meta-<wbr>toolchain-qt5-core2-32-<wbr>toolchain-1=
.0.target.manifest:<wbr>libqt5webchannel-qmlplugins core2-32 5.5.1+git0+906=
d910415<br>pokykapsofia-glibc-i686-meta-<wbr>toolchain-qt5-core2-32-<wbr>to=
olchain-1.0.target.manifest:<wbr>libqt5webchannel-qmlplugins-<wbr>dbg core2=
-32 5.5.1+git0+906d910415<br>pokykapsofia-glibc-i686-meta-<wbr>toolchain-qt=
5-core2-32-<wbr>toolchain-1.0.target.manifest:<wbr>libqt5webchannel5 core2-=
32 5.5.1+git0+906d910415<br>pokykapsofia-glibc-i686-meta-<wbr>toolchain-qt5=
-core2-32-<wbr>toolchain-1.0.target.manifest:<wbr>libqt5websockets-dbg core=
2-32 5.5.1+git0+08582917b4<br>pokykapsofia-glibc-i686-meta-<wbr>toolchain-q=
t5-core2-32-<wbr>toolchain-1.0.target.manifest:<wbr>libqt5websockets-dev co=
re2-32 5.5.1+git0+08582917b4<br>pokykapsofia-glibc-i686-meta-<wbr>toolchain=
-qt5-core2-32-<wbr>toolchain-1.0.target.manifest:<wbr>libqt5websockets-mksp=
ecs core2-32 5.5.1+git0+08582917b4<br>pokykapsofia-glibc-i686-meta-<wbr>too=
lchain-qt5-core2-32-<wbr>toolchain-1.0.target.manifest:<wbr>libqt5websocket=
s-qmlplugins core2-32 5.5.1+git0+08582917b4<br>pokykapsofia-glibc-i686-meta=
-<wbr>toolchain-qt5-core2-32-<wbr>toolchain-1.0.target.manifest:<wbr>libqt5=
websockets-qmlplugins-<wbr>dbg core2-32 5.5.1+git0+08582917b4<br>pokykapsof=
ia-glibc-i686-meta-<wbr>toolchain-qt5-core2-32-<wbr>toolchain-1.0.target.ma=
nifest:<wbr>libqt5websockets5 core2-32 5.5.1+git0+08582917b4<br>pokykapsofi=
a-glibc-i686-meta-<wbr>toolchain-qt5-core2-32-<wbr>toolchain-1.0.target.man=
ifest:<wbr>libqt5xmlpatterns-dbg core2-32 5.5.1+git0+3338de7bbe<br>pokykaps=
ofia-glibc-i686-meta-<wbr>toolchain-qt5-core2-32-<wbr>toolchain-1.0.target.=
manifest:<wbr>libqt5xmlpatterns-dev core2-32 5.5.1+git0+3338de7bbe<br>pokyk=
apsofia-glibc-i686-meta-<wbr>toolchain-qt5-core2-32-<wbr>toolchain-1.0.targ=
et.manifest:<wbr>libqt5xmlpatterns-mkspecs core2-32 5.5.1+git0+3338de7bbe<b=
r>pokykapsofia-glibc-i686-meta-<wbr>toolchain-qt5-core2-32-<wbr>toolchain-1=
.0.target.manifest:<wbr>libqt5xmlpatterns5 core2-32 5.5.1+git0+3338de7bbe<b=
r><br></div><div><br><div>---</div><div>Pierre-Jean</div></div></div><span =
class=3D""><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">2018-0=
3-23 14:39 GMT+01:00 Laurent JOLI <span dir=3D"ltr">&lt;<a href=3D"mailto:l=
aurent.joli@kapelse.com" target=3D"_blank">laurent.joli@kapelse.com</a>&gt;=
</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div><div style=3D"font-family:A=
rial,Helvetica,sans-serif;font-size:10pt;color:#000000"><div>Hello,<br></di=
v><br><div>I&#39;m working with an old version of YOCTO, jethro 2.0.<br></d=
iv><div>And I want to produce an SDK of QT5, version 5.5.1.<br></div><br><d=
iv>So, I add the layer meta-qt5 on YOCTO for build the following recipe :<b=
r></div><br><div><a href=3D"https://github.com/meta-qt5/meta-qt5/tree/jethr=
o" target=3D"_blank">https://github.com/meta-qt5/<wbr>meta-qt5/tree/jethro<=
/a><br></div><br><div>meta-toolchain-qt5<br></div><br><div>My question is :=
</div><br><div> How to add an lib ( libqt5declarative.so.5.5.1 for example =
) on SDK of QT5 ?<br></div><br><div>thanks by advance.<br></div></div></div=
><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div></div><br></span></div></div></div></blockquote></di=
v><br></div></div>

--94eb2c0de31c94d904056816a4bd--
