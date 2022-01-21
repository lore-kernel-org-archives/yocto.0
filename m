Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D506C433F5
	for <webhook@archiver.kernel.org>; Fri, 21 Jan 2022 04:45:11 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web08.7615.1642740310191479589
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Jan 2022 20:45:10 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com
 header.s=pps06212021 header.b=GBvoRtll;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=80200e2199=randy.macleod@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 20L4j3qX022824;
	Fri, 21 Jan 2022 04:45:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=message-id : date
 : from : subject : to : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=YdQ1C73oa2x4xirYEWTz4EIRYEqfiKuH3gofPW6ux54=;
 b=GBvoRtllXhZkJVmhHLwRT9t71bQp61sGBqojdWDRQKBqsgL/tEko8Qma0d+0X5PW2+hi
 b/UGcu/MsjwLQu76QaHQHCMICprMULatfrUitcFF3mTBbzEAyM5Nz+4xkwiFjF+a/z6b
 kCqpWwqUa1ftu5DthX4G/OxovSUp2dLA+EbGNGeZUP6hiMg9u5V7VTNBlIdkMSjO5Rmx
 ITVMbSgJG9ynO0HfnAZ8InNJXJGe17/+ikKzBBVNvQHQN63/8Fih85/XWkl0at2X8Gq9
 zAL+wc1KUwBtEQX+g0TsbOX2DV9vPRXLPNmXUaa9HTG3lroZL71i2VwKhR+x0ECZgadw Ng==
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2104.outbound.protection.outlook.com [104.47.55.104])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3dqhx0r48t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 21 Jan 2022 04:45:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MWWAdKprnyr1AeHnbO86dUQBsaZC1C1mfnDbJ5nC0OIoCE4mb8lTOZ/weAkURzrQUoOCXLW/Ko4N//zAu55vgBNN/RCYzIisVl62fJiELrL6Ls/lMPc9yx0HS1mUBD5P0JoVh/8BopaaYSKH36031smW5wiA92n19FH4st+I00AC3FyfKMkVrhZX3Sq3A8VKcpB7kFAyX6mmuROLldZ4jtCLCedZ4uZN3iExk7//qwFiuJcI/nJVf58D6jAEnokMcYgkHzW1CaejHyoRU8Mya6Q1t5NIRrynhuHqseLqt4H++gIUk2krhBciHvwpiuf9xdRMDldK944o1okAUHXe2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YdQ1C73oa2x4xirYEWTz4EIRYEqfiKuH3gofPW6ux54=;
 b=fv4M01t1wcBYgjqh1OWERiya2HrGCFz12sLN/iU15bS1grlnk2yVvGOJ9/71r+evTAYCxIqkHitshP1BuqBEBQKh+1J5m9QmI8b49EV0N9ajxW4MjN+VXUANWgreLY+47N2W/UkBhqKxR8RDDJuhV4mvAQGhAfTNbQvu7N4o3Xk+7KvthGW3N0d1B2ovpt6P7+MCpxWyCEN7IUrhP5yiElOC7kqbo2BNZZ7Omn8JOLd+/fAKL8sgsz4binAVjC2jgbXkHv1ShbJME1kyTv90Pdi+FvLJNekB4Sremoij7Ck9SQRm6cc6UA9Aoag6jGZyWfGAB9olBla7IjBrUM6ZKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by BN6PR11MB3908.namprd11.prod.outlook.com (2603:10b6:405:7d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.10; Fri, 21 Jan
 2022 04:45:00 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::f4ad:a867:7f2:8958]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::f4ad:a867:7f2:8958%5]) with mapi id 15.20.4909.007; Fri, 21 Jan 2022
 04:45:00 +0000
Message-ID: <411993a0-ee7f-76fa-c368-17632963e45d@windriver.com>
Date: Thu, 20 Jan 2022 23:44:57 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
From: Randy MacLeod <randy.macleod@windriver.com>
Subject: Re: [yocto] Building embedded app for host machine
To: mauro@faresoftware.it, yocto@lists.yoctoproject.org
References: <3ab72885-035f-f3f6-a0ff-ffe6b97fda90@faresoftware.it>
Content-Language: en-CA
In-Reply-To: <3ab72885-035f-f3f6-a0ff-ffe6b97fda90@faresoftware.it>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: SJ0PR03CA0225.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::20) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2c1a34e2-948b-4b28-b555-08d9dc98c86b
X-MS-TrafficTypeDiagnostic: BN6PR11MB3908:EE_
X-Microsoft-Antispam-PRVS: 
	<BN6PR11MB39088B92A17A08860625B220F85B9@BN6PR11MB3908.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	UlZxpp5k6v5Kj/QO117lkXnHwDtUUKO3IoGC0CR+ZKQDBqwAb7sidoMpHfEfamqRVNkNyykICMZpWNHt4JCZwS3qHxJYMyYw5QS6UUeUhdynJ0aKAlbpnsfn0ALGrmUOpobTUTZJi8UgDGNZdZdpCeEFBRmHok4vY2905PuvsR048Xfe0xBBOpY32kVFUX7vnDmqIqcidWbIlLfhChFD0myw6A5M2Q6m1HUxCoxh/6pmZwg24OC4M/6fFVcVpOFm03lAc5tYaURh2oQW58wh3Qz1chrpldCu+vdCjWRx2UHVyvBB+FhP/yQCfPczOGL1WW9rEC1ou12G85NA/ZEJ71E6pnPiFPKIspBuIEs9rUGicvQAQ+h2bfwvJ4jSMEjmRlepBV3qtb0KAgsV88Yy01cXnf9Afm7YyhGQFn4bM7RHlo8/flQYAn11EcOe8mCEuKiOxWtcbhnzSKkGEXPKYqETUXmKpuFGqe7Q687fjxopLfLrCyhTBbKPHs3iXoHgvuyXI902C4/mQKQkGLCBNmxfR3k+vHPEUbgkbBV3LdPONn/PBt7/oTJJbeiu1i9cK/GpGaxTQvrCj+bKYUxtpWpJ105vbiK4q1ZubE1NmBdXfdVuEPB6OWl77Km+Fg9ey1+ENn9+GGpiNGM+EyW6bomni/LWufwnC9W7dc5OXYx2fIgdmyNFHLDPOHQYUXJEEg9EkwWWHhVdjkjUBkA9/QYuXz3J0t6DFtfV3ljZvKlZN/jTQH+H+ghMbz6HCCy2WhJoPdfESjrOg0S0Ue6bPUTDx85mn9TAdODmt9UgvIQIAp0ySF16CaGkxJpouai7G2cvbmZYuOlPEb4Hu0PvbCWkWNvvl18fBi32ilc4XjiDM6ixe2QtEBswQFE3/crYGKbQOpD6um8v3sZXrLe5NQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(66556008)(66476007)(83380400001)(6506007)(53546011)(66946007)(6512007)(6486002)(966005)(2906002)(186003)(8936002)(5660300002)(31696002)(6666004)(508600001)(86362001)(31686004)(38100700002)(2616005)(26005)(36756003)(316002)(8676002)(52116002)(38350700002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?L1RvWXAwRjEyTnZ2ZkZKNFhFN01QMEdoUkRBSG1ZSm9pb0NoaTBGOEdsc3Rt?=
 =?utf-8?B?QVBYRXdDK3IyYm45TlVLYjFjNDdBcm9mbndwNkNmMFg1Q3JDalA0dDBrSlNB?=
 =?utf-8?B?SWN2WFJ0a2k0OTUvSkJPbXBhUk8yVkRsNlkvQ3pBS0dDTDlxTGlzMExyL3Vz?=
 =?utf-8?B?bVZmR3VYRHJhUG1XdHRmVWRqZ2ZKcU1KZ2ZlTm8zZ3M1SjdLZUJXc3FQRjFD?=
 =?utf-8?B?VldJY2dIaiszM1VmdEhQVVJPQWZ6Y1NhbENLZGcrTW1BNTlSVmg4Y2dQRzB4?=
 =?utf-8?B?U2hrQXhsZzlkQkFyamZRS3hncHVDSXRwcWNzY2NsQ2R4YzhaMi8wM0xnRlpw?=
 =?utf-8?B?bHJJSUk5ZmtkK0hnaDlZNUkrWVp3Y2J5b0QyUk9uRjFlU3JqVUFMOTJzUW1P?=
 =?utf-8?B?VlJUaGJhWm1tSFlHSnJsSzhZN1A5akVOUWI1WlMwUmNWdXJ2aEtuc0x4VjNq?=
 =?utf-8?B?elNhaDNtWkdEN1QrSGlQUHhBMzRodnB5bS9oam5DSnBmNCtFTmdhY3A0cXVE?=
 =?utf-8?B?Q0szSUpMTC9hTmMyWnNBVVJadjlDNlNDdjZVNmxQK3NqK1RaazRJUnM2eG1R?=
 =?utf-8?B?dUFBcGU5NFRnQkx3L2thTURhdVUxV3J4aTR0ZmtrdzlsWEduWE1nMGFWOXhL?=
 =?utf-8?B?d001dlZHYWFzM3RLVSs0U2hGZGdlRml2OGltdWN6ejRZL1ZYTnpaRHBxK0l6?=
 =?utf-8?B?VjBlVERWTGxidk4xdEZmK3dEeUw2UEttZ09VTWZMWE9sZEVVd2hZMU9ZRHFM?=
 =?utf-8?B?L0JjTU1WSGQzcjJIeDhQaUxCaXFQcmNSbE45RjZBQjAzTmhXRGVZQjQxNjZw?=
 =?utf-8?B?bkdmK2dRUVR5Nllwa0VzSVFjWFBjeW1PM2JsbytCWndBSGk0aDRBYnd3RVRj?=
 =?utf-8?B?ME9YUmRxZmQwRFlFWWdXSkhnV3U0SnAxSUZBQXkxc0lMaGxiUm1WMDVUZDNL?=
 =?utf-8?B?YlR1WllkVGR0SDk0MTdUeTJHVTRNQmdUcFFMcHpwM0QzanNVUk5rbzZSRWtP?=
 =?utf-8?B?UDJDS3V3Y3lTTHMzVEFzSHdlYkFpOWkyNzM3SjVFSTYrZWNqc0greEVuYmkx?=
 =?utf-8?B?cVRpQ01XdmRNRGllcGNod0dnZVNId0dQVkJtN3p4d2FiTTNiUy9nYmFPNkFY?=
 =?utf-8?B?UDYyVTNVU09yWXVvSmJhbzlWRld6SEUrMDdJYXhVamFEenAxTmVUY0ZGREla?=
 =?utf-8?B?NVl2WnViVGMxL0thOUwxVytBaE4yWGpMYUM3UnQrZEFKUzk5ZFZVODhsajhD?=
 =?utf-8?B?ZG9KVzBVVkdIdUJvOHIyQmp6M09UbXZUQTc3dS9Qa2E0Y2RsWC9BeU9zWUFY?=
 =?utf-8?B?R0N4Ry9DZ0p4RUY2Y3c5OXV5c3grcHpYaG5XYUxUOGN2dHJLdDVBL2lJN2pw?=
 =?utf-8?B?V0E1cVNiNFhZK2VlaDRFT1lkc29TSmhUUnhGWm10WE9Rc3c4Sk8xTzNHTEpj?=
 =?utf-8?B?bmIzSWlncDdnS0kzYmNlSnZMaTNIYWtDYUVMWVdlUkM2N2FZcnNuVDVVOFE2?=
 =?utf-8?B?U21tNnk1MGZMbCtIWWZ5R2tucS9xMHVraGJoVSs5bDJDMzh5WFpuOGMzNUVN?=
 =?utf-8?B?QlpjNmxPUGZOdGxPMVRxNWoydnE3cUNVUUw3Qno0QVdhczFiYWt3emtWYmdV?=
 =?utf-8?B?U3BpWG9QZlBJTkdMbzIza3RNaW1mOFJoS0pEdi9RUUNZRUtwc1NUQWhqVjYv?=
 =?utf-8?B?L3k5R2hiemttVFN5dG1yWUZQZlgwMHBOR0dHS3ozWWlBZi9vTUZRSWluZUwr?=
 =?utf-8?B?cGt4Q1F2MmVqaTV4aGdXUmsvcW9aeTJXSzg1SUljZTZObHNMSDlBVlR6L3RS?=
 =?utf-8?B?ZnE2WjF6YmtsV3Q5S2xKZW0vQnRFRy8rZDFFKzVCYUM0U3FqRTQ1My9PemlC?=
 =?utf-8?B?andBRmZkVDZCLy9tK3RSM2c0QWFNY0grTFRSVVRXNVE1QkNENUorRXU1LzRC?=
 =?utf-8?B?dEdmQlpWaHlyQlBJd0oyak0rNm9wM2xlQzgyNHM1UjdvaU9ueVA5NmhSL0lY?=
 =?utf-8?B?RW9OMzM3QW45NnlIV2pzMFVvd1ZybGQ0SXV2MFVsaHRoMm1BNk4wOXhkL3NV?=
 =?utf-8?B?anVVY2pyUzJORlJEVVBWNG1ZUU5hZWZKMDJIOWtFaVRPTStJcUZtaFovM2tn?=
 =?utf-8?B?MVkwOXhhUVp6dlJ1OTJyWVI2REZtemNVakJJSjZuZHJUTXh3bXNBa1pFZm9h?=
 =?utf-8?B?YVpycjFldFZmMFZLaHAxekdveTdDcTF5M2ZoTFBuUis1cU1ESUpDWWwzWEQv?=
 =?utf-8?Q?fKjHyR8fF7bWHbmI3dC8Oogh3eHIynD0pFu04qrvcs=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 2c1a34e2-948b-4b28-b555-08d9dc98c86b
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2022 04:45:00.6839
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 hlvNQOMbM5yUEXAngfQfOIGCn4h39lA9oPIphmDdSkZ58MSgQaf4WJwyMvKEXJIAMfIR2CJGS+1ZaJtBx743ZlE8sU9wXmvd5EUYjTgb2pE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB3908
X-Proofpoint-GUID: 7Vr2HkCEiMm6_l3Ql9q8XNwtk2QCH16h
X-Proofpoint-ORIG-GUID: 7Vr2HkCEiMm6_l3Ql9q8XNwtk2QCH16h
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-01-21_01,2022-01-20_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 suspectscore=0 clxscore=1011
 phishscore=0 priorityscore=1501 mlxlogscore=999 mlxscore=0 impostorscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2201110000 definitions=main-2201210032
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by
 mx0a-0064b401.pphosted.com id 20L4j3qX022824
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Jan 2022 04:45:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55936

On 2022-01-20 10:24, Mauro Ziliani via lists.yoctoproject.org wrote:
> Hi all.
>=20
> I have this doubt.
>=20
> Is it possible the make a toolchain which can produce the same app for=20
> host machine?
>=20
>=20
> I try to explain my think.
>=20
>=20
> I produced an app for imx6dlsabresd with qt-5.6.2 using x86_64 as=20
> SDKMACHINE
>=20
>  =C2=A0Can I make the same app with the same qt-5.6.2 but running direc=
tly on=20
> x86_64?

Hi,


Yes. Likely you just need to do:
$ MACHINE=3Dqemux86-64 bitbake your-image
with the right configuration and then run it in docker. See below.



There are at least three options depending on what your goal is.

1. use qemux86-64 with kvm support
2. maybe use oe-run-native?
3. as above, build for an intel MACHINE using the linux-dummy kernel.


1. use runqemu -- you might know about this already.

This is how most testing for userspace in Yocto happens.
The default target is qemux86-64 and you boot up a fill VM
that can run graphics as well of course. See the docs or just
run:
$ runqemu help
$ runqemu kvm graphics <other options>

but you don't want the kernel overhead.


2. oe-run-native

Let's deal with the idea of building the -native recipe even though
I suspect it isn't the approach you should take.

See:

https://wiki.yoctoproject.org/wiki/Technical_FAQ#What_does_.22native.22_m=
ean.3F
and examples in oe-core such as:

so for any recipe that inherits 'native', you can run:
$ bitbake app-native

Sometimes there problems with this aside from needing the full=20
dependency tree
to also support -native. There are lots of examples in oe-core of=20
-native recipes:

$ find meta -name "*native*bb" | wc -l

29


Consider quilt:
$ bitbake m4-native
...
$ bitbake quilt-native -c addto_recipe_sysroot
$ oe-run-native quilt-native quilt

Running bitbake -e quilt-native

/usr/lib/python3.6/importlib/_bootstrap.py:219: ImportWarning: can't=20
resolve package from __spec__ or __package__, falling back on __name__=20
and __path__

   return f(*args, **kwds)

Usage: quilt [--trace[=3Dverbose]] [--quiltrc=3DXX] command [-h] ...

        quilt --version

Commands are:

         add       files   import   previous  series

         annotate  fold    mail     push      setup

...

And for 'fun' I checked that vim works too:
$ oe-run-native vim-native vim.vim

Anyway, that's just an example and it's really mainly suitable for=20
simple command line apps in my opinion.
I doubt, but haven't checked if any of the recipes in the meta-qt5 layer=20
support being built as -native.


3. docker

The option that makes sense to me is to specify your host system as the
target MACHINE or just use qemux86-64 and build a container image as=20
explained here:

https://pretalx.com/media/oe-workshop-2020/submissions/AN87VC/resources/B=
uilding_Containers_with_OpenEmbedded__Cur_WqbQgmv.pdf


Reading the pdf, it seems one can just set this in conf/local.conf:

MACHINE =3D "qemux86-64"
IMAGE_FSTYPES =3D "container"
PREFERRED_PROVIDER_virtual/kernel =3D "linux-dummy"
IMAGE_LINGUAS:append =3D " en-us"

$ bitbake core-image-minimal

copy the tarball to the system where you have docker working:

laptop$ scp=20
mybuilder:/path/to/build/tmp/deploy/images/qemux86-64/core-image-minimal-=
qemux86-64.tar.bz2=20
/tmp
laptop$ docker import /tmp/core-image-minimal-qemux86-64.tar.bz2=20
core-image-minimal
laptop$ docker run -it core-image-minimal /bin/sh

sh-5.1# cat /etc/os-release
ID=3Dwrlinux
NAME=3D"Wind River Linux development"
VERSION=3D"10.22.03.0"
VERSION_ID=3D10.22.03.0
PRETTY_NAME=3D"Wind River Linux development 22.03"


Note that I've done this in our WR Linux dev environment but it should=20
just work for any recent Yocto distro.


You can run just one X11 app using:

laptop$ xhost +  <-- lets anyone connect to your display so careful.
laptop: docker run -it --rm --privileged --net=3Dhost \
    --env=3D"DISPLAY" \
    --volume=3D"$HOME/.Xauthority:/root/.Xauthority:rw" \
    wrlinux-image-std-xfce \
    /usr/bin/xfce4-terminal

Careful that you don't inadvertently start a second display manager.
That could really mess up your system input and force you to have to:
$ docker ps
$ docker kill <container-id>
;-)

../Randy


Marketing: WR Linux uses this to make app containers easy:

https://docs.windriver.com/bundle/Wind_River_Linux_Open_Virtualization_Fe=
atures_Guide_LTS_21/page/xvn1630019013539.html

>=20
>=20
> Now i make this, building the same qt version for host machine, but=20
> outside yocto ring
>=20
>=20
> [I hope to be clear, mu english is terrible]
>=20
>=20
> Best regards,
>=20
>  =C2=A0 MZ
>=20
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55932): https://lists.yoctoproject.org/g/yocto/mess=
age/55932
> Mute This Topic: https://lists.yoctoproject.org/mt/88560927/3616765
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [randy.macleo=
d@windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


--=20
# Randy MacLeod
# Wind River Linux



