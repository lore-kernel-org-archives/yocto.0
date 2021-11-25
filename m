Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6867AC433F5
	for <webhook@archiver.kernel.org>; Thu, 25 Nov 2021 16:18:38 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web09.13884.1637857117229032289
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Nov 2021 08:18:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=iHFlu/vZ;
 spf=pass (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=696386b63d=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 1APFgcQn006485;
	Thu, 25 Nov 2021 08:18:31 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=qhfNrqpWs/x3r/Im4ygTObjs+OQNSATaS76ZTV+1NxE=;
 b=iHFlu/vZ69H7QUqxKnWn/XL992QxktnFyyvcaYHOCOo9vekkSvnL57ZvObCdEz6vjpPi
 TTVPuqURyYp9eHJvvbBDq7pZYoxj3QWSSHZnFAwTnCAZU81mJtEaTAvNjQ2zD/RQLWcW
 w2FbTh7z5OeGc6auf9i9YFKkBD+EGI9+5+CGGt7r8xv2VlPlzEOpRkM/IY/ojcMvM/kj
 ni+H3gpjd3P7v9jvmYFZH9hmPUEl7N+TaKSDnuZXENWX41ZgJe0eC+7q5/N2i3yjUcdV
 /GhQI6pkhrMq1zm1rPh9rKFM3GQKmWleAkyLm5rY+lqFhoqgQdik1jsNcidBdk9PAL4d PA==
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2176.outbound.protection.outlook.com [104.47.59.176])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3chbbv1fpq-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 25 Nov 2021 08:18:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h699gegOHT4QmYu9JuQ/FVFsWZUqCKXJD/vD4Jzk410aP5B3rrxuRWNStOBTD1lxxkZYdS8Y1UI+D+IpCDEkEYV+oZ7b6IVpU0HFC4I4yv0K9wNms+Fg40IUBFrDJtZReFeUpp1M2YefQ0bdabKpkF7FlEaeWJ1Z5r+W1p1qzbPf6xZKBBdNc8xVDl5/NzTpGB/V12e7PaM+rMy8B1nsg+/22YMnmaxTW1YzzreFf/IeOWullOJoRU7gbkVJp/27vY96gfD4QGDU/JCs9VfcWcEDpvb5S9IxkQIZw3TpOvcbCcUxq7f3FNjOhaukXOzHECZCG3P6BCNpxH1deJaG9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qhfNrqpWs/x3r/Im4ygTObjs+OQNSATaS76ZTV+1NxE=;
 b=EgjB8CBLKX0snqR7Dt5hbZ9fxAs9vi3XkThK642NDGWVVgz/NkTonDfrRa9P0CD5yamXbfJF8Tfu/7oSA5smLnf56O/P/GtcRrjb59YEu5PuCyPnL5H4hfM/LuHjBm1JU9gbfY2SRBb1X+uJpDj33fpvX/dlkJ5NcN/f56FhU3GFy5f9sfdRW5sD0tIgCJOqVgDCyxje/GfTQrn8C/Ry8nsArbpZX4YMNkSLzDP0gIXwlHxj2aS3xp+qeaGpi9SRMNxsAeUVeXOAwyWKrq2iE4dYODga0UoQesR65OXbfsmfNP+P/Rq6Hw+38PZLEENklm47JvhCnCHU57u5X5OsiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BY5PR11MB4152.namprd11.prod.outlook.com (2603:10b6:a03:191::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.26; Thu, 25 Nov
 2021 16:18:28 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::ccb2:28ab:f000:8440]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::ccb2:28ab:f000:8440%3]) with mapi id 15.20.4690.027; Thu, 25 Nov 2021
 16:18:28 +0000
Content-Type: multipart/alternative;
 boundary="------------ogJqMZNI48rQPK49s9xrjr3Y"
Message-ID: <daf30f80-981f-8f96-97e4-a5b353469d57@windriver.com>
Date: Thu, 25 Nov 2021 11:18:24 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
From: Trevor Gamblin <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 11/25/2021
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        trevor.gamblin@windriver.com,
        "MacLeod, Randy"
 <Randy.MacLeod@windriver.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Michael Opdenacker <michael.opdenacker@bootlin.com>,
        alexandre.belloni@bootlin.com,
        "timothy.t.orling@intel.com" <timothy.t.orling@intel.com>,
        Bruce Ashfield <bruce.ashfield@gmail.com>
Content-Language: en-US
X-ClientProxiedBy: YT3PR01CA0030.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:86::18) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
Received: from [IPV6:2607:fea8:c29d:d7c0::cf1c] (2607:fea8:c29d:d7c0::cf1c) by
 YT3PR01CA0030.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:86::18) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.20 via Frontend
 Transport; Thu, 25 Nov 2021 16:18:26 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7f9f2ebd-cae6-4692-9de6-08d9b02f36dd
X-MS-TrafficTypeDiagnostic: BY5PR11MB4152:
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-Microsoft-Antispam-PRVS: 
 <BY5PR11MB4152A125E9B22B88A2E144AD9F629@BY5PR11MB4152.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:773;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
 nIliaGLREXNcnNMuZAv6HgeFWHgr9W0EXK8TvM5EfFDSWxSqgyLYFIaimGFE3nny/+TyFrd4p7fPTDt0tr1rLrUnK6Mm+cQu+wJX47IV3qYO8Z8jUPBx6NidFZgpRAxTotFT54kRPcKsTzHlv0hb6DOerG0zIaP0zz9mDH7EPSBC2re9OrYYjfV586MVSEn3t179Y8gILErEYzC1X2DGKly+l1wKEZNcu1EdqEA/KvCGZntbriFXOARtmNoGkEbMbK+BKKe6JGPjALJ0T9B7lTi/1krZmUT9KPPCqMk/ZHuWMVVgTI4/7eM4s8T6mQOE3lkP6iAhvNM96jlh9x2ox6aLzaOKXyAkgajZSF4Ext7U2eDkE+yEoSMBIIP3X9Mq/zncfxdtyXwqME0gYvSbPOkW5A2oqtgX5rCBgWWIuURn4XQTBdJmWSkp5LGmPH82o07FlG5yWoAiodxKiru4cqJ7hbT5NJT/iTVss+pOiyGiJflhX5GFpiY81MypTedEtgHBecUsXvfAFaizH4v/QURyv6SyKfGnrITXFxSGFJjwNpTQeVyWc04L9af+1gfGzFDvaA6+wg07+KDPkyxT235oOdCiMDJnC3105U6G9gxOWk0jFpipopPASX5Yes6Pz3vpT3mjC+enM7lgmzYjaYzVM/9NxPQBoxmNWL4JrcmdjHxeRDR/AKfNDdBd/+ve2H1V5Ll5c7KmMMv6yryz4Q3RpR+7+rydfVRMavIfOcvdFScwK9BkxfkAc4Joz340Z6yKe4cE9x738HPOB4defCv062skS+/6ZpQFFQ7KjOAg0yZx6fdnZLpo8YkfYKEc
X-Forefront-Antispam-Report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(66946007)(166002)(44832011)(8676002)(31686004)(6486002)(38100700002)(2906002)(6916009)(4326008)(31696002)(66476007)(66556008)(8936002)(5660300002)(86362001)(186003)(33964004)(316002)(54906003)(36756003)(2616005)(966005)(508600001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
 =?utf-8?B?R2F4U1ovSU4yQTkyQ0VxYURIUTVMQ2QvNzZhWmVOY1R1S3E3ZWVsZElOK3ZW?=
 =?utf-8?B?SzJsZFlmY3ZIcnBETVJYKy8rb1ZDUUl3TUtTVTF5NFh6NmU3Y2p0QjBGOUNa?=
 =?utf-8?B?UitXY3hxVTNJV1BFZXhEb0xBeUVvcmIySTRrcXNwaTkybkZYVkY5UTNrdzdx?=
 =?utf-8?B?Tzl0TXVjZkhZZGlDZjZJSUdWZUhVdnpCV1VCQXE0T0RRa0FoSXlYSTNhcjFM?=
 =?utf-8?B?WmgyYUQ0ekxUUlV3M1RtbkdwVVBPbjl1VnNKNFd1SUFiMFpRbXpucTdCZEFa?=
 =?utf-8?B?Y0YwQ1NTeVBNdlNOaXZ0VVpCR2hJNFZVc1RFMWprQjFxNkpBTVEzQnFXMGdU?=
 =?utf-8?B?NkdRVkZjYXZSZzZHZ2NBRHdYMHEzRHFHQ1FlT2VPaWtMNHpmcFNvZ0ZGQzhm?=
 =?utf-8?B?THA3YXQvU0dTMklDd1BlTEk0T2tkMm5FeGo3eGFSUWY0Um1JQm5jSmZxMXd2?=
 =?utf-8?B?Zm5ZOU9MU2dqby9sUTUzcUt1bmFCYU0waUMvU0g5Qm54L2VLY3l2Ym9UYlBK?=
 =?utf-8?B?VUpZT2xpTFRUWEpiZWdQajh4MW9OdHBoVC9yWng3YkoxUkZlRGFHUDMyVk1W?=
 =?utf-8?B?TmQxZW5lMnBJMlhWZVFlUk1tM3dFS2cxRFJZZXIxWVVtTzhqa2Y1Rjd0dGNB?=
 =?utf-8?B?M3ExbkV0b1JSMHk4ZERmTXZVT2Z4bG1UYXpjZDhKQXFETUtHMmhGRmxFRm5h?=
 =?utf-8?B?b2I5Q3ZDd3lpcW5DdnVQWWZLTDdLTGl1b0tSSHE0ZXlPMFB0RWN2ZmhmZlJa?=
 =?utf-8?B?dG5nT2w4cVRiSjVkMEZNb0tvNW52eE9CN2tJMHRGcGtUcVFkai92ZEtkOVg2?=
 =?utf-8?B?NjJuUUxFT0NtSXZzeWwwWENHekFwTnI1RnJOMTNWTlB1SURFT3hpM05BTERx?=
 =?utf-8?B?R0RmSXhjK2RxM0JUaGg0RWZjWkhOb0NBT202QTBpZGx1SDk3UTYraDlqczRn?=
 =?utf-8?B?YkFoSEFyNDVmS0RuN2F1RnFaOHFIaWJsbXVncEFFalFVeDV6VWtqRE9TL0FK?=
 =?utf-8?B?Mk1hc3AwRXlCUCtsWkFjbUY0YzV2bTJlMGZZODR0VFdRL3VkOHBGQ3dKVStw?=
 =?utf-8?B?ck50bkZzRWhlcGdoWjFCd1h6YTVEVTBzZzZuY2tqZkZLR1paOU5FdjF2WkpU?=
 =?utf-8?B?VjNrSHlGK2FEL2FhdFFFWmhZeDZWczcrZ2s0MXJCNkRFa3VwRkMvd1k0Vmhm?=
 =?utf-8?B?WXJXMjh4eUdTdDBCOEZVRWF1OXN2ZU9RQ2liN2lIeHp1MXFwOU9OSnQ0YzF5?=
 =?utf-8?B?c0M2K2x5ZithWTRFWjF0L1VUdDVsMm9hOHJIRXZ6V1BnVGFvWndVSVQ5ekd0?=
 =?utf-8?B?Tm5OY1hpMVgvR245bndiTFlNaTBPQ2N3b0o4YTV0VlVZYXVlYmhKRUFrbVpa?=
 =?utf-8?B?blVGT0QzRlFQMnhFeGduaTQvdHBzTFhicU1Za052cGduMkozc3owODdVZ3By?=
 =?utf-8?B?Z3RqTEhZZkI5L0FjR3N4VWdPOS9iSytnMTltMFdhdVdkRkFHZTBDOFlFV2gx?=
 =?utf-8?B?dEtURUVvdUNYSWVhbEpuWk8zK1AzRzQ3eWd1Z3NVc3ZzRGlJQUk0Zi9mb2ZM?=
 =?utf-8?B?aXo4MDdKMUM3aDRUUnFlb0dId0VoTkNNK2tFeGdybWk0Ti95cTNuWEtKemNs?=
 =?utf-8?B?TjdMMDlmMC85TjdKRTZLdVNvL0txZ0JTdlhydDhTSkxJSysxdHNrRk44a3hy?=
 =?utf-8?B?bERmTW1sZDJRYzBNSEU1MWlTd1JzbFZVdmRkY3VxbHE2R3Z2NzVrdzM5d2VZ?=
 =?utf-8?B?algxZTByWkFtS20yVDBVWHVhaURqRkx1SmpFSlhzbmllWmRkcHRHZll4VDhC?=
 =?utf-8?B?Y0dsbVBuQVF1eG05aUNiblZuaTBPcDc0V1NaMEx5RG5ySlUxVFZlU2NMNGJw?=
 =?utf-8?B?a000S0djUExDcnd1ZlZYekZXTWxvdXU0cWNXajlGUGpHS3JrL3ltTzNLWGNW?=
 =?utf-8?B?cEJUOFh1UjVIck5IM1JhdlZWd1lCVjFHVklidGk3dWtJeFhPdHBORUk3dlhF?=
 =?utf-8?B?Qkw2K0JqdUtKL3pQbW1hZmU1R3ZBM28yTjFULzF3dWtUL053TW9ZSnB2SjBJ?=
 =?utf-8?B?Zm9HUnFCQUMvaHJybTVqbG9NS1RpcUl6QmNqYWdhNldyNUpoUGFkRWpXRkY3?=
 =?utf-8?B?THdrWDBVZUF1ejNhWkl1c3pxeS9PM0pkdFBPVWlwVXhnaEFRTEpMaGxzakRn?=
 =?utf-8?B?dDZYcUNoSTJOOWNZOFh0dU85QWtUb1dYb2dzczVpOEYvMVJYSTlzdC94NEhO?=
 =?utf-8?B?b0dkRUdpQmpxeE5JelA1Q1hYSHBrUnlVVzNZMXB1L0dwei9Yc3cwd29GaHYz?=
 =?utf-8?Q?AW0LVA/FXKpv8XOtoW?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 7f9f2ebd-cae6-4692-9de6-08d9b02f36dd
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2021 16:18:28.2779
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 5bTVdqqDKxwgy6CYFBHaaN4xe9/bRdWZDfPHp/iFjtUOQn4SP1uvk5wOCVP4EcGwAqC4UddWMULprVuugKhpw0s0R6VQVdWM+VJGOOL2OxY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4152
X-Proofpoint-GUID: qQchm4LDh54GuQNBiQQoe6ZVRu-aCj9r
X-Proofpoint-ORIG-GUID: qQchm4LDh54GuQNBiQQoe6ZVRu-aCj9r
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-11-25_06,2021-11-25_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0
 suspectscore=0 clxscore=1011 priorityscore=1501 mlxscore=0
 lowpriorityscore=0 spamscore=0 mlxlogscore=785 phishscore=0 malwarescore=0
 adultscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2111250089
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Nov 2021 16:18:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55422

--------------ogJqMZNI48rQPK49s9xrjr3Y
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Alexandre, Bruce, Michael, Stephen, Randy, Richard, Tim, 
Trevor

*ARs:*

N/A

*Notes:*

No meeting next week - YP Summit

*Medium+ 3.5 Unassigned Enhancements/Bugs: *73 (No change)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *38**(Last week 39)

*AB Bugs: *61 (No change)
--------------ogJqMZNI48rQPK49s9xrjr3Y
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Alexandre, Bruce, Michael, Stephen, Randy,
        Richard, Tim, Trevor <br>
      </p>
      <p><b>ARs:</b></p>
      <p>N/A<br>
      </p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <p>No meeting next week - YP Summit<br>
    </p>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs: </b>73 (No
        change)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>38<b> </b>(Last
      week 39)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>61 (No
      change)<br>
    </div>
  </body>
</html>
--------------ogJqMZNI48rQPK49s9xrjr3Y--

