Return-Path: <wmills@ti.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CEE1AE0094C; Thu,  4 May 2017 12:17:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from fllnx210.ext.ti.com (fllnx210.ext.ti.com [198.47.19.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E0D5E007EE
	for <yocto@yoctoproject.org>; Thu,  4 May 2017 12:17:02 -0700 (PDT)
Received: from dlelxv90.itg.ti.com ([172.17.2.17])
	by fllnx210.ext.ti.com (8.15.1/8.15.1) with ESMTP id v44JH1oW001891
	for <yocto@yoctoproject.org>; Thu, 4 May 2017 14:17:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ti.com;
	s=ti-com-17Q1; t=1493925422;
	bh=npsuN3w3lm8ExhV6Nvv3mzFlYVtJTHz5e1sxHHmYbtE=;
	h=From:To:Subject:Date;
	b=eQk4gw+GzF81Y5OwacZkqIAyjbsD3aECvrkSErdU6sAtISnq/0CE4Vu1XDTK4pMZS
	ZBFT7ZysPEBNUVvNT6avyemVxh6Oo/TCjJ54qv7UJZLP4tB70H2GLqDIIwV3KKal9a
	bMvptkLODq79L+hF1aeNtF+pTel26QWCFqsAYwDg=
Received: from DLEE71.ent.ti.com (dlee71.ent.ti.com [157.170.170.114])
	by dlelxv90.itg.ti.com (8.14.3/8.13.8) with ESMTP id v44JH1oQ013775
	for <yocto@yoctoproject.org>; Thu, 4 May 2017 14:17:01 -0500
Received: from DLEE11.ent.ti.com ([fe80::40fa:b936:da7c:d113]) by
	DLEE71.ent.ti.com ([fe80::4dce:5c82:1ad0:d462%28]) with mapi id
	14.03.0294.000; Thu, 4 May 2017 14:17:01 -0500
From: "Mills, William" <wmills@ti.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: zombie Cookers with taskexp??
Thread-Index: AdLFCDprbOZAqfHDT/isM4YHPXT+BQ==
Date: Thu, 4 May 2017 19:17:00 +0000
Message-ID: <EC0CC42105A97F4A81EA36CDF61DDAD45D5E4232@DLEE11.ent.ti.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.172.224.221]
MIME-Version: 1.0
Subject: zombie Cookers with taskexp??
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
X-List-Received-Date: Thu, 04 May 2017 19:17:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

This is just a heads up.

Last week I was using master branch of oe-core & bitbake and trying various=
 things.  I was alternating between running bitbake for building and runnin=
g taskexp UI.
I was not [intentionally] running a memory resident bitbake.  Taskexp may d=
o that under the covers but I was not doing that at command line or sourcin=
g the -memres variant of the setup script.

At any rate, sometimes (50%?) I tried to run taskexp it would not start and=
 complain about only running one copy of bitbake at a time.
When I saw this I would do a ps -a and see that there was one (or occasiona=
lly 2) Cooker processes running.
When I tried regular kill they would not die, kill -9 did kill them.

At least one time I also so processes names Parser or something like that. =
 I believe these also required kill -9.

Last night I tried to reproduce this problem to capture specifics.  I faile=
d to reproduce the problem.

[I did check Bugzilla and did not see a match]

Bill

