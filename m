Return-Path: <craig.mcqueen@innerrange.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F188E00CBA; Thu, 31 Aug 2017 18:40:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from remote.innerrange.com (vpn.innerrange.com.au [203.122.143.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61AA4E00C88
	for <yocto@yoctoproject.org>; Thu, 31 Aug 2017 18:40:05 -0700 (PDT)
Received: from IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b]) by
	IR-CENTRAL.corp.innerrange.com ([fe80::216f:2d6c:20cc:241b%15]) with
	mapi; Fri, 1 Sep 2017 11:40:01 +1000
From: Craig McQueen <craig.mcqueen@innerrange.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 1 Sep 2017 11:40:00 +1000
Thread-Topic: Python recipes wanted?
Thread-Index: AdMiweM7OLWnHRwCSQeX5q2yTpV/ug==
Message-ID: <5500469A22567C4BAF673A6E86AFA3A40295F086424C@IR-CENTRAL.corp.innerrange.com>
Accept-Language: en-US, en-AU
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, en-AU
x-tm-as-product-ver: SMEX-11.1.0.1278-8.100.1062-23292.006
x-tm-as-result: No--1.649000-5.000000-31
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Subject: Python recipes wanted?
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
X-List-Received-Date: Fri, 01 Sep 2017 01:40:08 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have made a number of recipes for Python packages, for my own use. Does m=
eta-oe have an interest in any/all Python package recipe contributions, or =
ones that are considered more popular?

I have:

python3-aiohttp_2.2.3.bb
python3-aiohttp-jinja2_0.13.0.bb
python3-aiohttp-session_1.0.0.bb
python3-async-timeout_1.2.1.bb
python3-cobs_1.1.3.bb
python3-colorlog_2.10.0.bb
python3-configargparse_0.12.0.bb
python3-lru-dict_1.1.6.bb
python3-pycrypto_2.6.1.bb
python3-pyserial-asyncio_0.4.bb
python3-uvloop_0.8.0.bb
python3-yarl_0.11.0.bb

python-cobs_1.1.3.bb
python-lru-dict_1.1.6.bb

--=20
Craig McQueen


