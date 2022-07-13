Return-Path: <pavel@zhukoff.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EBA5EC433EF
	for <webhook@archiver.kernel.org>; Wed, 13 Jul 2022 07:08:34 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
 [66.111.4.25])
 by mx.groups.io with SMTP id smtpd.web10.19324.1657696112837559373
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Jul 2022 00:08:33 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@zhukoff.net header.s=fm3
 header.b=STq60oNz;
 spf=pass (domain: zhukoff.net, ip: 66.111.4.25, mailfrom: pavel@zhukoff.net)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 1A2AD5C00B7;
	Wed, 13 Jul 2022 03:08:32 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Wed, 13 Jul 2022 03:08:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zhukoff.net; h=
	cc:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:reply-to:sender:subject:subject:to:to; s=fm3; t=
	1657696112; x=1657782512; bh=iPq+4gsrdQI42yY3O3kkSlt+QEl3AxdOm4n
	axtuNAA0=; b=STq60oNz0kKiizQZqJhNbAHjYDbSX0h3oo4ZxiT1zf7JWcWWeuh
	xUVCvZ8dJtqBxCV8WP4FTmJG6zO7JdMSg7hkyJFLgaoWj39GvkuE3HXz6PDfJ7um
	5o3C3MUjfCtB6YusS/cbq+BsDWOdtzRRtpUdQ4UnYIUm/QCDEcTERsR5LmXgiThl
	kVrlW7uRrWJP8LeWLhJDxl7faw6yqN2S4wstxD7Z5FnAvDsrQJNHlL+ly6XedLu+
	VctqziOk+JfdLtxeKWQ8W/oUVA6ipsgVih/mVhMpqYVMR5BsWJ8IxKyVqNwC//Fr
	4GF47XTNi49ZkGgejPzEw1Zaj0KaH8al9vQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1657696112; x=1657782512; bh=iPq+4gsrdQI42yY3O3kkSlt+QEl3AxdOm4n
	axtuNAA0=; b=uz1UNtueAfaVNAWLIOAPb6tvnTDE25aZzIpYbFDHumHq2TpyCxD
	jC0LXJmHJOYGUqGxi0cJDqQpKAWGvIyIg7fS3l3hecSxFOjkPT1IP9yHT+43xr6Z
	LnvoBAmhgzuNoRONj832eN3/mvbFNMHy0Sst5l92lzniluCiM36um4szeDhh1e5f
	FfdIaoBhfUJv7+tAPbmlqtBW32CL5gLBVULnFnUbaJbXQpprvDY5wNUUAhSWvGCM
	+DHdJKtTgEvypgVy1lJwG41WuP4puz8Synl9eiQWP1luwJybcb73H5Wg3WbiuHZU
	xwVXQheOd2GyhVvdEHNSunkrgvyKx37BrLw==
X-ME-Sender: <xms:b2_OYq-NApWWRp1EVoAG6wY1ziFRmhxbgUYwfgsZj26dOwENbJsg3w>
    <xme:b2_OYqupq2TT1PgPw_n3JJEuDSLm4d3bVRsj00voQy_r9SpsStkcad0EHg83G4rXj
    qgylVei5uqsXFpHp0E>
X-ME-Received: 
 <xmr:b2_OYgA4i8Isi62Xt7TgW9TopIvNx62jmESMauz8kFDKzK0Unc4qzuw7mi6kyv3Z08pCNKk>
X-ME-Proxy-Cause: 
 gggruggvucftvghtrhhoucdtuddrgedvfedrudejiedguddukecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfhgfhffvvefuffhrjgfkgggtgf
    esthhqredttderjeenucfhrhhomheprfgrvhgvlhcukghhuhhkohhvuceophgrvhgvlhes
    iihhuhhkohhffhdrnhgvtheqnecuggftrfgrthhtvghrnhepfffhteduhfdugfekgefhke
    ehheefleeuveeuteefgfetteektdejgeevveehtdetnecuffhomhgrihhnpehgihhthhhu
    sgdrtghomhdpvggtlhhiphhsvgdrohhrghdphihotghtohhprhhojhgvtghtrdhorhhgne
    cuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepphgrvhgv
    lhesiihhuhhkohhffhdrnhgvth
X-ME-Proxy: <xmx:b2_OYidEes5NPiK_TmQ0PZ42f-Sz-VWun_zfoLdOnLmlceu_ZbS3Mg>
    <xmx:b2_OYvPSgaUH5Qn7dxBkv6pNQjeR6JzGdqkKX_6uiziHP0M0F0y9WQ>
    <xmx:b2_OYsm_t85muxT-XqON0O0Xgkkq6NyOqdAp3QmFLGASbj2n2cVeNQ>
    <xmx:cG_OYl0NEbx0s89pGPNnRFS1AHDVFpVK9iIorwFgu0mHC54rpYhfiQ>
Feedback-ID: ib94946c9:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 13 Jul 2022 03:08:31 -0400 (EDT)
References: 
 <f23e2da3c978887b3072c4f79674391768804a72.camel@linux.microsoft.com>
 <e1dbf6c7-adeb-cf16-e470-d6af8e70b0f6@linux.microsoft.com>
User-agent: mu4e 1.6.10; emacs 28.1
From: Pavel Zhukov <pavel@zhukoff.net>
To: t-maiaxiao <t-maiaxiao@linux.microsoft.com>
Cc: pauleg@microsoft.com, yocto@lists.yoctoproject.org
Subject: Re: [yocto] Binary compliance validation
Date: Wed, 13 Jul 2022 08:53:45 +0200
Reply-To: pavel@zhukoff.net
In-reply-to: <e1dbf6c7-adeb-cf16-e470-d6af8e70b0f6@linux.microsoft.com>
Message-ID: <87a69d8p7f.fsf@gentoo.zhukoff.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Jul 2022 07:08:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57520


"t-maiaxiao" <t-maiaxiao@linux.microsoft.com> writes:

> Hello everyone,
>
> On 8/31/2021 8:45 AM, Anatol Belski wrote:
>> I'm writing to present an ABI compliance check mechanism for Poky
>> recently developed to help improve the product stability. It is still
>> an early work which however has already proven itself useful and thus
>> the time seems right to ask for the community view.
>> The implementation is made as a core Python module, which can be
>> used
>> in a Yocto layer or imported in any other script. The layer is
>> available under:
>> https://github.com/clio-project/meta-binaryaudit
>> and the accompanying python module (which moves at some faster pace
>> and
>> is synchronized into the layer) and a command line tool:
>> https://github.com/clio-project/python-binaryaudit
>
> Microsoft is going to pick this up (the ABI compliance layer[0]) as an
> intern project again this summer, with a particular focus on improving
> code quality. I=E2=80=99ll be working on it for the next two months or so=
, and
> here are some of my preliminary ideas so far.
>
> One goal is to make the layer provide helpful enough logs on its own,
> so that the layer could be used without extra scripting. This means
> emitting actual BitBake logs, using standard QA error/warning logic to
> log ABI issues, and making sure the actual ABI differences go into
> logs. These improvements should hopefully make the layer easier to
> integrate into CI/CD.
>
I've been working on meta-binaryaudit integration into CI in the Oniro
Project [1]. We had to fork the project due to maintainer being
unresponsive for quite a while.=20
The main issue is error handling. abicheck exits on any non-zero code
returned by abidw  which is not acceptable for CI. Besides of that I've
decided to make abicheck a task, not postfunc so it behaves pretty much
like cvecheck.=20

[1] https://gitlab.eclipse.org/eclipse/oniro-core/meta-binaryaudit

> Anatol=E2=80=99s original post also mentions potential extensions like bi=
nary
> size auditing, which I=E2=80=99ll investigate as time permits (probably i=
n the
> form of another layer).
>
> There will, of course, be efforts in the genre of code cleanup and
> usability improvement. For example, better error handling, refactoring
> the accompanying Python library so that only the minimal supporting
> code is included, etc.
>
> If anyone has any feature suggestions or improvements that they want
> to see made, please feel free to share! To quickly recap, the OP[1]
> has the context behind this project and the basic idea of how it
> works: dumping ABI into buildhistory and comparing against them
> afterwards during another build. There was some chatter here[2] about
> doing ABI checking for the LTS branches as well, which briefly
> mentions this project.
>
> Thanks!
>
> ~ maia
>
> [0] https://github.com/clio-project/meta-binaryaudit
> [1] https://lists.yoctoproject.org/g/yocto/topic/85279259
> [2] https://lists.yoctoproject.org/g/yocto/topic/89009568
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57518): https://lists.yoctoproject.org/g/yocto/messag=
e/57518
> Mute This Topic: https://lists.yoctoproject.org/mt/85279259/6390638
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [pavel@zhukoff.=
net]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


