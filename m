Received: from cpsmtpb-ews01.kpnxchange.com (cpsmtpb-ews01.kpnxchange.com [213.75.39.4])
 by mx.groups.io with SMTP id smtpd.web10.31985.1601282068278796199
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Sep 2020 01:34:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kpnmail.nl header.s=kpnmail01 header.b=pHAihlU0;
 spf=none, err=permanent DNS error (domain: iae.nl, ip: 213.75.39.4, mailfrom: pwr@iae.nl)
Received: from cpsps-ews30.kpnxchange.com ([10.94.84.196]) by cpsmtpb-ews01.kpnxchange.com with Microsoft SMTPSVC(8.5.9600.16384);
	 Mon, 28 Sep 2020 10:34:27 +0200
X-Brand: 7abm2Q==
X-KPN-SpamVerdict: e1=0;e2=0;e3=0;e4=(e1=10;e3=10;e2=11;e4=10);EVW:Whi
	te;BM:NotScanned;FinalVerdict:Clean
X-CMAE-Analysis: v=2.4 cv=YfkDWydf c=1 sm=1 tr=0 ts=5f71a013
	 cx=a_idp_e a=dZ5u/0G9QtS9WKCcNUBnHQ==:117
	 a=xRGMmYaI5WpIYOJh0XI+dg==:17 a=8SZ6bD3cDFYA:10 a=reM5J-MqmosA:10
	 a=r77TgQKjGQsHNAKrUKIA:9 a=Q4-j1AaZAAAA:8 a=CCpqsmhAAAAA:8
	 a=iGHA9ds3AAAA:8 a=QDd2GQAp8S_7oqss2DwA:9 a=QEXdDO2ut3YA:10
	 a=10jmkRBKaHMA:10 a=pGLkceISAAAA:8 a=bb1tPStdO__zTA0PRJ4A:9
	 a=Xs0u6kFzBK-ym6-f:21 a=_W_S_7VecoQA:10 a=9H3Qd4_ONW2Ztcrla5EB:22
	 a=ul9cdbp4aOFLsgKbc677:22 a=nM-MV4yxpKKO9kiQg6Ot:22
X-CM-AcctID: kpn@feedback.cloudmark.com
Received: from smtp.kpnmail.nl ([195.121.84.13]) by cpsps-ews30.kpnxchange.com over TLS secured channel with Microsoft SMTPSVC(8.5.9600.16384);
	 Mon, 28 Sep 2020 10:34:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=kpnmail.nl; s=kpnmail01;
	h=content-type:mime-version:date:message-id:from:to:subject;
	bh=/fa6DSOutrqob+ceSf3ZArYCc2WpH7WVa+M0KbC8klU=;
	b=pHAihlU0peEL8F41V0urB9UAfoauLzqkrO3aooHfSvxVT8HLM2JfJlMGkrMoKq6UV5MhbPNxjNg4l
	 2d16lCsaoCBkLIilztnNY2tbNkV3zVdZPxh0cRpR1c+70bTn5adlSOMn95gtQIw5SV58Yd7dwaAtDr
	 ruqStplJrsaW3jPg=
X-Originating-IP: 86.89.1.39
Received: from [192.168.3.42] (86-89-1-39.fixed.kpn.net [86.89.1.39])
	by smtp.kpnmail.nl (Halon) with ESMTP
	id 6b58072a-0165-11eb-8513-005056998788;
	Mon, 28 Sep 2020 10:34:26 +0200 (CEST)
Subject: Re: [yocto] poky-dunfell-23.0.2: WARNING: Your host glibc verson (2.32) is newer than that in uninative (2.31). Disabling uninative so that sstate is not corrupted.
To: yocto@lists.yoctoproject.org
References: <3293b1b2-36fe-3bec-e0b7-07cd228fc4c7@iae.nl>
 <CA+chaQc2Cbwnd7A30B03os3xeec-JQe28DVw-7cWartjThuLZQ@mail.gmail.com>
Reply-To: yocto@lists.yoctoproject.org
From: "Robert" <pwr@iae.nl>
Message-ID: <7cf9c1af-ac0c-4178-df9d-5d7a76d89821@iae.nl>
Date: Mon, 28 Sep 2020 10:34:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CA+chaQc2Cbwnd7A30B03os3xeec-JQe28DVw-7cWartjThuLZQ@mail.gmail.com>
Return-Path: pwr@iae.nl
X-OriginalArrivalTime: 28 Sep 2020 08:34:27.0139 (UTC) FILETIME=[2D36E130:01D69572]
X-RcptDomain: lists.yoctoproject.org
Content-Type: multipart/alternative;
 boundary="------------62FA8FCB7EF506910867CBA2"
Content-Language: en-GB

--------------62FA8FCB7EF506910867CBA2
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

I tried the latest uninative from the same link, it will remove the=20
warning but it doesn't solve the problem.
If something else is wrong/different I would very much like a suggestion=
=20
where to start looking for this difference.
Finding something that isn't there is not easy :-\

On 28-09-2020 04:07, Martin Jansa wrote:
> For uninative you can just use latest dunfell with
> https://git.openembedded.org/openembedded-core/commit/?h=3Ddunfell&id=3D=
0f01fb2286335dd0da0c7be3f56c36a0fced3e42
>
> For dpkg you can just try latest, but I'm not seeing it failing with=20
> glibc-2.32 in ubuntu-20.04, something else might be wrong/different in=
=20
> your setup.
>
> On Sun, Sep 27, 2020 at 11:02 PM Robert <pwr@iae.nl=20
> <mailto:pwr@iae.nl>> wrote:
>
>     Hello list,
>
>     The warning in the subject has turned into an error.
>
>     I'm building a Yocto project based on poky-dunfell-23.0.2
>
>     I get this error:
>     ERROR: dpkg-native-1.19.7-r0 do_compile: oe_runmake failed
>
>     | ../../../dpkg-1.19.7/lib/compat/strsignal.c: In function
>     =E2=80=98test_strsignal=E2=80=99:
>     | ../../../dpkg-1.19.7/lib/compat/strsignal.c:71:10: error:
>     =E2=80=98sys_siglist=E2=80=99 undeclared (first use in this function=
)
>     |=C2=A0=C2=A0=C2=A0 71 |=C2=A0=C2=A0 return sys_siglist[s];
>
>     I found the reason for this error:
>     Release notes of glibc 2.32:
>     https://sourceware.org/pipermail/libc-announce/2020/000029.html
>
>     * The deprecated arrays *sys_siglist*, _sys_siglist, and sys_sigabbr=
ev
>     =C2=A0 are no longer available to newly linked binaries, and their
>     declarations
>     =C2=A0 have been *removed* from <string.h>.=C2=A0 They are exported =
solely as
>     =C2=A0 compatibility symbols to support old binaries.=C2=A0 All prog=
rams
>     should use
>     =C2=A0 strsignal instead.
>
>
>     To solve it I could downgrade the glibc library version of my
>     system (general consensus on forums is that, that is a bad idea).
>     Other option:
>     In the master branch I find a recipe for dpkg 1.20.5, can I simply
>     upgrade the dpkg version (1.19.7) in the dunfell release with the
>     master branch version (1.20.5)?
>     Could it break anything and how do I know it will solve my
>     problem? Other then try it.
>     Or is there another solution?
>
>     uname -rmo
>     Linux 5.4.64-1-MANJARO=C2=A0 x86_64 GNU/Linux
>
>     Thanks,
>     Robert.
>
>
>
>
>
>=20
>


--------------62FA8FCB7EF506910867CBA2
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">I tried the latest uninative from the
      same link, it will remove the warning but it doesn't solve the
      problem.<br>
      If something else is wrong/different I would very much like a
      suggestion where to start looking for this difference.<br>
      Finding something that isn't there is not easy :-\<br>
      <br>
      On 28-09-2020 04:07, Martin Jansa wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CA+chaQc2Cbwnd7A30B03os3xeec-JQe28DVw-7cWartjThuLZQ@mail.gmail=
.com">
      <div dir=3D"ltr">For uninative you can just use latest dunfell with
        <div><a
href=3D"https://git.openembedded.org/openembedded-core/commit/?h=3Ddunfell=
&amp;id=3D0f01fb2286335dd0da0c7be3f56c36a0fced3e42"
            moz-do-not-send=3D"true">https://git.openembedded.org/openembe=
dded-core/commit/?h=3Ddunfell&amp;id=3D0f01fb2286335dd0da0c7be3f56c36a0fced=
3e42</a><br>
        </div>
        <div><br>
        </div>
        <div>For dpkg you can just try latest, but I'm not seeing it
          failing with glibc-2.32 in ubuntu-20.04, something else might
          be wrong/different in your setup.</div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Sun, Sep 27, 2020 at 11:0=
2
          PM Robert &lt;<a href=3D"mailto:pwr@iae.nl"
            moz-do-not-send=3D"true">pwr@iae.nl</a>&gt; wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote">
          <div> Hello list,<br>
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
            =E2=80=98sys_siglist=E2=80=99 undeclared (first use in this fu=
nction)<br>
            |=C2=A0=C2=A0=C2=A0 71 |=C2=A0=C2=A0 return sys_siglist[s];<br=
>
            <br>
            I found the reason for this error:<br>
            Release notes of glibc 2.32:<br>
            <a
              href=3D"https://sourceware.org/pipermail/libc-announce/2020/=
000029.html"
              target=3D"_blank" moz-do-not-send=3D"true">https://sourcewar=
e.org/pipermail/libc-announce/2020/000029.html</a><br>
            <br>
            * The deprecated arrays <b>sys_siglist</b>, _sys_siglist,
            and sys_sigabbrev<br>
            =C2=A0 are no longer available to newly linked binaries, and
            their declarations<br>
            =C2=A0 have been <b>removed</b> from &lt;string.h&gt;.=C2=A0 T=
hey are
            exported solely as<br>
            =C2=A0 compatibility symbols to support old binaries.=C2=A0 Al=
l
            programs should use<br>
            =C2=A0 strsignal instead.<br>
            <br>
            <br>
            To solve it I could downgrade the glibc library version of
            my system (general consensus on forums is that, that is a
            bad idea).<br>
            Other option:<br>
            In the master branch I find a recipe for dpkg 1.20.5, can I
            simply upgrade the dpkg version (1.19.7) in the dunfell
            release with the master branch version (1.20.5)?<br>
            Could it break anything and how do I know it will solve my
            problem? Other then try it.<br>
            Or is there another solution?<br>
            <br>
            uname -rmo<br>
            Linux 5.4.64-1-MANJARO=C2=A0 x86_64 GNU/Linux<br>
            <br>
            Thanks,<br>
            Robert.<br>
            <br>
          </div>
          <br>
          <br>
          <br>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">


</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------62FA8FCB7EF506910867CBA2--
