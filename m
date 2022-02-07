Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11B71C433EF
	for <webhook@archiver.kernel.org>; Mon,  7 Feb 2022 19:19:12 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.702.1644261551202611888
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Feb 2022 11:19:11 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com
 header.s=pps06212021 header.b=EDLbCDAw;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=90379e90fd=randy.macleod@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 217IY58q000563;
	Mon, 7 Feb 2022 19:19:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : subject : to : references : from : in-reply-to :
 mime-version; s=PPS06212021;
 bh=reZLrhzSs+YBwP5k6Na20Pb7l0Q0XMx1wzgO0kbn+kQ=;
 b=EDLbCDAwlrfHO7SleNAuwI06AzUdNWWhjRd5ONr7OTvX2QgVBPj98aa9AO7tj+UzMnUw
 8i7xShDmIMta3ArCe2qSfota8OPS+FN0UTJ7H2NNWno6fFDw8iI/Seaoq8wewIsu0Tgz
 5basbzbuK3U3J0K2hmo5AhIxjA8KwUEfv0OEcC85GxXqG8o7sWo6FWIGMdBzklDMJpPL
 0Np3S3arHEp08vGzVBnmggBN7vX0nrkxgiDhp3CjU54J/4KbW03c5rQjt/cu+PmrBP00
 6Jte2v/lRBDxJsTiQ046w8j9h8IgbRyBBhtdO2/taBUXQG+ATzRX0jgpl+eyK4IiWr6Z /g==
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2102.outbound.protection.outlook.com [104.47.70.102])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3e34s187ry-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 07 Feb 2022 19:19:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=err94e/Y0a0C9iFCEP5VxZ1RJ/5MDpHTULs+Md9LdO1Any9IYKi3FdI4q7Fsix+scS6sql55CJbrpiCeJt5baN1SM7WEdrkGFVGno6h4jhB7wAkrrxVutOmBLKTG3rCCgdoYCOvpDWlGDZUyuUVitFmd0b+bnqjMXTXjsJGIJrKglM/mQ1yfZ1DqklfIQmagRrl1XRxNKr+UhQjUjx928BW5yp7ZNFBxrFQ62WX9CxO1FHuiUCskA4FXQJa6z51qmkXErcJJxeg9rzVlSRkreTaTlWdEXjWEgRm/Vb19HVcjR6j+F8Fagiiv/oyEJUS/47PCoqz1zT6x8g3iUJX1xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=reZLrhzSs+YBwP5k6Na20Pb7l0Q0XMx1wzgO0kbn+kQ=;
 b=FiE64Woj8Rqo4oAsiA1XurKU8IXdD/Sfc/gxgmJrGKK/FI2jhrkcLHYNRWN99dDP2Rym5g1cJ5RJf2i0WGwICIcxhTr5Q/3IjfLODyGv0Z42h2k1J3Y0pwq08j8Ym2+sytxbVqArnI8ravgdLO4orJwER3TL0QTwkZoGKGny6mLv0S53RrFXtN5392cY23I0hncBFwAwIEMvP8FNxXF0r5Enh/Ew7/V5MfzdU4cAe7tZ72Ygz5hKYGxTYyC5o05V3mR4kMQRhJHIPjkErkBKj3jtB37/qp6cBJXToh9zDztJbaokbvd6JtfPBlNrJG2MJzPbNH1QDKqCN6hdO6dkeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by BN6PR11MB1970.namprd11.prod.outlook.com (2603:10b6:404:100::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.11; Mon, 7 Feb
 2022 19:19:05 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::f4ad:a867:7f2:8958]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::f4ad:a867:7f2:8958%6]) with mapi id 15.20.4951.019; Mon, 7 Feb 2022
 19:19:05 +0000
Content-Type: multipart/alternative;
 boundary="------------ZAejDNTOrHztXryj2jK7K85j"
Message-ID: <7e72696f-d58a-0e00-e8f4-6bf34459781f@windriver.com>
Date: Mon, 7 Feb 2022 14:19:01 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [yocto] ERROR: could not relocate installing toolchain SDK
Content-Language: en-CA
To: Sundeep KOKKONDA <sundeep.kokkonda@gmail.com>,
        yocto@lists.yoctoproject.org, "denis@denix.org" <denis@denix.org>
References: <20200128165745.GL4735@denix.org>
 <25813.1643957559728018781@lists.yoctoproject.org>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <25813.1643957559728018781@lists.yoctoproject.org>
X-ClientProxiedBy: BYAPR08CA0043.namprd08.prod.outlook.com
 (2603:10b6:a03:117::20) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f6c5c1b4-a345-4bbd-b9a0-08d9ea6eb4f0
X-MS-TrafficTypeDiagnostic: BN6PR11MB1970:EE_
X-Microsoft-Antispam-PRVS: 
	<BN6PR11MB197072E8E657AFF743137BDDF82C9@BN6PR11MB1970.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	h2YwM3trSJTEXUxb8lec/IdBBTNkazXOuovsupG7C5MAZnj1tl1abkj8Bc5o5OcqHuVRn/nWdrRCb1M2am+6tIFTSpj6z5ywyGZ2u/gnE46c6N4Kfs1N3DHjAt+8rJoUQ40H1UbP0ERknKffZ9JtLXXu5XQBl+ZbxfBt7k2UoO3NvMThvyJmvoasRtMt9ANLNLwKWfap61gotaB03aUk6d4A/r9xIASy8LS48lf6Ubq+APcdCSVIW2GswaX8oNMaSu4A29fSRlh5UnQ+726Pq75RcG3s9Q6WFpZ+kp7BoYL/rbFDCfe1a/y/eE2sftlTqIgk9nLzkemIRvVnT3iaZteMimSOmxUzOqNE6QKaQzivTOVHj2lW0TTBQJ1rQuvPDWqjc3hGioXIdyJcCuDnfzQJByQpjgOKy0EQEHJqSzB5PSpWAUBkRTDrSsmFmuilrg/4ztUiFO67Juh7JkJxzjxAAvL5q3M8xWJQkzzs6Y0T8i2zO1nWWFE3r3cAJt60YJT4+UEEXw5+LaKZ8nttYciDPxVfAkEyEA80oJJBwW0Qu2maqfU2SQclXemLunxdeKGcfc/K67hv8wBXOp2+NhESXTKhl9BLFSm5Wuwvt8dID+w5NUo3FzQzTRG8/4ZjhtKfSepdgA3/t0TXDLbD4cWu9uXZgz2BBwBGMvl0fJhlQ0OUMOh+SSCJ46iZrYof9AOtOTITHJciuYLPTZ8n7iH1PA89zh8sOXtbI4z+SLsp8kGbblzj0xxzGV7tgyh6LTy56/Ld8HkzMLh7tesBHCvLfkFgN+M7SMBGydysVRgGt1aLftQG0V3/8I4YAQqSmJXl7pxlqvgr2SSBlWNsyFnjBuTbo7WLmCe2gAfpwNMsPfrV3Lgy5QrnF8MECe2/27fuF8jMoOXa1FqDpltRrQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(6512007)(6506007)(53546011)(6666004)(2616005)(33964004)(26005)(186003)(52116002)(508600001)(966005)(6486002)(86362001)(166002)(31696002)(8676002)(8936002)(38100700002)(38350700002)(83380400001)(316002)(2906002)(36756003)(5660300002)(31686004)(110136005)(66946007)(66476007)(66556008)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ck1zVWtzci9zTlIwT0NsVGZ5czJ4SXQrTVJUU3dnV2krb1lva2tPakxHbTJI?=
 =?utf-8?B?d2tLMkc5NjdJTVI0NTBOVmRseklOdDVON0dXZUZKa0ZEellWUFgwZkJOK3di?=
 =?utf-8?B?RTUvSGM4UGdyWGhjc3dPc3A3RWtRWkFja05SSGZ4d0pRVjZ0YU1XaG5qS09a?=
 =?utf-8?B?aU5ScEhSMm1WVSsyQUpBZ1dmRmh0UEF2TXNOL2NZR0xyL3g3WEhQYUZoc0g4?=
 =?utf-8?B?ajJBWWxHTFZZcHpiV01URlh2Ukt2MWJxdFZZTHMvZzdsQXZXazQ1K0dBTERF?=
 =?utf-8?B?anFSZDlQRkxqYXdEZWhrUnJsQXd1a0FwUGpwM1M5NGxLRUtUY1RHRkRZbmF5?=
 =?utf-8?B?UVZrUDVxcng3QUN6R2IvanZZMWJvT2NYY2RUUGpINkpnVzVtY3JvbFc4cE9u?=
 =?utf-8?B?cjJEUGFmQUdyZTlEajhsWDRFTU4yM2dBRy9Nc2Y2VVN3SEg0MGpBZmNuUVN1?=
 =?utf-8?B?c1REMVoxSERuNEVtREkzRXFZREpZVndFTUN6NVk3bnI4UHVORFd2RTNqbHJv?=
 =?utf-8?B?SUYybThMdDBQbC9rM3BoYVI4N2tqSVpIWlhhWTVjb0VsbExSc1FrZit1N1Fo?=
 =?utf-8?B?RHJYanl6NDcrWHZxcng0cFdnOUlyVm15YjdFZVVoNVBRV3ljMytIbll1V1pI?=
 =?utf-8?B?QkRGZ0tvd0xPb1NxSmV6allOWVBHMStTdldYempGa3dJb0h1aWZPWXRiQ0Vl?=
 =?utf-8?B?UTBFMHRwOEpUMDQvc0FJek5FcFlSTVk5amxOVTBCZ1RtRVBrYlhBSjA2UnBS?=
 =?utf-8?B?U0NWVjh4M0o2ejBFS3lvUkRGZEl5Y0Rxd0pkc1libzNIZmVDbkMvVlFZdHoz?=
 =?utf-8?B?KzlIdUpMa21acXZlblZQbGZJQUlMSHRmS2JGTWZ4S0RIQWYwckIvWnpTenFk?=
 =?utf-8?B?dVhMVVIvdDUwbW12b203UDdsb2JZcFZCQkFwUnRXaDk3Q3ZtMHA2QVZRZHdq?=
 =?utf-8?B?ZWV0cjhCRVBHRzR5V3c5ekYySFNjR0lENUVSS094WHhhZE5rSy80RDZTWE5T?=
 =?utf-8?B?K1QxWWl6WGtWSU96Vno4VG55RXBJcnkvcnZMdlVTK0xEQmd0YzZUb1J3ZitF?=
 =?utf-8?B?eDBDanVVU3lSVnNuZHNWR0EwRWdGYXdUTklCTk02TWpUNWJ4a09oVTRJOFFD?=
 =?utf-8?B?UXU3MW9YYjJSd25JckhlTUhhdXVuWXpTSVlheVRkUXNRWGVWWllqclhqK3cy?=
 =?utf-8?B?Z2dpaXErWVlkS0lmbjAxRHZKc2xhcWFVeWgrTVQ5UGYzVThDdElKWlZDcTZB?=
 =?utf-8?B?Z2dEaUc2S0xlYVkwdUdSNERDZWxRUGgwVVJkNUROS001NEEraGd3MUozbDND?=
 =?utf-8?B?SXlxSGRjTWdUWjdwTCtFeXdDa3BORzVPVy9HZGhWbW1oZU1RNHp3dUcxOEM4?=
 =?utf-8?B?RVNpSW5JdTJ1cVlOeDgxcndFQ3lUUVlpWEd2TDhkdEcxRWpqMFk4VnI5dkc3?=
 =?utf-8?B?VDNobWVJRVJWaUxUUzRWbXZNR1R0ZGdtLy9lM1Ira3Z5TnBMa1hXQ1RtaURK?=
 =?utf-8?B?UllHTzFNWlZLQ2tsRXlHZ3JjYlZ0Q1BQWmgxa08wa2FERGtWcmJyeGRSRUpM?=
 =?utf-8?B?cGxVS1h1TTVmS3QwOWtBUFZrd2JtOHNCUVRramVIb29Sa3I3OCswVVlCdUQz?=
 =?utf-8?B?YmpxZkFENDFDcmh2RytJTHpjaE1qbzA3dXpteDdnOXBTSnExbmJvTkdYMVlM?=
 =?utf-8?B?M1FrS3QxeGU0VHBJbEpLaDNzV0hQYUVDdUQxZ1I4WmlMd1c1U1c0V1JGUzVz?=
 =?utf-8?B?eERFNlNLQUlSaFZGYXNVVDdaMEZpVENqRGZ6N1cwS0lhYlBMNGVyZE1VcVl1?=
 =?utf-8?B?SElHdG5WdGhXRGJZK2ljNzNIL29OWVNkeFA0ZEdSNTFXQUgzQ0RQRnBJdFFo?=
 =?utf-8?B?YXl1bjJTOHNjSzRiMEllRW9zZG1LR2wrRmJjOGtSQTM3cUY5QkJ1U0dOdHQr?=
 =?utf-8?B?bTJFSGRwQVRqZDZMb1E5RmdoeTBjTVZrdHcyb1Y3WFlObzJrWWFYYy92VmRx?=
 =?utf-8?B?bGpINDV0eGlHNXBOSmxZVnNORDlXK09wMDlBK0xTYnMvaUFsd2I2YXpJeklm?=
 =?utf-8?B?Mnova0tuY1BKclluQWdmVnJPTG5wSTh5Sk9DcGl1d1l6bzc1aTVPNEowZ0Rq?=
 =?utf-8?B?WVNiTE1DUDBiSzBNQ1NMT1ZtRkwzcUJHMEMydTZYTlJpZmN1QUxMSzVwdllO?=
 =?utf-8?B?MWExNmpCa2tBbFNZTHRJS0Y2K1RjQjV4Smh6ZTZsSHpuc011KzR2SWxIZHVB?=
 =?utf-8?Q?SMHDEOdFpMFtA5xGVs+qhZml3mfqT6QMUWSPMKY3XE=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 f6c5c1b4-a345-4bbd-b9a0-08d9ea6eb4f0
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2022 19:19:05.4956
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 AdTVLJHlDBBOcxyn26yxxoseCDjB3b6FXh96Ur4ZWxfAbkGu7PDpwnUDKm7Z00EJvBnhaEs+kV+bZFqkVXJd6hUZFUkQ3gc22tTNweVZlFY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1970
X-Proofpoint-GUID: SirUGYZ1Lc-4DVike1POjqCIWaOdmgIo
X-Proofpoint-ORIG-GUID: SirUGYZ1Lc-4DVike1POjqCIWaOdmgIo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-02-07_06,2022-02-07_02,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 bulkscore=0 priorityscore=1501 clxscore=1011 suspectscore=0 mlxscore=0
 mlxlogscore=999 malwarescore=0 impostorscore=0 spamscore=0 phishscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2201110000 definitions=main-2202070116
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Feb 2022 19:19:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56096

--------------ZAejDNTOrHztXryj2jK7K85j
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by
 mx0a-0064b401.pphosted.com id 217IY58q000563


Add Denis since he may have missed Sundeep's email.

On 2022-02-04 01:52, Sundeep KOKKONDA wrote:
> Hello,
>
> I am also facing the same issue with path size. Can you share the=20
> workaround what you are using for this issue?
>
> In the /scripts/relocate_sdk.py=20
> <https://urldefense.com/v3/__http://relocate_sdk.py__;!!AjveYdw8EvQ!JDW=
hGSHwH-D2E97f5wJ31g8y5hNRRKDdDRtOaybzIuFpIkRbteVvxi21IQA639Cv5fr3Aw$>/=20
> the file name comparison is like below:
>
>     if (len(new_dl_path) >=3D p_filesz):
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print("ERRO=
R: could not relocate %s, interp size =3D
>     %i and %i is needed." \
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 % (elf_file_name, p_memsz, len(new_dl_path) + 1))
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dl_path =3D new_dl_path +=
 b("\0") * (p_filesz -
>     len(new_dl_path))
>
> And, to fix the issue I made changes like below.
>
>     if (len(new_dl_path) >=3D 4096):
>     print("ERROR: could not relocate %s, interp size =3D %i and %i is
>     needed." \
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 % (elf_file_name, p_memsz, len(new_dl_path) + 1))
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dl_path =3D new_dl_path +=
 b("\0") * (4096 -
>     len(new_dl_path))
>
> and commented below code.
>
>     #if old_size !=3D os.path.getsize(e):
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 #print("New file size for %s is differe=
nt. Looks like a
>     relocation error!", e)
>     =C2=A0 =C2=A0 =C2=A0 =C2=A0 #sys.exit(-1)
>
> Do you have any clue regarding,
> - Why the installation path is depending of elf headers i.e., Why=20
> installation error when the /len(new_dl_path)/ is greater than /p_files=
z/?
> - Changing this comparison (len(new_dl_path) >=3D 4096) will impact the=
=20
> installed SDK?

The 4096 comes from PATH_MAX:

|linux/limits.h|.
|#define PATH_MAX 4096 /* # chars in a path name including nul */|

|but that does seem a tad on the long side. I'd prefer a more reasonable
limit that we have actually tested, say PATH_MAX/4 (??) and a comment in =
the
commit log documenting the choice.|

|Finally, we do have a test that extracts the sdk in:|

|=C2=A0=C2=A0 meta/lib/oeqa/sdk/testsdk.py|

|Can you review that code and use a long but fixed length path by
default so that we catch regressions? The path is set in:
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sdk_dir =3D d.expand("${WORKD=
IR}/testimage-sdk/")
since len(${WORKDIR} may vary, I'd like to see code that corrects
for that and results in a fix length of PATH_MAX/4 assuming that
things work with such a long path.
|

|Denis? Does that make sense and what is your work-around?
|

|../Randy
|

||

>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56083):https://lists.yoctoproject.org/g/yocto/messa=
ge/56083
> Mute This Topic:https://lists.yoctoproject.org/mt/70213997/3616765
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [randy.macleo=
d@windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--=20
# Randy MacLeod
# Wind River Linux

--------------ZAejDNTOrHztXryj2jK7K85j
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">Add Denis since he may have missed
      Sundeep's email.</div>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">On 2022-02-04 01:52, Sundeep KOKKONDA
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:25813.1643957559728018781@lists.yoctoproject.org">
      
      Hello,<br>
      <br>
      I am also facing the same issue with path size. Can you share the
      workaround what you are using for this issue?<br>
      <br>
      In the <em>scripts/<a href="https://urldefense.com/v3/__http://relocate_sdk.py__;!!AjveYdw8EvQ!JDWhGSHwH-D2E97f5wJ31g8y5hNRRKDdDRtOaybzIuFpIkRbteVvxi21IQA639Cv5fr3Aw$" moz-do-not-send="true">relocate_sdk.py</a></em> the file name
      comparison is like below:<br>
      <blockquote>
        <div>if (len(new_dl_path) &gt;= p_filesz):</div>
        <div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; print(&quot;ERROR: could not relocate %s, interp
          size = %i and %i is needed.&quot; \</div>
        <div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; % (elf_file_name, p_memsz,
          len(new_dl_path) + 1))</div>
        <div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; break</div>
        <div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; dl_path = new_dl_path + b(&quot;\0&quot;) * (p_filesz -
          len(new_dl_path))</div>
      </blockquote>
      And, to fix the issue I made changes like below.<br>
      <blockquote>
        <div>
          <div style="line-height: 1.42857;">if (len(new_dl_path) &gt;=
            4096):</div>
          <div style="line-height: 1.42857;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            print(&quot;ERROR: could not relocate %s, interp size = %i and %i
            is needed.&quot; \</div>
          <div style="line-height: 1.42857;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; %
            (elf_file_name, p_memsz, len(new_dl_path) + 1))</div>
          <div style="line-height: 1.42857;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; break</div>
          <div style="line-height: 1.42857;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; dl_path =
            new_dl_path + b(&quot;\0&quot;) * (4096 - len(new_dl_path))</div>
        </div>
      </blockquote>
      and commented below code.<br>
      <blockquote>
        <div>#if old_size != os.path.getsize(e):</div>
        <div>&nbsp; &nbsp; &nbsp; &nbsp; #print(&quot;New file size for %s is different. Looks
          like a relocation error!&quot;, e)</div>
        <div>&nbsp; &nbsp; &nbsp; &nbsp; #sys.exit(-1)</div>
      </blockquote>
      Do you have any clue regarding,<br>
      - Why the installation path is depending of elf headers i.e., Why
      installation error when the <em>len(new_dl_path)</em> is greater
      than <em>p_filesz</em>?<br>
      - Changing this comparison (len(new_dl_path) &gt;= 4096) will
      impact the installed SDK?<br>
    </blockquote>
    <p>The 4096 comes from PATH_MAX:<br>
    </p>
    <p><code>linux/limits.h</code>.<br>
      <code>#define PATH_MAX 4096 /* # chars in a path name including
        nul */</code></p>
    <p><code>but that does seem a tad on the long side. I'd prefer a
        more reasonable <br>
        limit that we have actually tested, say PATH_MAX/4 (??) and a
        comment in the<br>
        commit log documenting the choice.</code></p>
    <p><code>Finally, we do have a test that extracts the sdk in:</code></p>
    <p><code>&nbsp;&nbsp; meta/lib/oeqa/sdk/testsdk.py</code></p>
    <p><code>Can you review that code and use a long but fixed length
        path by <br>
        default so that we catch regressions? The path is set in:<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sdk_dir = d.expand(&quot;${WORKDIR}/testimage-sdk/&quot;) <br>
        since len(${WORKDIR} may vary, I'd like to see code that
        corrects<br>
        for that and results in a fix length of PATH_MAX/4 assuming that<br>
        things work with such a long path.<br>
      </code></p>
    <p><code>Denis? Does that make sense and what is your work-around?<br>
      </code></p>
    <p><code>../Randy<br>
      </code></p>
    <pre class="lang-c s-code-block"><code class="hljs language-c"><span class="hljs-meta">
</span></code></pre>
    <blockquote type="cite" cite="mid:25813.1643957559728018781@lists.yoctoproject.org">
      <div>&nbsp;</div>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#56083): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/56083">https://lists.yoctoproject.org/g/yocto/message/56083</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/70213997/3616765">https://lists.yoctoproject.org/mt/70213997/3616765</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------ZAejDNTOrHztXryj2jK7K85j--

