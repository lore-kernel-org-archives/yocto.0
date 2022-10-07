Return-Path: <mauro@faresoftware.it>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9AD4C433FE
	for <webhook@archiver.kernel.org>; Fri,  7 Oct 2022 06:14:52 +0000 (UTC)
Received: from 5.mo584.mail-out.ovh.net (5.mo584.mail-out.ovh.net
 [188.165.44.50])
 by mx.groups.io with SMTP id smtpd.web10.1394.1665123280830643608
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Oct 2022 23:14:42 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@faresoftware.it
 header.s=20210817 header.b=b5wmFiH1;
 spf=permerror, err=too many SPF records (domain: faresoftware.it,
 ip: 188.165.44.50, mailfrom: mauro@faresoftware.it)
Received: from player730.ha.ovh.net (unknown [10.110.103.132])
	by mo584.mail-out.ovh.net (Postfix) with ESMTP id 2505620DE9
	for <yocto@lists.yoctoproject.org>; Fri,  7 Oct 2022 06:14:37 +0000 (UTC)
Received: from faresoftware.it (93-38-119-136.ip70.fastwebnet.it
 [93.38.119.136])
	(Authenticated sender: relay@faresoftware.it)
	by player730.ha.ovh.net (Postfix) with ESMTPSA id 80F7E2F401898
	for <yocto@lists.yoctoproject.org>; Fri,  7 Oct 2022 06:14:37 +0000 (UTC)
Authentication-Results: garm.ovh;
 auth=pass (GARM-101G0044ae7ccf1-83ea-45b8-89e1-3e0369e5b3ce,
                    2ABBC085BFA8998EEE89C5242FFF0892228C246F)
 smtp.auth=relay@faresoftware.it
X-OVh-ClientIp: 93.38.119.136
Message-ID: <fb893fd5-3b25-bd54-6cd7-4becefc26985@faresoftware.it>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=faresoftware.it;
	s=20210817; t=1665123246;
	bh=CxhA77F5fxqQkJw6ox4+kuUBCV8XO2M+aXQisnuiGIk=;
	h=Date:Subject:To:References:From:In-Reply-To;
	b=b5wmFiH14jIktLGaG+yndK0txvE/obu7+4FC0b3mOkzXLaUzcZuqQ5WcRGHZV/BqM
	 tVHaWR8wfzYhJaiSJX1E9phFn3c0xM5O94NbeD+27gIcUjCXLiMVcGl4pMv16QtBWn
	 msPKhpdyhzkLY0MZLOxVw90zs8pgJODqCdob4NYU=
Date: Fri, 7 Oct 2022 08:14:35 +0200
MIME-Version: 1.0
Subject: Re: [yocto] SRC_URI file://f.tar and destination
To: yocto@lists.yoctoproject.org
References: <c291f57a-8e73-5198-6363-1c46306afa86@faresoftware.it>
 <903c6bff-a064-db43-f03a-34a7a25f31cf@theobroma-systems.com>
Content-Language: en-US
From: Mauro Ziliani <mauro@faresoftware.it>
In-Reply-To: <903c6bff-a064-db43-f03a-34a7a25f31cf@theobroma-systems.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-Synology-Spam-Status: score=-0.101, required 5, __NOT_A_PERSON 0,
 FROM_HAS_DN 0, TO_MATCH_ENVRCPT_ALL 0, MIME_GOOD -0.1, __THREADED 0,
 TO_DN_NONE 0, RCPT_COUNT_ONE 0, RCVD_COUNT_ZERO 0, FROM_EQ_ENVFROM 0,
 MIME_TRACE 0, __NOT_SPOOFED 0, __BODY_URI_ONLY 0, MID_RHS_MATCH_FROM 0,
 NO_RECEIVED -0.001
X-Synology-Spam-Flag: no
X-Synology-Virus-Status: no
X-Ovh-Tracer-Id: 14108933208006853673
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: 
 gggruggvucftvghtrhhoucdtuddrgedvfedrfeeiiedguddtiecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepkfffggfuvfhfhfgjtgfgsehtkeertddttdejnecuhfhrohhmpeforghurhhoucgkihhlihgrnhhiuceomhgruhhrohesfhgrrhgvshhofhhtfigrrhgvrdhitheqnecuggftrfgrthhtvghrnhephfffteeiheetveeftdejveekueduhffhgfeltdfhffevtdevteffteegvedvieehnecuffhomhgrihhnpeihohgtthhophhrohhjvggtthdrohhrghdpmhihshgvrhhvvghrrdgtohhmnecukfhppedtrddtrddtrddtpdelfedrfeekrdduudelrddufeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpohhuthdphhgvlhhopehplhgrhigvrhejfedtrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepmhgruhhrohesfhgrrhgvshhofhhtfigrrhgvrdhithdpnhgspghrtghpthhtohepuddprhgtphhtthhopeihohgtthhosehlihhsthhsrdihohgtthhophhrohhjvggtthdrohhrghdpoffvtefjohhsthepmhhoheekge
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Oct 2022 06:14:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58280

Thank you Quentin.

This is the right parameter


Best regards,

 =C2=A0 MZ

Il 06/10/22 09:47, Quentin Schulz via lists.yoctoproject.org ha scritto:
> Hi Mauro,
>
> On 10/5/22 21:37, Mauro Ziliani wrote:
>> Hi all.
>>
>> I'd like to explod a tar file into subdirectory of source file.
>>
>>
>> The recipe fetch the original source from a git repos.
>>
>> I make a tar of folder I'd like to add to the original sources.
>>
>>
>> SRC_URI :=3D "\
>> =C2=A0=C2=A0=C2=A0=C2=A0 git://git.myserver.com/project.git \
>> =C2=A0=C2=A0=C2=A0=C2=A0 file://added_folder.tar \
>> "
>>
>> # S is ${WORKDIR}/git
>>
>>
>> Now added_folder.tar is exploded in ${WORKDIR} but I'd like to explod=20
>> it in ${WORKDIR}/git
>>
>>
>> There is some parameter for file:// fetcher?
>>
>
> Can you try ;subdir=3D parameter?
>
> c.f.=20
> https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user-=
manual-fetching.html#the-unpack
>
> Cheers,
> Quentin
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58272): https://lists.yoctoproject.org/g/yocto/mess=
age/58272
> Mute This Topic: https://lists.yoctoproject.org/mt/94143218/3617482
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [mauro@fareso=
ftware.it]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

