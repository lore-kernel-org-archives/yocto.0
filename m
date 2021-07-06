Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web09.3658.1625562205523870754
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Jul 2021 02:03:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=GrV7shBj;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=2821e93a08=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 1668s8jL032272;
	Tue, 6 Jul 2021 09:03:22 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2169.outbound.protection.outlook.com [104.47.59.169])
	by mx0a-0064b401.pphosted.com with ESMTP id 39kyka8n1k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 06 Jul 2021 09:03:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gEPvnxkkX7I0F9rTX9MsFcMhq8bNGU0DXNT1y6xxrnfEmO8PqpQShB6VBIrUJRM95P/TdAdUkPUSf57zloXMd8FAPPKJqZLHggeqpM1I3MrLCnQ3grs8TtOm2BOFweffck6Ww0Mp03TlOXRVaMXUAaYStF7BtQDzQ6gaf9EygCqZdmSFbGCGbUknT3eCwFxfPC0Wf+gX3P5yPi23+AhHaVXvABKftTFKLgVDQsZdfzg/C3SEOoh54cbvGzUxf9ImwEKaRUNIEJUtkdgsO+REvlyeyNGUS1JShT7meE+B7sflELMJSf4KOLJJa+6u6823pI/59StwJVmMXXbgq+4fvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RMEF0hjj2G6IB6KnJnBfn1K4Bcag16qxSCbqW4PItUE=;
 b=hzwi0o7LhMENqOaTDrZ2hlhQThg/0bXe2CXOMg6YSGGlETAHvy3c2Cczfdhy22rjXWbr6tVX36Rwo+PmUdlMX88beWT6zyC8v3hAzZ8cpqRwlC31NssizaHsXkaQINZ7gS6Suhh9zkrW7zUPda68gxKJsa4JegQEY4sHqUQDQG5ga/6fgtU2uGjXwwFA4xS1J16aNcFsCUzrW3DQpYJw9zdclTljawO4mWsJMdKH0LWnuRHOV7fEAkgOVhMRjDM91lDk8aVmynYr4at1YapCULgM9qV4PKeKJsUdLIojFugF5vuqjYmSOOQ8aR+URpebqgzjs1tm6m3g9M3NsRh3pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RMEF0hjj2G6IB6KnJnBfn1K4Bcag16qxSCbqW4PItUE=;
 b=GrV7shBjbdnhqcoaLnaQ8uMmsY6WYO0wg1bVAmjFHAwRofT6USikJNWbA1fXZXtYVqgKXNXZLcthjMSIRbF2QRhznapDDO/Mvg697w0iWj4anh09l73EcB7mlCwve4VCBiMageVMJ2gwd6qE+UOIvyKSPta7p/Tpxb2+240nQ9E=
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1789.namprd11.prod.outlook.com (2603:10b6:300:108::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.23; Tue, 6 Jul
 2021 09:03:17 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::6ca0:3d02:dcd0:626c]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::6ca0:3d02:dcd0:626c%8]) with mapi id 15.20.4308.020; Tue, 6 Jul 2021
 09:03:17 +0000
Subject: Re: [yocto] [meta-security][PATCH 2/2] apparmor: use its own initscript and service files
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
        "akuster808@gmail.com >> Armin Kuster" <akuster808@gmail.com>
References: <20210623091504.1283317-1-yi.zhao@windriver.com>
 <168B2B5232A141EF.5306@lists.yoctoproject.org>
Message-ID: <fcb251ae-e377-df3c-4fd6-0516ddf5d659@windriver.com>
Date: Tue, 6 Jul 2021 17:03:10 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <168B2B5232A141EF.5306@lists.yoctoproject.org>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR03CA0059.apcprd03.prod.outlook.com
 (2603:1096:202:17::29) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.174] (60.247.85.82) by HK2PR03CA0059.apcprd03.prod.outlook.com (2603:1096:202:17::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.7 via Frontend Transport; Tue, 6 Jul 2021 09:03:15 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 474a4546-1ac2-451b-8c0a-08d9405ce4b3
X-MS-TrafficTypeDiagnostic: MWHPR11MB1789:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB17891B8B13068282DAE92881F91B9@MWHPR11MB1789.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	4Gc5CXIw7CE7DdF0ULvIBvXCxZ0Vc6SIAGz8Z/IndN9CNLAbcWMhipMpiEGaD7Jl6tl5ZHf9RPh2txSKkpWfZbmieXWDsAX3990PGCsSKkzpGXPHS1bdxzNDPRjNULclAUqKIST14Kh9C0w3m5OhhoEEu/C+uKKcwedvpIB81aP80ZUqTiVec+dnZs4yL41s4q2bHG/f9UAjdo8OTomqN2ccRLCSHpYheiIwSdhdu1A1bwPez+fdngdiZ9Ue9DJFDos3mRB/KD6KlW1MEiGaIorLfbYr/8jXlF1f4nA9ecSzDzRnjeu+QO6JtF42lRN3nIH1XIaYJmyzMs6i9SVfS4eoWuKKQgISj7QzzvCeCmEGMF9MWh+ntjT3QazDD1ymAvpj7XLKgQdRMy5we3bUKqT4PhzVtZvHQRgBltAO/JfOBBrBrvqhZHkX5dcjHO4/bqjnmtgMfCXBFuFYbLt6QnAIezkuxUwnVj74SoStC6OUrZpzOLyh7NVlF32+6gFzLgc3OcBw4P7IzDUV6wPa46yhCkwGZXXQ4G/fqszfQLAHJ/hakAvi42LAxsegTOHK/CZnIK0SNhtsE2RzSIlORr3U9aAP5IORy4gVcetO8texkcAsOQyqSWS28Amokwao+SYkktu8yzRjoZL5Tb2k2PD9XkXfvb1q/4yUSz2/c7bT7+2H1EGeUIKJGRbN4zlf01MSiM4SJUmMD0XXI8EdgbLu6PDQ0L9pEShYFK6YuIaP+U/aUgjLorSt4R6Bt2c6GkTavceK3Jz9zy2M3hx5M/ZYo09DgaUdGGclh9SDyW+vaL3POY1ACvBM74ZIHj0ySxLL7nxJzMtYpKcAjdW43Y7aWQ5Csa9C5MTOF4u+hfb5z5Y4FLTlIyipj/4JyCy1OfFYvdEXj1cBjzwsaTOYfpoToewl/pfdozXFE0giMvB0P8kc4cii/M8R1WAS9o3l
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(396003)(136003)(39850400004)(376002)(8676002)(2906002)(30864003)(6706004)(6916009)(36756003)(6666004)(44832011)(31686004)(15650500001)(52116002)(86362001)(2616005)(316002)(956004)(166002)(83380400001)(16576012)(33964004)(8936002)(186003)(16526019)(66946007)(966005)(38100700002)(478600001)(53546011)(66556008)(38350700002)(19627235002)(5660300002)(31696002)(6486002)(26005)(66476007)(2004002)(78286007)(45980500001)(43740500002)(559001)(579004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aG82ZDBtSjFqQlh6TTN0K09zYkxZbzYwOTJNbmpmejdrOGJYVVFOMHRIWDE1?=
 =?utf-8?B?U2hrdXFOUHIvcktwQ282clJ0UjJ3Qko4SnlldTg0UlNJYUlOeHM0NEIzb0ZC?=
 =?utf-8?B?ck5EdU53Z1dEd1Y0eURkd1RSY1ZUUWpYOW1nbk15NzNPU2hWRHp0TXFqSU5D?=
 =?utf-8?B?alNJaFE3U1FlWXBjT1plNVZrb01OSm1nWjN4cnBxZXdiUUYzbHd1eDBKL0VO?=
 =?utf-8?B?YjRjM0p1MnpiTE8zR01XN3FmOGpkMWdqcXJXWDVXWlpQQUYxa2NEcXplWlMx?=
 =?utf-8?B?VXF2K2JrNjdBRVVtMWYxd3c3ZEd4MXBYajUxNFk4a3dSajRPZXNvbm0zZWFn?=
 =?utf-8?B?VmtZTTU0OStKMmZFTFdMTXBEdTZnbUFPYVMrNTVHVVE2aUhGYXpQSVoyMFpO?=
 =?utf-8?B?ckgyeWIweVpOZ3huemJpeGVZZE9aR2ZJVlNJcjYvakNqcE50a3BMY3lRZkZT?=
 =?utf-8?B?c3kyQjRydXloQ21jSGQ5UFU3WjMzMURvY3FsUlg5SGFCSVE3Z3htd0NpUmJN?=
 =?utf-8?B?TTVkenB5K0ZhQWM1MDJxU3dBTlo4YnNwL3h5Z1VOendpMHA5cThXemJNaUF5?=
 =?utf-8?B?KytpOUtSUW9wN1dVV1REQ0lqQTlSekFWNFl0bzJSYXVXR1QxdHVzc0Q0VEty?=
 =?utf-8?B?SGpRUUNrZEw0L2dKRTUrK2JRblV0UHl3LzdORS8yOUl2TXV4Zk4wakZnSk1X?=
 =?utf-8?B?TnEwdnd2Q0lqVUliMFRDSmEvbnFMSjNySDc2S0RzSERYMjRrTUZvTEtZZnNH?=
 =?utf-8?B?TGdsQ21HOW5FdGRFbnJNRW5DbjdXNXF2c2Y2NnBQcU5aNno0V1pXRkcyRGhM?=
 =?utf-8?B?ZThpMmk2elRCTTdnVFV2ZHFiSTRxQkZxdDdZUnVkUk1ENHkxS1l3SGR2UnhP?=
 =?utf-8?B?TVVadjM5NVhVZ2FDQmpUSFpHUU5EQzBpbjdzNWk0d3JjV0hOaHZKdHV3c0F2?=
 =?utf-8?B?OXNhR01sd05GNDlHYjdjODQxLzd3SmI3MDdiWU5kU2FPQmpXd3ZLZG9jTFZ1?=
 =?utf-8?B?Yi90WEhkSlJqSlBHSVhTM0JXVmJjcXVmS0VrTVhBZG9aS3JTWWFHQTRqcXFs?=
 =?utf-8?B?VTUweWZQL0JNSmN2MkFQRmZWcWdLdTVCSFVGVStnYzJoTkV2NS9icGRtN0Y3?=
 =?utf-8?B?NHNhVnduc1JGVG8vQmplV0dzYURmR0RHb3VMRCtaNUZFRGVRWlVQRytKSHpF?=
 =?utf-8?B?WGlBOTNLV3EvWWRjVTU2OGM2cnlEVDZGb296aGZUMEpiT0dFdTZBcUQyWTlJ?=
 =?utf-8?B?VUN2aUNZNCtlU0ZRaDJ4cjJEbmpQbFJjUUY1MmdTT0sxdzNOc1EreHBweVFl?=
 =?utf-8?B?M204Qmo1akJvT3VKeW1TV2x5ZzFnYjVQVWRYaExrREdVbk4wRG15a1lqbGRF?=
 =?utf-8?B?M1VWQ2h3S0tQMXZLZFc2c3Y3T29EZjE4NmpKNndlV1FvRUlBZWhQM2tzcWtD?=
 =?utf-8?B?d29seFZNZHRFNGN5aXhhV2JkRFJnMFgrNTFLb1kxaE9HR3RVOGdJOFVlanFt?=
 =?utf-8?B?bEhjNGFWNmN0QVVLcENiUlI0NEdJemdvdDlWWFNlMElIcnJSVkE5RStKcFVY?=
 =?utf-8?B?bVJFcjlYa1VkcG1sUFVZOHJiQ29YZ1VjaCt5MUZ4a3p3ckd6VTJodjk3YnFl?=
 =?utf-8?B?ZmtEVEpBTjdIZmg5M3Z5RGhwVkdPWk84dVBGNW5xYXRhWHNHV1RxOG05UVpE?=
 =?utf-8?B?a3piNW5HbkhVdGpDZnpFZjBpcnZVWlkwNjNLTkMzcm42UDVuVU5sWmt2VmRw?=
 =?utf-8?Q?88Y0QqPx8RRgPvWPp7D2mJkkY6FiS2liF8gpaxD?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 474a4546-1ac2-451b-8c0a-08d9405ce4b3
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2021 09:03:17.1470
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: POX/08y9Xhfe1qCi6jEWbZRaGTDe65yL2saVRUtz82t00xDJWSdLxPEy3l+1m3iCU6+ocfDnukELX9ZDp8CB1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1789
X-Proofpoint-GUID: h8xRGzEPzJQgMTEhjy3d5tkI2mRCJXfb
X-Proofpoint-ORIG-GUID: h8xRGzEPzJQgMTEhjy3d5tkI2mRCJXfb
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-07-06_04:2021-07-02,2021-07-06 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=999
 suspectscore=0 mlxscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 priorityscore=1501 clxscore=1011 spamscore=0 impostorscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2107060043
Content-Type: multipart/alternative;
 boundary="------------C98A6F389D14DA21D7FE2DC8"
Content-Language: en-US

--------------C98A6F389D14DA21D7FE2DC8
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Ping ...


On 6/23/21 5:15 PM, Yi Zhao wrote:
> Use initscript and service files provided by apparmor.
>
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ---
>   recipes-mac/AppArmor/apparmor_3.0.1.bb        |  33 +--
>   ...x-hardcoded-installation-directories.patch |  51 ++++
>   ...pparmor.debian-add-missing-functions.patch |  57 ++++
>   recipes-mac/AppArmor/files/apparmor           | 226 ---------------
>   recipes-mac/AppArmor/files/apparmor.rc        |  98 -------
>   recipes-mac/AppArmor/files/apparmor.service   |  22 --
>   recipes-mac/AppArmor/files/functions          | 271 ------------------
>   7 files changed, 118 insertions(+), 640 deletions(-)
>   create mode 100644 recipes-mac/AppArmor/files/0001-Makefile-fix-hardcoded-installation-directories.patch
>   create mode 100644 recipes-mac/AppArmor/files/0001-rc.apparmor.debian-add-missing-functions.patch
>   delete mode 100644 recipes-mac/AppArmor/files/apparmor
>   delete mode 100644 recipes-mac/AppArmor/files/apparmor.rc
>   delete mode 100644 recipes-mac/AppArmor/files/apparmor.service
>   delete mode 100644 recipes-mac/AppArmor/files/functions
>
> diff --git a/recipes-mac/AppArmor/apparmor_3.0.1.bb b/recipes-mac/AppArmor/apparmor_3.0.1.bb
> index 6377683..ff5b39b 100644
> --- a/recipes-mac/AppArmor/apparmor_3.0.1.bb
> +++ b/recipes-mac/AppArmor/apparmor_3.0.1.bb
> @@ -15,15 +15,13 @@ DEPENDS = "bison-native apr gettext-native coreutils-native swig-native"
>   
>   SRC_URI = " \
>       git://gitlab.com/apparmor/apparmor.git;protocol=https;branch=apparmor-3.0 \
> +    file://run-ptest \
>       file://disable_perl_h_check.patch \
>       file://crosscompile_perl_bindings.patch \
> -    file://apparmor.rc \
> -    file://functions \
> -    file://apparmor \
> -    file://apparmor.service \
>       file://0001-Makefile.am-suppress-perllocal.pod.patch \
> -    file://run-ptest \
>       file://0001-Revert-profiles-Update-make-check-to-select-tools-ba.patch \
> +    file://0001-Makefile-fix-hardcoded-installation-directories.patch \
> +    file://0001-rc.apparmor.debian-add-missing-functions.patch \
>       "
>   
>   SRCREV = "b0f08aa9d678197b8e3477c2fbff790f50a1de5e"
> @@ -79,8 +77,6 @@ do_compile () {
>   }
>   
>   do_install () {
> -    install -d ${D}/${INIT_D_DIR}
> -    install -d ${D}/lib/apparmor
>       oe_runmake -C ${B}/libraries/libapparmor DESTDIR="${D}" install
>       oe_runmake -C ${B}/binutils DESTDIR="${D}" install
>       oe_runmake -C ${B}/utils DESTDIR="${D}" install
> @@ -96,16 +92,16 @@ do_install () {
>       fi
>   
>       if ${@bb.utils.contains('DISTRO_FEATURES', 'pam', 'true', 'false', d)}; then
> -        install -d ${D}/lib/security
>           oe_runmake -C ${B}/changehat/pam_apparmor DESTDIR="${D}" install
>       fi
>   
> -    install -m 755 ${WORKDIR}/apparmor ${D}/${INIT_D_DIR}/apparmor
> -    install -m 755 ${WORKDIR}/functions ${D}/lib/apparmor
> +    if ${@bb.utils.contains('DISTRO_FEATURES','sysvinit','true','false',d)}; then
> +        install -d ${D}${sysconfdir}/init.d
> +        install -m 755 ${B}/parser/rc.apparmor.debian ${D}${sysconfdir}/init.d/apparmor
> +    fi
>   
>       if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
> -        install -d ${D}${systemd_system_unitdir}
> -        install -m 0644 ${WORKDIR}/apparmor.service ${D}${systemd_system_unitdir}
> +        oe_runmake -C ${B}/parser DESTDIR="${D}" install-systemd
>       fi
>   }
>   
> @@ -152,15 +148,6 @@ do_install_ptest_arm() {
>     :
>   }
>   
> -pkg_postinst_ontarget_${PN} () {
> -if [ ! -d /etc/apparmor.d/cache ] ; then
> -    mkdir /etc/apparmor.d/cache
> -fi
> -}
> -
> -# We need the init script so don't rm it
> -RMINITDIR_class-target_remove = " rm_sysvinit_initddir"
> -
>   INITSCRIPT_PACKAGES = "${PN}"
>   INITSCRIPT_NAME = "apparmor"
>   INITSCRIPT_PARAMS = "start 16 2 3 4 5 . stop 35 0 1 6 ."
> @@ -171,9 +158,9 @@ SYSTEMD_AUTO_ENABLE ?= "enable"
>   
>   PACKAGES += "mod-${PN}"
>   
> -FILES_${PN} += "/lib/apparmor/ /lib/security/ ${sysconfdir}/apparmor ${nonarch_libdir}/${PYTHON_DIR}/site-packages"
> +FILES_${PN} += "${nonarch_base_libdir}/apparmor/ ${base_libdir}/security/ ${sysconfdir}/apparmor ${nonarch_libdir}/${PYTHON_DIR}/site-packages"
>   FILES_mod-${PN} = "${libdir}/apache2/modules/*"
> -FILES_${PN}-dbg += "/lib/security/"
> +FILES_${PN}-dbg += "${base_libdir}/security/.debug"
>   
>   DEPENDS_append_libc-musl = " fts "
>   RDEPENDS_${PN}_libc-musl +=  "musl-utils"
> diff --git a/recipes-mac/AppArmor/files/0001-Makefile-fix-hardcoded-installation-directories.patch b/recipes-mac/AppArmor/files/0001-Makefile-fix-hardcoded-installation-directories.patch
> new file mode 100644
> index 0000000..f10acb1
> --- /dev/null
> +++ b/recipes-mac/AppArmor/files/0001-Makefile-fix-hardcoded-installation-directories.patch
> @@ -0,0 +1,51 @@
> +From 363114dcd72abf1c0dcd637c66037227b8be229b Mon Sep 17 00:00:00 2001
> +From: Yi Zhao <yi.zhao@windriver.com>
> +Date: Mon, 21 Jun 2021 14:18:30 +0800
> +Subject: [PATCH 1/2] Makefile: fix hardcoded installation directories
> +
> +Update the installation directories to fix the do_install error for
> +multilib and usrmerge.
> +
> +Upstream-Status: Inappropriate [configuration]
> +
> +Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> +---
> + changehat/pam_apparmor/Makefile | 2 +-
> + parser/Makefile                 | 8 ++++----
> + 2 files changed, 5 insertions(+), 5 deletions(-)
> +
> +diff --git a/changehat/pam_apparmor/Makefile b/changehat/pam_apparmor/Makefile
> +index f6ece2d1..0143ae9f 100644
> +--- a/changehat/pam_apparmor/Makefile
> ++++ b/changehat/pam_apparmor/Makefile
> +@@ -77,7 +77,7 @@ $(NAME).so: ${OBJECTS}
> +
> + # need some better way of determining this
> + DESTDIR=/
> +-SECDIR ?= ${DESTDIR}/lib/security
> ++SECDIR ?= ${DESTDIR}/${base_libdir}/security
> +
> + .PHONY: install
> + install: $(NAME).so
> +diff --git a/parser/Makefile b/parser/Makefile
> +index 8250ac45..cf18bc11 100644
> +--- a/parser/Makefile
> ++++ b/parser/Makefile
> +@@ -23,10 +23,10 @@ COMMONDIR=../common/
> + include $(COMMONDIR)/Make.rules
> +
> + DESTDIR=/
> +-APPARMOR_BIN_PREFIX=${DESTDIR}/lib/apparmor
> +-SBINDIR=${DESTDIR}/sbin
> +-USR_SBINDIR=${DESTDIR}/usr/sbin
> +-SYSTEMD_UNIT_DIR=${DESTDIR}/usr/lib/systemd/system
> ++APPARMOR_BIN_PREFIX=${DESTDIR}/${nonarch_base_libdir}/apparmor
> ++SBINDIR=${DESTDIR}/${base_sbindir}
> ++USR_SBINDIR=${DESTDIR}/${sbindir}
> ++SYSTEMD_UNIT_DIR=${DESTDIR}/${systemd_system_unitdir}
> + CONFDIR=/etc/apparmor
> + INSTALL_CONFDIR=${DESTDIR}${CONFDIR}
> + LOCALEDIR=/usr/share/locale
> +--
> +2.17.1
> +
> diff --git a/recipes-mac/AppArmor/files/0001-rc.apparmor.debian-add-missing-functions.patch b/recipes-mac/AppArmor/files/0001-rc.apparmor.debian-add-missing-functions.patch
> new file mode 100644
> index 0000000..53bdde8
> --- /dev/null
> +++ b/recipes-mac/AppArmor/files/0001-rc.apparmor.debian-add-missing-functions.patch
> @@ -0,0 +1,57 @@
> +From a737c95ac0f887c365fe8f16583ea95da79de1e9 Mon Sep 17 00:00:00 2001
> +From: Yi Zhao <yi.zhao@windriver.com>
> +Date: Mon, 21 Jun 2021 16:53:39 +0800
> +Subject: [PATCH] rc.apparmor.debian: add missing functions
> +
> +Add missing functions:
> +  aa_log_action_start
> +  aa_log_action_end
> +  aa_log_daemon_msg
> +  aa_log_end_msg
> +
> +Fixes:
> +$ /etc/init.d/apparmor start
> +/lib/apparmor/rc.apparmor.functions: line 294: aa_log_daemon_msg: command not found
> +/lib/apparmor/rc.apparmor.functions: line 214: aa_log_action_start: command not found
> +
> +Upstream-Status: Pending
> +
> +Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> +---
> + parser/rc.apparmor.debian | 20 ++++++++++++++++++++
> + 1 file changed, 20 insertions(+)
> +
> +diff --git a/parser/rc.apparmor.debian b/parser/rc.apparmor.debian
> +index 8efd4400..f35124e8 100644
> +--- a/parser/rc.apparmor.debian
> ++++ b/parser/rc.apparmor.debian
> +@@ -70,6 +70,26 @@ aa_log_skipped_msg() {
> +         echo ": Skipped."
> + }
> +
> ++aa_log_action_start()
> ++{
> ++    echo "$@"
> ++}
> ++
> ++aa_log_action_end()
> ++{
> ++    printf ""
> ++}
> ++
> ++aa_log_daemon_msg()
> ++{
> ++    echo "$@"
> ++}
> ++
> ++aa_log_end_msg()
> ++{
> ++    printf ""
> ++}
> ++
> + usage() {
> +     echo "Usage: $0 {start|stop|restart|try-restart|reload|force-reload|status|kill}"
> + }
> +--
> +2.17.1
> +
> diff --git a/recipes-mac/AppArmor/files/apparmor b/recipes-mac/AppArmor/files/apparmor
> deleted file mode 100644
> index 604e48d..0000000
> --- a/recipes-mac/AppArmor/files/apparmor
> +++ /dev/null
> @@ -1,226 +0,0 @@
> -#!/bin/sh
> -# ----------------------------------------------------------------------
> -#    Copyright (c) 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007
> -#     NOVELL (All rights reserved)
> -#    Copyright (c) 2008, 2009 Canonical, Ltd.
> -#
> -#    This program is free software; you can redistribute it and/or
> -#    modify it under the terms of version 2 of the GNU General Public
> -#    License published by the Free Software Foundation.
> -#
> -#    This program is distributed in the hope that it will be useful,
> -#    but WITHOUT ANY WARRANTY; without even the implied warranty of
> -#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -#    GNU General Public License for more details.
> -#
> -#    You should have received a copy of the GNU General Public License
> -#    along with this program; if not, contact Novell, Inc.
> -# ----------------------------------------------------------------------
> -# Authors:
> -#  Steve Beattie <steve.beattie@canonical.com>
> -#  Kees Cook <kees@ubuntu.com>
> -#
> -# /etc/init.d/apparmor
> -#
> -### BEGIN INIT INFO
> -# Provides: apparmor
> -# Required-Start: $local_fs
> -# Required-Stop: umountfs
> -# Default-Start: S
> -# Default-Stop:
> -# Short-Description: AppArmor initialization
> -# Description: AppArmor init script. This script loads all AppArmor profiles.
> -### END INIT INFO
> -
> -log_daemon_msg() {
> -    echo $*
> -}
> -
> -log_end_msg () {
> -    retval=$1
> -    if [ $retval -eq 0 ]; then
> -        echo "."
> -    else
> -        echo " failed!"
> -    fi
> -    return $retval
> -}
> -
> -. /lib/apparmor/functions
> -
> -usage() {
> -    echo "Usage: $0 {start|stop|restart|reload|force-reload|status|recache}"
> -}
> -
> -test -x ${PARSER} || exit 0 # by debian policy
> -# LSM is built-in, so it is either there or not enabled for this boot
> -test -d /sys/module/apparmor || exit 0
> -
> -securityfs() {
> -	# Need securityfs for any mode
> -	if [ ! -d "${AA_SFS}" ]; then
> -		if cut -d" " -f2,3 /proc/mounts | grep -q "^${SECURITYFS} securityfs"'$' ; then
> -			log_daemon_msg "AppArmor not available as kernel LSM."
> -			log_end_msg 1
> -			exit 1
> -		else
> -			log_daemon_msg "Mounting securityfs on ${SECURITYFS}"
> -			if ! mount -t securityfs none "${SECURITYFS}"; then
> -				log_end_msg 1
> -				exit 1
> -			fi
> -		fi
> -	fi
> -	if [ ! -w "$AA_SFS"/.load ]; then
> -		log_daemon_msg "Insufficient privileges to change profiles."
> -		log_end_msg 1
> -		exit 1
> -	fi
> -}
> -
> -handle_system_policy_package_updates() {
> -	apparmor_was_updated=0
> -
> -	if ! compare_previous_version ; then
> -		# On snappy flavors, if the current and previous versions are
> -		# different then clear the system cache. snappy will handle
> -		# "$PROFILES_CACHE_VAR" itself (on Touch flavors
> -		# compare_previous_version always returns '0' since snappy
> -		# isn't available).
> -		clear_cache_system
> -		apparmor_was_updated=1
> -	elif ! compare_and_save_debsums apparmor ; then
> -		# If the system policy has been updated since the last time we
> -		# ran, clear the cache to prevent potentially stale binary
> -		# cache files after an Ubuntu image based upgrade (LP:
> -		# #1350673). This can be removed once all system image flavors
> -		# move to snappy (on snappy systems compare_and_save_debsums
> -		# always returns '0' since /var/lib/dpkg doesn't exist).
> -		clear_cache
> -		apparmor_was_updated=1
> -	fi
> -
> -	if [ -x /usr/bin/aa-clickhook ] || [ -x /usr/bin/aa-profile-hook ] ; then
> -		# If packages for system policy that affect click packages have
> -		# been updated since the last time we ran, run aa-clickhook -f
> -                force_clickhook=0
> -                force_profile_hook=0
> -                if ! compare_and_save_debsums apparmor-easyprof-ubuntu ; then
> -                        force_clickhook=1
> -                fi
> -                if ! compare_and_save_debsums apparmor-easyprof-ubuntu-snappy ; then
> -                        force_clickhook=1
> -                fi
> -                if ! compare_and_save_debsums click-apparmor ; then
> -                        force_clickhook=1
> -                        force_profile_hook=1
> -                fi
> -                if [ -x /usr/bin/aa-clickhook ] && ([ $force_clickhook -eq 1 ] || [ $apparmor_was_updated -eq 1 ]) ; then
> -                        aa-clickhook -f
> -                fi
> -                if [ -x /usr/bin/aa-profile-hook ] && ([ $force_profile_hook -eq 1 ] || [ $apparmor_was_updated -eq 1 ]) ; then
> -                        aa-profile-hook -f
> -                fi
> -	fi
> -}
> -
> -# Allow "recache" even when running on the liveCD
> -if [ "$1" = "recache" ]; then
> -	log_daemon_msg "Recaching AppArmor profiles"
> -	recache_profiles
> -	rc=$?
> -	log_end_msg "$rc"
> -	exit $rc
> -fi
> -
> -# do not perform start/stop/reload actions when running from liveCD
> -test -d /rofs/etc/apparmor.d && exit 0
> -
> -rc=255
> -case "$1" in
> -	start)
> -		if test -x /sbin/systemd-detect-virt && \
> -		   systemd-detect-virt --quiet --container && \
> -		   ! is_container_with_internal_policy; then
> -			log_daemon_msg "Not starting AppArmor in container"
> -			log_end_msg 0
> -			exit 0
> -		fi
> -		log_daemon_msg "Starting AppArmor profiles"
> -		securityfs
> -		# That is only useful for click, snappy and system images,
> -		# i.e. not in Debian. And it reads and writes to /var, that
> -		# can be remote-mounted, so it would prevent us from using
> -		# Before=sysinit.target without possibly introducing dependency
> -		# loops.
> -		handle_system_policy_package_updates
> -		load_configured_profiles
> -		rc=$?
> -		log_end_msg "$rc"
> -		;;
> -	stop)
> -		log_daemon_msg "Clearing AppArmor profiles cache"
> -		clear_cache
> -		rc=$?
> -		log_end_msg "$rc"
> -		cat >&2 <<EOM
> -All profile caches have been cleared, but no profiles have been unloaded.
> -Unloading profiles will leave already running processes permanently
> -unconfined, which can lead to unexpected situations.
> -
> -To set a process to complain mode, use the command line tool
> -'aa-complain'. To really tear down all profiles, run the init script
> -with the 'teardown' option."
> -EOM
> -		;;
> -	teardown)
> -		if test -x /sbin/systemd-detect-virt && \
> -		   systemd-detect-virt --quiet --container && \
> -		   ! is_container_with_internal_policy; then
> -			log_daemon_msg "Not tearing down AppArmor in container"
> -			log_end_msg 0
> -			exit 0
> -		fi
> -		log_daemon_msg "Unloading AppArmor profiles"
> -		securityfs
> -		running_profile_names | while read profile; do
> -			if ! unload_profile "$profile" ; then
> -				log_end_msg 1
> -				exit 1
> -			fi
> -		done
> -		rc=0
> -		log_end_msg $rc
> -		;;
> -	restart|reload|force-reload)
> -		if test -x /sbin/systemd-detect-virt && \
> -		   systemd-detect-virt --quiet --container && \
> -		   ! is_container_with_internal_policy; then
> -			log_daemon_msg "Not reloading AppArmor in container"
> -			log_end_msg 0
> -			exit 0
> -		fi
> -		log_daemon_msg "Reloading AppArmor profiles"
> -		securityfs
> -		clear_cache
> -		load_configured_profiles
> -		rc=$?
> -		unload_obsolete_profiles
> -
> -		log_end_msg "$rc"
> -		;;
> -	status)
> -		securityfs
> -		if [ -x /usr/sbin/aa-status ]; then
> -			aa-status --verbose
> -		else
> -			cat "$AA_SFS"/profiles
> -		fi
> -		rc=$?
> -		;;
> -	*)
> -		usage
> -		rc=1
> -		;;
> -	esac
> -exit $rc
> diff --git a/recipes-mac/AppArmor/files/apparmor.rc b/recipes-mac/AppArmor/files/apparmor.rc
> deleted file mode 100644
> index 1507d7b..0000000
> --- a/recipes-mac/AppArmor/files/apparmor.rc
> +++ /dev/null
> @@ -1,98 +0,0 @@
> -description "Pre-cache and pre-load apparmor profiles"
> -author "Dimitri John Ledkov <xnox@ubuntu.com> and Jamie Strandboge <jamie@ubuntu.com>"
> -
> -task
> -
> -start on starting rc-sysinit
> -
> -script
> -    [ -d /rofs/etc/apparmor.d ]  && exit 0 # do not load on liveCD
> -    [ -d /sys/module/apparmor ]  || exit 0 # do not load without AppArmor
> -    [ -x /sbin/apparmor_parser ] || exit 0 # do not load without parser
> -
> -    . /lib/apparmor/functions
> -
> -    systemd-detect-virt --quiet --container && ! is_container_with_internal_policy && exit 0 || true
> -
> -    # Need securityfs for any mode
> -    if [ ! -d /sys/kernel/security/apparmor ]; then
> -        if cut -d" " -f2,3 /proc/mounts | grep -q "^/sys/kernel/security securityfs"'$' ; then
> -            exit 0
> -        else
> -            mount -t securityfs none /sys/kernel/security || exit 0
> -        fi
> -    fi
> -
> -    [ -w /sys/kernel/security/apparmor/.load ] || exit 0
> -
> -    apparmor_was_updated=0
> -    if ! compare_previous_version ; then
> -        # On snappy flavors, if the current and previous versions are
> -        # different then clear the system cache. snappy will handle
> -        # "$PROFILES_CACHE_VAR" itself  (on Touch flavors
> -        # compare_previous_version  always returns '0' since snappy
> -        # isn't available).
> -        clear_cache_system
> -        apparmor_was_updated=1
> -    elif ! compare_and_save_debsums apparmor ; then
> -        # If the system policy has been updated since the last time we
> -        # ran, clear the cache to prevent potentially stale binary
> -        # cache files after an Ubuntu image based upgrade (LP:
> -        # #1350673). This can be removed once all system image flavors
> -        # move to snappy (on snappy systems compare_and_save_debsums
> -        # always returns '0' since /var/lib/dpkg doesn't exist).
> -        clear_cache
> -        apparmor_was_updated=1
> -    fi
> -
> -    if [ -x /usr/bin/aa-clickhook ] || [ -x /usr/bin/aa-profile-hook ] ; then
> -        # If packages for system policy that affect click packages have
> -        # been updated since the last time we ran, run aa-clickhook -f
> -        force_clickhook=0
> -        force_profile_hook=0
> -        if ! compare_and_save_debsums apparmor-easyprof-ubuntu ; then
> -            force_clickhook=1
> -        fi
> -        if ! compare_and_save_debsums apparmor-easyprof-ubuntu-snappy ; then
> -            force_clickhook=1
> -        fi
> -        if ! compare_and_save_debsums click-apparmor ; then
> -            force_clickhook=1
> -            force_profile_hook=1
> -        fi
> -        if [ -x /usr/bin/aa-clickhook ] && ([ $force_clickhook -eq 1 ] || [ $apparmor_was_updated -eq 1 ]) ; then
> -            aa-clickhook -f
> -        fi
> -        if [ -x /usr/bin/aa-profile-hook ] && ([ $force_profile_hook -eq 1 ] || [ $apparmor_was_updated -eq 1 ]) ; then
> -            aa-profile-hook -f
> -        fi
> -    fi
> -
> -    if [ "$ACTION" = "teardown" ]; then
> -        running_profile_names | while read profile; do
> -            unload_profile "$profile"
> -        done
> -        exit 0
> -    fi
> -
> -    if [ "$ACTION" = "clear" ]; then
> -        clear_cache
> -        exit 0
> -    fi
> -
> -    if [ "$ACTION" = "reload" ] || [ "$ACTION" = "force-reload" ]; then
> -        clear_cache
> -        load_configured_profiles
> -	unload_obsolete_profiles
> -        exit 0
> -    fi
> -
> -    # Note: if apparmor-easyprof-ubuntu md5sums didn't match up above,
> -    # aa-clickhook will have already compiled the policy, generated the cache
> -    # files and loaded them into the kernel by this point, so reloading click
> -    # policy from cache, while fairly fast (<2 seconds for 250 profiles on
> -    # armhf), is redundant. Fixing this would complicate the logic quite a bit
> -    # and it wouldn't improve the (by far) common case (ie, when
> -    # 'aa-clickhook -f' is not run).
> -    load_configured_profiles
> -end script
> diff --git a/recipes-mac/AppArmor/files/apparmor.service b/recipes-mac/AppArmor/files/apparmor.service
> deleted file mode 100644
> index e66afe4..0000000
> --- a/recipes-mac/AppArmor/files/apparmor.service
> +++ /dev/null
> @@ -1,22 +0,0 @@
> -[Unit]
> -Description=AppArmor initialization
> -After=local-fs.target
> -Before=sysinit.target
> -AssertPathIsReadWrite=/sys/kernel/security/apparmor/.load
> -ConditionSecurity=apparmor
> -DefaultDependencies=no
> -Documentation=man:apparmor(7)
> -Documentation=http://wiki.apparmor.net/
> -
> -# Don't start this unit on the Ubuntu Live CD
> -ConditionPathExists=!/rofs/etc/apparmor.d
> -
> -[Service]
> -Type=oneshot
> -RemainAfterExit=yes
> -ExecStart=/etc/init.d/apparmor start
> -ExecStop=/etc/init.d/apparmor stop
> -ExecReload=/etc/init.d/apparmor reload
> -
> -[Install]
> -WantedBy=sysinit.target
> diff --git a/recipes-mac/AppArmor/files/functions b/recipes-mac/AppArmor/files/functions
> deleted file mode 100644
> index e9e2bbf..0000000
> --- a/recipes-mac/AppArmor/files/functions
> +++ /dev/null
> @@ -1,271 +0,0 @@
> -# /lib/apparmor/functions for Debian -*- shell-script -*-
> -# ----------------------------------------------------------------------
> -#    Copyright (c) 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007
> -#     NOVELL (All rights reserved)
> -#    Copyright (c) 2008-2010 Canonical, Ltd.
> -#
> -#    This program is free software; you can redistribute it and/or
> -#    modify it under the terms of version 2 of the GNU General Public
> -#    License published by the Free Software Foundation.
> -#
> -#    This program is distributed in the hope that it will be useful,
> -#    but WITHOUT ANY WARRANTY; without even the implied warranty of
> -#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> -#    GNU General Public License for more details.
> -#
> -#    You should have received a copy of the GNU General Public License
> -#    along with this program; if not, contact Novell, Inc.
> -# ----------------------------------------------------------------------
> -# Authors:
> -#  Kees Cook <kees@ubuntu.com>
> -
> -PROFILES="/etc/apparmor.d"
> -PROFILES_CACHE="$PROFILES/cache"
> -PROFILES_VAR="/var/lib/apparmor/profiles"
> -PROFILES_SNAPPY="/var/lib/snapd/apparmor/profiles"
> -PROFILES_CACHE_VAR="/var/cache/apparmor"
> -PARSER="/sbin/apparmor_parser"
> -SECURITYFS="/sys/kernel/security"
> -export AA_SFS="$SECURITYFS/apparmor"
> -
> -# Suppress warnings when booting in quiet mode
> -quiet_arg=""
> -[ "${QUIET:-no}" = yes ] && quiet_arg="-q"
> -[ "${quiet:-n}" = y ] && quiet_arg="-q"
> -
> -foreach_configured_profile() {
> -	rc_all="0"
> -	for pdir in "$PROFILES" "$PROFILES_VAR" "$PROFILES_SNAPPY" ; do
> -		if [ ! -d "$pdir" ]; then
> -			continue
> -		fi
> -		num=`find "$pdir" -type f ! -name '*.md5sums' | wc -l`
> -		if [ "$num" = "0" ]; then
> -			continue
> -		fi
> -
> -		cache_dir="$PROFILES_CACHE"
> -		if [ -d "$PROFILES_CACHE_VAR" ] && [ "$pdir" = "$PROFILES_VAR" ] || [ "$pdir" = "$PROFILES_SNAPPY" ]; then
> -			cache_dir="$PROFILES_CACHE_VAR"
> -		fi
> -		cache_args="--cache-loc=$cache_dir"
> -		if [ ! -d "$cache_dir" ]; then
> -			cache_args=
> -		fi
> -
> -		# LP: #1383858 - expr tree simplification is too slow for
> -		# Touch policy on ARM, so disable it for now
> -		cache_extra_args=
> -		if [ -d "$PROFILES_CACHE_VAR" ] && [ "$pdir" = "$PROFILES_VAR" ] || [ "$pdir" = "$PROFILES_SNAPPY" ]; then
> -			cache_extra_args="-O no-expr-simplify"
> -		fi
> -
> -		# If need to compile everything, then use -n1 with xargs to
> -		# take advantage of -P. When cache files are in use, omit -n1
> -		# since it is considerably faster on moderately sized profile
> -		# sets to give the parser all the profiles to load at once
> -		n1_args=
> -		num=`find "$cache_dir" -type f ! -name '.features' | wc -l`
> -		if [ "$num" = "0" ]; then
> -			n1_args="-n1"
> -		fi
> -
> -		(ls -1 "$pdir" | egrep -v '(\.dpkg-(new|old|dist|bak)|~)$' | \
> -		while read profile; do
> -			if [ -f "$pdir"/"$profile" ]; then
> -				echo "$pdir"/"$profile"
> -			fi
> -		done) | \
> -		xargs $n1_args -d"\n" -P$(getconf _NPROCESSORS_ONLN) "$PARSER" "$@" $cache_args $cache_extra_args -- || {
> -			rc_all="$?"
> -			# FIXME: when the parser properly handles broken
> -			# profiles (LP: #1377338), remove this if statement.
> -			# For now, if the xargs returns with error, just run
> -			# through everything with -n1. (This could be broken
> -			# out and refactored, but this is temporary so make it
> -			# easy to understand and revert)
> -			if [ "$rc_all" != "0" ]; then
> -				(ls -1 "$pdir" | \
> -				egrep -v '(\.dpkg-(new|old|dist|bak)|~)$' | \
> -				while read profile; do
> -					if [ -f "$pdir"/"$profile" ]; then
> -						echo "$pdir"/"$profile"
> -					fi
> -				done) | \
> -				xargs -n1 -d"\n" -P$(getconf _NPROCESSORS_ONLN) "$PARSER" "$@" $cache_args $cache_extra_args -- || {
> -					rc_all="$?"
> -				}
> -			fi
> -		}
> -	done
> -	return $rc_all
> -}
> -
> -load_configured_profiles() {
> -	clear_cache_if_outdated
> -	foreach_configured_profile $quiet_arg --write-cache --replace
> -}
> -
> -load_configured_profiles_without_caching() {
> -	foreach_configured_profile $quiet_arg --replace
> -}
> -
> -recache_profiles() {
> -	clear_cache
> -	foreach_configured_profile $quiet_arg --write-cache --skip-kernel-load
> -}
> -
> -configured_profile_names() {
> -	foreach_configured_profile $quiet_arg -N 2>/dev/null | LC_COLLATE=C sort | grep -v '//'
> -}
> -
> -running_profile_names() {
> -	# Output a sorted list of loaded profiles, skipping libvirt's
> -	# dynamically generated files
> -	cat "$AA_SFS"/profiles | sed -e "s/ (\(enforce\|complain\))$//" | egrep -v '^libvirt-[0-9a-f\-]+$' | LC_COLLATE=C sort | grep -v '//'
> -}
> -
> -unload_profile() {
> -	echo -n "$1" > "$AA_SFS"/.remove
> -}
> -
> -clear_cache() {
> -	clear_cache_system
> -	clear_cache_var
> -}
> -
> -clear_cache_system() {
> -	find "$PROFILES_CACHE" -maxdepth 1 -type f -print0 | xargs -0 rm -f --
> -}
> -
> -clear_cache_var() {
> -	find "$PROFILES_CACHE_VAR" -maxdepth 1 -type f -print0 | xargs -0 rm -f --
> -}
> -
> -read_features_dir()
> -{
> -	for f in `ls -A "$1"` ; do
> -		if [ -f "$1/$f" ] ; then
> -			read -r KF < "$1/$f" || true
> -			echo -n "$f {$KF } "
> -		elif [ -d "$1/$f" ] ; then
> -			echo -n "$f {"
> -			KF=`read_features_dir "$1/$f"` || true
> -			echo -n "$KF} "
> -		fi
> -	done
> -}
> -
> -clear_cache_if_outdated() {
> -	if [ -r "$PROFILES_CACHE"/.features ]; then
> -		if [ -d "$AA_SFS"/features ]; then
> -			KERN_FEATURES=`read_features_dir "$AA_SFS"/features`
> -		else
> -			read -r KERN_FEATURES < "$AA_SFS"/features
> -		fi
> -		CACHE_FEATURES=`tr '\n' ' ' < "$PROFILES_CACHE"/.features`
> -		if [ "$KERN_FEATURES" != "$CACHE_FEATURES" ]; then
> -			clear_cache
> -		fi
> -	fi
> -}
> -
> -unload_obsolete_profiles() {
> -	# Currently we must re-parse all the profiles to get policy names.  :(
> -	aa_configured=$(mktemp -t aa-XXXXXX)
> -	configured_profile_names > "$aa_configured" || true
> -	aa_loaded=$(mktemp -t aa-XXXXXX)
> -	running_profile_names > "$aa_loaded" || true
> -	LC_COLLATE=C comm -2 -3 "$aa_loaded" "$aa_configured" | while read profile ; do
> -		unload_profile "$profile"
> -        done
> -	rm -f "$aa_configured" "$aa_loaded"
> -}
> -
> -# If the system debsum differs from the saved debsum, the new system debsum is
> -# saved and non-zero is returned. Returns 0 if the two debsums matched or if
> -# the system debsum file does not exist. This can be removed when system image
> -# flavors all move to snappy.
> -compare_and_save_debsums() {
> -	pkg="$1"
> -
> -	if [ -n $pkg ] && [ -d "$PROFILES_VAR" ]; then
> -		sums="/var/lib/dpkg/info/${pkg}.md5sums"
> -		# store saved md5sums in /var/lib/apparmor/profiles since
> -		# /var/cache/apparmor might be cleared by apparmor
> -		saved_sums="${PROFILES_VAR}/.${pkg}.md5sums"
> -
> -		if [ -f "$sums" ] && \
> -		   ! diff -q "$sums" "$saved_sums" 2>&1 >/dev/null ; then
> -			cp -f "$sums" "$saved_sums"
> -			return 1
> -		fi
> -	fi
> -
> -	return 0
> -}
> -
> -compare_previous_version() {
> -	installed="/usr/share/snappy/security-policy-version"
> -	previous="/var/lib/snappy/security-policy-version"
> -
> -	# When just $previous doesn't exist, assume this is a new system with
> -	# no cache and don't do anything special.
> -	if [ -f "$installed" ] && [ -f "$previous" ]; then
> -		pv=`grep '^apparmor/' "$previous" | cut -d ' ' -f 2`
> -		iv=`grep '^apparmor/' "$installed" | cut -d ' ' -f 2`
> -		if [ -n "$iv" ] && [ -n "$pv" ] && [ "$iv" != "$pv" ]; then
> -			# snappy updates $previous elsewhere, so just return
> -			return 1
> -		fi
> -	fi
> -
> -	return 0
> -}
> -
> -# Checks to see if the current container is capable of having internal AppArmor
> -# profiles that should be loaded. Callers of this function should have already
> -# verified that they're running inside of a container environment with
> -# something like `systemd-detect-virt --container`.
> -#
> -# The only known container environments capable of supporting internal policy
> -# are LXD and LXC environment.
> -#
> -# Returns 0 if the container environment is capable of having its own internal
> -# policy and non-zero otherwise.
> -#
> -# IMPORTANT: This function will return 0 in the case of a non-LXD/non-LXC
> -# system container technology being nested inside of a LXD/LXC container that
> -# utilized an AppArmor namespace and profile stacking. The reason 0 will be
> -# returned is because .ns_stacked will be "yes" and .ns_name will still match
> -# "lx[dc]-*" since the nested system container technology will not have set up
> -# a new AppArmor profile namespace. This will result in the nested system
> -# container's boot process to experience failed policy loads but the boot
> -# process should continue without any loss of functionality. This is an
> -# unsupported configuration that cannot be properly handled by this function.
> -is_container_with_internal_policy() {
> -	local ns_stacked_path="${AA_SFS}/.ns_stacked"
> -	local ns_name_path="${AA_SFS}/.ns_name"
> -	local ns_stacked
> -	local ns_name
> -
> -	if ! [ -f "$ns_stacked_path" ] || ! [ -f "$ns_name_path" ]; then
> -		return 1
> -	fi
> -
> -	read -r ns_stacked < "$ns_stacked_path"
> -	if [ "$ns_stacked" != "yes" ]; then
> -		return 1
> -	fi
> -
> -	# LXD and LXC set up AppArmor namespaces starting with "lxd-" and
> -	# "lxc-", respectively. Return non-zero for all other namespace
> -	# identifiers.
> -	read -r ns_name < "$ns_name_path"
> -	if [ "${ns_name#lxd-*}" = "$ns_name" ] && \
> -	   [ "${ns_name#lxc-*}" = "$ns_name" ]; then
> -		return 1
> -	fi
> -
> -	return 0
> -}
>
> 
>

--------------C98A6F389D14DA21D7FE2DC8
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>Ping ...</p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 6/23/21 5:15 PM, Yi Zhao wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:168B2B5232A141EF.5306@lists.yoctoproject.org">
      <pre class="moz-quote-pre" wrap="">Use initscript and service files provided by apparmor.

Signed-off-by: Yi Zhao <a class="moz-txt-link-rfc2396E" href="mailto:yi.zhao@windriver.com">&lt;yi.zhao@windriver.com&gt;</a>
---
 recipes-mac/AppArmor/apparmor_3.0.1.bb        |  33 +--
 ...x-hardcoded-installation-directories.patch |  51 ++++
 ...pparmor.debian-add-missing-functions.patch |  57 ++++
 recipes-mac/AppArmor/files/apparmor           | 226 ---------------
 recipes-mac/AppArmor/files/apparmor.rc        |  98 -------
 recipes-mac/AppArmor/files/apparmor.service   |  22 --
 recipes-mac/AppArmor/files/functions          | 271 ------------------
 7 files changed, 118 insertions(+), 640 deletions(-)
 create mode 100644 recipes-mac/AppArmor/files/0001-Makefile-fix-hardcoded-installation-directories.patch
 create mode 100644 recipes-mac/AppArmor/files/0001-rc.apparmor.debian-add-missing-functions.patch
 delete mode 100644 recipes-mac/AppArmor/files/apparmor
 delete mode 100644 recipes-mac/AppArmor/files/apparmor.rc
 delete mode 100644 recipes-mac/AppArmor/files/apparmor.service
 delete mode 100644 recipes-mac/AppArmor/files/functions

diff --git a/recipes-mac/AppArmor/apparmor_3.0.1.bb b/recipes-mac/AppArmor/apparmor_3.0.1.bb
index 6377683..ff5b39b 100644
--- a/recipes-mac/AppArmor/apparmor_3.0.1.bb
+++ b/recipes-mac/AppArmor/apparmor_3.0.1.bb
@@ -15,15 +15,13 @@ DEPENDS = &quot;bison-native apr gettext-native coreutils-native swig-native&quot;
 
 SRC_URI = &quot; \
     git://gitlab.com/apparmor/apparmor.git;protocol=https;branch=apparmor-3.0 \
+    <a class="moz-txt-link-freetext" href="file://run-ptest">file://run-ptest</a> \
     <a class="moz-txt-link-freetext" href="file://disable_perl_h_check.patch">file://disable_perl_h_check.patch</a> \
     <a class="moz-txt-link-freetext" href="file://crosscompile_perl_bindings.patch">file://crosscompile_perl_bindings.patch</a> \
-    <a class="moz-txt-link-freetext" href="file://apparmor.rc">file://apparmor.rc</a> \
-    <a class="moz-txt-link-freetext" href="file://functions">file://functions</a> \
-    <a class="moz-txt-link-freetext" href="file://apparmor">file://apparmor</a> \
-    <a class="moz-txt-link-freetext" href="file://apparmor.service">file://apparmor.service</a> \
     <a class="moz-txt-link-freetext" href="file://0001-Makefile.am-suppress-perllocal.pod.patch">file://0001-Makefile.am-suppress-perllocal.pod.patch</a> \
-    <a class="moz-txt-link-freetext" href="file://run-ptest">file://run-ptest</a> \
     <a class="moz-txt-link-freetext" href="file://0001-Revert-profiles-Update-make-check-to-select-tools-ba.patch">file://0001-Revert-profiles-Update-make-check-to-select-tools-ba.patch</a> \
+    <a class="moz-txt-link-freetext" href="file://0001-Makefile-fix-hardcoded-installation-directories.patch">file://0001-Makefile-fix-hardcoded-installation-directories.patch</a> \
+    <a class="moz-txt-link-freetext" href="file://0001-rc.apparmor.debian-add-missing-functions.patch">file://0001-rc.apparmor.debian-add-missing-functions.patch</a> \
     &quot;
 
 SRCREV = &quot;b0f08aa9d678197b8e3477c2fbff790f50a1de5e&quot;
@@ -79,8 +77,6 @@ do_compile () {
 }
 
 do_install () {
-    install -d ${D}/${INIT_D_DIR}
-    install -d ${D}/lib/apparmor
     oe_runmake -C ${B}/libraries/libapparmor DESTDIR=&quot;${D}&quot; install
     oe_runmake -C ${B}/binutils DESTDIR=&quot;${D}&quot; install
     oe_runmake -C ${B}/utils DESTDIR=&quot;${D}&quot; install
@@ -96,16 +92,16 @@ do_install () {
     fi
 
     if ${@bb.utils.contains('DISTRO_FEATURES', 'pam', 'true', 'false', d)}; then
-        install -d ${D}/lib/security
         oe_runmake -C ${B}/changehat/pam_apparmor DESTDIR=&quot;${D}&quot; install
     fi
 
-    install -m 755 ${WORKDIR}/apparmor ${D}/${INIT_D_DIR}/apparmor
-    install -m 755 ${WORKDIR}/functions ${D}/lib/apparmor
+    if ${@bb.utils.contains('DISTRO_FEATURES','sysvinit','true','false',d)}; then
+        install -d ${D}${sysconfdir}/init.d
+        install -m 755 ${B}/parser/rc.apparmor.debian ${D}${sysconfdir}/init.d/apparmor
+    fi
 
     if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
-        install -d ${D}${systemd_system_unitdir}
-        install -m 0644 ${WORKDIR}/apparmor.service ${D}${systemd_system_unitdir}
+        oe_runmake -C ${B}/parser DESTDIR=&quot;${D}&quot; install-systemd
     fi
 }
 
@@ -152,15 +148,6 @@ do_install_ptest_arm() {
   :
 }
 
-pkg_postinst_ontarget_${PN} () {
-if [ ! -d /etc/apparmor.d/cache ] ; then
-    mkdir /etc/apparmor.d/cache
-fi
-}
-
-# We need the init script so don't rm it
-RMINITDIR_class-target_remove = &quot; rm_sysvinit_initddir&quot;
-
 INITSCRIPT_PACKAGES = &quot;${PN}&quot;
 INITSCRIPT_NAME = &quot;apparmor&quot;
 INITSCRIPT_PARAMS = &quot;start 16 2 3 4 5 . stop 35 0 1 6 .&quot;
@@ -171,9 +158,9 @@ SYSTEMD_AUTO_ENABLE ?= &quot;enable&quot;
 
 PACKAGES += &quot;mod-${PN}&quot;
 
-FILES_${PN} += &quot;/lib/apparmor/ /lib/security/ ${sysconfdir}/apparmor ${nonarch_libdir}/${PYTHON_DIR}/site-packages&quot;
+FILES_${PN} += &quot;${nonarch_base_libdir}/apparmor/ ${base_libdir}/security/ ${sysconfdir}/apparmor ${nonarch_libdir}/${PYTHON_DIR}/site-packages&quot;
 FILES_mod-${PN} = &quot;${libdir}/apache2/modules/*&quot;
-FILES_${PN}-dbg += &quot;/lib/security/&quot;
+FILES_${PN}-dbg += &quot;${base_libdir}/security/.debug&quot;
 
 DEPENDS_append_libc-musl = &quot; fts &quot;
 RDEPENDS_${PN}_libc-musl +=  &quot;musl-utils&quot;
diff --git a/recipes-mac/AppArmor/files/0001-Makefile-fix-hardcoded-installation-directories.patch b/recipes-mac/AppArmor/files/0001-Makefile-fix-hardcoded-installation-directories.patch
new file mode 100644
index 0000000..f10acb1
--- /dev/null
+++ b/recipes-mac/AppArmor/files/0001-Makefile-fix-hardcoded-installation-directories.patch
@@ -0,0 +1,51 @@
+From 363114dcd72abf1c0dcd637c66037227b8be229b Mon Sep 17 00:00:00 2001
+From: Yi Zhao <a class="moz-txt-link-rfc2396E" href="mailto:yi.zhao@windriver.com">&lt;yi.zhao@windriver.com&gt;</a>
+Date: Mon, 21 Jun 2021 14:18:30 +0800
+Subject: [PATCH 1/2] Makefile: fix hardcoded installation directories
+
+Update the installation directories to fix the do_install error for
+multilib and usrmerge.
+
+Upstream-Status: Inappropriate [configuration]
+
+Signed-off-by: Yi Zhao <a class="moz-txt-link-rfc2396E" href="mailto:yi.zhao@windriver.com">&lt;yi.zhao@windriver.com&gt;</a>
+---
+ changehat/pam_apparmor/Makefile | 2 +-
+ parser/Makefile                 | 8 ++++----
+ 2 files changed, 5 insertions(+), 5 deletions(-)
+
+diff --git a/changehat/pam_apparmor/Makefile b/changehat/pam_apparmor/Makefile
+index f6ece2d1..0143ae9f 100644
+--- a/changehat/pam_apparmor/Makefile
++++ b/changehat/pam_apparmor/Makefile
+@@ -77,7 +77,7 @@ $(NAME).so: ${OBJECTS}
+ 
+ # need some better way of determining this
+ DESTDIR=/
+-SECDIR ?= ${DESTDIR}/lib/security
++SECDIR ?= ${DESTDIR}/${base_libdir}/security
+ 
+ .PHONY: install
+ install: $(NAME).so
+diff --git a/parser/Makefile b/parser/Makefile
+index 8250ac45..cf18bc11 100644
+--- a/parser/Makefile
++++ b/parser/Makefile
+@@ -23,10 +23,10 @@ COMMONDIR=../common/
+ include $(COMMONDIR)/Make.rules
+ 
+ DESTDIR=/
+-APPARMOR_BIN_PREFIX=${DESTDIR}/lib/apparmor
+-SBINDIR=${DESTDIR}/sbin
+-USR_SBINDIR=${DESTDIR}/usr/sbin
+-SYSTEMD_UNIT_DIR=${DESTDIR}/usr/lib/systemd/system
++APPARMOR_BIN_PREFIX=${DESTDIR}/${nonarch_base_libdir}/apparmor
++SBINDIR=${DESTDIR}/${base_sbindir}
++USR_SBINDIR=${DESTDIR}/${sbindir}
++SYSTEMD_UNIT_DIR=${DESTDIR}/${systemd_system_unitdir}
+ CONFDIR=/etc/apparmor
+ INSTALL_CONFDIR=${DESTDIR}${CONFDIR}
+ LOCALEDIR=/usr/share/locale
+-- 
+2.17.1
+
diff --git a/recipes-mac/AppArmor/files/0001-rc.apparmor.debian-add-missing-functions.patch b/recipes-mac/AppArmor/files/0001-rc.apparmor.debian-add-missing-functions.patch
new file mode 100644
index 0000000..53bdde8
--- /dev/null
+++ b/recipes-mac/AppArmor/files/0001-rc.apparmor.debian-add-missing-functions.patch
@@ -0,0 +1,57 @@
+From a737c95ac0f887c365fe8f16583ea95da79de1e9 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <a class="moz-txt-link-rfc2396E" href="mailto:yi.zhao@windriver.com">&lt;yi.zhao@windriver.com&gt;</a>
+Date: Mon, 21 Jun 2021 16:53:39 +0800
+Subject: [PATCH] rc.apparmor.debian: add missing functions
+
+Add missing functions:
+  aa_log_action_start
+  aa_log_action_end
+  aa_log_daemon_msg
+  aa_log_end_msg
+
+Fixes:
+$ /etc/init.d/apparmor start
+/lib/apparmor/rc.apparmor.functions: line 294: aa_log_daemon_msg: command not found
+/lib/apparmor/rc.apparmor.functions: line 214: aa_log_action_start: command not found
+
+Upstream-Status: Pending
+
+Signed-off-by: Yi Zhao <a class="moz-txt-link-rfc2396E" href="mailto:yi.zhao@windriver.com">&lt;yi.zhao@windriver.com&gt;</a>
+---
+ parser/rc.apparmor.debian | 20 ++++++++++++++++++++
+ 1 file changed, 20 insertions(+)
+
+diff --git a/parser/rc.apparmor.debian b/parser/rc.apparmor.debian
+index 8efd4400..f35124e8 100644
+--- a/parser/rc.apparmor.debian
++++ b/parser/rc.apparmor.debian
+@@ -70,6 +70,26 @@ aa_log_skipped_msg() {
+         echo &quot;: Skipped.&quot;
+ }
+ 
++aa_log_action_start()
++{
++    echo &quot;$@&quot;
++}
++
++aa_log_action_end()
++{
++    printf &quot;&quot;
++}
++
++aa_log_daemon_msg()
++{
++    echo &quot;$@&quot;
++}
++
++aa_log_end_msg()
++{
++    printf &quot;&quot;
++}
++
+ usage() {
+     echo &quot;Usage: $0 {start|stop|restart|try-restart|reload|force-reload|status|kill}&quot;
+ }
+-- 
+2.17.1
+
diff --git a/recipes-mac/AppArmor/files/apparmor b/recipes-mac/AppArmor/files/apparmor
deleted file mode 100644
index 604e48d..0000000
--- a/recipes-mac/AppArmor/files/apparmor
+++ /dev/null
@@ -1,226 +0,0 @@
-#!/bin/sh
-# ----------------------------------------------------------------------
-#    Copyright (c) 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007
-#     NOVELL (All rights reserved)
-#    Copyright (c) 2008, 2009 Canonical, Ltd.
-#
-#    This program is free software; you can redistribute it and/or
-#    modify it under the terms of version 2 of the GNU General Public
-#    License published by the Free Software Foundation.
-#
-#    This program is distributed in the hope that it will be useful,
-#    but WITHOUT ANY WARRANTY; without even the implied warranty of
-#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-#    GNU General Public License for more details.
-#
-#    You should have received a copy of the GNU General Public License
-#    along with this program; if not, contact Novell, Inc.
-# ----------------------------------------------------------------------
-# Authors:
-#  Steve Beattie <a class="moz-txt-link-rfc2396E" href="mailto:steve.beattie@canonical.com">&lt;steve.beattie@canonical.com&gt;</a>
-#  Kees Cook <a class="moz-txt-link-rfc2396E" href="mailto:kees@ubuntu.com">&lt;kees@ubuntu.com&gt;</a>
-#
-# /etc/init.d/apparmor
-#
-### BEGIN INIT INFO
-# Provides: apparmor
-# Required-Start: $local_fs
-# Required-Stop: umountfs
-# Default-Start: S
-# Default-Stop:
-# Short-Description: AppArmor initialization
-# Description: AppArmor init script. This script loads all AppArmor profiles.
-### END INIT INFO
-
-log_daemon_msg() {
-    echo $*
-}
-
-log_end_msg () {
-    retval=$1
-    if [ $retval -eq 0 ]; then
-        echo &quot;.&quot;
-    else
-        echo &quot; failed!&quot;
-    fi
-    return $retval
-}
-
-. /lib/apparmor/functions
-
-usage() {
-    echo &quot;Usage: $0 {start|stop|restart|reload|force-reload|status|recache}&quot;
-}
-
-test -x ${PARSER} || exit 0 # by debian policy
-# LSM is built-in, so it is either there or not enabled for this boot
-test -d /sys/module/apparmor || exit 0
-
-securityfs() {
-	# Need securityfs for any mode
-	if [ ! -d &quot;${AA_SFS}&quot; ]; then
-		if cut -d&quot; &quot; -f2,3 /proc/mounts | grep -q &quot;^${SECURITYFS} securityfs&quot;'$' ; then
-			log_daemon_msg &quot;AppArmor not available as kernel LSM.&quot;
-			log_end_msg 1
-			exit 1
-		else
-			log_daemon_msg &quot;Mounting securityfs on ${SECURITYFS}&quot;
-			if ! mount -t securityfs none &quot;${SECURITYFS}&quot;; then
-				log_end_msg 1
-				exit 1
-			fi
-		fi
-	fi
-	if [ ! -w &quot;$AA_SFS&quot;/.load ]; then
-		log_daemon_msg &quot;Insufficient privileges to change profiles.&quot;
-		log_end_msg 1
-		exit 1
-	fi
-}
-
-handle_system_policy_package_updates() {
-	apparmor_was_updated=0
-
-	if ! compare_previous_version ; then
-		# On snappy flavors, if the current and previous versions are
-		# different then clear the system cache. snappy will handle
-		# &quot;$PROFILES_CACHE_VAR&quot; itself (on Touch flavors
-		# compare_previous_version always returns '0' since snappy
-		# isn't available).
-		clear_cache_system
-		apparmor_was_updated=1
-	elif ! compare_and_save_debsums apparmor ; then
-		# If the system policy has been updated since the last time we
-		# ran, clear the cache to prevent potentially stale binary
-		# cache files after an Ubuntu image based upgrade (LP:
-		# #1350673). This can be removed once all system image flavors
-		# move to snappy (on snappy systems compare_and_save_debsums
-		# always returns '0' since /var/lib/dpkg doesn't exist).
-		clear_cache
-		apparmor_was_updated=1
-	fi
-
-	if [ -x /usr/bin/aa-clickhook ] || [ -x /usr/bin/aa-profile-hook ] ; then
-		# If packages for system policy that affect click packages have
-		# been updated since the last time we ran, run aa-clickhook -f
-                force_clickhook=0
-                force_profile_hook=0
-                if ! compare_and_save_debsums apparmor-easyprof-ubuntu ; then
-                        force_clickhook=1
-                fi
-                if ! compare_and_save_debsums apparmor-easyprof-ubuntu-snappy ; then
-                        force_clickhook=1
-                fi
-                if ! compare_and_save_debsums click-apparmor ; then
-                        force_clickhook=1
-                        force_profile_hook=1
-                fi
-                if [ -x /usr/bin/aa-clickhook ] &amp;&amp; ([ $force_clickhook -eq 1 ] || [ $apparmor_was_updated -eq 1 ]) ; then
-                        aa-clickhook -f
-                fi
-                if [ -x /usr/bin/aa-profile-hook ] &amp;&amp; ([ $force_profile_hook -eq 1 ] || [ $apparmor_was_updated -eq 1 ]) ; then
-                        aa-profile-hook -f
-                fi
-	fi
-}
-
-# Allow &quot;recache&quot; even when running on the liveCD
-if [ &quot;$1&quot; = &quot;recache&quot; ]; then
-	log_daemon_msg &quot;Recaching AppArmor profiles&quot;
-	recache_profiles
-	rc=$?
-	log_end_msg &quot;$rc&quot;
-	exit $rc
-fi
-
-# do not perform start/stop/reload actions when running from liveCD
-test -d /rofs/etc/apparmor.d &amp;&amp; exit 0
-
-rc=255
-case &quot;$1&quot; in
-	start)
-		if test -x /sbin/systemd-detect-virt &amp;&amp; \
-		   systemd-detect-virt --quiet --container &amp;&amp; \
-		   ! is_container_with_internal_policy; then
-			log_daemon_msg &quot;Not starting AppArmor in container&quot;
-			log_end_msg 0
-			exit 0
-		fi
-		log_daemon_msg &quot;Starting AppArmor profiles&quot;
-		securityfs
-		# That is only useful for click, snappy and system images,
-		# i.e. not in Debian. And it reads and writes to /var, that
-		# can be remote-mounted, so it would prevent us from using
-		# Before=sysinit.target without possibly introducing dependency
-		# loops.
-		handle_system_policy_package_updates
-		load_configured_profiles
-		rc=$?
-		log_end_msg &quot;$rc&quot;
-		;;
-	stop)
-		log_daemon_msg &quot;Clearing AppArmor profiles cache&quot;
-		clear_cache
-		rc=$?
-		log_end_msg &quot;$rc&quot;
-		cat &gt;&amp;2 &lt;&lt;EOM
-All profile caches have been cleared, but no profiles have been unloaded.
-Unloading profiles will leave already running processes permanently
-unconfined, which can lead to unexpected situations.
-
-To set a process to complain mode, use the command line tool
-'aa-complain'. To really tear down all profiles, run the init script
-with the 'teardown' option.&quot;
-EOM
-		;;
-	teardown)
-		if test -x /sbin/systemd-detect-virt &amp;&amp; \
-		   systemd-detect-virt --quiet --container &amp;&amp; \
-		   ! is_container_with_internal_policy; then
-			log_daemon_msg &quot;Not tearing down AppArmor in container&quot;
-			log_end_msg 0
-			exit 0
-		fi
-		log_daemon_msg &quot;Unloading AppArmor profiles&quot;
-		securityfs
-		running_profile_names | while read profile; do
-			if ! unload_profile &quot;$profile&quot; ; then
-				log_end_msg 1
-				exit 1
-			fi
-		done
-		rc=0
-		log_end_msg $rc
-		;;
-	restart|reload|force-reload)
-		if test -x /sbin/systemd-detect-virt &amp;&amp; \
-		   systemd-detect-virt --quiet --container &amp;&amp; \
-		   ! is_container_with_internal_policy; then
-			log_daemon_msg &quot;Not reloading AppArmor in container&quot;
-			log_end_msg 0
-			exit 0
-		fi
-		log_daemon_msg &quot;Reloading AppArmor profiles&quot;
-		securityfs
-		clear_cache
-		load_configured_profiles
-		rc=$?
-		unload_obsolete_profiles
-
-		log_end_msg &quot;$rc&quot;
-		;;
-	status)
-		securityfs
-		if [ -x /usr/sbin/aa-status ]; then
-			aa-status --verbose
-		else
-			cat &quot;$AA_SFS&quot;/profiles
-		fi
-		rc=$?
-		;;
-	*)
-		usage
-		rc=1
-		;;
-	esac
-exit $rc
diff --git a/recipes-mac/AppArmor/files/apparmor.rc b/recipes-mac/AppArmor/files/apparmor.rc
deleted file mode 100644
index 1507d7b..0000000
--- a/recipes-mac/AppArmor/files/apparmor.rc
+++ /dev/null
@@ -1,98 +0,0 @@
-description &quot;Pre-cache and pre-load apparmor profiles&quot;
-author &quot;Dimitri John Ledkov <a class="moz-txt-link-rfc2396E" href="mailto:xnox@ubuntu.com">&lt;xnox@ubuntu.com&gt;</a> and Jamie Strandboge <a class="moz-txt-link-rfc2396E" href="mailto:jamie@ubuntu.com">&lt;jamie@ubuntu.com&gt;</a>&quot;
-
-task
-
-start on starting rc-sysinit
-
-script
-    [ -d /rofs/etc/apparmor.d ]  &amp;&amp; exit 0 # do not load on liveCD
-    [ -d /sys/module/apparmor ]  || exit 0 # do not load without AppArmor
-    [ -x /sbin/apparmor_parser ] || exit 0 # do not load without parser
-
-    . /lib/apparmor/functions
-
-    systemd-detect-virt --quiet --container &amp;&amp; ! is_container_with_internal_policy &amp;&amp; exit 0 || true
-
-    # Need securityfs for any mode
-    if [ ! -d /sys/kernel/security/apparmor ]; then
-        if cut -d&quot; &quot; -f2,3 /proc/mounts | grep -q &quot;^/sys/kernel/security securityfs&quot;'$' ; then
-            exit 0
-        else
-            mount -t securityfs none /sys/kernel/security || exit 0
-        fi
-    fi
-
-    [ -w /sys/kernel/security/apparmor/.load ] || exit 0
-
-    apparmor_was_updated=0
-    if ! compare_previous_version ; then
-        # On snappy flavors, if the current and previous versions are
-        # different then clear the system cache. snappy will handle
-        # &quot;$PROFILES_CACHE_VAR&quot; itself  (on Touch flavors
-        # compare_previous_version  always returns '0' since snappy
-        # isn't available).
-        clear_cache_system
-        apparmor_was_updated=1
-    elif ! compare_and_save_debsums apparmor ; then
-        # If the system policy has been updated since the last time we
-        # ran, clear the cache to prevent potentially stale binary
-        # cache files after an Ubuntu image based upgrade (LP:
-        # #1350673). This can be removed once all system image flavors
-        # move to snappy (on snappy systems compare_and_save_debsums
-        # always returns '0' since /var/lib/dpkg doesn't exist).
-        clear_cache
-        apparmor_was_updated=1
-    fi
-
-    if [ -x /usr/bin/aa-clickhook ] || [ -x /usr/bin/aa-profile-hook ] ; then
-        # If packages for system policy that affect click packages have
-        # been updated since the last time we ran, run aa-clickhook -f
-        force_clickhook=0
-        force_profile_hook=0
-        if ! compare_and_save_debsums apparmor-easyprof-ubuntu ; then
-            force_clickhook=1
-        fi
-        if ! compare_and_save_debsums apparmor-easyprof-ubuntu-snappy ; then
-            force_clickhook=1
-        fi
-        if ! compare_and_save_debsums click-apparmor ; then
-            force_clickhook=1
-            force_profile_hook=1
-        fi
-        if [ -x /usr/bin/aa-clickhook ] &amp;&amp; ([ $force_clickhook -eq 1 ] || [ $apparmor_was_updated -eq 1 ]) ; then
-            aa-clickhook -f
-        fi
-        if [ -x /usr/bin/aa-profile-hook ] &amp;&amp; ([ $force_profile_hook -eq 1 ] || [ $apparmor_was_updated -eq 1 ]) ; then
-            aa-profile-hook -f
-        fi
-    fi
-
-    if [ &quot;$ACTION&quot; = &quot;teardown&quot; ]; then
-        running_profile_names | while read profile; do
-            unload_profile &quot;$profile&quot;
-        done
-        exit 0
-    fi
-
-    if [ &quot;$ACTION&quot; = &quot;clear&quot; ]; then
-        clear_cache
-        exit 0
-    fi
-
-    if [ &quot;$ACTION&quot; = &quot;reload&quot; ] || [ &quot;$ACTION&quot; = &quot;force-reload&quot; ]; then
-        clear_cache
-        load_configured_profiles
-	unload_obsolete_profiles
-        exit 0
-    fi
-
-    # Note: if apparmor-easyprof-ubuntu md5sums didn't match up above,
-    # aa-clickhook will have already compiled the policy, generated the cache
-    # files and loaded them into the kernel by this point, so reloading click
-    # policy from cache, while fairly fast (&lt;2 seconds for 250 profiles on
-    # armhf), is redundant. Fixing this would complicate the logic quite a bit
-    # and it wouldn't improve the (by far) common case (ie, when
-    # 'aa-clickhook -f' is not run).
-    load_configured_profiles
-end script
diff --git a/recipes-mac/AppArmor/files/apparmor.service b/recipes-mac/AppArmor/files/apparmor.service
deleted file mode 100644
index e66afe4..0000000
--- a/recipes-mac/AppArmor/files/apparmor.service
+++ /dev/null
@@ -1,22 +0,0 @@
-[Unit]
-Description=AppArmor initialization
-After=local-fs.target
-Before=sysinit.target
-AssertPathIsReadWrite=/sys/kernel/security/apparmor/.load
-ConditionSecurity=apparmor
-DefaultDependencies=no
-Documentation=<a class="moz-txt-link-freetext" href="man:apparmor(7)">man:apparmor(7)</a>
-Documentation=<a class="moz-txt-link-freetext" href="http://wiki.apparmor.net/">http://wiki.apparmor.net/</a>
-
-# Don't start this unit on the Ubuntu Live CD
-ConditionPathExists=!/rofs/etc/apparmor.d
-
-[Service]
-Type=oneshot
-RemainAfterExit=yes
-ExecStart=/etc/init.d/apparmor start
-ExecStop=/etc/init.d/apparmor stop
-ExecReload=/etc/init.d/apparmor reload
-
-[Install]
-WantedBy=sysinit.target
diff --git a/recipes-mac/AppArmor/files/functions b/recipes-mac/AppArmor/files/functions
deleted file mode 100644
index e9e2bbf..0000000
--- a/recipes-mac/AppArmor/files/functions
+++ /dev/null
@@ -1,271 +0,0 @@
-# /lib/apparmor/functions for Debian -*- shell-script -*-
-# ----------------------------------------------------------------------
-#    Copyright (c) 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007
-#     NOVELL (All rights reserved)
-#    Copyright (c) 2008-2010 Canonical, Ltd.
-#
-#    This program is free software; you can redistribute it and/or
-#    modify it under the terms of version 2 of the GNU General Public
-#    License published by the Free Software Foundation.
-#
-#    This program is distributed in the hope that it will be useful,
-#    but WITHOUT ANY WARRANTY; without even the implied warranty of
-#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-#    GNU General Public License for more details.
-#
-#    You should have received a copy of the GNU General Public License
-#    along with this program; if not, contact Novell, Inc.
-# ----------------------------------------------------------------------
-# Authors:
-#  Kees Cook <a class="moz-txt-link-rfc2396E" href="mailto:kees@ubuntu.com">&lt;kees@ubuntu.com&gt;</a>
-
-PROFILES=&quot;/etc/apparmor.d&quot;
-PROFILES_CACHE=&quot;$PROFILES/cache&quot;
-PROFILES_VAR=&quot;/var/lib/apparmor/profiles&quot;
-PROFILES_SNAPPY=&quot;/var/lib/snapd/apparmor/profiles&quot;
-PROFILES_CACHE_VAR=&quot;/var/cache/apparmor&quot;
-PARSER=&quot;/sbin/apparmor_parser&quot;
-SECURITYFS=&quot;/sys/kernel/security&quot;
-export AA_SFS=&quot;$SECURITYFS/apparmor&quot;
-
-# Suppress warnings when booting in quiet mode
-quiet_arg=&quot;&quot;
-[ &quot;${QUIET:-no}&quot; = yes ] &amp;&amp; quiet_arg=&quot;-q&quot;
-[ &quot;${quiet:-n}&quot; = y ] &amp;&amp; quiet_arg=&quot;-q&quot;
-
-foreach_configured_profile() {
-	rc_all=&quot;0&quot;
-	for pdir in &quot;$PROFILES&quot; &quot;$PROFILES_VAR&quot; &quot;$PROFILES_SNAPPY&quot; ; do
-		if [ ! -d &quot;$pdir&quot; ]; then
-			continue
-		fi
-		num=`find &quot;$pdir&quot; -type f ! -name '*.md5sums' | wc -l`
-		if [ &quot;$num&quot; = &quot;0&quot; ]; then
-			continue
-		fi
-
-		cache_dir=&quot;$PROFILES_CACHE&quot;
-		if [ -d &quot;$PROFILES_CACHE_VAR&quot; ] &amp;&amp; [ &quot;$pdir&quot; = &quot;$PROFILES_VAR&quot; ] || [ &quot;$pdir&quot; = &quot;$PROFILES_SNAPPY&quot; ]; then
-			cache_dir=&quot;$PROFILES_CACHE_VAR&quot;
-		fi
-		cache_args=&quot;--cache-loc=$cache_dir&quot;
-		if [ ! -d &quot;$cache_dir&quot; ]; then
-			cache_args=
-		fi
-
-		# LP: #1383858 - expr tree simplification is too slow for
-		# Touch policy on ARM, so disable it for now
-		cache_extra_args=
-		if [ -d &quot;$PROFILES_CACHE_VAR&quot; ] &amp;&amp; [ &quot;$pdir&quot; = &quot;$PROFILES_VAR&quot; ] || [ &quot;$pdir&quot; = &quot;$PROFILES_SNAPPY&quot; ]; then
-			cache_extra_args=&quot;-O no-expr-simplify&quot;
-		fi
-
-		# If need to compile everything, then use -n1 with xargs to
-		# take advantage of -P. When cache files are in use, omit -n1
-		# since it is considerably faster on moderately sized profile
-		# sets to give the parser all the profiles to load at once
-		n1_args=
-		num=`find &quot;$cache_dir&quot; -type f ! -name '.features' | wc -l`
-		if [ &quot;$num&quot; = &quot;0&quot; ]; then
-			n1_args=&quot;-n1&quot;
-		fi
-
-		(ls -1 &quot;$pdir&quot; | egrep -v '(\.dpkg-(new|old|dist|bak)|~)$' | \
-		while read profile; do
-			if [ -f &quot;$pdir&quot;/&quot;$profile&quot; ]; then
-				echo &quot;$pdir&quot;/&quot;$profile&quot;
-			fi
-		done) | \
-		xargs $n1_args -d&quot;\n&quot; -P$(getconf _NPROCESSORS_ONLN) &quot;$PARSER&quot; &quot;$@&quot; $cache_args $cache_extra_args -- || {
-			rc_all=&quot;$?&quot;
-			# FIXME: when the parser properly handles broken
-			# profiles (LP: #1377338), remove this if statement.
-			# For now, if the xargs returns with error, just run
-			# through everything with -n1. (This could be broken
-			# out and refactored, but this is temporary so make it
-			# easy to understand and revert)
-			if [ &quot;$rc_all&quot; != &quot;0&quot; ]; then
-				(ls -1 &quot;$pdir&quot; | \
-				egrep -v '(\.dpkg-(new|old|dist|bak)|~)$' | \
-				while read profile; do
-					if [ -f &quot;$pdir&quot;/&quot;$profile&quot; ]; then
-						echo &quot;$pdir&quot;/&quot;$profile&quot;
-					fi
-				done) | \
-				xargs -n1 -d&quot;\n&quot; -P$(getconf _NPROCESSORS_ONLN) &quot;$PARSER&quot; &quot;$@&quot; $cache_args $cache_extra_args -- || {
-					rc_all=&quot;$?&quot;
-				}
-			fi
-		}
-	done
-	return $rc_all
-}
-
-load_configured_profiles() {
-	clear_cache_if_outdated
-	foreach_configured_profile $quiet_arg --write-cache --replace
-}
-
-load_configured_profiles_without_caching() {
-	foreach_configured_profile $quiet_arg --replace
-}
-
-recache_profiles() {
-	clear_cache
-	foreach_configured_profile $quiet_arg --write-cache --skip-kernel-load
-}
-
-configured_profile_names() {
-	foreach_configured_profile $quiet_arg -N 2&gt;/dev/null | LC_COLLATE=C sort | grep -v '//'
-}
-
-running_profile_names() {
-	# Output a sorted list of loaded profiles, skipping libvirt's
-	# dynamically generated files
-	cat &quot;$AA_SFS&quot;/profiles | sed -e &quot;s/ (\(enforce\|complain\))$//&quot; | egrep -v '^libvirt-[0-9a-f\-]+$' | LC_COLLATE=C sort | grep -v '//'
-}
-
-unload_profile() {
-	echo -n &quot;$1&quot; &gt; &quot;$AA_SFS&quot;/.remove
-}
-
-clear_cache() {
-	clear_cache_system
-	clear_cache_var
-}
-
-clear_cache_system() {
-	find &quot;$PROFILES_CACHE&quot; -maxdepth 1 -type f -print0 | xargs -0 rm -f --
-}
-
-clear_cache_var() {
-	find &quot;$PROFILES_CACHE_VAR&quot; -maxdepth 1 -type f -print0 | xargs -0 rm -f --
-}
-
-read_features_dir()
-{
-	for f in `ls -A &quot;$1&quot;` ; do
-		if [ -f &quot;$1/$f&quot; ] ; then
-			read -r KF &lt; &quot;$1/$f&quot; || true
-			echo -n &quot;$f {$KF } &quot;
-		elif [ -d &quot;$1/$f&quot; ] ; then
-			echo -n &quot;$f {&quot;
-			KF=`read_features_dir &quot;$1/$f&quot;` || true
-			echo -n &quot;$KF} &quot;
-		fi
-	done
-}
-
-clear_cache_if_outdated() {
-	if [ -r &quot;$PROFILES_CACHE&quot;/.features ]; then
-		if [ -d &quot;$AA_SFS&quot;/features ]; then
-			KERN_FEATURES=`read_features_dir &quot;$AA_SFS&quot;/features`
-		else
-			read -r KERN_FEATURES &lt; &quot;$AA_SFS&quot;/features
-		fi
-		CACHE_FEATURES=`tr '\n' ' ' &lt; &quot;$PROFILES_CACHE&quot;/.features`
-		if [ &quot;$KERN_FEATURES&quot; != &quot;$CACHE_FEATURES&quot; ]; then
-			clear_cache
-		fi
-	fi
-}
-
-unload_obsolete_profiles() {
-	# Currently we must re-parse all the profiles to get policy names.  :(
-	aa_configured=$(mktemp -t aa-XXXXXX)
-	configured_profile_names &gt; &quot;$aa_configured&quot; || true
-	aa_loaded=$(mktemp -t aa-XXXXXX)
-	running_profile_names &gt; &quot;$aa_loaded&quot; || true
-	LC_COLLATE=C comm -2 -3 &quot;$aa_loaded&quot; &quot;$aa_configured&quot; | while read profile ; do
-		unload_profile &quot;$profile&quot;
-        done
-	rm -f &quot;$aa_configured&quot; &quot;$aa_loaded&quot;
-}
-
-# If the system debsum differs from the saved debsum, the new system debsum is
-# saved and non-zero is returned. Returns 0 if the two debsums matched or if
-# the system debsum file does not exist. This can be removed when system image
-# flavors all move to snappy.
-compare_and_save_debsums() {
-	pkg=&quot;$1&quot;
-
-	if [ -n $pkg ] &amp;&amp; [ -d &quot;$PROFILES_VAR&quot; ]; then
-		sums=&quot;/var/lib/dpkg/info/${pkg}.md5sums&quot;
-		# store saved md5sums in /var/lib/apparmor/profiles since
-		# /var/cache/apparmor might be cleared by apparmor
-		saved_sums=&quot;${PROFILES_VAR}/.${pkg}.md5sums&quot;
-
-		if [ -f &quot;$sums&quot; ] &amp;&amp; \
-		   ! diff -q &quot;$sums&quot; &quot;$saved_sums&quot; 2&gt;&amp;1 &gt;/dev/null ; then
-			cp -f &quot;$sums&quot; &quot;$saved_sums&quot;
-			return 1
-		fi
-	fi
-
-	return 0
-}
-
-compare_previous_version() {
-	installed=&quot;/usr/share/snappy/security-policy-version&quot;
-	previous=&quot;/var/lib/snappy/security-policy-version&quot;
-
-	# When just $previous doesn't exist, assume this is a new system with
-	# no cache and don't do anything special.
-	if [ -f &quot;$installed&quot; ] &amp;&amp; [ -f &quot;$previous&quot; ]; then
-		pv=`grep '^apparmor/' &quot;$previous&quot; | cut -d ' ' -f 2`
-		iv=`grep '^apparmor/' &quot;$installed&quot; | cut -d ' ' -f 2`
-		if [ -n &quot;$iv&quot; ] &amp;&amp; [ -n &quot;$pv&quot; ] &amp;&amp; [ &quot;$iv&quot; != &quot;$pv&quot; ]; then
-			# snappy updates $previous elsewhere, so just return
-			return 1
-		fi
-	fi
-
-	return 0
-}
-
-# Checks to see if the current container is capable of having internal AppArmor
-# profiles that should be loaded. Callers of this function should have already
-# verified that they're running inside of a container environment with
-# something like `systemd-detect-virt --container`.
-#
-# The only known container environments capable of supporting internal policy
-# are LXD and LXC environment.
-#
-# Returns 0 if the container environment is capable of having its own internal
-# policy and non-zero otherwise.
-#
-# IMPORTANT: This function will return 0 in the case of a non-LXD/non-LXC
-# system container technology being nested inside of a LXD/LXC container that
-# utilized an AppArmor namespace and profile stacking. The reason 0 will be
-# returned is because .ns_stacked will be &quot;yes&quot; and .ns_name will still match
-# &quot;lx[dc]-*&quot; since the nested system container technology will not have set up
-# a new AppArmor profile namespace. This will result in the nested system
-# container's boot process to experience failed policy loads but the boot
-# process should continue without any loss of functionality. This is an
-# unsupported configuration that cannot be properly handled by this function.
-is_container_with_internal_policy() {
-	local ns_stacked_path=&quot;${AA_SFS}/.ns_stacked&quot;
-	local ns_name_path=&quot;${AA_SFS}/.ns_name&quot;
-	local ns_stacked
-	local ns_name
-
-	if ! [ -f &quot;$ns_stacked_path&quot; ] || ! [ -f &quot;$ns_name_path&quot; ]; then
-		return 1
-	fi
-
-	read -r ns_stacked &lt; &quot;$ns_stacked_path&quot;
-	if [ &quot;$ns_stacked&quot; != &quot;yes&quot; ]; then
-		return 1
-	fi
-
-	# LXD and LXC set up AppArmor namespaces starting with &quot;lxd-&quot; and
-	# &quot;lxc-&quot;, respectively. Return non-zero for all other namespace
-	# identifiers.
-	read -r ns_name &lt; &quot;$ns_name_path&quot;
-	if [ &quot;${ns_name#lxd-*}&quot; = &quot;$ns_name&quot; ] &amp;&amp; \
-	   [ &quot;${ns_name#lxc-*}&quot; = &quot;$ns_name&quot; ]; then
-		return 1
-	fi
-
-	return 0
-}
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------C98A6F389D14DA21D7FE2DC8--
