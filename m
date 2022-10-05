Return-Path: <mauro@faresoftware.it>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D6BCC4332F
	for <webhook@archiver.kernel.org>; Wed,  5 Oct 2022 19:37:52 +0000 (UTC)
Received: from 6.mo575.mail-out.ovh.net (6.mo575.mail-out.ovh.net
 [46.105.63.100])
 by mx.groups.io with SMTP id smtpd.web12.329.1664998664701482962
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Oct 2022 12:37:45 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@faresoftware.it
 header.s=20210817 header.b=q5TVOC0D;
 spf=permerror, err=too many SPF records (domain: faresoftware.it,
 ip: 46.105.63.100, mailfrom: mauro@faresoftware.it)
Received: from player731.ha.ovh.net (unknown [10.111.208.246])
	by mo575.mail-out.ovh.net (Postfix) with ESMTP id 5372C24404
	for <yocto@lists.yoctoproject.org>; Wed,  5 Oct 2022 19:37:41 +0000 (UTC)
Received: from faresoftware.it (93-38-119-136.ip70.fastwebnet.it
 [93.38.119.136])
	(Authenticated sender: relay@faresoftware.it)
	by player731.ha.ovh.net (Postfix) with ESMTPSA id 5A4752F177692
	for <yocto@lists.yoctoproject.org>; Wed,  5 Oct 2022 19:37:41 +0000 (UTC)
Authentication-Results: garm.ovh;
 auth=pass (GARM-107S00186b914e3-f196-4015-81fe-65d0d72deb35,
                    405731599B0C73EEBB43BC9FBA7FB472D2FA7F27)
 smtp.auth=relay@faresoftware.it
X-OVh-ClientIp: 93.38.119.136
Message-ID: <c291f57a-8e73-5198-6363-1c46306afa86@faresoftware.it>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=faresoftware.it;
	s=20210817; t=1664998630;
	bh=2oLBsaWHpeNkzdJUpOAF0MxqICuJQ9GNz4mF+kZeDts=;
	h=Date:To:From:Subject;
	b=q5TVOC0D4UnsXuovIqnvsYl/wa98/B8cvAb2N1vBkpqP/zD6T1VIOxgJyLuflUMN5
	 bK3fa1OepNM6ua7WTWxba91OHOpxmXnXBMgcTyn5TuUqK5kVEZTsJTeF/ny30rPDH/
	 TnTagWIThyFWAFKfisbwUDOQ20QdK2peClrr5pV8=
Date: Wed, 5 Oct 2022 21:37:36 +0200
MIME-Version: 1.0
To: yocto@lists.yoctoproject.org
Content-Language: en-US
From: Mauro Ziliani <mauro@faresoftware.it>
Subject: SRC_URI file://f.tar and destination
Content-Type: text/plain; charset=UTF-8; format=flowed
X-Synology-Spam-Status: score=-0.101, required 5, TO_DN_NONE 0,
 RCVD_COUNT_ZERO 0, FROM_EQ_ENVFROM 0, MIME_TRACE 0, __NOT_SPOOFED 0,
 MID_RHS_MATCH_FROM 0, NO_RECEIVED -0.001, FROM_HAS_DN 0,
 TO_MATCH_ENVRCPT_ALL 0, MIME_GOOD -0.1, RCPT_COUNT_ONE 0
X-Synology-Spam-Flag: no
X-Synology-Virus-Status: no
X-Ovh-Tracer-Id: 15926135658384983081
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: 
 gggruggvucftvghtrhhoucdtuddrgedvfedrfeeifedgudefkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepkfffggfvhffutgfgsehtkeertddttdejnecuhfhrohhmpeforghurhhoucgkihhlihgrnhhiuceomhgruhhrohesfhgrrhgvshhofhhtfigrrhgvrdhitheqnecuggftrfgrthhtvghrnhephefhhfegjedtudfhhfeiveevvdduieetffehjeeghfegfeelgefghfdtuddtieevnecuffhomhgrihhnpehmhihsvghrvhgvrhdrtghomhenucfkpheptddrtddrtddrtddpleefrdefkedrudduledrudefieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrjeefuddrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehmrghurhhosehfrghrvghsohhfthifrghrvgdrihhtpdhnsggprhgtphhtthhopedupdhrtghpthhtohephihotghtoheslhhishhtshdrhihotghtohhprhhojhgvtghtrdhorhhgpdfovfetjfhoshhtpehmohehjeeh
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Oct 2022 19:37:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58270

Hi all.

I'd like to explod a tar file into subdirectory of source file.


The recipe fetch the original source from a git repos.

I make a tar of folder I'd like to add to the original sources.


SRC_URI :=3D "\
 =C2=A0=C2=A0=C2=A0 git://git.myserver.com/project.git \
 =C2=A0=C2=A0=C2=A0 file://added_folder.tar \
"

# S is ${WORKDIR}/git


Now added_folder.tar is exploded in ${WORKDIR} but I'd like to explod it=20
in ${WORKDIR}/git


There is some parameter for file:// fetcher?


Best regards,

 =C2=A0 MZ


