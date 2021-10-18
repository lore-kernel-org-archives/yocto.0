Return-Path: <kai.kang@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23929C433EF
	for <webhook@archiver.kernel.org>; Mon, 18 Oct 2021 01:56:33 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web12.31004.1634522191919375486
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Oct 2021 18:56:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=kmTsZhlc;
 spf=pass (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=592536268e=kai.kang@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id
 19I1miUT032100;
	Mon, 18 Oct 2021 01:56:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=subject : from :
 to : cc : references : message-id : date : in-reply-to : content-type :
 mime-version; s=PPS06212021;
 bh=TnPbkm9H87jWmPDxrIqNlHKl5TcnRM0EjEPmKXU7HbQ=;
 b=kmTsZhlcYoJ4NEppjdksnPdvMEw9pLocWvcRIPfoTFu/+ELvor8GPp/j6zRPZxD8rEIN
 cYu+qdJn795C8NE1Vp/M4myGldbEV88VnVxl8pmf1wNABpc0owhkFpAg0iDdyRVkdNE/
 xAFtEAzwysB58UBVKrnIduEKKctI0dTRKDdNmpaF8cWFgoNZQvqY2kPultzVJNDJKNia
 JmfhqWVmTAv9U3aWPxz2CXDzPcJj2ykYbHE7XJCc41ruHWkXAjJF6fLS83ez+X7Exi2o
 YwKIs1g2Xh5KC2MIievXIL6qckLB0C84hKLuRpXubPjUnATQLnc7Yhxt+2v1BbkkF0OD 8Q==
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2168.outbound.protection.outlook.com [104.47.59.168])
	by mx0a-0064b401.pphosted.com with ESMTP id 3bre05rf2n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 18 Oct 2021 01:56:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HdnOiwaTUs5BagsnTeam5uEe3y9FfiQ3UvMeLbG76f+77lTJNh2T+o2V3yxUw5gsrvj3U0yMTR+4N2tK9xW9fsCGo9ORT1gw2xByTBt2X6W8WdpIvGDv5POg2pV4MnbNCHMBDRxNmB5Zb+241zWLtDA4Nv3rIrnUCv7wIwLVefOjY1x5LY2ckUVfniRaZClmIrZqfbi06Jy/pIo2SJS3jBiWN2m4vA6jv9pZ8JX7tIOhuhn9UUQ4qAsv/SyDbBCwVR/r/XqdOMI5NWauiNCHUZyxhbyZJlRoF4+3h3Y+jqg3bS1stCJJDLjgLtYobd9OSRtEqmKglDfXzN2cGiMlKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TnPbkm9H87jWmPDxrIqNlHKl5TcnRM0EjEPmKXU7HbQ=;
 b=b5pqI3k4QcbNQaN9mxtbb1LGtDWkT2ZQf+q4L6qWyBtlfh6aHIll0nIdaHrLuhjkPROCDjvwAqyrBGB2PWd5VVB3qVVky5jww1bN8GC+u1YXtv5rJr9EIuewF7P8Dq4OaG6Gc6Vps/gxYh4/Ax8Ietes8fRG8ZygMwSlXG84mALTE+sE36CoFFrTUY0tvWZ/dXZv4wfR6OxveLCD7hrqxMKCNo8fohjwbo/6uhLw9JgRjMfGGPepKj3g5qkCdt7lQ0D6eceyRmY5mR8JqmPsSdog/wBpXdfRyU0cFX/QwcTBlUFSQyy8C9n9Jpa3/42o/tNcutnD3boEljjEaGt5vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from CO6PR11MB5651.namprd11.prod.outlook.com (2603:10b6:5:356::20)
 by CO6PR11MB5650.namprd11.prod.outlook.com (2603:10b6:5:35a::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16; Mon, 18 Oct
 2021 01:56:27 +0000
Received: from CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::4c98:111b:1f1e:898f]) by CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::4c98:111b:1f1e:898f%5]) with mapi id 15.20.4608.018; Mon, 18 Oct 2021
 01:56:27 +0000
Subject: Re: [yocto] [PATCH v2 1/1] sssd: re-package to fix QA issues
From: Kai <kai.kang@windriver.com>
To: akuster808@gmail.com
Cc: yocto@lists.yoctoproject.org
References: <20211014085911.32587-1-kai.kang@windriver.com>
 <16ADDA0756FAD7E5.7007@lists.yoctoproject.org>
Message-ID: <177d7ef6-dcb2-afcc-8b69-7a511fddc6f3@windriver.com>
Date: Mon, 18 Oct 2021 09:56:20 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <16ADDA0756FAD7E5.7007@lists.yoctoproject.org>
Content-Type: multipart/alternative;
 boundary="------------6E04FB0E218687EB942E49EB"
Content-Language: en-US
X-ClientProxiedBy: HKAPR04CA0011.apcprd04.prod.outlook.com
 (2603:1096:203:d0::21) To CO6PR11MB5651.namprd11.prod.outlook.com
 (2603:10b6:5:356::20)
MIME-Version: 1.0
Received: from [128.224.162.156] (60.247.85.82) by
 HKAPR04CA0011.apcprd04.prod.outlook.com (2603:1096:203:d0::21) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.25 via Frontend
 Transport; Mon, 18 Oct 2021 01:56:25 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a76385fe-83e5-4873-5f1a-08d991da7eb6
X-MS-TrafficTypeDiagnostic: CO6PR11MB5650:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<CO6PR11MB565037D35209AE7D29C0F90D95BC9@CO6PR11MB5650.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:644;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	i0AwY7RJMU09Mz4IxBv3SEDEfn3gfDWJsR6UoAg302jMfWDnvLg3tVcFNsA8xDEJRBzjn26Tgx0bsqRI0wTphzm0Y1bWwDGtKQWf/VZsHN/EgXPdQjsuDah/xOYHBT+yp0QhimQ5Qp1pt7CMQk7+ZrJHKvVnZf+64NX4B3lnIYhW6DO9m04mhh26imblb2Lkj6mkoTMDTsLx9cu9PgXrwa3VaGSlbWCLMhu6U+He7Lg51KOpKvfRJQydcSClwcwJS9gxnwd+f0v+933PQ8ZOLN44BUzPJm6RuSPlxMAO5ojkjsF6C8WiFTBhgFQRrfxAiBcEW8Qw9SZSTHOrbqWAlaI5H7OCjmrBn1sy49dV6acM9br48OVyCdHmZyk5qYhJdouBiJYveMgAnPNxmr/hESV4v3QjA7vVe4fruv+149HITynzOhIvzTmI9avKPxEE/t2MwWfMCRtjBX3p5Of3G0N+4gXs38yYgQ9cevpn9oDlniErvMwD5PL3mj14jVJnIDrX3lMAnwVDzb4PMt9EFxYAczDSxCHsTjeo/mc7yne/rmzlfZcEuIOiFvzpoG5c0arLifF6WK7OMP0lr3PYOywXhZg1VRpTTtVIcF7FwwLmKIxcibkDvgAxTAdQOqtH0vJdroQe3gFAN4WMfWhsow3wOP//G4OtXoYP7WS6LYsBhmM4cLyjG/p/dSl1OM3IJ42Rl+NIM2rfPWYthnxm2HJUZd2UxLzrBzqm+07Y3f5hcTpHlkt2qTRFd9QWGf7uWw2kUFDJM4W6alTNZB6H8Q3h2Np2RCxwPyrRlsGi+FxSEpMGp5nytfJ72Ymg5In/xEUNZu/1XcCWLgsna7SSLn53cJndMMMKwOqPVI7M4o2DCaaTIE6fBV18Rl1yirlrYsVAiT4Vf7YRz9OnEuRfVg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5651.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(8936002)(5660300002)(66556008)(2906002)(6666004)(26005)(6706004)(31696002)(53546011)(186003)(6916009)(6486002)(966005)(66476007)(33964004)(83380400001)(66946007)(2616005)(52116002)(956004)(38350700002)(16576012)(508600001)(316002)(8676002)(38100700002)(86362001)(166002)(36756003)(31686004)(4326008)(78286007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?S0ZmQndQZmZMRzdkeDZqcVM3TDlmY1A0aXVTMk5vZVpBRVFrYkh5d09lVzhN?=
 =?utf-8?B?aUhwL2xkakxLaEVpTWs5RzFQSkx1SVVqZWVJdUV2TVRlYjdrN3dQcC9hS013?=
 =?utf-8?B?eThTN0pqa3NRY3l6SzNRQXZkdlU1NUVjZEY3WmZxNFg2U1RmQzVrQ3J0eVVv?=
 =?utf-8?B?dnh3Q08wSWZBYmxpcExVQ2ZQQk9WVUQ4RnZsU3M2cHZ4UUVLQTJqMHlRWlFY?=
 =?utf-8?B?eFdFUERKK01VNVJpNlllMVlYV2ZRckJNSGptU1lvbnMxNHZEWkFLZHlibDQy?=
 =?utf-8?B?VVhEQm5KMWFzQnlyZkcwNzRuQ1FXZGRORmhVYWNvM0lPdmR1VHJVY0hLQVlU?=
 =?utf-8?B?NjdVWmh1T04rdGhWS2lXVW9vcWs4TWJQY0dlZWhrYlRyZTF2ajFmZWJHZ2V2?=
 =?utf-8?B?bHl2NlNQNjdBaWhMQ3AzanhHN2xPR0xKN1IvWjFDWXZVdW9vM1Z2cUFXWC8w?=
 =?utf-8?B?SW5qWXNFNTVTT05NRjQydHRNd1hlTGloM0E4K0Z4TFhKRmJSQ0dzWUs1TnV0?=
 =?utf-8?B?bnpwTFNkaGR1ejgrcExKOFBRa3RtNkF6OHRHMnpGZXFRQjVOQnJPN1FhYnE2?=
 =?utf-8?B?dm5uV2JDTzl1Tkl2M2lhOGtITXhFK21EUGhuREJ0cVFkVUtPRVAxTVFhcm1v?=
 =?utf-8?B?WmFLakUxVFJJeHRwbXo4SU1XbU9hMnN3Tnd6VmhyK09QZGV6dWtJb2NmTDYz?=
 =?utf-8?B?UFBkcU9pSkU1c2hqSG5oMXpiVkRsaktOOUJRVnRMVlZ1VW4yZG5aVGNkT0dm?=
 =?utf-8?B?ZExrNUs2YWJtQkt3QktXVVhtMU8rOW50K2NkMThkY1Q4QWg1QkI2V3Zzc1Ax?=
 =?utf-8?B?RlpBRG1mSitUcDYzTFBqWWlaS3g2MGNCZ0o3ZzZ2RFJrdkRUempuSTlIRE9P?=
 =?utf-8?B?Ukl4R29SZk83alNoWXRyS3hRSm5udmlFb0FqNCtpYWRlVkV3NHJrYWR3NXov?=
 =?utf-8?B?UzR5ZS8rb2FaekFEd0daSlkrNHBFeTNFMjZpZmN6MTBpaGVueGlLSWkxa1ZL?=
 =?utf-8?B?MytxMzE5QWFQUUEvWFpSdkRDQjNUMnNlQmtEV3dHSEVsTURNU3oyaDZZZG9i?=
 =?utf-8?B?TWFDVlg3NkpNanlzb2V0dk13YzZPM1ZqZ2ZKUjRsWmJlVVVjLzBWMzFYWHdp?=
 =?utf-8?B?ZmVrL2lFKzFJUW4yVm51dzVaWjBLcXlnaU5tbUcwYjBaWS8vcTI0T3lyQ1RZ?=
 =?utf-8?B?U0FUVVUyVDN5SEkrbzhYYld5SGppRnlDRVFGUkg1d043TVVZYVZxbkVoeW01?=
 =?utf-8?B?Mk5ldDRTK0ZYTFpSYW1qNnRjVGNIK1ZYb1AzQjJ4SkdsYytyTG9MMUM2dXR5?=
 =?utf-8?B?SW1NUFVhYnR2RHlwSk84L1pUN2gyc1pkbjJ5ZHREY1dNQVU1UlI1aXNFN2pB?=
 =?utf-8?B?NWNiUDZzcnZaVGRmRVdBcE9pNFVQZTNiejBrSVUvb09RUTMyZklWVXgvMnFl?=
 =?utf-8?B?R0J0R3BEUTR0WksrTGo3UGxGS1JEVVA0RllrYUh2cURLWitDcWlZNWt3ZDli?=
 =?utf-8?B?RHI3N2xONVBDTHlUcUhBTzRZV0VPK01uTVduV1lFQjREU3dUbHk1ajZERU5z?=
 =?utf-8?B?ditjMkhQZDcvaGZoMmFTU2JWVGVDR0hoYm1XY0ZMZUdBRjJkc2NsemR5cjAw?=
 =?utf-8?B?V2o1eFdaSFRVSXZIb3IrYTJ4SnNhYXFOWkQ2VXNndk9kcGE5bTlMaDMzSXFn?=
 =?utf-8?B?amY4bFZNK2JpczFxS3d6VjdUN09jRGVQR1J6eEV1YmE0d2hVcTk0Rk02Tjlx?=
 =?utf-8?Q?bcZ/sQk5ZIp87dkYApVoIxK5jDJcfC0HYFAWSDw?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 a76385fe-83e5-4873-5f1a-08d991da7eb6
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5651.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2021 01:56:26.8885
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 ePZ9ifZ5oDSeWbdpJAQTp7nBgFhYl+zidAcOniiCTy6HdtGoO+C//PURAqoHpZmMFw48WJF2Ck5xSnwCjzyg2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5650
X-Proofpoint-ORIG-GUID: c2b7A93Q5_3BAdAgzKl6zas_zlwpnR_F
X-Proofpoint-GUID: c2b7A93Q5_3BAdAgzKl6zas_zlwpnR_F
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-17_07,2021-10-14_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0
 lowpriorityscore=0 bulkscore=0 mlxscore=0 priorityscore=1501
 suspectscore=0 phishscore=0 clxscore=1015 mlxlogscore=754 adultscore=0
 malwarescore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2109230001 definitions=main-2110180011
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Oct 2021 01:56:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55090

--------------6E04FB0E218687EB942E49EB
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/14/21 4:59 PM, kai wrote:
> From: Kai Kang <kai.kang@windriver.com>
>
> It packages all file in ${libdir} to package sssd, including the .so
> symlink files. Then it causes QA issues:
>
> | ERROR: QA Issue: sssd rdepends on dbus-dev [dev-deps]
> | ERROR: QA Issue: sssd rdepends on ding-libs-dev [dev-deps]
>
> So re-package sssd then the .so symlink files and .pc files are packaged
> to sssd-dev which should be.
>
> File ${libdir}/libsss_sudo.so is not a symlink file but packaged to
> sssd-dev too. Then causes another QA issue:
>
> | ERROR: sssd-2.5.2-r0 do_package_qa: QA Issue:
>      -dev package sssd-dev contains non-symlink .so '/usr/lib/libsss_sudo.so' [dev-elf]
>
> So create a new sub-package libsss-sudo to package file libsss_sudo.so
> and make sssd rdepends on it.

Hi Armin,

Ping in case you may miss it.

Regards,
Kai

>
> Signed-off-by: Kai Kang <kai.kang@windriver.com>
> ---
>   recipes-security/sssd/sssd_2.5.2.bb | 14 +++++++++-----
>   1 file changed, 9 insertions(+), 5 deletions(-)
>
> diff --git a/recipes-security/sssd/sssd_2.5.2.bb b/recipes-security/sssd/sssd_2.5.2.bb
> index 76d6e03..ed8af5e 100644
> --- a/recipes-security/sssd/sssd_2.5.2.bb
> +++ b/recipes-security/sssd/sssd_2.5.2.bb
> @@ -125,10 +125,14 @@ SYSTEMD_SERVICE:${PN} = " \
>   "
>   SYSTEMD_AUTO_ENABLE = "disable"
>   
> -FILES:${PN} += "${libdir} ${datadir} ${base_libdir}/security/pam_sss*.so"
> -FILES:${PN}-dev = " ${includedir}/* ${libdir}/*la ${libdir}/*/*la"
> +PACKAGES =+ "libsss-sudo"
> +ALLOW_EMPTY:libsss-sudo = "1"
>   
> -# The package contains symlinks that trip up insane
> -INSANE_SKIP:${PN} = "dev-so"
> +FILES:${PN} += "${base_libdir}/security/pam_sss*.so  \
> +                ${datadir}/dbus-1/system-services/*.service \
> +                ${libdir}/krb5/* \
> +                ${libdir}/ldb/* \
> +                "
> +FILES:libsss-sudo = "${libdir}/libsss_sudo.so"
>   
> -RDEPENDS:${PN} = "bind bind-utils dbus libldb libpam"
> +RDEPENDS:${PN} = "bind bind-utils dbus libldb libpam libsss-sudo"
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55069): https://lists.yoctoproject.org/g/yocto/message/55069
> Mute This Topic: https://lists.yoctoproject.org/mt/86307938/3616933
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [kai.kang@windriver.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

-- 
Kai Kang
Wind River Linux


--------------6E04FB0E218687EB942E49EB
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 10/14/21 4:59 PM, kai wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:16ADDA0756FAD7E5.7007@lists.yoctoproject.org">
      <pre class="moz-quote-pre" wrap="">From: Kai Kang <a class="moz-txt-link-rfc2396E" href="mailto:kai.kang@windriver.com">&lt;kai.kang@windriver.com&gt;</a>

It packages all file in ${libdir} to package sssd, including the .so
symlink files. Then it causes QA issues:

| ERROR: QA Issue: sssd rdepends on dbus-dev [dev-deps]
| ERROR: QA Issue: sssd rdepends on ding-libs-dev [dev-deps]

So re-package sssd then the .so symlink files and .pc files are packaged
to sssd-dev which should be.

File ${libdir}/libsss_sudo.so is not a symlink file but packaged to
sssd-dev too. Then causes another QA issue:

| ERROR: sssd-2.5.2-r0 do_package_qa: QA Issue:
    -dev package sssd-dev contains non-symlink .so '/usr/lib/libsss_sudo.so' [dev-elf]

So create a new sub-package libsss-sudo to package file libsss_sudo.so
and make sssd rdepends on it.</pre>
    </blockquote>
    <p>Hi Armin,</p>
    <p>Ping in case you may miss it.</p>
    <p>Regards,<br>
      Kai<br>
    </p>
    <blockquote type="cite" cite="mid:16ADDA0756FAD7E5.7007@lists.yoctoproject.org">
      <pre class="moz-quote-pre" wrap="">

Signed-off-by: Kai Kang <a class="moz-txt-link-rfc2396E" href="mailto:kai.kang@windriver.com">&lt;kai.kang@windriver.com&gt;</a>
---
 recipes-security/sssd/sssd_2.5.2.bb | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/recipes-security/sssd/sssd_2.5.2.bb b/recipes-security/sssd/sssd_2.5.2.bb
index 76d6e03..ed8af5e 100644
--- a/recipes-security/sssd/sssd_2.5.2.bb
+++ b/recipes-security/sssd/sssd_2.5.2.bb
@@ -125,10 +125,14 @@ SYSTEMD_SERVICE:${PN} = &quot; \
 &quot;
 SYSTEMD_AUTO_ENABLE = &quot;disable&quot;
 
-FILES:${PN} += &quot;${libdir} ${datadir} ${base_libdir}/security/pam_sss*.so&quot;
-FILES:${PN}-dev = &quot; ${includedir}/* ${libdir}/*la ${libdir}/*/*la&quot;
+PACKAGES =+ &quot;libsss-sudo&quot;
+ALLOW_EMPTY:libsss-sudo = &quot;1&quot;
 
-# The package contains symlinks that trip up insane
-INSANE_SKIP:${PN} = &quot;dev-so&quot;
+FILES:${PN} += &quot;${base_libdir}/security/pam_sss*.so  \
+                ${datadir}/dbus-1/system-services/*.service \
+                ${libdir}/krb5/* \
+                ${libdir}/ldb/* \
+                &quot;
+FILES:libsss-sudo = &quot;${libdir}/libsss_sudo.so&quot;
 
-RDEPENDS:${PN} = &quot;bind bind-utils dbus libldb libpam&quot;
+RDEPENDS:${PN} = &quot;bind bind-utils dbus libldb libpam libsss-sudo&quot;
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#55069): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/55069">https://lists.yoctoproject.org/g/yocto/message/55069</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/86307938/3616933">https://lists.yoctoproject.org/mt/86307938/3616933</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:kai.kang@windriver.com">kai.kang@windriver.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
Kai Kang
Wind River Linux</pre>
  </body>
</html>

--------------6E04FB0E218687EB942E49EB--

