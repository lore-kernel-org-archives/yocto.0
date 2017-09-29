Return-Path: <prvs=1445b640cf=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9DFDE00D71; Fri, 29 Sep 2017 03:08:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.169.146.216 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.216])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17B81E00D63
	for <yocto@yoctoproject.org>; Fri, 29 Sep 2017 03:08:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1506679679;
	s=domk; d=rsi-elektrotechnik.de;
	h=Content-Transfer-Encoding:Content-Language:Content-Type:In-Reply-To:
	MIME-Version:Date:References:To:From:Subject;
	bh=+DvgswKwa9uRfzdLQ3xcu3boAqC7DfhGbkXRSCB7l2w=;
	b=kPgrelsikLexEiSCHq35h29poiADMfesQKZYFkkpR/H2XHC4fZuS2e6tOXrX91bQ2B
	rmkfGwq6CLLgdylZm7J/s1muViqYZRp7c+nR9zK4r6CSuy3nGA3RaENf9td5MK2vT3lm
	7/kY1XhmJAQhK2vmc0h7grPUea3sH32zL3MIY=
X-RZG-AUTH: :fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/Kpz6b/avroGOv0c9mHNc01sePA6ZpTLlbQjW24Op+tVk4KRcAnsvYqj8BnsImkjBk
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de
	([2001:0:9d38:78cf:246b:26e9:af6c:cbea])
	by smtp.strato.de (RZmta 42.2 AUTH) with ESMTPSA id j05e49t8TA7wCx9
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Fri, 29 Sep 2017 12:07:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1506679668; x=1507284468;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Subject:From:To:
	References:Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
	Content-Type:Content-Language:Content-Transfer-Encoding; bh=+Dvg
	swKwa9uRfzdLQ3xcu3boAqC7DfhGbkXRSCB7l2w=; b=w6c97sMvRHL/pqZ4q3ej
	ztp3GUiQt763h19PpXzKNgUUV/gQnfOAGbB0CQ00KmvrNQjAquUF/zmixvg5pFuA
	ZPHRFQDbqRsehQ9POy1hqQjPZUibVu705AEmAGDKw1/ZxE5nzA4h/5gaD8p1oWQv
	0Y3K2F0VvmgLqt5xtzg65RQ=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v17.0.3) with ESMTPSA id
	md50000007717.msg; Fri, 29 Sep 2017 12:07:47 +0200
X-MDArrival-Date: Fri, 29 Sep 2017 12:07:47 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=1445b640cf=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
To: Bryan Evenson <bevenson@melinkcorp.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <DM5PR05MB29545649D8FAD14D890F96C4BB7B0@DM5PR05MB2954.namprd05.prod.outlook.com>
	<06d955af-4522-212a-71f7-94429f388e89@rsi-elektrotechnik.de>
Message-ID: <5a720867-59b1-6f6d-6741-01b649d84dcd@rsi-elektrotechnik.de>
Date: Fri, 29 Sep 2017 12:07:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <06d955af-4522-212a-71f7-94429f388e89@rsi-elektrotechnik.de>
Subject: Re: Errors building with Windows Subsystem for Linux (aka Bash on Ubuntu on Windows)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 29 Sep 2017 10:08:02 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: de-DE
Content-Transfer-Encoding: 8bit

I don't have the slightest clue why this message was delayed so much.

As it might sound now like parodizing the ongoing efforts, please 
ignore/disregard.

Greetz
-- 
Josef Holzmayr
Software Developer Embedded Systems

Tel: +49 8444 9204-48
Fax: +49 8444 9204-50

R-S-I Elektrotechnik GmbH & Co. KG
Woelkestrasse 11
D-85301 Schweitenkirchen
www.rsi-elektrotechnik.de
———————————————
Amtsgericht Ingolstadt – GmbH: HRB 191328 – KG: HRA 170393
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
Ust-IdNr: DE 128592548

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548


