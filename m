Return-Path: <alexandretm@amotus.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 366C9E00CC4; Tue, 31 Jul 2018 16:03:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.120 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 7185 seconds by postgrey-1.32 at yocto-www;
	Tue, 31 Jul 2018 16:03:20 PDT
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0120.outbound.protection.outlook.com [104.47.36.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A50D0E00CA1
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2018 16:03:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=amotus.onmicrosoft.com; s=selector1-amotus-ca;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=8fya1p7aLNIIhtqAOPJR7KDaeIA8b0j8+xTaH9A8cjA=;
	b=c4kS+NPSaCA4jRwnnQEeOp+3aQnh+wxw006n44hnSerPgjbFEqwmXIT8S4eK05cBlZZTGlpiWiShyvnICamEXDSzPOH5CTLx1Zrp2e0vtbD4t1zu4LBt+PSOmsWF6DJtMvS791RVrWKTJRP5Xe3n3BlCdTvl+NURHUX3PRBCmJI=
Received: from BN6PR1101MB2356.namprd11.prod.outlook.com (10.173.203.137) by
	BN6PR1101MB2131.namprd11.prod.outlook.com (10.174.112.136) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.995.19; Tue, 31 Jul 2018 20:29:02 +0000
Received: from BN6PR1101MB2356.namprd11.prod.outlook.com
	([fe80::11e:691a:631f:21a4]) by
	BN6PR1101MB2356.namprd11.prod.outlook.com
	([fe80::11e:691a:631f:21a4%9]) with mapi id 15.20.0995.020;
	Tue, 31 Jul 2018 20:29:02 +0000
From: =?iso-8859-1?Q?Mathieu_Alexandre-T=E9treault?= <alexandretm@amotus.ca>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Dynamically change linux kernel defconfig
Thread-Index: AdQo0/lXDGxmrp52RUC95r6hofI/0w==
Date: Tue, 31 Jul 2018 20:29:02 +0000
Message-ID: <BN6PR1101MB2356A8CE5A805A2135398EF0B22E0@BN6PR1101MB2356.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=alexandretm@amotus.ca; 
x-originating-ip: [24.37.194.182]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BN6PR1101MB2131;
	6:fTVvjIiSqeYeyzmGmziNx+XAWWLqYSBQ+35VAZFglritNYYPRhqx18xtUd7DikRUOTbRWjOXT5unD7ZpQuSfXFJUW0XGeFHxVBZOqoq4SOFpDqovppyJ9A3LPqn4JSRhEZEnm44Pwlq87ZYJNbS9BaCRoTdgM8319CkCTYcwHDYV/1Gxlt+yLS99ty9U4+z1Pyjq9R6Id2oJST/55cYiRmkbKvjgs/MthPWP1Z7tDwCQGp8gBslCDfqlHxqEtUOXahbwXwUqgg6H8zwh0/It8UwAAebJ5CY4v3FHtkUDC5hhR4gfFaHfS+Q4Crf/s1lENWDDK918y/iYhKmUUJ7yyv5biy5NvJLiLpzpOi3kzhiB0locCra2s041kbROy/sVArfhzW8XBWnaEkBLEpP9YGNPo+QA9qNsRSK2jIqySz6/XP0pV1NFKObKRV+COPvOo39qMwBZb61fWp7Bayic9g==;
	5:FzMFSSGXGuZuq3mBiwMInSsbfxkpw42NrJKBcO+t19ZgKRHs8B9KEm+0yfxJNDY0Flrwr3o8pVypYb347YTVPx4oAndKJJn7O3nkxLNBzXULhprZfCuc1mfb2ZXN8dKytWsjd2EOlo4izwfBrSAUV3ApNA1DyMJbK1qocdprzIk=;
	7:omGqkrdWPK/L//l6rjMPHMbfHKNGnPJ9i0LgFLPElt3NFoUqBd8hkF1N4BuzKYVFDpxdgwHCxFys4BzWNa8gYzeMu9/IV0Op5BPfCjj7XTuR3w3BP+yRqmUSMWksPx9c+b6mwbEtIf7yHCk/rExHIjptlGdDOGGw1wpQHyUrsntrlapwBcFvGYYixkLBOfCSNbNr6T46AcbpbbO6d0QXopzxX/6xJtH/UqkEULmsAHgaafzexImIWqFi7W4BNGbd
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: fd022be7-967e-4f45-f88e-08d5f7244108
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(7021125)(8989117)(5600074)(711020)(4534165)(7022125)(4603075)(4627221)(201702281549075)(8990107)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603328)(7153060)(7193020);
	SRVR:BN6PR1101MB2131; 
x-ms-traffictypediagnostic: BN6PR1101MB2131:
x-microsoft-antispam-prvs: <BN6PR1101MB21315C9C62EDFAEFCFA24526B22E0@BN6PR1101MB2131.namprd11.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(3002001)(93006095)(93001095)(3231311)(944501410)(52105095)(10201501046)(149027)(150027)(6041310)(2016111802025)(20161123560045)(20161123564045)(20161123562045)(20161123558120)(6072148)(6043046)(201708071742011)(7699016);
	SRVR:BN6PR1101MB2131; BCL:0; PCL:0; RULEID:;
	SRVR:BN6PR1101MB2131; 
x-forefront-prvs: 0750463DC9
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39840400004)(366004)(136003)(376002)(346002)(396003)(189003)(199004)(105586002)(9686003)(7696005)(486006)(2900100001)(99286004)(316002)(476003)(6436002)(106356001)(5640700003)(6916009)(102836004)(6506007)(478600001)(5660300001)(25786009)(186003)(33656002)(74482002)(14454004)(26005)(53936002)(55016002)(7736002)(68736007)(2906002)(66066001)(2351001)(86362001)(74316002)(6116002)(8936002)(81156014)(1730700003)(3846002)(8676002)(81166006)(97736004)(305945005)(2501003)(256004)(5250100002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN6PR1101MB2131;
	H:BN6PR1101MB2356.namprd11.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: amotus.ca does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: BNBVTU90DoxQOb4u91LUN8z4oleXCTJc8qyvMVKwM30+RNk0tpnh8/YNFAP3eKXSRGfKtEn51+Cr9R9E2p6oazyQfzPP1y+4LdByu/c1WCtDzrRXkqk4laAgLbRwhGUXCDGl9Lc+4tv34tbwHvGIMgEwItmxUs6GUS+C8zMKtMtUFkkaj76QPMCw9BWjoMZwUlTEkdkZkM38pEepBpPqsHaNw2HVwslX+DFgSMUZawxnvBsJNpV3re8Uces9YRdhhBbu38ZEvIK1IJ/JXekRHOtJKABywmS4LWxrAei1DLhl7hlfA51WQCSxiiZLWZPdZLKU5zGH1s4UgFy7m5gJQvdDQge5mMlNYFkyPKblnOc=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: amotus.ca
X-MS-Exchange-CrossTenant-Network-Message-Id: fd022be7-967e-4f45-f88e-08d5f7244108
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2018 20:29:02.3742 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb1fb47f-d32e-4ec7-8cf5-9c91bb29593c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2131
Subject: Dynamically change linux kernel defconfig
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
X-List-Received-Date: Tue, 31 Jul 2018 23:03:22 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

Here's what I am trying to achieve:
We are using the kernel signing facility to sign the kernel modules. Everyt=
hing works as expected with an hard coded key(CONFIG_MODULE_SIG_KEY) in the=
 defconfig. However, we would like to sign using two different keys.  The d=
ev build would have a different key than the production build.

So far what we have is a variable set in our local.conf that points toward =
the key to use during the build.  This variable is also used by other appli=
cation during the build.

What we tried so far:
- Adding a do_configure_preprend with a sed that modifies ${WORKDIR}/defcon=
fig
This didn't work, my change was getting over written.

- Adding a do_configure_preprend with a sed that modifies ${B}/.config and =
then running oe_runmake old config
	sed -i "/CONFIG_MODULE_SIG_KEY=3D/c\CONFIG_MODULE_SIG_KEY=3D${RSA_KEY_FOLD=
ER}/${RSA_KEY_NAME}.kernel.pem" ${B}/.config
	yes '' | oe_runmake oldconfig

The changes are then moved to .config.old and if I copy this image to my pl=
atform it says the signature doesn't match. If I look in the kernel-build-a=
rtifacts folder the certs folder containt the signing_key automatically gen=
erated by the kernel which means it didn't take my defconfig modification.

Is their a clean way to achieve this?

Cheers,

Mathieu

