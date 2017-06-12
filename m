Return-Path: <Michael.Baumann@vector.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1956FE00B67; Mon, 12 Jun 2017 08:01:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_05,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [217.89.139.141 listed in list.dnswl.org]
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0122]
Received: from smtp1.vector.com (smtp1.vector.com [217.89.139.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3449AE00B58
	for <yocto@yoctoproject.org>; Mon, 12 Jun 2017 08:01:32 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.vector.com (Postfix) with ESMTP id D1BF43730CD
	for <yocto@yoctoproject.org>; Mon, 12 Jun 2017 17:01:31 +0200 (CEST)
X-Virus-Scanned: amavisd-new at vector.com
Received: from smtp1.vector.com ([127.0.0.1])
	by localhost (smtp1.vector.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h7m0ZaPHn6Kj for <yocto@yoctoproject.org>;
	Mon, 12 Jun 2017 17:01:30 +0200 (CEST)
Received: from vistrex6.vi.vector.int (unknown [10.49.3.66])
	by smtp1.vector.com (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Mon, 12 Jun 2017 17:01:30 +0200 (CEST)
Received: from VISTREX4.vi.vector.int ([169.254.2.217]) by
	vistrex6.vi.vector.int ([10.49.3.66]) with mapi id 14.03.0339.000;
	Mon, 12 Jun 2017 17:01:30 +0200
From: "Baumann, Michael" <Michael.Baumann@vector.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: mkfifo: not found
Thread-Index: AdLjjLbYsk28tXViT/uqUy0g/vqWww==
Date: Mon, 12 Jun 2017 15:01:29 +0000
Message-ID: <D3B58608AFC8B244BA0ACD53B2AE6125011B5602C8@vistrex4.vi.vector.int>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.49.73.0]
x-g-data-mailsecurity-for-exchange-spamlevel: 0
x-g-data-mailsecurity-for-exchange-state: 0
x-g-data-mailsecurity-for-exchange-error: 0
x-g-data-mailsecurity-for-exchange-sender: 32
x-g-data-mailsecurity-for-exchange-server: 97a2f4b1-5af3-4486-b5c5-94a8deb8247e
x-g-data-mailsecurity-for-exchange-guid: E6872697-47A1-4BE1-930C-01C5AC250ABF
MIME-Version: 1.0
Subject: mkfifo: not found
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
X-List-Received-Date: Mon, 12 Jun 2017 15:01:36 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I upgraded from poky 2.1 to 2.3 and now I have an issue with mkfifo in a do=
_install step.=20
The error is "mkfifo: not found"
I already added the package coreutils as dependency.

Does someone has some hints for me?

Regards Michael


