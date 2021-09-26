Return-Path: <changqing.li@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A5BFC433F5
	for <webhook@archiver.kernel.org>; Sun, 26 Sep 2021 08:15:08 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.16350.1632644106734818139
 for <yocto@lists.yoctoproject.org>;
 Sun, 26 Sep 2021 01:15:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=YMdGjAwj;
 spf=pass (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=49036ab0b0=changqing.li@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 18Q8Dig2013990
	for <yocto@lists.yoctoproject.org>; Sun, 26 Sep 2021 08:15:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=subject : from :
 to : references : message-id : date : in-reply-to : content-type :
 mime-version; s=PPS06212021;
 bh=OwbNENWrZJaJ0fKI6YrwSFWyRWS4Va+BO2qZP7lxfFs=;
 b=YMdGjAwj8D67kDOgFkILH0laPWSNJEBbSPzAMAD/3p0KwL+SAg1mGCVplH8clc5R+tJF
 kkmZiQcv33/NEwAkIGNebxDCq952h0g+8LSgfspbFql0QdNrgCP5VPc+/M2txXa3jvJT
 705DTpxn68ZxUpLmfSsfKR7rUD47qBpvKXmcc1KAsJjgRCM5sC/b+z8Qgy1FcP9uHyN8
 PA3/MTBXvmkcvolM8PH5QEQG9wf6jKpPkG9trnoeHSeKb1IpVkVgjErKeHHix6VmCA+V
 Pon+X5hb8YCGth6A4Yq9ZOlgp3L196PyRElH1Rm6aiKtP6i3krgOSlR0GMpknm4dvqTk Rw==
Received: from nam02-sn1-obe.outbound.protection.outlook.com
 (mail-sn1anam02lp2046.outbound.protection.outlook.com [104.47.57.46])
	by mx0a-0064b401.pphosted.com with ESMTP id 3bacqmr6bb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Sun, 26 Sep 2021 08:15:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JxHtqmn/+WsHgxdxWpBcvkGjq2iWtdMe0vYusRWNMb6YpF9niFYftlyAnLsHAHWwk4mRg2oBqe+Sz9kL2qbQ9gwRZro4OJQnbRXQFPIXOAIqjL4ArZubyL7i3gdWVuofoubFwa5Bzoyk0tpSNmWchvY17rfY/5sJaEQl8FzsgzQdpojZsg/dd3p5ikVFJ8BVBNWDd7+8t/UIvFQczK66cL9aZyehcwgVmzfd4M+BOgHclLtu9leHmevIPR5JHnXMnKuzWTc/6PtgrpApPBXYcSq7MGxT/NfZGvWUruzvYq9naWZfEZzDOMTiPU0Q00S4c0VdFFzTRutV6xtZ52LxiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=OwbNENWrZJaJ0fKI6YrwSFWyRWS4Va+BO2qZP7lxfFs=;
 b=eBsxlGMpzIL+xgScoZAb5R8PXSp2vpiXJv81xdZCSazN5W6f5vYC5TRSG5UmDkG43WuUmWa9wxnKEveGlWEsJNDk/hta2VVa21iJ97vtFVXhm3zo+GLF/uuM7oPd1dxYTbwxCD6RnGwV0Lo3aOoSHuXxGK4KI3CQLSXnO2ij+0ueLzKRxVOctLHh9OG/UhMwxWpPyhrPu8jk0nLcDW7yEOWa9eoVB3J0Sas4DbLoxwqk+wnvOQ1NOjUo2Ls63Ifo5B8BUFlHWKB+HGfk1TIJb+bpnBNO5cua1eB/ZsSoofp8Ct4MUccZjuUER+rPW19ejTDjQSkI1oxnopa5ybpQpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from SN6PR11MB2557.namprd11.prod.outlook.com (2603:10b6:805:56::33)
 by SA2PR11MB5099.namprd11.prod.outlook.com (2603:10b6:806:f9::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.15; Sun, 26 Sep
 2021 08:15:04 +0000
Received: from SN6PR11MB2557.namprd11.prod.outlook.com
 ([fe80::a544:19b6:196b:f339]) by SN6PR11MB2557.namprd11.prod.outlook.com
 ([fe80::a544:19b6:196b:f339%5]) with mapi id 15.20.4544.021; Sun, 26 Sep 2021
 08:15:04 +0000
Subject: Re: [yocto] [layerindex-web][PATCH] recipeparse.py: add BBLAYERS in
 bblayers.conf
From: Changqing Li <changqing.li@windriver.com>
To: yocto@lists.yoctoproject.org
References: <16A83B466911D4C5.26412@lists.yoctoproject.org>
Message-ID: <7cd57f03-7f3f-a436-5b3b-ddc17eeb6bd3@windriver.com>
Date: Sun, 26 Sep 2021 16:14:55 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <16A83B466911D4C5.26412@lists.yoctoproject.org>
Content-Type: multipart/alternative;
 boundary="------------4174F739B45D88ADC1E383F8"
Content-Language: en-US
X-ClientProxiedBy: HK2PR04CA0086.apcprd04.prod.outlook.com
 (2603:1096:202:15::30) To SN6PR11MB2557.namprd11.prod.outlook.com
 (2603:10b6:805:56::33)
MIME-Version: 1.0
Received: from [128.224.162.189] (60.247.85.82) by
 HK2PR04CA0086.apcprd04.prod.outlook.com (2603:1096:202:15::30) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.13 via Frontend
 Transport; Sun, 26 Sep 2021 08:15:02 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 854d4b1d-bd18-49c2-29f6-08d980c5be1f
X-MS-TrafficTypeDiagnostic: SA2PR11MB5099:
X-Microsoft-Antispam-PRVS: 
	<SA2PR11MB50999FB4DCA512F7731F5CF082A69@SA2PR11MB5099.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:42;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	UTxeB8RIeI9+URGyL2NFTMaDTDfewfpjMc4kUsx5UKLLdbcsgwtiV/2FSzKjgeZ7Yv4WGAqAF+b3aBUQz3D8hZrddI1sngBipVJTY1lQIFYj8FkO1NiT20o5xUMSTdGbD7W2d5eMzVvoYQUfp3B/QiJw5LAof5N7/PzXcr3onmjPt+ev8u9+ytVZcplkWcuMXyn9EMpr4zwkw4orrPuck5nnZqb3t1Jup+dAyvkI7d5yFE1JI0SOqCDJfrkw7IZnRmoHws+kzX8+xtcmrYvwitdAI55aEoduFhiBAs7bgdaGqfFoBxzuiCewcHJpr0Bw17PJBZdwl+z6tRtFAlYT8IbSlxYBuXnubk0bS2QZC2JqOV7dPgnqG+AaPmboGoLAaSJeRAe//NoyI5xROH8SxDYfKup9MYUoxGg6uAwr+T0NaVjpSMwRq5XZF97ihfNaVSKCt5Ew5/39zw26+dSi04T4vxAN0LW585MNJRuMd7LFpm51bYxuNF/NTZb5QMyDbjFqkyuochNMw9OvlH9Qd6WiAt0oeDPy1qXBIzrog5nHXlkyh0RARsFhlLtecjpN0pQDkGGIEdGdRlvffgA02YOWbA7nTM98u95Qb7Bq1T6UaYKOWGHWbffEMKlEWO1IEg0/cUmneRA0YYyVLXtpgAk8CrQWAHmKn0z86Y89IStGQOI9WzEVq0OjFhUpKL03/JO71udRcE9dVRJK+AXW977ib5nhbkrV0B4t7Q0bQQorSQ9Xua9ul2vuQQZv1GSOJhGp0be4EKDSCr/T/At0P7ZGHDwP0/pjt+Yg3m2fqp01wr82TO+cSwPndCEQ2yi2bhAyNx75sE1gcquTWHYmS4VuHFgzvICi55wZgipW40SQLiY9LMIGlF/qdr6sEIVFviaAlVIDRu4xW10uectWRQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR11MB2557.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(508600001)(8936002)(38100700002)(38350700002)(31686004)(53546011)(966005)(66556008)(66476007)(52116002)(33964004)(31696002)(6486002)(66946007)(2616005)(956004)(83380400001)(6706004)(316002)(16576012)(86362001)(44832011)(26005)(186003)(6666004)(8676002)(5660300002)(166002)(6916009)(36756003)(2906002)(78286007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Zi9KS3FrWVZTTHFIbFAvZXFYcW5OL1pRc2lscTBjRDlGTEU3cHFMSTdxY0dP?=
 =?utf-8?B?TWlkbysrZmYwS3NydE9ZTnFKZzM4U3ZRQlVpdW5ZTE5ZaVlKYllWRXhSQ3Ro?=
 =?utf-8?B?enJWWWVKTlFLSUN3eGhhZVFEa0ZPL1E3VUtEVDMyNnVtMk9zSG5uODFvVytq?=
 =?utf-8?B?alJ3U2swblBmaVlVY3NtQjY3MjRkY2RreFJWNkVJejRwcFRUb3BMcW9Yb3Rr?=
 =?utf-8?B?aXdNTFkwb2RKeis2Q1FNV1I2SWtTT3VsT1VSMlZsUVFxSUlPR0pmZEUvb2hI?=
 =?utf-8?B?ekZxaFFFbnM0R0tFdC96K2pJcmF1VEFWVEZ5WExlNnBzWmxsZjJFbUJiVmdQ?=
 =?utf-8?B?d2pKeGZseldMbXhGdDdiSHZUN3ZlNXh3NUl2QTJ2cStSdzl6blRoaldWMlc2?=
 =?utf-8?B?ZkFaTnNJL2U5aGhGRTVOamo5YjJuajF0SE9nL2h6b3FLelFtZE1TR0lwTVRL?=
 =?utf-8?B?bkhlVWU4dTJDNGpVQlZoM1U2OUFDT0duU3hlVEtRQ0Myb1FMdlpGL2FrN2NB?=
 =?utf-8?B?TGhMN3Z4cUNpeFBaTDdmVGlmR1djVTJaSW8yVW1zVS9ESEFEM1ZzV3VvWUZK?=
 =?utf-8?B?bXQ4d2dZNzRNeVdmWmFOWmxwNHZDSzZQajV2NENya3VMeVA2OTBsWUJMNFNt?=
 =?utf-8?B?dXRieDBqV0RuU2k4U0FvdTk4aTlzbi9GNmlQUnhYOWxkdkYxUldXcFNvZERz?=
 =?utf-8?B?OFk5Uk82ZDBQd25UWHpYNmE3MnVhb1loZXhaSXErdmlWTGFFdGJnenludVFv?=
 =?utf-8?B?T1EwdUNBaStCdk50eGx2WHlJZ2YyUnZNQ3NreUUzcFNLcEJRaTV5Q2t3U1Ra?=
 =?utf-8?B?MmNnQk1MUUNQN2FLU2dSVSt6V1hKZU1mMHJieXFpMVFzVjAvaExWRXI4cnJl?=
 =?utf-8?B?cFM5M0QyTmRGVE1zbnFONy9idUVsTURiZnR3d3M3QzB3ZWdGbFRuTVZkYnRt?=
 =?utf-8?B?YlVqSXFoUVBZWlFnbXhhN1ZNY3cyT2c2UnhIYy94eFBHNnRGWWU1WWlFK0hh?=
 =?utf-8?B?S1VVNzd3ZjNUcXVNd1l1NjRIcG4zTDIrTW1xMC9iV0FLcnVqVmwzQmhPVHQ4?=
 =?utf-8?B?c2Jnbmp4REFvUHJUeEc4Y2VjZGJvUXF2RHJRZllEWGJEU1BOYXM1anhTeks3?=
 =?utf-8?B?ZGhqUTRIeGRTMEMrUUZneEF4U1ZIUFlwc2lzS2xPWU1rNENwY1BKWjd3Nldk?=
 =?utf-8?B?UkJ3N1VTd0phcit5dXgzaWNHSWJMQmhQRHVvMjBKQmlYZ3hwMEJNRVpmbSsx?=
 =?utf-8?B?d0hYZDNsM1k0Z0JSaGMydkg2YWFNbmZrN3V4bGxKTFdRaGxWVEZwcm5rendB?=
 =?utf-8?B?d2ZKWVpZQ05VVC9WeG5mQURua0c5d05SeENMSlI2Z1ZZbG5obm82N2lLY24x?=
 =?utf-8?B?UTdOeFBiWm1scnNQT29ZZFNYM0p1UlJlOW9IbE9pWUJ6cDE1WVlDUlgvME4v?=
 =?utf-8?B?OGtxVE5nYjMyYmdXWmdzeHc3V1hiYk5RWHNTYlVYQ0U4U20zOEkzYzNPS0p5?=
 =?utf-8?B?V1NlNGxkVmFKTEFGeTR4bUFIQTRmTHMvWlhqSk9iR0hsekJkUzcxRmpoL2JP?=
 =?utf-8?B?YW5wVC9BcEtKeUxXNWdndTZtUTNKT3o1RVkvb2tFVGJWMVhzTGZnMDE2aHk5?=
 =?utf-8?B?UXU3cVBaTXlMQTZ1dWNuWUVMcU5uVERYUTJBZ0dZZWdybDJqZjdyczdzZlky?=
 =?utf-8?B?bTg5Z2RCTEhTWldUK1ZOclBtd2pZL0NZU0NIYmRiRlAwbHJydTgyV2YrTkE0?=
 =?utf-8?Q?tXedDM/hQW7CDH4xKMwADxDVVHDiVEupYePqLxo?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 854d4b1d-bd18-49c2-29f6-08d980c5be1f
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2557.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2021 08:15:03.8340
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 E35cwuAvMEbTBPEClzL3T6XyEZyDFKRvwYHXPTGnjNp4krQB0RoExcP1+xAy/Utm0X+r1KAnSAZqSHLbccEjudiTQU/XVMXDQtJnBIHJ6CA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5099
X-Proofpoint-GUID: If2Bs7j-GzvSpaXzgnD1qu2RAvtnrn0E
X-Proofpoint-ORIG-GUID: If2Bs7j-GzvSpaXzgnD1qu2RAvtnrn0E
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-09-26_02,2021-09-24_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0
 mlxlogscore=997 spamscore=0 mlxscore=0 lowpriorityscore=0 adultscore=0
 bulkscore=0 phishscore=0 impostorscore=0 suspectscore=0 priorityscore=1501
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2109260056
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 26 Sep 2021 08:15:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54860

--------------4174F739B45D88ADC1E383F8
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

Please ignore this patch, I need to send a V2

Thanks

Changqing

On 9/26/21 9:32 AM, Changqing Li wrote:
> From: Changqing Li <changqing.li@windriver.com>
>
> since commit [97183e10f cookerdata: Show error for no BBLAYERS in
> bblayers.conf], no BBLAYERS in bblayers.conf will cause layerindex
> update failed with below error:
>
> ERROR: Traceback (most recent call last):
> File "update_layer.py", line 478, in main
> (tinfoil, tempdir) = recipeparse.init_parser(settings, branch, bitbakepath, nocheckout=options.nocheckout, logger=logger)
> File "/path/to/layerindex-web/layerindex/recipeparse.py", line 83, in init_parser
> tinfoil = utils.setup_tinfoil(bitbakepath, enable_tracking, loglevel=logger.getEffectiveLevel())
> File "/path/to/layerindex-web/layerindex/utils.py", line 206, in setup_tinfoil
> tinfoil.prepare(config_only = True)
> File "/path/to/layerindex/git___lxgit_wrs_com_bitbake/lib/bb/tinfoil.py", line 413, in prepare
> config_params.updateToServer(self.server_connection.connection, os.environ.copy())
> File "/path/to/layerindex/git___lxgit_wrs_com_bitbake/lib/bb/cookerdata.py", line 73, in updateToServer
> ret, error = server.runCommand(["updateConfig", options, environment, sys.argv])
> File "/path/to/layerindex/git___lxgit_wrs_com_bitbake/lib/bb/server/process.py", line 410, in runCommand
> raise bb.BBHandledException()
> bb.BBHandledException
>
> Signed-off-by: Changqing Li <changqing.li@windriver.com>
> ---
>   layerindex/recipeparse.py | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/layerindex/recipeparse.py b/layerindex/recipeparse.py
> index 62c08e9..d4343b4 100644
> --- a/layerindex/recipeparse.py
> +++ b/layerindex/recipeparse.py
> @@ -79,6 +79,7 @@ def init_parser(settings, branch, bitbakepath, enable_tracking=False, nocheckout
>           if not classic:
>               # We need this to avoid problems with AVAILABLE_LICENSES
>               f.write('COREBASE = "%s"\n' % core_repodir)
> +            f.write('BBLAYERS ?= "%s"\n' % core_layerdir)
>           pass
>   
>       if logger:
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#54858): https://lists.yoctoproject.org/g/yocto/message/54858
> Mute This Topic: https://lists.yoctoproject.org/mt/85871827/3616873
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [changqing.li@windriver.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

--------------4174F739B45D88ADC1E383F8
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>Hi, <br>
    </p>
    <p>Please ignore this patch, I need to send a V2</p>
    <p>Thanks</p>
    <p>Changqing<br>
    </p>
    <div class="moz-cite-prefix">On 9/26/21 9:32 AM, Changqing Li wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:16A83B466911D4C5.26412@lists.yoctoproject.org">
      <pre class="moz-quote-pre" wrap="">From: Changqing Li <a class="moz-txt-link-rfc2396E" href="mailto:changqing.li@windriver.com">&lt;changqing.li@windriver.com&gt;</a>

since commit [97183e10f cookerdata: Show error for no BBLAYERS in
bblayers.conf], no BBLAYERS in bblayers.conf will cause layerindex
update failed with below error:

ERROR: Traceback (most recent call last):
File &quot;update_layer.py&quot;, line 478, in main
(tinfoil, tempdir) = recipeparse.init_parser(settings, branch, bitbakepath, nocheckout=options.nocheckout, logger=logger)
File &quot;/path/to/layerindex-web/layerindex/recipeparse.py&quot;, line 83, in init_parser
tinfoil = utils.setup_tinfoil(bitbakepath, enable_tracking, loglevel=logger.getEffectiveLevel())
File &quot;/path/to/layerindex-web/layerindex/utils.py&quot;, line 206, in setup_tinfoil
tinfoil.prepare(config_only = True)
File &quot;/path/to/layerindex/git___lxgit_wrs_com_bitbake/lib/bb/tinfoil.py&quot;, line 413, in prepare
config_params.updateToServer(self.server_connection.connection, os.environ.copy())
File &quot;/path/to/layerindex/git___lxgit_wrs_com_bitbake/lib/bb/cookerdata.py&quot;, line 73, in updateToServer
ret, error = server.runCommand([&quot;updateConfig&quot;, options, environment, sys.argv])
File &quot;/path/to/layerindex/git___lxgit_wrs_com_bitbake/lib/bb/server/process.py&quot;, line 410, in runCommand
raise bb.BBHandledException()
bb.BBHandledException

Signed-off-by: Changqing Li <a class="moz-txt-link-rfc2396E" href="mailto:changqing.li@windriver.com">&lt;changqing.li@windriver.com&gt;</a>
---
 layerindex/recipeparse.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/layerindex/recipeparse.py b/layerindex/recipeparse.py
index 62c08e9..d4343b4 100644
--- a/layerindex/recipeparse.py
+++ b/layerindex/recipeparse.py
@@ -79,6 +79,7 @@ def init_parser(settings, branch, bitbakepath, enable_tracking=False, nocheckout
         if not classic:
             # We need this to avoid problems with AVAILABLE_LICENSES
             f.write('COREBASE = &quot;%s&quot;\n' % core_repodir)
+            f.write('BBLAYERS ?= &quot;%s&quot;\n' % core_layerdir)
         pass
 
     if logger:
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">
-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#54858): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/54858">https://lists.yoctoproject.org/g/yocto/message/54858</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/85871827/3616873">https://lists.yoctoproject.org/mt/85871827/3616873</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:changqing.li@windriver.com">changqing.li@windriver.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
  </body>
</html>

--------------4174F739B45D88ADC1E383F8--

