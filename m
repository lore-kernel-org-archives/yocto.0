Return-Path: <thomas.isaacson@motorolasolutions.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F3C3C48292
	for <webhook@archiver.kernel.org>; Mon,  5 Feb 2024 17:56:38 +0000 (UTC)
Received: from mx0b-0019e102.pphosted.com (mx0b-0019e102.pphosted.com [67.231.157.237])
 by mx.groups.io with SMTP id smtpd.web11.650.1707155788019627341
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Feb 2024 09:56:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@motorolasolutions.com header.s=PPS--2020-03-17 header.b=Jm7NgY8h;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: motorolasolutions.com, ip: 67.231.157.237, mailfrom: prvs=27659a8545=thomas.isaacson@motorolasolutions.com)
Received: from pps.filterd (m0074419.ppops.net [127.0.0.1])
	by mx0b-0019e102.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 415EgRMK015868
	for <yocto@lists.yoctoproject.org>; Mon, 5 Feb 2024 17:56:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=motorolasolutions.com;
 h=mime-version : references : in-reply-to : from : date : message-id :
 subject : to : content-type; s=PPS--2020-03-17;
 bh=45qxvvWaQrprocgHJOko3YUU98YdANkGQmLrtntQfLk=;
 b=Jm7NgY8hIelels+44KNdyH6C1YTgjOyV+ZIDL9UaFhVDO6OaPz1tgkY/9aospK72Adye
 jZXw1+Jq98Un3rIATwMWcES+DFgP20NSdelt6rMDQESqIGkuR724LucPwDY90WW7YOhm
 EJ/qWIbs1xfJneY/liefc6eZOqpCq7J7Zx5BU6V7W2lXmhfaxJu2KH+dPgM+FOv7vT2v
 yZ6bE5tCjtnmvUYFS8XDVynAEMKYRg6c0uI3qrjScslkEZ0X73zXnbqx4xWLasynWe6g
 V3zyQwkshkchPGBc5n9AsIWLq5MfpmAyqYasIecbzkNjaVPj+J0a3jHQWtIWeqR62onI 8g== 
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0b-0019e102.pphosted.com (PPS) with ESMTPS id 3w31df9rq7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK)
	for <yocto@lists.yoctoproject.org>; Mon, 05 Feb 2024 17:56:26 +0000
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-6e0509f3c16so572471b3a.2
        for <yocto@lists.yoctoproject.org>; Mon, 05 Feb 2024 09:56:26 -0800 (PST)
X-Gm-Message-State: AOJu0Yz9RpNLOVDwqfVzXKXnvpOHiCijwV5OeZvtX9kMIXByuIZvw4bo
	xBvc07Fkx8hNqtxT3m9EQ6GLWRocAlKKVVOh1XK9FSkDchKD90jXkmsEm597LUIPcBA9RW4K/sm
	FCmycB4DmmObjI/vcevUsGOd6cIndtNsfkYW4YWZji456r1fLdaE4/3H9uZUNYqv6zqCh0UErrd
	0tnRbHECowPwdxTs7JphizZXL+OiNZiwswMpLW
X-Received: by 2002:aa7:8c55:0:b0:6db:afd4:f54c with SMTP id e21-20020aa78c55000000b006dbafd4f54cmr307062pfd.0.1707155785605;
        Mon, 05 Feb 2024 09:56:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH8TI3zOsAfLZU9KqSqg0H3fuxYmnRI/Ar2DyuMyXVSo1kwqTm+c+ts8+O7A8sZEZhCysGtsQM26hlhsYOQViM=
X-Received: by 2002:aa7:8c55:0:b0:6db:afd4:f54c with SMTP id
 e21-20020aa78c55000000b006dbafd4f54cmr307045pfd.0.1707155785279; Mon, 05 Feb
 2024 09:56:25 -0800 (PST)
MIME-Version: 1.0
References: <CA+EiEZLvxbbBSoweOXOXi6bEP_1=L+dZ=hcepvUa1NZ6QD8-Nw@mail.gmail.com>
 <6815.1707110917510832552@lists.yoctoproject.org> <DA622504-BE16-4534-836E-6978FE71174F@arm.com>
In-Reply-To: <DA622504-BE16-4534-836E-6978FE71174F@arm.com>
From: Tom Isaacson <thomas.isaacson@motorolasolutions.com>
Date: Tue, 6 Feb 2024 06:56:14 +1300
Message-ID: <CAMp_5HY8sv61jgS-aKuXmDTVadXK0n04tXEFYZknjzLNYX_7bw@mail.gmail.com>
Subject: Re: [yocto] Intermittent build failure where dwarfsrcfiles doesn't exist
To: Ross Burton <Ross.Burton@arm.com>,
        Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000002884700610a62ec7"
X-Proofpoint-GUID: 9n-dGbZNRYXvuGGEwzwgUaZRZrHpGGPz
X-Proofpoint-ORIG-GUID: 9n-dGbZNRYXvuGGEwzwgUaZRZrHpGGPz
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 suspectscore=0
 impostorscore=0 bulkscore=0 phishscore=0 spamscore=0 lowpriorityscore=0
 priorityscore=1501 mlxscore=0 adultscore=0 clxscore=1011 mlxlogscore=669
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2311290000
 definitions=main-2402050134
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Feb 2024 17:56:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62395

--0000000000002884700610a62ec7
Content-Type: text/plain; charset="UTF-8"

It's the recipe for our application:

inherit externalsrc externalgitsrc pkgconfig cmake qemu-ctest


On Tue, 6 Feb 2024 at 01:15, Ross Burton <Ross.Burton@arm.com> wrote:

> On 5 Feb 2024, at 06:28, thomas.isaacson via lists.yoctoproject.org
> <thomas.isaacson=motorolasolutions.com@lists.yoctoproject.org> wrote:
> > I've setup a CI build at my new company using a Github Action. I haven't
> setup a cache yet so it takes 3 hours but it's not showing this
> intermittent fault - it works every time. On my PC (which does cache the
> build locally) I still see this problem. So somehow it's related to the
> cache?
>
> Is this just in specific recipes?  Can you share the recipe, or at least
> what classes it inherits?
>
> (I have a hunch this is the now-fixed bin_package bug, which was caused by
> inappropriate use of INHIBIT_DEFAULT_DEPS)
>
> Ross

-- 


*For more information on how and why we collect your personal 
information, please visit our Privacy Policy 
<https://www.motorolasolutions.com/en_us/about/privacy-policy.html?elqTrackId=8980d888905940e39a2613a7a3dcb0a7&elqaid=2786&elqat=2#privacystatement>.*

--0000000000002884700610a62ec7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It&#39;s the recipe for our application:<div><br></div><di=
v>inherit externalsrc externalgitsrc=C2=A0pkgconfig cmake qemu-ctest<br></d=
iv><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Tue, 6 Feb 2024 at 01:15, Ross Burton &lt;<a href=3D"m=
ailto:Ross.Burton@arm.com">Ross.Burton@arm.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">On 5 Feb 2024, at 06:28, thom=
as.isaacson via <a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer=
" target=3D"_blank">lists.yoctoproject.org</a> &lt;thomas.isaacson=3D<a hre=
f=3D"mailto:motorolasolutions.com@lists.yoctoproject.org" target=3D"_blank"=
>motorolasolutions.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt; I&#39;ve setup a CI build at my new company using a Github Action. I h=
aven&#39;t setup a cache yet so it takes 3 hours but it&#39;s not showing t=
his intermittent fault - it works every time. On my PC (which does cache th=
e build locally) I still see this problem. So somehow it&#39;s related to t=
he cache?<br>
<br>
Is this just in specific recipes?=C2=A0 Can you share the recipe, or at lea=
st what classes it inherits?<br>
<br>
(I have a hunch this is the now-fixed bin_package bug, which was caused by =
inappropriate use of INHIBIT_DEFAULT_DEPS)<br>
<br>
Ross</blockquote></div>

<br>
<p dir=3D"ltr" style=3D"line-height:1.8;margin-top:0pt;margin-bottom:0pt"><=
font size=3D"2"><i><span style=3D"background-color:rgb(255,255,255);font-fa=
mily:Arial;white-space:pre-wrap">For more information on how and why we col=
lect your personal information, please visit our </span><span style=3D"whit=
e-space:pre-wrap;color:rgb(38,50,56);font-family:Roboto,sans-serif"><a href=
=3D"https://www.motorolasolutions.com/en_us/about/privacy-policy.html?elqTr=
ackId=3D8980d888905940e39a2613a7a3dcb0a7&amp;elqaid=3D2786&amp;elqat=3D2#pr=
ivacystatement" target=3D"_blank">Privacy Policy</a>.</span></i></font></p>
--0000000000002884700610a62ec7--

