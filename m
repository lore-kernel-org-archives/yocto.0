Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.8574.1622730148412398310
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Jun 2021 07:22:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=Bq3SPImh;
 spf=fail (domain: windriver.com, ip: 198.145.29.25, mailfrom: prvs=1788950439=randy.macleod@windriver.com)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
	by mail.yoctoproject.org (Postfix) with ESMTPS id BF51738C0960
	for <yocto@yoctoproject.org>; Thu,  3 Jun 2021 14:22:26 +0000 (UTC)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 153EIFIM008192;
	Thu, 3 Jun 2021 14:22:22 GMT
Received: from nam02-dm3-obe.outbound.protection.outlook.com (mail-dm3nam07lp2041.outbound.protection.outlook.com [104.47.56.41])
	by mx0a-0064b401.pphosted.com with ESMTP id 38xanq0y3x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 03 Jun 2021 14:22:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kNFGf4PHopT7vc8Qnva14k5IN7FtEv7FFS2GFTXSY5wC6tWgaxanD24v205YcuQKp5jsa311hUJsiFuY0S/4fLEiWdutNkNZdXQPb4DSy/o2BBmClvfDmYfGQlpeQ1MtYJz8MsuGNeiivbcAHEubbZbMZRCHAoh1fCyH3lTiY/zcifExKuSkrKyJz0PyqQG2ZhaUDoQPwI7d2+tu0UrY9GJ9seLmphDoIYRv7zIklJ+ENc/vJDBjqfcybhdEZe7YitMrrrPe0/t6hJCyhasRXuwfaO/YeFsGoOy/Fcd3mckXqiVybFo0G8TL42p4H1FtHrt2XCR14L0Uk1MRL2hcHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=beaE54hCoDKtT+UmX7bBLvKFnfWemCV22I9CFKxL1LU=;
 b=aLmyyt3jXICvhasWpw/jbInAnhqNH04MJr2cytpqSiIHngcQ1Ei/hTAB9vrkdMl6BHLBE+Qk8te9UgEFVkeu5mVd28qNcS14iMw+LxTeIRAtiy3MPYAgiCBvp2zwwx5Ks6UCUIiYBJCNj+J53ablPlT9pqru7PSSnVrb0kqr3cJCQ4bJ2r11105eWwb4VobrmebVE0Dyl0DQvRmmBOUwKajcQLsJYcsFA8RqSjDsbVMKRtX+mFeckClmFcZg2x68LUt4n/1+RN9/cpL3oYniEBLS8GEGT2uIamFOxwUGvZHerLU3/QWmIDgpnPSgG6sRWXi9l7dEcLS0lD8kfG0m0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=beaE54hCoDKtT+UmX7bBLvKFnfWemCV22I9CFKxL1LU=;
 b=Bq3SPImhpxxbgxluYhH1NYy1EgoUlWYVQ7Zitg+p9BkU7GVptOn6bEOWNG4XFhbESbD0iK9gvQuAMrGGYTaf38JnN8ikoI/AoDRHK7mF5BOfeqxo8IGvmOhpHtzEWNBLyNYR9zbtU+F69ZXYDIImBY84/H8Dn8gqdq1Fwu8IwKY=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB4393.namprd11.prod.outlook.com (2603:10b6:5:206::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.21; Thu, 3 Jun
 2021 14:22:20 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5%7]) with mapi id 15.20.4173.030; Thu, 3 Jun 2021
 14:22:20 +0000
To: Sakib Sajal <sakib.sajal@windriver.com>, alexandre.belloni@bootlin.com,
        richard.purdie@linuxfoundation.org,
        "Wold, Saul" <saul.wold@windriver.com>
Subject: Yocto Autobuilder: Latency Monitor and AB-INT - Meeting notes: June 3, 2021
From: "Randy MacLeod" <randy.macleod@windriver.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
        "Tascioglu, Tony" <Tony.Tascioglu@windriver.com>,
        Trevor Gamblin <trevor.gamblin@windriver.com>
Message-ID: <df149419-5506-d98c-6125-a4782d9561a2@windriver.com>
Date: Thu, 3 Jun 2021 10:22:16 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BY5PR16CA0018.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::31) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BY5PR16CA0018.namprd16.prod.outlook.com (2603:10b6:a03:1a0::31) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.20 via Frontend Transport; Thu, 3 Jun 2021 14:22:19 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 740b1230-9681-48a6-d8ea-08d9269aff90
X-MS-TrafficTypeDiagnostic: DM6PR11MB4393:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB43937E020F030D4E815FA156F83C9@DM6PR11MB4393.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	x56aGUYTnYQWs0KeE5eSX6kWJXSW+EHuQtsMrFmUtWvdaC6v/T2zQhgl6yKt1u6etIicWjlsYPHjpcFqwsQCbPQtRR5SV6fo8Z/FX7OsptS/X5JCGoR1Rm3GEkBBnBdNRFLRpli78EfgoBZ9E5E75dEmmHydQO1TPLE0E9/9EbN5Wbu8q1hsaRn+fQmaCZuVcNSw7XOARVMiFX/6CGzTwvGCOv2IaJfdvCl3uY4kEg4gPPjjv5z0m5xwXInorcYG8fj8SykcQlECnSKNMysZ4KSProcwlhWWNk92rcmjVNPgoMcsTDwyeTn/T4K9YQ50msVK97XaCuEc10Q0LP4kPKXlKzFZwDTg1b/HolW/r3DDje3AKVMzy55+rCYCAMCHb8aKKu6krk/aRZzrg+dKW1IiogdznoRLd4EFHLPQguaNw201Lh1mp5PG5zWuv6Bh4dpnNFow3JBkkf13cKaZO3VaerWJ2dPOQhxMEjLc11VcNib6hpcouISBWRD9V9AxVps4YJYGFfIh8pDBC04kJmS7UMBdSwx/2Ifsbqf1ZLuLDA2YPctKnxxnCxJfrzxQiRlPcrklMiBgKN4apriZaBzOvRo9NH+OBpyRS8jKVNHgEtgVTkxKZE88hnfByFBlLVDVJy5RJV6z6F7u5VSVBk74GTcHKKaU/R1hDev3+1IqmT14QgT2rSBCWA9LbzQAcV5zSt9IoMF3mlFSQZRHqz90HO+mXrZQmKSFlvXsMF29Ngl8NMzVEeTuQKMKus6K0vSD0p94AHIOZOa/GFgnDEDAsNvGsTvtMP1XfJfhTqBduLVFnp7jZdxpkBy9LMOiBe7ljnXNaYTYyEq4aizgM+YQWHZYDbtDZIo470/2p6Sbk2JRf3y6t7PQNErFc3Ych7aKub2DLBCQkwQMBAENNw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(136003)(346002)(376002)(396003)(366004)(16526019)(186003)(2616005)(26005)(2906002)(956004)(478600001)(966005)(66476007)(66556008)(83380400001)(316002)(16576012)(110136005)(54906003)(31686004)(66946007)(4326008)(6486002)(52116002)(31696002)(5660300002)(8936002)(8676002)(6666004)(107886003)(6636002)(86362001)(36756003)(38350700002)(38100700002)(45980500001)(43740500002)(473944003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?OHFtcFhhSkI3WWNRdG1DVHZpZmlPUjFCZGQvbmhqcFVoNDkvanpBZnpsYUh4?=
 =?utf-8?B?UHZVSlJXalZwcUVxc1NHd09PUlFUVTUzOHA2bmZSS2VDeGE5QkdNKzhJb2tK?=
 =?utf-8?B?c1hLNFhzaGtLYk5Ia1FuMmN5a2dvSko3WlRQL0NwOGRiTGpaeE9FK0IxV1VR?=
 =?utf-8?B?TERsM2ZGeVpiRC9oYXdZK25PWS9VZU1Ub3MrNlA1Y29mVVVVQVpBOG1YeEY0?=
 =?utf-8?B?T2I0enR5SlQ2YjBoL3ZqS0VDQitwSXFOa1BacVF0NHdPNDFmeFdHa0YzZ1V1?=
 =?utf-8?B?OW93WjF1Zk9EMlF2dktrcWZIUGFobFBtRXNFOXdwWFJzem1Ta1pWVDB2d1Aw?=
 =?utf-8?B?QmFTZlJBWXdGWFJES0xsN0VPUlVtN09FYUtURVhZNy8rU0pYWVRvZkU0K0Er?=
 =?utf-8?B?WWJlZ1Q1REhTenRzblRvdjBzbEttbWFlZ2hoaFlnKzdGN1NZK0IrVTAybFFY?=
 =?utf-8?B?VHRoaTVVN2dGbWxmNXBYdWlkREFQSmJDdDY2VFhqQnBvWUJSQmdRaXNEeURl?=
 =?utf-8?B?NjNTYWlLVUhFT0VZcWsySVBKck8vZjFOejgvYXMrcmRNeU53aGNNTHhqRlhk?=
 =?utf-8?B?OWxqL1dORjhpQ3RNMGpwYlVRajhXOElyOHZDdDZOR3d3V2VHeTJNTkJ4WkRj?=
 =?utf-8?B?VUk1NFNMZWdPR1pEMUp0RVZjZWNLTlJVRVVnMTlicUtOeENESnVzQm1KM2lo?=
 =?utf-8?B?ZjhxRGl0YUQ1Z3FTUC9qYytQMWpOaU5BV2JpMjVHcGo4bEJZK1AydmQ5QU8x?=
 =?utf-8?B?bmFyWGFhcFdtcC9Eb0c4V3E0ekg2cWhkRHBVeVMxQ0xDUlJaZjQ1emxSQVZo?=
 =?utf-8?B?ai9zSGdBK2FzT1FkM2ovdjhyaXEyTXVCZFZyNHVpc1dkQjV0c1hXaTdickNm?=
 =?utf-8?B?c0kvaVkxcHVmL3p5ZzBsOXlQcEZ1N09GcEhhZkFTSTFjLzJ2Q1RUU05XRitw?=
 =?utf-8?B?RHBOM3JVbG45QS9LMHZSQkhNblJXWG04b3A3eTRobDZ0WlhUd3BaOWtDY0VH?=
 =?utf-8?B?WjBPLy9Ta0hzd0lhdHhEWGp0VlRSejlEc2hxSXZheTE3cDZ3R1IvOHlWdzFt?=
 =?utf-8?B?QmVlczVhTTBEdHdHWFVKbjFCUml2WG1HNVpFbFU5cjVaUXpaT0c2UURyWU00?=
 =?utf-8?B?S2t0UGlRR0o3WjRXdld0MUNJL0hCRFYvVjlYQXpNZmx6b0w4dDArczUrR2Zx?=
 =?utf-8?B?MmV5WUhmNWJ5VU9DQXRoWjhXV3NwRXZOYWZnNlF3V3dQSjROdHFQdyt3aVAv?=
 =?utf-8?B?Ymx6d0plakRzZTgwNTVGYzlIRXpEdGorWGJOMWVTUExtUTBrUFlpd1pxWWVB?=
 =?utf-8?B?UFdUWTRJazMvZEttQ1ZmMksxVDJ3Sko2UUpoN3pITGwrdGtOS2s2eTZOUFFO?=
 =?utf-8?B?bFRqOUsvcFRoYTdkMHRzblZpOE9wK3VvazVMMWVsaFRZNlJpM2QzVkZNSmtJ?=
 =?utf-8?B?aTZkUk1ZN0l6aUFZcWtTVkNRTGpJZTlwckVoYUFtcnRWL3ppNGFKT045bzlk?=
 =?utf-8?B?Q05aTEtWTHpsSjdJbDBjQ2Q5NWJ4UFUxbm85NW9XSTNENDNBZUJ4WlQ4dXox?=
 =?utf-8?B?bmpoY01MOUgyZDNDRkk4OFltSFNXSGFpT1kwZVpFT01iVTl3RjU5S25kMURt?=
 =?utf-8?B?V2FhRFo0bHM0T0lTTWZvV25EZmRUSThxenZlNUVMNHpxS2NCeUsyaXR2K1Fa?=
 =?utf-8?B?clNlaVQ1WENXenRoYlpCcjFXbVNXYUxrU29wQnBvN05GckdJQm82Y09LOGdD?=
 =?utf-8?Q?Bz/SFN5FoX4/ezoPrKWug/mGA5rSdJM2+7dnbVO?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 740b1230-9681-48a6-d8ea-08d9269aff90
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2021 14:22:20.5117
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i/ebVdJG7ulEMJFLmlzZyEqHaf+OE/S1/7w+PU+zGqWlGLTr3G7bNIpNsO42vvJ2mEAHM4Q7lhszvkmNaToAR55DFMyOCjBm1m0W9WYFO3w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4393
X-Proofpoint-GUID: 9eWvvnuIdkNynrCKNZEsHzioiKejlsEO
X-Proofpoint-ORIG-GUID: 9eWvvnuIdkNynrCKNZEsHzioiKejlsEO
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-06-03_09:2021-06-02,2021-06-03 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 phishscore=0 spamscore=0 mlxlogscore=999 impostorscore=0 suspectscore=0
 priorityscore=1501 mlxscore=0 bulkscore=0 adultscore=0 malwarescore=0
 clxscore=1031 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106030099
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

Attendees: Sakib, Alex, Richard, Saul, Randy

1. Sakib is working on using procpath (1) to generate full-system 
process summary that is specific to bitbake builds and perhaps even
YP AB.

The basic idea is to take a single run of top and convert it  to 
something easier to quicly understand (see (4) below).


We are interested in procpath since screen scraping the top output
is likely error prone. Richard is concerned that
using python and this module will be quite inefficent compared to what
top does. That's a valid concern but we believe and will prove that
the module and top are both just accessing the same data in /proc.
Stay tuned.


2. Tony and Randy have a work-around of using taskset for the valgrind
races. We will have a patch to use taskset of the list of 'racey'
valgrind tests. We think it has gotten worse when we added 'smp'
to qemu. There are similar VG bug reports from 5
years ago so we may have to carry the work-around for some time.


3. Add logging to runqemu when qemu fails.

a. Run ps (or top) to see what's happening on the host.
b. collect qemu logs
    In this example:
 
https://autobuilder.yoctoproject.org/typhoon/#/builders/101/builds/2386/steps/12/logs/stdio
   there should be a log file unde:
 
/home/pokybuild/yocto-worker/qemux86-alt/build/build/tmp/work/qemux86-poky-linux/core-image-sato-sdk/1.0-r0/temp

but  s/temp/testimage/ and logs should be under there.

Note that the logs may not always be there so check and
make that clear with a warning when one is missing.
This now is Sakib's top priority for the week.


4. Regarding a LTP test that fails because mkdir failed...
This is described in an email (2) from Richard with the subject:
    Re: [swat] qemux86-64 ltp kernel panic

Alex is going to use gcore (3) to get a core file for the qemu process
and try to figure out what is crazy in the qemu guest kernel.

Did that work Alex?
Where are the core file and related symbols?

5. As a general remark, we are overloading the systems but
we don't want to scale back too much.

In the cases wehre qemu failed to copy in 120 seconds,
what has generally be going on is lots of builds involving:
    llvm, kea, webkit or two, musl world build.
The load average goes over 300 but as you'd expect most jobs
are sleeping.
We think the biggest step forward on this is the job server that
Trevor is going to start working on that.

There are a few knobs that we can adjust to reduce the maximum load:
- Number of build in parallel - currently 3
- parallel make - currently 16, could drop to 12 but
   dropping below say 8 would reduce the test system throughput too much.
- bb number of threads - number of bitbake tasks.

Many times this results in a RCU stall and things go off the rails.


If anyone else is interested in helping, please let me know.
More next week.


-- 
# Randy MacLeod
# Wind River Linux


1) https://heptapod.host/saajns/procpath
2) https://lists.yoctoproject.org/g/swat/message/156
3) https://www.linux.org/docs/man1/gcore.html

4)

If I hack up a sed pipeline and run it on the entire latency-full.log, I 
get:

$ cat /tmp/latency-full.log | grep -v "^NOTE:" | \
   cut -c 69- | cut -d" " -f 1 | grep -v "\[" | \
   sed -e 's|/home/pokybuild/yocto-worker/|/~/|' | \
   sed -e 's|/build/build/tmp/work/core2-64-poky-linux/| 
.../tmp/pklin/... |g' | \
   sed -e 
's|/recipe-sysroot-native/usr/bin/x86_64-poky-linux/../../libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/| 
.../gcc-foo/... |' | \
   sed -e 's|/build/build/tmp/work/core2-32-poky-linux/| .../pklin32/... 
|' | \
   grep -v "^$" | \
   sort | uniq -c | sort -n | tail -30

     42 /~/meta-oe .../tmp/pklin/... vulkan-cts/1.2.6.0-r0 
.../gcc-foo/... 11.1.0/as
      42 /~/meta-oe .../tmp/pklin/... 
vulkan-cts/1.2.6.0-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/x86_64-poky-linux-g++
      43 as
      43 top
      44 tar
      45 cmake
      45 ninja
      50 
/~/reproducible-ubuntu/build/build-st-38234/reproducibleB/tmp/work/qemux86_64-poky-linux/linux-yocto/5.4.119+gitAUTOINC+9e2546ab8d_8997f66300-r0 
.../gcc-foo/... 9.3.0/cc1
      58 bitbake-server
      58 /lib/systemd/systemd
      58 (sd-pam)
      65 
/~/pkgman-non-rpm/build/build/tmp/sysroots-components/x86_64/pseudo-native/usr/bin/pseudo
      90 
/~/pkgman-non-rpm/build/build/tmp/work/qemux86-poky-linux/linux-yocto/5.4.119+gitAUTOINC+9e2546ab8d_8997f66300-r0/recipe-sysroot-native/usr/bin/i686-poky-linux/../../libexec/i686-poky-linux/gcc/i686-poky-linux/9.3.0/cc1
      97 /~/meta-oe .../tmp/pklin/... opengl-es-cts/3.2.7.0-r0 
.../gcc-foo/... 11.1.0/cc1plus
      98 /~/meta-oe .../tmp/pklin/... opengl-es-cts/3.2.7.0-r0 
.../gcc-foo/... 11.1.0/as
     102 /~/meta-oe .../tmp/pklin/... 
opengl-es-cts/3.2.7.0-r0/recipe-sysroot-native/usr/bin/x86_64-poky-linux/x86_64-poky-linux-g++
     112 /~/meta-oe .../tmp/pklin/... mongodb/4.4.5+4.4.6-rc0-r0 
.../gcc-foo/... 11.1.0/cc1plus
     113 /~/meta-oe .../tmp/pklin/... mongodb/4.4.5+4.4.6-rc0-r0 
.../gcc-foo/... 11.1.0/as
     116 /usr/bin/python3
     141 i686-poky-linux-gcc
     151 /~/meta-oe .../tmp/pklin/... nodejs/14.16.1-r0 .../gcc-foo/... 
11.1.0/cc1plus
     153 /~/meta-oe .../tmp/pklin/... nodejs/14.16.1-r0 .../gcc-foo/... 
11.1.0/as
     154 sh
     209 x86_64-poky-linux-gcc
     313 x86_64-poky-linux-g++
     345 
/~/meta-oe/build/build/tmp/sysroots-components/x86_64/pseudo-native/usr/bin/pseudo
     476 /bin/bash
     629 make
    1130 python3
    1331 /bin/sh

the 'one cmd' lines such as, 'make, python3, /bin/sh, tar lines clearly 
need more context.

There's more work to do cleaning up some 'noise' but does
anyone want anything else in the first version?

Trevor pointed me at:
    https://heptapod.host/saajns/procpath
that we might useful but I haven't played with it yet.

A quick simple filter is likely a better starting point.
