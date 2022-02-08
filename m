Return-Path: <kai.kang@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63D11C433EF
	for <webhook@archiver.kernel.org>; Tue,  8 Feb 2022 02:40:29 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.6186.1644288028401052195
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Feb 2022 18:40:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=cD67Dupy;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=9038f0cdee=kai.kang@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 2182SVHH019053
	for <yocto@lists.yoctoproject.org>; Mon, 7 Feb 2022 18:40:27 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=subject : to :
 references : from : message-id : date : in-reply-to : content-type :
 mime-version; s=PPS06212021;
 bh=Jrj81Kp8H1zFEvj8WgE6X+CT2WbEsNzpCZsNTfa+sxg=;
 b=cD67DupyM0CTpMfeU3WUWRammVJeJ1pkXwaD4WZlSUZ/a/GgCcteV2j9gXoYIwEoSYtU
 yS5fBiLPeItAao4x4SswgBnemEdUlXQhLSad/9//xbhUrLc7lLt2WXhtS4ZUu4C/gVOB
 P0hpX6wQ/JgwGRXXqyPFb6hr3CROwmHyfujf+GHgRhB5bAZg004zY7hCfHnZ8J6wicrC
 jpUvA72PdgijSOkBXG9oLqqwO8Jc9HNYPJi8tL/Eb9hDQzhK7c6aCab66ma0Z0epcfCm
 p727mEL+6g9pvN7VRwupyOhqu2NDceOgzbtvs9z6oPaRM//zjv1cjllRpdIf4ry2iT/X QQ==
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2168.outbound.protection.outlook.com [104.47.55.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3e3575rfhk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Mon, 07 Feb 2022 18:40:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m7tANFtfqmYAkZbW2hBwdLlwoZFGCEhpmpgFqXJ/6BQrPGXpaaQsZSAcUWA70sGIcAhVle/L4jXKuho/xeLCBkxWa7/bnjT9X652wFRn89PDDkCV+EPZi8Tw42DcKzvFYtfxpEg/pE5S9eNOErRhtsixCw15QGbz9uEjNR87FvHqIJK5RXIOli3F/3MuBIe9jEQ+FSviZpPP6SGErOyeZZUuUmJj7moxUPYJvJgrrFJ3gPd9OAbeidheFwC/q4OEKbcsQVEe/+DpuQwtVqIgLPIYLbLa3Ur7DiaqY2H9qVPJjswFiLBOQowkqXP6l8TAcA7VBdEzH/AAt05vCQTd/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Jrj81Kp8H1zFEvj8WgE6X+CT2WbEsNzpCZsNTfa+sxg=;
 b=ioZnEWnFBh/mQ7lhdxtObHAEEAHbSP6TOkBWx/miBBpYwku6jCbIHp1tMHMc85uSGC69yazZ3apoGwf0LnG14RjdUTbF7qX/NrK1k5W2CCRsPfdBtFRdUjwzG2XbE/W/Pd9NmXpXaFet3mUMNfXPbNhVxE9Wo0DGqcxl7L+O0sGElMwmyOyattTqqZLescriirwMUG5PEiH60vIfLTXwg1vrReX925e1XJDqjozb2sRHvXuf3sWyK1rqieerUmClvJJBn/xRtM5lJdU3D2PBtCyIVdxJvk/QO+kB6WjXpxhnA5QZUPiA7BizUCr+GruYp/92LBLwkaCeAPEn4kWxOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from SA2PR11MB4858.namprd11.prod.outlook.com (2603:10b6:806:f9::10)
 by DM6PR11MB3436.namprd11.prod.outlook.com (2603:10b6:5:65::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Tue, 8 Feb
 2022 02:40:25 +0000
Received: from SA2PR11MB4858.namprd11.prod.outlook.com
 ([fe80::50a3:409a:6f29:1fca]) by SA2PR11MB4858.namprd11.prod.outlook.com
 ([fe80::50a3:409a:6f29:1fca%8]) with mapi id 15.20.4951.018; Tue, 8 Feb 2022
 02:40:25 +0000
Subject: Re: [yocto] [meta-anaconda][PATCH] Update SRC_URI git default branch
To: Changqing Li <changqing.li@windriver.com>, yocto@lists.yoctoproject.org
References: <20220121061039.19785-1-changqing.li@windriver.com>
From: Kai <kai.kang@windriver.com>
Message-ID: <ad55247b-2e5f-fb27-a337-aa5c815f86d9@windriver.com>
Date: Tue, 8 Feb 2022 10:40:18 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <20220121061039.19785-1-changqing.li@windriver.com>
Content-Type: multipart/alternative;
 boundary="------------B6EF1997E851D998330907C8"
Content-Language: en-US
X-ClientProxiedBy: YT1PR01CA0119.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2c::28) To SA2PR11MB4858.namprd11.prod.outlook.com
 (2603:10b6:806:f9::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f268ae5c-a801-4a1f-916b-08d9eaac5c16
X-MS-TrafficTypeDiagnostic: DM6PR11MB3436:EE_
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB34367599703F1E1A3C9557FA952D9@DM6PR11MB3436.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:415;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	bAwG+pCoHNTkwsyRUwAbrXAR/tRFbxGHgym9hPo6TuY7eb0QFR3su8cDLH6gCkBlAXX+oFnKNgM7N+VbiHIGSFNDiNTDNfwyK5IpoMNkaOio3N2BT082VDWLXcUv7FN/moX7gfUGnSW5BtJU7AzcVtrheTZl++KbB0L/izIPjD3VtN4wsq6EM0kBEBHKsIKzhOtk5lUdMs76Jr1XTIyEcdbOMz/7azSDPeyChHwf/T68oGoSnk8gDQ+ku+fmrQNzePYZz6yCCxcNqLZxGn8D9k3ZosEEK6FdWY1vzlML8g9Odtfc/mYCKt7vNbqz18WDQ5FElYiDm1DvHrdI5yEHoVy97tWgYnreM7FrFVi9fwRhtMaCpHwxhCMBlIuQtx3fzXcMYdeQ2bjt8xKTeytdm2AwBVYSvOO7cWDXxtPmE4IV5Dbrkuom6ogSRovCAkwW89L2bDmZ/KgEHbFcYC5HL6wTauuToMCblXK3Sbb7HK+WkHldYsLALL+39XJM1K7VmAYmxk+NJG+JMymVD3jlN8nIa747pYzTqg3S4UXRM0Th9HV2d2ee+JwO7Py1vgnGJa9DrtxdMPtd99wFR9fpVIW9biv1k8frEXi3aPXHVJrXlR2E5Vl7z1pVvtZXxB7v2LbcqJaOCfqKl5KMaSnAx2AakKrYwIZnFSd6zkXJ/hCOJOHr6c/B+pSqNjvnEVbA4H+Ga54NjYOg/n3u1NVIDbl6cNDe7Pfort+7WaGisYwyhhmNHtKOsjg60+KCwdVm1dYBF3KrhkZY5U69U+JxHHoWPdOMz19TNx+6oBaiwdR6uzGD+xEgDhAyzHNB/tiSuBCFJxHG5nzy2ZGukcRDFrh58ih7N2oFAHpMcpnPkEU/wMKxZ1sMkmkS7FRjh40BUpiQdjoK1zPFBWvUBaW/SGh1H5Z1rqChv9wSnR52osk=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA2PR11MB4858.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(8936002)(38100700002)(8676002)(66556008)(66946007)(66476007)(83380400001)(36756003)(5660300002)(52116002)(6486002)(33964004)(15650500001)(966005)(53546011)(508600001)(6666004)(6512007)(6506007)(2906002)(316002)(31696002)(31686004)(38350700002)(2616005)(26005)(86362001)(186003)(166002)(135923001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RU4waHl2aGZtNTB5L1A3REpYN2dLamZ6STJNNW9sUmZUYnEzSElPZFhveXRC?=
 =?utf-8?B?emFtQituYVVwQ3FPanZ3NkFIZFI5MVpKamErSGwxdWxsYzJQZ2dJUEYwVFlV?=
 =?utf-8?B?WW9DL1N1dXNOcituTk1rSW4xREx4Wm9LNW82MjU3dHZ6anNudExNV0ZCUGZC?=
 =?utf-8?B?enNPckhmdmdpdlZVTlBxcWptUllIUFFCbDdmTFJBZjU5TlI0ZmVpVGViZ1FV?=
 =?utf-8?B?L1hoak44RWdJNXY1cnBCUGpaaWw1WWl0SzlIZG1HUm40d3NSUEFhbmROdS8r?=
 =?utf-8?B?bTQ5YzJoQktPVFYyeXprZnZHZkVSU3V3bjdhRXI2SE50ZmJVZS9CTEMwaVF5?=
 =?utf-8?B?WlVuSEVDN3dwVktYSEdkVWxNT01kU0tGTEk2VFFrVXdsN1VWcks5QXJIUUxj?=
 =?utf-8?B?Z29aQzFTRnJ1VWFUR0VQOUpOTmRGc0diVFYxMndFOXpMUERsUnJXTUhoUHRi?=
 =?utf-8?B?U0tuSlF0OUZZOFdnOHpSenpmQmJPUUh1cGh0TFBIaDVjU2dtVEszNVRpM1B0?=
 =?utf-8?B?NWJPVllaZG5sYjRkV05vRmU1cEllLzZKYU9VQ0JoUi84SXFYTDNjcWlLeVRD?=
 =?utf-8?B?V0dqT1FlRUFmVEdaYysrOEtNdnJHK3BoOXJPYytmb1lmQW5xcVk4U3R0WElS?=
 =?utf-8?B?R3lNcXVGS0p1czJHSHVsbGVyQ2E1Q0xVMkQ4Yk9lNFlCVGhRSFhmZXJnMU5U?=
 =?utf-8?B?YVRkZDRaa3VWREtHM2t1dkJpeE51Q0NiQzRKbW5IRm13Ukpma3FZbkF5c3h3?=
 =?utf-8?B?dG11N0lWY2dxVjQ1a1R3RURoKzc4L0xhcXRVUm5jWTRnUlFlc0ZwSjdIdnAw?=
 =?utf-8?B?MEFFNEs4alNIY053SkJJQUllKzcrelRSSWVxZlFncW5ZQlRzU0NPR2NXS2Np?=
 =?utf-8?B?OENnQVR5dm14SFNUclFqbDIyRXhHdkRtaXpyb1BjT2V4VXd5Wnduald2VnBH?=
 =?utf-8?B?RmpFMXhQTXZJbXBVOEVHVWdRdXZrMFdkS2laelRUU29TbXZqV2JUcVN2VGNu?=
 =?utf-8?B?MUNSL1BUVWNjL3FjYnU2ekpUMWhoQUR2aUlSNC9pWnB1ekd2TmNzV2VBaWEw?=
 =?utf-8?B?eHl5NWx2aGxGNXQ1TDA5ZlNDRTNXRjJ0SU9ZNkJXbVdaMWQxcFgyQWR1ZXRk?=
 =?utf-8?B?MG1YN0I0RG84MUp1cVl3Q2ZJbmQ1ZUxsZ0pvUVFpbGN4T3hGalo1RVVWL1BW?=
 =?utf-8?B?anNwUGY0QktUQUNkamF0YUhucTVRY25EamFvWEpTM2pld1hYU3BiZE01ZUgr?=
 =?utf-8?B?SzRQcUJDR0lHN1p2OU8ySEtFN2Q3eVJhVk9FMUpXekZ4SHZoV1RtVzBjNzJn?=
 =?utf-8?B?VDlMVFRUVGxnYVFNZ2JZclZhSUZwT1c3QjZlbHZld2tsU1hFU3h4elNhcGRJ?=
 =?utf-8?B?Tll5cVlPanQ3RTBkR0RqR0pMdFZQWkc0SFBUcHdZTnJiMmczcERyZW5WZzFk?=
 =?utf-8?B?QzZQa2lHOHBDdWFnY2cvOXQxUUVtaGNiVE5ONzVwaWdLaTBNY1lWN0crRUgy?=
 =?utf-8?B?dnNvT252WVVkNXMyU1FjekdXbC9tckc4OHp0SE9qZktnN1dEVitDbEtONEVr?=
 =?utf-8?B?UGR1Y25QcnEwMTB6SEQvMTMxZWU4OVJzL3d1Ky8zZ1ZGY1pGV2ZlMTR0UEtJ?=
 =?utf-8?B?SHBYT2tXYWpWSUE0dC9RWGNuRHdiZFVXTWE3dEcxR2dVRmZKYlpIRFZ0Nmtx?=
 =?utf-8?B?VFFEUHN6dzV5TkZqRktmOEt2cHNhcC9QcWxUSkJ2YmRJNHBrRCtZbWJaSmha?=
 =?utf-8?B?RmZlVG9VU1ZHcUQ3dytpV252YWJNSC9abkRmcWhlOWROSUxoVVp6cURPL0xZ?=
 =?utf-8?B?OS85WkQwbmRzQzlrL1VDV2N1UFhSdlpaZzJQb3VIR2psaW9rV2NYZXk1WnFH?=
 =?utf-8?B?cEF5U2V2VFdLL2RyUmpMK1NtMGxNc0hLTjI3cFAvblpwQm5NTlpISmY1YU4z?=
 =?utf-8?B?cWFWcTZzc2ZKRlVPTSs1aGhxZDhPOCtPSXVnWXZVb3F4UHBCNU1La1QwSXFp?=
 =?utf-8?B?NHRpcGpXYSswZ0piTmp3cHpQMWxHM1ZEZjZublgxdENqWTFrdXdjRHczSTRS?=
 =?utf-8?B?TmhQYnVxSHN2OVNXanRYRE9BVGRFK0pseEZCM2ZWYS9qQ2tlQ2hsNjRjN3ZJ?=
 =?utf-8?B?VzZkd3EwdUVZa2dxTmkwQVF5MmcxWEl4b3dIMmRYZDQzTk9ldGRCNWtnOXFl?=
 =?utf-8?Q?dsr9mOTygLlTUtVUuvNGdsw=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 f268ae5c-a801-4a1f-916b-08d9eaac5c16
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB4858.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Feb 2022 02:40:25.1767
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 McxdA3hBc2c/wOUV3LXeyjdt6cnyyvZe7XKlNO9Ij9dG+5TYUsOBiTnZn2NiIqRT2tk4bTTsi5yxap3fDrJ3zw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3436
X-Proofpoint-ORIG-GUID: sGqkJLVOkxZ89W5LlJKE81UNsuuRX1P1
X-Proofpoint-GUID: sGqkJLVOkxZ89W5LlJKE81UNsuuRX1P1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-02-07_07,2022-02-07_02,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0
 mlxlogscore=895 clxscore=1011 adultscore=0 impostorscore=0 malwarescore=0
 priorityscore=1501 spamscore=0 mlxscore=0 bulkscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2201110000
 definitions=main-2202080013
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Feb 2022 02:40:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56102

--------------B6EF1997E851D998330907C8
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/21/22 2:10 PM, Changqing Li wrote:
> From: Changqing Li <changqing.li@windriver.com>
>
> Signed-off-by: Changqing Li <changqing.li@windriver.com>

Merged.

Thanks,
Kai

> ---
>   recipes-installer/python3-dasbus/python3-dasbus_1.6.bb         | 2 +-
>   recipes-installer/python3-productmd/python3-productmd_1.21.bb  | 2 +-
>   recipes-installer/python3-simpleline/python3-simpleline_1.3.bb | 2 +-
>   3 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/recipes-installer/python3-dasbus/python3-dasbus_1.6.bb b/recipes-installer/python3-dasbus/python3-dasbus_1.6.bb
> index c42ab52..5b87391 100644
> --- a/recipes-installer/python3-dasbus/python3-dasbus_1.6.bb
> +++ b/recipes-installer/python3-dasbus/python3-dasbus_1.6.bb
> @@ -4,7 +4,7 @@ SECTION = "devel"
>   LICENSE = "LGPLv2.1"
>   LIC_FILES_CHKSUM = "file://LICENSE;md5=1803fa9c2c3ce8cb06b4861d75310742"
>   
> -SRC_URI = "git://github.com/rhinstaller/dasbus.git;protocol=https;"
> +SRC_URI = "git://github.com/rhinstaller/dasbus.git;protocol=https;branch=master"
>   SRCREV = "63b22fe4a7b2f98739279b2a4c6107eebd8d5a58"
>   
>   S = "${WORKDIR}/git"
> diff --git a/recipes-installer/python3-productmd/python3-productmd_1.21.bb b/recipes-installer/python3-productmd/python3-productmd_1.21.bb
> index 98fd0de..8dcd434 100644
> --- a/recipes-installer/python3-productmd/python3-productmd_1.21.bb
> +++ b/recipes-installer/python3-productmd/python3-productmd_1.21.bb
> @@ -6,7 +6,7 @@ SECTION = "devel"
>   LICENSE = "LGPLv2.1"
>   LIC_FILES_CHKSUM = "file://LICENSE;md5=768997ba510a952bef1775c50bc22b00"
>   
> -SRC_URI = "git://github.com/release-engineering/productmd;protocol=https; \
> +SRC_URI = "git://github.com/release-engineering/productmd;protocol=https;branch=master \
>              file://add-wrlinux-version-pattern.patch \
>              "
>   SRCREV = "a8268944c8a6064697ccb4d24e52dc666ab03ed4"
> diff --git a/recipes-installer/python3-simpleline/python3-simpleline_1.3.bb b/recipes-installer/python3-simpleline/python3-simpleline_1.3.bb
> index dcf7e1d..651b9d0 100644
> --- a/recipes-installer/python3-simpleline/python3-simpleline_1.3.bb
> +++ b/recipes-installer/python3-simpleline/python3-simpleline_1.3.bb
> @@ -6,7 +6,7 @@ SECTION = "devel"
>   LICENSE = "GPLv2"
>   LIC_FILES_CHKSUM = "file://COPYING;md5=5f4f48e95324081879552f19cd16c54a"
>   
> -SRC_URI = "git://github.com/rhinstaller/python-simpleline;protocol=https;"
> +SRC_URI = "git://github.com/rhinstaller/python-simpleline;protocol=https;branch=master"
>   SRCREV = "1c21ffdeda9eed27e5ad8ec16aee467f8daecd50"
>   S = "${WORKDIR}/git"
>   inherit setuptools3
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55937): https://lists.yoctoproject.org/g/yocto/message/55937
> Mute This Topic: https://lists.yoctoproject.org/mt/88578097/3616933
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [kai.kang@windriver.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

-- 
Kai Kang
Wind River Linux


--------------B6EF1997E851D998330907C8
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 1/21/22 2:10 PM, Changqing Li wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20220121061039.19785-1-changqing.li@windriver.com">
      <pre class="moz-quote-pre" wrap="">From: Changqing Li <a class="moz-txt-link-rfc2396E" href="mailto:changqing.li@windriver.com">&lt;changqing.li@windriver.com&gt;</a>

Signed-off-by: Changqing Li <a class="moz-txt-link-rfc2396E" href="mailto:changqing.li@windriver.com">&lt;changqing.li@windriver.com&gt;</a></pre>
    </blockquote>
    <p>Merged.</p>
    <p>Thanks,<br>
      Kai<br>
    </p>
    <blockquote type="cite" cite="mid:20220121061039.19785-1-changqing.li@windriver.com">
      <pre class="moz-quote-pre" wrap="">
---
 recipes-installer/python3-dasbus/python3-dasbus_1.6.bb         | 2 +-
 recipes-installer/python3-productmd/python3-productmd_1.21.bb  | 2 +-
 recipes-installer/python3-simpleline/python3-simpleline_1.3.bb | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-installer/python3-dasbus/python3-dasbus_1.6.bb b/recipes-installer/python3-dasbus/python3-dasbus_1.6.bb
index c42ab52..5b87391 100644
--- a/recipes-installer/python3-dasbus/python3-dasbus_1.6.bb
+++ b/recipes-installer/python3-dasbus/python3-dasbus_1.6.bb
@@ -4,7 +4,7 @@ SECTION = &quot;devel&quot;
 LICENSE = &quot;LGPLv2.1&quot;
 LIC_FILES_CHKSUM = <a class="moz-txt-link-rfc2396E" href="file://LICENSE;md5=1803fa9c2c3ce8cb06b4861d75310742">&quot;file://LICENSE;md5=1803fa9c2c3ce8cb06b4861d75310742&quot;</a>
 
-SRC_URI = &quot;git://github.com/rhinstaller/dasbus.git;protocol=https;&quot;
+SRC_URI = &quot;git://github.com/rhinstaller/dasbus.git;protocol=https;branch=master&quot;
 SRCREV = &quot;63b22fe4a7b2f98739279b2a4c6107eebd8d5a58&quot;
 
 S = &quot;${WORKDIR}/git&quot;
diff --git a/recipes-installer/python3-productmd/python3-productmd_1.21.bb b/recipes-installer/python3-productmd/python3-productmd_1.21.bb
index 98fd0de..8dcd434 100644
--- a/recipes-installer/python3-productmd/python3-productmd_1.21.bb
+++ b/recipes-installer/python3-productmd/python3-productmd_1.21.bb
@@ -6,7 +6,7 @@ SECTION = &quot;devel&quot;
 LICENSE = &quot;LGPLv2.1&quot;
 LIC_FILES_CHKSUM = <a class="moz-txt-link-rfc2396E" href="file://LICENSE;md5=768997ba510a952bef1775c50bc22b00">&quot;file://LICENSE;md5=768997ba510a952bef1775c50bc22b00&quot;</a>
 
-SRC_URI = &quot;git://github.com/release-engineering/productmd;protocol=https; \
+SRC_URI = &quot;git://github.com/release-engineering/productmd;protocol=https;branch=master \
            <a class="moz-txt-link-freetext" href="file://add-wrlinux-version-pattern.patch">file://add-wrlinux-version-pattern.patch</a> \
            &quot;
 SRCREV = &quot;a8268944c8a6064697ccb4d24e52dc666ab03ed4&quot;
diff --git a/recipes-installer/python3-simpleline/python3-simpleline_1.3.bb b/recipes-installer/python3-simpleline/python3-simpleline_1.3.bb
index dcf7e1d..651b9d0 100644
--- a/recipes-installer/python3-simpleline/python3-simpleline_1.3.bb
+++ b/recipes-installer/python3-simpleline/python3-simpleline_1.3.bb
@@ -6,7 +6,7 @@ SECTION = &quot;devel&quot;
 LICENSE = &quot;GPLv2&quot;
 LIC_FILES_CHKSUM = <a class="moz-txt-link-rfc2396E" href="file://COPYING;md5=5f4f48e95324081879552f19cd16c54a">&quot;file://COPYING;md5=5f4f48e95324081879552f19cd16c54a&quot;</a>
 
-SRC_URI = &quot;git://github.com/rhinstaller/python-simpleline;protocol=https;&quot;
+SRC_URI = &quot;git://github.com/rhinstaller/python-simpleline;protocol=https;branch=master&quot;
 SRCREV = &quot;1c21ffdeda9eed27e5ad8ec16aee467f8daecd50&quot;
 S = &quot;${WORKDIR}/git&quot;
 inherit setuptools3
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#55937): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/55937">https://lists.yoctoproject.org/g/yocto/message/55937</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/88578097/3616933">https://lists.yoctoproject.org/mt/88578097/3616933</a>
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

--------------B6EF1997E851D998330907C8--

