Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.205.1610041877517203137
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Jan 2021 09:51:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=DKvtdLl9;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: randy.macleod@windriver.com)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2080.outbound.protection.outlook.com [40.107.223.80])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 4B8EF38C0627
	for <yocto@yoctoproject.org>; Thu,  7 Jan 2021 17:51:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jXLywGTxQuEGOOrOiT1gzxWY3XCpPAcgx61vDmZ05S4RaezRcrTp3/937E3sIX7QNMiL8KQSrWh6ufXNrc9jnsMngS2moj6iN42KQ3iaiUOItAeKvHUYjWAeMO497LPb60WrPXyFyo09Cf4cud3W1MmwSSuVuvjrRvEtrSlX2EV/Yt41vK6A3hKl6fDMK7AO6vOL4MDjdaEamNgTWaUoCu4oY/9mxlVe2Kj7ClhHDakGe+8z8ObTVf3GQ25fVsfNJsWO4tm2ExyjROPRYciwhqH5bklKH1euA0sy0qEg4YDpyE1nS8J4T5VCK5HNkvnDMZFSUgw/5Lbbu68c9q1DrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QnHGvtRDrNr2Yg/t6XFuRuLgiucuhoNCpFYGfzqF2EA=;
 b=TCbO2X+mZmw2vOxTSSVrdbs0XiIidBXVQJpSSY7fKIJ6mm9Kjo15zC1YEldY9s+XtLHUXK3IcQzxRONS6Y+5qDnGFTHPwm+kP74DLhtyoEX1BZGDGppe5Yy5vRcaHT/1YUujvBZbxiSviaQVeLyX2XGnOmE0b8kYiRafAtxGZcp8A27L7kiX6CcQPeP7cMckOqNTY8cTunXBphQF5bvy4KZ4tDMaHYiYhlTxWYsAWx4lsdbOKQU2T4zetienn36F3rDGYJP8Ei6QJmSO7auqaGKaK4eQbzCC77RxeTNKSvdBKb1Ljmur/5Tp1qwvoY/BZ40WEowWhkqF20yHHpxe4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QnHGvtRDrNr2Yg/t6XFuRuLgiucuhoNCpFYGfzqF2EA=;
 b=DKvtdLl9WkwJJOqNPOiRwUrCkPgOFN4CA3WRZEaBsqWlM2xZYie1lCVf3G4QkF/7LubW3+D7nVfNhFgaWVsKyg4PK5e1WCtrgyQN5drQ9PHs3zJK0Sw+jWvyJ6I9Ey/9M/8pM365zufsXiqeq0NTGMuXYSjMmBDfjFE7jwXXM9I=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM5PR11MB1929.namprd11.prod.outlook.com (2603:10b6:3:10a::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.7; Thu, 7 Jan
 2021 17:51:14 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8e2:471a:7b63:1a0e]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8e2:471a:7b63:1a0e%7]) with mapi id 15.20.3742.006; Thu, 7 Jan 2021
 17:51:14 +0000
Subject: Re: [yocto] [meta-tensorflow][PATCH 8/25] tensorflow-estimator: 1.13 -> 2.4
To: Marek Belisko <marek.belisko@gmail.com>,
 Hongxu Jia <hongxu.jia@windriver.com>
Cc: philip@balister.org, akuster808 <akuster808@gmail.com>,
 yocto <yocto@yoctoproject.org>
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
 <20201216130822.28476-9-hongxu.jia@windriver.com>
 <CAAfyv37zRgtJ_n2RZmWoHPOado1=LYw9cHVEVUZT1n497XB8yw@mail.gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <777b9a81-2d2e-7d86-bc0b-24370369135d@windriver.com>
Date: Thu, 7 Jan 2021 12:51:06 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
In-Reply-To: <CAAfyv37zRgtJ_n2RZmWoHPOado1=LYw9cHVEVUZT1n497XB8yw@mail.gmail.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: CY4PR20CA0039.namprd20.prod.outlook.com
 (2603:10b6:903:cb::25) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by CY4PR20CA0039.namprd20.prod.outlook.com (2603:10b6:903:cb::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6 via Frontend Transport; Thu, 7 Jan 2021 17:51:13 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a1313224-252d-43a7-0747-08d8b334d3ef
X-MS-TrafficTypeDiagnostic: DM5PR11MB1929:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM5PR11MB1929CE249EEDE04BCD78858CF8AF0@DM5PR11MB1929.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	lPJOfWeu/3k1svZoXVfWf71XO7o9wI0pA2KiGnrZQBaOKADtVxJsstmMtf80mJiArhH8Ae5UXu7GIzZT7zShS3gqd8ANCo5K/ET9G29+S6ioaaTEMN5V4lhWH8ueDidq4Y3LK9axnaWyCF/5374t3XoW9qz2FhmiutZBxy9wf+T2OkbLMJE3P/sGYEzaIA3ZJMPuFaUdK0Z/w4QJkouZPx3bQm6Og8Bsd1EdcxlsI97ebPQflwUJMi2lUpbe+AtPVoOmsIzGS3hOmhHzI0TboE+MpTlu22D3C+yjNDKf/KFtdyylWT55bZuxAwA2HLasbL26mw0kQhpJ/EuUwWO5Uv00sOHE8xEZavlxKBj4m6I+JETeLfAXQ7AXtl0xUcjMaWlMxkcRyRGF40cyLLi2nARWigFpTlzFU5w6RCWG8hAIRIBZrDXNt1i0ORTZeKsApT490y2A7K6qCYVKPCzEleWEPCAPPlRaIo+W0WB6DK7qvfEgnct9tnq+Wgk6KkQwXZZSfnF0Gq86Q1AUe9JEMUJqijOUWoR7i6O6BOqOQmd2cESB0V5OBvtmmV8nFOIf
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(376002)(136003)(39850400004)(366004)(478600001)(966005)(316002)(2616005)(5660300002)(16576012)(2906002)(956004)(54906003)(83380400001)(66476007)(31686004)(26005)(186003)(31696002)(66946007)(86362001)(52116002)(8936002)(53546011)(4326008)(8676002)(30864003)(110136005)(36756003)(6636002)(16526019)(6666004)(66556008)(6486002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?Z3BIY3ErOCtCd0VTOExmVmVncjQxNmhrYVl1N25Nc1FEeG93ZG8zNklxUndW?=
 =?utf-8?B?QUdCUTYyNjdOZnN1VTlrMndRZ2FmNDMwWm5vMW9ML3RuMys0emJCSHUwRERo?=
 =?utf-8?B?WEkvQlBEWlFYckpCSkxudDZIZ01EeGVJRjZIa0NCYTltdTgxS3ZLbmVpckw4?=
 =?utf-8?B?c1RHWVZrd3B1YnEwWHBtQ2Roa1dIcC9yV0UxSXlaWFYvT1o2VWxIajJrT3lu?=
 =?utf-8?B?bHJtK004RTlUSHA0YzFzQkVVVVI3Qytaczl4c3pLMktTVnVXT3VlNVRkUTNT?=
 =?utf-8?B?ZFQyY2MrUjJVQUpNK0w1SksxS3FxbmZBb29Za29RY1ZQYVRaZUFua1c5czJJ?=
 =?utf-8?B?V0k2N3pqOFhHRnNSV2dKZ1puVThjelBRSE40QzNzUjE5NlhwdkFLRVB4MnZq?=
 =?utf-8?B?UFlRcVVhRXh0WUJpRFFRaWxoWU1jNVh4OEExNVRpSng5YVNnODVLVlhTUWlW?=
 =?utf-8?B?LzdUVWJPMkdUcHM1anowbk5PRHB2WUpWNlhRTjN1Q1l3Z3AzWmg4eng3ZWd2?=
 =?utf-8?B?UlU2ejd1SGhjMUxZSkNQV0ZOQ3Fjb2lFRWRGalpxNlBHVUxZQWNuVUNYOEk4?=
 =?utf-8?B?NWlncDZDSDhnWmFkN1N3ekl0TDNJMGxzTUtKZ29hb2phNGhPc1ZyM2pnaUFP?=
 =?utf-8?B?b3Rxc3BLeGdnUDFWU0FGeThIMWVXNldzTjAwWlMwMTJpZ0h2MFUrV2loMmk4?=
 =?utf-8?B?b25JUnc5YTNYbGZTZEtqZU9qRSt4SkhYaUpzNzBCVzhoOEVDcWw3QnBJYlVF?=
 =?utf-8?B?RVIxdkR3MW9uUWFiRjhDNDFxdVhIdTdyVExJVVZnbmRqcVk1b1M0dEpiV1E3?=
 =?utf-8?B?ZUtra1FENFVxVHBWUUNwalpaeGw1Sm5GTnZncE9ILzNqaG5hQ0lwQU9tN1Bw?=
 =?utf-8?B?eHA5MVkrN1Y4SzVpek5DcWtiWU1QWnh5R3RQTWNpNDEzQk1OM2NpNUNPVlVS?=
 =?utf-8?B?VHpwRVJwZ1dac2Z0RENybG81enRrNDdrQ1I2Z3cyK3B0S2xseGpCVkpMdklR?=
 =?utf-8?B?akh4c2xGN3Z5NmpYbHVZbjhZQXRWR1RUR0NyNHZnSWxELzhWdmQzZU9BUGtO?=
 =?utf-8?B?VHJTN2tFQVdrVmVpL2Q4Mjd4Qmt0Vko3bWlEdnArbktoelE0RGRjNDZQbUlw?=
 =?utf-8?B?Q0dUdU1SNFFMeG5HY1dOK2tiakRHVHNDcE5Wckc2ZTVtTnU4Z21yd3pKcmc4?=
 =?utf-8?B?UUpVSUhNWWl0NGZhZFIramZ2NU0waGt3dkFCSTdkWUkybERFUGpiQ2tCUUhs?=
 =?utf-8?B?cUdaUGtHTlBOTk9STmNxajl0VjE2RWd0anNUYktTdVZ1dm5SUU5TN0JRd2Fu?=
 =?utf-8?Q?mLfxtY/oYtKOA0ND0gRKU12jNvfcN2e+/5?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2021 17:51:14.7274
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: a1313224-252d-43a7-0747-08d8b334d3ef
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4/2HDKTu2k2jowujD1LF54vfD62bagqG+C2QFxzh9A1W+rqWB+xjqnB5MMJ0LHDZO5kV5k/q/qsTBPm1xEjgJJOpXSeGLsiI9Dgs82R3g4w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1929
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 2021-01-04 5:30 a.m., Marek Belisko wrote:
> Hi Hongxu,
> 
> On Wed, Dec 16, 2020 at 2:09 PM Hongxu Jia <hongxu.jia@windriver.com> wrote:
>>
>> Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
>> ---
>>   .../0001-customize-for-yocto.patch            | 28 +++++++++++++++++++
>>   .../tensorflow/tensorflow-estimator_1.13.bb   | 12 ++++++--
>>   2 files changed, 37 insertions(+), 3 deletions(-)
>>   create mode 100644 recipes-framework/tensorflow/tensorflow-estimator/0001-customize-for-yocto.patch
>>
>> diff --git a/recipes-framework/tensorflow/tensorflow-estimator/0001-customize-for-yocto.patch b/recipes-framework/tensorflow/tensorflow-estimator/0001-customize-for-yocto.patch
>> new file mode 100644
>> index 0000000..e9b66d5
>> --- /dev/null
>> +++ b/recipes-framework/tensorflow/tensorflow-estimator/0001-customize-for-yocto.patch
>> @@ -0,0 +1,28 @@
>> +From a1bcf09a43fc44ad5e04c441ee45cc23d16cf7d2 Mon Sep 17 00:00:00 2001
>> +From: Hongxu Jia <hongxu.jia@windriver.com>
>> +Date: Wed, 9 Dec 2020 17:59:01 +0800
>> +Subject: [PATCH] customize for yocto
>> +
>> +Upstream-Status: Inappropriate [oe specific]
>> +
>> +Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
>> +---
>> + tensorflow_estimator/tools/pip_package/build_pip_package.sh | 2 +-
>> + 1 file changed, 1 insertion(+), 1 deletion(-)
>> +
>> +diff --git a/tensorflow_estimator/tools/pip_package/build_pip_package.sh b/tensorflow_estimator/tools/pip_package/build_pip_package.sh
>> +index d4953a6..e08cd8a 100755
>> +--- a/tensorflow_estimator/tools/pip_package/build_pip_package.sh
>> ++++ b/tensorflow_estimator/tools/pip_package/build_pip_package.sh
>> +@@ -38,7 +38,7 @@ function prepare_src() {
>> +
>> +   # Verifies all expected files are in pip.
>> +   # Creates init files in all directory in pip.
>> +-  python tensorflow_estimator/tools/pip_package/create_pip_helper.py --pip-root "${TMPDIR}/tensorflow_estimator/" --bazel-root "./tensorflow_estimator"
>> ++  nativepython3 tensorflow_estimator/tools/pip_package/create_pip_helper.py --pip-root "${TMPDIR}/tensorflow_estimator/" --bazel-root "./tensorflow_estimator"
>> + }
>> +
>> + function build_wheel() {
>> +--
>> +2.18.2
>> +
>> diff --git a/recipes-framework/tensorflow/tensorflow-estimator_1.13.bb b/recipes-framework/tensorflow/tensorflow-estimator_1.13.bb
>> index f3a5098..5b2fe5d 100644
>> --- a/recipes-framework/tensorflow/tensorflow-estimator_1.13.bb
>> +++ b/recipes-framework/tensorflow/tensorflow-estimator_1.13.bb
>> @@ -3,9 +3,10 @@ learning programming."
>>   LICENSE = "Apache-2.0"
>>   LIC_FILES_CHKSUM = "file://LICENSE;md5=01e86893010a1b87e69a213faa753ebd"
>>
>> -SRC_URI = "git://github.com/tensorflow/estimator.git;branch=r1.13 \
>> +SRC_URI = "git://github.com/tensorflow/estimator.git;branch=r2.4 \
>> +           file://0001-customize-for-yocto.patch \
>>             "
>> -SRCREV = "340703eed78ba4854862f749ed94f91598826e79"
>> +SRCREV = "c3e7f2b5bbcc35185ef71797955a28cadce28f60"
>>   S = "${WORKDIR}/git"
>>
>>   inherit python3native bazel
>> @@ -19,12 +20,18 @@ DEPENDS += " \
>>       python3-astor-native \
>>       python3-gast-native \
>>       python3-termcolor-native \
>> +    python3-wrapt-native \
>> +    python3-opt-einsum-native \
>> +    python3-astunparse-native \
>> +    flatbuffers-native \
> I'm getting issue when building tensorflow-estimator (I add small
> changes to be able to build this patches on top of dunfell) and I'm
> getting:
> |   /bin/bash -c 'source
> external/bazel_tools/tools/genrule/genrule-setup.sh;
> bazel-out/k8-opt-exec-2B5CBBC6/bin/tensorflow_estimator/python/estimator/api/create_tensorflow_estimator.python.estimator_api_1_estimator_python_api_gen_compat_v1
>   --apidir=bazel-out/k8-fastbuild/bin/tensorflow_estimator/python/estimator/api_v1/
> --apiname=estimator --apiversion=1
> --package=tensorflow_estimator.python.estimator
> --output_package=tensorflow_estimator.python.estimator.api._v1
> bazel-out/k8-fastbuild/bin/tensorflow_estimator/python/estimator/api/_v1/v1.py
> bazel-out/k8-fastbuild/bin/tensorflow_estimator/python/estimator/api/_v1/estimator/__init__.py
> bazel-out/k8-fastbuild/bin/tensorflow_estimator/python/estimator/api/_v1/estimator/experimental/__init__.py
> bazel-out/k8-fastbuild/bin/tensorflow_estimator/python/estimator/api/_v1/estimator/export/__init__.py
> bazel-out/k8-fastbuild/bin/tensorflow_estimator/python/estimator/api/_v1/estimator/inputs/__init__.py
> bazel-out/k8-fastbuild/bin/tensorflow_estimator/python/estimator/api/_v1/estimator/tpu/__init__.py
> bazel-out/k8-fastbuild/bin/tensorflow_estimator/python/estimator/api/_v1/estimator/tpu/experimental/__init__.py')
> | Execution platform: @local_config_platform//:host
> | /home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tensorflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-packages/h5py/__init__.py:72:
> UserWarning: h5py is running against HDF5 1.8.21 when it was built
> against 1.8.19, this may cause problems
> |   _warn(("h5py is running against HDF5 {0} when it was built against {1}, "
> | Traceback (most recent call last):
> |   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tensorflow-estimator/2.4-r0/bazel/output_base/execroot/org_tensorflow_estimator/bazel-out/k8-opt-exec-2B5CBBC6/bin/tensorflow_estimator/python/estimator/api/create_tensorflow_estimator.python.estimator_api_1_estimator_python_api_gen_compat_v1.runfiles/org_tensorflow_estimator/tensorflow_estimator/python/estimator/api/create_python_api_wrapper.py",
> line 26, in <module>
> |     from tensorflow_estimator.python.estimator import estimator_lib
> # pylint: disable=unused-import
> |   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tensorflow-estimator/2.4-r0/bazel/output_base/execroot/org_tensorflow_estimator/bazel-out/k8-opt-exec-2B5CBBC6/bin/tensorflow_estimator/python/estimator/api/create_tensorflow_estimator.python.estimator_api_1_estimator_python_api_gen_compat_v1.runfiles/org_tensorflow_estimator/tensorflow_estimator/python/estimator/estimator_lib.py",
> line 22, in <module>
> |     from tensorflow_estimator.python.estimator.canned.baseline
> import BaselineClassifier
> |   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tensorflow-estimator/2.4-r0/bazel/output_base/execroot/org_tensorflow_estimator/bazel-out/k8-opt-exec-2B5CBBC6/bin/tensorflow_estimator/python/estimator/api/create_tensorflow_estimator.python.estimator_api_1_estimator_python_api_gen_compat_v1.runfiles/org_tensorflow_estimator/tensorflow_estimator/python/estimator/canned/baseline.py",
> line 53, in <module>
> |     import tensorflow as tf
> |   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tensorflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-packages/tensorflow/__init__.py",
> line 55, in <module>
> |     from ._api.v2 import compat
> |   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tensorflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-packages/tensorflow/_api/v2/compat/__init__.py",
> line 39, in <module>
> |     from . import v1
> |   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tensorflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-packages/tensorflow/_api/v2/compat/v1/__init__.py",
> line 34, in <module>
> |     from . import compat
> |   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tensorflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-packages/tensorflow/_api/v2/compat/v1/compat/__init__.py",
> line 39, in <module>
> |     from . import v1
> |   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tensorflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-packages/tensorflow/_api/v2/compat/v1/compat/v1/__init__.py",
> line 51, in <module>
> |     from tensorflow._api.v2.compat.v1 import lite
> |   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tensorflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-packages/tensorflow/_api/v2/compat/v1/lite/__init__.py",
> line 11, in <module>
> |     from . import experimental
> |   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tensorflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-packages/tensorflow/_api/v2/compat/v1/lite/experimental/__init__.py",
> line 10, in <module>
> |     from . import nn
> |   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tensorflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-packages/tensorflow/_api/v2/compat/v1/lite/experimental/nn/__init__.py",
> line 10, in <module>
> |     from tensorflow.lite.python.lite import TFLiteLSTMCell
> |   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tensorflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-packages/tensorflow/lite/python/lite.py",
> line 40, in <module>
> |     from tensorflow.lite.python.convert import
> build_toco_convert_protos  # pylint: disable=unused-import
> |   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tensorflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-packages/tensorflow/lite/python/convert.py",
> line 33, in <module>
> |     from tensorflow.lite.python import util
> |   File "/home/ubuntu/projects/test/build/tmp/work/aarch64-poky-linux/tensorflow-estimator/2.4-r0/recipe-sysroot-native/usr/lib/python3.8/site-packages/tensorflow/lite/python/util.py",
> line 30, in <module>
> |     import flatbuffers
> | ModuleNotFoundError: No module named 'flatbuffers'
> 
> FLatbuffers from openembedded are available version 1.12. Do you have
> an idea what is can cause?
>>       tensorflow-native \
>>   "
>>
>>   do_compile () {
>>       unset CC
>>       export TMPDIR="${WORKDIR}"
>> +    export PYTHON_BIN_PATH="${PYTHON}"
>> +
>>       ${BAZEL} build \
>>           --subcommands --explain=${T}/explain.log \
>>           --verbose_explanations --verbose_failures \
>> @@ -32,7 +39,6 @@ do_compile () {
>>           --python_path="${PYTHON}" \
>>           //tensorflow_estimator/tools/pip_package:build_pip_package
>>
>> -    PYTHON_BIN_PATH="${PYTHON}" \
>>       ${S}/bazel-bin/tensorflow_estimator/tools/pip_package/build_pip_package \
>>           ${WORKDIR}/estimator_pip
>>   }
>> --
>> 2.21.0
>>
> 
> Thanks and BR,
> 
> marek

Marek,
Does this happen if you use the master branch?

Hongxu, Any tips for Marek?

../Randy

> 
> 
> 
> 
> 


-- 
# Randy MacLeod
# Wind River Linux
