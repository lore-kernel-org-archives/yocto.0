Return-Path: <Mark.Clark2@nov.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42C58E0074B; Thu,  8 Sep 2016 11:05:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.42 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0042.outbound.protection.outlook.com [104.47.41.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A56CDE0070F
	for <yocto@yoctoproject.org>; Thu,  8 Sep 2016 11:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nov.onmicrosoft.com;
	s=selector1-nov-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=IzJUUrA1KhLQlinQQokvn4glIF/5uHTF5lZWzb8akLI=;
	b=DnLHZulQac10e17G72NcXvFyZ0QmqmMSdYhIp2rfCRfYftUPxhHSPTie2ITvKfSye1xcbAOO2GIIk3atKsXllVH9VWXBNTMbfawBeoPf2JQDI7cPkGySKITSFp3XNKRnkOq7GBTyZaQCXq/ETSF8w+0lx55ncZFIUn8fDVmecOs=
Received: from BY1PR15MB0038.namprd15.prod.outlook.com (10.161.96.28) by
	BY1PR15MB0037.namprd15.prod.outlook.com (10.161.96.27) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.1.609.9; Thu, 8 Sep 2016 17:49:56 +0000
Received: from BY1PR15MB0038.namprd15.prod.outlook.com ([10.161.96.28]) by
	BY1PR15MB0038.namprd15.prod.outlook.com ([10.161.96.28]) with mapi id
	15.01.0609.016; Thu, 8 Sep 2016 17:49:56 +0000
From: "Clark, Mark A" <Mark.Clark2@nov.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [EXTERNAL] Re: [yocto] Update on issue witn do_package_qa
Thread-Index: AdIIaqw+cBpGebyISeqXZhKlysLcggANhNiAAC8vLoAAJp3fkAAAIpQAAAAofzA=
Date: Thu, 8 Sep 2016 17:49:56 +0000
Message-ID: <BY1PR15MB0038C98EDE3E6AA9EE51158BBCFB0@BY1PR15MB0038.namprd15.prod.outlook.com>
References: <BY1PR15MB0038C23C62995E16B5C66E2EBCF90@BY1PR15MB0038.namprd15.prod.outlook.com>
	<7697eebf-7ade-cc6f-1ec7-cfb47dc34b32@windriver.com>
	<6668b4da-0fcb-a22a-f1ae-6603b33265c7@windriver.com>
	<BY1PR15MB0038580C1E613BA5102B94BCBCFB0@BY1PR15MB0038.namprd15.prod.outlook.com>
	<344110ea-5f91-fff2-cc91-d1110618eb24@windriver.com>
In-Reply-To: <344110ea-5f91-fff2-cc91-d1110618eb24@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Mark.Clark2@nov.com; 
x-originating-ip: [208.92.228.62]
x-ms-office365-filtering-correlation-id: a859414f-8713-442e-3efd-08d3d8108ba8
x-microsoft-exchange-diagnostics: 1; BY1PR15MB0037;
	6:QdG1OLL1CNxLN8Hc15SJk2WSGtejm4vbmGSiWzfpF5vfnipXpkpyFXiA0IG1KaHxyCjily3h6/xfFXTQBbnfUxE/3tUe0tw3q/rLW5NT/J15uMpsZa8lb+nZKOH2NfBMyqJw2NjtKnMWHaV/S4xECzi4Hz/6k9JJSFdEI0fZqTpbIbdtakFxbu6AYPhWQqh5wA9cYx1YsA7q+xHfoqav1cAMvK/E80wcJGCls67DGvkFNx+0pZCsQbDBacyXfC4gIwufMqghDRGpjb3M9D9MtuPaEmx7mrGbe7m5vdtCmy9p0p4mLKz7INgypDZ9Rzta;
	5:oR115RzbV8VCsF80uAeFNuDu3ItMDJS/p2c4UMtMyKMaFlBvzABdREnnfguz3zF1FoWbLqEDjCqnlAC1U+MpgaNXiTeqxcaJI9hdZSOUQZqnOSLwxkbSlDukHhrzB5MQysmHOtx4RYJXs++M3uRZOQ==;
	24:rY2CoQ4bZwlm10zBp1tqEOgH+RJgJMy7VErEylIJJgAEwy7nPXcSZpfkrkSsJW1+uy84OgSwUB+xg6v3D8r2EicnHb25iJeRptJXZIFBXXk=;
	7:zRxET9yMVRu4xL9I/Xac1OSRHug7URsZjSSzs0vT4TabuY35YT2m5QFb6TsYQST7b8JU3tkI4jRhbJfLaGIOgb5htCYOYt/Je3OyK+DbXen2FrYITr8OZNonNPjHML+9Rhjsbrr6I9zCG5eLJcabNfuNGn/YphZtrRvuIuhh3pOp8msI70v6huly6FHxu/kBvAH4ZDR+xEuHbGDIbEN4Y6dKGGry3qIHxLweIT87T1ue6JXpMArbIIcJ1soCHgJ9
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY1PR15MB0037;
x-microsoft-antispam-prvs: <BY1PR15MB00375BF123A6741D512136EDBCFB0@BY1PR15MB0037.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(10436049006162)(22074186197030)(206917828481874); 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(102415321)(6040176)(601004)(2401047)(8121501046)(5005006)(3002001)(10201501046)(6043046)(6042046);
	SRVR:BY1PR15MB0037; BCL:0; PCL:0; RULEID:; SRVR:BY1PR15MB0037; 
x-forefront-prvs: 00594E8DBA
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(13464003)(189002)(50944005)(377454003)(377424004)(24454002)(199003)(81166006)(99286002)(54356999)(7736002)(305945005)(10400500002)(189998001)(7696003)(5002640100001)(7846002)(50986999)(93886004)(2900100001)(2950100001)(76576001)(15975445007)(87936001)(76176999)(77096005)(99936001)(33656002)(8936002)(66066001)(101416001)(92566002)(6116002)(5001770100001)(3280700002)(586003)(2906002)(102836003)(575784001)(9686002)(3660700001)(5660300001)(8676002)(15650500001)(3846002)(97736004)(107886002)(81156014)(19580395003)(106356001)(122556002)(11100500001)(2501003)(19580405001)(68736007)(74316002)(86362001)(105586002)(19627235001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BY1PR15MB0037;
	H:BY1PR15MB0038.namprd15.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: nov.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nov.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2016 17:49:56.2286 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ebe82bb-f23f-4bb6-b7d0-b038c066ad05
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR15MB0037
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
X-List-Received-Date: Thu, 08 Sep 2016 18:05:53 -0000
X-Groupsio-MsgNum: 31836
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_BY1PR15MB0038C98EDE3E6AA9EE51158BBCFB0BY1PR15MB0038namp_"

--_002_BY1PR15MB0038C98EDE3E6AA9EE51158BBCFB0BY1PR15MB0038namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

This one?



-----Original Message-----
From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]=20
Sent: Thursday, September 08, 2016 12:43 PM
To: Clark, Mark A <Mark.Clark2@nov.com>; yocto@yoctoproject.org
Subject: Re: [EXTERNAL] Re: [yocto] Update on issue witn do_package_qa

On 2016-09-08 01:41 PM, Clark, Mark A wrote:
> Better but I'm still running into issues:  See below...

This still isn't using the BSP description that I mentioned in the series I=
 sent.

With this:

  WARNING: linux-yocto-rt-4.4.11+gitAUTOINC+59290c5f61_bf2fbe7f2c-r0
do_kernel_configcheck: [kernel]: An auto generated BSP description was used=
, this normally indicates a misconfiguration.
  Check that your machine (${MACHINE}) has an associated kernel description=
.

You'll never get the right word size architecture. So unless I can see the =
bbappend and layer that you are using to define the BSP, all I can say is t=
hat it did build and boot for me, with what I sent.

Bruce

>
> yocto@yocto-HP-Pavilion-dv7-Notebook-PC:~/poky-contrib-1a167ae1d023bfb
> 27eee741a9ee6765f9ea732b7/build$ bitbake core-image-rt Parsing=20
> recipes: 100% |##########################################################=
###########################################| Time: 00:00:15 Parsing of 871 =
.bb files complete (0 cached, 871 parsed). 1301 targets, 46 skipped, 0 mask=
ed, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION        =3D "1.30.0"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "universal"
> TARGET_SYS        =3D "i686-poky-linux"
> MACHINE           =3D "genericx86"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "2.1.1"
> TUNE_FEATURES     =3D "m32 core2"
> TARGET_FPU        =3D ""
> meta
> meta-poky
> meta-yocto-bsp    =3D "<unknown>:<unknown>"
>
> NOTE: Preparing RunQueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> WARNING: linux-yocto-rt-4.4.11+gitAUTOINC+59290c5f61_bf2fbe7f2c-r0 do_ker=
nel_configcheck: [kernel]: An auto generated BSP description was used, this=
 normally indicates a misconfiguration.
> Check that your machine (${MACHINE}) has an associated kernel description=
.
> ERROR: linux-yocto-rt-4.4.11+gitAUTOINC+59290c5f61_bf2fbe7f2c-r0=20
> do_package_qa: QA Issue: Architecture did not match (3 to 62) on=20
> work/genericx86-poky-linux/linux-yocto-rt/4.4.11+gitAUTOINC+59290c5f61
> _bf2fbe7f2c-r0/packages-split/kernel-vmlinux/boot/vmlinux-4.4.11-rt3-y
> octo-preempt-rt [arch]
> ERROR: linux-yocto-rt-4.4.11+gitAUTOINC+59290c5f61_bf2fbe7f2c-r0 do_packa=
ge_qa: QA run found fatal errors. Please consider fixing them.
> ERROR: linux-yocto-rt-4.4.11+gitAUTOINC+59290c5f61_bf2fbe7f2c-r0=20
> do_package_qa: Function failed: do_package_qa
> ERROR: Logfile of failure stored in:=20
> /home/yocto/poky-contrib-1a167ae1d023bfb27eee741a9ee6765f9ea732b7/buil
> d/tmp/work/genericx86-poky-linux/linux-yocto-rt/4.4.11+gitAUTOINC+5929
> 0c5f61_bf2fbe7f2c-r0/temp/log.do_package_qa.28889
> ERROR: Task 61 (/home/yocto/poky-contrib-1a167ae1d023bfb27eee741a9ee6765f=
9ea732b7/meta/recipes-kernel/linux/linux-yocto-rt_4.4.bb, do_package_qa) fa=
iled with exit code '1'
> NOTE: Tasks Summary: Attempted 1553 tasks of which 900 didn't need to be =
rerun and 1 failed.
> Waiting for 0 running tasks to finish:
>
> Summary: 1 task failed:
>  =20
> /home/yocto/poky-contrib-1a167ae1d023bfb27eee741a9ee6765f9ea732b7/meta
> /recipes-kernel/linux/linux-yocto-rt_4.4.bb, do_package_qa
> Summary: There was 1 WARNING message shown.
> Summary: There were 3 ERROR messages shown, returning a non-zero exit cod=
e.
>
> -----Original Message-----
> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> Sent: Wednesday, September 07, 2016 6:14 PM
> To: Clark, Mark A <Mark.Clark2@nov.com>; yocto@yoctoproject.org
> Subject: [EXTERNAL] Re: [yocto] Update on issue witn do_package_qa
>
> On 2016-09-06 8:42 PM, Bruce Ashfield wrote:
>> On 2016-09-06 2:17 PM, Clark, Mark A wrote:
>>> Did a complete clone / checkout of krogoth this morning.  Same
>>> results.   Can't get a core-image-rt build of the latest poky.
>>
>> I'll fire off a build for this on Wednesday. As I mentioned, I've=20
>> fixed this in other branches, and this is very likely the same thing.
>>
>> I've just been chasing 4.8 issues and haven't had a chance to look at=20
>> it yet.
>
> I ran a build on this, and it was what I thought it was .. but the fix tu=
rned out to be a bit more than I expected.
>
> See my three top commits on:
> https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__git.yoctoproject.o
> rg_cgit_cgit.cgi_poky-2Dcontrib_log_-3Fh-3Dzedd_krogoth&d=3DDQID-g&c=3DoT=
Z
> JxWjXA97U5efbDJZGEg&r=3DuNDdMisgO1TeK0HLqspkDVxt_f3Oh6mt6bTm6TDLFdI&m=3D6=
U
> P3os7LX1Y6v9UJGudCylIu64xaoYhA3sP1hYffqtU&s=3D2THqA97FSJcHRKqubrKvSKCINQ
> GBQy9bPSbIW9MdMAA&e=3D
>
> The first two commits, I'll send for merging into krogoth, the top one la=
belled "scratch", is to illustrate what you need to add to have a valid BSP=
 definition for genericx86 on preempt-rt.
>
> The summary of the fix is:
>
>   - CONFIG_64BIT wasn't being turned off
>   - It wasn't being turned off since there wasn't a BSP definition
>     for genericx86 on preempt-rt, hence common-pc wasn't being
>     used as the base. My 3rd patch defines it.
>   - You weren't warned of this auto generated BSP, due to some variables
>     not being expanded in the kconf check routine (which is my 2nd patch)
>   - The meta data is slightly out of date on krogoth for 4.4, so I bumped
>     the SRCREV for it (my first patch).
>
> If you try the branch that I pointed to above, it should work. I'll wait =
to hear about the QA check passing for you before sending those updates for=
 merging.
>
> Cheers,
>
> Bruce
>
>>
>> Bruce
>>
>>>
>>>
>>>
>>> yocto@yocto-HP-Pavilion-dv7-Notebook-PC:~/poky/build$ bitbake=20
>>> core-image-rt
>>>
>>> Parsing recipes: 100%
>>> |###################################################################
>>> |#
>>> |################|
>>>
>>> Time: 00:00:23
>>>
>>> Parsing of 871 .bb files complete (0 cached, 871 parsed). 1301=20
>>> targets,
>>> 46 skipped, 0 masked, 0 errors.
>>>
>>> NOTE: Resolving any missing task queue dependencies
>>>
>>>
>>>
>>> Build Configuration:
>>>
>>> BB_VERSION        =3D "1.30.0"
>>>
>>> BUILD_SYS         =3D "x86_64-linux"
>>>
>>> NATIVELSBSTRING   =3D "Ubuntu-14.04"
>>>
>>> TARGET_SYS        =3D "i686-poky-linux"
>>>
>>> MACHINE           =3D "genericx86"
>>>
>>> DISTRO            =3D "poky"
>>>
>>> DISTRO_VERSION    =3D "2.1.1"
>>>
>>> TUNE_FEATURES     =3D "m32 core2"
>>>
>>> TARGET_FPU        =3D ""
>>>
>>> meta
>>>
>>> meta-poky
>>>
>>> meta-yocto-bsp    =3D "krogoth:aad7166704021d82ad3a5ec468552f8f10360d41=
"
>>>
>>>
>>>
>>> NOTE: Fetching uninative binary shim from=20
>>> https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__downloads.yoctop
>>> r=20
>>> oject.org_releases_uninative_1.0.1_x86-5F64-2Dnativesdk-2Dlibc.tar.b
>>> z
>>> 2-3Bsha256sum-3Dacf1e44a0ac2e855e81da6426197d36358bf7b4e88e552ef9331
>>> 2=20
>>> 8498c8910f8&d=3DDQID-g&c=3DoTZJxWjXA97U5efbDJZGEg&r=3DuNDdMisgO1TeK0HLq=
spk
>>> D=20
>>> Vxt_f3Oh6mt6bTm6TDLFdI&m=3D6UP3os7LX1Y6v9UJGudCylIu64xaoYhA3sP1hYffqtU
>>> & s=3Dmg72lVCqjed0lDCOv8Tv3H5fgUADu6lNXQVdtknizVY&e=3D
>>>
>>>
>>> NOTE: Preparing RunQueue
>>>
>>> NOTE: Executing SetScene Tasks
>>>
>>> NOTE: Executing RunQueue Tasks
>>>
>>> WARNING: quilt-native-0.64-r0 do_fetch: Failed to fetch URL=20
>>> https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__download.savanna
>>> h=20
>>> .gnu.org_releases_quilt_quilt-2D0.64.tar.gz&d=3DDQID-g&c=3DoTZJxWjXA97U=
5
>>> e
>>> fbDJZGEg&r=3DuNDdMisgO1TeK0HLqspkDVxt_f3Oh6mt6bTm6TDLFdI&m=3D6UP3os7LX1=
Y
>>> 6=20
>>> v9UJGudCylIu64xaoYhA3sP1hYffqtU&s=3DLz2D8S6v5drtWfGA58ZkF_sZ8rjGoQ3iUM
>>> y SNz63pJE&e=3D , attempting MIRRORS if available
>>>
>>> WARNING: attr-native-2.4.47-r0 do_fetch: Failed to fetch URL=20
>>> https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__download.savanna
>>> h
>>> .gnu.org_releases_attr_attr-2D2.4.47.src.tar.gz&d=3DDQID-g&c=3DoTZJxWjX=
A
>>> 9=20
>>> 7U5efbDJZGEg&r=3DuNDdMisgO1TeK0HLqspkDVxt_f3Oh6mt6bTm6TDLFdI&m=3D6UP3os=
7
>>> L=20
>>> X1Y6v9UJGudCylIu64xaoYhA3sP1hYffqtU&s=3D62NaoIFTQ2cktWY90O2dRIPoTkdNMn
>>> w QIKZI9rBLglg&e=3D , attempting MIRRORS if available
>>>
>>> WARNING: acl-native-2.2.52-r0 do_fetch: Failed to fetch URL=20
>>> https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__download.savanna
>>> h=20
>>> .gnu.org_releases_acl_acl-2D2.2.52.src.tar.gz&d=3DDQID-g&c=3DoTZJxWjXA9=
7
>>> U
>>> 5efbDJZGEg&r=3DuNDdMisgO1TeK0HLqspkDVxt_f3Oh6mt6bTm6TDLFdI&m=3D6UP3os7L=
X
>>> 1=20
>>> Y6v9UJGudCylIu64xaoYhA3sP1hYffqtU&s=3DsplKMGr8gm-vel6D_BRpHIyLhUvD5oj-
>>> n WppPsKq-YY&e=3D , attempting MIRRORS if available
>>>
>>> ERROR: linux-yocto-rt-4.4.11+gitAUTOINC+6ec93aaa70_bf2fbe7f2c-r0
>>> do_package_qa: QA Issue: Architecture did not match (3 to 62) on
>>> work/genericx86-poky-linux/linux-yocto-rt/4.4.11+gitAUTOINC+6ec93aaa
>>> 7
>>> 0_bf2fbe7f2c-r0/packages-split/kernel-vmlinux/boot/vmlinux-4.4.11-rt
>>> 3
>>> -yocto-preempt-rt
>>>
>>> [arch]
>>>
>>> ERROR: linux-yocto-rt-4.4.11+gitAUTOINC+6ec93aaa70_bf2fbe7f2c-r0
>>> do_package_qa: QA run found fatal errors. Please consider fixing them.
>>>
>>> ERROR: linux-yocto-rt-4.4.11+gitAUTOINC+6ec93aaa70_bf2fbe7f2c-r0
>>> do_package_qa: Function failed: do_package_qa
>>>
>>> ERROR: Logfile of failure stored in:
>>> /home/yocto/poky/build/tmp/work/genericx86-poky-linux/linux-yocto-rt
>>> /
>>> 4.4.11+gitAUTOINC+6ec93aaa70_bf2fbe7f2c-r0/temp/log.do_package_qa.24
>>> 4
>>> 6
>>>
>>>
>>> ERROR: Task 61
>>> (/home/yocto/poky/meta/recipes-kernel/linux/linux-yocto-rt_4.4.bb,
>>> do_package_qa) failed with exit code '1'
>>>
>>> NOTE: Tasks Summary: Attempted 1552 tasks of which 14 didn't need to=20
>>> be rerun and 1 failed.
>>>
>>> Waiting for 0 running tasks to finish:
>>>
>>>
>>>
>>> Summary: 1 task failed:
>>>
>>>   /home/yocto/poky/meta/recipes-kernel/linux/linux-yocto-rt_4.4.bb,
>>> do_package_qa
>>>
>>> Summary: There were 3 WARNING messages shown.
>>>
>>> Summary: There were 3 ERROR messages shown, returning a non-zero=20
>>> exit code.
>>>
>>> yocto@yocto-HP-Pavilion-dv7-Notebook-PC:~/poky/build$
>>>
>>>
>>>
>>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>>
>>>
>>>
>>> Changes from local.conf
>>>
>>>
>>>
>>> yocto@yocto-HP-Pavilion-dv7-Notebook-PC:~/poky/build/conf$ diff=20
>>> local.conf local.conf.org
>>>
>>> 32c32
>>>
>>> < MACHINE ?=3D "genericx86"
>>>
>>> ---
>>>
>>>> #MACHINE ?=3D "genericx86"
>>>
>>> 117c117
>>>
>>> < SDKMACHINE ?=3D "i686"
>>>
>>> ---
>>>
>>>> #SDKMACHINE ?=3D "i686"
>>>
>>> 239,240d238
>>>
>>> < PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-rt"
>>>
>>> < COMPATIBLE_MACHINE_genericx86 =3D "genericx86"
>>>
>>> yocto@yocto-HP-Pavilion-dv7-Notebook-PC:~/poky/build/conf$
>>>
>>>
>>>
>>>
>>>
>>>
>>>
>>> *Mark Clark*
>>>
>>> Embedded Software Engineer
>>>
>>> Embedded Software, Cedar Park, TX
>>>
>>> Description: Description: Description: Description: National Oilwell=20
>>> Varco Logo Color CMYK.jpg
>>>
>>>  Wellbore Technologies - Dynamic Drilling Solutions
>>>
>>> Global Software Engineering
>>>
>>> Office: (512) 340-5435
>>>
>>> Mobile: (512) 736-9396
>>>
>>> /"One Team - Infinite Solutions"/
>>>
>>>
>>>
>>>
>>>
>>
>


--_002_BY1PR15MB0038C98EDE3E6AA9EE51158BBCFB0BY1PR15MB0038namp_
Content-Type: application/octet-stream; name="linux-yocto_4.4.bbappend"
Content-Description: linux-yocto_4.4.bbappend
Content-Disposition: attachment; filename="linux-yocto_4.4.bbappend";
	size=1076; creation-date="Thu, 08 Sep 2016 17:49:25 GMT";
	modification-date="Thu, 08 Sep 2016 17:49:24 GMT"
Content-Transfer-Encoding: base64

S0JSQU5DSF9nZW5lcmljeDg2ICA9ICJzdGFuZGFyZC9iYXNlIgpLQlJBTkNIX2dlbmVyaWN4ODYt
NjQgID0gInN0YW5kYXJkL2Jhc2UiCgpLTUFDSElORV9nZW5lcmljeDg2ID89ICJjb21tb24tcGMi
CktNQUNISU5FX2dlbmVyaWN4ODYtNjQgPz0gImNvbW1vbi1wYy02NCIKS0JSQU5DSF9lZGdlcm91
dGVyID0gInN0YW5kYXJkL2VkZ2Vyb3V0ZXIiCktCUkFOQ0hfYmVhZ2xlYm9uZSA9ICJzdGFuZGFy
ZC9iZWFnbGVib25lIgpLQlJBTkNIX21wYzgzMTVlLXJkYiA9ICJzdGFuZGFyZC9mc2wtbXBjODMx
NWUtcmRiIgoKU1JDUkVWX21hY2hpbmVfZ2VuZXJpY3g4NiAgICA/PSAiM2QyNDU1ZjlkYTMwZjky
M2M2YmQ2OTAxNGZhZDRjYzRlYTczOGJlNiIKU1JDUkVWX21hY2hpbmVfZ2VuZXJpY3g4Ni02NCA/
PSAiM2QyNDU1ZjlkYTMwZjkyM2M2YmQ2OTAxNGZhZDRjYzRlYTczOGJlNiIKU1JDUkVWX21hY2hp
bmVfZWRnZXJvdXRlciA/PSAiZmY0YzRlZjE1YjUxZjQ1YjkxMDZkNzFiZjFmNjJmZTdjMDJlNjNj
MiIKU1JDUkVWX21hY2hpbmVfYmVhZ2xlYm9uZSA/PSAiZmY0YzRlZjE1YjUxZjQ1YjkxMDZkNzFi
ZjFmNjJmZTdjMDJlNjNjMiIKU1JDUkVWX21hY2hpbmVfbXBjODMxNWUtcmRiID89ICJkZjAwODc3
ZWY5Mzg3YjM4Yjk2MDFjODJkYjU3ZGUyYTFiMjNjZTUzIgoKQ09NUEFUSUJMRV9NQUNISU5FX2dl
bmVyaWN4ODYgPSAiZ2VuZXJpY3g4NiIKQ09NUEFUSUJMRV9NQUNISU5FX2dlbmVyaWN4ODYtNjQg
PSAiZ2VuZXJpY3g4Ni02NCIKQ09NUEFUSUJMRV9NQUNISU5FX2VkZ2Vyb3V0ZXIgPSAiZWRnZXJv
dXRlciIKQ09NUEFUSUJMRV9NQUNISU5FX2JlYWdsZWJvbmUgPSAiYmVhZ2xlYm9uZSIKQ09NUEFU
SUJMRV9NQUNISU5FX21wYzgzMTVlLXJkYiA9ICJtcGM4MzE1ZS1yZGIiCgpMSU5VWF9WRVJTSU9O
X2dlbmVyaWN4ODYgPSAiNC40LjMiCkxJTlVYX1ZFUlNJT05fZ2VuZXJpY3g4Ni02NCA9ICI0LjQu
MyIKCkZJTEVTRVhUUkFQQVRIU19wcmVwZW5kIDo9ICIke1RISVNESVJ9L2xpbnV4LXlvY3RvLTQu
NDoiClNSQ19VUkkgKz0gIiBmaWxlOi8vZ2VuZXJpY3g4Ni1wcmVlbXB0LXJ0LnNjYyI=

--_002_BY1PR15MB0038C98EDE3E6AA9EE51158BBCFB0BY1PR15MB0038namp_--
