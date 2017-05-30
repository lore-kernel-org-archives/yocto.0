Return-Path: <Michael.Baumann@vector.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EAC5FE00953; Tue, 30 May 2017 06:11:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_50,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [217.89.139.141 listed in list.dnswl.org]
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4642]
X-Greylist: delayed 512 seconds by postgrey-1.32 at yocto-www;
	Tue, 30 May 2017 06:11:28 PDT
Received: from smtp1.vector.com (smtp1.vector.com [217.89.139.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EEA2E0080F
	for <yocto@yoctoproject.org>; Tue, 30 May 2017 06:11:28 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.vector.com (Postfix) with ESMTP id 3E77D3730E4
	for <yocto@yoctoproject.org>; Tue, 30 May 2017 15:02:51 +0200 (CEST)
X-Virus-Scanned: amavisd-new at vector.com
Received: from smtp1.vector.com ([127.0.0.1])
	by localhost (smtp1.vector.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0bLOQQyK_qRk for <yocto@yoctoproject.org>;
	Tue, 30 May 2017 15:02:48 +0200 (CEST)
Received: from vistrex5.vi.vector.int (unknown [10.49.3.65])
	by smtp1.vector.com (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Tue, 30 May 2017 15:02:48 +0200 (CEST)
Received: from VISTREX4.vi.vector.int ([169.254.2.217]) by
	vistrex5.vi.vector.int ([10.49.3.65]) with mapi id 14.03.0339.000;
	Tue, 30 May 2017 15:02:27 +0200
From: "Baumann, Michael" <Michael.Baumann@vector.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Show cmake warnings as yocto warnings
Thread-Index: AdLZRKqJ3pp9LTUAQYeh7krjY0JdUg==
Date: Tue, 30 May 2017 13:02:26 +0000
Message-ID: <D3B58608AFC8B244BA0ACD53B2AE6125011B5578C3@vistrex4.vi.vector.int>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.49.74.111]
x-g-data-mailsecurity-for-exchange-spamlevel: 0
x-g-data-mailsecurity-for-exchange-state: 0
x-g-data-mailsecurity-for-exchange-error: 0
x-g-data-mailsecurity-for-exchange-sender: 32
x-g-data-mailsecurity-for-exchange-server: 8959ae4b-c457-4990-be14-918c767bdf10
x-g-data-mailsecurity-for-exchange-guid: 0450D731-F439-4D3D-BA65-3FA202F77A21
MIME-Version: 1.0
Subject: Show cmake warnings as yocto warnings
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
X-List-Received-Date: Tue, 30 May 2017 13:11:32 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I am using cmake in my recipes (poky 2.1.2). Is there a way to display cmak=
e warnings as yocto warnings?
I can see the cmake warning in the log.do_configure file of my package but =
it is not displayed prominent during bitbake.

Cheers and many thanks in advance,
Michael

