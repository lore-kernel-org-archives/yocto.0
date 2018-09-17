Return-Path: <Krzysztof.Dudziak@gemalto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2366BE00A38; Mon, 17 Sep 2018 08:23:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.56 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0056.outbound.protection.outlook.com [104.47.2.56])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34F46E00474
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2018 08:23:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gemalto.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=kITWVxCLFhoW4istR/vryvwf9abnWEbY/GwnTfunZOU=;
	b=tmi79E0lYSWlgBmnHGPAS8iW95s15DtS3XVtXzlJwij9SiBPdcd/3X4WNNasYJbgT2MBYXSqTG0KabI6Q3f9H9ZkUvS/sETFt15VRaaBCe+I+gp0lYbN1RDDSDrDqBL/UgkI8qZeDRJPSCrzyQbeLze4lowsMlLWkJNRhUe1Ad0=
Received: from VI1PR01MB1070.eurprd01.prod.exchangelabs.com (10.162.118.12) by
	VI1PR01MB4077.eurprd01.prod.exchangelabs.com (20.177.54.75) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1143.13; Mon, 17 Sep 2018 15:08:04 +0000
Received: from VI1PR01MB1070.eurprd01.prod.exchangelabs.com
	([fe80::2148:c879:482f:ab44]) by
	VI1PR01MB1070.eurprd01.prod.exchangelabs.com
	([fe80::2148:c879:482f:ab44%2]) with mapi id 15.20.1143.017;
	Mon, 17 Sep 2018 15:08:03 +0000
From: Dudziak Krzysztof <Krzysztof.Dudziak@gemalto.com>
To: ChenQi <Qi.Chen@windriver.com>
Thread-Topic: [yocto] Building, Using SDK
Thread-Index: AdRLadRy5X3gWC2YRBWzUE//nH8P7gCz6lGAABc94eA=
Date: Mon, 17 Sep 2018 15:08:03 +0000
Message-ID: <VI1PR01MB107006A429FF8CA52D1749DBE01E0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
References: <VI1PR01MB1070A5BD461FF0A3731BF9DCE01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
	<e9c94cb5-bbaa-16ec-b16b-c8fedad90aca@windriver.com>
In-Reply-To: <e9c94cb5-bbaa-16ec-b16b-c8fedad90aca@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Krzysztof.Dudziak@gemalto.com; 
x-originating-ip: [90.187.45.85]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1PR01MB4077;
	6:2v9Z0kUXgo4IEwQVpS1LMNlI/3Xbd3wVTdJHQr52tj6hhi+aYZuILME7JlyT9DDOZzxQ8ddp2NOQKpRFeWjHvm+mdKFfcLeIwJguKdA2jt9kCJKqnaAPHfuf4kJBlQeNdf84NyD4I6I6BfEWBCiBkVPw3EEyFIHD8IXUFi8bN8MN7mIDBvugsEE/CQ03LC5AaAHXyYVfjokL6ZLscu+WxKi43N/XGgY1hZugce47EfMOF38WtFiS7yDQ/IIL10Wc5/jXmZfP+NKX8zqOnlesxZimAG0WANkkRzyG32bu/ZT/3Ez8BChnLkd2MRdMN+IBSOmfCswRJHFTmTqGc8ZE0naZ2uw5Oqinh941Un8CkHrKfdjuMeorS801N5w9IwLhN1t3gaKHAvyiul/VhHczm+zamTLrrNytV6h0dHeYIppiM9OmD8jvga+w7m5PBsSZJDBrK7sTtFpamHPsGCJOHw==;
	5:tQtrWRdtBMxfQh+uoVQAq3FdVIZpKAQlQdQ6r3btFZeATEWr6Dh81vS0Htdxdt59Na4u1MC/OLcrHAeBW2vfxgzsDTTdrtNIq77vzPW14zkjoldW3ZDqs9UmrV03TKow/g+2cAJr7a45hZcLmp38ZROO6ugTeQKPF++Couj1iDc=;
	7:3Kk05kLMvOw6NxQu9IcP5bDsoehO2Jwh+36bVJU593dSJpB7CSQyhh1ftpY8iGXQdhzEezTvLTD7SKSWzcAchG+72ZneOulU6EFgwIhcpRWGyAtYLKOdJNmPPvIL1B/rfN0Q8/8DRcer0M7OBRqHDfea4mN+m/1MlQFgYOTnmIBdUiJqzdP5dAR1Cp55btC5LMvcnBh0m4MITCPGYLqVwHfyH8XWoK8x/XQpQIFGVh2U6hdc7+kkj7NAuQW+bY0R
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: ba0a8638-b82c-466b-dd1d-08d61caf5dc1
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989137)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:VI1PR01MB4077; 
x-ms-traffictypediagnostic: VI1PR01MB4077:
x-microsoft-antispam-prvs: <VI1PR01MB4077395C2282184F5CE097AFE01E0@VI1PR01MB4077.eurprd01.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(158342451672863)(103651359005742);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(3231355)(944501410)(52105095)(93006095)(93001095)(10201501046)(3002001)(149027)(150027)(6041310)(20161123564045)(20161123558120)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(201708071742011)(7699050);
	SRVR:VI1PR01MB4077; BCL:0; PCL:0; RULEID:; SRVR:VI1PR01MB4077; 
x-forefront-prvs: 0798146F16
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(346002)(376002)(396003)(39860400002)(366004)(136003)(189003)(199004)(68736007)(6436002)(55016002)(305945005)(7736002)(316002)(478600001)(33656002)(74316002)(53936002)(3846002)(6116002)(8676002)(72206003)(14454004)(6246003)(25786009)(66066001)(9686003)(4326008)(99286004)(86362001)(2906002)(229853002)(5250100002)(105586002)(7696005)(81166006)(76176011)(476003)(6506007)(26005)(256004)(2900100001)(97736004)(446003)(5660300001)(8936002)(14444005)(5024004)(486006)(6916009)(186003)(102836004)(81156014)(106356001)(53546011)(11346002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR01MB4077;
	H:VI1PR01MB1070.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gemalto.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: wleM0g4ooav8x1LqgU4wkxHNfGG50aGdk459I2HS2k0vTtVGNANZJrUben3Kv/PTLly+6G/T9g8KRKj1oZt98icfppwC9hpUqeB3KZY4QLKTCV3B8Lczi2SX6S79y03kJjojUvRxGW7bYFPggtRv5fwjmdpLN/lqwUy5V2nj9tIoLyPwKGfWlcaA0WX+26dpIQXTsxxiJy3alUV48KFKgNJCaaTDWYhLh85tvbFVgjLVJI5hcMdww7rdeWnCBlYhPS8KJTFHxNG+4plEzDZCBnYyjg86hKfHXV2TSJleNYC9d1UQt8ubiX2Gv+jXo1+gQ6FGqRsQ1QQylKQT4i3FMYrgZKUySeOE0ny7gDIgesg=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: gemalto.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba0a8638-b82c-466b-dd1d-08d61caf5dc1
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Sep 2018 15:08:03.5713 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 37d0a9db-7c46-4096-bfe3-1add5b495d6d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR01MB4077
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building, Using SDK
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
X-List-Received-Date: Mon, 17 Sep 2018 15:23:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,
Thanks for feedback from you.
Embedded system native package building and image creation might not be the=
 regular case
as frequently embedded system do not provide power needed for that.
So let's concentrate to cross-compilation.

One need first working toolchain.
In next steps one can build BSP, user-space, image(-s).
Is the sequence of step as presented previously the right one?
step 1: bitbake <image-name> -c populate_sdk
step : build bootloader, kernel
step : bitbake <image-name>

krzysiek

From: ChenQi [mailto:Qi.Chen@windriver.com]
Sent: Monday, 17. September 2018 05:50
To: Dudziak Krzysztof <Krzysztof.Dudziak@gemalto.com>; yocto@yoctoproject.o=
rg
Subject: Re: [yocto] Building, Using SDK

On 09/13/2018 10:18 PM, Dudziak Krzysztof wrote:
Hi,

Alex Gonz=E1lez elaborates in his book Embedded Linux Development Using Yoc=
to Projets (2nd Edition)
SDK-related questions - basics, building, usage (chapter 4).

1.
Downloading then installing precompiled SDK was one of all available option=
s according to Alex.
He elaborates how to find it on server in Internet, how to select needed on=
e and install it.
I wonder how to integrate downloaded and installed precompiled SDK
to Poky release used on build system?


I'd suggest you not using precompiled SDK unless you are justing doing some=
 simple cross compilation that requires no additional libs, header files, e=
tc.


2.
Preparing / building SDK by oneself was further option with image target's =
'populate_sdk' Bitbake task
as the recommended way (according to Alex in chapter's certain section).
One would need only to start populate_sdk task for image which matches root=
 file system of system in development.
As soon as task completed SDK can be installed using generated script.
But how does it work for first build where rootfs was not built in the past=
.
Is in that case following procedure the proper one?
step 1: bitbake <image-name> -c populate_sdk
step 2: bitbake <image-name>


The populate_sdk task directly installs rpm packages (nativesdk ones and ta=
rget ones) to form an SDK.
It does not need rootfs to be generated first.

Normally you use an SDK for a specific target.
So the `bitbake IMAGE' is used to generate the image, and `bitbake IMAGE -c=
 populate_sdk' is used to generate the SDK for the image.

Best Regards,
Chen Qi


krzysiek




________________________________________
This message and any attachments are intended solely for the addressees and=
 may contain confidential information. Any unauthorized use or disclosure, =
either whole or partial, is prohibited.
E-mails are susceptible to alteration. Our company shall not be liable for =
the message if altered, changed or falsified. If you are not the intended r=
ecipient of this message, please delete it and notify the sender.
Although all reasonable efforts have been made to keep this transmission fr=
ee from viruses, the sender will not be liable for damages caused by a tran=
smitted virus.


________________________________
 This message and any attachments are intended solely for the addressees an=
d may contain confidential information. Any unauthorized use or disclosure,=
 either whole or partial, is prohibited.
E-mails are susceptible to alteration. Our company shall not be liable for =
the message if altered, changed or falsified. If you are not the intended r=
ecipient of this message, please delete it and notify the sender.
Although all reasonable efforts have been made to keep this transmission fr=
ee from viruses, the sender will not be liable for damages caused by a tran=
smitted virus.

