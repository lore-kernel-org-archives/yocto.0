Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D1EC54EE9
	for <webhook@archiver.kernel.org>; Tue, 13 Sep 2022 23:43:39 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web09.352.1663112615892172484
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Sep 2022 16:43:36 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com
 header.s=pps06212021 header.b=GXRJvbqH;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=6255b889b1=randy.macleod@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 28DNgwZb026211;
	Tue, 13 Sep 2022 16:43:34 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : subject : to : references : from : in-reply-to :
 mime-version; s=PPS06212021;
 bh=dTfreWoL9FsDlxkfFDbcS4WrcI7ZqOjDr4kqzV85FYE=;
 b=GXRJvbqHj+AhSwawiwj98PyCZ1Y06l6p3gxvIs8GIAA5ALWG+fDmdjH4yWfNtzB+jqDw
 9/qL1BC9k/fa7TfMMAeFfhqARgBUY6PAL9AljH+6M/DduxQhF2X2JQeU1mHLYIBPV/eQ
 uXOA3XHvK4TxsFi0E0mB+nuB6AaAKXWKSPCT60xnRtlVCrcteU7KSrYC+fx8aLYl+9o1
 WTVY+TPiYJIVig4ebd7pKUsBPIYBXNFEE90XaWtP+8LNovV21T+AtMQNoyAy+3RqBPZv
 56SSi+5vhs7HvEpuGQQmfhEM4JAHEDRP8VdGstbWdIOofSh73egts/Zh96qumy2nPZgn gg==
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2100.outbound.protection.outlook.com [104.47.58.100])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3jjy0gr9ts-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 13 Sep 2022 16:43:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P/hIa62hIZQlB/+/gMnqlwmKcyHiJO2LwyaCthyZXSal5ySYKR3JVX0VRgHllHAI+n8yO/u/CVhlcquQM2UEFkc1qPyryfXEzCR3TBV9Wz23t+UZnHeDRUhzxenKufi3no0zGfSUbg5EALEtgYUZ06YZQECFqKZxM/ek3yEY/jrpGNEUHzOSoix9s640bNo2FeoZobOV0vLdu8PexprljBorW8mvKeO1s96M3fgq+XsCgrzWoaVn11v89dpBnnUeeRCWs8Nnm8lFyGTYMbltk+Oltg4jv1jDOdEPbg0lbZougDSWpNTqqKic23rh4+7ZmTcUskE0+p69ULU64O6HWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dTfreWoL9FsDlxkfFDbcS4WrcI7ZqOjDr4kqzV85FYE=;
 b=A5/L4j+evQbywFcpn7qAB3rFWFajb3s5cAiAHg78rpcP93IaOpgcAXMpBwAdyvtpUTaAEth2wleP46aP44//OPu4jircPFM2F2+flDHpzllFq70U1JufoNvJFrMoXo4BnwAySZ6sqJbsUY5v3G2eHYAX9ahO69cLjQX4vplHREZtZvj8DR4L/88GIqHq62hedRU6MdsBNe2TAuvvYP+ZqCLenwHVdeLI/HMVpKfgrC1K91LGfYto79xcfLMH2goE1BPEcOO4QNqBM/mk1tJPLV4XQpjK/FKlPH7XOf6Zm5usE5HDGl8HgW5nPYBJVsVhbKHE8gh5VyxI39by0dJNKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by BN9PR11MB5481.namprd11.prod.outlook.com (2603:10b6:408:102::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.14; Tue, 13 Sep
 2022 23:43:30 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::b5ff:be5e:771a:9060]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::b5ff:be5e:771a:9060%5]) with mapi id 15.20.5612.022; Tue, 13 Sep 2022
 23:43:30 +0000
Content-Type: multipart/alternative;
 boundary="------------hdV0DTM55kCez0dMUDFL02x1"
Message-ID: <d0fdb749-c80f-3590-842b-503887029c8e@windriver.com>
Date: Tue, 13 Sep 2022 19:43:26 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [yocto] Psplash
Content-Language: en-CA
To: Freya the Goddess <zaqhielhorus@gmail.com>,
        "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: 
 <CALUh_+36ZbnV=UGgWKzMXEMsB8UqGpab13bfwzGOS-Df8nv09Q@mail.gmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: 
 <CALUh_+36ZbnV=UGgWKzMXEMsB8UqGpab13bfwzGOS-Df8nv09Q@mail.gmail.com>
X-ClientProxiedBy: SJ0PR03CA0257.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::22) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB3994:EE_|BN9PR11MB5481:EE_
X-MS-Office365-Filtering-Correlation-Id: e767417d-0e31-4cd0-9a10-08da95e1c2eb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	8zMq5YiyoRzjdYmjAINMW4CgBwqWwf03+ku7qEYKhImOpLGFa12ozFUfjSNXl08BtJtV13Ud1RjZ1kVc71qu+IK44QcIO8P0BsEq1lVb0hKd/e2SKJtCWmbVcBWCIvFxLwPIssYxgs5hz7QFM9Ss7Mz0aU8/QDCswopgVVC+FIFKUlYbPdHo1pg34ONI3S7n786aYUzlZ8uAhuCIjtIbFDFCH+P8aAVaVxywhVLR98AL6iFJbQ/EZ51XqC9+BsGz2ccLGMN3T26zVhs+O47jpVymuT1Ihyi9jsQPRmf9AnMTz1R0JavFs2OtQnT4YPzQVo2y4Uf2crczo9r+vd7j/CnPq4M2/a8eYfj8YXbArzSIsE7XBgk9mR+zMpY6G6JlOcTTVIyqU83b0g21OyJphmKPNiyzdpNpHr7MqlxfGKJHP6sUjnz+u533EQTlB/2qRURgsaFEQ3YjmML12GZjbxuyMBxZAsxI7HXel7VPWQRDx5YDOIayic3E6xisiBBwmrY2AzXktWhCYikbfZvHAw7lMJFpstoo2oSab7N9OfF4UAqUlP97GVEnAfu27m4ihiG2oA/KxctBCDTa/jZA08EW9n7QHaf0fQX+yyoSFG4GdO29Z4IrqvYOK4VlN2YMv0pNvryPRNtumYO2fXUQpihtTtqLYen2YOV5xTBHpsfw19Worgsg99D9hwUaNQWpQPaCgjoougnQs+Lub3TDuPwyi4/faLrvcHJ1D0sRwpOisa021ChBp9DvE87JnEri2gd0NMV/V4R8kOiJGqp/j/XGAialaiIH3TfEuJ53378iWu5WesvCH9JThN19fOOMoKZc3F87vcyji2YJMY+DfrYxlQ3XhAn7mwBtUH/qJOHL36o2f8+lNulLSD7Sjo4i
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(346002)(39850400004)(136003)(366004)(376002)(451199015)(86362001)(83380400001)(31696002)(38100700002)(66556008)(2616005)(966005)(41300700001)(6666004)(6486002)(316002)(478600001)(2906002)(166002)(66946007)(31686004)(6506007)(8676002)(8936002)(66476007)(36756003)(5660300002)(186003)(53546011)(26005)(6512007)(33964004)(110136005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SVZEWXN0ZEhQUmRSd2d6eDZ2TEVrS29SdVNKSzJFM1NjZWdtY2h1cWd1OHlr?=
 =?utf-8?B?U1V0S1M5c2RZYVVRbmpYcWEwc2VRVWZhRVA4UXE0MTZkM3VOMStYVVBGRFND?=
 =?utf-8?B?UGZrZkdzMzcwT1JwNmlLajd6VURoaDBSTHdBbFZCeW9SdVhjczZEeEtCa21a?=
 =?utf-8?B?Q1czTmJCaHM5Mzd0OGdwNHBhcUxaRG1UTkNVY3RCbEdLcWZnSERTaThoTGI1?=
 =?utf-8?B?YktvMm5MbnhFTUFMM01mb210QW5IdEtTclN1THdzZTNsQ2Vxa04wSjZPak1R?=
 =?utf-8?B?Q2hiVi85bHZmbkEyNE1sOU51REdVSDYrR3FCUFFFeFh0Z3d3WVYzQTlKRGJO?=
 =?utf-8?B?OXJQUStGc2ZNSVJ0ZEVQVGVyWkY1bzdQMVVqRjhVY2tydzlhOXhvVlQvTWgy?=
 =?utf-8?B?RU5GVmdNQmgzSVJHa0tBSkxoYThidnNsSGRXVUR5dnI1aUxDUTdrZDFQaGhS?=
 =?utf-8?B?cXFoMnFTeCtKWmRXSGNZa040SG9QZFFOV0pMazg0eFp5R3U4NFNjdUJvN21C?=
 =?utf-8?B?ZlJqTWUxR3NjNXI0bEE3WVVHR2dMRGpMK3hheHFuVElNWUNNTU4xZzM0aWFv?=
 =?utf-8?B?QXdGMnA4Qk1MYWN5RUhaeFg4OVArZXR3ZVh5Tk9KQ0tzRVEwWENmcmdoUDM2?=
 =?utf-8?B?RGVRM0xMYWhGV2pMazFuN293RmswSW9RQWJwb0lrL1NDTFlKZU13Z1hOdjZC?=
 =?utf-8?B?eTMyMkpjUmpiR3VzOENSNldUSVZDZGFRdlU0ejQyYlIwU3ZyZGtpcFNUTjht?=
 =?utf-8?B?SFVDYnJjYUtIMjltQ1pLbU10SUNpRzVEREgxbnRiZjZKaGh0KzRjTFJ2TW9R?=
 =?utf-8?B?cENNSmZLY3J2SlA0Qk1vVGdCUTcwZEN0TFgzZGgvQWhXSEliZURob0djR2Fk?=
 =?utf-8?B?V3o4ekxJMkxEMW1rUzNJU2R6MUdubmVBdStYblZyc0hMN0VodlJrcHRnLzdT?=
 =?utf-8?B?WGZjYjJKWGhaQlozeWprL1RwalBFbktLY1FHNVJiaHlnUVdTaFNLMkIyMldE?=
 =?utf-8?B?Y3FXSEpNTHNxanFaeXBxZmdtd0hUbjBJamRxSTg4V2NCTysvdWtZNytXdjU1?=
 =?utf-8?B?cEpZd01XWFlDVUUxdVgrTlFOd2lORjlvZXdTOThhYlE0a0w4TkdhVDZEc2g3?=
 =?utf-8?B?ei8zZXk0NDd1a2s1UmU3SmhsdkpRRjVrUnFYSUY2dXhzNVRNTU85REo4Q1ZC?=
 =?utf-8?B?Z2orTjZJdWIraG1yczl5NmVENFhWZVpHMkc3QnV5VkdDUktUNUdiNExZSTNs?=
 =?utf-8?B?ZXFJb3lwbEdSOFdSZWg2TmswVXY1YnRKUUcrdThLWXphSmNMUlVacGpCcEhn?=
 =?utf-8?B?KzI1bzgrUTE2RDhYSXdLSGJteW9jTEQ5Sk84T1dhTm9WZUhLRkhZYWIzd1Na?=
 =?utf-8?B?Ry9LTkhaS29Fb1RiVU82dXdFYzJKcXBJd29iTGN5UndrOWxWWEhuQldodEFG?=
 =?utf-8?B?L0M1YUl0c2FvUjdOV3doYjBTM3BWTjg1Yyt6RGMwMThYaEt0MnhIYWN5ZnND?=
 =?utf-8?B?M1JnRFVld2NTMGpLejJtekNEYTlKSzhSMU4zalRuNGNnaVMxTzRlSjlUeUdJ?=
 =?utf-8?B?Zm1waVpUd2h3a3kxWC9YZlNhaE5PRHZPbE5kYUY3VVZaaVVPS1pHaFlQbFZz?=
 =?utf-8?B?SmYybzc2eVBnM2l0VHdCVVVicXoza0FjMzR5TnZEc2o0ZXFoUUpteWUxeXVn?=
 =?utf-8?B?Zjc4cFZjYkVZZldlSW5xQUNCYXV3ZVhST2RYR1hzSWFmRU1YS0lqc2FOK2U0?=
 =?utf-8?B?b3dzYlgxRjQyOEE5aHFWa3lodENka0NHVUNnS0ZmSDJaWGthSEZwMDNPMnRZ?=
 =?utf-8?B?a3ZyWXYzc05WNHNJckZQcFV0R3k4ZHZjNGRtOC9aZDVlVWg0bXhJUDdQN2Qv?=
 =?utf-8?B?RDNEc3Y2VlFKeHVJcmNyMnF4cWwwczEvZU0vZE15eno4Z0FtTnpKUThpaHpH?=
 =?utf-8?B?ejlML3lidEdYM2pqM1FDS0RNVGttdXVQQW1EdkpHcmxrRHZHR0V3SnY4K1FU?=
 =?utf-8?B?SWVrNnk1cCtEQXk4RTdBd20wSGhGV2RRelE0UXg4Y2ZUeUNqd3N4SlJ6Yk1h?=
 =?utf-8?B?dEwvRDZKZDd2NFhQVU9OOGdDMzJaR2FjdS9PK0luM292WWZMSi9adE5ZUFd4?=
 =?utf-8?B?VEJ1SXFqdTZWK2hTblhxSDIvRlp1aTc3UGVZK0JiWkhRRkdnUHJTTlhXK212?=
 =?utf-8?B?K1E9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 e767417d-0e31-4cd0-9a10-08da95e1c2eb
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2022 23:43:29.9715
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 UlZp4rWDJ6F3bsAPdhfadvyR8RUGp5zMTcW9sJ6oWtACaxnLppvIorpVzObctk5ppVEsQGT7fNlxx7uysqiFW1i1KkWD7M3ch/8Teou27jw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5481
X-Proofpoint-GUID: gXBX-s4CHWAhwrotr0yw_CaT6N8Xat5V
X-Proofpoint-ORIG-GUID: gXBX-s4CHWAhwrotr0yw_CaT6N8Xat5V
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-13_10,2022-09-13_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0
 priorityscore=1501 suspectscore=0 bulkscore=0 adultscore=0 impostorscore=0
 phishscore=0 lowpriorityscore=0 mlxscore=0 mlxlogscore=999 clxscore=1011
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2208220000 definitions=main-2209130109
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Sep 2022 23:43:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58037

--------------hdV0DTM55kCez0dMUDFL02x1
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by
 mx0a-0064b401.pphosted.com id 28DNgwZb026211

On 2022-09-10 02:49, Freya the Goddess wrote:
> I want to create a splashscreen for my LFS OS with System V. Is anyone=20
> ever tried it?

There is a recipe and I'm sure that people have used it,
have you tried it?

http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-core/psp=
lash/psplash_git.bb?h=3Dmaster

There is also plymouth which has better integration with systemd if you=20
use that:

http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-core/=
plymouth/plymouth_0.9.5.bb?h=3Dmaster

../Randy

>
>
>
> --=20
> =D0=A1 =D0=BD=D0=B0=D0=B8=D0=BB=D1=83=D1=87=D1=88=D0=B8=D0=BC=D0=B8 =D0=
=BF=D0=BE=D0=B6=D0=B5=D0=BB=D0=B0=D0=BD=D0=B8=D1=8F=D0=BC=D0=B8, =D0=91=D0=
=BE=D0=B3=D0=B8=D0=BD=D1=8F =D0=A4=D1=80=D0=B5=D0=B9=D1=8F
> Atenciosamente, Freya the Goddess
> Meilleurs voeux, Freya the Goddess
> Liebe Gr=C3=BC=C3=9Fe, Freya the Goddess
> Best wishes, Freya the Goddess
> =E3=82=88=E3=82=8D=E3=81=97=E3=81=8F=E3=81=8A=E9=A1=98=E3=81=84=E3=81=97=
=E3=81=BE=E3=81=99=E3=80=81Freya the Goddess
> =E6=9C=80=E5=A5=BD=E7=9A=84=E7=A5=9D=E7=A6=8F=EF=BC=8CFreya the Goddess
> Matakwa mema, Freya the Goddess
> =D9=85=D8=B9 =D8=A3=D8=B7=D9=8A=D8=A8 =D8=A7=D9=84=D8=AA=D9=85=D9=86=D9=
=8A=D8=A7=D8=AA =D8=8C =D9=81=D8=B1=D9=8A=D8=A7 =D8=A7=D9=84=D8=A5=D9=84=D9=
=87=D8=A9
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58010):https://lists.yoctoproject.org/g/yocto/messa=
ge/58010
> Mute This Topic:https://lists.yoctoproject.org/mt/93589566/3616765
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [randy.macleo=
d@windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--=20
# Randy MacLeod
# Wind River Linux

--------------hdV0DTM55kCez0dMUDFL02x1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by
 mx0a-0064b401.pphosted.com id 28DNgwZb026211

<html><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-09-10 02:49, Freya the Goddess
      wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:CALUh_+36ZbnV=3DUGgWKzMXEMsB8Uq=
Gpab13bfwzGOS-Df8nv09Q@mail.gmail.com">
     =20
      <div dir=3D"ltr">I want to create a splashscreen for my LFS OS with
        System V. Is anyone ever tried it?</div>
    </blockquote>
    <p>There is a recipe and I'm sure that people have used it, <br>
      have you tried it?</p>
    <p><a class=3D"moz-txt-link-freetext" href=3D"http://cgit.openembedde=
d.org/openembedded-core/tree/meta/recipes-core/psplash/psplash_git.bb?h=3D=
master">http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-=
core/psplash/psplash_git.bb?h=3Dmaster</a><br>
    </p>
    <p>There is also plymouth which has better integration with systemd
      if you use that:<br>
    </p>
    <p><a class=3D"moz-txt-link-freetext" href=3D"http://cgit.openembedde=
d.org/meta-openembedded/tree/meta-oe/recipes-core/plymouth/plymouth_0.9.5=
.bb?h=3Dmaster">http://cgit.openembedded.org/meta-openembedded/tree/meta-=
oe/recipes-core/plymouth/plymouth_0.9.5.bb?h=3Dmaster</a></p>
    <p>../Randy<br>
    </p>
    <blockquote type=3D"cite" cite=3D"mid:CALUh_+36ZbnV=3DUGgWKzMXEMsB8Uq=
Gpab13bfwzGOS-Df8nv09Q@mail.gmail.com">
      <div dir=3D"ltr"><font color=3D"#888888"><br clear=3D"all">
        </font><br clear=3D"all">
        <br>
        -- <br>
        <div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmai=
l_signature">
          <div dir=3D"ltr"><span style=3D"font-size:13px;color:rgb(38,38,=
38);font-family:Roboto,sans-serif">=D0=A1
              =D0=BD=D0=B0=D0=B8=D0=BB=D1=83=D1=87=D1=88=D0=B8=D0=BC=D0=B8=
 =D0=BF=D0=BE=D0=B6=D0=B5=D0=BB=D0=B0=D0=BD=D0=B8=D1=8F=D0=BC=D0=B8,&nbsp=
;</span><span style=3D"color:rgb(38,38,38);font-family:Roboto,sans-serif;=
font-size:13px">=D0=91=D0=BE=D0=B3=D0=B8=D0=BD=D1=8F
              =D0=A4=D1=80=D0=B5=D0=B9=D1=8F</span><br style=3D"color:rgb=
(136,136,136)">
            <div style=3D"color:rgb(136,136,136)"><span style=3D"color:rg=
b(38,38,38);font-family:Roboto,sans-serif;font-size:13px">Atenciosamente,
                Freya the Goddess</span><font face=3D"-apple-system,
                BlinkMacSystemFont, Roboto, Helvetica Neue, Arial,
                sans-serif" color=3D"#4d4d4d"><span style=3D"font-size:16=
px;white-space:pre-wrap">
</span></font></div>
            <div style=3D"color:rgb(136,136,136)"><span style=3D"color:rg=
b(38,38,38);font-family:Roboto,sans-serif;font-size:13px">Meilleurs
                voeux</span><span style=3D"color:rgb(38,38,38);font-famil=
y:Roboto,sans-serif;font-size:13px">,&nbsp;</span><span style=3D"color:rg=
b(38,38,38);font-family:Roboto,sans-serif;font-size:13px">Freya
                the Goddess</span><span style=3D"color:rgb(38,38,38);font=
-family:Roboto,sans-serif;font-size:13px"><br>
              </span></div>
            <div style=3D"color:rgb(136,136,136)"><span style=3D"color:rg=
b(38,38,38);font-family:Roboto,sans-serif;font-size:13px">Liebe
                Gr=C3=BC=C3=9Fe,&nbsp;</span><span style=3D"color:rgb(38,=
38,38);font-family:Roboto,sans-serif;font-size:13px">Freya
                the Goddess</span><span style=3D"color:rgb(38,38,38);font=
-family:Roboto,sans-serif;font-size:13px"><br>
              </span></div>
            <div style=3D"color:rgb(136,136,136)"><span style=3D"color:rg=
b(38,38,38);font-family:Roboto,sans-serif;font-size:13px">Best
                wishes,&nbsp;</span><span style=3D"color:rgb(38,38,38);fo=
nt-family:Roboto,sans-serif;font-size:13px">Freya
                the Goddess</span><span style=3D"color:rgb(38,38,38);font=
-family:Roboto,sans-serif;font-size:13px"><br>
              </span></div>
            <div style=3D"color:rgb(136,136,136)"><span style=3D"color:rg=
b(38,38,38);font-family:Roboto,sans-serif;font-size:13px">=E3=82=88=E3=82=
=8D=E3=81=97=E3=81=8F=E3=81=8A=E9=A1=98=E3=81=84=E3=81=97=E3=81=BE=E3=81=99=
=E3=80=81</span><span style=3D"color:rgb(38,38,38);font-family:Roboto,san=
s-serif;font-size:13px">Freya
                the Goddess</span><span style=3D"color:rgb(38,38,38);font=
-family:Roboto,sans-serif;font-size:13px"><br>
              </span></div>
            <div style=3D"color:rgb(136,136,136)"><span style=3D"color:rg=
b(38,38,38);font-family:Roboto,sans-serif;font-size:13px">=E6=9C=80=E5=A5=
=BD=E7=9A=84=E7=A5=9D=E7=A6=8F=EF=BC=8C</span><span style=3D"color:rgb(38=
,38,38);font-family:Roboto,sans-serif;font-size:13px">Freya
                the Goddess</span><span style=3D"color:rgb(38,38,38);font=
-family:Roboto,sans-serif;font-size:13px"><br>
              </span></div>
            <div style=3D"color:rgb(136,136,136)"><span style=3D"color:rg=
b(38,38,38);font-family:Roboto,sans-serif;font-size:13px">Matakwa
                mema,&nbsp;</span><span style=3D"color:rgb(38,38,38);font=
-family:Roboto,sans-serif;font-size:13px">Freya
                the Goddess</span></div>
            <div style=3D"text-align:center;color:rgb(136,136,136)"><span=
 style=3D"color:rgb(38,38,38);font-family:Roboto,sans-serif;font-size:13p=
x;text-align:right">=D9=85=D8=B9
                =D8=A3=D8=B7=D9=8A=D8=A8 =D8=A7=D9=84=D8=AA=D9=85=D9=86=D9=
=8A=D8=A7=D8=AA =D8=8C =D9=81=D8=B1=D9=8A=D8=A7 =D8=A7=D9=84=D8=A5=D9=84=D9=
=87=D8=A9</span><span style=3D"color:rgb(38,38,38);font-family:Roboto,san=
s-serif;font-size:13px"><br>
              </span></div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D=
-=3D-=3D-=3D-=3D-
Links: You receive all messages sent to this group.
View/Reply Online (#58010): <a class=3D"moz-txt-link-freetext" href=3D"ht=
tps://lists.yoctoproject.org/g/yocto/message/58010">https://lists.yoctopr=
oject.org/g/yocto/message/58010</a>
Mute This Topic: <a class=3D"moz-txt-link-freetext" href=3D"https://lists=
.yoctoproject.org/mt/93589566/3616765">https://lists.yoctoproject.org/mt/=
93589566/3616765</a>
Group Owner: <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:yocto+o=
wner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class=3D"moz-txt-link-freetext" href=3D"https://lists.yoc=
toproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub=
</a> [<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:randy.macleod@=
windriver.com">randy.macleod@windriver.com</a>]
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class=3D"moz-signature" cols=3D"72">--=20
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------hdV0DTM55kCez0dMUDFL02x1--

