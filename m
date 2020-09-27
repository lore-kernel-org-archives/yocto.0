Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.22280.1601240552485496145
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Sep 2020 14:02:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kpnmail.nl header.s=kpnmail01 header.b=gWzsXmpg;
 spf=none, err=permanent DNS error (domain: iae.nl, ip: 198.145.29.25, mailfrom: pwr@iae.nl)
Received: from cpsmtpb-ews03.kpnxchange.com (cpsmtpb-ews03.kpnxchange.com [213.75.39.6])
	by mail.yoctoproject.org (Postfix) with ESMTP id 80D2A38C0857
	for <yocto@yoctoproject.org>; Sun, 27 Sep 2020 14:02:31 -0700 (PDT)
Received: from cpsps-ews09.kpnxchange.com ([10.94.84.176]) by cpsmtpb-ews03.kpnxchange.com with Microsoft SMTPSVC(8.5.9600.16384);
	 Sun, 27 Sep 2020 23:02:28 +0200
X-Brand: +YTO/YbK+g==
X-KPN-SpamVerdict: e1=0;e2=0;e3=0;e4=(e1=10;e3=10;e2=11;e4=10);EVW:Whi
	te;BM:NotScanned;FinalVerdict:Clean
X-CMAE-Analysis: v=2.4 cv=YfkDWydf c=1 sm=1 tr=0 ts=5f70fde4
	 cx=a_idp_e a=ShNidqeCEQB33TAKUUzslw==:117
	 a=xRGMmYaI5WpIYOJh0XI+dg==:17 a=8SZ6bD3cDFYA:10 a=reM5J-MqmosA:10
	 a=r77TgQKjGQsHNAKrUKIA:9 a=CCpqsmhAAAAA:8 a=EQbXkLW0EEH5WHw0xwIA:9
	 a=QEXdDO2ut3YA:10 a=10jmkRBKaHMA:10 a=WzZ83YflHa6Cok1XqIEA:9
	 a=vEOJn7dbhwOyDMD6:21 a=_W_S_7VecoQA:10 a=ul9cdbp4aOFLsgKbc677:22
X-CM-AcctID: kpn@feedback.cloudmark.com
Received: from smtp.kpnmail.nl ([195.121.84.11]) by cpsps-ews09.kpnxchange.com over TLS secured channel with Microsoft SMTPSVC(8.5.9600.16384);
	 Sun, 27 Sep 2020 23:02:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kpnmail.nl; s=kpnmail01;
	h=content-type:mime-version:date:message-id:subject:from:to;
	bh=7rHVPwmsabok8aaIzg2viDGgyaVjX/94QCeilthf1iQ=;
	b=gWzsXmpg3gn9oWEh+RdmxpJsaKTPQ7fJAQ6O4yXn5yh364Cy6n+h4xLnndCBL65VYLyt8/tkOgWOV
	 SEzLsAbpjASfJkf5c2lEPYG9trUZWQCXR/mjcyV4w0H3yrTdUydlarHprk92rH8NHa6c87FAp419Tt
	 l9nL+WSW6hF5gEkI=
X-Originating-IP: 86.89.1.39
Received: from [192.168.3.42] (86-89-1-39.fixed.kpn.net [86.89.1.39])
	by smtp.kpnmail.nl (Halon) with ESMTP
	id c046fe01-0104-11eb-811f-00505699b758;
	Sun, 27 Sep 2020 23:02:28 +0200 (CEST)
To: yocto@yoctoproject.org
Reply-To: yocto@yoctoproject.org
From: "Robert" <pwr@iae.nl>
Subject: poky-dunfell-23.0.2: WARNING: Your host glibc verson (2.32) is newer than that in uninative (2.31). Disabling uninative so that sstate is not corrupted.
Message-ID: <3293b1b2-36fe-3bec-e0b7-07cd228fc4c7@iae.nl>
Date: Sun, 27 Sep 2020 23:02:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
X-OriginalArrivalTime: 27 Sep 2020 21:02:27.0887 (UTC) FILETIME=[81CFCBF0:01D69511]
X-RcptDomain: yoctoproject.org
Content-Type: multipart/alternative;
 boundary="------------F95EFA95881216AFBEE28B0A"
Content-Language: en-GB

--------------F95EFA95881216AFBEE28B0A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hello list,

The warning in the subject has turned into an error.

I'm building a Yocto project based on poky-dunfell-23.0.2

I get this error:
ERROR: dpkg-native-1.19.7-r0 do_compile: oe_runmake failed

| ../../../dpkg-1.19.7/lib/compat/strsignal.c: In function =E2=80=98test_=
strsignal=E2=80=99:
| ../../../dpkg-1.19.7/lib/compat/strsignal.c:71:10: error:=20
=E2=80=98sys_siglist=E2=80=99 undeclared (first use in this function)
|=C2=A0=C2=A0=C2=A0 71 |=C2=A0=C2=A0 return sys_siglist[s];

I found the reason for this error:
Release notes of glibc 2.32:
https://sourceware.org/pipermail/libc-announce/2020/000029.html

* The deprecated arrays *sys_siglist*, _sys_siglist, and sys_sigabbrev
 =C2=A0 are no longer available to newly linked binaries, and their decla=
rations
 =C2=A0 have been *removed* from <string.h>.=C2=A0 They are exported sole=
ly as
 =C2=A0 compatibility symbols to support old binaries.=C2=A0 All programs=
 should use
 =C2=A0 strsignal instead.


To solve it I could downgrade the glibc library version of my system=20
(general consensus on forums is that, that is a bad idea).
Other option:
In the master branch I find a recipe for dpkg 1.20.5, can I simply=20
upgrade the dpkg version (1.19.7) in the dunfell release with the master =

branch version (1.20.5)?
Could it break anything and how do I know it will solve my problem?=20
Other then try it.
Or is there another solution?

uname -rmo
Linux 5.4.64-1-MANJARO=C2=A0 x86_64 GNU/Linux

Thanks,
Robert.


--------------F95EFA95881216AFBEE28B0A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    Hello list,<br>
    <br>
    The warning in the subject has turned into an error.<br>
    <br>
    I'm building a Yocto project based on poky-dunfell-23.0.2<br>
    <br>
    I get this error:<br>
    ERROR: dpkg-native-1.19.7-r0 do_compile: oe_runmake failed<br>
    <br>
    | ../../../dpkg-1.19.7/lib/compat/strsignal.c: In function
    =E2=80=98test_strsignal=E2=80=99:<br>
    | ../../../dpkg-1.19.7/lib/compat/strsignal.c:71:10: error:
    =E2=80=98sys_siglist=E2=80=99 undeclared (first use in this function)=
<br>
    |=C2=A0=C2=A0=C2=A0 71 |=C2=A0=C2=A0 return sys_siglist[s];<br>
    <br>
    I found the reason for this error:<br>
    Release notes of glibc 2.32:<br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://sourceware.org/pip=
ermail/libc-announce/2020/000029.html">https://sourceware.org/pipermail/l=
ibc-announce/2020/000029.html</a><br>
    <br>
    * The deprecated arrays <b>sys_siglist</b>, _sys_siglist, and
    sys_sigabbrev<br>
    =C2=A0 are no longer available to newly linked binaries, and their
    declarations<br>
    =C2=A0 have been <b>removed</b> from &lt;string.h&gt;.=C2=A0 They are=

    exported solely as<br>
    =C2=A0 compatibility symbols to support old binaries.=C2=A0 All progr=
ams
    should use<br>
    =C2=A0 strsignal instead.<br>
    <br>
    <br>
    To solve it I could downgrade the glibc library version of my system
    (general consensus on forums is that, that is a bad idea).<br>
    Other option:<br>
    In the master branch I find a recipe for dpkg 1.20.5, can I simply
    upgrade the dpkg version (1.19.7) in the dunfell release with the
    master branch version (1.20.5)?<br>
    Could it break anything and how do I know it will solve my problem?
    Other then try it.<br>
    Or is there another solution?<br>
    <br>
    uname -rmo<br>
    Linux 5.4.64-1-MANJARO=C2=A0 x86_64 GNU/Linux<br>
    <br>
    Thanks,<br>
    Robert.<br>
    <br>
  </body>
</html>

--------------F95EFA95881216AFBEE28B0A--
