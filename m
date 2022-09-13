Return-Path: <cbing@cybernetics.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A64BC54EE9
	for <webhook@archiver.kernel.org>; Tue, 13 Sep 2022 18:56:16 +0000 (UTC)
Received: from mail.cybernetics.com (mail.cybernetics.com [173.71.130.66])
 by mx.groups.io with SMTP id smtpd.web11.1543.1663095366758328310
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Sep 2022 11:56:08 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@cybernetics.com
 header.s=mail header.b=QaREViUC;
 spf=pass (domain: cybernetics.com, ip: 173.71.130.66,
 mailfrom: btv1==255e0df277a==cbing@cybernetics.com)
X-ASG-Debug-ID: 1663095365-1cf43916951271a0001-O4Qx4w
Received: from cybernetics.com ([10.10.4.126]) by mail.cybernetics.com with
 ESMTP id Dj7lC4P9Yyqq4gH5 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Sep 2022 14:56:05 -0400 (EDT)
X-Barracuda-Envelope-From: cbing@cybernetics.com
X-ASG-Whitelist: Client
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=cybernetics.com; s=mail;
	bh=bCN/OAOmtj13fimjqvr29yyw50/59kvwP5ctvGl7JgE=;
	h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:
	Content-Language:Subject:MIME-Version:Date:Message-ID; b=QaREViUCAOvFCvZnEceT
	34jSQEpPqXdgsfoQ3qDSI2+cE+L0mrD3KML0W0t8+yUzpO1h0z0d4YqyxlwYL3qq1OH3z1tqfGy9F
	SuD7wr9avOhHiqs2OjB0Vao5EIRfzWclGLdyHaeqv2n4aHo9f4zGlGlFTUcTNLLQoEvruZFzxc=
Received: from [10.157.1.18] (HELO [192.168.184.100])
  by cybernetics.com (CommuniGate Pro SMTP 7.1.1)
  with ESMTPS id 12199005 for yocto@lists.yoctoproject.org;
 Tue, 13 Sep 2022 14:56:05 -0400
Message-ID: <5ecded33-7ac0-d0fb-a164-9db6928df2a3@cybernetics.com>
Date: Tue, 13 Sep 2022 14:56:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [yocto] Re : Integration of YubiKey in Yocto
Content-Language: en-US
X-ASG-Orig-Subj: Re: [yocto] Re : Integration of YubiKey in Yocto
To: yocto@lists.yoctoproject.org
References: <MpZg.1663087040303223834.o9rM@lists.yoctoproject.org>
From: Claude Bing <cbing@cybernetics.com>
In-Reply-To: <MpZg.1663087040303223834.o9rM@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8
X-Barracuda-Connect: UNKNOWN[10.10.4.126]
X-Barracuda-Start-Time: 1663095365
X-Barracuda-URL: https://10.10.4.122:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at cybernetics.com
X-Barracuda-Scan-Msg-Size: 858
X-Barracuda-BRTS-Status: 1
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Sep 2022 18:56:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58028

I would start with creating a recipe for this project and including the
binaries in your build:

  https://github.com/Yubico/libfido2

Our use for it is not related to shell logins, so someone else will have
to weigh in on that integration.

On 9/13/22 12:37, poornesh.g@mindteck.com wrote:
> Greetings !
>=20
> I am trying to integrate YubiKey in Yocto . If anyone is successful ,
> please help me=C2=A0 out with the steps.
>=20
> Thanks
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58026): https://lists.yoctoproject.org/g/yocto/mess=
age/58026
> Mute This Topic: https://lists.yoctoproject.org/mt/93659318/4618432
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [cbing@cybern=
etics.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

