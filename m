Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED0F3C47DD9
	for <webhook@archiver.kernel.org>; Sun, 24 Mar 2024 11:27:04 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.27566.1711279620930598750
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 Mar 2024 04:27:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=aE+xgehD;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=38134c34b8=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 42OAol6U015198;
	Sun, 24 Mar 2024 04:26:56 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=message-id:date:subject:to:references:from:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	PPS06212021; bh=iJj9i5iTq2x6HO6fQZoc52/vgO+25W+2aLhZgxT9zxY=; b=
	aE+xgehD4pkU7kEYbo+zVOO37/ecLj/09df4BhCyUuN+BnpzNE+uOjtUyZWQY6Do
	Sm8WAq4moOHYdrPAsuXO6Oe4XzzwBoTnt43aYHctgcL7rc4zFBGYwz+Oaw6fPYwg
	fKFUTZAQMp6leWJB8UNfyMGvZnq4vztzwIb4jW7OWJ+L34xYaQG3ju04SoeK9QMz
	S7022zwWqY0x5Q3iRta0VLAWo0qZsWfSBiQCP0EPx/4K8xXRHEBmhGGW52AhHC6D
	VK92FUvC+c0FFRRBRDVRUCjt3F4BPrf+DTDsieHAoeSHXTxakAx/M7yAqQlSb34I
	ngjF+dgrKD7D2F8GSVIDZA==
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2169.outbound.protection.outlook.com [104.47.58.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3x1xkgry6d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 24 Mar 2024 04:26:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FyFTRibbyLM9qU68246h9gWyP6/7qSCxJ6rPvdXpRI+LpFo3JlyROle+Iy9VcHdsfv5ve5hcFlavxOUC02NThB/itZOww43tmz2add25yYfc4549lwXy9P0qh80mMmwsanodIRpnEa0QlgkidPEhL9uYCfae6cVdV4kplgTAvv/Pux38IfOcAV2k8RhzxIlBvoEoDe3JjNF7Brti0TXvXtYEtmTd3ric1xgM3L4glZ1xhV+kKSGj69XXmFxTnBUOTjHJFFAzRExszYBQ0rda85ghz16JTUYg/PHEfRdIx3qcT1g2n8GSmCKXN1IftB5ePF1/64/UIAM7Sc+5zdPneg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iJj9i5iTq2x6HO6fQZoc52/vgO+25W+2aLhZgxT9zxY=;
 b=WmcYfqSg3juc08garY03pkZbf8SGDnlbkuvP+BkScTwbwFcHawAjxzODxYLOmWqtjuLcTlVJQehwCEOppo835M+OSj0HwhK3WpN/NsI8Y6IJGPXHGOvAyK5LUFTD8CxybFeHBtv+9xzJhQzloyqPvonE0gNa6swjMsKfzRyPL3vfVGLGjX4auMa9gpMzwSfgIzySrrhM5FTHuJpeKbM2vgDkdaryWcoONKuEzsGGl1dnygRvfzlwkWE2dzEeRwHcQ0QzZ+rGVTIlzxFp0idPjF3Nb//7u3GX17J9zqhAx+GYPy9WejVspJunjkMfod6tkJXOIfm/MDUkiOIp0jYFjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10)
 by DS0PR11MB8069.namprd11.prod.outlook.com (2603:10b6:8:12c::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.26; Sun, 24 Mar
 2024 11:26:51 +0000
Received: from DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::97da:833f:8511:a558]) by DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::97da:833f:8511:a558%6]) with mapi id 15.20.7409.028; Sun, 24 Mar 2024
 11:26:49 +0000
Message-ID: <1c7843db-9722-460d-8048-7d53dafec0d4@windriver.com>
Date: Sun, 24 Mar 2024 19:26:42 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [meta-selinux][PATCH] busybox: Fix wrapper creation
Content-Language: en-US
To: Philip Lorenz <philip.lorenz@bmw.de>, yocto@lists.yoctoproject.org,
        "Doe, Joe" <Joe.Doe@windriver.com>
References: <20240322155412.3569750-1-philip.lorenz@bmw.de>
From: Yi Zhao <yi.zhao@windriver.com>
In-Reply-To: <20240322155412.3569750-1-philip.lorenz@bmw.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SI2PR04CA0009.apcprd04.prod.outlook.com
 (2603:1096:4:197::8) To DS0PR11MB7484.namprd11.prod.outlook.com
 (2603:10b6:8:14c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7484:EE_|DS0PR11MB8069:EE_
X-MS-Office365-Filtering-Correlation-Id: fff0e1e2-c10a-4f2c-a2d2-08dc4bf54c0e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	HxczdAJ8L+MFCY7FGGRmRoQcB5Gk67l50pcf+mpFrhF7tDc57nWjs1+r2nRTC6ErbFazqALXF+TkdJDCuLIPC38yEj5iIhxOMbF68QoOggqXnWqc1lf1WvOic7kmrjVCMar+nkwjNqBOZxPk1lrJGFZCjvmHxxUegQmoZq2GJKUYFtw3s9QxnN+w3zXVbJczA9vgwt6VmI+SrXyAyWQ+LvZkaN27A7+/LOnzctkZBO2NJ+GlvAScZUn8ofR7dmVo37RJF1TlKpplSF44eEIlH0LnLlx0/MrInQ6733trTqSN+BU1cbhG+GUYVLdlelfvVGSOyeywBkB6oN1gZcbCjOpHKXAWBoqWiFMBQ7sXBVr8n6t6p6NfvjIATroChV+/2P1cgCiNO4pYXiMi2kdNmoWgIbAspmNn/i8v7XLztg8S5WOlpxaPYSne8VUaIEcz9SMX0mp6U3Evj1x04uBWeRbQr8ZAApkCaJou9I1ZSG9p8/ivI1dPUeqFlGlCZDGTLBjeS4pyAZKQSPnUG/kz8BK8vUHkc6VLUcxPFQmRKECq5trmnLDFrnXgNDWwzUhoTYp06x3KX1KV3n0cERDP3n1eAb5OaqGtLZjBXamhdkhRDkYHdTFnooSc2OWNgswUoUagojkDgrfBZt+wExZr+WhLz8KF/omsjs4ld9LKdR8=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB7484.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dm1maTVCU1RTU1lQTXhCNExRN0QraW9DZnk0cEY2Z3FPK2xCZU4xUUEyTSt4?=
 =?utf-8?B?WEpVRHRkR1diVFZhcTF2R3A4SkZydk9jYXpIN0lGRlY2YjJtTjk1L0ljZkJy?=
 =?utf-8?B?OGhLZVQwamFLaXJmMlg1MXh0dWhaWGlvSmI3NnNkRHExK2xqS3J3dnBIRi9w?=
 =?utf-8?B?Z1hTNDMyZmpJeVliYUo4R0JkMU9FMUVkbElFRXdCazl2cW9WL0JaNUxtaTBm?=
 =?utf-8?B?bDR3NTkzbFMwMEFVdGRhODlnMjhTRXo0eHRZclZsa2JvK3hNa1BiZFZGMFFh?=
 =?utf-8?B?YlcyenI5UER0NW10M1F1WmZLY0NzNWdud1RNVjFKaUFXYjVlOEhkc0NuMEZn?=
 =?utf-8?B?UnZlSVlYMmRhOWhjdjhaWXBFQnowSGkrRUtFNkFoVEhiczVUd3crZHc1bGtB?=
 =?utf-8?B?bDJpVXQreWNXODNZazZkWitGVllkNmVlWmxrcjJMSEV5czI1MlliczhYbEVY?=
 =?utf-8?B?KzdwNzJZLzdNa2Y3REJMTWxWY2NrR0x2bzBwSG5YSmkxZnVBNHZiQ0ppa3F6?=
 =?utf-8?B?aUIrbzVaQ1pyRlhuNzRneDcrLzRzc21EcWhyYWcvT3hqMmREcVJVNTZ5NmhY?=
 =?utf-8?B?SitFNytHR1A5WmNLMjNtdEcxRXZJTVZiYXhjbnJldVFCa3BES2wzVmo2NWY0?=
 =?utf-8?B?OXZGaTc2MXdDcUxhd3dEU2ViK3l4Yzh1WUFBbUlGUnBXWXo4ZDhVdjZHbTZv?=
 =?utf-8?B?SEd6V0wwMVpqbzZKMEVDUTZBb1JYWkJLbGxvamNCa0xtZGhwSnIzdXdqYWdK?=
 =?utf-8?B?NHRlc0FuVURCUzduR0VObDZTSU1TZHkrT0luVFJWbmtTRGI3R0l5dStnNXpS?=
 =?utf-8?B?dzJYRlFpK2JEZWhNSVEyYStoQkFyMkZzU0k5eUR2QUMzTmc4VWRwYWpMRVZ1?=
 =?utf-8?B?Zk5CMnFVMFlkcldoWFpXdThpYkZPa2l5YXdEKys2YUM3b0JoSmFLMjVzSTRP?=
 =?utf-8?B?S2l1WGZZYmJNMXZVeDhxY21tSk9vME9RVDZRa1hSaEhGU3JlODJZUXNSOVIr?=
 =?utf-8?B?L1Q4OWRaQ282cU9WNHJtM2ZZM0FGK2t2K2w0NTZ6UVpjRm15dmFpakNka2Rp?=
 =?utf-8?B?UW5hMnRsWm1YQkdOUU1jLzZtYk1OOUFWS0tpbFRZeXZUSCsrU25EWnZKeHhR?=
 =?utf-8?B?UEEybjJVNklwZm9zWnVUd2NnNDNSYTNUWUJIWWtzdmN4MTMxWUpJTWo4Ny9X?=
 =?utf-8?B?MzNqTFRRMDlTMU92NWNJSGZRZGNDOGJXRzhSdnk4dTFZamtNNy9HdDVIaDNW?=
 =?utf-8?B?UDdRN3kzMER0QWFIaCtlZ1kxVDJURnZRb1ZmTmUzYWVWbTBBeitjRUxJOWlu?=
 =?utf-8?B?WkpFNFNtVmpManpaSVg3cTFiVXEvRkhhRExCZENBd2tLQkE4NW4rbjM5bHlt?=
 =?utf-8?B?WFViTFlJZ0hncnFYbHF5STZRbzRGaUdkRHRmZ2puTWNPVEJ0VXgrRkFEeGFW?=
 =?utf-8?B?cGNoUmZmYkxXUDB5MnFKRlkrOE9qdmMvSS9pQ0Y2Z3g2b3JIMjcxN1BvOWpJ?=
 =?utf-8?B?ZmZPY29NZWlGVWVKeEZpcTZIY1FWTCt2djYrMDVEblZkaHlQUWVHemZHUUQx?=
 =?utf-8?B?aUhWR0t1bzhDMGR3dU9kUGw0WEJPR2JEWThnYUc3b2tWK0Q3dU4vaTFFcXYz?=
 =?utf-8?B?UE5jcEZZajNJamlHVTVLdmxlamxzMU1VUUQxcXJPQWxzM1M3QzNnOEtCa1lI?=
 =?utf-8?B?VjNFcFNvYUlobjhaR0crSitOUHY2NXBOSmNxRTRSZzVXdVJIVjg0cUl3MW92?=
 =?utf-8?B?MmI3UVduK05TVVVOR21RUlhnL3BZaTdxVmoySThEZ3pMUFBzUGNYQjRMeXFK?=
 =?utf-8?B?TVVyaWlZZFByU0QwYVcvbEFaY0JBWkszZG1XVVl1MkhWbVpPazMwV2cwbnBo?=
 =?utf-8?B?bHZ2a3llV1A5aEp6RjdsRVprYWQwKzVjMkI4M3RMYmUvMVBnaW1TbDYrTXg2?=
 =?utf-8?B?L21ONTdZZ3p6WHBhN2JXRXk4eDhlcTliS01sbmZsWUJ1dW83YzZSYmFBNmNi?=
 =?utf-8?B?TFBtQURabmQrZXZTR25aK2pEcTBXM09ybEp0Qmw5LzYwdWQwNnlYOENvRWsr?=
 =?utf-8?B?aG1XcERCNVVFSlJGanp3cGtQUmF6dm56ZktqVXArWlBXRWdDNXJXRGdsZVlz?=
 =?utf-8?Q?UBFsq/tkCwKRJ2f1YF9LJ7F17?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fff0e1e2-c10a-4f2c-a2d2-08dc4bf54c0e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7484.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2024 11:26:49.6225
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Pqo0Wmu445Ml0hX03xeoDjbp8FxTEbSm7uzUcgPyE33KNLDuH75NkKXkvKUD+p/ZhF1J7kJv56BVwJuol43UBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8069
X-Proofpoint-ORIG-GUID: Ld-soxdrd_TNKPAbk6rwBohiffXjD9di
X-Proofpoint-GUID: Ld-soxdrd_TNKPAbk6rwBohiffXjD9di
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-24_08,2024-03-21_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 adultscore=0 impostorscore=0 spamscore=0 priorityscore=1501 bulkscore=0
 suspectscore=0 mlxscore=0 mlxlogscore=999 phishscore=0 malwarescore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2403210001 definitions=main-2403240072
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 24 Mar 2024 11:27:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62833

Looks good to me.


Thanks,

Yi


On 3/22/24 23:54, Philip Lorenz wrote:
> `PACKAGEBUILDPKGD` was dropped in Yocto 4.2 and
> `PACKAGE_PREPROCESS_FUNCS` should be used instead. The only requirement
> for wrapper creation is that it is executed before any of the
> `update-alternatives` hooks are executed. This continues to hold as the
> call to `create_sh_wrapper_reset_alternative_vars` is prepended only
> after the `update-alternatives` class has been inherited.
>
> Additionally, this also fixes a race condition leading to
> non-deterministic buildhistory entries in busybox's `sysroot` files.
> The race condition was caused by the creation of the wrapper files
> inside `D` (i.e. the image directory) which is also consumed by other
> tasks such as `do_populate_sysroot` which may be executing in parallel
> to `do_package`.
>
> Signed-off-by: Philip Lorenz <philip.lorenz@bmw.de>
> ---
>   recipes-core/busybox/busybox_selinux.inc | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/recipes-core/busybox/busybox_selinux.inc b/recipes-core/busybox/busybox_selinux.inc
> index ded8007..740980f 100644
> --- a/recipes-core/busybox/busybox_selinux.inc
> +++ b/recipes-core/busybox/busybox_selinux.inc
> @@ -8,7 +8,7 @@ python create_sh_wrapper_reset_alternative_vars () {
>       # We need to load the full set of busybox provides from the /etc/busybox.links
>       # Use this to see the update-alternatives with the right information
>   
> -    dvar = d.getVar('D')
> +    dvar = d.getVar('PKGD')
>       pn = d.getVar('PN')
>       base_bindir = d.getVar('base_bindir')
>   
> @@ -55,9 +55,9 @@ python create_sh_wrapper_reset_alternative_vars () {
>           create_sh_alternative_vars("/etc/busybox.links.suid", "%s/busybox.suid" % base_bindir, 0o4755)
>   }
>   
> -# Add to PACKAGEBUILDPKGD so it could override the alternatives, which are set in
> +# Add to PACKAGE_PREPROCESS_FUNCS so it could override the alternatives, which are set in
>   # do_package:prepend() section of busybox_*.bb.
> -PACKAGEBUILDPKGD:prepend = "create_sh_wrapper_reset_alternative_vars "
> +PACKAGE_PREPROCESS_FUNCS:prepend = "create_sh_wrapper_reset_alternative_vars "
>   
>   # Use sh wrappers instead of links
>   pkg_postinst:${PN} () {

