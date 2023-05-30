Return-Path: <geissonator@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28A86C7EE23
	for <webhook@archiver.kernel.org>; Tue, 30 May 2023 17:55:18 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.web10.1067.1685469312811483580
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 May 2023 10:55:13 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=TU1zfL28;
 spf=pass (domain: gmail.com, ip: 209.85.222.179, mailfrom: geissonator@gmail.com)
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-75ca95cd9b1so287079985a.0
        for <yocto@lists.yoctoproject.org>; Tue, 30 May 2023 10:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685469312; x=1688061312;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=wTO6j8m3xiygP2HB/zOQeW7Bp4xNOryEF/+7bJu9ZPM=;
        b=TU1zfL28Vq/xCVcdKb2cNlo3kPwXVugXJ511aluUV5nV1Io5T5L6Oi8p+qADTlezdp
         mGYF3wOBO0M4vRwJcmWyk0Z5bHRHaG8H7JWMgoURoM6G+L97ubt/hQofYwLuPUJuN1B7
         UyWpl0E/aKMhGI6adtT5uJroNK0sQggZkmYtnA8oacjiwmdQYhzAXPyZAveA5mZ2M7f3
         Qv2+DHmQ34l27qVBpX4TpVJQlI75QYPGZwHcbXCn81n4hH/vxXbzrhMmpzWGjkK3DGIr
         GZ8op/VVVL7xGp3SHpsi6qM3gwL00IefIIn4dKMFvLvtyjO+WR5Bp++55TA+WX+th+CK
         AGdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685469312; x=1688061312;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wTO6j8m3xiygP2HB/zOQeW7Bp4xNOryEF/+7bJu9ZPM=;
        b=gD7z2MeKS2MmizHJ9aCpJ8UPZF24Cz1La1NkWCnLVLuPTEVG109bRaX75ECFxBpzIP
         gnR7w/Mmm2V4f2fMlgVuWHZ5K14SLzzVdhO73k87tTHA049YSaXcp730vKSCUwtGE2nu
         sXCjgWhGhgmFND4PxpY4Mon7XfKuuWRG+TBZ8y5/xbYGUuDAFutAzAjqB+ObqzYeeonH
         DitjpGMfSjuyFDB3vD/HNfBfiPN+HooRBjC8uMAtKlhhRWEom1OLJGp0Oz2NddWqgiI0
         To/l2FVt0q2fX3mFp5+aqr0hadMRRb72Y6c2pAc8yZuxRMg+mPNEcfVdnLTN11jUKAQB
         B9DA==
X-Gm-Message-State: AC+VfDzCvrsw3Ce5f4cPK3XqAE+FvLcQi3FNsT6uStk3tbhPCfBc+w3S
	aTuzTYX0tcHXJln/0FsBEiU=
X-Google-Smtp-Source: ACHHUZ4HzAwDWBgDD8Vy3KvcNSL3Ue9IFeYPcH0S7LTi/a2RY1TI13kMcsr4oKN6pUyCih7nzzDXzg==
X-Received: by 2002:a05:620a:444e:b0:75b:23a1:3677 with SMTP id w14-20020a05620a444e00b0075b23a13677mr3787213qkp.56.1685469311562;
        Tue, 30 May 2023 10:55:11 -0700 (PDT)
Received: from smtpclient.apple (c-68-37-198-19.hsd1.mi.comcast.net. [68.37.198.19])
        by smtp.gmail.com with ESMTPSA id e14-20020a05620a12ce00b00755951e48desm4202846qkl.135.2023.05.30.10.55.10
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 May 2023 10:55:11 -0700 (PDT)
From: Andrew Geissler <geissonator@gmail.com>
Message-Id: <CC8D94D9-51E2-43DF-A083-9051CDB79A0B@gmail.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_58F199BC-94B1-451E-BA0B-971D81430AFF"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.3\))
Subject: Re: [yocto] [meta-security][PATCH] ibmswtpm2: update to
 164-2020-192.1
Date: Tue, 30 May 2023 13:55:10 -0400
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
 <yocto@lists.yoctoproject.org>; Tue, 30 May 2023 17:55:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60149


--Apple-Mail=_58F199BC-94B1-451E-BA0B-971D81430AFF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



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

Sounds good, I=E2=80=99ll send a new patch to this thread.

>=20
> thanks,
> Armin


--Apple-Mail=_58F199BC-94B1-451E-BA0B-971D81430AFF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><br =
class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On May 25, 2023, at 6:20 PM, akuster808 &lt;<a =
href=3D"mailto:akuster808@gmail.com" =
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
none;" class=3D""></div></blockquote><div><br class=3D""></div><div>Sounds=
 good, I=E2=80=99ll send a new patch to this thread.</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><br style=3D"caret-color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 12px; font-style: =
normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
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
class=3D"">Armin</span></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_58F199BC-94B1-451E-BA0B-971D81430AFF--

