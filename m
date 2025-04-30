Return-Path: <jairo.mejiaaponte@belden.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 791A1C369D9
	for <webhook@archiver.kernel.org>; Wed, 30 Apr 2025 08:24:39 +0000 (UTC)
Received: from mx0b-00015a02.pphosted.com (mx0b-00015a02.pphosted.com [205.220.178.250])
 by mx.groups.io with SMTP id smtpd.web11.12120.1746001474957575125
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Apr 2025 01:24:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@belden.com header.s=podpps1 header.b=gaUu7Tfs;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: belden.com, ip: 205.220.178.250, mailfrom: prvs=62158448e4=jairo.mejiaaponte@belden.com)
Received: from pps.filterd (m0264210.ppops.net [127.0.0.1])
	by mx0a-00015a02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53U71Hle018528
	for <yocto@lists.yoctoproject.org>; Wed, 30 Apr 2025 03:24:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=belden.com; h=
	content-type:date:from:message-id:mime-version:subject:to; s=
	podpps1; bh=9dQPOsEiQgm5meILyDmErojV1LqMMtUvPZjp4uSLGso=; b=gaUu
	7Tfsx4ZWdvrc0aeV3DiTx4HJZFZ/OQZ4ZGFUJkIE48dKx3sLN9XB4IHNtZVS9p9U
	bi8r8OFn1RPbCGejHTRoyS4yjlg4FzZQdadGxMb4ZdZQwRn3sm4Yxz29ZT4vN9q9
	yHK/CuTQNmPvM7GJxytbMfuulZZ1Aa6ID+DWoXuGKKsFl1+U78meRnd5MxAuf5XN
	JcrDMFC0NUVTmLApUrDg6uwoCIlqOoVoqzSIwvPWwrFR0BUlAFnRiV3i7suN7QBX
	3VtYth3MgHNzVoZcvILOnXkO0h7iargfp0EZHYOKiqrxXtcWbxgqvNxgANGQCcjl
	lUkQ8hKkcrV4q3LYvw==
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2048.outbound.protection.outlook.com [104.47.58.48])
	by mx0a-00015a02.pphosted.com (PPS) with ESMTPS id 46b6u80tvt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <yocto@lists.yoctoproject.org>; Wed, 30 Apr 2025 03:24:33 -0500 (CDT)
Received: from MW3PR18MB3513.namprd18.prod.outlook.com (2603:10b6:303:53::8)
 by SA1PR18MB6108.namprd18.prod.outlook.com (2603:10b6:806:3e4::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.33; Wed, 30 Apr
 2025 08:24:30 +0000
Received: from MW3PR18MB3513.namprd18.prod.outlook.com
 ([fe80::4746:3d94:564:8d62]) by MW3PR18MB3513.namprd18.prod.outlook.com
 ([fe80::4746:3d94:564:8d62%4]) with mapi id 15.20.8699.012; Wed, 30 Apr 2025
 08:24:30 +0000
From: Jairo Mejia Aponte <Jairo.MejiaAponte@belden.com>
To: Yocto Mailing list <yocto@lists.yoctoproject.org>
Subject: How can I increase the size of /dev/root in QEMU using runqemu
Thread-Topic: How can I increase the size of /dev/root in QEMU using runqemu
Thread-Index: AQHbuah1OJ2PczEL2EyO331jn5kw7w==
Date: Wed, 30 Apr 2025 08:24:30 +0000
Message-ID: 
 <MW3PR18MB3513AD1432554BA95BFA34208B832@MW3PR18MB3513.namprd18.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW3PR18MB3513:EE_|SA1PR18MB6108:EE_
x-ms-office365-filtering-correlation-id: 9c22127e-8697-494e-2393-08dd87c06ddf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|376014|8096899003|13003099007|38070700018;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?Hz6UA8r1AVHpMEeaIpgc74apwWEVBb5oL+b/Rwg98dEoSm7va0svT4Fa9O?=
 =?iso-8859-1?Q?js0bv2ZdFfBenSk4pK4QSmW91p/+mbcSZvAfaz6eKdbT9dfcBEODv9cBSR?=
 =?iso-8859-1?Q?fdrnvEfMVZOl1oK+372foeXXSsPN5R5QrxDreYj5RJ2CGfzsnj/pWYtU+2?=
 =?iso-8859-1?Q?RICkKgOBLeBwN46zIwTW8byYpxLki8xJ0crudMrXLRvlABBLHsAwguoGw8?=
 =?iso-8859-1?Q?Oo7KgswwBcelNayhX0nVDsedTCYMkEWSMtIwnZDNad69bMUKKw93UU81ff?=
 =?iso-8859-1?Q?dZyVFYLwSkgt+c4p3QSDSrcoL/6qIGb/iKRJkg7XEuVyNINVXvD/d3lvJG?=
 =?iso-8859-1?Q?+uvSleorMtZ9t8kapXUAbZPr7U2/n6mIvYTBcUDpYi3+477VmPz3hvViO2?=
 =?iso-8859-1?Q?NYedkgS3XUpl8nUfPNUMRnASFxNJFlyHHAWo/1CY3gCY+CXwuzQ+O6YTI4?=
 =?iso-8859-1?Q?+gLmKZtTbUQRM/8OYyC9YBgR7y3Lo8uKx2OXRTFmnih4LwqOl10ac74zjb?=
 =?iso-8859-1?Q?U/82Yr5cF760FRm8U9nr4fdBV0JqXj3P8ISYuYVv/If8XroeHmkwuay0eY?=
 =?iso-8859-1?Q?eJgIb5nq1JP8SxtLK+0voc2rcX8GSkijZ2wD6SzqyqW34hCHP6+NxGT0W7?=
 =?iso-8859-1?Q?f+mewYnUVg86ZE1Vdr6dFC/rRs7WJ80pNGfPKB6JLDdFrF+Ek6MJ5vhA25?=
 =?iso-8859-1?Q?kMNY21TTnwn3r/LOmhxrTaBdKz38aXBSRCMl6Gctvj2ko7iQ9bDafvvcV+?=
 =?iso-8859-1?Q?VGeRwBOHjiMPlB816uSWv9m2JNcBLQWnFCYGwxQb5SWA/bFYDAaKyR79UM?=
 =?iso-8859-1?Q?bpj7N9rHPyeKmFqiVzUd9hS9Qzt5L6xTY2WVHGzKToXurrAw+uaycTQxYv?=
 =?iso-8859-1?Q?zNzBNfGG0HaVcTp3HWWBkv0bKf4tWpM4Ryvgf9uGo8y476YJptcRxktU6U?=
 =?iso-8859-1?Q?a6EFhRaoEGYqmIkcuSe+C73McGqNgNMIaJLIcuPrs8dsKJENo0KP21FsMV?=
 =?iso-8859-1?Q?gSIq+K1xVIgK+Tl3IEX6muej1kAqX5nJJh2bh1v64Vxfea4dJ6YNj1vieI?=
 =?iso-8859-1?Q?Nq6CTxgXNRVi7b7dbjD6EhasrA9CocrX8wfFvy7s8Ep2ekNK5Abwqo3J27?=
 =?iso-8859-1?Q?DLtnkjwFtclTdQCsWxtPBhwAOv73wX0iClTu9ajCQpEOfLYwjEL5+KATpB?=
 =?iso-8859-1?Q?vv/+Z0o82BIw/zFu5kZvyz541umPcx4LVOWHMI/lpns0LH4cVAkO0OkafR?=
 =?iso-8859-1?Q?OGdXX5QXh0WU25ngxwHonfeeH3vdthz1s0aC8OcQ7zHDUUye/PtFohNUpg?=
 =?iso-8859-1?Q?2z6m8NN+kYT8jX62YimZb6ooAWQzq8s+WrVaEAeHU2m4xmB6VQnTZJ0o53?=
 =?iso-8859-1?Q?umVnInePOOpb18wUHILm6X6IaS34GYSFMBN7DL47FTNT/OLNX2FOCQp3pA?=
 =?iso-8859-1?Q?0mLqheixb6CDgdZZK5wMFFjcPOV0hMZ/rQMgrVbZoQMiDq0xZm6CjFJU1c?=
 =?iso-8859-1?Q?w=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW3PR18MB3513.namprd18.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(8096899003)(13003099007)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?biivYxX+QH+wkOxMfBPQ4tN+vF035ecG8wAYxQcu3irmzGh2etnLvk8R7J?=
 =?iso-8859-1?Q?KF6xPhOv/pbvksXUxUSmgwuQeIEcHXsHxtCVGMcVJBT6VTYgPRVOe2t6GP?=
 =?iso-8859-1?Q?XH1oyJuFvRnWXmeTlq4clopW08k9NDLE7O5XnEhLW1sRUcv5zdNxN0cppI?=
 =?iso-8859-1?Q?s0GniySQ9MIKP7/SqluLTIJQoNQfguH3PNCzdWNUnFFbYnqK/2dIo8SkK4?=
 =?iso-8859-1?Q?+TZ9nCoqqBwfxri0ZG6jtMN1QST0LZKOhVT8tCYMHTvIl9xODAMk/jEOzs?=
 =?iso-8859-1?Q?o0ilGDhVT79TWZl66drEwxX/J8R00mCe5xsIRXd8+5GrP0moO/9R+UU2Vy?=
 =?iso-8859-1?Q?/8lLPvcejI7HOx797mbyuS7V1x+MgI8UgvEtJuoPen/8xPi2EFeFqAhXkr?=
 =?iso-8859-1?Q?0ZLuyDyEDz5fXyBqYy1sWdkFA3/jLrpxnSZ9m7gp8Rew/I65WZRgMCQsvu?=
 =?iso-8859-1?Q?0qdKzsCQdvQDxYVLCU2iq4i45kIQU9dSoh2zz4TmMqZsyhGMAS50/FtBYs?=
 =?iso-8859-1?Q?3i1D+lew4jOOljZk+LKHX+9gXcXTRMyhK1vV8hYZtoISxsU2P0PrmfLOl+?=
 =?iso-8859-1?Q?9yg5+MMYFJiu1GVJhBHEGv8SSvwGjJneFdfMMx1q2tT4BcczLoeSNZCT44?=
 =?iso-8859-1?Q?ttycFdwJiqJAbKcyc/VZi4sXzqQbAIJMLKKTgw4xaXHH4/Y4qEaQuNT9bT?=
 =?iso-8859-1?Q?7qH35qecFilqKa9xC13gvnadTNNlVMDKK3qsa6oN5mhpm8vVfuJaTPLSYJ?=
 =?iso-8859-1?Q?j2ppfA3WgQgoqwjNylKxRhFXPUXtG7+uhlxG1l52Hm7UyFLcBKu9QQ1ygV?=
 =?iso-8859-1?Q?AoPkIlJzhWw4DTKSXW85/E7HbELnK0KmsGOk7aDs4Qjyx+Ev4WoIyF8Z7E?=
 =?iso-8859-1?Q?X2mo9+TfYJuJoiafYlvrL5m+FP4i61mG+XFyxeRYySUYs3VtQObOVCJ1Fo?=
 =?iso-8859-1?Q?Zv9O7OHsi/frU2/3iv7aedcxeV4Tr4AXJFf9y+yFEhb3EPVxNmeSRT8qme?=
 =?iso-8859-1?Q?ag21VgiCyFo4eUsu0j+mAws0UmFwaU/Fm/zY/I4x+FzRsUBKSka5rY6bv9?=
 =?iso-8859-1?Q?NSPYFx+hsEZhUFm6dz3nuK+n+qr3WwhSIIMbiXvbqVjLSfmLC3DuoSyr0A?=
 =?iso-8859-1?Q?EV+zwhhKwxNQg1Aj6X2U2GKLU8FqtNta7KdFoCIS1tmo+i/ddguBvQ6R7n?=
 =?iso-8859-1?Q?zOBOIybuwac1/2QZidfyNA0OGLglUZrmeb9QGM+PbV515evivtXTjPGitR?=
 =?iso-8859-1?Q?Gh6ARYhTH6AHeUdJMM3r38zsuWzPrH36Imv92VUUCpSEGJX0Tb9nuVEkLn?=
 =?iso-8859-1?Q?dt832Qy28oH5Kj0kyNqrGj6qY6xxUnWpgfSHfLsNQtdOCbhTiSoyM3zOPJ?=
 =?iso-8859-1?Q?tDIYUACC+HIY7/at/IZxzSQvnHWs/4nDSRWtP0/G98aW5yWgRqblC5Nx80?=
 =?iso-8859-1?Q?szEZbg0PcCE6PejPtbyTeoKsps/s96yFFqJH8ieatzYVv47BExoD27xKH+?=
 =?iso-8859-1?Q?DMn9TlE+3pNBZQ2LAq9KPFMCurOARWInPenB/1All7vVcm+pXyqvfHHd6w?=
 =?iso-8859-1?Q?TSSGiEU4yY94YZRWpYMfp+t0LWRcU0fGnbFGN6tXxtie42ix/DiIKaAZ06?=
 =?iso-8859-1?Q?EB7iTrfhdSYNCgK0rHHxJp8iCD5Dgid4RmU7s5mcNdlJPTwW+K2sSt7w?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_MW3PR18MB3513AD1432554BA95BFA34208B832MW3PR18MB3513namp_"
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	us1YJPxbM/i6nWBlVNUGlCq0AClK847Ixnzwurzl8Yws/d+9SieglMJKqEDNW+thgoOrDlURFpkf1wkxp+bKHtuPe2gVZAU2/9ughqKqWKpshrscgfUTRNNy4prtZceOLo2IMcsh0FF9d9eC2ADREMRdgla2Im/a7xJKgFnSrt9hHNVng8XteQ/oumyGKBqQSp81lSQLeqRR2J2xQoTierJu853zH2s9yTlKAHrTeV80W2db7XKMzKDjJbU5i+Qj9fRcOOca4qInNb3BxOMpwL70A/qzhhT6zK9sWo75/seeipp8ATyDlvu/TddIBKMnjo9pazBdJPP3NXXs0ZDBfdoaao8M911hHIbsE1xFRmHIBry/285z5fWbEM6pNBjogUyGxiDhxkJeAg0RUrdEw6Oi+tGXTy+andYkWucCNijXhgy1y3V7zjwXmnwS5WRZ2h7THjZd3NpLHtQ1Gc2ImzlziKTgI8LybpVAC690o1uaflJxrGDNjPf9CuNo9r5AXzKXkxG031Kd3Dj03qKCZSuL3p++QnadUmNJvcjrQ8XC97mHc6s1CsuWrSDo9U96oeXiBdO1cI+f2IxKMWgcd8FoYmxnH5hpeOAgqm5hohc7qV6opccu4HlIGNDCDJtsgLhtc5JSoa+3f24IbwKBxg==
X-OriginatorOrg: belden.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR18MB3513.namprd18.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c22127e-8697-494e-2393-08dd87c06ddf
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2025 08:24:30.2852
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 0f7367b1-44f7-45a7-bb10-563965c5f2e5
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fC937LfQTmVudif7Ti7nuGlYy9w73cDm30wQQxLkNBJH4kE2P2EgCdcnNiolCZ5rGfljgQUG40AtwJ/9LgPBdZqG98fnnDA9Q0hBuLmJc7s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR18MB6108
X-Proofpoint-GUID: InfXJ19pF3yNFDZSByzwdjLQYdAmJNAb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDMwMDA1OCBTYWx0ZWRfXw9BoHXJROOMe HLZP1A59vXbAiq5TSlG/yDN1sOQF+53N3dz0ieo1XLLpA+VI+nzkAx6d2O2phc7Qt5GnQ4Z45Se 2rYE0SZ46UiXRhrf1RweEWVHfKAd2u03Tsp8bt6mBE1SPvbFux/ZN0DjOXP3m6Q90NILpTBKusi
 xvnygFlRmIoYluZHQqVyE3Gqek18eWnFMeWPMfgGjzWF4CLyA7hdDGdhjfuXXxfFoP+WjVHxBHU 51es4RB+i81AGkiNRHmIge8IION6owoTXk4kfnysEewMmlouZe/pedoJHt7dZh9OhSNBZYaxyNk wq3xWozf68yKPtIxJUikzpT5s/CFqFC+pDz9+oweM8b8Jht8J1uRNzug+YN8ddDh883TXZaNA+4
 W9vcBBc0uB0DOBd2wXlwf+ulRYyVk5PjQh5uM21KmR8ELcuXVDLGlgE/2YR0/iFi4Xi2yzka
X-Proofpoint-ORIG-GUID: InfXJ19pF3yNFDZSByzwdjLQYdAmJNAb
X-Authority-Analysis: v=2.4 cv=CvC/cm4D c=1 sm=1 tr=0 ts=6811de41 cx=c_pps a=IJ1r+pqWkCYy+K3OX67zYw==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=o6YCxkf3k9DB861K:21 a=xqWC_Br6kY4A:10
 a=XR8D0OoHHMoA:10 a=mCf63rc527wA:10 a=Hx7Q0IvJAAAA:8 a=WDlp8lUfAAAA:8 a=cPdYJ0tVxu2M0as76TYA:9 a=wPNLvfGTeEIA:10 a=ct3FsAQtyHetURLWFUUA:9 a=ZV5WRUqJsppTAUwL:21 a=frz4AuCg-hUA:10 a=_W_S_7VecoQA:10 a=lqcHg5cX4UMA:10 a=zY0JdQc1-4EAyPf5TuXT:22
 a=c9US4nDvsE1AjufpXSQ_:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-30_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 clxscore=1011 phishscore=0 suspectscore=0 adultscore=0 bulkscore=0
 mlxscore=0 mlxlogscore=999 spamscore=0 impostorscore=0 malwarescore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504300058
X-Proofpoint-TriggeredRule: module.spam.rule.outbound_notspam
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Apr 2025 08:24:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65268

--_000_MW3PR18MB3513AD1432554BA95BFA34208B832MW3PR18MB3513namp_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi all,

I want to be able to use devtool to deploy a recipe on a running QEMU insta=
nce to avoid creating always an image for the QEMU while I am working as I =
normally do on Hardware. However, I got always the same error

ERROR: insufficient space on target

I tried to use the variables of Yocto to increase the size of the rootfs li=
ke IMAGE_OVERHEAD_FACTOR but it does not change the size of QEMU itself. Is=
 there a way from the runqemu command to increase that size? At this point =
I found some QEMU commands to do the process, but they used another executa=
ble. I thought to use qemuparams parameter for the trick, but I don't know =
which QEMU commands are supported, and which command should I use for that.

Any help is welcome, thank you for your time,


Jairo R. Mejia Aponte | Embedded Software Linux Engineer

Netmodule | Hirschmann Automation & Control GmbH

Location Eschborn | Frankfurter Str. 10-14 | 65760 Eschborn | Germany

jairo.mejiaaponte@belden.com<mailto:jairo.mejiaaponte@belden.com> | www.net=
module.com<http://www.netmodule.com/> | www.belden.com<http://www.belden.co=
m/>

**********************************************************************
DISCLAIMER:
Privileged and/or Confidential information may be contained in this message=
. If you are not the addressee of this message, you may not copy, use or de=
liver this message to anyone. In such event, you should destroy the message=
 and kindly notify the sender by reply e-mail. It is understood that opinio=
ns or conclusions that do not relate to the official business of the compan=
y are neither given nor endorsed by the company. Thank You.

--_000_MW3PR18MB3513AD1432554BA95BFA34208B832MW3PR18MB3513namp_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="iso-8859-1"

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Hi all,&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
I want to be able to use devtool to deploy a recipe on a running QEMU insta=
nce to avoid creating always an image for the QEMU while I am working as I =
normally do on Hardware. However, I got always the same error&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<i>ERROR: insufficient space on target</i></div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<i><br>
</i></div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
I tried to use the variables of Yocto to increase the size of the rootfs li=
ke <i>
IMAGE_OVERHEAD_FACTOR </i>but it does not change the size of QEMU itself. I=
s there a way from the runqemu&nbsp;command to increase that size? At this =
point I found some QEMU commands to do the process, but they used another e=
xecutable. I thought to use qemuparams
 parameter for the trick, but I don't know which QEMU commands are supporte=
d, and which command should I use for that.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Any help is welcome, thank you for your time,</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature" style=3D"color: inherit;">
<p style=3D"text-align: left; text-indent: 0px; background-color: white; ma=
rgin: 0px;">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);"><b>=
Jairo R. Mejia Aponte</b>&nbsp;| Embedded Software Linux Engineer&nbsp;</sp=
an></p>
<p style=3D"text-align: left; text-indent: 0px; background-color: white; ma=
rgin: 0px;">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">Net=
module | Hirschmann Automation &amp; Control GmbH</span></p>
<p style=3D"text-align: left; text-indent: 0px; background-color: white; ma=
rgin: 0px;">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">Loc=
ation Eschborn | Frankfurter Str. 10-14 | 65760 Eschborn | Germany</span></=
p>
<p style=3D"text-align: left; text-indent: 0px; background-color: white; ma=
rgin: 0px;">
<span style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService,=
 Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(23, 78, 134);"=
><a href=3D"mailto:jairo.mejiaaponte@belden.com" id=3D"OWAb8b70ec2-9e9d-c98=
6-9421-2adefbea6452" class=3D"OWAAutoLink" title=3D"mailto:jairo.mejiaapont=
e@belden.com" style=3D"color: rgb(23, 78, 134); margin-top: 0px; margin-bot=
tom: 0px;">jairo.mejiaaponte@belden.com</a>&nbsp;|
<a href=3D"http://www.netmodule.com/" target=3D"_blank" id=3D"OWAfdb74d61-7=
905-172a-61e6-466ba55351fc" class=3D"OWAAutoLink" rel=3D"noopener noreferre=
r" data-ogsc=3D"rgb(12, 100, 192)" data-linkindex=3D"1" data-auth=3D"NotApp=
licable" style=3D"color: rgb(23, 78, 134); margin: 0px;">
www.netmodule.com</a>&nbsp;| <a href=3D"http://www.belden.com/" target=3D"_=
blank" id=3D"OWA8964949e-0c13-9ea9-60d2-e31cba7a7694" class=3D"OWAAutoLink"=
 rel=3D"noopener noreferrer" data-ogsc=3D"rgb(12, 100, 192)" data-linkindex=
=3D"2" data-auth=3D"NotApplicable" style=3D"color: rgb(23, 78, 134); margin=
: 0px;">
www.belden.com</a></span></p>
</div>

<HR>DISCLAIMER:<BR>
Privileged and/or Confidential information may be contained in this message=
. If you are not the addressee of this message, you may not copy, use or de=
liver this message to anyone. In such event, you should destroy the message=
 and kindly notify the sender by reply e-mail. It is understood that opinio=
ns or conclusions that do not relate to the official business of the compan=
y are neither given nor endorsed by the company. Thank You.<BR>
</body>
</html>

--_000_MW3PR18MB3513AD1432554BA95BFA34208B832MW3PR18MB3513namp_--

