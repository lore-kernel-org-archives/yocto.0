Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36683E00820; Tue, 12 May 2015 22:43:07 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA1F0E004F6
	for <yocto@yoctoproject.org>; Tue, 12 May 2015 22:43:03 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::758b:a6c:a61b:18f4]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::758b:a6c:a61b:18f4%14]) with
	mapi; Wed, 13 May 2015 15:43:00 +1000
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 13 May 2015 15:42:59 +1000
Thread-Topic: setcap program
Thread-Index: AdCNP38tnL/ew0YkRbuwc774v2Svvw==
Message-ID: <5500469A22567C4BAF673A6E86AFA3A402227F6A7DF4@IR-CENTRAL.corp.innerrange.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1239-7.500.1018-21540.002
x-tm-as-result: No--32.923700-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: setcap program
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
X-List-Received-Date: Wed, 13 May 2015 05:43:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'd like to try using 'setcap' on a Yocto-built system. But I'm having trou=
ble figuring out what Yocto or meta-oe package might provide 'setcap' and r=
elated programs.

--=20
Craig McQueen


