Return-Path: <tmatsuzawa@uievolution.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 168C5E00EFF; Thu, 30 Jun 2016 19:01:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1041 seconds by postgrey-1.32 at yocto-www;
	Thu, 30 Jun 2016 19:01:23 PDT
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0087.outbound.protection.outlook.com [104.47.32.87])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54CC9E00E6D
	for <yocto@yoctoproject.org>; Thu, 30 Jun 2016 19:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-uievolution-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=tUdDiQO80UWWVWgo3sUCgRoc27W34+lxaGEAxV8evGU=;
	b=amddbiBVFjkUk3aQomw3jT+EoUWbh5lfzSkSfLqDnbPjyYkLqRCUq+1ZStT925myIaag8GV4UtbVkGmyqZPoWMBv0Vj6yHCh0TS42e+BW65WLm1tazVlYkGdrQVXas1qcj/BUG9GYErLplOi9YbaPEFxEDR9Sf5p98SMlvXt74s=
Received: from CY1PR0101MB1594.prod.exchangelabs.com (10.163.139.13) by
	CY1PR0101MB1593.prod.exchangelabs.com (10.163.139.12) with Microsoft
	SMTP Server (TLS) id 15.1.523.12; Fri, 1 Jul 2016 01:29:03 +0000
Received: from CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) by
	CY1PR0101MB1594.prod.exchangelabs.com ([10.163.139.13]) with mapi id
	15.01.0523.024; Fri, 1 Jul 2016 01:29:03 +0000
From: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Shorter build time?
Thread-Index: AQHR0zfz8t/RS5a5ckC5nKnzjXT7MQ==
Date: Fri, 1 Jul 2016 01:29:03 +0000
Message-ID: <CY1PR0101MB1594413BBE9700E6A3EFC6E9D7250@CY1PR0101MB1594.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@uievolution.com; 
x-originating-ip: [132.245.44.5]
x-ms-office365-filtering-correlation-id: 96be2e4d-9ad9-4b95-a869-08d3a14f1623
x-microsoft-exchange-diagnostics: 1; CY1PR0101MB1593;
	6:iAJIuhYMKZxscU+4d5/PSw/ep+HN8DLZDma4+ZTrFg/PVxonXHIDmuc6q2ztblzLbjXEOYMvWa+T/028QsuqeDskPPyE0n8wE3mS0SfaRQQQZeQ+EKNLUhcurPwfCPct2vE+vbeNhJhDzYO8yhzfeHY60H7QEZnVu3XqGzdv2AqJIVysbrk4ZQ31aB0XZ6IcVxMgRRyG1jkWOR1k+03M5YmkP6JBhm9VeggD/0p9gNJEn57Qltvnq7e8TdfWRsnXbzpcDA5Bch2l5aGaQcc3Syj5jFVDvDy2Tfp5abzeTi65vM37AQD0ngwWbXZYfjCa;
	5:m/kAEH/hKNMBpTHFnlv320mfE12PIDy1mjxCwLjkyPcKjxglvYip4d/0bgtfxRwh3M0IVpDH/TqrFCHIsZ0P8/xmmfla2PkNYK/J2TUL69ps0Mj2U9s5RHsntPRYa1oBpjzYRtPXrH4TINz/15SBPA==;
	24:pdH1VI9ZQvdOtS3hA6764TCf1YTnkJLV5o6ifQKr1AurjAy5E+fbfxKXw5ShmCRQtuXH6ISzcvbNjXk+WhkXeHxRYc21GK6EYXUP1xfU+/M=;
	7:tnLCIKzhbgSwvhXa+TFA6x5cXFJqUWVDSG2I0NxFedL+pV4dXAo2CE4g8ecAOIs4J2d1rtg28Ib1gJLLaJ28W68J0Mu7WcOv7DoDhHk5weQN2IJJzd1A71wP+025YyKddhPhOIQEGQP3NHLVlUZPxPOS7oP7YPlqXwbDuvY9bIS3lnvbjeWF6LcN4z5aob0qGdkNxkYymKTf0qWVxZLOb2UHrlMnDyRH2NevNqWshtsn76wUOamM1c13YiOeh2CnX9Y76l8tgZq0oVpxpWSGGQ==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CY1PR0101MB1593;
x-microsoft-antispam-prvs: <CY1PR0101MB15939FBEB6B1E0C82425E6A9D7250@CY1PR0101MB1593.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(2401047)(5005006)(8121501046)(10201501046)(3002001);
	SRVR:CY1PR0101MB1593; BCL:0; PCL:0; RULEID:;
	SRVR:CY1PR0101MB1593; 
x-forefront-prvs: 0990C54589
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(54094003)(199003)(189002)(8936002)(66066001)(3480700004)(68736007)(229853001)(101416001)(3660700001)(3846002)(6116002)(2501003)(3280700002)(50986999)(74316002)(9686002)(106356001)(5640700001)(54356999)(102836003)(105586002)(586003)(106116001)(81166006)(11100500001)(86362001)(450100001)(110136002)(7846002)(33656002)(189998001)(305945005)(2900100001)(77096005)(7736002)(92566002)(2351001)(87936001)(2906002)(5002640100001)(97736004)(1730700003)(8676002)(81156014)(122556002)(7696003)(107886002)(5003600100003)(10400500002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0101MB1593;
	H:CY1PR0101MB1594.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: uievolution.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: uievolution.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2016 01:29:03.2843 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0101MB1593
Subject: Shorter build time?
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
X-List-Received-Date: Fri, 01 Jul 2016 02:01:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


Hello Yocto.

Well, this may not be a very new topic, but I wonder if you have recent sug=
getions.
So far I have tried the followings and see some improvement, making the bui=
ld time to days to hours.

1) All of the directories, DL_DIR, SSTATE_CACHE, TMPDIR, DEPLOY_DIR are on =
SSD.
2) .repo and working directory (where I synch my recipes) also on SSD.
3) Set BB_NUMBER_PARSE_THREADS/PARALLEL_MAKE/BB_NUMBER_THREADS to something=
 like 20, 30, etc.
4) Enable use of ICECC.
5) Use pigz, pbzip2, pxz instead of gzip, bzip2 and xz.

I can see with 3-5), I am benefited from my multicore PCs and see some scal=
ing effects (if I can add more PCs or CPU core.)
However I think there is i the build not paralleled or distributed easily.

i) python tasks
They say python has slimitation of being single thread, and could be a bott=
le neck since most of yocto build tasks are in python, if not native/cross =
toolchain jobs.

ii) zip / tar tasks
e.g. seeing rootfs taking forever, jobs not distributed to the other machin=
es.
I understand it is writing files to one target tree and doing a bit tar/zip=
 for the files, being one big job though.

I wonder if I can do anything with i) and ii) at least to make them process=
ed in parallel.
ICECC only can dispatch gcc jobs I believe.
Any previous attemps to do the similar to non-gcc jobs?

