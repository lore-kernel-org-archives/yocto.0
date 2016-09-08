Return-Path: <Mark.Clark2@nov.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAE47E006B3; Thu,  8 Sep 2016 10:41:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.40.64 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 169761 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 Sep 2016 10:41:13 PDT
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-co1nam03on0064.outbound.protection.outlook.com [104.47.40.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59022E00547
	for <yocto@yoctoproject.org>; Thu,  8 Sep 2016 10:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nov.onmicrosoft.com;
	s=selector1-nov-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=adZdcw0xk+decsNeUSmtCGm4x6Q9/a7rvch6PiecpJ4=;
	b=UNhrUkYoJhFaPAiYNl4wHUl9DzAdvGKwBWIuFeAwHzzYCzdNr+cGi1nRDfxzKVrkRa/aLccGAFOApjDrav5L9wase38+IC2Y4T2Uxbq8wnbHhUw6TnvFDmLrgqLpPnl0R2WuhuRJcc2kYpcboezuzyAWpKZlLWlVPp9UF8DsqrQ=
Received: from BY1PR15MB0038.namprd15.prod.outlook.com (10.161.96.28) by
	BY1PR15MB0038.namprd15.prod.outlook.com (10.161.96.28) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.1.609.9; Thu, 8 Sep 2016 17:41:11 +0000
Received: from BY1PR15MB0038.namprd15.prod.outlook.com ([10.161.96.28]) by
	BY1PR15MB0038.namprd15.prod.outlook.com ([10.161.96.28]) with mapi id
	15.01.0609.016; Thu, 8 Sep 2016 17:41:11 +0000
From: "Clark, Mark A" <Mark.Clark2@nov.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [EXTERNAL] Re: [yocto] Update on issue witn do_package_qa
Thread-Index: AdIIaqw+cBpGebyISeqXZhKlysLcggANhNiAAC8vLoAAJp3fkA==
Date: Thu, 8 Sep 2016 17:41:11 +0000
Message-ID: <BY1PR15MB0038580C1E613BA5102B94BCBCFB0@BY1PR15MB0038.namprd15.prod.outlook.com>
References: <BY1PR15MB0038C23C62995E16B5C66E2EBCF90@BY1PR15MB0038.namprd15.prod.outlook.com>
	<7697eebf-7ade-cc6f-1ec7-cfb47dc34b32@windriver.com>
	<6668b4da-0fcb-a22a-f1ae-6603b33265c7@windriver.com>
In-Reply-To: <6668b4da-0fcb-a22a-f1ae-6603b33265c7@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Mark.Clark2@nov.com; 
x-originating-ip: [208.92.228.62]
x-ms-office365-filtering-correlation-id: 59770b01-7ccb-49a5-e24d-08d3d80f5302
x-microsoft-exchange-diagnostics: 1; BY1PR15MB0038;
	6:ZsWKL7uzwyYwaZ5NSt8FyuMGVD+5u+GSKg0C3BXFFzxC6w9+PJVVsLPjBVJusCIoxpj4bjUmymI8jQ71PoTUvEskgZPc0KeB3AgSJ0vEnJDTatW1sFkOCVOP4pr3ELeWnUJUt9pf/+yzG0OymNNDvUr+/wi7K/lcrAHLhfoop9lJiqP2raxRCba1J2W5jPqC6m7JsUI19dEliCPp6gMmtpuD9tN0mTbhF5v8LzJUZoqUT+pteiBrQ9R14UHb3ptKIKCyvNffr57V9TOzMbPmYpwzckcu/GcWSX7+MjbmlHV2XAB7uq9G3dJzItLlKq+X;
	5:k/sBCRb/5+n4QOXNh+jtm0bYcqTBSp/ZEe3Dht1rJ54xHrn/nkL/I5kY3j/6P4dYHMqwrlb5vM11uhVF02AWYCwtcDcna9/xJ8qkE47LwDEr+MCo3nL/Gs9tG8eAwUQUUi/XsFmNquw1XbViqoxElw==;
	24:JEM710z94dR/Z5CCkmo9uuQqjkmoIhnumzvi/MSsZFRf8kP6qXJUbOaogjET3QiA3wHCCHS/AwkfiE/abr83Vi8EH5NFcYrna2oDRuh8kGw=;
	7:Hy82PLX4aVWSYaXNNwDEc94h3DnrFjnV+AvDTHpfmF43eQIfZwlUl9pkYSDPA2gtn+0ORiYqIOoFWEeDRAEAvQmJSokLebAwjFZ3zeGXBKCYHJZUv+PMdIKRUi63DY/ZL0M04Gzg0gQagyJJEx0CopqxDzMmukrPRlqHgwxkOCHHjQULIi74XmZ61pjjl/EyYNi2C6xmPQF36t7SwqGJYvAVtNsX0mSSWVuNYI6eonjb/uQH/e1FQfusXUI3AVOY
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY1PR15MB0038;
x-microsoft-antispam-prvs: <BY1PR15MB0038A68F768E2C19A0B30DC8BCFB0@BY1PR15MB0038.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(10436049006162)(22074186197030)(206917828481874); 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6043046)(6042046);
	SRVR:BY1PR15MB0038; BCL:0; PCL:0; RULEID:; SRVR:BY1PR15MB0038; 
x-forefront-prvs: 00594E8DBA
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(199003)(377454003)(50944005)(377424004)(189002)(24454002)(13464003)(19580395003)(8676002)(102836003)(6116002)(3660700001)(2950100001)(106356001)(3846002)(10400500002)(2900100001)(586003)(8936002)(105586002)(74316002)(15650500001)(81166006)(189998001)(2906002)(11100500001)(97736004)(5660300001)(19580405001)(5002640100001)(5001770100001)(305945005)(101416001)(81156014)(2501003)(9686002)(92566002)(107886002)(33656002)(7696003)(7846002)(15975445007)(7736002)(50986999)(68736007)(87936001)(99286002)(76576001)(66066001)(77096005)(86362001)(122556002)(76176999)(575784001)(3280700002)(54356999)(19627235001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BY1PR15MB0038;
	H:BY1PR15MB0038.namprd15.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: nov.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nov.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2016 17:41:11.5746 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ebe82bb-f23f-4bb6-b7d0-b038c066ad05
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR15MB0038
Subject: Re: [EXTERNAL] Re: Update on issue witn do_package_qa
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
X-List-Received-Date: Thu, 08 Sep 2016 17:41:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Better but I'm still running into issues:  See below...

yocto@yocto-HP-Pavilion-dv7-Notebook-PC:~/poky-contrib-1a167ae1d023bfb27eee=
741a9ee6765f9ea732b7/build$ bitbake core-image-rt
Parsing recipes: 100% |####################################################=
#################################################| Time: 00:00:15
Parsing of 871 .bb files complete (0 cached, 871 parsed). 1301 targets, 46 =
skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        =3D "1.30.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "universal"
TARGET_SYS        =3D "i686-poky-linux"
MACHINE           =3D "genericx86"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "2.1.1"
TUNE_FEATURES     =3D "m32 core2"
TARGET_FPU        =3D ""
meta             =20
meta-poky        =20
meta-yocto-bsp    =3D "<unknown>:<unknown>"

NOTE: Preparing RunQueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: linux-yocto-rt-4.4.11+gitAUTOINC+59290c5f61_bf2fbe7f2c-r0 do_kerne=
l_configcheck: [kernel]: An auto generated BSP description was used, this n=
ormally indicates a misconfiguration.
Check that your machine (${MACHINE}) has an associated kernel description.
ERROR: linux-yocto-rt-4.4.11+gitAUTOINC+59290c5f61_bf2fbe7f2c-r0 do_package=
_qa: QA Issue: Architecture did not match (3 to 62) on work/genericx86-poky=
-linux/linux-yocto-rt/4.4.11+gitAUTOINC+59290c5f61_bf2fbe7f2c-r0/packages-s=
plit/kernel-vmlinux/boot/vmlinux-4.4.11-rt3-yocto-preempt-rt [arch]
ERROR: linux-yocto-rt-4.4.11+gitAUTOINC+59290c5f61_bf2fbe7f2c-r0 do_package=
_qa: QA run found fatal errors. Please consider fixing them.
ERROR: linux-yocto-rt-4.4.11+gitAUTOINC+59290c5f61_bf2fbe7f2c-r0 do_package=
_qa: Function failed: do_package_qa
ERROR: Logfile of failure stored in: /home/yocto/poky-contrib-1a167ae1d023b=
fb27eee741a9ee6765f9ea732b7/build/tmp/work/genericx86-poky-linux/linux-yoct=
o-rt/4.4.11+gitAUTOINC+59290c5f61_bf2fbe7f2c-r0/temp/log.do_package_qa.2888=
9
ERROR: Task 61 (/home/yocto/poky-contrib-1a167ae1d023bfb27eee741a9ee6765f9e=
a732b7/meta/recipes-kernel/linux/linux-yocto-rt_4.4.bb, do_package_qa) fail=
ed with exit code '1'
NOTE: Tasks Summary: Attempted 1553 tasks of which 900 didn't need to be re=
run and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
  /home/yocto/poky-contrib-1a167ae1d023bfb27eee741a9ee6765f9ea732b7/meta/re=
cipes-kernel/linux/linux-yocto-rt_4.4.bb, do_package_qa
Summary: There was 1 WARNING message shown.
Summary: There were 3 ERROR messages shown, returning a non-zero exit code.

-----Original Message-----
From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]=20
Sent: Wednesday, September 07, 2016 6:14 PM
To: Clark, Mark A <Mark.Clark2@nov.com>; yocto@yoctoproject.org
Subject: [EXTERNAL] Re: [yocto] Update on issue witn do_package_qa

On 2016-09-06 8:42 PM, Bruce Ashfield wrote:
> On 2016-09-06 2:17 PM, Clark, Mark A wrote:
>> Did a complete clone / checkout of krogoth this morning.  Same
>> results.   Can't get a core-image-rt build of the latest poky.
>
> I'll fire off a build for this on Wednesday. As I mentioned, I've=20
> fixed this in other branches, and this is very likely the same thing.
>
> I've just been chasing 4.8 issues and haven't had a chance to look at=20
> it yet.

I ran a build on this, and it was what I thought it was .. but the fix turn=
ed out to be a bit more than I expected.

See my three top commits on:=20
https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__git.yoctoproject.org_=
cgit_cgit.cgi_poky-2Dcontrib_log_-3Fh-3Dzedd_krogoth&d=3DDQID-g&c=3DoTZJxWj=
XA97U5efbDJZGEg&r=3DuNDdMisgO1TeK0HLqspkDVxt_f3Oh6mt6bTm6TDLFdI&m=3D6UP3os7=
LX1Y6v9UJGudCylIu64xaoYhA3sP1hYffqtU&s=3D2THqA97FSJcHRKqubrKvSKCINQGBQy9bPS=
bIW9MdMAA&e=3D=20

The first two commits, I'll send for merging into krogoth, the top one labe=
lled "scratch", is to illustrate what you need to add to have a valid BSP d=
efinition for genericx86 on preempt-rt.

The summary of the fix is:

  - CONFIG_64BIT wasn't being turned off
  - It wasn't being turned off since there wasn't a BSP definition
    for genericx86 on preempt-rt, hence common-pc wasn't being
    used as the base. My 3rd patch defines it.
  - You weren't warned of this auto generated BSP, due to some variables
    not being expanded in the kconf check routine (which is my 2nd patch)
  - The meta data is slightly out of date on krogoth for 4.4, so I bumped
    the SRCREV for it (my first patch).

If you try the branch that I pointed to above, it should work. I'll wait to=
 hear about the QA check passing for you before sending those updates for m=
erging.

Cheers,

Bruce

>
> Bruce
>
>>
>>
>>
>> yocto@yocto-HP-Pavilion-dv7-Notebook-PC:~/poky/build$ bitbake=20
>> core-image-rt
>>
>> Parsing recipes: 100%
>> |####################################################################
>> |################|
>>
>> Time: 00:00:23
>>
>> Parsing of 871 .bb files complete (0 cached, 871 parsed). 1301=20
>> targets,
>> 46 skipped, 0 masked, 0 errors.
>>
>> NOTE: Resolving any missing task queue dependencies
>>
>>
>>
>> Build Configuration:
>>
>> BB_VERSION        =3D "1.30.0"
>>
>> BUILD_SYS         =3D "x86_64-linux"
>>
>> NATIVELSBSTRING   =3D "Ubuntu-14.04"
>>
>> TARGET_SYS        =3D "i686-poky-linux"
>>
>> MACHINE           =3D "genericx86"
>>
>> DISTRO            =3D "poky"
>>
>> DISTRO_VERSION    =3D "2.1.1"
>>
>> TUNE_FEATURES     =3D "m32 core2"
>>
>> TARGET_FPU        =3D ""
>>
>> meta
>>
>> meta-poky
>>
>> meta-yocto-bsp    =3D "krogoth:aad7166704021d82ad3a5ec468552f8f10360d41"
>>
>>
>>
>> NOTE: Fetching uninative binary shim from=20
>> https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__downloads.yoctopr
>> oject.org_releases_uninative_1.0.1_x86-5F64-2Dnativesdk-2Dlibc.tar.bz
>> 2-3Bsha256sum-3Dacf1e44a0ac2e855e81da6426197d36358bf7b4e88e552ef93312
>> 8498c8910f8&d=3DDQID-g&c=3DoTZJxWjXA97U5efbDJZGEg&r=3DuNDdMisgO1TeK0HLqs=
pkD
>> Vxt_f3Oh6mt6bTm6TDLFdI&m=3D6UP3os7LX1Y6v9UJGudCylIu64xaoYhA3sP1hYffqtU&
>> s=3Dmg72lVCqjed0lDCOv8Tv3H5fgUADu6lNXQVdtknizVY&e=3D
>>
>>
>> NOTE: Preparing RunQueue
>>
>> NOTE: Executing SetScene Tasks
>>
>> NOTE: Executing RunQueue Tasks
>>
>> WARNING: quilt-native-0.64-r0 do_fetch: Failed to fetch URL=20
>> https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__download.savannah
>> .gnu.org_releases_quilt_quilt-2D0.64.tar.gz&d=3DDQID-g&c=3DoTZJxWjXA97U5=
e
>> fbDJZGEg&r=3DuNDdMisgO1TeK0HLqspkDVxt_f3Oh6mt6bTm6TDLFdI&m=3D6UP3os7LX1Y=
6
>> v9UJGudCylIu64xaoYhA3sP1hYffqtU&s=3DLz2D8S6v5drtWfGA58ZkF_sZ8rjGoQ3iUMy
>> SNz63pJE&e=3D , attempting MIRRORS if available
>>
>> WARNING: attr-native-2.4.47-r0 do_fetch: Failed to fetch URL=20
>> https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__download.savannah
>> .gnu.org_releases_attr_attr-2D2.4.47.src.tar.gz&d=3DDQID-g&c=3DoTZJxWjXA=
9
>> 7U5efbDJZGEg&r=3DuNDdMisgO1TeK0HLqspkDVxt_f3Oh6mt6bTm6TDLFdI&m=3D6UP3os7=
L
>> X1Y6v9UJGudCylIu64xaoYhA3sP1hYffqtU&s=3D62NaoIFTQ2cktWY90O2dRIPoTkdNMnw
>> QIKZI9rBLglg&e=3D , attempting MIRRORS if available
>>
>> WARNING: acl-native-2.2.52-r0 do_fetch: Failed to fetch URL=20
>> https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__download.savannah
>> .gnu.org_releases_acl_acl-2D2.2.52.src.tar.gz&d=3DDQID-g&c=3DoTZJxWjXA97=
U
>> 5efbDJZGEg&r=3DuNDdMisgO1TeK0HLqspkDVxt_f3Oh6mt6bTm6TDLFdI&m=3D6UP3os7LX=
1
>> Y6v9UJGudCylIu64xaoYhA3sP1hYffqtU&s=3DsplKMGr8gm-vel6D_BRpHIyLhUvD5oj-n
>> WppPsKq-YY&e=3D , attempting MIRRORS if available
>>
>> ERROR: linux-yocto-rt-4.4.11+gitAUTOINC+6ec93aaa70_bf2fbe7f2c-r0
>> do_package_qa: QA Issue: Architecture did not match (3 to 62) on=20
>> work/genericx86-poky-linux/linux-yocto-rt/4.4.11+gitAUTOINC+6ec93aaa7
>> 0_bf2fbe7f2c-r0/packages-split/kernel-vmlinux/boot/vmlinux-4.4.11-rt3
>> -yocto-preempt-rt
>>
>> [arch]
>>
>> ERROR: linux-yocto-rt-4.4.11+gitAUTOINC+6ec93aaa70_bf2fbe7f2c-r0
>> do_package_qa: QA run found fatal errors. Please consider fixing them.
>>
>> ERROR: linux-yocto-rt-4.4.11+gitAUTOINC+6ec93aaa70_bf2fbe7f2c-r0
>> do_package_qa: Function failed: do_package_qa
>>
>> ERROR: Logfile of failure stored in:
>> /home/yocto/poky/build/tmp/work/genericx86-poky-linux/linux-yocto-rt/
>> 4.4.11+gitAUTOINC+6ec93aaa70_bf2fbe7f2c-r0/temp/log.do_package_qa.244
>> 6
>>
>>
>> ERROR: Task 61
>> (/home/yocto/poky/meta/recipes-kernel/linux/linux-yocto-rt_4.4.bb,
>> do_package_qa) failed with exit code '1'
>>
>> NOTE: Tasks Summary: Attempted 1552 tasks of which 14 didn't need to=20
>> be rerun and 1 failed.
>>
>> Waiting for 0 running tasks to finish:
>>
>>
>>
>> Summary: 1 task failed:
>>
>>   /home/yocto/poky/meta/recipes-kernel/linux/linux-yocto-rt_4.4.bb,
>> do_package_qa
>>
>> Summary: There were 3 WARNING messages shown.
>>
>> Summary: There were 3 ERROR messages shown, returning a non-zero exit=20
>> code.
>>
>> yocto@yocto-HP-Pavilion-dv7-Notebook-PC:~/poky/build$
>>
>>
>>
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>
>>
>>
>> Changes from local.conf
>>
>>
>>
>> yocto@yocto-HP-Pavilion-dv7-Notebook-PC:~/poky/build/conf$ diff=20
>> local.conf local.conf.org
>>
>> 32c32
>>
>> < MACHINE ?=3D "genericx86"
>>
>> ---
>>
>>> #MACHINE ?=3D "genericx86"
>>
>> 117c117
>>
>> < SDKMACHINE ?=3D "i686"
>>
>> ---
>>
>>> #SDKMACHINE ?=3D "i686"
>>
>> 239,240d238
>>
>> < PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-rt"
>>
>> < COMPATIBLE_MACHINE_genericx86 =3D "genericx86"
>>
>> yocto@yocto-HP-Pavilion-dv7-Notebook-PC:~/poky/build/conf$
>>
>>
>>
>>
>>
>>
>>
>> *Mark Clark*
>>
>> Embedded Software Engineer
>>
>> Embedded Software, Cedar Park, TX
>>
>> Description: Description: Description: Description: National Oilwell=20
>> Varco Logo Color CMYK.jpg
>>
>>  Wellbore Technologies - Dynamic Drilling Solutions
>>
>> Global Software Engineering
>>
>> Office: (512) 340-5435
>>
>> Mobile: (512) 736-9396
>>
>> /"One Team - Infinite Solutions"/
>>
>>
>>
>>
>>
>


