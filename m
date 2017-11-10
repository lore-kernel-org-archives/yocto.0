Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F966E00C59; Thu,  9 Nov 2017 18:03:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from remote.innerrange.com (122-143-132.dsl.connexus.net.au
	[203.122.143.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74A55E00AD7
	for <yocto@yoctoproject.org>; Thu,  9 Nov 2017 18:03:10 -0800 (PST)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b%15]) with
	mapi; Fri, 10 Nov 2017 13:03:06 +1100
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 10 Nov 2017 13:03:05 +1100
Thread-Topic: Yocto git repositories, shallow clone,
	uploadpack.allowReachableSHA1InWant
Thread-Index: AdNZyAvPjUEJP7RdTcmy0is7wTiO0w==
Message-ID: <5500469A22567C4BAF673A6E86AFA3A40295F094B9F2@IR-CENTRAL.corp.innerrange.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1278-8.100.1062-23452.007
x-tm-as-result: No--5.336000-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: Yocto git repositories, shallow clone, uploadpack.allowReachableSHA1InWant
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
X-List-Received-Date: Fri, 10 Nov 2017 02:03:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm using git submodule to set up a Yocto build using the various layers re=
quired for my project. I see that recent git has the ability to specify tha=
t a submodule repository should be a "shallow" clone.

However, when I tried it with meta-mono, I got an error "server does not al=
low request for unadvertised object".

It appears that for such a shallow clone of a specified commit to work, the=
 repository must enable uploadpack.allowReachableSHA1InWant.

Could this option be enabled for all Yocto git repositories? This would pot=
entially save a lot of time and download bandwidth for everyone.

--=20
Craig McQueen


