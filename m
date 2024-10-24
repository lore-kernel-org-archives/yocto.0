Return-Path: <reatmon@ti.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88444D10388
	for <webhook@archiver.kernel.org>; Thu, 24 Oct 2024 21:35:55 +0000 (UTC)
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
 by mx.groups.io with SMTP id smtpd.web11.7683.1729805746961562598
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Oct 2024 14:35:47 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@ti.com header.s=ti-com-17Q1 header.b=qcgEbKJU;
 spf=pass (domain: ti.com, ip: 198.47.19.142, mailfrom: reatmon@ti.com)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 49OLZj8r087565;
	Thu, 24 Oct 2024 16:35:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1729805745;
	bh=Elf0OMkYdwOMYfMSHGN25nxl/XIp4QuWfIcZV0mSBvE=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=qcgEbKJUXc+7KBU82vh0x1zSZw+W+j73lJOzNUgNNp0rjWg9FaRHrmTmfzvdmJvBq
	 vDD4/JCsIVi8Kat82QiEIsS9NTQrEvRXDaKGdd0HQfs512rnny6utDPkzztIqdR6Gi
	 962THbirFYMP2OVLJYEDTBfhCVdsbGbhvFE4lvDY=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 49OLZjXF116888
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 24 Oct 2024 16:35:45 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 24
 Oct 2024 16:35:45 -0500
Received: from lelvsmtp5.itg.ti.com (10.180.75.250) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 24 Oct 2024 16:35:45 -0500
Received: from [10.249.35.83] ([10.249.35.83])
	by lelvsmtp5.itg.ti.com (8.15.2/8.15.2) with ESMTP id 49OLZjJ7065451;
	Thu, 24 Oct 2024 16:35:45 -0500
Message-ID: <64c22786-5245-49d0-be0e-407abda2895d@ti.com>
Date: Thu, 24 Oct 2024 16:35:45 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] CFP for Yocto Project Summit 2024.12 is open
To: <yocto@lists.yoctoproject.org>, <jester@theyoctojester.info>
References: <CAEt6NwpF3MEwCs0k41Bk1Sn+Vt52J+Jk255-EjHOcMuaRSRW=g@mail.gmail.com>
Content-Language: en-US
From: Ryan Eatmon <reatmon@ti.com>
In-Reply-To: <CAEt6NwpF3MEwCs0k41Bk1Sn+Vt52J+Jk255-EjHOcMuaRSRW=g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by fllv0016.ext.ti.com id 49OLZj8r087565
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Oct 2024 21:35:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64116


Hey.  Just so you know the dates you list in the CFP are a little off.

October 25th is a Friday, not a Monday.

Same for the other three dates.  Not sure if it will confuse anyone...


On 10/3/2024 5:16 AM, Josef Holzmayr wrote:
>=20
>   Submit your talk now!
>=20
>=20
> -->
> https://pretalx.com/yocto-project-summit-2024-12/cfp=20
> <https://pretalx.com/yocto-project-summit-2024-12/cfp>
>  =C2=A0<--
>=20
> The Yocto Project=C2=AE /Virtual/=C2=A0Summit 2024.12 is a virtual tech=
nical=20
> conference for engineers, open source technologists, students and=20
> academia in the OSS space.
>=20
>=20
>   Event Schedule
>=20
>   * Tuesday, Dec 3nd - Thursday, Dec 5th, 2024
>   * 12:00 PM =E2=80=93 6:00 PM (UTC)
>=20
>=20
>   CFP Schedule
>=20
>   * CFP Closes: Monday, Oct 25th, 2024
>   * CFP Notifications: Monday, Nov 1st, 2024
>   * Slides Due Date: Friday, Nov 25th, 2024
>=20
>=20
>   List of suggested topics:
>=20
>   * Layer quality: e.g. creating robust layers, safely using existing l=
ayers
>   * Productivity tricks, Best Practices
>   * Developer toolbox
>   * Security
>   * Reproducibility
>   * Supporting the Application Developer Workflow
>   * DevOps, CI/CD
>   * Containers, VMs
>   * Working with/creating BSPs
>   * Practical use of the Yocto Project
>   * Product showcase
>=20
>=20
>   Presentation formats
>=20
> Slots for talks vary from 15-45 minutes, with training sessions startin=
g=20
> at 60 minutes or longer.
>=20
> Submit at
> https://pretalx.com/yocto-project-summit-2024-12/cfp=20
> <https://pretalx.com/yocto-project-summit-2024-12/cfp>
>=20
>=20
>   Questions?
>=20
> Ping me (jester@theyoctojester.info <mailto:jester@theyoctojester.info>=
)=20
> or events@yoctoproject.org <mailto:events@yoctoproject.org>
>=20
> Josef
> on behalf of the YP events team
>=20
>=20
>=20
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63933): https://lists.yoctoproject.org/g/yocto/mess=
age/63933
> Mute This Topic: https://lists.yoctoproject.org/mt/108796648/6551054
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [reatmon@ti.c=
om]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

--=20
Ryan Eatmon                reatmon@ti.com
-----------------------------------------
Texas Instruments, Inc.  -  LCPD  -  MGTS

