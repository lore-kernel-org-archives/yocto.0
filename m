Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F53CC3DA78
	for <webhook@archiver.kernel.org>; Sat, 14 Jan 2023 01:24:49 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.106944.1673659486245741476
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Jan 2023 17:24:46 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com header.s=pps06212021 header.b=BDK4s7xq;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=0378eccbc7=randy.macleod@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 30E1CXCB004787;
	Sat, 14 Jan 2023 01:24:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=message-id : date
 : subject : to : references : from : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=9dxeOrd4g3jJjB0cNnxTNdDNsiOR3WuRKXhuNnqFzQU=;
 b=BDK4s7xqOTw7cX5EWBlXVpwilCYH+gyRfidqGOnuthZdP3PraEBlZLqqJund2Om0ASrC
 MGBii4VkElWCWg5ZxIs2P4K3tuvn15bnPNAXDgptY9O5TWJaFalXwORHVZGAz5FuL1H/
 joOd7UyVXCHAHlq85zc5WYj0AVUcwX9c2K9hmNdXL07t6O+D87Uo1LPyPphubbqZ6DlU
 gSqWKsOzMDRWyyg+NjJTmEyR/tcdLqhLlEPA8utyNMC8P9QCshpSq7Xjq4inB9SRb1z5
 kIZ7PNaU0MMnejIjIh5QOR5ZMfAQKZaxiQtpdcgBZcA/n3y6XSba+WkUIftrQu1WyLYa zg== 
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2175.outbound.protection.outlook.com [104.47.59.175])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3n3hm301xx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 14 Jan 2023 01:24:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UA1s/y705CfrVIpgjJgMODtH/iQw8Wi9WE3PMkRPpwnVfLnuepmUjvvf0uwoXep7+ziTgWzr7WCiDxD/sF6Fyi9Xc71a7r81UmOzk+gZy7c3ibJftzskbmVMoTkR0ECznUvOhtJmPCC5J3mbU2AcLWbR4sPVcuiwLoPF7V89lwOzlxsMywe26YyVbYofchaQKJhR4SAqmfN/bi7Iaibg/B9lU+qXyNWowB7Iobaiv+9+bRshjRI1xS3GH8GRevH7eGjW4dAyRqBcJEAGy5uFczsBGFG2equAU/OTWb76PCywGuJcK7F92mdlMnuBQQ1vpBS8SyJ4FWqAidR1C6lu9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9dxeOrd4g3jJjB0cNnxTNdDNsiOR3WuRKXhuNnqFzQU=;
 b=idfFxHQrbw14f8/FbA+rpw9qb1APLHJwTgpf/19OkERcIau6ZAi9yWq6EiCCt3OvBauzbHKMYl2clvfm4whE4J+AdhEH7r1hEkDhqwlDfJCdF7NMZWwvMwkoK8ILGuMeIqbBzGSKKs2yOH5Ax1DWN9pL5GXxDNObSECsVpZNUk6HkS+z46S72uDIpN/ti4d8QoUP+orya+P83eO5s1+oCD180xynecnmhoC7ij6X/2pkeCtEVL9IannQ3lQvBKcbY+AwndFdnsaBQ6KWJf7WEMdx3rE69Ia6TPS4w1Eg7U6fDWcaQK2kmLmsXsKjvrej65Hkcmq8rLAu/KHCRq0Kyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by CH0PR11MB5250.namprd11.prod.outlook.com (2603:10b6:610:e1::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.19; Sat, 14 Jan
 2023 01:24:42 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::e794:335f:5e0f:8d36]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::e794:335f:5e0f:8d36%6]) with mapi id 15.20.5986.018; Sat, 14 Jan 2023
 01:24:42 +0000
Message-ID: <b8a7cda2-32bb-d4ed-1a8f-d83efd8986d8@windriver.com>
Date: Fri, 13 Jan 2023 20:24:39 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [yocto] gn native do compile fails
Content-Language: en-CA
To: jovanbosic95@gmail.com, yocto@lists.yoctoproject.org
References: <CAMKF1spzfc8f1_T9BT6cpzhUUXLAqoqpVG38RO3-fwcx-NOLfQ@mail.gmail.com>
 <2751.1673595794834528629@lists.yoctoproject.org>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <2751.1673595794834528629@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: BY3PR10CA0016.namprd10.prod.outlook.com
 (2603:10b6:a03:255::21) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3994:EE_|CH0PR11MB5250:EE_
X-MS-Office365-Filtering-Correlation-Id: e2d502fe-e16d-4a97-475d-08daf5ce1ce7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	acwGG/N7xzph3ckHQpIinCSXXxkWxQuUJXmGIdSmIYcv/iw0dHO7JzRJbUdh5ZuYDFzsgFlNNTdmRAVW+ObrzPJCOTI7HwWxova/wEE3Ov7Gp4CURtF5vitwD4YsSknJgMfQf6B8C8r48Jr86H3tXPZ+0co+sTvZWobehpqs634U7EubshdmUMds2J4Bu9k5wfCX2l+oDBtYDDT77KdPEJBh+undV+n5nJCsGYt5lzQMn46Ep+loQ4FsbxKmhtG3Ae2GQUyq4YU6fWWxBWAb1LMXGL0Q1P1WTEWdFYP7ZmvUSI6QB0QSIcVIBfVtLil51XFL+6ca+z46gpmSXEvGD46JDfh3hRkNmAZGNyPlunIBsPeyl+QSoeKUVza224C0leKdxBfmn2/4bzdiov+qXX0Xk+ORTBi3VrkMMAQQuDnt5GW1Gt8T69DlFzvmAU3S3Zss8BNJsp5oZ91zaK9hmCmOMR7Y+2jl+/wUQZN/Y/EzknpaR4gmw5Gk3JpYFZRFSGFrk8JG+AZSGjWMCon2pdkuFpUWSUzegCYdA5Wp45BxbXRWD7xFKfbksZYl7EfuW3aAIoExBJtN3Kgrwn50yrfRA2ACA4WE5WOsIa6vylGfJdh8JPVXnFBOKrC9f3bHuS0YgLAQT61wVAhAFizlmok/4TfIQksxa6njrClV9qZGpd5L/4MVCqkuE0qYX4VmO5haFiyJev9+zxEscI9zfD5O0LiJhA174dUEKfwOxmQSR+Ee6A5WImvkAFcsHF0uJsY0/s2C4xpyOeidX8J0B0U/jwJyOrxxz2M9ZDu/Thc=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39850400004)(376002)(366004)(346002)(136003)(396003)(451199015)(83380400001)(66574015)(31696002)(38100700002)(86362001)(2906002)(41300700001)(8936002)(5660300002)(66556008)(6666004)(6506007)(478600001)(6486002)(186003)(6512007)(26005)(966005)(316002)(8676002)(66946007)(2616005)(66476007)(53546011)(66899015)(36756003)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UTBaOTMyeXlsVllnTXdaK2pQbVh5VVdvQUREbkdYbmRsc1JUU2RoYnRVbDl3?=
 =?utf-8?B?L0xDQ1VSc09TSmgzcHRya2g0N2V3OWdjc1BXTkcyb3NTR0h0S0Fock8xeUlx?=
 =?utf-8?B?TDc2V2VkdndwWnpqSFJMa250RmlOS0N1WG15QWRvN05nY1dCQncydkZ0d1lM?=
 =?utf-8?B?N2xHZHdxUU40UTVIVTZHcmFGZDA3c0k5OFhMWHVtZGtkQ2FVVnZJb2lnR3RV?=
 =?utf-8?B?c3JXTjFFSVpzOXNXaTA3TVQzZ0tRaU9yZ1AzTCtydDdDU3NvcnF5UWM3eU5R?=
 =?utf-8?B?bi8rUDE0K1h1WDNPNVhoMnNpQ2xydnc1MlhsTTZ0Rk1iZjkyUVRWV2tiYzht?=
 =?utf-8?B?aTByTm9DZEdaUVdJZ3A1WHpiSXdPOTdWTzlvUFhLZjZIZHVhVEY1eS9OaHp1?=
 =?utf-8?B?QVNlcFJZcDdCUXhaUzdGKzNBRlJaVzNsVDRHVVJsY2Z0cktSWGF0a2dLbU5u?=
 =?utf-8?B?MC9WcUdPNXA3NnV4d0VQdnNnam5ESWgvTExuZzJTczIzdHBSOGIvWVlRUmJ3?=
 =?utf-8?B?bjZDYis1U3UrOUQ0L2s0bDRlM3Y4eHBuUjFGZURDU3JLclE3bllwT3JieTk3?=
 =?utf-8?B?eFVveUVSR3NFZ3E1TXdFVXFaekpDZWx1WWlmZXhIUnJ3QVV5dGJZMVdMQ1JC?=
 =?utf-8?B?eHFTdVdnRWdrbFFqMHFXTk1mV1ZHM0tTQ0dLVjBTNEhQanFOZktEZ0I1em5G?=
 =?utf-8?B?dkpvMmpXREgzaU1PeTM4Skx0T2Z0RHA2U3lPTFJ6end5b3dncTJZTkU2WHNk?=
 =?utf-8?B?UkZCd1RVdFB5R3ZvYmRkMGF0bWJ1bzhnc3hIWjE3RU5yK2FsQTJWaTRpb0kr?=
 =?utf-8?B?eTJ3eG9ZNFVQZVo4bmE5OStubnhBYm1ERzVoT0xCa1JqUGV5clpkMHlRb09U?=
 =?utf-8?B?OXVwOHdlbm4wc09nRE5FMklObm9FUkE2VXhVOFNOazFKbzZnbkF6NFJVSkF1?=
 =?utf-8?B?eFdkSkQ0dzEwY2NCNGkwanFBbXpUZEJ1M1N2a2hHeGVKcDFJY0hBRGM5VWRa?=
 =?utf-8?B?UTVZWitES0x4dFp5U2ZXNEg2TFJNbmRYWVQ2czV2UnFieVhJVm5yMjE1UEg3?=
 =?utf-8?B?dzFGdzR0QVdNeTZEcnZyU1B2M2prUzFQdlJGY2h2TVkrem9tK2wxNzFNWVBi?=
 =?utf-8?B?aVZ2UHJLczlCRnlBOVVvNHZRYmJYZkZ0U1doSlJIV1hzb3ovZXRlZU11M2Fx?=
 =?utf-8?B?cVhxaFhKTnduelFNL3o5MEpiS2Zrc3phbUZrN3NFbkhVWlk1WGxDYXA2RkFC?=
 =?utf-8?B?MkFHVk5SZmhEeXZ2bmk4TWtqclZqOHlmYVhNZ2V2TnNqa2ZydkZJdTVxbW5R?=
 =?utf-8?B?bWhzNGgwQXl4L3ZwdFRrbVFVVlBqUDE2OW41cFpJUEJ5TkJqMFdac1JVVjE0?=
 =?utf-8?B?aktyemtOdWxTT2pDTTF3T1o2ell5K2xEVkNXcTlFSWNRTHlaWUJNZU93SkI4?=
 =?utf-8?B?VlNBZkZETWpYY2FlUWNac2Y1K1l5blpUZ2RIYTAzbFBLdWc5V0h6Wk9IbGY0?=
 =?utf-8?B?WFd4VzJ0ZjBRbW1SRkV6b2Rnc0h1Z3pTblIvMGxoOG1oTVQyeUVsMTVFaWVO?=
 =?utf-8?B?VHprVytDaW1qV3VzbVd0TkdLRVBNL3dmZTJWeUlTSmUzQ2VPalMvUWFqSjNa?=
 =?utf-8?B?WXp3RWwzNVR0citwakw0eDNCZHFkeDdWRFZobzNjZWMyM2JjN0pFQVlFdVB3?=
 =?utf-8?B?amtad2pjRERGWVJyY3pxdHVOK2FackRObkJzN2RMTUlLWlEzUm44KzhyRFJY?=
 =?utf-8?B?WjhuaW03UmJTbkFCclZkbEV1M1o5aDV1eTQxRXJNVnRJR05qMXlvbVg5Mnor?=
 =?utf-8?B?RzllTWlWRDJsbGRYU0FsejZhR2tFYmFMYWMySHZZWnZUMUt6RnV2NndNemRR?=
 =?utf-8?B?VmJJMy90MnhublZHd1ZIVGVlSVFwZHZtWkN3dU5hTUlTY0pxeHhSaVpKelA4?=
 =?utf-8?B?dHR6UjgrRVdEWXg4TEVKbmMyS2FkZHN2OTFPQjFKaHpBUHlmR1hzbDFlWjdt?=
 =?utf-8?B?NTNVVnltSVAybXhuR25ncEtLb3k0Nzd5VURqY2VqWExZLzluWXQ4bUFCdlNQ?=
 =?utf-8?B?dHFLMGt6NTJZZkFwQnlVck1xcTRpTzZkMkxYM2YwcnNvOWJPYk9hVnRlVXZs?=
 =?utf-8?B?dDU1OXZ6NFlBZ21yZGQvUDVsNGNHUURzRE4relFKNTQ4Rll0a3VHQzBjRjJr?=
 =?utf-8?B?Wmc9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2d502fe-e16d-4a97-475d-08daf5ce1ce7
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2023 01:24:42.5052
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MHzArBBOPqNRERgdDzoq3ueYKDV3zIQUtjEmMbguZPZZFv4YK1HLszOmwFTuSUmnAJN9ttGMTGZ1M7+aoT5p+UZp9TfqlaPEDW9AaD6apTI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5250
X-Proofpoint-ORIG-GUID: JnlflF1Adw4wZVsu0edl7rV4FdQnYzAJ
X-Proofpoint-GUID: JnlflF1Adw4wZVsu0edl7rV4FdQnYzAJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.923,Hydra:6.0.562,FMLib:17.11.122.1
 definitions=2023-01-13_12,2023-01-13_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 adultscore=0 clxscore=1011 mlxscore=0 bulkscore=0 impostorscore=0
 spamscore=0 priorityscore=1501 phishscore=0 malwarescore=0 mlxlogscore=999
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2301140007
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 30E1CXCB004787
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 14 Jan 2023 01:24:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58985

On 2023-01-13 02:43, jovanbosic95 via lists.yoctoproject.org wrote:
> This is my gn-native_106.0.5.249.119.bb:

Aside from:
  1. the version number in the file name, and
  2. the DEPENDS of libcxx-native added to list
your file is the same as in
     meta-chromium/recipes-browser/chromium/gn-native_106.0.5249.119.bb
=20
https://github.com/OSSystems/meta-browser/blob/master/meta-chromium/recip=
es-browser/chromium/gn-native_106.0.5249.119.bb.

and that works well on all the distros that I've tested.

What is it that that you're trying to do with a different version?


FWIW, on Ubuntu-22.04, your string header file is from:

$ dpkg -S /usr/include/c++/11/string
libstdc++-11-dev:amd64: /usr/include/c++/11/string

You and your co-worker might compare the output of dpkg -l or whatever li=
sts
your installed packages.

../Randy


>=20
> # gn-native contains the GN binary used to configure Chromium.
> # It is not released separately, and each Chromium release is only=20
> expected to
> # work with the GN version provided with it.
> require chromium.inc
> inherit native
> S =3D "${WORKDIR}/chromium-${PV}"
> # bootstrap.py --no_clean hardcodes the build location to out_bootstrap.
> # Omitting --no_clean causes the script to create a temporary directory=
=20
> with a
> # random name outside the build directory, so we choose the lesser of=20
> the two
> # evils.
> B =3D "${S}/out_bootstrap"
> SRC_URI +=3D " \
>  =C2=A0 =C2=A0 =C2=A0 =C2=A0 file://0001-Pass-no-static-libstdc-to-gen.=
py.patch \
> "
> # The build system expects the linker to be invoked via the compiler. I=
f=20
> we use
> # the default value for BUILD_LD, it will fail because it does not reco=
gnize
> # some of the arguments passed to it.
> BUILD_LD =3D "${CXX}"
> # Use LLVM's ar rather than binutils'. Depending on the optimizations=20
> enabled
> # in the build ar(1) may not be enough.
> BUILD_AR =3D "llvm-ar"
> DEPENDS =3D "clang-native ninja-native libcxx-native"
> DEPENDS:append:runtime-llvm =3D " compiler-rt-native libcxx-native"
> # Use libcxx headers for native parts
> CXXFLAGS:append:runtime-llvm =3D " -isysroot=3D${STAGING_DIR_NATIVE}=20
> -stdlib=3Dlibc++"
> # Use libgcc for native parts
> LDFLAGS:append:runtime-llvm =3D " -rtlib=3Dlibgcc -unwindlib=3Dlibgcc=20
> -stdlib=3Dlibc++ -lc++abi -rpath ${STAGING_LIBDIR_NATIVE}"
> do_configure[noexec] =3D "1"
> do_compile() {
> python3 ${S}/tools/gn/bootstrap/bootstrap.py --skip-generate-buildfiles
> }
> do_install() {
> install -d ${D}${bindir}
> install -m 0755 ${S}/out/Release/gn ${D}${bindir}/gn
> }
> INSANE_SKIP:${PN} +=3D "already-stripped"
>=20
> I have libcxx-native in dependencies and I have installed C++ runtime=20
> but I am seeing the same error.
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58973): https://lists.yoctoproject.org/g/yocto/mess=
age/58973
> Mute This Topic: https://lists.yoctoproject.org/mt/96241718/3616765
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [randy.macleo=
d@windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

--=20
# Randy MacLeod
# Wind River Linux


