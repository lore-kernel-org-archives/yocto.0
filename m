Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4543E00C41; Mon, 31 Jul 2017 04:39:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.67 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 134655 seconds by postgrey-1.32 at yocto-www;
	Mon, 31 Jul 2017 04:39:28 PDT
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0067.outbound.protection.outlook.com [104.47.36.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28777E00BB7
	for <yocto@yoctoproject.org>; Mon, 31 Jul 2017 04:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=UCfZrkiRM8jndymTYdvLiNdpMQpUY0j4NwswcgWUuQc=;
	b=GUH0Rp1AbZDlK3YP6/nGVaQcb30TNa3nvWuRp44uc89P+0Em+gFvxtPgV1i86ybGKJlkDw3kgRFG8YrL6zTX38s53py3pQOMDfU8qVsWonL+56hv3IpV72EQ0xFrWbP3HCnLPMgIZS7eelLB3UB/9E6Xiu/zLSRSbZFERLAM4/4=
Received: from MWHPR01MB3293.prod.exchangelabs.com (10.172.170.150) by
	MWHPR01MB3296.prod.exchangelabs.com (10.172.170.149) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.1.1304.22; Mon, 31 Jul 2017 11:39:27 +0000
Received: from MWHPR01MB3293.prod.exchangelabs.com ([10.172.170.150]) by
	MWHPR01MB3293.prod.exchangelabs.com ([10.172.170.150]) with mapi id
	15.01.1304.023; Mon, 31 Jul 2017 11:39:27 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: local file update vs rebuild
Thread-Index: AQHTCfGbP/Qv+xMmlkyawVYpcAWfoA==
Date: Mon, 31 Jul 2017 11:39:27 +0000
Message-ID: <MWHPR01MB3293BF2A96B39AEE98F18DE2B6B20@MWHPR01MB3293.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@xevo.com; 
x-originating-ip: [153.203.84.160]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MWHPR01MB3296;
	7:7Gxp4DHfoIDhk/BEHcMJvSotN5rw/rlZkmBIFF/leppBKENru4FOtzqZ5Uj16QnMVF/gHnC6UNqv2Cbkkl2SxAR0oZhtPppGMDOsIsBQ8B3yze1lu6wLa1U/aClmjOccEq4A5jfvy7vfxH+ZWE6hP4qyTlmRq5ap5+jllfcwSgiAICrVYo8048mvYldDMgDxUwKi/OLyFamwF8yoSsZrXM2CHE4uOPwePcXw3V5i9SlmdLE47lTHMAjqnF52y0M0XJkhj4EKtxjVeVJ7wl95O7m/8TJ/0vK16hJ/DJ+Xitlxctfa1H/Vcvb86Vt6t9fHQOk1q/XHzbnBJZ11EoFY96s08KW4JiT/pgP7ol7t2PsJ/EUCHghgKCFzza7HlKgcNOz/mslqKxoV3TZ1EMnnydMD+5uuvAUTTk7LqK6e7Xz/QEpbDk2oc47gsfF1mVToDfoQYYVslSVu3luNZhXvdE4u92AY/j3L8sNI3H4uQhIPw4rqy3Ge6MUAYt9DrXEJeiYD7eZ6K/+W/lBC+MTZcfYJWWZ5dNa4aqgnG/1SIF7fuUtFune3iqExHcUNE8LMUdhccaMxmzm8BttPisQ6CCJKT4B6UU7GKqVDzd/GvPg3RV9a9+4z6X7dFZCUdZqzzHUK7IcG2txHQI4X7B3MlOJdjfyf8cCjRlmq4FSGCjND4er5nRYzqyYSK1qSBWdr6K9nKGW75H2rJbmZgMUBmdMeCANu7GLhD9AfiowSI13sfX5iF9XXEH+LLH9iU1URKWDmCcxtPnkbqphLy1ajwk9rT7l1B2sMOcq1HEkVU9o=
x-ms-office365-filtering-correlation-id: 1d4f6494-18b7-40e5-c1d3-08d4d808ccb4
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(2017030254152)(300000503095)(300135400095)(2017052603031)(201703131423075)(201703031133081)(201702281549075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:MWHPR01MB3296; 
x-ms-traffictypediagnostic: MWHPR01MB3296:
x-exchange-antispam-report-test: UriScan:;
x-microsoft-antispam-prvs: <MWHPR01MB32963B0F4D04F24AF9B90E44B6B20@MWHPR01MB3296.prod.exchangelabs.com>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(93006095)(93001095)(10201501046)(100000703101)(100105400095)(3002001)(6041248)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(20161123562025)(20161123555025)(20161123564025)(20161123560025)(6072148)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:MWHPR01MB3296; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:MWHPR01MB3296; 
x-forefront-prvs: 03853D523D
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(39410400002)(39450400003)(39830400002)(39400400002)(189002)(199003)(57704003)(1730700003)(2900100001)(3280700002)(81166006)(81156014)(189998001)(25786009)(8676002)(5660300001)(8936002)(305945005)(86362001)(7736002)(54356999)(97736004)(50986999)(2501003)(77096006)(6506006)(2351001)(99286003)(55016002)(9686003)(105586002)(106356001)(33656002)(66066001)(14454004)(6436002)(5640700003)(478600001)(7696004)(2906002)(68736007)(74316002)(3660700001)(6116002)(38730400002)(102836003)(110136004)(53936002)(101416001)(3846002)(6916009);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR01MB3296;
	H:MWHPR01MB3293.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: xevo.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2017 11:39:27.0099 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR01MB3296
Subject: local file update vs rebuild
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
X-List-Received-Date: Mon, 31 Jul 2017 11:39:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello.
I am uncertain about do_clean behavior with local files.


Say, I have local files referred by my recipe, and I have made changes to t=
he files referred.
(Note, there is no change in my xxxx.bb file itself.)


>SRC_URI +=3D "file://src/*;subdir=3Dlocal"


What makes those changed files reflected to the build?
Do I need do_cleanall? =A0do_cleansstate or maybe do_clean is enough?


According to the document


> do_clean
> do_unpack task forward (i.e. do_unpack, do_configure, do_compile, do_inst=
all, and do_package).
> if no changes have been made and the recipe is rebuilt after cleaning, ou=
tput files are simply restored from the sstate cache.=A0


I want to avoid doing do_cleanall often, and I would like to tell bitbake t=
hat my recipe needs rebuild at the same time not rebuilding others.
But at the same time I want to avoid building my single explicity.
I just want to build the image name as target.



