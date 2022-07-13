Return-Path: <t-maiaxiao@linux.microsoft.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC03FC433EF
	for <webhook@archiver.kernel.org>; Wed, 13 Jul 2022 00:14:42 +0000 (UTC)
Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
 by mx.groups.io with SMTP id smtpd.web12.16538.1657671278395866742
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Jul 2022 17:14:38 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linux.microsoft.com
 header.s=default header.b=sGT8KMtg;
 spf=pass (domain: linux.microsoft.com, ip: 13.77.154.182,
 mailfrom: t-maiaxiao@linux.microsoft.com)
Received: from [10.17.37.213] (unknown [167.220.26.213])
	by linux.microsoft.com (Postfix) with ESMTPSA id D2592204DE86;
	Tue, 12 Jul 2022 17:14:37 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com D2592204DE86
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1657671277;
	bh=Zc0PNLIbjRbYz4Di/zPl8EpqM3a97ckrLzq3p88uPRM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=sGT8KMtg69Lkg1ZNWFnYA0cLMjIcrCdR8/gpBJHbzoZ1WCKhgqqhpsJsDc81JDQOX
	 mQL4QZ2N3N6Q1ZlhIrL+odTM0yP6Py30HISAFOOju8tyjmWFk2r3LwLgy+stDWkO/l
	 sAhuvq1rtvPKTUV5CiUNEop3RNEwcnz6hQGYjsZo=
Message-ID: <e1dbf6c7-adeb-cf16-e470-d6af8e70b0f6@linux.microsoft.com>
Date: Tue, 12 Jul 2022 17:14:37 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.2
Subject: Re: Binary compliance validation
Content-Language: en-US
To: yocto@lists.yoctoproject.org
Cc: pauleg@microsoft.com
References: 
 <f23e2da3c978887b3072c4f79674391768804a72.camel@linux.microsoft.com>
From: Maia Xiao <t-maiaxiao@linux.microsoft.com>
In-Reply-To: 
 <f23e2da3c978887b3072c4f79674391768804a72.camel@linux.microsoft.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Jul 2022 00:14:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57518

Hello everyone,

On 8/31/2021 8:45 AM, Anatol Belski wrote:
> I'm writing to present an ABI compliance check mechanism for Poky
> recently developed to help improve the product stability. It is still
> an early work which however has already proven itself useful and thus
> the time seems right to ask for the community view.
>=20
> The implementation is made as a core Python module, which can be used
> in a Yocto layer or imported in any other script. The layer is
> available under:
> https://github.com/clio-project/meta-binaryaudit
>=20
> and the accompanying python module (which moves at some faster pace and
> is synchronized into the layer) and a command line tool:
> https://github.com/clio-project/python-binaryaudit

Microsoft is going to pick this up (the ABI compliance layer[0]) as an=20
intern project again this summer, with a particular focus on improving=20
code quality. I=E2=80=99ll be working on it for the next two months or so=
, and=20
here are some of my preliminary ideas so far.

One goal is to make the layer provide helpful enough logs on its own, so=20
that the layer could be used without extra scripting. This means=20
emitting actual BitBake logs, using standard QA error/warning logic to=20
log ABI issues, and making sure the actual ABI differences go into logs.=20
These improvements should hopefully make the layer easier to integrate=20
into CI/CD.

Anatol=E2=80=99s original post also mentions potential extensions like bi=
nary=20
size auditing, which I=E2=80=99ll investigate as time permits (probably i=
n the=20
form of another layer).

There will, of course, be efforts in the genre of code cleanup and=20
usability improvement. For example, better error handling, refactoring=20
the accompanying Python library so that only the minimal supporting code=20
is included, etc.

If anyone has any feature suggestions or improvements that they want to=20
see made, please feel free to share! To quickly recap, the OP[1] has the=20
context behind this project and the basic idea of how it works: dumping=20
ABI into buildhistory and comparing against them afterwards during=20
another build. There was some chatter here[2] about doing ABI checking=20
for the LTS branches as well, which briefly mentions this project.

Thanks!

~ maia

[0] https://github.com/clio-project/meta-binaryaudit
[1] https://lists.yoctoproject.org/g/yocto/topic/85279259
[2] https://lists.yoctoproject.org/g/yocto/topic/89009568


