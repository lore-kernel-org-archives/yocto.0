Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51AF4E0077E; Tue, 17 Feb 2015 08:17:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id CE51FE00757
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 08:17:14 -0800 (PST)
Received: from SESTOEX04.enea.se ([fe80::bc2d:9299:d6b2:d0b7]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.03.0224.002; Tue, 17 Feb 2015 17:17:11 +0100
From: Alexandru Vaduva <Alexandru.Vaduva@enea.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: meta-oracle-java error when building a recipe
Thread-Index: AdBKzENQRAzGe5AzQdi2MLih2WbigA==
Date: Tue, 17 Feb 2015 16:17:10 +0000
Message-ID: <DDB0C57E45663A458C5CACB7B5688BC21D7BB6D6@SESTOEX04.enea.se>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.14.234]
MIME-Version: 1.0
Subject: meta-oracle-java error when building a recipe
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
X-List-Received-Date: Tue, 17 Feb 2015 16:17:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

When trying to build 'oracle-jse-jdk' from meta-oracle-java layer I found t=
his errors.
	ERROR: Nothing PROVIDES 'oracle-jse-jdk'
	ERROR: oracle-jse-jdk was skipped: True

bitbake-layers show-recipes | grep "oracle-"
Parsing recipes..done.
oracle-jse-jdk:
  meta-oracle-java     1.7.0 (skipped)
oracle-jse-jre:
  meta-oracle-java     1.7.0
Any idea of why this recipe is skipped?


Alex Vaduva



