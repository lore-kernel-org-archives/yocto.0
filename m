Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32509C43219
	for <webhook@archiver.kernel.org>; Thu, 18 Nov 2021 16:30:05 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.3986.1637253003500764944
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Nov 2021 08:30:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=QqWyIwuE;
 spf=pass (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=6956c98dc0=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 1AIFmHMp018304;
	Thu, 18 Nov 2021 08:29:57 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=LIjd0TvcUq4eyiUcxIFNbeIOuISjBOMyKNEhm+taAOM=;
 b=QqWyIwuE60iWNXawEYN+xswvuV+Xv1z/zP8CO+7dkTTzPB6p0mRW1UKVWLZ4AX5hWoct
 UWnuVx0D1kGKnzl/Jigg4I2Elu6IZhbEnTRMnM/vpXTfccIGsLCVNLOW7S8mFoEYbZ0i
 elLVUEBhThIZ4xs+8O+16Mo3VLaDW1ME0beSTFod99F6HFtovmbGwcgjOm3nouM2qcty
 RzRp5txT0ZJiANcHVXOZIGygd29E0oxU0+AK03s2DbGGOacw3ZeWMVrl7AuqjkL6ZTX5
 ZWCfIV+ip/XCp9GW+mlasWSwof51aKROcIH2oNA/ahJLpe/uCo86xsMPdp8SJJjM+Eoj 5A==
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2049.outbound.protection.outlook.com [104.47.66.49])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3cdssgr1ks-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 18 Nov 2021 08:29:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NF9h/oPQwq54WKnEqiAb/xft6SkCuO334amwqD/c9h9ZrdSoIIFq2a8faQvgVNqZyf7P+Ca1mYxbrtmjmeWE2xyGGtcXAP79hGgrfU1tgR9LL88bnEm1JLszOIaPBq2azH/g8l1jPG76+46cD5waLHT6uQiZbnoUDRvbFEROTTp41FLFtahnqagAkmjicxqe44RN1S6k/b2HWYZVq2yZPTiWAT+CvVGFhwQV5y2equBa2Y3tCPiMjZSnmj9W2pBTCHqKoixu5L35vud26w3KSc6WLGK8kfFDuCfDeYtNnv80a5Y4wCWVwFyZH5Gygm3ThuyQUUWoWWFdfrFnU8bX4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LIjd0TvcUq4eyiUcxIFNbeIOuISjBOMyKNEhm+taAOM=;
 b=XGkltGbkK0gCB+GJxJXeVfHF90wDTCcFzdOge1aqpFiAO4HQEHhNJhSqV6BnkLOBVidIqYbFauDrBYKaTBRTqL5nYz+iNgv5SMG1ymk+4jbG6ZGGixuPokfRfiXSe8FfnPcfLS4TB/AB4oG+v+QPgHLxT+D/+Civ7QRN7mQIq84MqSTne3vTP0hRXSlhywsoIQiL326hqDvsxiiKIN5jqCad00oioUPbYtWxIR10cOubCHwE+6qdKD7l0aywJVcr38jlERwAdVAwwBFyZj3+2q4bocMeRSs93F2RtBQty+Riu1vOO5jB98tLtGpCrbM5lrOVgZk2ksbiFQ6kHiZ+1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.25; Thu, 18 Nov
 2021 16:29:54 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::ccb2:28ab:f000:8440]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::ccb2:28ab:f000:8440%3]) with mapi id 15.20.4690.027; Thu, 18 Nov 2021
 16:29:54 +0000
Content-Type: multipart/alternative;
 boundary="------------iRTQLaHw0qQrinGCkiQT9NVK"
Message-ID: <b024e250-029c-71c8-dc66-7ab5eb0e651b@windriver.com>
Date: Thu, 18 Nov 2021 11:29:50 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
From: Trevor Gamblin <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 11/18/2021
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        trevor.gamblin@windriver.com,
        "MacLeod, Randy"
 <Randy.MacLeod@windriver.com>,
        "timothy.t.orling@intel.com" <timothy.t.orling@intel.com>,
        Steve Sakoman <steve@sakoman.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        "akuster@mvista.com" <akuster@mvista.com>,
        Ross Burton <ross@burtonini.com>,
        "Wold, Saul" <saul.wold@windriver.com>, daiane.angolini@foundries.io
Content-Language: en-US
X-ClientProxiedBy: YT1PR01CA0119.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2c::28) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
Received: from [IPV6:2607:fea8:c29d:d7c0::e120] (2607:fea8:c29d:d7c0::e120) by
 YT1PR01CA0119.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:2c::28) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4713.20 via Frontend
 Transport; Thu, 18 Nov 2021 16:29:52 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9d23a282-2d45-4c9e-1e25-08d9aab0a6b3
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-Microsoft-Antispam-PRVS: 
 <SJ0PR11MB4845EA7C4D512D8A5510E9C09F9B9@SJ0PR11MB4845.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:843;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
 HX0ghRLCWlDy5sdXfPtaQOU9Ejv4DZZ6vUcReSLAYlPrueISliLVbm4B/GRi+DvhxTBTazD9B91XagzGwYfHJB0E+qMFswUvAByIcGiPDhIYwAIhPcv3epx6bjdAYDzei5rUF68vYWuoqaVdBomU1+m2QxCNc8UZviE4V5ZdqBsr8+rVB6QuRlEHfzU3RQh4o4y6spSD27RPjwF0E33l1t76Yemu0oz9JwADEmb55AxgiWtIet1IVP1YQ6BLv0esec14y5JShgd3gZcVUqvQmre8AGgj7LJ2g0WfWwyMMKKupUHHOf65ADNW9VmbnWReqcH2zmyQ3MXSbpWpy5RfCBN5Bnef7svKUT+nGLeNkbNVipn36ZKu9z4WYNCbRHdpVNdTAyHdEnVjyZFJIU/xU02QSWi7YmXNJLV5Tvi9ONr/Wkv2VyqCDvDcnJ4G/YT0iSm9CjY7mKI3k5+8DpF+z6FaTba4tJ+T6E4ePlptI0hCrIbGBKf4gSrNsNGZjNsfkc5ah2BVveloPPuObv662Nhv5AgzO+duORIIN1+89I7v1HmqVHF98S2TIQ4jheDHEpftNFiuOVQAalZP+UzXfhZsR8UJnn63e2zP1740SLfVqdct98NlzUvtndGacQN0eMo+M1gRvJZxO3hYkTfpz1oxchLPRr8lUVcBDJtpH0ftw9Oull8AekMSVWZje53zMVTLylRwvLsCuLxctcHEG3GEEu+WvEwA8WhDR/RzNN9jWqk2jExifLDl7/xHlz69Y6Z06IuLUhF1zykJKFRFT9lIWQIblV9M+mAScG9+OW2eKHtHGRvjCFCpSPFe/BVm
X-Forefront-Antispam-Report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(4326008)(508600001)(6486002)(66946007)(31686004)(2616005)(966005)(8676002)(66476007)(31696002)(316002)(66556008)(54906003)(186003)(36756003)(5660300002)(86362001)(2906002)(6916009)(44832011)(38100700002)(8936002)(33964004)(166002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
 =?utf-8?B?MXdhdlhCUk1OUk9sLzQ4NE9WR05nM0dyZW9tMGZ3OWRjUi9BdHhMY1ZoYUR5?=
 =?utf-8?B?eWgzaEN2RlhUQ1E2cVovNEJRVnU1aTBMSkUrcVhOVlFBK3JjUm83am4wczNF?=
 =?utf-8?B?bnBETVVmSkF2MVFSOXF0Vi9uYnYvYWtzclJnamRiWkRyNXIxTEVmZlBYclZp?=
 =?utf-8?B?SENuS203YnVxWGhuc3dJWURJdFZmR0pJVDBJMHM2ZVd0MHk1QmZVaW9ybEhh?=
 =?utf-8?B?QzNJb0FwK1B4Q2hGNXNBNlNjMGhhL25lVjdwNW51MFU0MGlQY292MGF2dTJk?=
 =?utf-8?B?R1U4UHVqdFdvY1N5d0FkNytmMUpQUERxeW1hYktMSVNBTlh2NC9jZ1pHcGxM?=
 =?utf-8?B?WVNFR3Y1NS9oeE56a01sWXFnc0FrRHdDNnZnSlVxUUVoRndsM2JEN2pNK0F4?=
 =?utf-8?B?b3duZGkrVndRTllWc2xheFNWcEcvVWFsNHMzaGZOc1V0WHMrRWFlVE9BaE9Q?=
 =?utf-8?B?U29PdFZtdnpUMmxwQzBKQjBrUS9ybk5JQzdTOXdLK2dXTStkM2NJNENJSTAx?=
 =?utf-8?B?N0VGc0VQSmNKYWZFRC9JbnFHc01Kdys3K0lkMGkweGZVSWRobEh3Mm8zUzVL?=
 =?utf-8?B?WmppSE94QmVBU1FydWxLUTliTC90eTZyRzQvTGtYazlWV3RjVG9nZm5HMVdh?=
 =?utf-8?B?NXBkS21HZXhGMGhqdTZDMENyeG9jYnZUekE0WHcvRUp0UU8zTE9UeU9lMnJl?=
 =?utf-8?B?V3hkVHAzWmduRGMvaW9oeHpOVUpweHZaMDN6WmZDbUpMVTlMcHdkOWtDN0Z1?=
 =?utf-8?B?cHgxNWlUdzI4T3BiL1pFMWh4djFtRXBmdjBGWWlDU2c0ZlFIQXgzNHNvTUhv?=
 =?utf-8?B?Y2NvZUkyOThXUjBPdTEybEM0eE42eDVZZDN1THZ1Y0dkeHhYc2g3OVc1VHcx?=
 =?utf-8?B?QVRHcmN2YXJLN3RTalhTeDVocHBZOGc0Nlk1c0poNHphUGdtVW9ZbTZIZ0R5?=
 =?utf-8?B?ZUxVSVkrQXlJUTcrMzNPSnU4YVowNC9RNUFQRlhsRUUvYlNOOGxjL3pYc25E?=
 =?utf-8?B?eWxOOGNHNWNKdkU4d2JaODd1ajlHd21ydzhjZ0oxb1pBejNuZ3pCMzc4d2VS?=
 =?utf-8?B?Z1Z5ckxwVFhnQmhMdGUwTmVkZWlxZUhYRjY5bWNwNTBiVlhUQWRCTnhBNjZt?=
 =?utf-8?B?ZmtZbEpQdmtjY0wwNzFBR2JBSjlqanBsdGtqd2JhVkhBSXJ2Wjg3SFMxZzgz?=
 =?utf-8?B?czZqTEJQYlBKOG9laHd2VmdMdW9ySFdXZEpLcFliVldBUUEwWTZ5MlVFcFNi?=
 =?utf-8?B?WVpRcWpVa0UwcmdKbXgyY0xackVPc0t0RlFGOEQyNkVFdDNhQTk3ZStJRUJ6?=
 =?utf-8?B?aHJJNTJ1M25HdnVBdkdZaUZPVUZLenFIeWVpU1FNbHR2dDROaWJGWkd4dm9z?=
 =?utf-8?B?Mkp2TWhYam14Tmw1NEJnNjhFNDQ0bXJvK1BHc2lyNU9FM0FzQ1BvT0x3dXZl?=
 =?utf-8?B?ZlVUWHNBSGlsOWlmM3lzem1BRSsycXh6N0NUK3IrdzBHMzlpMDdHb2pGcFpX?=
 =?utf-8?B?cWVRMkwxR2M5Z21qYTVhWUw3VldOT1VGNDZud2tTNlpBRFI1UVJuRzlUYnAz?=
 =?utf-8?B?K3dockFPejUvN0JtMVkyMWMwaWhFcFNRTjYvN1B5NlRRTC9taVZrUHYxSTlP?=
 =?utf-8?B?VFF5OXJ3MlpFb2tDWkoyZWU2VU9qQ1d3T1ViU1RNRktxNTFTMnBQcHZlTkNt?=
 =?utf-8?B?SldVNWNWRFFwbHBQeC9BZmpWY0hncVNmSXdDQkRMSzE0QnpUeEREb2ZOZDZz?=
 =?utf-8?B?cnQ0WUV2KzVoaStObUNSbVpMV3FqNlBhdEFEOTRja3RZbDA4UlVGSkNLY05X?=
 =?utf-8?B?MEMwcFdwMFpzSGtqVG80SlhrRS9IVjZwWUVET1BTblZSWUhva3NrSkNqUS9M?=
 =?utf-8?B?Umk4THRkL1FKdFlQbHZmVTNJZEc2azN6VFlmQWtUbnJJUkd5OVc4ZXJHRVl0?=
 =?utf-8?B?THNDU1EzY1lhY0c3cUIvWUt3VS85NTMvRC9ybGNsVDZ3NjYwRzZDMnM4WTJo?=
 =?utf-8?B?S3BwUkM3WkVsTTFma3F5UnYxRkE0VU5XSjE5SmdiTHoxK3UvM3pNeFdvUlFS?=
 =?utf-8?B?NmZCY1QwNG5XY2JNbys5N29QdkZNZ2FmdVNUZmJ5K0NlaWIyL3ZPT2VrK2E0?=
 =?utf-8?B?YUJYQWoyUzdMQmpwSVFkZFpvZlJSZFVwV1pOWGpQU0U3ekR4UmxRMUhmdzl1?=
 =?utf-8?B?alQwelpSRmRtd3VVSkk4c3AvelhrSElxZHR0UHA3WDE1NExSWGI2am9zK1BP?=
 =?utf-8?B?SUtsZ0VOS3lEWk90ait2ZFZoTFowVGFHNFRVTE1wbE9yc0RIV29KeUhNdFN5?=
 =?utf-8?Q?i/KDdDdy9xIUsJ/HZv?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 9d23a282-2d45-4c9e-1e25-08d9aab0a6b3
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2021 16:29:53.9257
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 IHnIc33KSFmbrnd+Gaq9yLEyyuQ4Qk0mdo78CKMcqi7V6PYUWuYPz3kGJaDAppzljMRP+PHiRR6fCNlnkncVFx96dPoDZ2DEAa4GDd5Ej60=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4845
X-Proofpoint-ORIG-GUID: 4oz8oo0BGagVzu0dCdahosSbN8QEVHGU
X-Proofpoint-GUID: 4oz8oo0BGagVzu0dCdahosSbN8QEVHGU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-11-18_12,2021-11-17_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0
 spamscore=0 adultscore=0 suspectscore=0 malwarescore=0 mlxlogscore=811
 mlxscore=0 lowpriorityscore=0 bulkscore=0 impostorscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2111180091
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Nov 2021 16:30:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55361

--------------iRTQLaHw0qQrinGCkiQT9NVK
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees:* Alexandre, Armin, Daiane, Jon, Randy, Richard, Ross, Saul, 
Stephen, Steve, Tim, Trevor

*ARs:*

- Richard to determine what infrastructure support/changes are needed 
for i586 tuning (see YP #14632)


*Notes:*

N/A

*Medium+ 3.5 Unassigned Enhancements/Bugs: *73 (No change)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *39**(No change)

*AB Bugs: *61 (Last week 62)
--------------iRTQLaHw0qQrinGCkiQT9NVK
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees:</b> Alexandre, Armin, Daiane, Jon, Randy,
        Richard, Ross, Saul, Stephen, Steve, Tim, Trevor<br>
      </p>
      <p><b>ARs:</b></p>
      <p>- Richard to determine what infrastructure support/changes are
        needed for i586 tuning (see YP #14632)<br>
      </p>
      <br>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <p>N/A<br>
    </p>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs: </b>73 (No
        change)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>39<b> </b>(No
      change)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>61
      (Last week 62)<br>
    </div>
  </body>
</html>
--------------iRTQLaHw0qQrinGCkiQT9NVK--

