Return-Path: <michael.opdenacker@bootlin.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB1D4C38A2D
	for <webhook@archiver.kernel.org>; Mon, 24 Oct 2022 13:07:27 +0000 (UTC)
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
 by mx.groups.io with SMTP id smtpd.web08.18874.1666616845652362199
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Oct 2022 06:07:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bootlin.com header.s=gm1 header.b=IGp8pb2W;
 spf=pass (domain: bootlin.com, ip: 217.70.183.193, mailfrom: michael.opdenacker@bootlin.com)
Received: (Authenticated sender: michael.opdenacker@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 60EF1240017;
	Mon, 24 Oct 2022 13:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1666616843;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bxJTyRu98x8ws9jBQA5uNwI2oN504OVgdaQ43Mhxmcg=;
	b=IGp8pb2WOwQKmyjNbrbs/UeqJGl3F0a8MIzVZc4hjNZAsSzIN194D8x3eVwhD94cNf8BSG
	+at3jG5dQ2ufgheDd6q4GmlM+ym2GK0JtEnFKxWBnGD9iwLdW5cd3O8fFqCV6hKLS0wUQN
	Pme42nlwLrhpCIxm8MODIaaGVX7TfztBquZrpv0LX/PA/0RdrfYAN62TXGRBqo/+FZGTyf
	F82I5/HWnc72aW3pXRY0iSQK99PZkehJfpi2f8tqc8rtbguKct9crM6BVqMuLuJY3mtnor
	5ynpG7EjpnOUDFMLKh4t7AO5I2QiEjJ8ZNEH9r83DvUMdcLBofV3F47EAMmWnA==
Message-ID: <9101fc7b-aa9e-590d-d4e7-63bb1f09125a@bootlin.com>
Date: Mon, 24 Oct 2022 15:07:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] other ways of removing GPLv3 components (than meta-gplv2)
 #gplv3
To: Alexander Kanavin <alex.kanavin@gmail.com>, poberauer@yahoo.co.uk
References: <CANNYZj9ar+z=m-G-76bi0icLac1wLfHw++9zpWaMC=3n1uz=Ag@mail.gmail.com>
 <850.1666612693829888716@lists.yoctoproject.org>
 <CANNYZj-43o28uUN3nSmspU5M2XbrwnX1VmeSLXJujjQupZANmA@mail.gmail.com>
Content-Language: en-US
From: Michael Opdenacker <michael.opdenacker@bootlin.com>
Organization: Bootlin
In-Reply-To: <CANNYZj-43o28uUN3nSmspU5M2XbrwnX1VmeSLXJujjQupZANmA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Oct 2022 13:07:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58400


On 10/24/22 14:27, Alexander Kanavin wrote:
> On Mon, 24 Oct 2022 at 13:58, Peter via lists.yoctoproject.org
> <poberauer=yahoo.co.uk@lists.yoctoproject.org> wrote:
>> However, the documentation recommends the global ban and does not mention the per-image variant?
>> https://docs.yoctoproject.org/ref-manual/images.html
>> https://docs.yoctoproject.org/ref-manual/variables.html#term-INCOMPATIBLE_LICENSE
> Yes, someone should go over the documentation and change every mention
> of this to recommend per-image variant, as a global one is basically
> impossible to use without pulling in meta-gpl2. Patches welcome :)
>
>> Out of curiosity, why does the per image variant work, but not the global ban?
> Global ban works at the task dependency creation stage, and if bash
> needs to be built, it will throw an error, even if the actual bash
> binary will not end up in the image, and is only used as a runtime
> dependency for a package that won't be installed.
> Per-image ban performs a 'late' check when the image is actually put together.
>
> You should now know everything to fix the docs ;-)

Thanks! I should be able to send a patch this week.

Cheers
Michael.

-- 
Michael Opdenacker, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


