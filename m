Return-Path: <J.Schaumloeffel@astro-kom.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E462E00992; Thu, 30 Apr 2015 05:27:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.173.193.132 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailrelay-out2.netcologne.de (mailrelay-out2.netcologne.de
	[81.173.193.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EEF4EE007CC
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 05:27:19 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mailrelay-out2.netcologne.de (Postfix) with ESMTP id A846A10B50E
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 14:27:17 +0200 (CEST)
Received: from [213.196.222.82] (helo=mailrelay-out2.netcologne.de)
	by localhost with ESMTP (eXpurgate 4.0.7)
	(envelope-from <J.Schaumloeffel@astro-kom.de>)
	id 55421fa5-09ba-7f0000012729-7f000001afde-1
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 14:27:17 +0200
Received: from ASTRO-EX1.Bensberg.de (unknown [213.196.222.82])
	(using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by mailrelay-out2.netcologne.de (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Thu, 30 Apr 2015 14:27:16 +0200 (CEST)
Received: from ASTRO-EX1.Bensberg.de (192.168.100.26) by ASTRO-EX1.Bensberg.de
	(192.168.100.26) with Microsoft SMTP Server (TLS) id 15.0.775.38;
	Thu, 30 Apr 2015 14:27:10 +0200
Received: from ASTRO-EX1.Bensberg.de ([::1]) by ASTRO-EX1.Bensberg.de ([::1])
	with mapi id 15.00.0775.031; Thu, 30 Apr 2015 14:27:10 +0200
From: =?iso-8859-1?Q?Schauml=F6ffel=2C_Jan?= <J.Schaumloeffel@astro-kom.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Migration from 1.7.1 to 1.8 - kernel-abiversion missing
Thread-Index: AdCBfI+fMEqCzoTLSdaz+mOzgmAd4QALUFmAAAerdlAAAv96AAAeAT+wAAiV7QAAKKuIgAAHYC8AAARcq8A=
Date: Thu, 30 Apr 2015 12:27:10 +0000
Message-ID: <e134e69a27bd460a9da71929a7f78d9a@ASTRO-EX1.Bensberg.de>
References: <ce604c0c1a1d4131a72119dbecb97ab2@ASTRO-EX1.Bensberg.de>
	<553F90A3.9070501@windriver.com>
	<82ac67a7e46e416dbabdda01c42fc89a@ASTRO-EX1.Bensberg.de>
	<553FD83A.6040407@windriver.com>
	<4f2d75bf33ac423ab064f754e0b67655@ASTRO-EX1.Bensberg.de>
	<5540DB34.6010102@windriver.com>
	<a01714e680f8470cb21bb0b52e66c91e@ASTRO-EX1.Bensberg.de>
	<55421DA2.9060909@windriver.com>
In-Reply-To: <55421DA2.9060909@windriver.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.100.114]
MIME-Version: 1.0
X-purgate-ID: 153929::1430396837-000009BA-EFBB7A06/0/0
X-purgate: clean
Subject: Re: Migration from 1.7.1 to 1.8 - kernel-abiversion missing
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
X-List-Received-Date: Thu, 30 Apr 2015 12:27:22 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

> What kernel recipe is used when your machine is set to 'astro' ?
> Something custom ? Or have you added machine compatibility to another
> known kernel recipe ?

How would I see which kernel recipe is used?

I did not customize anything except for aforementioned steps, simply copied=
 beaglebone.conf to astro.conf in the same directory. Also I did not touch =
any kernel recipes (kernel is built externally), maybe that's what's missin=
g?

Jan

