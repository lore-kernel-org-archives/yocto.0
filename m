Return-Path: <mschepers@telspandata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87CEAE00C45; Thu, 16 Nov 2017 17:09:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.38.60 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 9128 seconds by postgrey-1.32 at yocto-www;
	Thu, 16 Nov 2017 17:09:39 PST
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0060.outbound.protection.outlook.com [104.47.38.60])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9D30E009CB
	for <yocto@yoctoproject.org>; Thu, 16 Nov 2017 17:09:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=telspandata.onmicrosoft.com; s=selector1-telspandata-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=eFnL6QSOeA0TnqpQK8Td4SJrWNfEn+4NEiG7H5xBGOw=;
	b=AFTWfHlC1+sHSzY6boBlGGuKLWMhoFeFZyvr4FXdXbYq7OCXd80B0ogHZb7MjHdJS4Il6753gu9Pqv7cnS33YKd7Ku/wO26BkvCRy7KuMSBJkJKVqP5cITGBwY6aK5TgvepDEco5keo2mYS4hZHcsL/MSClf9xzHbnHjcME9KZ4=
Received: from CY4PR04MB1177.namprd04.prod.outlook.com (10.173.194.7) by
	CY4PR04MB1174.namprd04.prod.outlook.com (10.173.193.141) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.218.12; Thu, 16 Nov 2017 22:37:29 +0000
Received: from CY4PR04MB1177.namprd04.prod.outlook.com ([10.173.194.7]) by
	CY4PR04MB1177.namprd04.prod.outlook.com ([10.173.194.7]) with mapi id
	15.20.0218.015; Thu, 16 Nov 2017 22:37:29 +0000
From: Matt Schepers <mschepers@telspandata.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Trying to filter out 2 strings from EXTRA_OECONF, why doesn't
	this work?
Thread-Index: AQHTXyq0cMM2sCYbvkWrsQLgw6PpgA==
Date: Thu, 16 Nov 2017 22:37:28 +0000
Message-ID: <CY4PR04MB11772AED5F3BDE6D4259158AB02E0@CY4PR04MB1177.namprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=mschepers@telspandata.com; 
x-originating-ip: [96.69.169.201]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CY4PR04MB1174;
	6:GFuY1rWR8N8T9+OaNwZja8MoxRtB2YhH17xBB8FT2y54v2eoG4vBETpTUjNueta8CZpoRftSj+RmVi3RvAs33n1DevXHNCvqFz4rnW261n9p/AM0KFwqjVymwsxSDX89etQD6kdC0Lsmctm0w6LuiSvWUf6pn29NhDYKpCV1xN6ZFUC5ShZbo+mXsrE7e9gB0TBIFS5OL+YP80LTR+iC5OmVOCSIpVklhFaPMsIW5F2ePKoIfTHYqz2SvWtrAV+gASkLaLY23tco7mVrSqHRTqmCChyyc329fEmB+5NpV6NK/14bE4axOeDiRVcuFEKxtGk6ZCjtCeKr1rq0zSxqEHAn29bDbtt/vXpo0klja6o=;
	5:enM9vx9X47c7LnmkbA/0wtc/L8huHcFKW6JN204zbIvfL1IF0lI3mY/xAlfjMSa2IQmY1Qx/Uh6v0mod9cOSB22HfEDRE88RgqCMlMOHqxbbHamFrB/uql8uE2HPo59aH+5xSX3XtuPwwHisIRnk3UzM1MIWReA7rKCicvD3n/0=;
	24:EpCHmsBVM6oNYVUpXDUAMF0zMPfuqWw8usDPVGtm659syzeNjuqB0Lsa7Q//ac1eGchYdviMJK9fAQVRxlhEnYW4kpIPf2VS5xK/4OwIpb4=;
	7:ckcgh+0U0OMcAKAMawxdih0VKXCqTr462T+wKsCk8p7sp0DsV/JCbN5a4zkoiPzaN+KT6aZlUSpRreB1kzI0qvl4yGwEU9aIM4EhovS1aNM9FDUycSQrpWQTUZU7AlhtP2+UyKoLGJX3aGq9pnXiekeBETBPBWSe1LNotraIwR2xd0GRdFPP2Sv3idwSwAcE2Ac5hTyPbONJFh75oMWzN6nBJCN0odZZCysIz7GMFLOosYMGTPY5CVVHKhtQmh2D
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 34caa379-1d79-4248-66c5-08d52d429e64
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(4534020)(4602075)(4603075)(4627115)(201702281549075)(2017052603258);
	SRVR:CY4PR04MB1174; 
x-ms-traffictypediagnostic: CY4PR04MB1174:
x-microsoft-antispam-prvs: <CY4PR04MB1174BB664460803957E9AE62B02E0@CY4PR04MB1174.namprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(8121501046)(5005006)(3002001)(10201501046)(93006095)(93001095)(3231022)(100000703101)(100105400095)(6041248)(20161123562025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(2016111802025)(20161123555025)(20161123560025)(20161123558100)(20161123564025)(6072148)(6043046)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:CY4PR04MB1174; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:CY4PR04MB1174; 
x-forefront-prvs: 0493852DA9
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(346002)(376002)(39830400002)(199003)(189002)(478600001)(68736007)(53936002)(54356999)(189998001)(316002)(55016002)(50986999)(1730700003)(25786009)(8936002)(97736004)(9686003)(2501003)(3846002)(81166006)(8676002)(81156014)(3280700002)(6916009)(2900100001)(3660700001)(2351001)(5640700003)(102836003)(14454004)(99286004)(2906002)(6116002)(33656002)(106356001)(66066001)(305945005)(105586002)(74316002)(6506006)(101416001)(7736002)(86362001)(6436002)(7696004)(77096006)(5660300001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR04MB1174;
	H:CY4PR04MB1177.namprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: telspandata.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: telspandata.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34caa379-1d79-4248-66c5-08d52d429e64
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2017 22:37:28.8765 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 980119cc-b60c-4c4d-84e8-5d25446e5dc3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR04MB1174
Subject: Trying to filter out 2 strings from EXTRA_OECONF, why doesn't this work?
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
X-List-Received-Date: Fri, 17 Nov 2017 01:09:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I would like to filter out two configure flags from EXTRA_OECONF in a
.bbappend. When I filter out only one everything works, when I do the same
thing twice it doesn't.

Here is the .bbappend that works:
    EXTRA_OECONF :=3D "${@oe_filter_out('--with-term=3Drxvt', '${EXTRA_OECO=
NF}', d)}"
    EXTRA_OECONF +=3D " --enable-256-color"

Here is the .bbappend that doesn't work:
    EXTRA_OECONF :=3D "${@oe_filter_out('--with-term=3Drxvt', '${EXTRA_OECO=
NF}', d)}"
    EXTRA_OECONF :=3D "${@oe_filter_out('--with-name=3Drxvt', '${EXTRA_OECO=
NF}', d)}"
    EXTRA_OECONF +=3D " --enable-256-color"

Here is the error at the command line for the one doesn't work:
    Loading cache: 100% |##################################################=
###########################################################################=
###########################################################################=
###| Time: 0:00:00
    Loaded 2806 entries from dependency cache.
    ERROR: ExpansionError during parsing /home/matt/nitrogen6x/yocto/meta/p=
oky/meta/recipes-sato/rxvt-unicode/rxvt-unicode_9.22.bb                    =
                                                                           =
  | ETA:  --:--:--
    Traceback (most recent call last):
    bb.data_smart.ExpansionError: Failure expanding variable EXTRA_OECONF[:=
=3D], expression was ${@oe_filter_out('--with-name=3Drxvt', '${@oe_filter_o=
ut('--with-term=3Drxvt', '--enable-xim 		--enable-utmp --enable-wtmp --enab=
le-lastlog 	--with-term=3Drxvt --enable-keepscrolling 		--enable-xft --with=
-name=3Drxvt --enable-frills 		--enable-swapscreen --enable-transparency 		=
--with-codesets=3Deu --enable-pointer-blank 		--enable-text-blink --enable-=
rxvt-scroll 		--enable-combining --disable-perl 		--with-x=3D/home/matt/nit=
rogen6x/yocto/build/tmp/work/armv7at2hf-neon-fslc-linux-gnueabi/rxvt-unicod=
e/%-r0/recipe-sysroot/usr --disable-static ${PACKAGECONFIG_CONFARGS}', d)} =
--disable-static ${PACKAGECONFIG_CONFARGS}', d)} which triggered exception =
SyntaxError: invalid syntax (EXTRA_OECONF[:=3D], line 1)

Question 1)
    Why doesn't this work?

Question 2)
    What do I have to do to filter out BOTH configure flags. I realize I ca=
n just write a new recipe, but I don't think that's the "correct" answer.

Thank you.



