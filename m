Return-Path: <dan@engineeredarts.co.uk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB061C433F5
	for <webhook@archiver.kernel.org>; Fri, 27 May 2022 15:38:09 +0000 (UTC)
Received: from mail.engineeredarts.co.uk (mail.engineeredarts.co.uk
 [62.3.104.53])
 by mx.groups.io with SMTP id smtpd.web11.5132.1653665869344239943
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 May 2022 08:37:51 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@engineeredarts.co.uk
 header.s=modoboa header.b=OF707WJk;
 spf=pass (domain: engineeredarts.co.uk, ip: 62.3.104.53,
 mailfrom: dan@engineeredarts.co.uk)
Received: from localhost (localhost [127.0.0.1])
	by mail.engineeredarts.co.uk (Postfix) with ESMTP id F27B3285EF2;
	Fri, 27 May 2022 16:37:45 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=engineeredarts.co.uk; s=modoboa; t=1653665866;
	bh=9dziDLjv/rTzL2cJD3yDLt1XcZd6HNj4235SX0Y1j3I=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=OF707WJklLcxiz0mLEiO4U+mNQPZ52+aZWDmOgCbL3vYQI4Ofdd799fIL+MKxz4X2
	 eHYAe22kRTXtvadgGjWanRGu7D2a8sjju5AYqS4OcsZhvFVVZr4nZ7KwYZzTNMiZdK
	 t6ah6YFBPIT4GPpb9gbW6yDAO5htu4JLXaW2zeV3Gd+J+JlCJQO6YNWaQpeyl6LGmI
	 cyhX3mAumUb90fKeNf//gigfgEDqGmozE/PO5GqF7BoZx25/hgyh2IGZqUheTBeEQA
	 dPksnaoDB5tpZDv/MT3z/8tR4IyPAnHOpzlaKbhvWETpbt7P6pnxKCL8uKwmFY+MtJ
	 1ZVa+HBchJMWA==
X-Virus-Scanned: Debian amavisd-new at mail.engineeredarts.co.uk
Received: from mail.engineeredarts.co.uk ([127.0.0.1])
	by localhost (mail.engineeredarts.co.uk [127.0.0.1]) (amavisd-new,
 port 10026)
	with ESMTP id W-cfvthFPZIZ; Fri, 27 May 2022 16:37:41 +0100 (BST)
Received: from [10.3.2.6] (cpc160893-lutn15-2-0-cust235.9-3.cable.virginm.net
 [86.16.192.236])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.engineeredarts.co.uk (Postfix) with ESMTPSA;
	Fri, 27 May 2022 16:37:41 +0100 (BST)
Content-Type: multipart/alternative;
 boundary="------------U0HFpKftNKrBKGLKVWYAeMUn"
Message-ID: <4ef989e9-e640-e6e7-59e7-e8a64c724b18@engineeredarts.co.uk>
Date: Fri, 27 May 2022 16:37:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [yocto] host file contamination with recipes using cmake and
 find_package
Content-Language: en-US
To: Mikko.Rapeli@bmw.de
Cc: yocto@lists.yoctoproject.org
References: <VDCD.1653664077949368330.uKFK@lists.yoctoproject.org>
 <YpDtCghBbiV8fiZO@korppu>
From: Daniel Squires <dan@engineeredarts.co.uk>
In-Reply-To: <YpDtCghBbiV8fiZO@korppu>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 May 2022 15:38:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57203

This is a multi-part message in MIME format.
--------------U0HFpKftNKrBKGLKVWYAeMUn
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

We are indeed using


inherit cmake


The CMakeLists.txt adds a few bits to CMAKE_CXX_FLAGS but does not=20
outright clobber it. I have noticed in other recipes some things like:


EXTRA_OECONF =3D " --with-openssl=3D${STAGING_DIR_HOST}${prefix} \
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 "

And from the docs it seems like this maybe intended to help with this,=20
but I am not entirely sure. Does that look right?=C2=A0 I don't currently=
=20
have access to one of the systems where the build is failing but I'll=20
try it out next week.

Many thanks


On 27/05/2022 16:23, Mikko.Rapeli@bmw.de wrote:
> Hi,
>
> On Fri, May 27, 2022 at 08:07:57AM -0700, Daniel Squires wrote:
>> Hi,
>> We have an internal source tree, I'll call it libA for brevity here, w=
hich uses cmake and find_package to build against openssl as follows:
>>
>> find_package(OpenSSL REQUIRED)
>>
>> The recipe for this source runs fine but some subsequent ones that dep=
end on it (libB, libC etc) fail on some systems saying that a library fil=
e (libcrypto.so.1.1) required by libA cannot be found. Now it seems that =
the build for libA is managing to find and link against=C2=A0libcrypto.so=
.1.1 from the host libraries found under /usr. I have seen issues like th=
is many years ago but not experienced any such issues since then until re=
cently.
>>
>> Do we need to do something special in the recipe to prevent this happe=
ning? At first I thought I was going to find some hardcoded=C2=A0 absolut=
e paths in the CMakeLists.txt file of libA as I have in the past but ther=
e is nothing like that.
> Usually the problem is that the application CMakeLists.txt or other cus=
tom CMake
> snippet code is not obeying the bitbake generated toolchain.cmake file =
and the
> variables set there. I presume your application recipe is doing "inheri=
t cmake".
> The application side can for example overwrite the various variables wh=
ich set
> the cross compiler sysroot.
>
> Cheers,
>
> -Mikko
--=20

*Dan Squires*
Senior Roboticist

www.engineeredarts.co.uk <https://www.engineeredarts.co.uk/>

EA Phone Number+44 (0)1326 378129

RoboThespian FB <https://www.facebook.com/RobotThespian> RoboThespian=20
Twitter <https://twitter.com/robothespian> EA YouTube=20
<http://youtube.com/EngineeredArts>
Engineered Arts Logo <https://www.engineeredarts.co.uk/>
*

Engineered Arts Ltd *
E1-E3 Church View Business Park,
Bickland Water Road,
Falmouth Cornwall,
TR11 4FZ
United Kingdom

Subscribe to Mailing List <https://www.engineeredarts.co.uk/mailing-list/=
>
--------------U0HFpKftNKrBKGLKVWYAeMUn
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>We are indeed using</p>
    <p><br>
    </p>
    <p>inherit cmake</p>
    <p><br>
    </p>
    <p>The CMakeLists.txt adds a few bits to CMAKE_CXX_FLAGS but does
      not outright clobber it. I have noticed in other recipes some
      things like:</p>
    <p><br>
    </p>
    <p>EXTRA_OECONF =3D " --with-openssl=3D${STAGING_DIR_HOST}${prefix} \=
<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 "<br>
    </p>
    <p>And from the docs it seems like this maybe intended to help with
      this, but I am not entirely sure. Does that look right?=C2=A0 I don=
't
      currently have access to one of the systems where the build is
      failing but I'll try it out next week.</p>
    <p>Many thanks<br>
    </p>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 27/05/2022 16:23,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:Mikko.Rapeli@b=
mw.de">Mikko.Rapeli@bmw.de</a> wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:YpDtCghBbiV8fiZO@korppu">
      <pre class=3D"moz-quote-pre" wrap=3D"">Hi,

On Fri, May 27, 2022 at 08:07:57AM -0700, Daniel Squires wrote:
</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">Hi,
We have an internal source tree, I'll call it libA for brevity here, whic=
h uses cmake and find_package to build against openssl as follows:

find_package(OpenSSL REQUIRED)

The recipe for this source runs fine but some subsequent ones that depend=
 on it (libB, libC etc) fail on some systems saying that a library file (=
libcrypto.so.1.1) required by libA cannot be found. Now it seems that the=
 build for libA is managing to find and link against=C2=A0libcrypto.so.1.=
1 from the host libraries found under /usr. I have seen issues like this =
many years ago but not experienced any such issues since then until recen=
tly.

Do we need to do something special in the recipe to prevent this happenin=
g? At first I thought I was going to find some hardcoded=C2=A0 absolute p=
aths in the CMakeLists.txt file of libA as I have in the past but there i=
s nothing like that.
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
Usually the problem is that the application CMakeLists.txt or other custo=
m CMake
snippet code is not obeying the bitbake generated toolchain.cmake file an=
d the
variables set there. I presume your application recipe is doing "inherit =
cmake".
The application side can for example overwrite the various variables whic=
h set
the cross compiler sysroot.

Cheers,

-Mikko</pre>
    </blockquote>
    <div class=3D"moz-signature">-- <br>
      <br>
      <font face=3D"Helvetica, Arial, sans-serif"><b>Dan Squires</b></fon=
t><br>
      <font size=3D"-1" color=3D"#666666">Senior Roboticist</font><br>
      <a moz-do-not-send=3D"true" href=3D"https://www.engineeredarts.co.u=
k/"><font
          size=3D"-2" color=3D"#509ed2"><br>
          <font color=3D"#000000">www.engineeredarts.co.uk</font></font><=
/a><font
        size=3D"-2"><br>
        <br>
      </font><font size=3D"-2"><img
src=3D"https://www.engineeredarts.co.uk/wp-content/uploads/2018/05/Phone.=
png"
          alt=3D"EA Phone Number" moz-do-not-send=3D"true" class=3D""
          width=3D"23" height=3D"23" align=3D"left"></font><font size=3D"=
-2">+44
        (0)1326 378129</font><br>
      <br>
      <a href=3D"https://www.facebook.com/RobotThespian"><img
src=3D"https://www.engineeredarts.co.uk/wp-content/uploads/2018/05/facebo=
ok.png"
          alt=3D"RoboThespian FB" moz-do-not-send=3D"true" class=3D""
          width=3D"11" height=3D"17" border=3D"0" align=3D"top"></a>
      <a href=3D"https://twitter.com/robothespian"><img
src=3D"https://www.engineeredarts.co.uk/wp-content/uploads/2018/05/twitte=
r.png"
          alt=3D"RoboThespian Twitter" moz-do-not-send=3D"true" class=3D"=
"
          width=3D"19" height=3D"16" border=3D"0"></a> <a
        href=3D"http://youtube.com/EngineeredArts"><img
src=3D"https://www.engineeredarts.co.uk/wp-content/uploads/2018/05/youtub=
e.png"
          alt=3D"EA YouTube" moz-do-not-send=3D"true" class=3D"" width=3D=
"21"
          height=3D"14" border=3D"0"></a><br>
      <a href=3D"https://www.engineeredarts.co.uk/"><font size=3D"-2"><im=
g
src=3D"https://www.engineeredarts.co.uk/wp-content/uploads/2018/05/EngArt=
s-Logo.png"
            alt=3D"Engineered Arts Logo" class=3D"" moz-do-not-send=3D"Tr=
ue"
            width=3D"131" height=3D"39" border=3D"0" align=3D"left"></fon=
t></a><br>
      <font size=3D"-2"><b><br>
          <font color=3D"#666666"><br>
            Engineered Arts Ltd </font></b><font color=3D"#666666"><br>
          E1-E3 Church View Business Park, <br>
          Bickland Water Road,<br>
          Falmouth Cornwall,<br>
          TR11 4FZ <br>
        </font><font size=3D"-2" color=3D"#666666">United Kingdom<br>
          <br>
          <a href=3D"https://www.engineeredarts.co.uk/mailing-list/"><img
src=3D"https://www.engineeredarts.co.uk/wp-content/uploads/2018/05/EA_Sub=
cribe.jpg"
              alt=3D"Subscribe to Mailing List" moz-do-not-send=3D"true"
              width=3D"366" height=3D"68" border=3D"0"></a></font></font>=
</div>
  </body>
</html>

--------------U0HFpKftNKrBKGLKVWYAeMUn--

