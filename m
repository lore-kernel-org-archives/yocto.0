Return-Path: <Manish.Jaggi@cavium.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1B30E00FB8; Thu, 28 Jul 2016 16:23:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.82 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 123882 seconds by postgrey-1.32 at yocto-www;
	Thu, 28 Jul 2016 16:23:47 PDT
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0082.outbound.protection.outlook.com [104.47.34.82])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8309FE00FB3
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2016 16:23:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=CAVIUMNETWORKS.onmicrosoft.com; s=selector1-cavium-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=vxqVUpfMO0ScnhW3Ggo9VyOKb3wjrxWR2j6nGLWw2TY=;
	b=iD65MkG7v8vTOkf+f2KZggWDzzxBkmz0Aj8sVybc5uiVSyNTLvsqFUbRGIrfO9nNwN09qnaKpXScEzoVG08m8bDBOErtrGZLh7LnpZiH8liVKldnts5g6AGjV/ufXEbaoMnJzy+cSAlOrPZuYqcaTE2kkhMGn8avySiwJGN4J3E=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=Manish.Jaggi@cavium.com; 
Received: from [192.168.46.178] (12.108.191.226) by
	BLUPR0701MB1586.namprd07.prod.outlook.com (10.163.84.148) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.549.15; Thu, 28 Jul 2016 22:52:11 +0000
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Manish Jaggi <mjaggi@caviumnetworks.com>
Message-ID: <579A8C93.2030603@caviumnetworks.com>
Date: Fri, 29 Jul 2016 04:22:03 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
X-Originating-IP: [12.108.191.226]
X-ClientProxiedBy: CY1PR13CA0078.namprd13.prod.outlook.com (10.163.230.174) To
	BLUPR0701MB1586.namprd07.prod.outlook.com (10.163.84.148)
X-MS-Office365-Filtering-Correlation-Id: 2bbad46f-76f5-40ed-0361-08d3b739d0c8
X-Microsoft-Exchange-Diagnostics: 1; BLUPR0701MB1586;
	2:C+fRcU21e+VZQKaK/z1VB5Otj/NDsNI0QXjmoQoH0YY5Jb0drUbjNaynIFSZNJwxdCFqGyynH4Rv+uI1EneoFhPNiR+txdowcGpYFtR4iueMiRMxK+AFTpvfkEovycWeFqjBLyFONPfzx4QGe7FJtRCzcQdfp4IFTkfWsCaDyUK4gEbfGOTEbWsAiR/CI1bu;
	3:W4F9HoE7I/MLzW2H6paFhTtWm7P4UMb53eYy8fkIYkrS4yBv4Nms8ZsV/Cozzk18CfxRsBOWf5yGKfU7svMuVtXrfclAu1JVCpo+QyOicjs3t/CNgyZy/0bFpx0OxtKY;
	25:FTTQMLx3R0b3AKdtTgLrRiXOuHKQxYxj738S7CueIitySQdGgJdfJELF5lc1sttdWbfgy2/zeuqiZ7IKcEgBLZYdSuGA2sRIbx77OymhH4T3uIK3o1DET94vRSNNpCU5M6Noa3rTuLyflJhOWga8zmhI96wLfEvVkBJtVl61clSi9LjXugG9KBfpyg+SGS4sUld/rCHnMUx1ApwJJd1TWceV3yhv89oQCjUutWQ8KzDAnhPg5FOE/DOWv3o0SbqLX1IJoTt0J3GiAMwTjw9J1bCdp7dYHEcsHqY7Akh+kPXhAupGx2BU6ly8aOyUHZrn5u2la89IDdwSBJuiDmSkDuOfFRd1sESqsZLby23u+t9d6rGcypjqDcGcG1teSTldDwJynh5iqcPOb/cf4RAq79ThHTexJ36DjYOa4Y7iJXM=
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BLUPR0701MB1586;
X-Microsoft-Exchange-Diagnostics: 1; BLUPR0701MB1586;
	31:CMCYYtlOK4ooKTRFTnH/slWmIen0EHOKyXsmehyX6Yj+uxWkw+4eW64snPolUNWBbIClee5nUAOJxznKZ8+DpnChEeoypvRQKUKRicsAXaEHjnUbe3KkMr1j/jhA/4Djx4eQwXPElbH7N6YSYjcC08gi9eQfuDJL9AKMohJ2fxa9u3HvGZWUJVrboyMK/AaFNdvc1HuDDuwyHFjOVkFgEg==;
	20:+Z4AT1fevrgu2Qa563pTV/NzOT0p8b5qVDXkdGhE6Bc6nt50of/icGyGVZwu8XJuXphwLPXMfT0DIWLTFMotuVvhx8JNQz3peMHeLRp+9SaoQKpzg/OscZAH/dAtZ/MZeM6aQoL2yjbIntgdc09LYnNAdQYqQ0LTcfNvYnnndAUzFd0Uc1y6IPETpnL1P+l/i/TbmDclO7WKHewqalHbg2RAO2dYJg5NccGmg5yQmNGO3Riu7rOysLBFJVK4Oold0IenHPLu4M+nh/ee8FwKiKwjzoMlvDiAxri4erghQTkqi7CE5+XQe/jCuJmD2A64tTTffW8SyKs6RzJewvSwdDlzClljLJ3mt9kjDRkkVSfH2KSAGdJQ19/JsTol4iC9q5pKWxzCOyR0PgcWFRmvDza57w1ZrZInMNu+njL3kACQQlf+Do/05AmSrmxtAqvz6o/2UhI68nc6cSrxa2f/lPAtSJOxJ+bAt4R+r1a0iE2+PzJQfiRTBvM4MznVT6rwzCX4ahyRVeN5VTi2xIzApGZWAatKpoC8fOeekfExyPqi4f4uYnGEcS6aCunNjKQY1ArB9uoP7mx0g1PEXRhGzJXH1rAzkAi5lS4DF1A+35M=
X-Microsoft-Antispam-PRVS: <BLUPR0701MB1586A2858E513BB0C9402F3EEC000@BLUPR0701MB1586.namprd07.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046);
	SRVR:BLUPR0701MB1586; BCL:0; PCL:0; RULEID:;
	SRVR:BLUPR0701MB1586; 
X-Microsoft-Exchange-Diagnostics: 1; BLUPR0701MB1586;
	4:XbwZO3+Btg7eJaG/M3xWtYMCL9LpjhFm3llExWar7oJ6nncLiUBlG0pGhxLBrwD9Q9xswRlhkhTzDHANOBpo46MrebodEbEwokb3E7ksavH6cqif6GjzxKqVrXio8KAi3yC6OxM+oUGwsK6tBR+2cxBP/Sbv3wHknwuecBtR+Ud7ph0KsgdS58qeu01dFBTcscr9zvKwPA0Wg+BikER+2K4H+i5UWym2pgYthISUI0GE3wB+GQ+JVTPZ86ysL4ZpwhnlOF+3J+14QwPhxcmtF4FwQfcWkDEL0CrocvQtO9wda8QIvCXM6sUiGe9MAFh11XLKNPRsUrC/kyHHtbf/Fkb53ck0wghQG00mzMclyJieI7YSsnJquH7/PRadkYJv
X-Forefront-PRVS: 00179089FD
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(4630300001)(6049001)(6009001)(7916002)(199003)(69234005)(189002)(105586002)(33656002)(36756003)(64126003)(101416001)(19580395003)(50466002)(65816999)(450100001)(3846002)(80316001)(42186005)(83506001)(50986999)(54356999)(87266999)(2501003)(117156001)(77096005)(92566002)(6116002)(59896002)(23676002)(47776003)(2351001)(2906002)(586003)(1730700003)(81156014)(81166006)(8676002)(106356001)(68736007)(7846002)(66066001)(107886002)(97736004)(65956001)(65806001)(189998001)(230700001)(110136002)(229853001)(7736002)(305945005)(4001350100001)(5640700001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BLUPR0701MB1586;
	H:[192.168.46.178]; FPR:; SPF:None; PTR:InfoNoRecords; A:1; MX:1;
	LANG:en; 
Received-SPF: None (protection.outlook.com: cavium.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtCTFVQUjA3MDFNQjE1ODY7MjM6WURrSGhFdEl2ZVdxSVZxN1dISFUvZm1N?=
	=?utf-8?B?TzlCY1pXVkp0L0lhd0dqMFQyWXo2ajdNbXEvd1h4eXlobmlzWHREeDZjUXdj?=
	=?utf-8?B?VXpGdCtXNEVJVVVwTi9jT2VLdUtidEtobVBBaHNjRGQ2Y0dsbndDcTlRTHpa?=
	=?utf-8?B?elRyZFNMRXBYa3VNaUtHcmtKV0tXRGxGUXlPR1BHakp2MHhzQWtPNnBZTzFi?=
	=?utf-8?B?RUFMSHJiWFplR2ZacWR6ZUQwTUtSYlFiTkxkZ3NFam4zZlhIbzFOQVpzRTBT?=
	=?utf-8?B?aTJ0djZrMVhFcjJieGhpZjVZVGQ4ZnIvMytMTjBMSWtxdTZYa051Rm1OOTdw?=
	=?utf-8?B?cmFYck9kYjlwZDdxRE50WEErS2Q2MURLKzFDSTFlS2JHSys3QXRtaVJCdEtl?=
	=?utf-8?B?RUFaSHg5VEpDTTNHaDJPWGZmU1JaeURVcEpaa2FXMVJad0RxOFgyMEd0S3BC?=
	=?utf-8?B?b0w3QVhEZ211eWRRY2k4UEtRY2hmVVFRNTRubjhVdHdONnRtSzZrOUUxV3Vp?=
	=?utf-8?B?TzBGZ2xPZHQzUXRxVkJwTEtDLzNZaERCSlFJN2lyR29ORk5veHpwMmZwcVBv?=
	=?utf-8?B?KzRGUURjNjVxTFdmRXJxWFBwazFuSzZ6cE9tcXdxZkNTU0IrTTRINmJQUUZ3?=
	=?utf-8?B?SUFtcUphTHlYQjhaNVpxNWwxRGl6N3hVVjB3Mjh2eTVseVlpSnhxT1JJZ0tY?=
	=?utf-8?B?RldvL1Q5d3o5NGFJQ1czV1N2elA3T05OSk53QlU2bk4vZE9aQmlSYmpjREdu?=
	=?utf-8?B?QWxBb3dLZm5LMEtQOVFwTGI0U3lvQ2g3VHF6VHUySnl5aGptNkVKaFdxM1pJ?=
	=?utf-8?B?YnV4aXF0MldDUFNRSW5vQkZUOWl2QUMxSSswZ3k4RW5NY0U4R3ZNMXV0VUF3?=
	=?utf-8?B?SGdYTFNZb3RoNk9vcTV6ZklrOTBVYnBRMTZRSmtZZnJQMGNENUVkektReHJp?=
	=?utf-8?B?aGdsTU5lNG5xSE1IaWZCSUw5OUErUzhlVExIcDZyWnJGdTFtN0wzN3dERkxi?=
	=?utf-8?B?WWFKMFBuc3VZemg0RElGNUY5dXd0dGppcW9Oelc1NldTVHJnNDRtd1hiOGpo?=
	=?utf-8?B?Z21YY28vVGR4TzZVK1NnbGVUTkVIMTJONnBpbjFvdU4yUzAvc2ZWRE56REZU?=
	=?utf-8?B?cE5qV3NZYWgvR1ZCTTErY2VXYlk3QmwwU3dBbDROb3JRNVJhSkZ3N2hkMm5y?=
	=?utf-8?B?cWhNOEY5d0V6YSt5SDREZDEvb1M2Rlg1cWxWUjJ0ZCsrdHU3dXpvTXk4ZDA1?=
	=?utf-8?B?bkg2VVR0VVVQckNZRkJxb0xkS0Y3OHJnbG1qTzVxenJlTkcwcExRbXA3WWlY?=
	=?utf-8?B?dmR2R3I3SXhwZTI1SWk5eXlncGpaSDZIcU5JV2FRcTZPSHhzVHZlbHRuZ1FK?=
	=?utf-8?B?SjVjbEo2UXhlM2dOUW5CQ3NQNTZoa200eUdOVUo2RjVKbWxMMUlQTFp5SlNr?=
	=?utf-8?B?SFQvRFlQeFpFdHBWaEUxR3YyYVg0d1EwTDBXK2xyTzMwaTZBeE5uU01xemdl?=
	=?utf-8?B?b01ncWEwSTlNbkdaRGRSQWtCZ3hXc3Vpc1pjcU1TbXphblJ2dUoxSi9EU0NP?=
	=?utf-8?B?M2hTZCtmV2JTeWFoKzRzKzhRUFlxZlRXK2Z5bFhFa1dudUxUb1RTQkZWQjN2?=
	=?utf-8?B?aVk4akREUFNrcm9tbEFHWWlYUFp6RjRvalYyKzBqV2dGSzlkUytUSVlWOGVI?=
	=?utf-8?B?WGpUNE9NRlYwYlZ6eHVKOWR2bEJpNGlZZEtueGd0MmtmNVY5QWVRb0YwWmJJ?=
	=?utf-8?B?YU9NQmExY0ExeDZSYXdHWmREcVE3QTBmaGNOeGN5UkpKM0hwbWZJM2xadzVX?=
	=?utf-8?Q?a+wZhjKxLtssPt7?=
X-Microsoft-Exchange-Diagnostics: 1; BLUPR0701MB1586;
	6:8qR+1AG93BGZWU4nQHqG8XqvI90WbCnAmti1yb2+9qO3v5FmSr+CzzPKOMOf5bfI9IA24NAdfnX/Sd46V6MALZzUdX5NUI/yI1YAzP6Ymo/J1Mt8oocR4nwcTKATJKjUKgFId4Z/qRCGCI3Z5vo5PVOhOPkTUwxTNNzUWxsGJcO4hiXmMnocch1yWhZ1R9V2oXuFwZv1UpaQnC8E8sXj26XuDNiOa3PH5TIfeF3t6milotNCMre8Z9VIxgvmVMxnKGdIOkiy8hFUZgtAmDjkez6XlsE9hjPN4pD9szKRWIQ=;
	5:9DeFHzufW2ttQ9toPZl+UohlX5ePI7Va+Ml5reX9Lvnj56HJbLkQR60B7kYUukQ+deihewKF9IyaEhSm3rpsK58QNsIgRhYk7ZAuF98aeMsO4PW7PAKkNRULaoGTZxzJKzVxGDoo3k5KpwhtXqJ9nA==;
	24:CI7BU0g5NTrmv3V5uPnS2LByndlgqa5podHpXq3kU9428AUSDgwu5i2U1t1v3nXWXgiFGtMmN9goRO1AXMdgjZ9JtQC7mVzsGkU9Brcrva8=;
	7:FLCrckXZZhzsXuA3Z8ehZFlspRO7OZI8Rf1pEjHolrIEAZopzCZF0TDKwhNMjY6t70nJyg9ggoN8p1Zl/tBqOafWqa85F29GEfDwPqvcUs6PXBn8gVyhGqnDaEYjpQXhde5vWfNHH6Gce6e/lQue5lqw+QWUKx5WKL6iiiODleCGYHc4U6VX7GRDMGK7vacfrTxPSReJ7ta+6stmWnV4UQTdbTmpjHenomiGU1mM414Ex6VHk+9SKy+0F9gsuo98
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: caviumnetworks.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2016 22:52:11.8076 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR0701MB1586
Subject: populate_sdk mutlilib and sysroots
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
X-List-Received-Date: Thu, 28 Jul 2016 23:23:52 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit

On krogoth branch of poky  trying to create a multilib sdk (aarch64 aarch64_ilp32)
Using the below local.conf


CONF_VERSION = "1"
MACHINE = "TestMachine"
CORE_IMAGE_EXTRA_INSTALL_append += " openssl"
PREFERRED_VERSION_linux-thunderx-81xx = "4.4.3"
BB_NUMBER_THREADS="32"
PREFERRED_PROVIDER_virtual/kernel = "linux-thunderx-81xx"
require conf/multilib.conf
MULTILIBS = "multilib:lib32"
DEFAULTTUNE_virtclass-multilib-lib32 = "aarch64_ilp32"


after bitbake core-image-minimal
and bitbake -c populate_sdk core-image-minimal

The sysroot directory in tmp/sysroots has sysroots for both 64 and ilp32
TestMachine
lib32-TestMachine

But when installed the sdk using populate sdk generated script, sysroots is only for aarch64 and not for aarch64_ilp32

ls ~/sdk_install_poky/sysroots/
aarch64-poky-linux  x86_64-pokysdk-linux


What could be missing here?

FYI The generated rootfs has multi libs, libssl for 32bit and 64bit are present.


