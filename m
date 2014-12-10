Return-Path: <yannick.koehler@hp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61806E0087C; Wed, 10 Dec 2014 10:53:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [15.217.128.51 listed in list.dnswl.org]
Received: from g2t2352.austin.hp.com (g2t2352.austin.hp.com [15.217.128.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1113EE0082F
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 10:53:49 -0800 (PST)
Received: from G2W4316.americas.hpqcorp.net (g2w4316.austin.hp.com
	[16.197.9.73]) (using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by g2t2352.austin.hp.com (Postfix) with ESMTPS id A511E1BF
	for <yocto@yoctoproject.org>; Wed, 10 Dec 2014 18:53:48 +0000 (UTC)
Received: from G1W5783.americas.hpqcorp.net (16.193.26.1) by
	G2W4316.americas.hpqcorp.net (16.197.9.73) with Microsoft SMTP Server
	(TLS) id 14.3.169.1; Wed, 10 Dec 2014 18:52:39 +0000
Received: from G2W2533.americas.hpqcorp.net ([169.254.6.187]) by
	G1W5783.americas.hpqcorp.net ([16.193.26.1]) with mapi id
	14.03.0169.001; Wed, 10 Dec 2014 18:52:39 +0000
From: "Koehler, Yannick (HP Networking)" <yannick.koehler@hp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: parallel build of multiple machine/os?
Thread-Index: AdAUqi5GEVYiKdCdTsOFkOoQ782D5A==
Date: Wed, 10 Dec 2014 18:52:39 +0000
Message-ID: <95CF81BBD42FB348A182716C4D4310A805485ADE@G2W2533.americas.hpqcorp.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [16.193.232.25]
MIME-Version: 1.0
Subject: parallel build of multiple machine/os?
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
X-List-Received-Date: Wed, 10 Dec 2014 18:53:55 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Can Yocto build for example in a single bitbake call an image for x86, ppc,=
 arm, others?  Or is the call to bitbake limited to a single architecture? =
 And if so, how?

I see that lots of *-native package are built, and I guess is that for each=
 machine/os those would be reused, as such, it appears it would be a benefi=
t to be able to build multiple package version for different architecture/d=
istro/machine in a single invocation of bitbake.

--
Yannick Koehler

