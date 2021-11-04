Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F75C433EF
	for <webhook@archiver.kernel.org>; Thu,  4 Nov 2021 15:29:43 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web09.13233.1636039783054699538
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Nov 2021 08:29:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=c92ADIBj;
 spf=pass (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=6942206bbe=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 1A4CkiQa018383;
	Thu, 4 Nov 2021 08:29:32 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=QhN8kUdva78Pyz98cv8T0BB0jBuJCactZn/8hwdplpQ=;
 b=c92ADIBjN5kR+IPvx0kZWOvnbXW3OWrt66oLi1AAzV9v/9jIqPivIn/MhbX9UJYd1wpI
 WwnyDn5Z1K/X92vcvSkDZ1fh8CWkFjR1POyXm9XNVEStJYA6ri5UduTDtPVweMak54b7
 Sa/QOb0kHLVXt5/eO96PamHzYRp+UbBlfqWiam7+nSFgDpGymptTxDXNf/LUE4+1BgZQ
 6xHt5YY0qVfmfYoUpb+Kgnn6/OxHwZDyUIQvf5VdBNdvt8NF06Uk0XcPjZNdXjU/laaI
 Ogt1MDc9GE6ALJhiNZkfhhEA2+fr/KNkRChOtAlxLUs1FSD5lkncFtF25HBFZaDaJV6k Lg==
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2102.outbound.protection.outlook.com [104.47.70.102])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3c3ddd9ucr-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 04 Nov 2021 08:29:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UK70/v0C4EgOwlFoae8C2zXxUUuq2YItxR89jJQtrSfDVVXzDwLIlMFgbgaJvZRtr882QQ9J4Jh33SBOlxml4z69rLKKLZh8rNUi1Q8fqIg3dDQ6eJ8bNRP6RBDL/IMw4jZHFN7SUGJbAYCpzXboY2xiE1qFCCtT/jIqlmHvx8G5UkKsivZON3koRIKJHcnEy4xZvGPfy0ZhcwMwIRUCnPzHsXO9A0KWpA3Y3aH4svKVujmqor/ozWTe9JR8oqYdXsWaGtU2mYN1xdhCihRWfuOB4xPd+fgynF/u0+pimtQVFEDO+/s5DvrO7fLsziaWjHaQEZfOq45cu/fpk/bqLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QhN8kUdva78Pyz98cv8T0BB0jBuJCactZn/8hwdplpQ=;
 b=Od5ieFjmOkUz3hw0g6iAaKbboh0xB1XxIg4pLerjOqI6W+07kI1tDer/sEPekPY1iSitQJ6C1LkkvlI0K3uMTT+5K16QfDvjanFtFVmevfnLDZR3IhKEu2pw/ZV6Z/8wrZtGgYrO1RhjeaUOOH4eCTxC1NsRdAmsw+DAYvAuS/yHUtkqr0hbGs/Td+GMXDMxDiMeU1+sCoOKSZFYTyPwbAGkD0dQskQ7JEZSEoFSxUUuaBrOCm7tXGHdB5WoPtaht5a/71ajhL4GziCxKvcbdTYhjRLrKKMkg5EFbrbZW7LrKhU7Gro6Tocf7gV1MohjP45nMAFhOas6OMtjfEp46g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BYAPR11MB3621.namprd11.prod.outlook.com (2603:10b6:a03:fc::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.13; Thu, 4 Nov
 2021 15:29:28 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::ccb2:28ab:f000:8440]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::ccb2:28ab:f000:8440%3]) with mapi id 15.20.4649.021; Thu, 4 Nov 2021
 15:29:28 +0000
Content-Type: multipart/alternative;
 boundary="------------0K0VX9ekLAciMQwDKF81Po3K"
Message-ID: <88531a70-0401-f1de-18a8-d886e50d0ccc@windriver.com>
Date: Thu, 4 Nov 2021 11:29:24 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
From: Trevor Gamblin <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 11/4/2021
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        trevor.gamblin@windriver.com,
        "MacLeod, Randy"
 <Randy.MacLeod@windriver.com>,
        "timothy.t.orling@intel.com" <timothy.t.orling@intel.com>,
        Steve Sakoman <steve@sakoman.com>,
        "Surendran, Kiran" <kiran.surendran@windriver.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        "akuster@mvista.com" <akuster@mvista.com>,
        Michael Opdenacker <michael.opdenacker@bootlin.com>,
 jon.mason@arm.com,
        Bruce Ashfield <bruce.ashfield@gmail.com>,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>
Content-Language: en-US
X-ClientProxiedBy: YT1PR01CA0126.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2c::35) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
Received: from [IPV6:2607:fea8:c29d:d7c0::e120] (2607:fea8:c29d:d7c0::e120) by
 YT1PR01CA0126.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:2c::35) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.11 via Frontend
 Transport; Thu, 4 Nov 2021 15:29:26 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 909301ec-3f2a-41f0-2854-08d99fa7e3ae
X-MS-TrafficTypeDiagnostic: BYAPR11MB3621:
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-Microsoft-Antispam-PRVS: 
 <BYAPR11MB362116D7AE94E2CCB0F442FE9F8D9@BYAPR11MB3621.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:773;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
 BpJKY+NNVjEqzA4XWRO2NXnjpDz8HZvayl2hkLTF7PGbqyoG3kdAGNkD7yvVm0E+cvaGkhDvq+FBKpbogZc02XXUieb9F+Ux9ECadRTgA+3+PizNHhbA2WyTm7kUisxWIqDOQozS+SrF/rnlP/TM5SqUQs2kUcwwv0WjmGxxjjzm2aTj9QKDEZh07e0Fke4tcopFiCKd24JCs1+xtor76MCv2KWNoJqJrLmyMovPSvRCL+R8MEm/w01y50/CZ4Z/5zEi/FK9xEdDgL5Hbdksv7hLj3MnSQrRQ/1xyB+n3uoCPSs6DTgyRzbgPZYbNNvutpu/jjSHHJ7Dxd4EiPcJHFrPZt/gHYUyg1H072B8ttroId+EtTkbeftAeU3139nOPMTS4o80ZKv3NRHehrwdQNSVSkV5yk0H1lp/jCiAhn9h4UVe38gkyMLXJJbQQH+QSSJhqbc20n5nCM4Ayigpg5oqvZwuTtWo+C/Ar4LRIASjTaCcibrDiSrDE47wfIJDZb/UcX9GKynUkNNytk7E96zYb9dGOlWPitdh1gdvuSJfpcmFIhgNg9wImIBY/v1Fo0yOCt0LQStunQyzfPnYgZ7NRHEIASUqP4vDz8S9wa0n/tB8xgzjC2tP145HWdyMyeF+jJWyaaTmW4sGhv4tFvVd8Hbgjroloe49swQDz6P+ICoCkLetxw+3IHsUXJgn5Mn1obifbh/Eqs94vvYRX+PpDq90wvYW+AyOj5uTN+BdgU51VavAholLSLoJRhbUJf4GYmtBQGL4gL5ND3h8mNbfCwj1dVhi1b6ggVsEAY0svyuHpQ9dt/pnEuGjHLvn
X-Forefront-Antispam-Report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(2616005)(2906002)(44832011)(66476007)(66556008)(86362001)(66946007)(8936002)(508600001)(966005)(33964004)(8676002)(6916009)(6486002)(4326008)(54906003)(316002)(186003)(5660300002)(7416002)(31696002)(166002)(36756003)(38100700002)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
 =?utf-8?B?RXJuK2tGMWtNVEpEc2NkR3VBNXZIN1RWVm9WSDFiYytmdGNGd2hTTS9ncjVp?=
 =?utf-8?B?R0tYT0U4ZGxvQStqVmpFSGVWUGhvRmhQbmZ5aWkwQXFlVEVteTEwell5NUNW?=
 =?utf-8?B?eklZZm1hdHlPeG5lbEFtM0NhZTNhRnAxcSt1NnlNRkFuMGtsUHU0SW1TYVpU?=
 =?utf-8?B?UUw2eDRkemFEVlVkcFhNL01XS2pSQmtqZ25MRXJaVitVdCtLYVNVai80cDAz?=
 =?utf-8?B?Kzc1MEJCbGhqUld2SE9LeEo3MnNPcUVsTGRzajVhN3hMVmppUDl2WWJhdktz?=
 =?utf-8?B?TWlWUUI5a0FhOEpFb1NFMjBvTjNPeGJOS3RCSVVOUGU3RW1LNTIzZHJueXh1?=
 =?utf-8?B?V0x0ajlXa01zSFUzaUVSS2NKYWFnY29FWUQ0U0pPcXdIVVd5THFsdzZoMGl4?=
 =?utf-8?B?VnowL3pwbzUvaytSZ1FRS0RwZ0F5VnlHbjc3c1U1Yjl0SUEvNnRnclVVM3Vw?=
 =?utf-8?B?T1VaUnJJVXJRNzZ1U1BoSktJN1Q1NDdYSVpsTnpDWHpKcUhGNzN1aW44eHdY?=
 =?utf-8?B?SGJ2ZUxNeGNPdnErQkIrSXNvYVRHb21YbThtL01NUEJvbmtkQVllYU00eVNx?=
 =?utf-8?B?VVQ1dEdOaXRRQVpsYXU0MEdKdHRuTzBqSGwwcW8zYk5lTHZMVU0xWHlFRGdM?=
 =?utf-8?B?ZVU5ZXJjV0p0allrTk1YVVF1ckpjRnkvQUxLOUoxNTNDMDI4UFVsODFhMkRQ?=
 =?utf-8?B?YzA5ZUdtV2ZLZjJJMHgvbmNiVFRBdlRRd3BvN1J5bHRidWhaVmhNSzN1UE5U?=
 =?utf-8?B?NXhhcVFvVStDU21PMzNNSmkrNU1PUUYwSXVKY3BzTnFCL0xhclFYOFc5TzN3?=
 =?utf-8?B?V1lIa21aQTVqUjRVMlNXbE56RWJYTWU1OXdiUlBkYW5tWWJSNSs4Z1ZVODVD?=
 =?utf-8?B?ek5WdVpiRzhkdzN4eDNUdlJ6N0RYVlNpZUY1OHNOUlJJbkVwakpkQTg5UjVu?=
 =?utf-8?B?MkJWQlFYak5IWVVtS0JCcGNrY2hObG9aemdPY0hYWHVwTVQ4WmJmQS9pRzEz?=
 =?utf-8?B?YnJVSVlwVjFLeWw1TnhrVVkyMTJMcDkwQXBpVExKVllnMkJxMThtcmR4NUp0?=
 =?utf-8?B?bk5RVHJnRE5BNzd4ZGVkRE42aVBJMFVnWnlNc1ZBSVhTQkhnOXBFeEMvWFU3?=
 =?utf-8?B?QXhudFFrSzMrNE44RndqUDIrdHc2UVVLNGhzVzJxVE9yaE9TMzg2dDdMbTRr?=
 =?utf-8?B?NUprS0p6UHpya0NSRDV5c0J4R1VEUGp3M0F2L1JQdWw1a1MvejlNMWJMd0F4?=
 =?utf-8?B?eG43RUdlNDd3Q09RNjh5UUxXTkVnbVlxZ0xraE02dCtJcHBYNzNKb2lzelJP?=
 =?utf-8?B?OE01aVFoUCtZUGowUW5maGpGQXZoVkhrbHB5NVN6eVVrUjY2eUtpdWNFVjNI?=
 =?utf-8?B?RjR6dlFSQ0IvM1djNmZzVnBjSEhYNTRxY2pXamhmM1FKaTZhRTFEOGVFRGd2?=
 =?utf-8?B?Q0txTkc0WlJkRlU0ajEwNW83VDVSamliQjVuRDl4RHJFQlhxc3ZaT1d3K2Zt?=
 =?utf-8?B?VTAzeDRGZ2hNeVFxcGFHR2xyVzVvbGJYK0dxZStGcWFRa0xGOUhqMElMUnI3?=
 =?utf-8?B?d0QvTmZIMVNQQnZKUUxidW5yT01YZVFuRGkyb3l2eXF0V05NTEdpRFFYUTND?=
 =?utf-8?B?TkxFMVBkMW9maWpHT3FLWHBmNVRUTlVDMFFjaVpZQzBFM09iUnNqSUN4ZUc2?=
 =?utf-8?B?ZFh6ak5mMmJNaVZuTjY2R0FiMEhMK2thTlJjZVduMFJVREhzWnBFWWZKbWl1?=
 =?utf-8?B?ZU1NbWZ1SWlvd0JOZEo0eTlXMVlYNk5NdDdsY3dubE80dWY5d0kvRWlMRUlF?=
 =?utf-8?B?cGZqUGJHYjQ2b3pPMnZQMWFzL1g3QUlrT0w4NGMwaS9YK1pGa2JmcHFQWnhG?=
 =?utf-8?B?emMreVJEMUZLUWlrN2gwZzBqbjUvQTVDeWlXVjJaaG5LVm82NGVUejFrUFBW?=
 =?utf-8?B?VTAvOEhqbUJTdTJqanUvdnFuRXZrRnFoTzJLR252RDdqU2gxNXJ3ekQzN2dj?=
 =?utf-8?B?blAyQ1dSak5sOVUrYjhwL09EZThqL1BidVVva1plYUZTSHNaeFQ3VjBsYWlV?=
 =?utf-8?B?V1dyM3hYRytWMmdEZ21ONm9ybkZlVnFaY05NcVhpRThoV2RuYTErOXcwbFRp?=
 =?utf-8?B?SjB2OVl4SmVPT28rQ2lVMENSbUUxMUZLK2F6YzdLZnlkcUFiVVhBNSsyNTFS?=
 =?utf-8?B?N0lvT2hieldtcnIwRXdGT2dzUzJ4L281UlRFRzBLaDJIUW0zYW9haGVFalJC?=
 =?utf-8?B?RktMZE5NZ3FhZ1NLbXVnRzNsZ2o5OWdORXVoRmlrNk1VU0diVFQ2UThGN1hm?=
 =?utf-8?Q?zmBml/PiMTsXFUCZ/q?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 909301ec-3f2a-41f0-2854-08d99fa7e3ae
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2021 15:29:27.9621
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 WZEcxZfbHuMF/m5EVHBTXd5WZa/qFk76VLmLi/CyzEldviE/pBHM9aH1ZqWLWiQ9qhusTV1MeTYKBv+KKWGc1GNmx1e2L/KNFNBwEmZTNKU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3621
X-Proofpoint-GUID: gpZfAn0Q5HIXlHap1voZorcDnAbNc_IT
X-Proofpoint-ORIG-GUID: gpZfAn0Q5HIXlHap1voZorcDnAbNc_IT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-11-04_05,2021-11-03_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1011
 phishscore=0 mlxlogscore=807 impostorscore=0 lowpriorityscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 priorityscore=1501 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2111040058
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Nov 2021 15:29:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55240

--------------0K0VX9ekLAciMQwDKF81Po3K
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees:* Alexandre, Armin, Bruce, Jon, Joshua, Kiran, Michael, 
Randy, Richard, Stephen, Steve, Tim, Trevor

*ARs:*

N/A
**


*Notes:*

N/A

*Medium+ 3.5 Unassigned Enhancements/Bugs: *79 (Last week 81)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *39**(No change)

*AB Bugs: *62 (No change)
--------------0K0VX9ekLAciMQwDKF81Po3K
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees:</b> Alexandre, Armin, Bruce, Jon, Joshua, Kiran,
        Michael, Randy, Richard, Stephen, Steve, Tim, Trevor<br>
      </p>
      <p><b>ARs:</b></p>
      <p>N/A<br>
        <b></b></p>
      <br>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <p>N/A<br>
    </p>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs: </b>79 (Last week
        81)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>39<b> </b>(No
      change)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>62 (No
      change)<br>
    </div>
  </body>
</html>
--------------0K0VX9ekLAciMQwDKF81Po3K--

