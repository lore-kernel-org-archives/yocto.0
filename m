Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.465.1626489590321434375
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Jul 2021 19:39:51 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=asTLmzVa;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=2832432288=randy.macleod@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 16H2dnQE025947;
	Fri, 16 Jul 2021 19:39:49 -0700
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2176.outbound.protection.outlook.com [104.47.59.176])
	by mx0a-0064b401.pphosted.com with ESMTP id 39um9b027m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 16 Jul 2021 19:39:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kf4aXhGIYQsIissR00u50bzpQOovoCDO7CwaZ8s4kCeWM5wQE7qZekUBuaSUMMfwtQC+DhpOCJfmqWDsySxK5GUR7j79QP5GdN/KwXbm6M9bfy+XchnNIgq+W85qo7QnWT9fHimw9ypRbYLlyFYRsBGJCj9FxYvENlMONkCClTTomdP0ricbK2H1e/X0wNUQ7epTes7d2pFlGIQK9AwwHv5fy+k3uguEB45rLYjEFIhcLqyzCDPdeE5CRV6aEdyO4GvZVLZfsvSmHsquBRqQ2lXTkbxJgGss0XUCKG14JmJv7MgVnitvBCma2JBr3kl0BNGGQnJDxOYw37SyVqOS5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0hF2T/W0vP6z1pt40x/F6CX/9v0wHswcVfRkcD7hV/k=;
 b=aF64XCoUjrTB4Zi3f+0omCLlZRP43Xu0CckAQNayqS09MSmxt0tQGEmE/hH9EIKqXvFmAzQ5OoJVNq12TaoW5ZaEU6iBdw8siKipDbaVPqria//9I34vlzEv73tUz9tHrQpZP2XgAILPur8Abvpy/sXRAaZeYKqVmuAAkbVxgYBF8ZhX9qyFQb26c7jptAtCPr0Q9uVEnPOtE6PqrXLKaFDwcdlEuwc5tkwwejJSQ0HyxXxl2BucTyDlM9jK1+0U18CsyReCu3DPoW+k7lUOw6DvLB0BmatbgJDE534o6VMR6HZbazv2V2E9TiB+IGyEXytSyGfkcZKteIJgn4UThA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0hF2T/W0vP6z1pt40x/F6CX/9v0wHswcVfRkcD7hV/k=;
 b=asTLmzVaoDs75G4d7FuT+98xbXawij4oPxGTCHrzp5KqIS9hG56NzICXFg+TkaRdTISHUEbz91zJ7QN+ND0kPLgqOGTHuRuYWk+0I3NgB54sLgGuME6JZBf8pHfCkR+U8LFPhX04C1nosf/+OgI2VIWFqeUTBEv7WTp6ZYqRMzY=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB4473.namprd11.prod.outlook.com (2603:10b6:5:1de::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.21; Sat, 17 Jul
 2021 02:39:46 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c413:9f51:c32e:a579]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::c413:9f51:c32e:a579%6]) with mapi id 15.20.4331.024; Sat, 17 Jul 2021
 02:39:46 +0000
Subject: Re: [yocto] valgrind failed do_compile during bitbake
To: Michael <youhour@us.ibm.com>, yocto@lists.yoctoproject.org
References: <OFB9643837.3B7703CB-ON0025870C.00772D0E-8625870C.0078ED16@ibm.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <ff262033-b119-5790-9808-99266dea52cf@windriver.com>
Date: Fri, 16 Jul 2021 22:39:42 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <OFB9643837.3B7703CB-ON0025870C.00772D0E-8625870C.0078ED16@ibm.com>
X-ClientProxiedBy: BYAPR02CA0010.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::23) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BYAPR02CA0010.namprd02.prod.outlook.com (2603:10b6:a02:ee::23) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.21 via Frontend Transport; Sat, 17 Jul 2021 02:39:45 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1bff9f4a-4a7c-4962-f873-08d948cc23bb
X-MS-TrafficTypeDiagnostic: DM6PR11MB4473:
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB4473A4EB78997B891902F116F8109@DM6PR11MB4473.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wy24hRMq2d+nM7APOO1B6zXCctAO9Zv0xM1oKbu0e3XyNZVoi57en/04v+NID/ZIVU0CVYOs5LkQveRR8XCv/aMEn3rWXQCE+tsI42Fx7jmC0IZnZmnteIvBYd219AK3L1LJR+ovmebSiieKcSi6Kgo/wBYf4oCeKM0sPvRq3hzsdJh+tEKKvA03YypClrQQBMuCu4OPPa9Bi3P+zbYsZ8YiRzosIZnpVjFWDSSoh1uMHtsdfZzJeRjLXObqQIX0WEM70wp2yZD0+rB8o5GDnS7Fer63ZllKw2K6EZUz4pJRLGq1AswMvec/rtQICgRTItRZivK4RhzVLI+kBOTwnbu6O0eJqFJr2mVsi0Ol/dMxAc+7puyLfLJIykY6qmSTyx4qIqdP+90MtWJGRuEz1bqBQ3bxtG7KAeMG/pXwSg6qwYu1gFQFVx8MJuVC3N0O+efN2gnlFRK8iOraidlDf6oNFpnm1jXzyWn2tR4PAJeKZyLWWJxGfh/UCVfq9KfAntAwBfnxKU57QtoeP7ktrFfXvuW99hnwtdJtY+23pVu6X5+S9B9Lf/gv1Aggvj9oeYGtoxSxg5uT48+jtxrhkxVEygefJrrqZUlFfLUvc+VDRasDjEBdLhysSwEIwZ6SeM9QrkdDfivJIjh5TGi7R5DsWdvav+1939ByhSl4JMg25JQgV4XbZUTkOdrIBry78H+0bGvPvSQAo/ZjGQbvCsN1Q8Fi2XfdIE+7f48oPRAiNrt6DQ/yOhFouN9MemViViqC3EYDMqoYzs6z4DXhCPvdheRaOygXoTzhqq7Az8Av6j4blPP3ZDFMrGHR+Um69MEIQoPuOI2oAa3YisaIMWKB/upW2QjKsPexjT/7uHuGcdXX9qD0yFPIUmgqGCE7
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(346002)(39850400004)(376002)(136003)(396003)(38100700002)(38350700002)(83380400001)(36756003)(31696002)(53546011)(31686004)(186003)(966005)(26005)(478600001)(86362001)(8936002)(8676002)(52116002)(6486002)(6666004)(5660300002)(66556008)(66476007)(66946007)(2616005)(956004)(2906002)(16576012)(316002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UlZpQklXMHBvbC94TVdiQ1k1Rzh4cU9ERTZSRGV3VXkxWXBTekNTVjhGbldD?=
 =?utf-8?B?eW1MdUc2RndTeTNKak9YS0l4NEpxU05tTHozS3g0MXBnZzgrS3JEQ0JaM2Iy?=
 =?utf-8?B?cU5ycUhkMTk2aW1peU83OWVka0trQzBMZlBrelNkUEwzMzByRlVRUHI5Wm11?=
 =?utf-8?B?cnlXaVFPKzlsM3NsRjZXQktZNEE2NjBQcVozbkV5YXdBUXhqM0J6NWVHby8y?=
 =?utf-8?B?K3pDM1FlN005NTdTVnlrSVpUTVF1NzB6a2Q4ajRuS2hhQXFhMnVqMFFpT01M?=
 =?utf-8?B?QjZOV1lBajZlQ2RPOHRSYzhYbnYzTGZ3QzN4UERQdUlJNzJqMDVUSllBdmlt?=
 =?utf-8?B?NTE1Zi9nTVljNkVHK21FcWJUMEpZVVVtVmdlVVRMMmNDRjZkMUdBdGhIVHBQ?=
 =?utf-8?B?MFR6bkJVYTRsK0NxclRjZzFaK3R4YUJsRHAwNWVhUkgvN0ZCUk9HQWtUd1ZL?=
 =?utf-8?B?dkl1eWNKSHVScTFNSktMeDBvcmlhUE9vcTRmZGw2end3ZXFaRjlocWlEWlQ3?=
 =?utf-8?B?NzdScDg4R2FuRFRNb28ydG4vN0tDd0Q5OTBvdTNXbU44S0Nxd3B0Q21Zb2tX?=
 =?utf-8?B?OFBHTS9SMEEySEp2MWYzQ05nejAzZ2ZvNzM1V1c3b3I5Ymo4RDlkNXUzVmlS?=
 =?utf-8?B?NGZ2dThSZ1dZRnZRM3JRUm9HK3FWUnVSOXhLTU9ZSmtDOGpIcEVra1BtYmpN?=
 =?utf-8?B?MEV4d0FYZ2pVK2l0V2FKaE1zRytlTmNiZk9kVE04aVBKZ3VHRE1MbGhnUURs?=
 =?utf-8?B?dExaekxGT3Zkb0djUEpPZ0RwM1dpd1ZURkN4bVRYODFVTWpWb0hDak1Qc002?=
 =?utf-8?B?dFdvSWt4RnpGMGN5c2x5Z0NiTWp5aDNmTGdoOW1vWlJ5eXVmd2xMVW1vV29V?=
 =?utf-8?B?a24wdGx4L21BdkxxZ1ZaNHRaUkFhVmhwSVJsbEJnbU9vY3BLSkM1dmQ0WkZx?=
 =?utf-8?B?Z1pkZnRUSm03QzJhWXdqV1M4YURlNHJrWTBQcFNVS3V3SHIyMlZkL0o2R2di?=
 =?utf-8?B?cXZKWnVKdmNoYXRuNGg0MFMvQWk1QjFkOVJOcmg3WTJBZG8yQkdReU5sWTRC?=
 =?utf-8?B?aDNuV1VZUVF6QTAraDlsZDltWDhiZWJ3MnpDMnpLbGYzN2lLTUFiY0VyTVBL?=
 =?utf-8?B?ZGdYM3g3d1dIbnlQeUxkT2V4cUtYM3RMNzJYdUIrUHMzZnpyMnI4Z1dqNFBK?=
 =?utf-8?B?U0tXRDd2dkZSYTZ5L3N4U1Fsa2hWUTA5NEVuMGRReFp3TWtNUDFveGR0VHhR?=
 =?utf-8?B?YjZreFEzV3pjTjhISlZsVG9EZTFFQmJCd2s4U3RYTXIzOHAvZHJXRGxvaE9N?=
 =?utf-8?B?dFJVWmNQME1NTUFJN0tySTJjWjlYK0xoREpvd0x5T2FkM0R3M0NCeHpKeVZh?=
 =?utf-8?B?K0xENFlqNDFXRUdnZWNKNk8xRmRIalNUVXdJYmczSTBFVHpmMFNHOXh2V2Fj?=
 =?utf-8?B?RzFlTDNhSVpoOERtMmlKMDNTL2dOcGc4clowS3NMdjNlQ2RKY002dHJneDJj?=
 =?utf-8?B?UFVZYkhQTzVweGs1STZqOUdzdG5CcmZQMWtvamJMTVBhMkgya05SbXQ3K3pr?=
 =?utf-8?B?a2taMWRSTXQweTdtbnJrTURMLzA1eHVsankxOXlXbThJaHFoVVdkZE5jWUFV?=
 =?utf-8?B?VFBSaDdkNjVGeVpUODZ3K0haY3ZsMWJ2MEJpaHEvem1OWTRrZkhJakFvcVE2?=
 =?utf-8?B?UThxRmNJSExIR3NzQXU0SG5NME5MZVF3QzVPOVF0SU00c0U1Zmk4QU9Yc0s0?=
 =?utf-8?Q?/1FqxXkUwSks5mB2+1lq6yB3XWn6f/xBB/d4n5w?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bff9f4a-4a7c-4962-f873-08d948cc23bb
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2021 02:39:46.1634
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iYd6TLkn2qH90Caxe8EcBcHF592JCVxXCh32hX3WHeda63ADHuFX0clDzDMkxSQFjX2/SUcv2hZR+7fdqbD7zG2haZJwRpbDNNX3RgxsRQA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4473
X-Proofpoint-ORIG-GUID: XPklKU2r61ZhpLNk-o98Dtq-jqd77gZD
X-Proofpoint-GUID: XPklKU2r61ZhpLNk-o98Dtq-jqd77gZD
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-07-17_01:2021-07-16,2021-07-17 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 impostorscore=0
 malwarescore=0 priorityscore=1501 spamscore=0 adultscore=0 clxscore=1011
 lowpriorityscore=0 mlxlogscore=999 suspectscore=0 bulkscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2107170013
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 16H2dnQE025947
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

On 2021-07-08 6:00 p.m., Michael wrote:
> I'm using Yocto "warrior" version.
>=20
> It is setup for powerpc-nf
> DEFAULTTUNE =3D "powerpc-nf"
> DISTRO =3D "poky"
>=20
> Everything seems to work find until I enable "valgrind". =C2=A0'bitbake'=
=
=20
> fails to compile valgrind
>=20
> ************************
> :
> | collect2: error: ld returned 1 exit status
> | make[3]: *** [Makefile:1034: <file:1034:> memcheck-ppc32-linux] Error =
1
> | make[3]: Leaving directory=20
> '${WORK_DIR}/powerpc-nf-poky-linux/valgrind/3.14.0-r0/build/memcheck'
> | make[2]: *** [Makefile:1345: <file:1345:> all-recursive] Error 1
> | make[2]: Leaving directory=20
> '${WORK_DIR}/powerpc-nf-poky-linux/valgrind/3.14.0-r0/build/memcheck'
> | make[1]: *** [Makefile:834: <file:834:> all-recursive] Error 1
> | make[1]: Leaving directory=20
> '${WORK_DIR}/work/powerpc-nf-poky-linux/valgrind/3.14.0-r0/build'
> | make: *** [Makefile:703: <file:703:> all] Error 2
> | make: Leaving directory=20
> '${WORK_DIR}/powerpc-nf-poky-linux/valgrind/3.14.0-r0/build'
> | ERROR: oe_runmake failed
> | WARNING:=20
> ${WORK_DIR}/powerpc-nf-poky-linux/valgrind/3.14.0-r0/temp/run.do_compile=
.23806:1=20
> exit 1 from 'exit 1'
> | ERROR: Function failed: do_compile (log file is located at=20
> ${WORK_DIR}/powerpc-nf-poky-linux/valgrind/3.14.0-r0/temp/log.do_compile=
.23806)
> ERROR: Task=20
> (${REPODIR}fips-build/meta/recipes-devtools/valgrind/valgrind_3.14.0.bb=
=20
> <https://urldefense.com/v3/__http://valgrind_3.14.0.bb__;!!AjveYdw8EvQ!O=
Y_7dx2G2egduSYaa7nftLqPZTpn3EC40Z_N7J8MPkv_dz7hS4AnmQdr1YAPEw_-jJ6cSQ$>:do_=
compile)=20
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 4091 tasks of which 4089 didn't need to=
=20
> be rerun and 1 failed.
>=20
> Summary: 1 task failed:
>    
> ${REPO_DIR}/fips-build/meta/recipes-devtools/valgrind/valgrind_3.14.0.bb=
=
=20
> <https://urldefense.com/v3/__http://valgrind_3.14.0.bb__;!!AjveYdw8EvQ!O=
Y_7dx2G2egduSYaa7nftLqPZTpn3EC40Z_N7J8MPkv_dz7hS4AnmQdr1YAPEw_-jJ6cSQ$>:do_=
compile
> Summary: There were 2 ERROR messages shown, returning a non-zero exit co=
de.
> *********************************************
>=20
> Many link failure...
> **********************************
>  =C2=A0undefined reference to `__floatsidf'
> undefined reference to `__muldf3'
> undefined reference to `__ltdf2'
> undefined reference to `__fixdfsi'
> undefined reference to `__divdf3'
> undefined reference to `__floatunsidf'
> undefined reference to `__floatundidf'
> undefined reference to `__adddf3'
> undefined reference to `__fixunsdfdi'
> undefined reference to `__nedf2'
> undefined reference to `__gtdf2'
> undefined reference to `__subdf3'
> undefined reference to `__eqsf2'
> undefined reference to `__eqdf2'
> undefined reference to `__floatunsisf'
> undefined reference to `__divsf3'
> ***********************
>=20
> Seems like many people were running into this issue for many reason.=20
>  =C2=A0Saw a lot of suggestion in google, but seem like there is no real=
=
=20
> solution...
> I try to create valgrind_%.bbappen with the following contents. =C2=A0An=
d did=20
> not help...
> #####################
> #valgrind will not compile even with below changes
> CFLAGS_prepend =3D " -lc -lm "
> CFLAGS_append =3D " -ffast-math -static-libgcc -lgcc -ffreestanding -lc =
-lm "
> #BASE_WORKDIR=3D"/tmp/youhour/fips-build/m20210707a/fips-ppcnf/build/tmp=
/work"
> #./powerpc-nf-poky-linux/valgrind/3.14.0-r0/recipe-sysroot/usr/lib/power=
pc-poky-linux/8.3.0/libgcc.a
> BUILD_LDFLAGS_append =3D "=20
> -L${BASE_WORKDIR}/powerpc-nf-poky-linux/valgrind/3.14.0-r0/recipe-sysroo=
t/usr/lib/powerpc-poky-linux/8.3.0=20
> "
> #####################
>=20
> Any suggestion is appreciated.

It looks like you are just missing a soft-float library but I don't know
off-hand where that is.

We have a recent commit:

https://git.openembedded.org/openembedded-core/commit/?id=3Deffd1434a6ca6a=
fcc358bea64053a7bf805633c7

   valgrind: disable it for powerpc soft-float
   valgrind doesn't build for powerpc soft-float. It is thus disabled for
   such architectures.

so it seems that powerpc-nf is just not supported by valgrind yet.


An examples that shows what sort of changes would be needed:

https://sourceware.org/git/?p=3Dvalgrind.git&a=3Dsearch&h=3DHEAD&st=3Dcomm=
it&s=3Dsoft-float

Good luck,
../Randy


>=20
>=20
>=20
>=20
>=20
>=20


--=20
# Randy MacLeod
# Wind River Linux
