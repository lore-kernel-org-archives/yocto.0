Return-Path: <Richard.Schmitt@commscope.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCA6EE007AA; Wed, 11 Jan 2017 07:23:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.38.59 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0059.outbound.protection.outlook.com [104.47.38.59])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49180E0049A
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2017 07:23:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=commscope.onmicrosoft.com; s=selector1-commscope-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=Y5KiNdpQu5gze/zDW4a/Cuy4cx6O0JljLAI4OerP3F4=;
	b=mHhu4Q6UIC62kIagZs8c39zMigkqKSUQyyr4hbDutVJ9MmEOhCb29MKMQtp7a9kEdqllulcIHpSAFlsWIwMmjONHUwcyrhE4kcKB0HLQpYz5Va1c/VKe3LzdDhKcK3b4nbEaoB6U49aWeLLOfed9p154uV3xvJAIAlc4h3VBzE4=
Received: from BLUPR0601MB1649.namprd06.prod.outlook.com (10.163.212.143) by
	BLUPR0601MB1650.namprd06.prod.outlook.com (10.163.212.144) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.829.7;
	Wed, 11 Jan 2017 14:49:02 +0000
Received: from BLUPR0601MB1649.namprd06.prod.outlook.com ([10.163.212.143]) by
	BLUPR0601MB1649.namprd06.prod.outlook.com ([10.163.212.143]) with
	mapi id 15.01.0829.017; Wed, 11 Jan 2017 14:49:02 +0000
From: "Schmitt, Richard" <Richard.Schmitt@commscope.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] kernel config fragments not applied
Thread-Index: AdJraY1+msLVupy7Q2uqzc4ZMn7FHQAGrJ0AAABdoxAAAGlLgAAAPdcAAAR7GAAAH7bLEA==
Date: Wed, 11 Jan 2017 14:49:01 +0000
Message-ID: <BLUPR0601MB16498C168528147A884EBD61E6660@BLUPR0601MB1649.namprd06.prod.outlook.com>
References: <BLUPR0601MB16491766FFC1CA176DBA4533E6670@BLUPR0601MB1649.namprd06.prod.outlook.com>
	<06e6b60b-4efe-de7e-0b69-b683b2f2cda7@windriver.com>
	<BLUPR0601MB164929DCC684C95E8B96EF85E6670@BLUPR0601MB1649.namprd06.prod.outlook.com>
	<97b35f45-4bc3-de7e-d929-1a8d34e2b45f@windriver.com>
	<d7a99f7e-d266-995a-6a38-e1ee88a9cad3@windriver.com>
	<5f10220e-caba-615f-38de-b1416a25c961@windriver.com>
In-Reply-To: <5f10220e-caba-615f-38de-b1416a25c961@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Richard.Schmitt@commscope.com; 
x-originating-ip: [131.239.32.100]
x-ms-office365-filtering-correlation-id: 898d42d9-17dd-42c3-4c9c-08d43a30fb9f
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:BLUPR0601MB1650; 
x-microsoft-exchange-diagnostics: 1; BLUPR0601MB1650;
	7:4TZTTRLBZWUGhWgNxHs5AKgkYXmBYFULwGQOMLVQ7GQ+W5+YuvPP4g9wbxQ9jm9ezlEGxx1bLlN09su46rS7xV0X+o+mBvpGdUHgSXM3pWVlve0G1OtoigJhxbhHLjUloNj8lHibc+Zp5bHXt3oQCzBEFSRvB/Bbc68rI/oVJfiujLflo5KRbhcWU3MF26rHkKC/TX12SlwdnNJ5Rr3hKic+HOCko0CsHcgsyOdh1/J067gJjIHXmVq4ER+wMb13GUfBFPchXIVEpEW4JkTEXZSI+QfOYfu8FZVOaqKBNh7pdu+tL2VNfcPRiVD5mlGAQYY60a92ylxwS1EUBIi+h46OEGBl/NKzybgDx2VxZPyY8D1LTshtQbWt2+Xj/fnOW8d4lz/ktBEoIyuW9yWvPKiBGM9QmkDSCFf7d/hi5KjCCHG9Y5dbkfvagMfEOFPs0reuGGhkHCyc2y+lijezyg==
x-microsoft-antispam-prvs: <BLUPR0601MB1650523E80EC7327F9B81314E6660@BLUPR0601MB1650.namprd06.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(160334459356078);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6041248)(20161123562025)(20161123555025)(20161123564025)(20161123560025)(6072148);
	SRVR:BLUPR0601MB1650; BCL:0; PCL:0; RULEID:;
	SRVR:BLUPR0601MB1650; 
x-forefront-prvs: 01842C458A
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(979002)(6009001)(7916002)(39450400003)(189002)(52314003)(24454002)(199003)(13464003)(377454003)(377424004)(66066001)(81156014)(105586002)(33656002)(93886004)(101416001)(76176999)(50986999)(2501003)(86362001)(229853002)(38730400001)(6506006)(6436002)(25786008)(8676002)(77096006)(81166006)(54356999)(92566002)(2950100002)(2900100001)(305945005)(7736002)(74316002)(106356001)(2906002)(99286003)(55016002)(6116002)(3846002)(3660700001)(3280700002)(122556002)(8936002)(102836003)(9686003)(189998001)(107886002)(5660300001)(7696004)(5001770100001)(68736007)(97736004)(969003)(989001)(999001)(1009001)(1019001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR0601MB1650;
	H:BLUPR0601MB1649.namprd06.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: commscope.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: commscope.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2017 14:49:01.8633 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 31472f81-8fe4-49ec-8bc3-fa1c295640d7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR0601MB1650
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
X-List-Received-Date: Wed, 11 Jan 2017 15:23:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I think I have an apology to make.

My issue was that the config fragment I used (overlayfs.cfg) was:
CONFIG_OVERLAY_FS =3D yes

Note the spaces around the =3D sign.  With spaces, the setting is ignored. =
 When I changed the config fragment to:
CONFIG_OVERLAY_FS=3Dyes
(without spaces), the setting took.

This was difficult to debug because there is no indication anywhere that th=
e config fragment was bad.  There's not even notification anywhere that the=
 config fragment tried to be applied.  So I assumed it wasn't even getting =
attempted.

Sorry for taking your time.  But thanks a lot for helping.  The fact that y=
ou had it working made me look even closer.

Rich

-----Original Message-----
From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]=20
Sent: Tuesday, January 10, 2017 5:36 PM
To: Schmitt, Richard <Richard.Schmitt@commscope.com>; yocto@yoctoproject.or=
g
Subject: Re: [yocto] kernel config fragments not applied

On 2017-01-10 4:27 PM, Bruce Ashfield wrote:
> On 2017-01-10 4:20 PM, Bruce Ashfield wrote:
>> On 2017-01-10 4:13 PM, Schmitt, Richard wrote:
>>>
>>>
>>> -----Original Message-----
>>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>>> Sent: Tuesday, January 10, 2017 2:58 PM
>>> To: Schmitt, Richard <Richard.Schmitt@commscope.com>;=20
>>> yocto@yoctoproject.org
>>> Subject: Re: [yocto] kernel config fragments not applied
>>>
>>> On 2017-01-10 1:05 PM, Schmitt, Richard wrote:
>>>>> I am having a heck of a hard time getting a minor kernel config=20
>>>>> fragment applied.
>>>>>
>>>>>
>>>>>
>>>>> In order to minimize all variables, I am simply trying to build=20
>>>>> linux-yocto for a qemux86 MACHINE target.
>>>>>
>>>>>
>>>>>
>>>>
>>>> What release ? Everything is working here, but I can switch to=20
>>>> whatever release you are using and run the test there (I'm using=20
>>>> master).
>>>
>>> I'm using krogoth.  I'll try a build based on master and see if it's=20
>>> release specific.
>>
>> Thanks. I'm also spinning up a krogoth build .. you never know if=20
>> something crept in. krogoth is before my audit code was visible, so=20
>> hints as to why it failed likely aren't visible.
>
> Well I'll be .... different behaviour with krogoth. I just updated it=20
> and some patches came in from what I had been using before. It could=20
> be something that merged recently.
>
> Anyway, leave this with me. I'll debug it tonight and spin a fix.

I take that back.

My first build was tainted with old sstate and didn't actually do anything.=
 Now that I'm building with a clean slate on krogoth, I can create a local =
layer, add a linux-yocto_4.4.bbappend and add a overlay.cfg to enable CONFI=
G_OVERLAYFS.

Is it possible that you could tar up your test layer and send it with me, s=
o I can try it directly ?

Bruce

>
> Bruce
>
>
>>
>> Bruce
>>
>>>
>>>> Bruce
>>>
>>>>> There had been some discussion on the mailing list previously that=20
>>>>> suggested making sure linux-yocto.inc was included within the recipes=
.
>>>>> The ones being used are standard poky recipes and they do include=20
>>>>> the linux-yocto.inc file.
>>>>>
>>>>> My configuration is very simple.  I have my own layer and=20
>>>>> linux-yocto
>>>>> bbappend:
>>>>>
>>>>> meta-mylayer/recipes-kernel/linux/linux-yocto_4.4.bbappend
>>>>>
>>>>> Whose contents are:
>>>>>
>>>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>>>>>
>>>>> SRC_URI +=3D " \
>>>>>         file://overlayfs.cfg \
>>>>>         "
>>>>>
>>>>> With the config fragment in:
>>>>>
>>>>> meta-mylayer/recipes-kernel/linux/linux-yocto/overlayfs.cfg
>>>>>
>>>>> whose contents is:
>>>>>
>>>>> CONFIG_OVERLAY_FS=3Dy
>>>>>
>>>>> If I do a "bitbake linux-yocto" I would expect it to generate a=20
>>>>> config file that includes CONFIG_OVERLAY_FS=3Dy and a kernel that=20
>>>>> includes this filesystem.  I don't.
>>>>>
>>>>> My layer is parsed correctly and the bbappend is found and parsed. =20
>>>>> I know this because in the tmp directory:
>>>>>
>>>>> tmp/work/qemux86-poky-linux/linux-yocto/4.4.26+gitAUTOINC+3030330b
>>>>> 06_c
>>>>> a6a08bd7f-r0/
>>>>>
>>>>> the file overlayfs.cfg exists.
>>>>>
>>>>> Searching the log files, the only one that references this file=20
>>>>> though is log.do_unpack.  I do not see any reference to it in
>>>>> log.do_kernel_configme or log.do_configure.    I'm not sure how kerne=
l
>>>>> fragments are applied, but looking through the classes and recipes=20
>>>>> for linux-yocto in poky/meta, I do not see any code that would=20
>>>>> apply kernel fragments.  So I'm not sure if I'm missing some piece.
>>>>>
>>>>> Searching through the files in poky/meta, I find meta-config.sh=20
>>>>> only in recipes-core/uclibc and recipes-core/busybox.  That's why=20
>>>>> I think I'm missing something.
>>>>>
>>>>> I'm using the krogoth branch of poky.
>>>>>
>>>>> What am I missing?
>>>>>
>>>>> Thanks,
>>>>> Rich
>>>
>>
>


