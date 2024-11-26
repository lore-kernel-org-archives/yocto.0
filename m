Return-Path: <kanakshilledar111@protonmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09121D5A6DD
	for <webhook@archiver.kernel.org>; Tue, 26 Nov 2024 03:57:50 +0000 (UTC)
Received: from mail-40130.protonmail.ch (mail-40130.protonmail.ch [185.70.40.130])
 by mx.groups.io with SMTP id smtpd.web11.38358.1732593463658724762
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Nov 2024 19:57:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@protonmail.com header.s=protonmail3 header.b=FTgGr3lz;
 spf=pass (domain: protonmail.com, ip: 185.70.40.130, mailfrom: kanakshilledar111@protonmail.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1732593461; x=1732852661;
	bh=hgV3+K7DhSQzPHtrTH1aUEbT3Noh1jGYKNPCGGzkt/Y=;
	h=Date:To:From:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector:List-Unsubscribe:List-Unsubscribe-Post;
	b=FTgGr3lzNRZYx+0dvVFowszpWD3v74ABSJLpYYjpTj4TaFLw0wj+7EGo5vDMhQwkG
	 VBUx4bvqMD+BJXrA96ZVOBdKvHmSsHDAV7kR1LYCPXVgkkjZewvuKlhIxT3dRBUwRz
	 xzXJ4KNPmZ1DUhx7DmTY78Wx6fw6X3obcTJaxzY5cTkF69+YMcA+8ZJEMVyJPkHUvn
	 /kflNI/PgqUqlk/qMvbeRjPCO632d1KiXoKnF+ErVtZb2NHgWpfG6765W/965OpeUj
	 ALP4oHib+E5sP8a8E2ajGb0TZyRGqdIDjUpXQqszSXnRRZ9ooeFlTqeTx7XIxNllkr
	 MaDEjDQ0Ta7Zw==
Date: Tue, 26 Nov 2024 03:57:35 +0000
To: yocto@lists.yoctoproject.org
From: Kanak Shilledar <kanakshilledar111@protonmail.com>
Subject: Re: [yocto] poky master gcc 14.2 failing at do_compile
Message-ID: <Gp1ZkhWr3R5EAfZ6IMdKqHXdm1xm2tMuYr53YwnIA8QAgu1GFk-PmMKOmwGvaDYqJz6g-ZANv6r2AfWCd0RQqAdCAN50hEzBFX-LjnUAGNw=@protonmail.com>
In-Reply-To: <CAMKF1soMARmeK2ak5T_kQGakN21PBz2fc1fxJKmqNKCNaAmruQ@mail.gmail.com>
References: <uLDAQA9NCYNb2YdDUyELhD7St0jSmMC214MYF8dgAa3gkIl8zZc-y3eTj-HP_HX0oPkiZVPaZ5oZpONslESKvwRgVM5mxovf0QXW4-faV_E=@protonmail.com> <CAMKF1soMARmeK2ak5T_kQGakN21PBz2fc1fxJKmqNKCNaAmruQ@mail.gmail.com>
Feedback-ID: 26271244:user:proton
X-Pm-Message-ID: eeaddbe83706d55222a961b23b1e80a0c959544a
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Nov 2024 03:57:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64346

Hi Gyorgy and Khem,

Thanks for the help!
It definitely invoked the OOM killer. I have 16GB ram on my machine but it =
is running under WSL so it is unable to effectively use the whole 16GB of m=
emory. I will have to reduce the build parallelism.

Thanks and Regards,
Kanak Shilledar

