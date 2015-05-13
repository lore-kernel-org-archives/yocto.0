Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10B3AE005B9; Tue, 12 May 2015 23:24:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from remote.innerrange.com (122-143-146.dsl.connexus.net.au
	[203.122.143.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B742E0027F
	for <yocto@yoctoproject.org>; Tue, 12 May 2015 23:24:46 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::758b:a6c:a61b:18f4]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::758b:a6c:a61b:18f4%14]) with
	mapi; Wed, 13 May 2015 16:24:44 +1000
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: akuster808 <akuster808@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Wed, 13 May 2015 16:24:42 +1000
Thread-Topic: [yocto] setcap program
Thread-Index: AdCNQ+BrCb+rnombRo2QrKS8f+mnRQAACdkw
Message-ID: <5500469A22567C4BAF673A6E86AFA3A402227F6A7E0C@IR-CENTRAL.corp.innerrange.com>
References: <5500469A22567C4BAF673A6E86AFA3A402227F6A7DF4@IR-CENTRAL.corp.innerrange.com>
	<5552EB50.10804@gmail.com>
In-Reply-To: <5552EB50.10804@gmail.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1239-7.500.1018-21540.002
x-tm-as-result: No--41.939200-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: Re: setcap program
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
X-List-Received-Date: Wed, 13 May 2015 06:24:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> armin wrote:
> On 05/12/2015 10:42 PM, Craig McQueen wrote:
> > I'd like to try using 'setcap' on a Yocto-built system. But I'm having =
trouble
> figuring out what Yocto or meta-oe package might provide 'setcap' and
> related programs.
> >
> try "libcap" or "libcap-ng"

libcap 2.22-r6 is in my image, but only the library, not any of the command=
 line programs.

On a closer look, I see it is building a setcap executable, but not install=
ing it. Now I see--I need to include the libcap-bin package in my image.

--=20
Craig McQueen


