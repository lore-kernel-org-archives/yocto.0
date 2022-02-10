Return-Path: <rustyhowell@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E3CC433EF
	for <webhook@archiver.kernel.org>; Thu, 10 Feb 2022 17:10:53 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com
 [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web10.13088.1644513052877234758
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Feb 2022 09:10:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=gHVqjJm3;
 spf=pass (domain: gmail.com, ip: 209.85.214.177,
 mailfrom: rustyhowell@gmail.com)
Received: by mail-pl1-f177.google.com with SMTP id l9so764839plg.0
        for <yocto@lists.yoctoproject.org>;
 Thu, 10 Feb 2022 09:10:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=/bLxK3z5nPw55X4uXXe82hOAsx0JbkQzOyPcpo9OTg8=;
        b=gHVqjJm3xFvYDPd2kcjGM7rgz7ljhnkead3p6eCUdwT8HR5QINdOcLiyJj99zQyWQq
         pOngTJyElJo0ioirO6UGPpwyCkf/vO+ealL6u6P8ztNbrRz0lczADM+g7OCECAK/R62c
         pPTVg80rduvkCO1vS9UD2ioKd0x1hilLdwnzS5agNFINwtOLrQKYFBFV8e8Kr4dARhAP
         xHlsM+1npEal3Ylcx8moHrT+jX/IlflyODjRl+WSKl6mNxdKDkJ8qzpbbn0bCP04Zefh
         qB43aQjJ75RbDx6cw6emq9SCl9f0QTyTZFKRYzeIMi9mNWxDpsWOxZhTD50lICpvbJEA
         HVRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=/bLxK3z5nPw55X4uXXe82hOAsx0JbkQzOyPcpo9OTg8=;
        b=bARrdLa/28o6y2LBWEwRP9E78Wf1cIMl0xhBOBlXDkOZJR6Og3wNbq8nEOECu1tpRJ
         +4QKHkcSjDxkJYW3pL2y8pUkrA1d9wTy3y4MVZ9nCx1zsdwuo1M4cIzb8lhAe62M5bpP
         nVC2pVPhxR9zX3GMzliht9m9s0uf375CJUtfhv2lGEaCtpVmDKT8DJcWVUWkp1h/HV6s
         oTXpM55Yj3PiGQCLRaAUdjQhljJDQhBFEOevkCW+Or0cE/LarJaqLo+54HPnJKMo3RCX
         Epujf/2dvAb2Luf6ZXNpvL3q6dAqzbdoyZMnjAt904cS6d+BUgMBwFSDPnkuRutL16Va
         Xe0A==
X-Gm-Message-State: AOAM530tTtJg2E66o+0DXEpJyal30SJN9E6b/4NxxBfPn79IWfEFy2rn
	6f5nMuv9ElYWDyCwf4CX63zH3B1y0VghMxSgVdoAuEYbfJE=
X-Google-Smtp-Source: 
 ABdhPJzTE296xpoX1R4dWCXjez4dw+uzcc9QBUzwfNPnAtM8OUPT8s7QelXLe6zTPl6Q+6mQtVIPim7YPONMkGLnpD0=
X-Received: by 2002:a17:903:11c5:: with SMTP id
 q5mr8374313plh.136.1644513051929;
 Thu, 10 Feb 2022 09:10:51 -0800 (PST)
MIME-Version: 1.0
From: Rusty Howell <rustyhowell@gmail.com>
Date: Thu, 10 Feb 2022 10:10:36 -0700
Message-ID: 
 <CAE+BM3n9tX0R4eoWgiD36skgAgy8pV8vY_7WtVLWcrs23fi83Q@mail.gmail.com>
Subject: Support filenames with i18n chars
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000049ef5b05d7ad08ba"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Feb 2022 17:10:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56150

--00000000000049ef5b05d7ad08ba
Content-Type: text/plain; charset="UTF-8"

Hello,

I am trying to get filenames with utf-8 chars to appear correctly when
doing the "ls" command. Currently, "ls" will output the filename but
replace the international char with "?".  For example it will output
"/tmp/h??llo"  rather than "/tmp/hallo"  (a with an umlaut).  If I set the
LANG=en_US.utf-8, that seems to fix the issue. But I have other embedded
devices (not built by Yocto)  that don't have LANG set that will output
correctly.

I have tried the kernel config  CONFIG_NLS_DEFAULT="utf8", but that did not
help.  I have also added numerous the glibc-locale packages to the image
but that also doesn't seem to help.

"locale -a"  outputs  "C POSIX en_US en_US.utf8 es_ES ... (etc etc)"
"locale -m" outputs only  "UTF-8"
"localedef -c -f UTF-8 -i en_US en_US.UTF-8" seems to succeed.
"locale"  outputs "LANG=     LC_*="POSIX"   LC_ALL="

Any help is appreciated.
Rusty Howell

--00000000000049ef5b05d7ad08ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,=C2=A0</div><div><br></div><div>I am trying to =
get filenames with utf-8 chars to appear correctly when doing the &quot;ls&=
quot; command. Currently, &quot;ls&quot; will output the filename but repla=
ce the international char with &quot;?&quot;.=C2=A0 For example it will out=
put &quot;/tmp/h??llo&quot;=C2=A0 rather than &quot;/tmp/hallo&quot;=C2=A0 =
(a with an umlaut).=C2=A0 If I set the LANG=3Den_US.utf-8, that seems to fi=
x the issue. But I have other embedded devices (not built by Yocto)=C2=A0 t=
hat don&#39;t have LANG set that will output correctly.</div><div><br></div=
><div>I have tried the kernel config=C2=A0 CONFIG_NLS_DEFAULT=3D&quot;utf8&=
quot;, but that did not help.=C2=A0 I have also added numerous the glibc-lo=
cale packages to the image but that also doesn&#39;t seem to help.</div><di=
v><br></div><div>&quot;locale -a&quot;=C2=A0 outputs=C2=A0 &quot;C POSIX en=
_US en_US.utf8 es_ES ... (etc etc)&quot;</div><div>&quot;locale -m&quot; ou=
tputs only=C2=A0 &quot;UTF-8&quot;</div><div>&quot;localedef -c -f UTF-8 -i=
 en_US en_US.UTF-8&quot; seems to succeed.</div><div>&quot;locale&quot;=C2=
=A0 outputs &quot;LANG=3D=C2=A0=C2=A0=C2=A0=C2=A0 LC_*=3D&quot;POSIX&quot;=
=C2=A0=C2=A0 LC_ALL=3D&quot;</div><div><br></div><div>Any help is appreciat=
ed.</div><div>Rusty Howell<br></div></div>

--00000000000049ef5b05d7ad08ba--

