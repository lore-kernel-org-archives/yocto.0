Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [81.169.146.219])
 by mx.groups.io with SMTP id smtpd.web12.1507.1591814698732831691
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Jun 2020 11:45:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@rsi-elektrotechnik.de header.s=strato-dkim-0002 header.b=QlAatfgZ;
 spf=none, err=permanent DNS error (domain: rsi-elektrotechnik.de, ip: 81.169.146.219, mailfrom: prvs=14309ead8f=holzmayr@rsi-elektrotechnik.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1591814697;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:Date:Message-ID:From:References:To:Subject:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=Liq5xGDcmvPMSuOPs477ZKT0CoDUe3lV/hIrpEQ+L54=;
	b=QlAatfgZXpRxE2Ex+kKVXovm0tSDqfiNxHrWZBaDSiCigh+HN4ywartOdjvNXKjYXt
	tB/jJFYVXv9f5rR6CndXPCSnZtGcpzwrCM7+d6XkmfncYXpa42zwE72RDgSJWctG9B+p
	4Ia52RarPuJbEDwG0LGPYyGk2kUSmLsp5gGeZ83ysf98Crf7YJ8W9k3wTbxz+NtaDSrP
	NVZWEywKZsaGeNxFbGr+40J0fkRlhzmJoWTNKVD7qf4ZsZxxRWQdjj7YgN4MIXkgBPvc
	jY+QWiO+szvEz1umra1VXiS9Gtg/vIXHz55lKojPX5UyFcFtWZpS+eJLjkEye4lQmnJE
	PJKw==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	by smtp.strato.de (RZmta 46.9.1 AUTH)
	with ESMTPSA id x08c25w5AIiuVT7
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256 bits))
	(Client did not present a certificate)
	for <yocto@lists.yoctoproject.org>;
	Wed, 10 Jun 2020 20:44:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1591814696; x=1592419496;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Subject:To:
	References:From:Message-ID:Date:User-Agent:MIME-Version:
	In-Reply-To:Content-Type:Content-Transfer-Encoding; bh=Liq5xGDcm
	vPMSuOPs477ZKT0CoDUe3lV/hIrpEQ+L54=; b=nDTXDhr3DQPXDatGFusddg+3P
	4VGVUrjSL4Sf+gosGRqKy9aZLplSoGn8VVe98ZXwlMMer/fZ0+US3GCsKvKVD3Rl
	TkVozQEQf5e/4O8cWTufTLavJJsD+OIEZtiQaXOySdHjsmwxgNAqIl6pwP8PDLaI
	7MFfiYnFC6nGI9Vnzo=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.5.5) with ESMTPSA id md50000280605.msg; 
	Wed, 10 Jun 2020 20:44:56 +0200
X-Spam-Processed: mail.rsi-elektrotechnik.de, Wed, 10 Jun 2020 20:44:56 +0200
	(not processed: message from trusted or authenticated source)
X-MDArrival-Date: Wed, 10 Jun 2020 20:44:56 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=14309ead8f=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-MDaemon-Deliver-To: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Strange error
To: yocto@lists.yoctoproject.org
References: <6831ffcc-263f-99cb-2859-e265fa04f770@faresoftware.it>
From: "Josef Holzmayr" <holzmayr@rsi-elektrotechnik.de>
Message-ID: <c02ce0d0-d1f8-db8c-0b10-ea26d7cb99f8@rsi-elektrotechnik.de>
Date: Wed, 10 Jun 2020 20:44:49 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <6831ffcc-263f-99cb-2859-e265fa04f770@faresoftware.it>
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit

Howdy!

Am 10.06.2020 um 19:48 schrieb Mauro Ziliani:
> Hi all.
> 
> This error
> 
> NOTE: Executing RunQueue Tasks
> ERROR: When reparsing <recipe_of_image>.do_rootfs, the basehash value 
> changed from 7419bfc242fa2eee9ce87b18ebf40d25 to 
> 5b2654046d2ac406f3484b3286de0acd. The metadata is not deterministic and 
> this needs to be fixed.
> 
> 
> Why?

Maybe some script / part of the recipe is dependent on the execution 
time or evaluation order? The error basically tells you that your build 
is not reproducible across runs.

Greetz

-- 
_____________________________________________________________
R-S-I Elektrotechnik GmbH & Co. KG
Woelkestrasse 11
D-85301 Schweitenkirchen
Fon: +49 8444 9204-0
Fax: +49 8444 9204-50
www.rsi-elektrotechnik.de

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548

