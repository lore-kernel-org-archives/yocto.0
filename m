Return-Path: <Richard.Schmitt@commscope.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F13A2E00AC0; Tue, 10 Jan 2017 13:13:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.33.84 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 105190 seconds by postgrey-1.32 at yocto-www;
	Tue, 10 Jan 2017 13:13:09 PST
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-bn3nam01on0084.outbound.protection.outlook.com [104.47.33.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20D7AE009B2
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2017 13:13:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=commscope.onmicrosoft.com; s=selector1-commscope-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=aXxQ4P9ILaspCDHbAclywRoZkF01Y1JCleCHiQI3zn8=;
	b=AYrv2pksDrlrgs4XEtPykrjeyryMFwRzyInvD6FMjTd4J3IFXnytmw2c4nJ08v9Pnrhy2gS3exbDmTXVmGxhV+pjrnG390DBD/JWT5ypCiAjaTTkpCy1znhGEAQqdU7ZyBu/615zmrnnnrpBRlDx17wg4DQ5lA1xrEHTzylXv3k=
Received: from BLUPR0601MB1649.namprd06.prod.outlook.com (10.163.212.143) by
	BLUPR0601MB1649.namprd06.prod.outlook.com (10.163.212.143) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.829.7;
	Tue, 10 Jan 2017 21:13:07 +0000
Received: from BLUPR0601MB1649.namprd06.prod.outlook.com ([10.163.212.143]) by
	BLUPR0601MB1649.namprd06.prod.outlook.com ([10.163.212.143]) with
	mapi id 15.01.0829.017; Tue, 10 Jan 2017 21:13:07 +0000
From: "Schmitt, Richard" <Richard.Schmitt@commscope.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] kernel config fragments not applied
Thread-Index: AdJraY1+msLVupy7Q2uqzc4ZMn7FHQAGrJ0AAABdoxA=
Date: Tue, 10 Jan 2017 21:13:07 +0000
Message-ID: <BLUPR0601MB164929DCC684C95E8B96EF85E6670@BLUPR0601MB1649.namprd06.prod.outlook.com>
References: <BLUPR0601MB16491766FFC1CA176DBA4533E6670@BLUPR0601MB1649.namprd06.prod.outlook.com>
	<06e6b60b-4efe-de7e-0b69-b683b2f2cda7@windriver.com>
In-Reply-To: <06e6b60b-4efe-de7e-0b69-b683b2f2cda7@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Richard.Schmitt@commscope.com; 
x-originating-ip: [131.239.32.100]
x-ms-office365-filtering-correlation-id: 3797839d-1b78-421f-62aa-08d4399d795b
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:BLUPR0601MB1649; 
x-microsoft-exchange-diagnostics: 1; BLUPR0601MB1649;
	7:QSCVAK4OfVNipB+H7vGiM9a2k7Utk5VRXbN3quEBgQaS6p9ZzhIoPBsVFfkQr2xndanr581CYL9/IFHhF6DgBMa/t44vJo7ZKX9MzHeLAofRmiOL3YIJTPm92OIlp8YJs9QLQWXCOCPPm0YmAZSzW2ct04E25iiUdsSE1KlZEZZC4JwXXo37LkAhQa5xjqiu2GOi67kn8MGJy29mOcp7Fx36WQgCud3EdSviCettIABco0gnHkbfwLw/Nzk1Z9dedqpkr7WdkAupwEil8/siiYCoba15Zm/RmKoE1Lot1Rvf6V6uwLcdUcfOzhkDjMkF9VV3qosKaKGJr6yxlYnulzXYj7m04VLsOKipWJX0ulTlRVs0N0extRqsfsWbT4zxOKScClHAM9c6RoyqmxC3Dop4WQVGLk70+Jqy72vACSl7871Og5/ma0r0c9An/9YobNM+Em+aCd4DNRoaMExDug==
x-microsoft-antispam-prvs: <BLUPR0601MB1649475EB17323B32A287514E6670@BLUPR0601MB1649.namprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(160334459356078);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6041248)(20161123562025)(20161123555025)(20161123564025)(20161123560025)(6072148);
	SRVR:BLUPR0601MB1649; BCL:0; PCL:0; RULEID:;
	SRVR:BLUPR0601MB1649; 
x-forefront-prvs: 01834E39B7
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(39450400003)(377424004)(199003)(189002)(377454003)(13464003)(24454002)(3660700001)(55016002)(38730400001)(9686003)(99286003)(7696004)(68736007)(25786008)(101416001)(33656002)(77096006)(54356999)(2950100002)(3280700002)(50986999)(6436002)(6506006)(189998001)(107886002)(76176999)(97736004)(5001770100001)(106356001)(305945005)(5660300001)(74316002)(2906002)(122556002)(7736002)(6116002)(105586002)(2501003)(102836003)(2900100001)(66066001)(3846002)(229853002)(8936002)(86362001)(92566002)(81166006)(8676002)(81156014);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR0601MB1649;
	H:BLUPR0601MB1649.namprd06.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: commscope.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: commscope.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2017 21:13:07.2581 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31472f81-8fe4-49ec-8bc3-fa1c295640d7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR0601MB1649
Subject: Re: kernel config fragments not applied
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
X-List-Received-Date: Tue, 10 Jan 2017 21:13:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



-----Original Message-----
From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]=20
Sent: Tuesday, January 10, 2017 2:58 PM
To: Schmitt, Richard <Richard.Schmitt@commscope.com>; yocto@yoctoproject.or=
g
Subject: Re: [yocto] kernel config fragments not applied

On 2017-01-10 1:05 PM, Schmitt, Richard wrote:
>> I am having a heck of a hard time getting a minor kernel config=20
>> fragment applied.
>>
>>
>>
>> In order to minimize all variables, I am simply trying to build=20
>> linux-yocto for a qemux86 MACHINE target.
>>
>>
>>
>
> What release ? Everything is working here, but I can switch to whatever r=
elease you are using and run the test there (I'm using master).

I'm using krogoth.  I'll try a build based on master and see if it's releas=
e specific.

> Bruce

>> There had been some discussion on the mailing list previously that=20
>> suggested making sure linux-yocto.inc was included within the recipes.
>> The ones being used are standard poky recipes and they do include the=20
>> linux-yocto.inc file.
>>
>> My configuration is very simple.  I have my own layer and linux-yocto
>> bbappend:
>>
>> meta-mylayer/recipes-kernel/linux/linux-yocto_4.4.bbappend
>>
>> Whose contents are:
>>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>>
>> SRC_URI +=3D " \
>>         file://overlayfs.cfg \
>>         "
>>
>> With the config fragment in:
>>
>>meta-mylayer/recipes-kernel/linux/linux-yocto/overlayfs.cfg
>>
>> whose contents is:
>>
>> CONFIG_OVERLAY_FS=3Dy
>>
>> If I do a "bitbake linux-yocto" I would expect it to generate a config=20
>> file that includes CONFIG_OVERLAY_FS=3Dy and a kernel that includes this=
=20
>> filesystem.  I don't.
>>
>> My layer is parsed correctly and the bbappend is found and parsed.  I=20
>> know this because in the tmp directory:
>>
>> tmp/work/qemux86-poky-linux/linux-yocto/4.4.26+gitAUTOINC+3030330b06_c
>> a6a08bd7f-r0/
>>
>> the file overlayfs.cfg exists.
>>
>> Searching the log files, the only one that references this file though=20
>> is log.do_unpack.  I do not see any reference to it in
>> log.do_kernel_configme or log.do_configure.    I'm not sure how kernel
>> fragments are applied, but looking through the classes and recipes for=20
>> linux-yocto in poky/meta, I do not see any code that would apply=20
>> kernel fragments.  So I'm not sure if I'm missing some piece.
>>
>> Searching through the files in poky/meta, I find meta-config.sh only=20
>> in recipes-core/uclibc and recipes-core/busybox.  That's why I think=20
>> I'm missing something.
>>
>> I'm using the krogoth branch of poky.
>>
>> What am I missing?
>>
>> Thanks,
>> Rich


