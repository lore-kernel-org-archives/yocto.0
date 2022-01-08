Return-Path: <foss@0leil.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C7DC433F5
	for <webhook@archiver.kernel.org>; Sat,  8 Jan 2022 15:32:27 +0000 (UTC)
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net
 [217.70.183.196])
 by mx.groups.io with SMTP id smtpd.web12.6688.1641655946007966615
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 Jan 2022 07:32:26 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=none, err=permanent DNS error (domain: 0leil.net, ip: 217.70.183.196,
 mailfrom: foss+yocto@0leil.net)
Received: (Authenticated sender: foss@0leil.net)
	by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id CDEEEE0004;
	Sat,  8 Jan 2022 15:32:23 +0000 (UTC)
Date: Sat, 08 Jan 2022 16:32:21 +0100
From: Quentin Schulz <foss+yocto@0leil.net>
To: yocto@lists.yoctoproject.org, Trevor Woerner <twoerner@gmail.com>
CC: kas-devel <kas-devel@googlegroups.com>
Subject: Re: [yocto] pseudo error building master with kas-container
In-Reply-To: <20220108021317.GA38052@localhost>
References: <20220104192528.GA25696@localhost>
 <5A44F13B-F383-449C-8FB9-87BEBEF1272D@0leil.net>
 <20220106135047.GA15963@localhost>
 <E46D1565-EFA6-448E-95EC-DBB010C444BE@0leil.net>
 <20220107201240.GA13417@localhost>
 <2AF48BF0-EE03-4443-878C-EB2CB52C8E64@0leil.net>
 <20220108021317.GA38052@localhost>
Message-ID: <B1F8C02E-93E0-42E4-88EF-02F78F8F834C@0leil.net>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 08 Jan 2022 15:32:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55764



On January 8, 2022 3:13:17 AM GMT+01:00, Trevor Woerner <twoerner@gmail=2E=
com> wrote:
>On Fri 2022-01-07 @ 11:21:38 PM, Quentin Schulz wrote:
>> On January 7, 2022 9:12:41 PM GMT+01:00, Trevor Woerner <twoerner@gmail=
=2Ecom> wrote:
>> >In my experiments it seems like all I need is the update to kas-contai=
ner to
>> >add "--tmpfs /tmp" to KAS_RUNTIME_ARGS (around line 125)=2E Are you go=
ing to
>> >submit a patch to kas upstream?
>>=20
>> Feel free to do it, I don't use kas-container, I use the kas container
>> from ghcr=2Eio directly so this won't impact me and I wouldn't be able =
to
>> "maintain" this part and see if something breaks it=2E I anyway have as=
 many
>> clues as you have on why this fixes pseudo issues so I wouldn't be able=
 to
>> write a better commit log than you'd do=2E
>
>Okay=2E Can I add your SOB line to the patch?

Thanks for asking=2E I wouldn't have minded were you to send this patch wi=
thout my SoB but if you want you can use foss+yocto@0leil=2Enet=2E

The important being that it's fixed =E2=98=BA=EF=B8=8F

Cheers,
Quentin

