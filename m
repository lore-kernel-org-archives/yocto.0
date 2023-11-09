Return-Path: <mingli.yu@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0FB82C4332F
	for <webhook@archiver.kernel.org>; Thu,  9 Nov 2023 02:44:02 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.113298.1699497833168346796
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Nov 2023 18:43:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=IVyGNYYF;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=96774aeeec=mingli.yu@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3A91F2ZD018696
	for <yocto@lists.yoctoproject.org>; Wed, 8 Nov 2023 18:43:52 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=message-id:date:subject:to:references:from:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	PPS06212021; bh=k8jYJ6uBmjLVFcZzdxPNrWeQPS2LrDYnelBVKhaMcQ4=; b=
	IVyGNYYFAnZRZesnNLGcVTU2QhyhFIvISD6GaXqHU2L6yaBzyqM0H/z0mAumhtSq
	MoERS9FKA0yiuT2iH1em1JVnPqddmu0M1beM4smxMl/odFokfFm3XfFoDYJ1jNeN
	l2yJAjoeN40a7woErIBarAGyzSL42J/hw7AbcpFcUAHydKawrNdtkRopeyTNpFss
	0v/73fLSQxpU96p6QT7qlotZ6YPkMykHqmNrOpo/L83bKYGAGObxSpC7wwhibkFO
	G0G1Yvi3b8dN6fQIRb2o+qzlzz+iIkbxarkUTPhg8tU0wEpxv2sfp9Z/Bs2464w+
	SKinr+ujBQuM8YCGkBF5bw==
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2168.outbound.protection.outlook.com [104.47.59.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3u7w2she9x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Wed, 08 Nov 2023 18:43:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CAlUpegm8RyIpWnXHyXYDtCS8II6/0hgpiPrRzZsXftIh3tpwwOXahPMfo1uFkWoI8KgKG3mBmMrD8MVNTv++zeF5v7rJpJiHySu+kuGvDkk8glD83tmltUwkFy4QHryKHiygcx2Uqjtd4kKVNLyNu9Dz0xFrLwC3ARHyBndfGuIliVLl7HsRC7EbN3KONVHZtEDP1Nx6IDRUaZV1SrTlXllbKYAa2m6bToRdxPdaPjrsgjdKvNpo55bzFiqk+CYCf0Z6kAmABekouPERWyezA16k+l6Ts3RGaXvfQHozEq3Jp5cNl2OrN+BJpfMK9xpwFcEIa8ZdwSDGR3eXb0XAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k8jYJ6uBmjLVFcZzdxPNrWeQPS2LrDYnelBVKhaMcQ4=;
 b=BQCVZnbBexMfBSilA47dbpsUiNgLSnj1W/kjuTH0tthoxDj7o7h6WxE10qyftaHqsK7gkmPHKK6zWUGTCVPRD292KGirhW2S7oXRi2TgUfUnDZx9aCBDzTSjpd337SYRK1sOa9nUdLzini5khy8yo1Ea+nMQw7hkSHLJ3JMLGRQ4keZr+VlU4yyAdp4TObo2aSldlO9QQ4CovRJyjmQ27cSZWuWkoAR4Fi4ibu6y5lulAdz8cnW3UIivGaLwWuraeRf4T4hiQezUTqqu8lS3dLWMM0/czBh8lozoGg9+JWx4/xHi50WqDqi65Mh2/MwWAyJTvNgFZ29ikqYTtUOLCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB5009.namprd11.prod.outlook.com (2603:10b6:303:9e::11)
 by DM4PR11MB5325.namprd11.prod.outlook.com (2603:10b6:5:390::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Thu, 9 Nov
 2023 02:43:50 +0000
Received: from CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::9289:cc3:164c:b6cc]) by CO1PR11MB5009.namprd11.prod.outlook.com
 ([fe80::9289:cc3:164c:b6cc%4]) with mapi id 15.20.6954.029; Thu, 9 Nov 2023
 02:43:50 +0000
Message-ID: <008758c4-63fd-9ad5-95e3-2a2a6896cf4c@windriver.com>
Date: Thu, 9 Nov 2023 10:43:45 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [yocto] [meta-security][PATCH] samhain: remove the buildpath
Content-Language: en-US
To: "Yu, Mingli" <mingli.yu@eng.windriver.com>, yocto@lists.yoctoproject.org
References: <178C0E6D2C773B8E.5378@lists.yoctoproject.org>
From: "Yu, Mingli" <mingli.yu@windriver.com>
In-Reply-To: <178C0E6D2C773B8E.5378@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TYCPR01CA0161.jpnprd01.prod.outlook.com
 (2603:1096:400:2b1::11) To CO1PR11MB5009.namprd11.prod.outlook.com
 (2603:10b6:303:9e::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5009:EE_|DM4PR11MB5325:EE_
X-MS-Office365-Filtering-Correlation-Id: b1d0902e-10ff-4206-9e7f-08dbe0cdb448
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Bfa1ImgsYW/JJV/JdMw6xS1ZeggrMdtyJSnh2yANa3HziHngk5THqHA89npRKD1z2khDVFLFf4GIICshFvR1Ht7AYX1JuQ7iJe+pL/vg2Uuxe1smVRmdVKizzz4ROwuIpbFiZfXthU4DEEcieri8igNdXKYG4nO+Vo98+kbfTi/tZAhDDftLRsCI1nUY/4LoG2JMJzyobMGgnJ32Dewu0+CEWcGhcw2qm5NmLeFpN70QOaytxlIXhQWixlYpqzo4BSF/ktnI2ROHgl57/EjLNKegog+jAPAIhqQKQLxoO+jXlkHgXHZJu6cfl/cbeWY1B198PV48uPLkH/9HUqlLbuJZr0WDCIBHBBOMh1k1vwyoIhCSCcSvPIiNg7+3JEC+GEkTolGPZVu46oO38moGzxDdMBlRamtLaslaWt2AlNt/j+SfOhQnsjwB5EKmT9GKmLGrMcVXwnvwuATO9x9VOf5hJjEAy93A9LhIBkOwjLyKgOFXlgzWoChMfNcKOgnhgN4XUj6o2Bg0I7+xzY6i3ELrwaA7SiB0BAQa82wJp802f/4NcXuKbi+61A+Z6oLmoBj9VuouEtwW2y25Oy/WxRMRL7y3gvZ0Ws/zQumXKKjvPcDuOsqeoD7YdbIhL6Ix6zg2br9f5Tt1tyW/vAArGwihqZxeNfHZsXTHw63XIqtY9CvlysCOQ8fV7vkGP4HyRCi4YDlpmpy4Tl6AE7qWiA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5009.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39850400004)(376002)(366004)(396003)(346002)(136003)(230173577357003)(230922051799003)(230273577357003)(1800799009)(451199024)(186009)(64100799003)(2906002)(15650500001)(31696002)(5660300002)(66899024)(86362001)(66556008)(66476007)(66946007)(8676002)(316002)(36756003)(41300700001)(8936002)(26005)(83380400001)(2616005)(6512007)(6666004)(6506007)(53546011)(38100700002)(31686004)(6486002)(966005)(478600001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YUNSMU1MaUMweWU3eElGZlFGTjVHT0hJRXI4QVpOWEJhTWtaZU1pY2kwMUZn?=
 =?utf-8?B?bS9rTGpQU3MwQzFlYnFsc2RSRU8vNmJyS3BBSGdoMzFCaExTSU9PQjMwZktu?=
 =?utf-8?B?UVdJN3NnNVpuV25DWmhLUm1rcGkrejNHbkxlT2xWTmcyeGplTHFRV25IYU56?=
 =?utf-8?B?TVQ4TGtmMXJkNi96RHZZeTl1OEtmZTZUenptNHgwWE9UVXJmQ3ZLTjF2dUM4?=
 =?utf-8?B?eWNGcjFMMXdkeVZFdWU4Z3Z4NC9lMzI2Sk8vcXZqOW1Ncmg1dGwyeGFIWlc0?=
 =?utf-8?B?dENBYWRDeU1kS3JpM3BNSkI1V1hTV2hkOVg5VzNOaXhGUFBQcGI0cktHTXFC?=
 =?utf-8?B?MkgyZUtWTWkxVGdTa2tUNmcydzJvSVgrZ3NGdXNzSDdZejZyNXRPRWdmdStj?=
 =?utf-8?B?cE5tTXhUVkN6MXJRZTdjK2VxTHFVeGpGOHZvL2paRXRSbEFQWmJ6QmNxcE41?=
 =?utf-8?B?am1qQ0hLbThmNUJjM0Vja0pDU1VDeDRUZkVQOW95SzZsNGwxTStDYzRxb0tE?=
 =?utf-8?B?RTU3VE80Ni9nZDFKdTZvYlZVeWNuRE1WYkg1RGVQako4VCtPYmRpUWZmNTVj?=
 =?utf-8?B?cTk2YVJtUzZmWVAvL1JDMTJnempTdVpsWnowaC9SczFoME5lcW5VTFF0cDhu?=
 =?utf-8?B?Ujd6WXd4YzRTUERaRFJuVm1aNUdJRkpVdWV0L3ZvcnY3TmM5dHZNb0FydXhr?=
 =?utf-8?B?a2paejF2YTdwN1IrZ1RRM1pvL3dwL0hWeXR0Mk5yemRiaGtLd251VHdjM2Z4?=
 =?utf-8?B?TThId2FwYnZNQTBVRGRmMzdiUC9uSzFmbnJ0dWRLYzlnOFB5WEM2MkxtSmhC?=
 =?utf-8?B?eWluRmRDUUMwL25VeWRmL2VOdVZmRFdHSjlaOUozUGNRTlJGVzRNTUlXeU1r?=
 =?utf-8?B?cGN6R0NzeiszYlVYSE05V0QyUHJLdXpINzdDdzNON0poVVhSNW5BcDJyL1E2?=
 =?utf-8?B?ZDcvcWgrcjBDSDFZWXF1MXBLRUpmZ0VwNUQvY205REZoZ0NVcDNCd0hLQ2wz?=
 =?utf-8?B?N3puR0o5L0pzZkxIWU1zcDhHcFFvUno4aVh2WVlDQmV0T2ZpQit2cG1QdWd4?=
 =?utf-8?B?ckVsOW5iZ0JjbzBHa3hTWk9zNU82bE5vdlQxSkduR09RSEZxVUJISHNiQnZ2?=
 =?utf-8?B?UE5wOSt4bS9IVmFNZWFjeVFBblQ0Y25zMFlNZFBiOXAwaG1hRXZtZ2I3NEJw?=
 =?utf-8?B?WXFSenVNazgxcWlPK2s2bXhSWkwwcnJqa3Uya3Nwbi9wUkhrWTk0SjArMEx5?=
 =?utf-8?B?OWI4eUNqTE1teDlFbWg3d2c5NVFzcjA2bFJqRXRWNzVoUnRtY3gwNkdjOVpk?=
 =?utf-8?B?OUpxYWJOZDdLZmtpbFFBWTM1dVkxTkRXd0NRWDFjTDJBc1ZCdWZyZGw0bVcv?=
 =?utf-8?B?bzN3MTN4cnFyT1doTkNjbFNLcEh1RW1TbFNGdkVkYkh0UVJyOXcvVE1zZ2xI?=
 =?utf-8?B?WnVIQXlhcitLKzRXVkpzNFJtK0w1T3hzb1lyU1I3dDIwdUM0VlRYRzdvalRz?=
 =?utf-8?B?bmlkc3VjQ2h1dUlFNmhZd0hweGR4d052V1pVcWRsLzlDaXJHL2t4Y3BCT2hF?=
 =?utf-8?B?M3BxVXJzbUV3YmJwWXErRDZDck1DU3liSThaVkptdStJMEpZOFZXejNRRkhu?=
 =?utf-8?B?U29KbVhwNkpjRmVQdkhBUUV5Qi9Ddmt4aktOTFpmSnZqQmM3Z3puS000eWlB?=
 =?utf-8?B?QU8wSWM0c3VLZ0ZOd1VzbVF5eEUvL0ZTZFNtRkZuVmZSclc3dkVXUlZOdm9P?=
 =?utf-8?B?V0NNdFlXWjFQQ3dOMjNhNFYvTnp4RURHQVVUOUJsRlU3YnhYRWRrNzE2SkFx?=
 =?utf-8?B?SThzdWVRNS9PYnlIcTdQYUJ0MXVzNG9WOTVLNlkvWFN5bXpKOFk4bDBGeVhM?=
 =?utf-8?B?SjR6VVlBSWYwZkFoNDFTS3ovd1o2NnZPTERpTTh5b3VTTzZlNFAvaldBSlhB?=
 =?utf-8?B?NHYrSHF6N3lpdERwYW1IbWJiS2ZMczdreWJOeDR5M1J4eFVTNDhWalZyaExO?=
 =?utf-8?B?Q0tSYkdtMGUrQjdZbTgyNEtROHczOWozMzNYWmtkck1haFpia1ZhM0x6VnNJ?=
 =?utf-8?B?eFhqMnpNVmh2anFTSE5PdHRRR0l3SEZYeEJ5ekIwVHlrTTlGdjcrbnJ1TDJv?=
 =?utf-8?B?UlRiUDNUWDlsRTBFVTZVNmdPcko5THFKc1pHLzlSVFhZUllLLzNtSFgvVnpP?=
 =?utf-8?B?SEE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1d0902e-10ff-4206-9e7f-08dbe0cdb448
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5009.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Nov 2023 02:43:50.2362
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S+3/uGm2d2LsYLk2E/sWHJv1Ot7Yt+Iw8pFhJWCZFfqm3bonwb1NZF4Xv4Jy3QrAfbyvh5v1mPdH0LvIZaXifg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5325
X-Proofpoint-GUID: 4zXdSv5BhLSMoRYi5BsVGFw5ASkBl0Gn
X-Proofpoint-ORIG-GUID: 4zXdSv5BhLSMoRYi5BsVGFw5ASkBl0Gn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-09_01,2023-11-08_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011 adultscore=0
 spamscore=0 phishscore=0 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 mlxlogscore=627 mlxscore=0 suspectscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311060001 definitions=main-2311090020
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Nov 2023 02:44:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61642

Ping.

Thanks,

On 10/8/23 14:36, Yu, Mingli wrote:
> From: Mingli Yu <mingli.yu@windriver.com>
> 
> Fixes:
>    WARNING: samhain-server-4.4.10-r0 do_package_qa: QA Issue: File /var/lib/samhain/samhain-install.sh in package samhain-server contains reference to TMPDIR [buildpaths]
>    WARNING: samhain-server-4.4.10-r0 do_package_qa: QA Issue: File /usr/share/doc/samhain-server/scripts/samhain.ebuild-light in package samhain-server-doc contains reference to TMPDIR
>    File /usr/share/doc/samhain-server/scripts/samhain.ebuild in package samhain-server-doc contains reference to TMPDIR [buildpaths]
> 
> Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
> ---
>   recipes-ids/samhain/samhain.inc | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/recipes-ids/samhain/samhain.inc b/recipes-ids/samhain/samhain.inc
> index 2788bc3..f5bea1d 100644
> --- a/recipes-ids/samhain/samhain.inc
> +++ b/recipes-ids/samhain/samhain.inc
> @@ -59,6 +59,7 @@ PACKAGECONFIG[acl] = " --enable-posix-acl , --disable-posix-acl, acl"
>   PACKAGECONFIG[audit] = "ac_cv_header_auparse_h=yes,ac_cv_header_auparse_h=no,audit"
>   PACKAGECONFIG[ps] = "--with-ps-path=${base_bindir}/ps,,,procps"
>   
> +EXTRA_OECONF += "INSTALL='install -p'"
>   EXTRA_OEMAKE:append:aarch64 = " CPPFLAGS+=-DCONFIG_ARCH_AARCH64=1"
>   EXTRA_OEMAKE:append:mips64 = " CPPFLAGS+=-DCONFIG_ARCH_MIPS64=1"
>   
> @@ -89,6 +90,9 @@ ssp_cv_lib=no
>   sh_cv_va_copy=yes
>   EOF
>       export CONFIG_SITE=${S}/config-site.${BP}
> +    # remove the buildpath
> +    sed -i -e 's;mydefarg;mydefargholder;g' ${S}/scripts/samhain.ebuild.in
> +    sed -i -e 's;mydefarg;mydefargholder;g' ${S}/scripts/samhain.ebuild-light.in
>   }
>   
>   do_configure () {
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61277): https://lists.yoctoproject.org/g/yocto/message/61277
> Mute This Topic: https://lists.yoctoproject.org/mt/101829267/3618448
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [mingli.yu@eng.windriver.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

