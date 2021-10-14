Return-Path: <kai.kang@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7817BC433F5
	for <webhook@archiver.kernel.org>; Thu, 14 Oct 2021 01:36:28 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.3601.1634175387131250414
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Oct 2021 18:36:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=lYGxWv5w;
 spf=pass (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=5921f79a3c=kai.kang@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id
 19E1N2EL032593;
	Wed, 13 Oct 2021 18:36:24 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=subject : to :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=DFWE/qlaBnUglGkGvjvffsWuk68L7rylFBlecNAG3nQ=;
 b=lYGxWv5wLj0I83PsuvndGjzdcN99ix9RLCeM2y9bsnJtvERCLEfj/ryHPB/TB0y8f932
 VGRLjgLYPqPI9ye1z/zSDeFFVnj5KlX0vkTI0QCERFo3J7epl5SN0VyqX8QZgi9rA9NM
 t4fTGbsdgM+GrO0hx57fdBhSVfKM6zhOicTPNWzPfsAwPKeoHfLccjXT4XXjo5Lp77/K
 r3iTUyDGo5WgS2wiTDCotq+krTISRidAk9NfBZ6S87ZmbS95Xu0kAVN3B8Cp9TrlGCU9
 oHz1rDq9jHmXHl6zFkSM3+DttSMTzXRP5RWnFwcP0Rq5xJgdUrczKIV4dotNrj/DRMBd PQ==
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2171.outbound.protection.outlook.com [104.47.59.171])
	by mx0a-0064b401.pphosted.com with ESMTP id 3bnka499vr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 13 Oct 2021 18:36:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q2X0a9IZj3y8oiNEaJCsWq2OmHGflqmolTAIhisYZCTuzVurbeDXGsVvW84wlrZPS2xmC3BLi+r6vK4LPCAHGGC79G/iexnGWtrCfD1UO/LjM6uqOfxectSscWufKBq3wNaAxnwUbSIKlOVtxazZcpVL/0FQ3Y7rIAMy3b1US+ofBDZH3mEeYPpQhhpTlSJRWoSJTQIPOm6Rse0sPwG/vMhJJrZAWO/lLdRzUoijQqL7JNCDE4x9PB+0JpZpmGxl38IOd5uYcKtM9D0rM2EOpPCyk0jDzGTSf1iNN8wvyG+2OiuSDxiV5L6gWdD7Lvn7Au8PYUlsq7qAtizSmxnyFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DFWE/qlaBnUglGkGvjvffsWuk68L7rylFBlecNAG3nQ=;
 b=LzgJk5+Ke5HDPnqY8Z9lDuA6KFZ8hQ9JpuMuTNAhLSLh2DLJH40+SUU3tCv+iSixTWfBkPKAGZdNJ7sS/AWo2p+b6234sawf21xqMGVFDLmjkQWiwK1IMF4Wl2FSPEs4NENLK/3f77QmWY6I4CqF7IQ/ZJ77ATweFMD9Py0zhtiPzfhHiSc6sL3VJbDhukcbYnROLwfEYNwy5tORwRxsr39R+l/5kaE3J39GGbA8V5aPIr9Spm6Gmz31oyrAAqgq6jvGo1IqtCfGUlCcNAMzETCOLM+QQ/nmrn97gsXyKcVFGl2h5RcPT1Y6vujL84IXEU63MSTFRekTfYsrW5ujsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from CO6PR11MB5651.namprd11.prod.outlook.com (2603:10b6:5:356::20)
 by CO6PR11MB5649.namprd11.prod.outlook.com (2603:10b6:5:35b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.19; Thu, 14 Oct
 2021 01:36:22 +0000
Received: from CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::c419:bfb1:86a7:acf2]) by CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::c419:bfb1:86a7:acf2%3]) with mapi id 15.20.4587.030; Thu, 14 Oct 2021
 01:36:21 +0000
Subject: Re: [yocto] [meta-security][PATCH] sssd: re-package to fix QA issues
To: akuster808 <akuster808@gmail.com>, yocto@lists.yoctoproject.org
References: <20211013084915.4589-1-kai.kang@windriver.com>
 <16ADAF5C8E9754EC.2153@lists.yoctoproject.org>
 <916ab488-0410-dd3f-7385-031d444e68f6@gmail.com>
From: Kai <kai.kang@windriver.com>
Message-ID: <1f3a355b-fcc6-1536-7820-0f3d4dea57b6@windriver.com>
Date: Thu, 14 Oct 2021 09:36:14 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <916ab488-0410-dd3f-7385-031d444e68f6@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
X-ClientProxiedBy: HK2PR02CA0193.apcprd02.prod.outlook.com
 (2603:1096:201:21::29) To CO6PR11MB5651.namprd11.prod.outlook.com
 (2603:10b6:5:356::20)
MIME-Version: 1.0
Received: from [128.224.163.141] (60.247.85.82) by
 HK2PR02CA0193.apcprd02.prod.outlook.com (2603:1096:201:21::29) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16 via Frontend
 Transport; Thu, 14 Oct 2021 01:36:20 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e0121777-701f-450e-3edc-08d98eb306db
X-MS-TrafficTypeDiagnostic: CO6PR11MB5649:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<CO6PR11MB5649837A8821E9E8F578DFDD95B89@CO6PR11MB5649.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	5YPvrGDGPpdzxk/ZnMVLwh8OUIZ20+1RCATsjlE81RESN0PPE7lxT+H9orqTfZZEWAwe3d5fVI08BDPbFivnkKGAptI3jAmrBop6Eu8LqvnjEc1VNmgsCb1A469yZpCsyXpH8YH6PJ8A+ApQLWGys66btS0nxF8tF1vtbE+EEwP+aae3Oc1DkF8UB10fkwSIydMQpBPUXZrktmh2/wzD+mHGZGH1UVwlJTa5NnfWpuoD/75IvQdZPjp1bVNOvPC8j0i+6Cma52XruzgsmxPJBDzhTuSou5vaPy3vWG//JUd/aa9GpedU1zgCHuyn/KttE/tpuf3wVuiujSNh+jBWyO5M5w6IIBky3STvy6Z00AB27NVnSjKGYZE1ly9ZvhRkJPiRwjMZKcBagrNBMlRK60epMYKaSIEEkLb7IM7PvD9qlgAVSVZzyLNVrP3df71BlFBYwh4tE+V+Y+Ft93R/NktX7pRP2dc61xv4WzGLOL6SuIHJ5yQidN9fCjxBILyT/StnLggOZU1AC68goYBPyv6WaW6A5enmibBz8xkwIiJRurGzes8xhuVJr7tl2BxgX+2ZdtpYC1kK7YAGRMZsNei2/v94EzAgFEnhlnmHZ3RHLIQKfjEznl37CdzX+9zsBqf//RZ4d+hv1X0X2bMEr6OYN/2wrJkn+dgi8gLs2zt1soE1BbHHrDsi5EIL9upOkXvhWWwSA9ySgUFNjopoYN98vJdn0cvhGPmbOOuTU7UxalNJINWhodOPuraulQrKSjnaM3eQaUz0xjqSKZT/88wskJcah269TYBIqtV+fbBsUP+T1FRbPsScPSl5ZDFdW23tWVvyz2rGMUa3s74G3eBpaW2Iur/i1IDFOrX2kl2DlVH0I+WGXFrMJ050QZMDudGOtg0tjXFZYP22IJCXGg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5651.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(66556008)(66476007)(66946007)(38100700002)(38350700002)(6666004)(83380400001)(966005)(6486002)(186003)(26005)(508600001)(5660300002)(86362001)(52116002)(31686004)(31696002)(8936002)(15650500001)(316002)(53546011)(6706004)(956004)(2616005)(8676002)(16576012)(2906002)(36756003)(78286007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MHgyejlDa0g2WDVwTjNTZGl0MjdDU2s2RGV4bTVsL2VHOUxTZkJZMGtXTW5T?=
 =?utf-8?B?Q1ZERkFPakJ4NjhmWGNrNFE3S0pKajZ4VVcwYlhWQng3TXZtUmQyYmkyMFlr?=
 =?utf-8?B?N2FPRUQzYUl3SkhaRnRzcGNlRHpyblFMNVJMOFZQUXhPaHlPS2IvM1JjV0RR?=
 =?utf-8?B?akZqbTdmQSt2YlBjNTNIRG11Ukk1VmR5YVBZMmMvUFJhcW9CNVM0WVdHYXZV?=
 =?utf-8?B?V3kza0MvMWFxOU1sckx2Nk5CS2NlZ09VVFd1NWs3QTEyN200cDlKeUFZaHFX?=
 =?utf-8?B?enNDenowaDkveGRGZWM4UXRLMUc2Y2luTEo3eitsWDlYeW1ETkFObzZKS0xN?=
 =?utf-8?B?RDNTdlB4U1hMSlpRY2ROSXNiSENqVk9vc3FBakxvOTFlYXUxeEZvT2tNRjA0?=
 =?utf-8?B?NDFRM0NFUWZqd3FSV1ZidkJuSjdDSVFHanBsc3BUckM3OThJZ2huUmNIc29W?=
 =?utf-8?B?U041Sk5NNFAvRTY3TFN5QUNabzg1RDR6ZHZaTkw3bWh1UlgyZmhwT3daeXJW?=
 =?utf-8?B?dEpRT05oSUZNeEdNc0FZQ3dhR1Bjc3MzS3c3L0tmTmgzeW5FR1dSUTJKVkdo?=
 =?utf-8?B?L2dLUWc0TE05SU84b3NicUxVa0hvYnZXdjVscGlnSjRKaVQ1TGNtSHZMbEdo?=
 =?utf-8?B?blhYWS9Jd21PMlRENTJwZlRFaDRZeW5QRno2VmlHRlphRXdMTWY2dGViYVdW?=
 =?utf-8?B?YVdaT0pLMFg0NGQrTEJQaXprYUIrZERLTDdsUHFsSUNOR1dvYXFnM3I4WFdu?=
 =?utf-8?B?NE5iMjY0dC8yNzRyR0h6Qm9YbXM4VTJaY0ZRSjVkdElJd25tbTFmQVFHTFE0?=
 =?utf-8?B?Rnl0VlFhNDM1UWhFVFVUdGRITzRocktlOFZVQjlremYweHo3Zjg3b3dRcmFj?=
 =?utf-8?B?THBOK1UwZnhtQ3lFQUY5T1FGNnJyUUJvYnV6blA0NjZuYlFwdStOQ3hUTXM4?=
 =?utf-8?B?QWE3Ym9tMHpXdEpsSStURHNEV3R3VENvdldEUWhSRnJyYVhESFRINDJ4MlVh?=
 =?utf-8?B?TE1zeUFCMDY2MllLZXg4M2hWMDJaTCtOK0NOblY4SVpwb09sQlYra1Bwbytw?=
 =?utf-8?B?WHNJSVZpU05CaWZrODM2ZTllbEtyOVhia3hSb0Z2clVTNDRRWkIzUm9HOGJz?=
 =?utf-8?B?TUIwU0UrRXZCb1VFMDJ3bktUMHBLNlBpQzFaN0hUSFI0RTlGNVpuTndhNWVh?=
 =?utf-8?B?Q2pwVEk3MEJnZEtsdDYxYWZGRHU1eXlHMkJTdXlXcXNqVDBKU1k2Wlh3SFJx?=
 =?utf-8?B?ckQ2Zms3Q0JlRHNqc1BiRWtYbGhkUmJlUVoyR2FoaVZWS0lpTzN3MmVVZzZa?=
 =?utf-8?B?SlMyWUlwd2c3YnQvVHpLZlZHbHNTbFAwZlNaS3AvL2NCTndzKzZERWZyaWd2?=
 =?utf-8?B?MjgzZTFSNnRSdkx2SklabWhlOWR0a1BqQUpKWk9MNFhSTVRubzhyVEJCeGxy?=
 =?utf-8?B?Q1FydFFvQWhEUUlxcXJmWmhNR0pCMXM3YkhYQldLaFE5QVRZVElsYk9oM1dD?=
 =?utf-8?B?U3dxTWRxdjFoZ1RDQTBpYnJWM0NuNUVHNzY4MW14MlZ3OC80Rnd6Ni9TL3Ew?=
 =?utf-8?B?emRWd1FFYUI3Y25mUnEvZmNWQlo3T3NSWDExVVZxR0F4R3J1Z1owaXFTK3da?=
 =?utf-8?B?THd3U25XcGExN1hsWlhGN3hvbzFOYWZQS1kyYzJnaFVkSlhtTWdTckJIb045?=
 =?utf-8?B?a3dJcWt4TkxzSnkwcWdSOHpWc05tUWtwbWRaWGZKa09DaVcrdWZmVDc0VHNF?=
 =?utf-8?Q?zWHs1MJ5lPDBUkkguxGrxJ0e8ssYrzTR+QjNz0n?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 e0121777-701f-450e-3edc-08d98eb306db
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5651.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2021 01:36:21.6899
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 6FNlJybFaTrJjHn1Iepnc2i+hdLa/fKAPK02vJLpVM/EVo93JTkm/B1NpTQ+laxrdq7P/ZOV7eT/tYN/pjaueg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5649
X-Proofpoint-ORIG-GUID: 3Z_YsJr22UM1p2vurJKMOelmi7rWfqtt
X-Proofpoint-GUID: 3Z_YsJr22UM1p2vurJKMOelmi7rWfqtt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-13_09,2021-10-13_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 suspectscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 adultscore=0
 impostorscore=0 spamscore=0 bulkscore=0 mlxscore=0 mlxlogscore=999
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2110140009
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Oct 2021 01:36:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55065

On 10/14/21 4:08 AM, akuster808 wrote:
Hi armin,
> changing the 'libsss_sudo' to 'libsss-sudo' fixes the errors.
>
> I can do this locally or you can send a v2.

v2 will be sent. Thanks.

Kai

>
> - armin
>
> On 10/13/21 12:57 PM, Armin Kuster via lists.yoctoproject.org wrote:
>> On 10/13/21 1:49 AM, kai wrote:
>>> From: Kai Kang <kai.kang@windriver.com>
>>>
>>> It packages all file in ${libdir} to package sssd, including the .so
>>> symlink files. Then it causes QA issues:
>>>
>>> | ERROR: QA Issue: sssd rdepends on dbus-dev [dev-deps]
>>> | ERROR: QA Issue: sssd rdepends on ding-libs-dev [dev-deps]
>>>
>>> So re-package sssd then the .so symlink files and .pc files are packaged
>>> to sssd-dev which should be.
>>>
>>> File ${libdir}/libsss_sudo.so is not a symlink file but packaged to
>>> sssd-dev too. Then causes another QA issue:
>>>
>>> | ERROR: sssd-2.5.2-r0 do_package_qa: QA Issue:
>>>      -dev package sssd-dev contains non-symlink .so '/usr/lib/libsss_sudo.so' [dev-elf]
>> When building for ipk and deb I am seeing these errors.
>>
>> IPK:
>> ERROR: sssd-2.5.2-r0 do_package_write_ipk: Fatal errors occurred in
>> subprocesses:
>> Command
>> 'PATH="/home/akuster/oss/clean/poky/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/akuster/oss/clean/poky/scripts:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/usr/bin/i686-poky-linux:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot/usr/bin/crossscripts:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/usr/sbin:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/usr/bin:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/sbin:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/bin:/home/akuster/oss/clean/poky/bitbake/bin:/home/akuster/oss/clean/poky/build/tmp/hosttools"
>> opkg-build -Z xz -a "--memlimit=50% --threads=16" libsss_sudo
>> /home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/deploy-ipks/core2-32'
>> returned non-zero exit status 1.
>> Subprocess output:libsss_sudo
>> *** Error: Package name libsss_sudo contains illegal characters, (other
>> than [a-z0-9.+-])
>>
>> opkg-build: Please fix the above errors and try again.
>>
>> ERROR: Logfile of failure stored in:
>> /home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/temp/log.do_package_write_ipk.2960686
>> ERROR: Task
>> (/home/akuster/oss/maint/meta-security/recipes-security/sssd/sssd_2.5.2.bb:do_package_write_ipk)
>> failed with exit code '1'
>>
>> DEB:
>>
>> ERROR: sssd-2.5.2-r0 do_package_write_deb: Fatal errors occurred in
>> subprocesses:
>> Command
>> 'PATH="/home/akuster/oss/clean/poky/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/akuster/oss/clean/poky/scripts:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/usr/bin/i686-poky-linux:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot/usr/bin/crossscripts:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/usr/sbin:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/usr/bin:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/sbin:/home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/recipe-sysroot-native/bin:/home/akuster/oss/clean/poky/bitbake/bin:/home/akuster/oss/clean/poky/build/tmp/hosttools"
>> dpkg-deb -b
>> /home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/packages-split/libsss_sudo
>> /home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/deploy-debs/core2-32'
>> returned non-zero exit status 2.
>> Subprocess output:dpkg-deb: error: package name has characters that
>> aren't lowercase alphanums or '-+.'
>>
>> ERROR: Logfile of failure stored in:
>> /home/akuster/oss/clean/poky/build/tmp/work/core2-32-poky-linux/sssd/2.5.2-r0/temp/log.do_package_write_deb.2973553
>> ERROR: Task
>> (/home/akuster/oss/maint/meta-security/recipes-security/sssd/sssd_2.5.2.bb:do_package_write_deb)
>> failed with exit code '1'
>>
>>
>>
>>> So create a new sub-package libsss_sudo to package file libsss_sudo.so
>>> and make sssd rdepends on it.
>>>
>>> Signed-off-by: Kai Kang <kai.kang@windriver.com>
>>> ---
>>>   recipes-security/sssd/sssd_2.5.2.bb | 16 +++++++++-------
>>>   1 file changed, 9 insertions(+), 7 deletions(-)
>>>
>>> diff --git a/recipes-security/sssd/sssd_2.5.2.bb b/recipes-security/sssd/sssd_2.5.2.bb
>>> index 76d6e03..da1a5c3 100644
>>> --- a/recipes-security/sssd/sssd_2.5.2.bb
>>> +++ b/recipes-security/sssd/sssd_2.5.2.bb
>>> @@ -125,10 +125,12 @@ SYSTEMD_SERVICE:${PN} = " \
>>>   "
>>>   SYSTEMD_AUTO_ENABLE = "disable"
>>>   
>>> -FILES:${PN} += "${libdir} ${datadir} ${base_libdir}/security/pam_sss*.so"
>>> -FILES:${PN}-dev = " ${includedir}/* ${libdir}/*la ${libdir}/*/*la"
>>> -
>>> -# The package contains symlinks that trip up insane
>>> -INSANE_SKIP:${PN} = "dev-so"
>>> -
>>> -RDEPENDS:${PN} = "bind bind-utils dbus libldb libpam"
>>> +PACKAGES =+ "libsss_sudo"
>>> +FILES:${PN} += "${base_libdir}/security/pam_sss*.so  \
>>> +                ${datadir}/dbus-1/system-services/*.service \
>>> +                ${libdir}/krb5/* \
>>> +                ${libdir}/ldb/* \
>>> +                "
>>> +FILES:libsss_sudo = "${libdir}/libsss_sudo.so"
>>> +
>>> +RDEPENDS:${PN} = "bind bind-utils dbus libldb libpam libsss_sudo"
>>>
>>>
>>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#55058): https://lists.yoctoproject.org/g/yocto/message/55058
>> Mute This Topic: https://lists.yoctoproject.org/mt/86283461/3616698
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [akuster808@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>

-- 
Kai Kang
Wind River Linux


