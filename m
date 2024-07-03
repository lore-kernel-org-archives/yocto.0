Return-Path: <christopher.weronski@protonmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11284C2BD09
	for <webhook@archiver.kernel.org>; Wed,  3 Jul 2024 06:03:04 +0000 (UTC)
Received: from mail-40140.protonmail.ch (mail-40140.protonmail.ch [185.70.40.140])
 by mx.groups.io with SMTP id smtpd.web10.44221.1719986577658865576
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Jul 2024 23:02:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@protonmail.com header.s=protonmail3 header.b=p9GKy8Hx;
 spf=pass (domain: protonmail.com, ip: 185.70.40.140, mailfrom: christopher.weronski@protonmail.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1719986575; x=1720245775;
	bh=ZOs+tmLoJA1dJLPDg7o282zqHS9kur5COHDB6YBpf4A=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=p9GKy8HxGHkvJjKJ1DaWlqUEj5bLU0b0wouPBaIyQFVoeeq6uQ+7LhWPoA1djYbXP
	 uHQUBXYcOk2QJF5K31e5Yqiv2qckfCcz4YERa5WQMQH5hTC++a9LKGFR2H3Y1mo0ZH
	 jQuStYc2BbWV9j2lJC3ChvDg7d8NC8VuSgLVFJMh42bEH71a6CUiBZ5eMUKaMtI7gK
	 34TQ8JwEMEPugR/uLVdi7qRKhrb3QOok8Y2K14/NbbvdQFItQrjYy2U+oo7t2WIa5p
	 BtOVmz6Dck4d778Bz6PS60aLj+yAA/WFnAPmTGzPA8HchhJC9SZz57dSLxyPchXCN3
	 PxSTb4sqZlmLA==
Date: Wed, 03 Jul 2024 06:02:52 +0000
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: Chris <christopher.weronski@protonmail.com>
Subject: Fw: Inquiry and Proposal: Method to Identify Package Containing a Specific Binary
Message-ID: <mQZDRmo5uaTC98_QPOomYfc7OvVAENC3YX9gFT4h4LPL3wuQMwrQ6533-hYbjM77iHRuQpZLgbI8w4bNNRu33O7nqlSQ0AnMLEnCjnEnjIs=@protonmail.com>
In-Reply-To: <xhZK8E4f1CnnMzyvih8DWjZYUqf7fpE_8KolmZp0UKSabooljodh4TxTDefDuDZ09uBEhbx_4mlIEyr3y_c6zYZqL39W5d9w_vhIb5aGrQs=@protonmail.com>
References: <xhZK8E4f1CnnMzyvih8DWjZYUqf7fpE_8KolmZp0UKSabooljodh4TxTDefDuDZ09uBEhbx_4mlIEyr3y_c6zYZqL39W5d9w_vhIb5aGrQs=@protonmail.com>
Feedback-ID: 7840096:user:proton
X-Pm-Message-ID: 3b484fa555060ac69a72786aa6b6678725fc571c
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Jul 2024 06:03:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63431



Sent from Proton Mail Android


-------- Original Message --------
On 7/3/24 07:57, Chris <christopher.weronski@protonmail.com> wrote:

>  Dear Yocto Community,
> =20
>  I am reaching out to inquire whether there currently exists a method wit=
hin the Yocto Project to identify which package contains a specific binary.=
 Recently, I encountered a situation where I needed the sfdisk utility. Ini=
tially, I installed the util-linux package, assuming it included sfdisk. Ho=
wever, I later discovered that I needed to install util-linux-sfdisk to obt=
ain the utility, after searching the mailing list archives. A similar situa=
tion occurred when searching for the package that contained the mkfs.ext4 u=
tility. Eventually I discovered it was the e2fsprogs package, however I fee=
l searching could be improved.
> =20
>  If there is no existing method to easily determine which package provide=
s a specific binary, I would like to propose the development of such a tool=
. This tool would greatly assist in adding dependencies to recipes, making =
the process less cumbersome and reducing the likelihood of similar issues.
> =20
>  Additionally, if creating such a tool is not feasible, I suggest adding =
a "Provides" section to the recipe pages on the OpenEmbedded Layer Index (e=
.g., https://layers.openembedded.org/layerindex/recipe/XYZ). This section w=
ould list the binaries that each package installs, helping users quickly as=
certain whether a given binary is included in a package.
> =20
>  I believe these enhancements would significantly improve the efficiency =
of the Yocto Project for all users. I welcome any feedback or discussion on=
 this matter and look forward to your thoughts.
> =20
>  Thank you for your time and consideration.
> =20
>  Best regards,
>  Chris
>  Sent from Proton Mail Android

