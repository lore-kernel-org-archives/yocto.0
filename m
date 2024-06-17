Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6E54C27C79
	for <webhook@archiver.kernel.org>; Mon, 17 Jun 2024 17:22:17 +0000 (UTC)
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
 by mx.groups.io with SMTP id smtpd.web10.63170.1718644930700780745
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Jun 2024 10:22:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=OwMHomm8;
 spf=pass (domain: gmail.com, ip: 209.85.222.42, mailfrom: quaresma.jose@gmail.com)
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-80d68861bf9so1594939241.2
        for <yocto@lists.yoctoproject.org>; Mon, 17 Jun 2024 10:22:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718644929; x=1719249729; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jfY89wRDmQt5mcnLm4wKsxL4yJTVSEXXKyeyaS8u4XY=;
        b=OwMHomm856Qybz7sY+cwzHhhNcPa5b/FsUOWEPyuNYROkGA2gBpfvEw04SHtiJg5SG
         tAsGkOCVj6lq9bL2wk+Q3zTU0HphMPZjqUFI7dRKDhFcyHF21hJbxzWDUekr/qUc3E1K
         evWo7/CLCOw/sEuJ2huDTyESL0LqWHvkQKzINfu6M7tfmps54CNS4l/DaeWGcJseIw0X
         WEIkFQXn9PgEFjWED+dZa1pmPPJPHXC3iTNQypcaQ/IBHoYanstJBar4lFpD9qHJ8GwD
         Q1b29jbJmBsRO7H4U1V4wA1L8u4JkcE3bOti4g86fbp11bRS4hdz7pl7hwHtRafGVRQe
         j6sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718644929; x=1719249729;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jfY89wRDmQt5mcnLm4wKsxL4yJTVSEXXKyeyaS8u4XY=;
        b=cVSbEjbQaVl8FabO16YH00cEYnBt0KAjhTShNF8m51s8uJPBTK2zVem9NnsxeG24Pj
         1BBLnFzq5VGx0Y05wtvkA9Up/Blzo/j2l0YpV7axqw165/D7WOgwzVOiO5XMauUxZMbP
         8gqv2BKPRGj+8ZizYJiY5BHugSNb0bqI6pfbg5/qcXU7tIF/uoDjtG1cyaNn325ut0nO
         xbCArCqfmTzVn9sg8u610hjXYV36HydzMU1+dFTl0z8nGifKMkyBKfMhYuzzK/GNkdWa
         aqQj9eDRxvNmv24TvNc2XZgIS8T1o1c49wQS9WuDlc3t+LPr7na2nYHa/9LAZxzLb8Qf
         jM6g==
X-Gm-Message-State: AOJu0YzgjpajdatjnsLRWzaGq06djdhJehH935s5YXdb1JRobL3Z0zQd
	V0QkPVnUAiVZ5kKYntNpH1OlwjlStC/o1LW2z+Ekvhp3Je8PpX0tkowmMphuqSfOtRLPSLXwf/2
	J0FSAIIItYGtb9FQ/jplWHe4C+MPTlgY7ouE=
X-Google-Smtp-Source: AGHT+IHz019fpWrtq/DuQZWQKSGVT5mIwcCoPb/ruxsh38hfBhenAoM2Sq/bAW2ujvYGOGUXT6Y5Pqb1lpA6U8nbLgY=
X-Received: by 2002:a67:e3b2:0:b0:48d:7126:e27e with SMTP id
 ada2fe7eead31-48dae3ee3e6mr9762157137.33.1718644929371; Mon, 17 Jun 2024
 10:22:09 -0700 (PDT)
MIME-Version: 1.0
References: <DM8PR11MB5669244330546D6C5C985281EDCD2@DM8PR11MB5669.namprd11.prod.outlook.com>
In-Reply-To: <DM8PR11MB5669244330546D6C5C985281EDCD2@DM8PR11MB5669.namprd11.prod.outlook.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Mon, 17 Jun 2024 18:21:58 +0100
Message-ID: <CANPvuRm-EzMib+vgKRiRNB3Y9F=W_qZ2JLo-3Pe8enAnO-MsXQ@mail.gmail.com>
Subject: Re: [yocto] bb.utils.contains() and 'inherit' issue
To: yocto@lists.yoctoproject.org, lukasz.zemla@woodward.com
Content-Type: multipart/alternative; boundary="00000000000082a4c7061b19344e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Jun 2024 17:22:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63353

--00000000000082a4c7061b19344e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Lukasz Zemla via lists.yoctoproject.org <lukasz.zemla=3D
woodward.com@lists.yoctoproject.org> escreveu (segunda, 17/06/2024 =C3=A0(s=
)
18:07):

> Hello,
>
> I believe, the bb.utils.contains() statement is being evaluated 'as it
> goes', so any changes done in .bbappend files will not be reflected in th=
at
> expression.
>
> For example, I wanted to enable 'privdrop' PACKAGECONFIG for 'chrony'
> package, however adding PACKAGECONFIG:append =3D "privdrop" in my bbappen=
d
> file has not resulted in inheriting the 'useradd' package:
>

There is an extra space missing in before the privdrop, the :append
override does not add the extra space.

Can you try with:  PACKAGECONFIG:append =3D " privdrop" ?

Jose


>     inherit ${@bb.utils.contains('PACKAGECONFIG', 'privdrop', 'useradd',
> '', d)}
>
> I believe, to address that issue the release 5.0 introduced the
> 'inherit_defer' statement.
>
> Do I understand correctly that all following occurrences of 'inherit' in
> meta-openembedded should be replaced by 'inherit_defer'?
>
> $ grep -r "inherit \${@bb.utils.contains" .
> ./meta-openembedded/meta-multimedia/recipes-multimedia/vlc/vlc_3.0.20.bb:=
inherit
> ${@bb.utils.contains('PACKAGECONFIG', 'qt5', 'qmake5_paths', '', d)}
> ./meta-openembedded/meta-webserver/recipes-webadmin/cockpit/cockpit_304.b=
b:inherit
> ${@bb.utils.contains('PACKAGECONFIG', 'old-bridge', '',
> 'python3targetconfig', d)}
>
> ./meta-openembedded/meta-networking/recipes-protocols/openlldp/openlldp_1=
.1.1.bb:inherit
> ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}
>
> ./meta-openembedded/meta-networking/recipes-filter/nftables/nftables_1.0.=
9.bb:inherit${@bb.utils.contains('PACKAGECONFIG',
> 'python', 'setuptools3', '', d)}
>
> ./meta-openembedded/meta-networking/recipes-connectivity/networkmanager/n=
etworkmanager_1.46.0.bb:inherit
> ${@bb.utils.contains('PACKAGECONFIG', 'vala', 'vala', '', d)}
> ./meta-networking/recipes-support/chrony/chrony_4.5.bb:inherit
> ${@bb.utils.contains('PACKAGECONFIG', 'privdrop', 'useradd', '', d)}
>
> ./meta-openembedded/meta-networking/recipes-support/wireshark/wireshark_4=
.2.4.bb:inherit
> ${@bb.utils.contains('PACKAGECONFIG', 'qt5', 'cmake_qt5', '', d)}
> ./meta-openembedded/meta-oe/recipes-support/lio-utils/lio-utils_4.1.bb:in=
herit
> ${@bb.utils.contains("BBFILE_COLLECTIONS", "meta-python2", "distutils", "=
",
> d)}
> ./meta-openembedded/meta-oe/recipes-support/poppler/poppler_23.04.0.bb:in=
herit
> ${@bb.utils.contains('PACKAGECONFIG', 'qt5', 'cmake_qt5', '', d)}
> ./meta-openembedded/meta-oe/recipes-extended/wxwidgets/wxwidgets_3.2.1.bb=
:inherit
> ${@bb.utils.contains('PACKAGECONFIG', 'qt', 'cmake_qt5', 'cmake', d)}
>
> ./meta-openembedded/meta-oe/recipes-extended/openlmi/openlmi-tools_0.10.5=
.bb:inherit
> ${@bb.utils.contains("BBFILE_COLLECTIONS", "meta-python2", "setuptools",
> "", d)}
> ./meta-openembedded/meta-oe/recipes-dbs/mysql/mysql-python_1.2.5.bb:inher=
it
> ${@bb.utils.contains("BBFILE_COLLECTIONS", "meta-python2", "setuptools",
> "", d)}
>
> I use Yocto 5.0.1.
>
> Best regards,
> Lukasz
>
> ***
> The information in this email is confidential and intended solely for the
> individual or entity to whom it is addressed.  If you have received this
> email in error please notify the sender by return e-mail, delete this
> email, and refrain from any disclosure or action based on the information=
.
> This email system is not authorized to receive Controlled Unclassified
> Information (CUI). Please contact your intended Woodward recipient to
> identify permissible and authorized options for transmission of CUI to a
> Woodward recipient.
> ***
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63351):
> https://lists.yoctoproject.org/g/yocto/message/63351
> Mute This Topic: https://lists.yoctoproject.org/mt/106724990/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--00000000000082a4c7061b19344e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Lukasz Zemla via <a href=3D"http://li=
sts.yoctoproject.org">lists.yoctoproject.org</a> &lt;lukasz.zemla=3D<a href=
=3D"mailto:woodward.com@lists.yoctoproject.org">woodward.com@lists.yoctopro=
ject.org</a>&gt; escreveu (segunda, 17/06/2024 =C3=A0(s) 18:07):<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">Hello,<br>
<br>
I believe, the bb.utils.contains() statement is being evaluated &#39;as it =
goes&#39;, so any changes done in .bbappend files will not be reflected in =
that expression. <br>
<br>
For example, I wanted to enable &#39;privdrop&#39; PACKAGECONFIG for &#39;c=
hrony&#39; package, however adding PACKAGECONFIG:append =3D &quot;privdrop&=
quot; in my bbappend file has not resulted in inheriting the &#39;useradd&#=
39; package:<br></blockquote><div><br></div><div>There is an extra space mi=
ssing in before the=C2=A0privdrop, the :append override does not add the ex=
tra space.<br><br></div><div>Can you try with:=C2=A0 PACKAGECONFIG:append =
=3D &quot;=C2=A0privdrop&quot; ?<br><br>Jose<br><br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
<br>
=C2=A0 =C2=A0 inherit ${@bb.utils.contains(&#39;PACKAGECONFIG&#39;, &#39;pr=
ivdrop&#39;, &#39;useradd&#39;, &#39;&#39;, d)}<br>
<br>
I believe, to address that issue the release 5.0 introduced the &#39;inheri=
t_defer&#39; statement.<br>
<br>
Do I understand correctly that all following occurrences of &#39;inherit&#3=
9; in meta-openembedded should be replaced by &#39;inherit_defer&#39;?<br>
<br>
$ grep -r &quot;inherit \${@bb.utils.contains&quot; .<br>
./meta-openembedded/meta-multimedia/recipes-multimedia/vlc/vlc_3.0.20.bb:in=
herit ${@bb.utils.contains(&#39;PACKAGECONFIG&#39;, &#39;qt5&#39;, &#39;qma=
ke5_paths&#39;, &#39;&#39;, d)}<br>
./meta-openembedded/meta-webserver/recipes-webadmin/cockpit/cockpit_304.bb:=
inherit ${@bb.utils.contains(&#39;PACKAGECONFIG&#39;, &#39;old-bridge&#39;,=
 &#39;&#39;, &#39;python3targetconfig&#39;, d)}<br>
./meta-openembedded/meta-networking/recipes-protocols/openlldp/openlldp_1.1=
.1.bb:inherit ${@bb.utils.contains(&#39;DISTRO_FEATURES&#39;, &#39;systemd&=
#39;, &#39;systemd&#39;, &#39;&#39;, d)}<br>
./meta-openembedded/meta-networking/recipes-filter/nftables/nftables_1.0.9.=
bb:inherit${@bb.utils.contains(&#39;PACKAGECONFIG&#39;, &#39;python&#39;, &=
#39;setuptools3&#39;, &#39;&#39;, d)}<br>
./meta-openembedded/meta-networking/recipes-connectivity/networkmanager/net=
workmanager_1.46.0.bb:inherit ${@bb.utils.contains(&#39;PACKAGECONFIG&#39;,=
 &#39;vala&#39;, &#39;vala&#39;, &#39;&#39;, d)}<br>
./meta-networking/recipes-support/chrony/chrony_4.5.bb:inherit ${@bb.utils.=
contains(&#39;PACKAGECONFIG&#39;, &#39;privdrop&#39;, &#39;useradd&#39;, &#=
39;&#39;, d)}<br>
./meta-openembedded/meta-networking/recipes-support/wireshark/wireshark_4.2=
.4.bb:inherit ${@bb.utils.contains(&#39;PACKAGECONFIG&#39;, &#39;qt5&#39;, =
&#39;cmake_qt5&#39;, &#39;&#39;, d)}<br>
./meta-openembedded/meta-oe/recipes-support/lio-utils/lio-utils_4.1.bb:inhe=
rit ${@bb.utils.contains(&quot;BBFILE_COLLECTIONS&quot;, &quot;meta-python2=
&quot;, &quot;distutils&quot;, &quot;&quot;, d)}<br>
./meta-openembedded/meta-oe/recipes-support/poppler/poppler_23.04.0.bb:inhe=
rit ${@bb.utils.contains(&#39;PACKAGECONFIG&#39;, &#39;qt5&#39;, &#39;cmake=
_qt5&#39;, &#39;&#39;, d)}<br>
./meta-openembedded/meta-oe/recipes-extended/wxwidgets/wxwidgets_3.2.1.bb:i=
nherit ${@bb.utils.contains(&#39;PACKAGECONFIG&#39;, &#39;qt&#39;, &#39;cma=
ke_qt5&#39;, &#39;cmake&#39;, d)}<br>
./meta-openembedded/meta-oe/recipes-extended/openlmi/openlmi-tools_0.10.5.b=
b:inherit ${@bb.utils.contains(&quot;BBFILE_COLLECTIONS&quot;, &quot;meta-p=
ython2&quot;, &quot;setuptools&quot;, &quot;&quot;, d)}<br>
./meta-openembedded/meta-oe/recipes-dbs/mysql/mysql-python_1.2.5.bb:inherit=
 ${@bb.utils.contains(&quot;BBFILE_COLLECTIONS&quot;, &quot;meta-python2&qu=
ot;, &quot;setuptools&quot;, &quot;&quot;, d)}<br>
<br>
I use Yocto 5.0.1.<br>
<br>
Best regards,<br>
Lukasz<br>
<br>
***<br>
The information in this email is confidential and intended solely for the i=
ndividual or entity to whom it is addressed.=C2=A0=C2=A0If you have receive=
d this email in error please notify the sender by return e-mail, delete thi=
s email, and refrain from any disclosure or action based on the information=
. This email system is not authorized to receive Controlled Unclassified In=
formation (CUI). Please contact your intended Woodward recipient to identif=
y permissible and authorized options for transmission of CUI to a Woodward =
recipient.<br>
***<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63351): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63351" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63351</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/106724990/505=
2612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/106724990/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div>

--00000000000082a4c7061b19344e--

