Return-Path: <Brijeshkumar.Singh@amd.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09A72E00B36; Tue, 17 Nov 2015 14:52:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.100.85 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 961 seconds by postgrey-1.32 at yocto-www;
	Tue, 17 Nov 2015 14:51:59 PST
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0085.outbound.protection.outlook.com [207.46.100.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98FA7E00B23
	for <yocto@yoctoproject.org>; Tue, 17 Nov 2015 14:51:59 -0800 (PST)
Received: from BY2PR12CA0003.namprd12.prod.outlook.com (10.160.121.13) by
	BN4PR12MB0850.namprd12.prod.outlook.com (10.164.59.12) with Microsoft
	SMTP Server (TLS) id 15.1.325.17; Tue, 17 Nov 2015 22:35:55 +0000
Received: from BY2NAM03FT020.eop-NAM03.prod.protection.outlook.com
	(2a01:111:f400:7e4a::202) by BY2PR12CA0003.outlook.office365.com
	(2a01:111:e400:2c84::13) with Microsoft SMTP Server (TLS) id
	15.1.331.20 via Frontend Transport; Tue, 17 Nov 2015 22:35:56 +0000
Authentication-Results: spf=none (sender IP is 165.204.84.221)
	smtp.mailfrom=amd.com; yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=permerror action=none
	header.from=amd.com;
Received-SPF: None (protection.outlook.com: amd.com does not designate
	permitted sender hosts)
Received: from atltwp01.amd.com (165.204.84.221) by
	BY2NAM03FT020.mail.protection.outlook.com (10.152.84.224) with
	Microsoft SMTP Server id 15.1.331.11 via Frontend Transport;
	Tue, 17 Nov 2015 22:35:55 +0000
X-WSS-ID: 0NXZDFU-07-N6I-02
X-M-MSG: 
Received: from satlvexedge01.amd.com (satlvexedge01.amd.com [10.177.96.28])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by atltwp01.amd.com (Axway MailGate 5.3.1) with ESMTPS id 25636CAE811
	for <yocto@yoctoproject.org>; Tue, 17 Nov 2015 17:35:54 -0500 (EST)
Received: from SATLEXDAG01.amd.com (10.181.40.3) by satlvexedge01.amd.com
	(10.177.96.28) with Microsoft SMTP Server (TLS) id 14.3.195.1;
	Tue, 17 Nov 2015 16:35:56 -0600
Received: from [10.236.136.62] (10.180.168.240) by SATLEXDAG01.amd.com
	(10.181.40.3) with Microsoft SMTP Server (TLS) id 14.3.266.1;
	Tue, 17 Nov 2015 17:35:53 -0500
To: <yocto@yoctoproject.org>
From: Brijesh Singh <brijeshkumar.singh@amd.com>
Message-ID: <564BAB81.3060607@amd.com>
Date: Tue, 17 Nov 2015 16:34:41 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
X-Originating-IP: [10.180.168.240]
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:165.204.84.221; CTRY:US; IPV:NLI; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(6009001)(2980300002)(428002)(199003)(189002)(229853001)(2351001)(65816999)(83506001)(59896002)(86362001)(230700001)(19580395003)(110136002)(189998001)(92566002)(80316001)(50986999)(64126003)(50466002)(4001350100001)(54356999)(87266999)(101416001)(97736004)(450100001)(106466001)(105586002)(65956001)(65806001)(47776003)(87936001)(5008740100001)(36756003)(5004730100002)(23676002)(5007970100001)(586003)(77096005)(33656002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BN4PR12MB0850; H:atltwp01.amd.com;
	FPR:; SPF:None; PTR:InfoDomainNonexistent; A:1; MX:1; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BN4PR12MB0850;
	2:3RF4ugldPnmEXWUmv9MpuFpK0QV04XG3gfIrTX6aceBOoByeyvUJxHJqeo3Z7iF9jt0znXkyjzY0215aB5MV1Sk5BNi+q8ryPrDK+RGEVn9TggMIrmiIIMSiidfYZKF9jZ4fQgckRtge/7V5Z7+3pq7jYLRDdfk9q/lqwkp6WEc=;
	3:m1U+ZiRckoSVm0CYD/PLusvS4mIyN0O2lDsJxJYTb173uB/MqHd5ILRb4dK2DRGDup+COIa1BvtvzA2GQBGF0wKlmfqFaSHrRgy7Uf1j+cMitNiIc6zwJZgjM/jXK362Rp1wq7UCcv6plhF9f9b8H/jsVRqtL7i0KL3sozRQiFtHpiumBwTCKCwRrH7hUB/rfBTDgr3T94AcFcy43HlVFIvE6cXjT8bClxKcMxF9pGmT3TcubfzVu2zdbfjqHcse;
	25:Fd0+jjp6X7qy55xK28lwocciufhq7Eql3YebJl2Xbvv1x3lzEKMItfJuWOYZKT3SNBVJhIuYEWEI8stcSJv7bfXGpg/oNR4R3TkXUFJH/p+kj+EG/FqZXnkoqcR7RgbU0GsxiwyAVCngMwrdMqY8VdRotKMjN6CaxZXj2doUjAgk6dKzRT3EL2U6p3QZ2yTtCk8yKs1q1Y0qjikbL5EoE04/1FuHLk0fTO04KczHmMNlxxFcwuMdn6s24Q0EC7+A
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN4PR12MB0850;
X-Microsoft-Exchange-Diagnostics: 1; BN4PR12MB0850;
	20:ihfjO58IWKvPC1jNfr1Xj38/7++ZYOUxw3ljbwRBG0/3jisfEQvFgXtYgRzkCYLyarIjh6RVr5EQtE6cDi6M6mh/vkoWCP9l1p2EqBqdU5LIQ5Ir61d1YfDc7tc8UP80MQuFJf6xx69TEzRUAbR+iWyqQD/hBCCWbXMgf/qyTTNjIv+IgnA8CrwR+P6p6jBImcYgy8b2bZiUFstQceReabw7QUVN7Gl4r2rD09MxOgzu0R1g/JY+eQsck/OUW4OHA5UBvE8w1S9Cm9cG0VWzsYM4raPEt7GxrW1J1C5e0FrfjXYwZk6cVEn+V5634RWfeYAksI1APKfSYhSpDx5jVQlFL3xYXRr7jFo1juPkdD1cfc9OTfuCccBGwBOuqOxHSTEqNCOQBABcbYZKi2PxeSCBv0kf+p0NOCkCimiF5omjfT2tCCsuHot1hqS/s6U6/j/ziOLdDz8QGoh+LSQVXp7L1TZdtJg6OJ5OktwiFs3Reh+e9ksPa+HaNOfLmzKD;
	4:Mk/rzoihdxCnEK9lwRrtMDe9PTrMP4Gjx68fGMZ9B1UPVYNqQqzfrk++GVfzN27PZNaANTEkLatskHcRxi+gTL8M4jQov4jpHzwwU1hBenml4Jc+0DCCkeMbKrAmc03M8OZrILsmqmt35Oomh2NXvoEeB2vfae5g2kgJxH9N2bQD/d1uiPEYQeTJA7UOTagPFsrQZGOBi/yGOGox5aw5BMGCtyArFPuJVl/8JDMlv7NJP1FAsWFdIcx05Zj2KaQ+1XUEIRRUU0TSajreJCLP58U1LwvKGLXSaFZWJXHhBcuOxZnWtORfg2xGj5J+HFB4d3Poh4Wl2mTq6nDAFLTSmdnLoHs0zbDDIrVkw0Shxouj7rVPud3BgePblpwGDDc4
X-Microsoft-Antispam-PRVS: <BN4PR12MB08509CE3E7A9F098E70AD206851D0@BN4PR12MB0850.namprd12.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(520078)(10201501046)(3002001);
	SRVR:BN4PR12MB0850; BCL:0; PCL:0; RULEID:; SRVR:BN4PR12MB0850; 
X-Forefront-PRVS: 07630F72AD
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtCTjRQUjEyTUIwODUwOzIzOlFHbzFnQktEcVh6T3RINGZ4Q1VJUUdjK0Zk?=
	=?utf-8?B?d1ZRb3JuNHRQcTlWaUpla05GZjZOSWx0cDFXL1VNbGJVSTV1bVo1SDlzQktt?=
	=?utf-8?B?KzdnRUpYQUd2MGxYK2xQaWVvRHlBbXM3cGZRQTJsRk5FL053RlJQaDBaTm1N?=
	=?utf-8?B?K3ZZRDBoeXkxcU9idEZuakx0ZkJkUmZoY0VSYTRDWjNzTGNzaXNjQVo0NW5N?=
	=?utf-8?B?ckNKakVvMEpnU05ueXpXcmpQc0UvRDB1WDlodmlORGRPcmR3bzc5RXV6YzJ1?=
	=?utf-8?B?MHQzdk8vT2lBM2treE1DVnZGVXhRNUVtcjQ5VlpZZU5oOTU1NnVYNk8vNmky?=
	=?utf-8?B?Q0FDQmltcnBIWDV3RDViRTRYUmw1STFQc2xGZEF4citGdWYwTndTcVRtRlcx?=
	=?utf-8?B?dTlya0RHaEJublFoRmZVblBvTW95cmJIbFdoTkxJS1EydkZtYklIajR3b3o3?=
	=?utf-8?B?OHJ1cWxXcy8vOWdOSjJXTnUzL3h0bVNBUVNiemtjdkd0SnRkTVp3c2s3OXE4?=
	=?utf-8?B?cGgvaGZZaGd2S0JIOWRVckkvdVZHTVdyRk13TUYvcWN0WkxZNmo5SDJnOU91?=
	=?utf-8?B?bmQzb1EwK0JqZmhLaHNTKzRiNTVSTUlXQ24zSVd2NlhSN1ZCS1hzenpIV2NQ?=
	=?utf-8?B?N0YzZ1VkUGxmY0xBYTAyTldOem1tZ2VvN2tUejE0SzNxS3JISzlyL20xMXky?=
	=?utf-8?B?QjdFNTVpaTVuMUxPZ00yL2drZE1iRWdGcFdCNlIyVW5kYWhnSDZZQlZ1UUU1?=
	=?utf-8?B?dUxFSDRoeVJ1dE9QMFEyL0ZqUjRybGZPbjV6Qjl2eExNMTdkcHhOMjVISmQz?=
	=?utf-8?B?M3dxeWszU1lRMnRFYVA2YWdnR3FIalhwbnJnTDRlc3Z0OHoyaktxMDd2Ti9H?=
	=?utf-8?B?ZVVUOFErWlB2czhpTmRZWVhtYnlWMjZYMU9uUTlkejlhdWxTTGFIUFhJWm5z?=
	=?utf-8?B?N0RCVXZpTlYrK1VsQ3oxTURMUTAwMS8zZ1E0V05kQ3pSamRIZmhiditwQUlm?=
	=?utf-8?B?T051bXV0ampnMmlZdUFsQklmazhtNlFhbkhEam1RNE9kTTV3RVdZMjBxYmhi?=
	=?utf-8?B?Qnd2RHNpWFhNMkE0OG1qaXh6WkVKcHZ5NWI1SlpncmxxR040UVIxazhxWVVO?=
	=?utf-8?B?YTFPUGlaT2lvQjV0cFRVVHI2YjhqQXRVZ3dQVlFvK1JxN1lUZjE5MitrelFi?=
	=?utf-8?B?THo4ZG1hL3E3akNIZGtWeTlCQm41bE5BMzlEQW1EVHNkSTdvWjVBd1pUdnhr?=
	=?utf-8?B?dGZGZll5ZG5vTkgyYUwwYjRXMWZtVUM1SXVDQ3dUYnlrWWhRZ3VqZlZvTTdh?=
	=?utf-8?B?MTJCRWRqTys4YW1sbWovRG5yU0pYZm5WdVlvM3BQZ0hkRHBiUFFjQmNtU0No?=
	=?utf-8?B?ODhPemE0cmNkNzFaV0hCeVkrTklxTFVuL0ZEcG9oYTRRQmtrWEhJUHpmdVNW?=
	=?utf-8?Q?Qv6cLE=3D?=
X-Microsoft-Exchange-Diagnostics: 1; BN4PR12MB0850;
	5:YTwjQWvU39Lx6oGtwn/4Nvs1yzO8RFgTGb5RAeYalV3MGGtJ2VKp7MsjvmLompH+SfW8CxfOUNBJL9TCXnY9gbN4SlYhNO2wb7qDkQ54VBt3LRuK9pzpuNdixvoVeCx+xj4qyz49bwupUP+tSTxYWw==;
	24:GqjQw28cPBlVXRMmvl/wVJZ5oePW/WqGj9Nkrz0ZW8LsYLtnqrJmDFwKIyQ2DmiRsb9ZhBpd0bbmBIx3pGA9TbD9rYMTgMoekn/WQIzQck8=;
	20:Ft7SDTpapogOkzgbOdFyIs9M3/SKSNQC/oFz/4lHO7F0iM3QvYJnE2pjL9SM+UhBCUOpjgd8vRJ4Obh6DQ68OGFB/S01HklnAvy01BzEBU4ZbK2xXnqOZoU50B0Ht8W6w99DmF1GizUsWsffCxD91nsVrD1WY0hatCXnPKE28/DMe1YEUBIWM0bM1sJqIKZ8FHTnJqu4R+ASwZD0bqshVZwG36hetbZRZxakA0VXZeGJ5pNHaQG4qeUTnG4nFHoI
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Nov 2015 22:35:55.4131 (UTC)
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3dd8961f-e488-4e60-8e11-a82d994e183d;
	Ip=[165.204.84.221]; Helo=[atltwp01.amd.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN4PR12MB0850
X-Mailman-Approved-At: Wed, 18 Nov 2015 07:44:22 -0800
Cc: brijeshkumar.singh@amd.com
Subject: Python build failed on x86-64
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
X-List-Received-Date: Tue, 17 Nov 2015 22:52:05 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

Hello,

Getting the following error when building the core-image-minimal for genericx86-64 on Ubuntu 14.04.03.

I did followed the yocoto quickstart guide for installation the Ubuntu dependent packages etc. The same error is seen on both master as well as jethro branch. Any tips on what I am missing, is this a knowing issue ? 

The error log:

| x86_64-poky-linux-ar rc libpython2.7.a Modules/threadmodule.o  Modules/signalmodule.o  Modules/posixmodule.o  Modules/errnomodule.o  Modules/pwdmodule.o  Modules/_sre.o  Modules/_codecsmodule.o  Modules/_weakref.o  Modules/zipimport.o  Modules/symtablemodule.o  Modules/md5module.o Modules/md5.o  Modules/xxsubtype.o
| x86_64-poky-linux-ranlib libpython2.7.a
| x86_64-poky-linux-gcc  -m64 -march=core2 -mtune=core2 -msse3 -mfpmath=sse --sysroot=/home/brijesh/poky/build/tmp/sysroots/genericx86-64 -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed -Xlinker -export-dynamic -o python \
|                       Modules/python.o \
|                       -L. -lpython2.7 -lpthread -ldl  -lpthread -lutil   -lm
| _PYTHON_PROJECT_BASE=/home/brijesh/poky/build/tmp/work/core2-64-poky-linux/python/2.7.9-r1/build _PYTHON_HOST_PLATFORM=linux2-x86_64 PYTHONPATH=/home/brijesh/poky/build/tmp/work/core2-64-poky-linux/python/2.7.9-r1/build/build/lib.linux2-x86_64-2.7:/home/brijesh/poky/build/tmp/work/core2-64-poky-linux/python/2.7.9-r1/Python-2.7.9/Lib:/home/brijesh/poky/build/tmp/work/core2-64-poky-linux/python/2.7.9-r1/Python-2.7.9/Lib/plat-linux2 python2.7 -S -m sysconfig --generate-posix-vars ;\
|       if test $? -ne 0 ; then \
|               echo "generate-posix-vars failed" ; \
|               rm -f ./pybuilddir.txt ; \
|               exit 1 ; \
|       fi
| Illegal instruction (core dumped)
| make: *** [sharedmods] Error 132
| WARNING: exit code 1 from a shell command.
| ERROR: oe_runmake failed
| ERROR: Function failed: do_install (log file is located at /home/brijesh/poky/build/tmp/work/core2-64-poky-linux/python/2.7.9-r1/temp/log.do_install.9970)
ERROR: Task 1260 (/home/brijesh/poky/meta/recipes-devtools/python/python_2.7.9.bb, do_install) failed with exit code '1'
NOTE: Tasks Summary: Attempted 1833 tasks of which 1066 didn't need to be rerun and 1 failed.
Waiting for 0 running tasks to finish:

Summary: 1 task failed:
  /home/brijesh/poky/meta/recipes-devtools/python/python_2.7.9.bb, do_install
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

-Brijesh 

