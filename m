Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3180EC47077
	for <webhook@archiver.kernel.org>; Thu, 18 Jan 2024 06:30:53 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web11.5744.1705559445204810873
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Jan 2024 22:30:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=CkvZ3YWs;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: marek.belisko@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2cdc1af60b2so47000181fa.1
        for <yocto@lists.yoctoproject.org>; Wed, 17 Jan 2024 22:30:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705559443; x=1706164243; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MTMCPoncVLzaWuNb4aT3SM8dbZjR/2AC6RUmbAw06vI=;
        b=CkvZ3YWseuYLtiwv8PcFurDkA1xBXYLVeGE3wwQHngUFN5fvhpBXQLiisZGIBaISOh
         p4UKqVWlD7uObnc5cbx9yyPtuwSxP2hHa/dMGEBS4PNjytx8F4dbW4jjWCpRJ4m2pn+Z
         /2krSi+xWgwAiTjf6J8BGI4+QAj4jm3RM52XaC7A5X2KcaAovgnBqFSaI1EY0EFHnrvU
         rZkXrj9kspvPwLuFOHoGYPBcy1WyqgWWcvpPhwvmVzv+ZkGPY9xj7qQSSL893oE0tmHo
         FM94hhW/y5AZVHxG3ENzUX0o61Hz7YLojuyegwtaGm4tcJep0q6fzXVg3LxTkyXZZMQb
         5oQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705559443; x=1706164243;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MTMCPoncVLzaWuNb4aT3SM8dbZjR/2AC6RUmbAw06vI=;
        b=KS+usbBGiJ1lbttx3C8ClKtQQmYcz3MaNTjcg1x84hTFJKqqwKGHA5DcqXTt3o2Ws5
         8JJw6r4aFFRgiURgSh2A2p2yZgGg30KEjGwS8t0SmHey5kI8SsbYxrYgFVHEA63O1AbB
         XZhXagBIYllbOvHDZ3Ak8BI62T5sWXusKYN0QWSkJ/dzMYXxATTY+TYA6T7vgy7SsWmi
         pDWYMGXnuvK+ekJk+IP8mXQnNlngiH/dTZbu7edLHXAwKsq6sCsS2Aoy15BVTSJD6N2N
         Na2aFU9s3SdocGEfj7+5t3EuhDEBSPbj+QTyTT+TLbi71GA1DEtnLuGhSbgRZa8Dj5z6
         yxiw==
X-Gm-Message-State: AOJu0Yzy/pXwQ0rRUm2uBzt4p+HXzUVD/MUp1QHJ0bVpaP1wyV5RQzOB
	DK2FHYeQVxJvyas/AjIfEHw/rTl2G6JM80KDpfdtbqq0XxBGlBf41jifanthMPgGQn/TrG5jfCO
	Ls7s9HbQAvAkEsFGpU8P+hktmPDB0SQ64
X-Google-Smtp-Source: AGHT+IG/H+iTvJv/8eU8Cc7/NX+Klh7kinwG1eOYS8Y8Uuv16kNJy7P0gtAx6Op6VPQMXBfWJennkdVj9EjZCOZzZCk=
X-Received: by 2002:a2e:a451:0:b0:2cc:f6b5:5193 with SMTP id
 v17-20020a2ea451000000b002ccf6b55193mr193140ljn.102.1705559442344; Wed, 17
 Jan 2024 22:30:42 -0800 (PST)
MIME-Version: 1.0
References: <WdJZ.1705529495910244509.KX6t@lists.yoctoproject.org>
In-Reply-To: <WdJZ.1705529495910244509.KX6t@lists.yoctoproject.org>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Thu, 18 Jan 2024 07:30:31 +0100
Message-ID: <CAAfyv36_k6eEvWoJB4_kD4gKKmQ3ia3XWTVtYRf5hgyi5ctDzQ@mail.gmail.com>
Subject: Re: [yocto] etherlab
To: yocto@lists.yoctoproject.org, daniele.lugli@gmail.com
Content-Type: multipart/alternative; boundary="000000000000b44f59060f32808b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Jan 2024 06:30:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62184

--000000000000b44f59060f32808b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 17, 2024 at 11:11=E2=80=AFPM Daniele Lugli <daniele.lugli@gmail=
.com>
wrote:

> Hi all,
>
> I am trying to add an EtherLAB Ethercat master to my target.
>
> I added a new recipes-etherlab directory at the same level of other
> working recipes:
>
> recipes-etherlab
>   |
>   +-etherlab
>        |
>    +-etherlab_0.1.bb
>    |
>    +-files
>        |
>    +-ethercat
>
>
> The ethercat directory is from
> https://gitlab.com/etherlab.org/ethercat.git
>
> etherlab_0.1.bb says:
>
>
> DESCRIPTION =3D "EtherLAB Ethercat master"
>
> LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D59530bdf33659b29e73d4adb9f9f65=
52"
> LICENSE =3D "GPLv2"
>
> S =3D "${WORKDIR}/etherlab/ethercat"
>
> FILES:${PN} =3D "\
>         /etc/init.d/ethercat \
>         /etc/sysconfig/ethercat \
>         ${libdir}/libethercat.so.1.1.0 \
>         ${libdir}/libethercat.so.1.1 \
>         ${libdir}/libethercat.so.1 \
>         ${bindir}/ethercat"
>
> do_compile() {
>                 autoreconf
>                 sh configure --sysconfdir=3D/etc --enable-igb
>                 make
> }
>
> do_install() {
>                 install -d ${D}${bindir}/
>                 install -d ${D}${libdir}/
>                 install -d ${D}/etc/init.d/
>                 install -m 0755 ${S}/lib/.libs/libethercat.so.1.0.0
> ${D}${libdir}/libethercat.so.1.0.0
>                 install -m 0755 ${S}/tool/ethercat ${D}${bindir}/ethercat
>                 install -m 0755 ${S}/script/init.d/ethercat.in
> ${D}/etc/init.d/ethercat
>                 ln -s libethercat.so.1.1.0 ${D}${libdir}/libethercat.so.1=
.1
>                 ln -s libethercat.so.1.1 ${D}${libdir}/libethercat.so.1
> }
>
> Last, I added
>
> IMAGE_INSTALL +=3D "etherlab"
>
> to mytest-image.bb
>
> Now, bitbake mytest-image complains:
>
> /home/vboxuser/yocto/poky/build/tmp/work/corei7-64-poky-linux/etherlab/0.=
1/temp/run.do_compile.5355:
> 141: autoreconf: not found
>
Please add line: inherit autoconf which will pull necessary auto* tools

>
> The build configuration is
>
> BB_VERSION           =3D "2.6.0"
> BUILD_SYS            =3D "x86_64-linux"
> NATIVELSBSTRING      =3D "universal"
> TARGET_SYS           =3D "x86_64-poky-linux"
> MACHINE              =3D "intel-corei7-64"
> DISTRO               =3D "poky"
> DISTRO_VERSION       =3D "4.3.2"
> TUNE_FEATURES        =3D "m64 corei7"
> TARGET_FPU           =3D ""
> meta
> meta-poky
> meta-yocto-bsp       =3D "nanbield:f768ffb8916feb6542fcbe3e946cbf30e247b1=
51"
> meta-oe              =3D "nanbield:2da6e1b0e43a8993fd422fee3f83940100b59f=
4c"
> meta-intel           =3D "nanbield:039e45e21d2973fc3ce318a25beceae348e442=
8a"
> meta-mytest          =3D "<unknown>:<unknown>"
>
> and I have tools-sdk among my IMAGE_FEATURES.
>
> Thank you in advance for any hint.
>
>
> --
> Daniele Lugli
> General Logic srl
> Viale Curreno, 41
> 10133 Torino
> Italy
> tel +39 329 3933041
> www.general-logic.com
> www.linkedin.com/in/daniele-lugli
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62180):
> https://lists.yoctoproject.org/g/yocto/message/62180
> Mute This Topic: https://lists.yoctoproject.org/mt/103796912/900721
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> marek.belisko@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>
BR,

marek
--=20
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--000000000000b44f59060f32808b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Jan 17, 2024 at 11:11=E2=80=AFPM =
Daniele Lugli &lt;<a href=3D"mailto:daniele.lugli@gmail.com">daniele.lugli@=
gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div>Hi all,</div>
<div>=C2=A0</div>
<div>I am trying to add an EtherLAB Ethercat master to my target.</div>
<div>=C2=A0</div>
<div>I added a new recipes-etherlab directory at the same level of other wo=
rking recipes:</div>
<div>=C2=A0</div>
<div><span style=3D"color:rgb(0,0,255)">recipes-etherlab</span></div>
<div><span style=3D"color:rgb(0,0,255)">=C2=A0 |</span></div>
<div><span style=3D"color:rgb(0,0,255)">=C2=A0 +-etherlab</span></div>
<div><span style=3D"color:rgb(0,0,255)">=C2=A0 =C2=A0 =C2=A0 =C2=A0|</span>=
</div>
<div><span style=3D"white-space:normal;color:rgb(0,0,255)"><span style=3D"w=
hite-space:pre-wrap"> </span>=C2=A0 =C2=A0+-<a href=3D"http://etherlab_0.1.=
bb" target=3D"_blank">etherlab_0.1.bb</a></span></div>
<div><span style=3D"white-space:normal;color:rgb(0,0,255)"><span style=3D"w=
hite-space:pre-wrap"> </span>=C2=A0 =C2=A0|</span></div>
<div><span style=3D"white-space:normal;color:rgb(0,0,255)"><span style=3D"w=
hite-space:pre-wrap"> </span>=C2=A0 =C2=A0+-files</span></div>
<div><span style=3D"white-space:normal;color:rgb(0,0,255)"><span style=3D"w=
hite-space:pre-wrap"> </span>=C2=A0 =C2=A0 =C2=A0 =C2=A0|</span></div>
<div><span style=3D"white-space:normal;color:rgb(0,0,255)"><span style=3D"w=
hite-space:pre-wrap"> </span>=C2=A0 =C2=A0+-ethercat</span></div>
<div>=C2=A0</div>
<div><br>The ethercat directory is from <a href=3D"https://gitlab.com/ether=
lab.org/ethercat.git" target=3D"_blank">https://gitlab.com/etherlab.org/eth=
ercat.git</a></div>
<div>=C2=A0</div>
<div><a href=3D"http://etherlab_0.1.bb" target=3D"_blank">etherlab_0.1.bb</=
a> says:</div>
<div><br><br></div>
<div><span style=3D"color:rgb(0,0,255)">DESCRIPTION =3D &quot;EtherLAB Ethe=
rcat master&quot;</span></div>
<div>=C2=A0</div>
<div><span style=3D"color:rgb(0,0,255)">LIC_FILES_CHKSUM =3D &quot;file://C=
OPYING;md5=3D59530bdf33659b29e73d4adb9f9f6552&quot;</span></div>
<div><span style=3D"color:rgb(0,0,255)">LICENSE =3D &quot;GPLv2&quot;</span=
></div>
<div>=C2=A0</div>
<div><span style=3D"color:rgb(0,0,255)">S =3D &quot;${WORKDIR}/etherlab/eth=
ercat&quot;</span></div>
<div>=C2=A0</div>
<div><span style=3D"color:rgb(0,0,255)">FILES:${PN} =3D &quot;\</span></div=
>
<div><span style=3D"color:rgb(0,0,255)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 /etc/in=
it.d/ethercat \</span></div>
<div><span style=3D"color:rgb(0,0,255)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 /etc/sy=
sconfig/ethercat \</span></div>
<div><span style=3D"color:rgb(0,0,255)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${libdi=
r}/libethercat.so.1.1.0 \</span></div>
<div><span style=3D"color:rgb(0,0,255)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${libdi=
r}/libethercat.so.1.1 \</span></div>
<div><span style=3D"color:rgb(0,0,255)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${libdi=
r}/libethercat.so.1 \</span></div>
<div><span style=3D"color:rgb(0,0,255)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${bindi=
r}/ethercat&quot;</span></div>
<div>=C2=A0</div>
<div><span style=3D"color:rgb(0,0,255)">do_compile() {</span></div>
<div><span style=3D"color:rgb(0,0,255)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 autoreconf</span></div>
<div><span style=3D"color:rgb(0,0,255)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 sh configure --sysconfdir=3D/etc --enable-igb</span></=
div>
<div><span style=3D"color:rgb(0,0,255)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 make</span></div>
<div><span style=3D"color:rgb(0,0,255)">}</span></div>
<div>=C2=A0</div>
<div><span style=3D"color:rgb(0,0,255)">do_install() {</span></div>
<div><span style=3D"color:rgb(0,0,255)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 install -d ${D}${bindir}/</span></div>
<div><span style=3D"color:rgb(0,0,255)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 install -d ${D}${libdir}/</span></div>
<div><span style=3D"color:rgb(0,0,255)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 install -d ${D}/etc/init.d/</span></div>
<div><span style=3D"color:rgb(0,0,255)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 install -m 0755 ${S}/lib/.libs/libethercat.so.1.0.0 ${=
D}${libdir}/libethercat.so.1.0.0</span></div>
<div><span style=3D"color:rgb(0,0,255)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 install -m 0755 ${S}/tool/ethercat ${D}${bindir}/ether=
cat</span></div>
<div><span style=3D"color:rgb(0,0,255)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 install -m 0755 ${S}/script/init.d/<a href=3D"http://e=
thercat.in" target=3D"_blank">ethercat.in</a> ${D}/etc/init.d/ethercat</spa=
n></div>
<div><span style=3D"color:rgb(0,0,255)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 ln -s libethercat.so.1.1.0 ${D}${libdir}/libethercat.s=
o.1.1</span></div>
<div><span style=3D"color:rgb(0,0,255)">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 ln -s libethercat.so.1.1 ${D}${libdir}/libethercat.so.=
1</span></div>
<div><span style=3D"color:rgb(0,0,255)">}</span></div>
<div>=C2=A0</div>
<div>Last, I added</div>
<div>=C2=A0</div>
<div><span style=3D"color:rgb(0,0,255)">IMAGE_INSTALL +=3D &quot;etherlab&q=
uot;</span></div>
<div>=C2=A0</div>
<div>to <a href=3D"http://mytest-image.bb" target=3D"_blank">mytest-image.b=
b</a></div>
<div>=C2=A0</div>
<div>Now, bitbake mytest-image complains:</div>
<div>=C2=A0</div>
<div><span style=3D"color:rgb(255,0,0)">/home/vboxuser/yocto/poky/build/tmp=
/work/corei7-64-poky-linux/etherlab/0.1/temp/run.do_compile.5355: 141: auto=
reconf: not found</span></div></blockquote><div>Please add line: inherit au=
toconf which will pull necessary auto* tools</div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">
<div>=C2=A0</div>
<div>The build configuration is</div>
<div>=C2=A0</div>
<div><span style=3D"color:rgb(0,0,255)">BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=3D &quot;2.6.0&quot;</span></div>
<div><span style=3D"color:rgb(0,0,255)">BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</span></div>
<div><span style=3D"color:rgb(0,0,255)">NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0=
 =3D &quot;universal&quot;</span></div>
<div><span style=3D"color:rgb(0,0,255)">TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=3D &quot;x86_64-poky-linux&quot;</span></div>
<div><span style=3D"color:rgb(0,0,255)">MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =3D &quot;intel-corei7-64&quot;</span></div>
<div><span style=3D"color:rgb(0,0,255)">DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;</span></div>
<div><span style=3D"color:rgb(0,0,255)">DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D &quot;4.3.2&quot;</span></div>
<div><span style=3D"color:rgb(0,0,255)">TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =3D &quot;m64 corei7&quot;</span></div>
<div><span style=3D"color:rgb(0,0,255)">TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=3D &quot;&quot;</span></div>
<div><span style=3D"color:rgb(0,0,255)">meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</span></div>
<div><span style=3D"color:rgb(0,0,255)">meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=C2=A0</span></div>
<div><span style=3D"color:rgb(0,0,255)">meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D &quot;nanbield:f768ffb8916feb6542fcbe3e946cbf30e247b151&quot;</sp=
an></div>
<div><span style=3D"color:rgb(0,0,255)">meta-oe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =3D &quot;nanbield:2da6e1b0e43a8993fd422fee3f83940100b=
59f4c&quot;</span></div>
<div><span style=3D"color:rgb(0,0,255)">meta-intel=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=3D &quot;nanbield:039e45e21d2973fc3ce318a25beceae348e4428=
a&quot;</span></div>
<div><span style=3D"color:rgb(0,0,255)">meta-mytest=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =3D &quot;&lt;unknown&gt;:&lt;unknown&gt;&quot;</span></div>
<div>=C2=A0</div>
<div>and I have tools-sdk among my IMAGE_FEATURES.</div>
<div>=C2=A0</div>
<div>Thank you in advance for any hint.</div>
<div>=C2=A0</div>
<div>=C2=A0</div>
-- <br>
<div style=3D"color:rgb(80,0,80);font-family:Arial,Helvetica,sans-serif;fon=
t-size:small">
<div dir=3D"ltr">
<div>Daniele Lugli</div>
General Logic srl</div>
<div>Viale Curreno, 41</div>
<div>10133 Torino<br>Italy</div>
<div>tel +39 329 3933041</div>
</div>
<div style=3D"color:rgb(80,0,80);font-family:Arial,Helvetica,sans-serif;fon=
t-size:small"><a style=3D"color:rgb(17,85,204)" href=3D"http://www.general-=
logic.com/" rel=3D"noopener" target=3D"_blank">www.general-logic.com</a></d=
iv>
<div style=3D"color:rgb(80,0,80);font-family:Arial,Helvetica,sans-serif;fon=
t-size:small"><a style=3D"color:rgb(17,85,204)" href=3D"http://www.linkedin=
.com/in/daniele-lugli" rel=3D"noopener" target=3D"_blank">www.linkedin.com/=
in/daniele-lugli</a></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#62180): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62180" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62180</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/103796912/900=
721" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/103796912/900721</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:marek.belisko@gmail.com" target=3D"_blank">marek=
.belisko@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div>BR,</div><div><br></div><div>mare=
k</div><span class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr=
" class=3D"gmail_signature">as simple and primitive as possible<br>--------=
-----------------------------------------<br>Marek Belisko - OPEN-NANDRA<br=
>Freelance Developer<br><br>Ruska Nova Ves 219 | Presov, 08005 Slovak Repub=
lic<br>Tel: +421 915 052 184<br>skype: marekwhite<br>twitter: #opennandra<b=
r>web: <a href=3D"http://open-nandra.com" target=3D"_blank">http://open-nan=
dra.com</a></div></div>

--000000000000b44f59060f32808b--

