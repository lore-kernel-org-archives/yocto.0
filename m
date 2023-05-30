Return-Path: <geissonator@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2315AC7EE23
	for <webhook@archiver.kernel.org>; Tue, 30 May 2023 17:58:38 +0000 (UTC)
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
 by mx.groups.io with SMTP id smtpd.web10.1164.1685469514339974109
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 May 2023 10:58:34 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=LegDhHXv;
 spf=pass (domain: gmail.com, ip: 209.85.219.54, mailfrom: geissonator@gmail.com)
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-62606e67c0dso37393576d6.2
        for <yocto@lists.yoctoproject.org>; Tue, 30 May 2023 10:58:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685469513; x=1688061513;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=hVjR2UL93OsDAaN4uD0ST91K8Ejx+RErSvsZEIIgVlo=;
        b=LegDhHXvZYiz+E3uT7JCpPd3O4TWL8eHeRMsF9udQ1xq/h/XXLXPqTAd1uIA+ln/nX
         nu2/vqA7kMImSN/2iiqjwBDLoWVP9OWfFmNL58PI+7QZ3HTCfs8HN1M0SKmRVMlsz3GI
         68eLMUy3adbqLPSXeXBJsuet9o26LpLTtb5fHP4Yka8wNXK/J6AY8P7hFzdQdGMWZtFC
         q9iC6gRcCMpKAims/osJUWb/KuSTol8ec8AMaZivrH6OvdyD09frhUoyMsSuB8jFYEGc
         JBGy8l5g27Jx8n/TNFaXVGm6q1RE8YSpcIRVExPzqFrZmnt1HqxxWFVgMlaGLOSVIkTu
         5B+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685469513; x=1688061513;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hVjR2UL93OsDAaN4uD0ST91K8Ejx+RErSvsZEIIgVlo=;
        b=eBvXYSsMobPhrynrFsFNUs+wjXglRRBl5eztewGC5uQ/tOPzakOskyFVxeIzD7L8uL
         U/2oS2GWT9EA5uCfS/jol7I7KQXSYkNAlY/JcUYqHn1WD/UDX3t2bsVDFlza3TsrjB2C
         f6JlXrdaCYmn7ja8Y+E2x1bA9qna76C/XhCUcjyVmsjFENqGPi7ObYOA292OSHNKoUb9
         2xpJI6JZhxXJgyrSN4XiK3VgqOQ1+7+qqLBSoXOb4tySmrGyl3q6ocKVLRhzz6vDNL4O
         Aug5fPxTLUf+m/w1llivqQ676H425cb2xHZByhLB3Cz509UV0X2NTYER2L0MB9VeDeKd
         IKgw==
X-Gm-Message-State: AC+VfDzG60wDk/JFNjdsExs1v5+9qUKjg79JGfb/e5M2zqlVxh7fla3b
	/j/ZlsbRH0HDCOZSyvagtns=
X-Google-Smtp-Source: ACHHUZ5xX6izlJG/HCL4p9fjuNu9F8Lq+we6v8gqEXdPcbQKTnPVtTMPFYuTrWgco3Q/4yU5XnMxqg==
X-Received: by 2002:ad4:4ead:0:b0:623:6fc8:f461 with SMTP id ed13-20020ad44ead000000b006236fc8f461mr3247981qvb.33.1685469513075;
        Tue, 30 May 2023 10:58:33 -0700 (PDT)
Received: from smtpclient.apple (c-68-37-198-19.hsd1.mi.comcast.net. [68.37.198.19])
        by smtp.gmail.com with ESMTPSA id i27-20020a05620a151b00b0075932cd3ca0sm4270072qkk.69.2023.05.30.10.58.32
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 May 2023 10:58:32 -0700 (PDT)
From: Andrew Geissler <geissonator@gmail.com>
Message-Id: <30712816-3D2C-4AFB-9099-AF505617E34B@gmail.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_FD318E02-8E88-4105-9C7F-63585225F09C"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.3\))
Subject: Re: [yocto] [meta-security][PATCH] ibmswtpm2: update to
 164-2020-192.1
Date: Tue, 30 May 2023 13:58:31 -0400
In-Reply-To: <72f67e8f-5429-c94a-c322-d37773e4574b@gmail.com>
Cc: yocto@lists.yoctoproject.org
To: akuster808 <akuster808@gmail.com>
References: <20230524200307.37451-1-geissonator@yahoo.com>
 <341b950c-b039-6a25-e49f-8c3b77ef507a@gmail.com>
 <CF243CD7-3D9C-4E28-909D-E6E4E2076B9E@gmail.com>
 <72f67e8f-5429-c94a-c322-d37773e4574b@gmail.com>
X-Mailer: Apple Mail (2.3696.120.41.1.3)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 May 2023 17:58:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60150


--Apple-Mail=_FD318E02-8E88-4105-9C7F-63585225F09C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

This version supports openssl 3.1

The maintainer changed his tag versions hence the different looking
version.

The maintainer also has stopped releasing tar files and asked we
directly grab from git.

Signed-off-by: Andrew Geissler <geissonator@yahoo.com>
---
 .../{ibmswtpm2_1682.bb =3D> ibmswtpm2_164-2020-192.1.bb}   | 9 =
+++++----
 1 file changed, 5 insertions(+), 4 deletions(-)
 rename meta-tpm/recipes-tpm2/ibmswtpm2/{ibmswtpm2_1682.bb =3D> =
ibmswtpm2_164-2020-192.1.bb} (78%)

diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1682.bb =
b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_164-2020-192.1.bb
similarity index 78%
rename from meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1682.bb
rename to meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_164-2020-192.1.bb
index 85fc7e0..7060a64 100644
--- a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1682.bb
+++ b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_164-2020-192.1.bb
@@ -12,17 +12,18 @@ HOMEPAGE =3D =
"http://ibmswtpm.sourceforge.net/ibmswtpm2.html"
 LICENSE =3D "BSD-2-Clause"
 SECTION =3D "securty/tpm"
 LIC_FILES_CHKSUM =3D =
"file://../LICENSE;md5=3D1e023f61454ac828b4aa1bc4293f7d5f"
+LIC_FILES_CHKSUM +=3D =
"file://LICENSE;md5=3Dc75e465155c42c14154bf6a2acb7347b"
=20
 DEPENDS =3D "openssl"
=20
-SRC_URI =3D =
"https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm${PV}.tar.gz \
+SRC_URI =3D =
"git://git.code.sf.net/p/ibmswtpm2/tpm2;protocol=3Dhttps;branch=3Dmaster =
\
            file://tune-makefile.patch \
            "
-SRC_URI[sha256sum] =3D =
"3cb642f871a17b23d50b046e5f95f449c2287415fc1e7aeb4bdbb8920dbcb38f"
+SRCREV =3D "5452af422edeff70fcae8ea99dd28a0922051d7b"
=20
-UPSTREAM_CHECK_URI =3D =
"https://sourceforge.net/projects/ibmswtpm2/files/"
+UPSTREAM_CHECK_URI =3D "https://git.code.sf.net/p/ibmswtpm2/tpm2"
=20
-S =3D "${WORKDIR}/src"
+S =3D "${WORKDIR}/git/src"
=20
 CFLAGS +=3D "-Wno-error=3Dmaybe-uninitialized -DALG_CAMELLIA=3DALG_NO"
=20
--=20
2.37.1 (Apple Git-137.1)

> On May 25, 2023, at 6:20 PM, akuster808 <akuster808@gmail.com> wrote:
>=20
>=20
>=20
> On 5/24/23 5:38 PM, Andrew Geissler wrote:
>>=20
>>> On May 24, 2023, at 4:38 PM, akuster808 <akuster808@gmail.com> =
wrote:
>>>=20
>>>=20
>>>=20
>>> On 5/24/23 4:03 PM, Andrew Geissler wrote:
>>>> This version supports openssl 3.1
>>>>=20
>>>> The maintainer changed his tag versions hence the different looking
>>>> version.
>>>>=20
>>>> The maintainer also has stopped releasing tar files and asked we
>>>> directly grab from git.
>>> Why did the License file change?
>> Good question. I think I got a bit turned around when I moved over to =
git.
>=20
> Looking at their changes, it looks like they appended or subtracted =
spaces  to various lines in that License file. Nothing other than noise.
>=20
>>=20
>> This repo has 2 LICENSE files:
>>   https://sourceforge.net/p/ibmswtpm2/tpm2/ci/master/tree/LICENSE =
<https://sourceforge.net/p/ibmswtpm2/tpm2/ci/master/tree/LICENSE>
>>   https://sourceforge.net/p/ibmswtpm2/tpm2/ci/master/tree/src/LICENSE =
<https://sourceforge.net/p/ibmswtpm2/tpm2/ci/master/tree/src/LICENSE>
>=20
> They look like to different licenses, one has IBM in it the other does =
not.
>=20
> Maybe list both and their sha's should address that.
>=20
> thanks,
> Armin
>>=20
>> My commit moved to the base LICENSE file in the tree. The original =
recipe
>> pointed to the second LICENSE file under src/.
>>=20
>> The original src/LICENSE appears to be a subset of the root LICENSE
>> but I can move the recipe back to the original src/LICENSE if =
that=E2=80=99s the
>> expected behavior here.
>>=20
>>> -armin
>>>> Signed-off-by: Andrew Geissler <geissonator@yahoo.com>
>>>> ---
>>>>  ...ibmswtpm2_1682.bb =3D> ibmswtpm2_164-2020-192.1.bb} | 12 =
++++++------
>>>>  1 file changed, 6 insertions(+), 6 deletions(-)
>>>>  rename meta-tpm/recipes-tpm2/ibmswtpm2/{ibmswtpm2_1682.bb =3D> =
ibmswtpm2_164-2020-192.1.bb} (73%)
>>>>=20
>>>> diff --git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1682.bb =
b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_164-2020-192.1.bb
>>>> similarity index 73%
>>>> rename from meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1682.bb
>>>> rename to =
meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_164-2020-192.1.bb
>>>> index 85fc7e0..fbeb872 100644
>>>> --- a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1682.bb
>>>> +++ b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_164-2020-192.1.bb
>>>> @@ -11,18 +11,18 @@ Advantages of this approach: \
>>>>  HOMEPAGE =3D "http://ibmswtpm.sourceforge.net/ibmswtpm2.html"
>>>>  LICENSE =3D "BSD-2-Clause"
>>>>  SECTION =3D "securty/tpm"
>>>> -LIC_FILES_CHKSUM =3D =
"file://../LICENSE;md5=3D1e023f61454ac828b4aa1bc4293f7d5f"
>>>> +LIC_FILES_CHKSUM =3D =
"file://LICENSE;md5=3Dc75e465155c42c14154bf6a2acb7347b"
>>>>    DEPENDS =3D "openssl"
>>>>  -SRC_URI =3D =
"https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm${PV}.tar.gz \
>>>> +SRC_URI =3D =
"git://git.code.sf.net/p/ibmswtpm2/tpm2;protocol=3Dhttps;branch=3Dmaster =
\
>>>>             file://tune-makefile.patch \
>>>> -           "
>>>> -SRC_URI[sha256sum] =3D =
"3cb642f871a17b23d50b046e5f95f449c2287415fc1e7aeb4bdbb8920dbcb38f"
>>>> +           ""
>>>> +SRCREV =3D "5452af422edeff70fcae8ea99dd28a0922051d7b"
>>>>  -UPSTREAM_CHECK_URI =3D =
"https://sourceforge.net/projects/ibmswtpm2/files/"
>>>> +UPSTREAM_CHECK_URI =3D "https://git.code.sf.net/p/ibmswtpm2/tpm2"
>>>>  -S =3D "${WORKDIR}/src"
>>>> +S =3D "${WORKDIR}/git/src"
>>>>    CFLAGS +=3D "-Wno-error=3Dmaybe-uninitialized =
-DALG_CAMELLIA=3DALG_NO"
>>>>  -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>>> Links: You receive all messages sent to this group.
>>>> View/Reply Online (#60115): =
https://lists.yoctoproject.org/g/yocto/message/60115
>>>> Mute This Topic: https://lists.yoctoproject.org/mt/99116759/3616698
>>>> Group Owner: yocto+owner@lists.yoctoproject.org
>>>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub =
[akuster808@gmail.com]
>>>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--Apple-Mail=_FD318E02-8E88-4105-9C7F-63585225F09C
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><div =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo; color: rgb(0, 0, 0);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">This version supports openssl 3.1</span></div><div =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo; color: rgb(0, 0, 0); =
min-height: 13px;" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D""></span><br class=3D""></div><div =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo; color: rgb(0, 0, 0);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">The maintainer changed his tag versions hence the different =
looking</span></div><div style=3D"margin: 0px; font-stretch: normal; =
font-size: 11px; line-height: normal; font-family: Menlo; color: rgb(0, =
0, 0);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D"">version.</span></div><div style=3D"margin:=
 0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo; color: rgb(0, 0, 0); min-height: 13px;" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D""></span><br class=3D""></div><div style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo; color: rgb(0, 0, 0);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">The =
maintainer also has stopped releasing tar files and asked =
we</span></div><div style=3D"margin: 0px; font-stretch: normal; =
font-size: 11px; line-height: normal; font-family: Menlo; color: rgb(0, =
0, 0);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D"">directly grab from git.</span></div><div =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo; color: rgb(0, 0, 0); =
min-height: 13px;" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D""></span><br class=3D""></div><div =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo; color: rgb(0, 0, 0);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">Signed-off-by: Andrew Geissler &lt;<a =
href=3D"mailto:geissonator@yahoo.com" =
class=3D"">geissonator@yahoo.com</a>&gt;</span></div><div style=3D"margin:=
 0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo; color: rgb(0, 0, 0);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">---</span></div><div style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo; color: =
rgb(0, 0, 0);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D"">&nbsp;.../{ibmswtpm2_1682.bb =3D&gt; =
ibmswtpm2_164-2020-192.1.bb} &nbsp; | 9 +++++----</span></div><div =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo; color: rgb(0, 0, 0);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp;1 file changed, 5 insertions(+), 4 =
deletions(-)</span></div><div style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo; color: =
rgb(0, 0, 0);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D"">&nbsp;rename =
meta-tpm/recipes-tpm2/ibmswtpm2/{ibmswtpm2_1682.bb =3D&gt; =
ibmswtpm2_164-2020-192.1.bb} (78%)</span></div><div style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo; color: rgb(0, 0, 0); min-height: 13px;" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D""></span><br class=3D""></div><div style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo; color: rgb(0, 0, 0);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">diff =
--git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1682.bb =
b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_164-2020-192.1.bb</span></div>=
<div style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo; color: rgb(0, 0, 0);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">similarity index 78%</span></div><div style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo; color: rgb(0, 0, 0);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">rename =
from meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1682.bb</span></div><div =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo; color: rgb(0, 0, 0);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">rename to =
meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_164-2020-192.1.bb</span></div><d=
iv style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo; color: rgb(0, 0, 0);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">index 85fc7e0..7060a64 100644</span></div><div style=3D"margin:=
 0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo; color: rgb(0, 0, 0);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">--- =
a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1682.bb</span></div><div =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo; color: rgb(0, 0, 0);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">+++ =
b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_164-2020-192.1.bb</span></div>=
<div style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo; color: rgb(0, 0, 0);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">@@ -12,17 +12,18 @@ HOMEPAGE =3D "<a =
href=3D"http://ibmswtpm.sourceforge.net/ibmswtpm2.html" =
class=3D"">http://ibmswtpm.sourceforge.net/ibmswtpm2.html</a>"</span></div=
><div style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo; color: rgb(0, 0, 0);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp;LICENSE =3D "BSD-2-Clause"</span></div><div =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo; color: rgb(0, 0, 0);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp;SECTION =3D "securty/tpm"</span></div><div =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo; color: rgb(0, 0, 0);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp;LIC_FILES_CHKSUM =3D "<a =
href=3D"file://../LICENSE;md5=3D1e023f61454ac828b4aa1bc4293f7d5f" =
class=3D"">file://../LICENSE;md5=3D1e023f61454ac828b4aa1bc4293f7d5f</a>"</=
span></div><div style=3D"margin: 0px; font-stretch: normal; font-size: =
11px; line-height: normal; font-family: Menlo; color: rgb(0, 0, 0);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">+LIC_FILES_CHKSUM +=3D "<a =
href=3D"file://LICENSE;md5=3Dc75e465155c42c14154bf6a2acb7347b" =
class=3D"">file://LICENSE;md5=3Dc75e465155c42c14154bf6a2acb7347b</a>"</spa=
n></div><p style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo; color: rgb(0, 0, 0); =
min-height: 13px;" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D"">&nbsp;</span><br =
class=3D"webkit-block-placeholder"></p><div style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo; color: rgb(0, 0, 0);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp;DEPENDS =3D "openssl"</span></div><p style=3D"margin: =
0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo; color: rgb(0, 0, 0); min-height: 13px;" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp;</span><br class=3D"webkit-block-placeholder"></p><div =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo; color: rgb(0, 0, 0);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">-SRC_URI =3D "<a =
href=3D"https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm${PV}.tar.g=
z" =
class=3D"">https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm${PV}.ta=
r.gz</a> \</span></div><div style=3D"margin: 0px; font-stretch: normal; =
font-size: 11px; line-height: normal; font-family: Menlo; color: rgb(0, =
0, 0);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D"">+SRC_URI =3D "<a =
href=3D"git://git.code.sf.net/p/ibmswtpm2/tpm2;protocol=3Dhttps;branch=3Dm=
aster" =
class=3D"">git://git.code.sf.net/p/ibmswtpm2/tpm2;protocol=3Dhttps;branch=3D=
master</a> \</span></div><div style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo; color: =
rgb(0, 0, 0);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; <a href=3D"file:///tune-makefile.patch" =
class=3D"">file://tune-makefile.patch</a> \</span></div><div =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo; color: rgb(0, 0, 0);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; "</span></div><div =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo; color: rgb(0, 0, 0);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">-SRC_URI[sha256sum] =3D =
"3cb642f871a17b23d50b046e5f95f449c2287415fc1e7aeb4bdbb8920dbcb38f"</span><=
/div><div style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo; color: rgb(0, 0, 0);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">+SRCREV =3D =
"5452af422edeff70fcae8ea99dd28a0922051d7b"</span></div><p style=3D"margin:=
 0px; font-stretch: normal; font-size: 11px; line-height: normal; =
font-family: Menlo; color: rgb(0, 0, 0); min-height: 13px;" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp;</span><br class=3D"webkit-block-placeholder"></p><div =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo; color: rgb(0, 0, 0);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">-UPSTREAM_CHECK_URI =3D "<a =
href=3D"https://sourceforge.net/projects/ibmswtpm2/files/" =
class=3D"">https://sourceforge.net/projects/ibmswtpm2/files/</a>"</span></=
div><div style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo; color: rgb(0, 0, 0);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">+UPSTREAM_CHECK_URI =3D "<a =
href=3D"https://git.code.sf.net/p/ibmswtpm2/tpm2" =
class=3D"">https://git.code.sf.net/p/ibmswtpm2/tpm2</a>"</span></div><p =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo; color: rgb(0, 0, 0); =
min-height: 13px;" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D"">&nbsp;</span><br =
class=3D"webkit-block-placeholder"></p><div style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo; color: rgb(0, 0, 0);" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" class=3D"">-S =3D =
"${WORKDIR}/src"</span></div><div style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo; color: =
rgb(0, 0, 0);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D"">+S =3D =
"${WORKDIR}/git/src"</span></div><p style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo; color: =
rgb(0, 0, 0); min-height: 13px;" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp;</span><br class=3D"webkit-block-placeholder"></p><div =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo; color: rgb(0, 0, 0);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp;CFLAGS +=3D "-Wno-error=3Dmaybe-uninitialized =
-DALG_CAMELLIA=3DALG_NO"</span></div><p style=3D"margin: 0px; =
font-stretch: normal; font-size: 11px; line-height: normal; font-family: =
Menlo; color: rgb(0, 0, 0); min-height: 13px;" class=3D""><span =
style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">&nbsp;</span><br class=3D"webkit-block-placeholder"></p><div =
style=3D"margin: 0px; font-stretch: normal; font-size: 11px; =
line-height: normal; font-family: Menlo; color: rgb(0, 0, 0);" =
class=3D""><span style=3D"font-variant-ligatures: no-common-ligatures" =
class=3D"">--&nbsp;</span></div><div style=3D"margin: 0px; font-stretch: =
normal; font-size: 11px; line-height: normal; font-family: Menlo; color: =
rgb(0, 0, 0);" class=3D""><span style=3D"font-variant-ligatures: =
no-common-ligatures" class=3D"">2.37.1 (Apple =
Git-137.1)</span></div><div><br class=3D""><blockquote type=3D"cite" =
class=3D""><div class=3D"">On May 25, 2023, at 6:20 PM, akuster808 =
&lt;<a href=3D"mailto:akuster808@gmail.com" =
class=3D"">akuster808@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><meta =
charset=3D"UTF-8" class=3D""><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">On 5/24/23 5:38 PM, Andrew Geissler wrote:</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" =
class=3D""><blockquote type=3D"cite" style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><br =
class=3D""><blockquote type=3D"cite" class=3D"">On May 24, 2023, at 4:38 =
PM, akuster808 &lt;<a href=3D"mailto:akuster808@gmail.com" =
class=3D"">akuster808@gmail.com</a>&gt; wrote:<br class=3D""><br =
class=3D""><br class=3D""><br class=3D"">On 5/24/23 4:03 PM, Andrew =
Geissler wrote:<br class=3D""><blockquote type=3D"cite" class=3D"">This =
version supports openssl 3.1<br class=3D""><br class=3D"">The maintainer =
changed his tag versions hence the different looking<br =
class=3D"">version.<br class=3D""><br class=3D"">The maintainer also has =
stopped releasing tar files and asked we<br class=3D"">directly grab =
from git.<br class=3D""></blockquote>Why did the License file change?<br =
class=3D""></blockquote>Good question. I think I got a bit turned around =
when I moved over to git.<br class=3D""></blockquote><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">Looking at their changes, it =
looks like they appended or subtracted spaces&nbsp; to various lines in =
that License file. Nothing other than noise.</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" =
class=3D""><blockquote type=3D"cite" style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><br =
class=3D"">This repo has 2 LICENSE files:<br class=3D"">&nbsp;&nbsp;<a =
href=3D"https://sourceforge.net/p/ibmswtpm2/tpm2/ci/master/tree/LICENSE" =
class=3D"">https://sourceforge.net/p/ibmswtpm2/tpm2/ci/master/tree/LICENSE=
</a><br class=3D"">&nbsp;&nbsp;<a =
href=3D"https://sourceforge.net/p/ibmswtpm2/tpm2/ci/master/tree/src/LICENS=
E" =
class=3D"">https://sourceforge.net/p/ibmswtpm2/tpm2/ci/master/tree/src/LIC=
ENSE</a><br class=3D""></blockquote><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">They look like to different licenses, one has IBM in it the =
other does not.</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">Maybe list both and their sha's should address =
that.</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" =
class=3D"">thanks,</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">Armin</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><blockquote type=3D"cite" =
style=3D"font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br class=3D"">My commit moved to the =
base LICENSE file in the tree. The original recipe<br class=3D"">pointed =
to the second LICENSE file under src/.<br class=3D""><br class=3D"">The =
original src/LICENSE appears to be a subset of the root LICENSE<br =
class=3D"">but I can move the recipe back to the original src/LICENSE if =
that=E2=80=99s the<br class=3D"">expected behavior here.<br class=3D""><br=
 class=3D""><blockquote type=3D"cite" class=3D"">-armin<br =
class=3D""><blockquote type=3D"cite" class=3D"">Signed-off-by: Andrew =
Geissler &lt;<a href=3D"mailto:geissonator@yahoo.com" =
class=3D"">geissonator@yahoo.com</a>&gt;<br class=3D"">---<br =
class=3D"">&nbsp;...ibmswtpm2_1682.bb =3D&gt; =
ibmswtpm2_164-2020-192.1.bb} | 12 ++++++------<br class=3D"">&nbsp;1 =
file changed, 6 insertions(+), 6 deletions(-)<br class=3D"">&nbsp;rename =
meta-tpm/recipes-tpm2/ibmswtpm2/{ibmswtpm2_1682.bb =3D&gt; =
ibmswtpm2_164-2020-192.1.bb} (73%)<br class=3D""><br class=3D"">diff =
--git a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1682.bb =
b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_164-2020-192.1.bb<br =
class=3D"">similarity index 73%<br class=3D"">rename from =
meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1682.bb<br class=3D"">rename =
to meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_164-2020-192.1.bb<br =
class=3D"">index 85fc7e0..fbeb872 100644<br class=3D"">--- =
a/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_1682.bb<br class=3D"">+++ =
b/meta-tpm/recipes-tpm2/ibmswtpm2/ibmswtpm2_164-2020-192.1.bb<br =
class=3D"">@@ -11,18 +11,18 @@ Advantages of this approach: \<br =
class=3D"">&nbsp;HOMEPAGE =3D "<a =
href=3D"http://ibmswtpm.sourceforge.net/ibmswtpm2.html" =
class=3D"">http://ibmswtpm.sourceforge.net/ibmswtpm2.html</a>"<br =
class=3D"">&nbsp;LICENSE =3D "BSD-2-Clause"<br class=3D"">&nbsp;SECTION =
=3D "securty/tpm"<br class=3D"">-LIC_FILES_CHKSUM =3D "<a =
href=3D"file://../LICENSE;md5=3D1e023f61454ac828b4aa1bc4293f7d5f" =
class=3D"">file://../LICENSE;md5=3D1e023f61454ac828b4aa1bc4293f7d5f</a>"<b=
r class=3D"">+LIC_FILES_CHKSUM =3D "<a =
href=3D"file://LICENSE;md5=3Dc75e465155c42c14154bf6a2acb7347b" =
class=3D"">file://LICENSE;md5=3Dc75e465155c42c14154bf6a2acb7347b</a>"<br =
class=3D"">&nbsp;&nbsp;&nbsp;DEPENDS =3D "openssl"<br =
class=3D"">&nbsp;-SRC_URI =3D "<a =
href=3D"https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm${PV}.tar.g=
z" =
class=3D"">https://sourceforge.net/projects/ibmswtpm2/files/ibmtpm${PV}.ta=
r.gz</a> \<br class=3D"">+SRC_URI =3D "<a =
href=3D"git://git.code.sf.net/p/ibmswtpm2/tpm2;protocol=3Dhttps;branch=3Dm=
aster" =
class=3D"">git://git.code.sf.net/p/ibmswtpm2/tpm2;protocol=3Dhttps;branch=3D=
master</a> \<br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;<a href=3D"file:///tune-makefile.patch" =
class=3D"">file://tune-makefile.patch</a> \<br class=3D"">- =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"<br =
class=3D"">-SRC_URI[sha256sum] =3D =
"3cb642f871a17b23d50b046e5f95f449c2287415fc1e7aeb4bdbb8920dbcb38f"<br =
class=3D"">+ =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;""<br =
class=3D"">+SRCREV =3D "5452af422edeff70fcae8ea99dd28a0922051d7b"<br =
class=3D"">&nbsp;-UPSTREAM_CHECK_URI =3D "<a =
href=3D"https://sourceforge.net/projects/ibmswtpm2/files/" =
class=3D"">https://sourceforge.net/projects/ibmswtpm2/files/</a>"<br =
class=3D"">+UPSTREAM_CHECK_URI =3D "<a =
href=3D"https://git.code.sf.net/p/ibmswtpm2/tpm2" =
class=3D"">https://git.code.sf.net/p/ibmswtpm2/tpm2</a>"<br =
class=3D"">&nbsp;-S =3D "${WORKDIR}/src"<br class=3D"">+S =3D =
"${WORKDIR}/git/src"<br class=3D"">&nbsp;&nbsp;&nbsp;CFLAGS +=3D =
"-Wno-error=3Dmaybe-uninitialized -DALG_CAMELLIA=3DALG_NO"<br =
class=3D"">&nbsp;-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br =
class=3D"">Links: You receive all messages sent to this group.<br =
class=3D"">View/Reply Online (#60115): <a =
href=3D"https://lists.yoctoproject.org/g/yocto/message/60115" =
class=3D"">https://lists.yoctoproject.org/g/yocto/message/60115</a><br =
class=3D"">Mute This Topic: <a =
href=3D"https://lists.yoctoproject.org/mt/99116759/3616698" =
class=3D"">https://lists.yoctoproject.org/mt/99116759/3616698</a><br =
class=3D"">Group Owner: <a =
href=3D"mailto:yocto+owner@lists.yoctoproject.org" =
class=3D"">yocto+owner@lists.yoctoproject.org</a><br =
class=3D"">Unsubscribe: <a =
href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
class=3D"">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a =
href=3D"mailto:akuster808@gmail.com" =
class=3D"">akuster808@gmail.com</a>]<br =
class=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-</blockquote></blo=
ckquote></blockquote></div></blockquote></div><br =
class=3D""></body></html>=

--Apple-Mail=_FD318E02-8E88-4105-9C7F-63585225F09C--

