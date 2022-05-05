Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 436CBC433F5
	for <webhook@archiver.kernel.org>; Thu,  5 May 2022 15:31:48 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web12.12709.1651764702397831502
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 May 2022 08:31:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=DYgYuNSA;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=21241819df=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 245Eti8v012199;
	Thu, 5 May 2022 15:31:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=9I2eL2DssUeBuCak5J4gQ7C7Hs+Azky3ii3FbXGZUiM=;
 b=DYgYuNSAFoxJ7gvQF//y+fiURAFpbnluf8Y1oiF26sWvaAyjitUJ66Rn51xRpYosfSpa
 jNGWyftOFx4o99NWEYxkwUyV7PZTn3/Bo8+yv+R2C87wusCbPabtKPOVn+M/qICwoCRP
 Yq5M6eG+F32g4+4EdMQKMCAHC+lyW12cjeULuzwLD0yvUTyZxlVaMFas/hGxJMoEoBJQ
 pi0sxg+OVhfmqQy7ir9/R5+C1X5Sj7lt59e7n/CHnTCIYBOgC71psdUTLste0/edGrje
 iw7r3M2Q+6HN8DaskrVEnKMQLUiSubaGAG614rmpDHvvkrX/fpRgFXdarP9QRq5dpl3l tQ==
Received: from nam11-co1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2175.outbound.protection.outlook.com [104.47.56.175])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3frv38uya4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 05 May 2022 15:31:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BZO5+c4jbOSycjgHoDkfWa72sIjqF1RLEL0lr7Tma5n6RI1UbIg01FggN6y3N0VLB5Tzmnb+KmZf4Pn2cRS/1V/vvPJV8kN8ywQOC7o1/UQEmK5d2twyxmvXhd+SITJBsLiE15MYogAFUmAL6WrL9zpUUz2NZTfhie/kAYfnrGsb2J0TQO/1m4PSXPCeV84LbWNaNNjxpMK+AHUUfV8Pyw78X5z5mZfW6237s2P1omNAl7K646h3rArf1b3zjDG6oNL0VMGEqf6jnVcxVnDTAbh1ItZw60BYvHDMpCDW8rRDot+USHK0SNqTclzAgqYxY6AD3WAoD1VE4zrxyjM1xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9I2eL2DssUeBuCak5J4gQ7C7Hs+Azky3ii3FbXGZUiM=;
 b=APA09Ni9uqQ2QaEbzJkNNJsme752vO8fEtlrsDA4mgRxP/QxzOhkI5lNFCGPfofMJIFgHPUeIl0JxTe3reKL/0YFEc+ueL8C+eSENoV+EfPbO0wmk1RQRCtOOI4WSt/xcs6Pj7sZPJmiTjA5cay0gBegnhYz9kq8nu8lHE6chzHXJWPr2iUvDIrAq6ojHqWtzh5zPJk7KAFMQDBBMrjuk1dg+wOvyBah3w+tCGVNW2kQayQn7RPDTL6uPP71BDPNSXzC9axpH56nwDh8iQSloZ80WLZAadIfA6+rH9DhU6K6ggCdSLEA7eJ+obqWCjOFJCTZcSNo+JjI55tuo5iETA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 CH2PR11MB4264.namprd11.prod.outlook.com (2603:10b6:610:3c::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5206.25; Thu, 5 May 2022 15:31:08 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4442:39de:d36c:b6ac]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4442:39de:d36c:b6ac%6]) with mapi id 15.20.5206.027; Thu, 5 May 2022
 15:31:08 +0000
Content-Type: multipart/alternative;
 boundary="------------H4oy83ELKdomw4CA055tOzvI"
Message-ID: <9901305a-2a5d-0fca-0d15-3fc85aa84e42@windriver.com>
Date: Thu, 5 May 2022 11:31:04 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 5/5/2022
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: alexandre.belloni@bootlin.com, Bruce Ashfield <bruce.ashfield@gmail.com>,
        daiane.angolini@foundries.io,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        luca.ceresoli@bootlin.com, pavel.zhukov@huawei.com,
        "MacLeod, Randy" <Randy.MacLeod@windriver.com>,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        "Wold, Saul" <saul.wold@windriver.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>, tim.orling@konsulko.com,
        sakib.sajal@windriver.com, akuster808 <akuster808@gmail.com>,
        ross@burtonini.com, Saul Wold <Saul.Wold@windriver.com>,
        michael.opdenacker@bootlin.com, valery.chernous@gmail.com,
        aryaman.gupta@windriver.com
Content-Language: en-US
X-ClientProxiedBy: YQBPR01CA0013.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:c01::21)
 To DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d2b740a9-8438-4991-b28a-08da2eac46dd
X-MS-TrafficTypeDiagnostic: CH2PR11MB4264:EE_
X-Microsoft-Antispam-PRVS: 
	<CH2PR11MB426401B65481D7ED4164773BF2C29@CH2PR11MB4264.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	9JxX1ZLESQzLSN+rGX6/z6QyzD8LxW15DzV13sJy9kG7GIZrDeYq4WoeKh8O17M7/fUaD/aX/KXjR2FnKlrQnEJ1br7IFebwiyQRQss+9fEh2sv7eVa3T8uA4x4AGB6/SUrrKPit1sQJTKWWAVuJ7P67aFFnVN1UtvAF5XhcqHlLjpV7TqqB/q3edTU07wuVa2QX37G0r+uNf5vtRv3C4E+WyI7VTpU3vMezp8oHLWjBesgPSW5hj2TrAx7Jc44Oz36GjkASlrcPU0nGzSiiE6BjjKuCha74IingEkXewLFfkpC1X+d6uJEThlfAjjBPQqVmduRtOoF5gu9OSHHGSo+CUc5RRlww5OuugElvOWPFdy4es4wmGKARySsrLI7103U5DThCWR8aid3BRRyfsTgn63eHECuBYA3LOvRYOs0yNG6dL4Qq8VWfE1CSA9VtjumOaBHChr3CbA6tDyQz4uL5G/FZQfudBXkR8V5KXLJL33A5qBp1rlQCWcdjPSQsTrwMScXYorn9hPZzLLVGu/IabHeP2ugaL+wzmhN2SbmUrOG1mbTBMmcf6RxssWpqBPlJQomdkARajNY4ZQKkuHQaSB2vvykIU69Jssf20HjcDgnojUtCwcI96QCpGAxOjIUXWhWagpLf5tEeH8C/BPOS7xBeTI9ecPkJjhJTkeJ5iQj8M58aroC6pYfvPeODc7Qxl0PO+7dIVsthWe7Q076JCdpInVLFRISaqs82FTbPZfyJ2Bpie9qptD8CsmOWw4nz/CePKN7QjXSiAqDKK+g8OElBF26vk3o/Yj4diMSHhwkEA1UJHsMz9zMwhsAi1AYH9x2/KDkmqnuv07v1MvogmkJBUlBZzuaT3paKTn0=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(6486002)(966005)(2616005)(166002)(508600001)(107886003)(186003)(7416002)(8936002)(5660300002)(316002)(54906003)(36756003)(6916009)(66556008)(31696002)(33964004)(6512007)(4326008)(6506007)(6666004)(66476007)(38350700002)(38100700002)(66946007)(2906002)(8676002)(52116002)(44832011)(26005)(86362001)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?dVNiR3JybkdmMGUxRW5IclN3amJWYTcySmdBZ0xnNjJ0MXlYdmp1S3hZR05l?=
 =?utf-8?B?T0FUdjVEczVmaTd6a1VxWlVGTHpqZmhGNXFQN3hMd0JpaVBneU80cklUSWF5?=
 =?utf-8?B?U3dyL2hhcTBQNElMdStNNDV5Y3FDaVltM2o2Y1dJZkxGUjFlU0R0bHNsQ3Bi?=
 =?utf-8?B?a0NxeEdVc3c5eFUwc1luRVpvdnVCWjlDcE5KVGluY0xIVFpZTzBQbk1mYkcz?=
 =?utf-8?B?QVBndG4zNUI2UXEwaEd3SU9ub2NXdkkwM2xuRDUyRWJRZzhodzV0QmZXUXNw?=
 =?utf-8?B?YWJ0SFZyNW9jVlhHRHd3aHdhcE9XM1pocUhFcVZDdXdzdXJtTklTdUtvd285?=
 =?utf-8?B?akN6bDExTmR3ejlwZnloajQ2WlhaZWhpNHNNZGhYeEhpVWY2UWNPd1FEdFdr?=
 =?utf-8?B?S2ZjSnp1dUJrS291UnpCcmI5aHMzQ0hUSXdEc2lLTmRDd2JORzR0dk9jMnRy?=
 =?utf-8?B?R25NOVJ4RWVQRGNTSzVrS0tKOHYzNHFNdzlxK081UFFsU0QvUXJnK2U3clpy?=
 =?utf-8?B?emFxVkhyV0lkYjdvQ0Fqdm53djFTSVNaS3FSY3o2QlIzOHlkQUN2MHdDSzV3?=
 =?utf-8?B?YXVsa3Nnd2dEbGIzRDU5N3BFN3hDRGpZY0ZEMUE2M2kxeGdhYjZrZFdadm1W?=
 =?utf-8?B?ZkF2bldBbUVLa05lS01zZXBZbGRSUTN1dEN3Y0FBSk5KRkJuUlFNTnVCQmRX?=
 =?utf-8?B?RFNreGp2Wi8xVWtRaHIvNGp4MlV3TDRjQWRVZmUzZEZiOWI0clVUWFR1YTRZ?=
 =?utf-8?B?VnJKOGhlYkRmZkdaTTYvU2lmeUROU0hUM3FuVFJEK2g0RXdpcndtTDJTaFZG?=
 =?utf-8?B?cmVGMENRdDM3U0k1NXRmZ2MxMURsT0NqeklSSERxUnBXK09xS3hQUXNGbjlE?=
 =?utf-8?B?MFpwVk45VmZ6Mmczaml4MjNFTWRvYlZ4cXE2WHpxTFozVzVyVkNmeUJqM2w3?=
 =?utf-8?B?di9HR0lUMnhCTy9jQWRLYk1ESm43UjQyd1N6UEpoQ2VPRW5VMkN2Y2djWk1x?=
 =?utf-8?B?VHVxSVZyRzdWYTJvK0NzbXJzZjJ3b09Qa3hIV2h0c1FrV01vUkxNUlgwNWxv?=
 =?utf-8?B?dlUvOC9CenVTSjFWR2tEWU1rR28yUmZCT3lRVG5SOGtYeC9OQkJYYldZSGox?=
 =?utf-8?B?LzYyT2ZtSXN6VlNTalRNbXRkUUpDZGJuL0R6UDVGVlRBcE94ZkZMM01SMHVI?=
 =?utf-8?B?Ti9rNklEL3N0VlQxazlTQkxaVU9id2owdUZ5dlpWL1dIdzN0NnU1TnFZVHhQ?=
 =?utf-8?B?Q3RwVDdRN08vbVZodWNOOUtHNlBMc0poS0RGUVh0LzNkdlU3dGQyODlaT21v?=
 =?utf-8?B?dW9rdyt3enVzNG5yQ1grRjRXRzJnU2VZRDRET3VmQkZNbFBzMCtkdWV6bUp2?=
 =?utf-8?B?WFJZaVR1Smd1dUZzS2k5cVVnMTNJN05seHdtMFpnTFlKdU42ZHZrTVJ6bFRu?=
 =?utf-8?B?dElpUkNFRFI0TnN5MWFPdkxMaW5QeGwybDNSTGo1aitxY084bW5CWTJGLzRE?=
 =?utf-8?B?YWd3OE5iZkdmS1owRU5Wdk1JRzVOSU5saUxTV3YxMFEyRVdLbGtqRGYwL2Jt?=
 =?utf-8?B?OXplbEpld29SM05WMVNrcjRUNXBDUDhJbVJROWRmaU56ZWR1SzhMMnhzbUxX?=
 =?utf-8?B?VmVFNlBxSUdyTU1vTnVSQ1NBRWhERzkrM0FUY29LNG5NSnBvbFZDQ2lEcUJn?=
 =?utf-8?B?S3BiNDN2UVgxZ3JwS2hMZmdMa3VVKytwaVQrN1VJd2VrTUFWd0tkSDFDLzJs?=
 =?utf-8?B?SW5qRXFTbGFQWHFDM214Z3Bpb3BlbWNNWVNhNjF6Ym1VVXBINHVPSEdkWlZa?=
 =?utf-8?B?cHFudlUvajhKWk12eis3L3FyUG53b1hIWm82TW9Od0FJeVZwN1pBczBhVUZV?=
 =?utf-8?B?MnlBR0pmdGEyRkptcUNCbTVHRTIrUTlCU1MxZVhEUTRVS0hrYzYyWWY3UFB2?=
 =?utf-8?B?clBFTnBLa0JlR2RXQjZtQTVOM3F2bWpvRTg0Uk9XTGNIU2p5K1E3MGhMZW9w?=
 =?utf-8?B?b21xTEl0aVRSVmVaUCthckhGVC9qek9QaXBqTFNhZjhaRU5Kd1lyUzdtUTkx?=
 =?utf-8?B?bE1JWWxSOFV2WHVIMk1zRytnZGhWU0EyYzBIMHBJcjZVc2Vuckg0dVBRK3R1?=
 =?utf-8?B?OXJpbnpuSDk0bThRdXhmeU9GZ0docURmbmxXMndrTTVIcGgrSUovejlrYUQ4?=
 =?utf-8?B?cTgvZUs2dGtybzJrVjVSSFR6S2pkcCtwTXJIQWVwcjdoSENod0pZdmx4bjl6?=
 =?utf-8?B?YmtaUzFCNFpEeHM5YlViRndobXRLYkZ6MlA3bUhUbFF3RE9CdTZKdXdMNjJk?=
 =?utf-8?B?Z0I1WnU3SGtGZUxJZll0WnBJNzV2ZURhNDBMbDR1Z0JhdzJiUFh5SzVON2xv?=
 =?utf-8?Q?Hz/Px7veMJ9NTIiM=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 d2b740a9-8438-4991-b28a-08da2eac46dd
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2022 15:31:08.6095
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 SiMI20iYKhaEzwKndJV5IXUN9k0dpe6E+4qqSWpJKyRLsXQgWO/0cOFH9PzsW5aFEVFJEU9GJO7Yelxykzb80xdEHTe+/kKmynkA5P9BKZY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4264
X-Proofpoint-ORIG-GUID: VQJxs8ifoFMM9TWcHCD7PINcp3ZWxn81
X-Proofpoint-GUID: VQJxs8ifoFMM9TWcHCD7PINcp3ZWxn81
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.858,Hydra:6.0.486,FMLib:17.11.64.514
 definitions=2022-05-05_06,2022-05-05_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 mlxscore=0
 clxscore=1015 phishscore=0 mlxlogscore=730 spamscore=0 adultscore=0
 priorityscore=1501 impostorscore=0 suspectscore=0 malwarescore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2205050110
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 May 2022 15:31:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57006

--------------H4oy83ELKdomw4CA055tOzvI
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Randy, Richard, Luca Ceresoli, Bruce Ashfield, Michael 
Opdenacker, Ross Burton, Steve Sakoman, Tim Orling, Joshua Watt, Pavel, 
Aryaman Gupta

*ARs:*

Randy: talk to David Reyna to reassign his toaster bugs

Richard: review the bugs from the old milestone

**

*Notes:*
N/A*
*
**

*Medium+ 4.1 Unassigned Enhancements/Bugs: *75 (Last week 77)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *48**(Last week 48)

*AB Bugs: *48 (Last week 48)
--------------H4oy83ELKdomw4CA055tOzvI
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Randy, Richard, Luca Ceresoli, Bruce
        Ashfield, Michael Opdenacker, Ross Burton, Steve Sakoman, Tim
        Orling, Joshua Watt, Pavel, Aryaman Gupta<br>
      </p>
      <p><b>ARs:</b></p>
      <p>Randy: talk to David Reyna to reassign his toaster bugs</p>
      <p>Richard: review the bugs from the old milestone<br>
      </p>
      <p><b></b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <div class="moz-text-html" lang="x-unicode">N/A<b><br>
      </b></div>
    <b> </b>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.1 Unassigned Enhancements/Bugs: </b>75 (Last week
        77)<br>
      </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>48<b> </b>(Last
      week 48)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>48
      (Last week 48)<br>
    </div>
  </body>
</html>

--------------H4oy83ELKdomw4CA055tOzvI--

