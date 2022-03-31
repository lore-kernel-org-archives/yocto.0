Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7B1FC433F5
	for <webhook@archiver.kernel.org>; Thu, 31 Mar 2022 15:26:09 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web09.8528.1648740368688359770
 for <yocto@lists.yoctoproject.org>;
 Thu, 31 Mar 2022 08:26:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=E9wdzrNw;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=108955d5a6=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 22VCpB7M003775;
	Thu, 31 Mar 2022 08:26:00 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=VRAYalsO/C0+lB75WHI9sO4tOqdF1CqaCj/qR8+Wwlw=;
 b=E9wdzrNwJNzQmHIIXb9v+Mlq9ULTMU0KjJTmv90OFNlqgfrIEuvzWunR3b1YRHCNF0Z8
 8UguS8rV9TOFxVveVUzFfbU+YGces6QHnk4SFZgnWF6qrTEBjFxzUjUiV7/GAFRqQkZb
 wvu4CG8zX5RTEfb6kef7IgZDVRHO3GT2cJIspp5h+O+2viSuWiDIjnTdP9ntMlwxV6IK
 k+YolMW3H4K1fxWKRrGZCMW93/y1jIMEjemzZMzJKwC5DX/Dh/1KjwgA6koH1FGIBSE3
 id3yR61sfxri8AtpIkX2hCN30UTw/RYCKu7Hkr6tmYV7EMsoO1WyY88QXQ5jCtyHNrzi yg==
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2102.outbound.protection.outlook.com [104.47.55.102])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3f1x42mcg1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 31 Mar 2022 08:25:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XhHTNqFS/S62VfFPNgNKTb/mFzZWAsGydZWRnY7sVux8Z8CLG0zDz0TPldOplMQmnECjA43HtcJh7g8lPC1Xub2sd0MT94GyyrdiGcbd9Gp3/bDeskc+9IGTV5N4uQ4P4k3x/Xp8OulVcd+AIMQ9KTFqUWOrfaj0PGrXvJ8ke3l/KkgHtDUwEwZcPgL2K6DMMsR1oz2gqmAhHVSALuakJd05kVLtrjYZtdN/FRtE89rMIdZJNGvmVnoCcTh15IJjRrD9OLRHIoTNX281A9/WoL68gYBx8hjQ21TiEsDkl3VFx8Ea3BfrXqv+t5yZhEzqtF3a7FxIe/uxmJ0ZGzK1MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VRAYalsO/C0+lB75WHI9sO4tOqdF1CqaCj/qR8+Wwlw=;
 b=eE7yWRt3Aq/jkwQ7FNz+jyVc1YdVzGj38vqGFi0tj0HmPBBL+kUme9GoDk3XG33wPSpxM3t7owllfVxIMvl21AWZPJhsii39Lbt0DQGuADxw4b9a1bqOS/ealKB7H5pW6w660UJM+fzVDpttWdyKylbA9IELnHN8LPf6v0R2OpGmwE99r+CKr1fnwrfppdOoO+SJPq6++5mFwgsO4Rd3CmQztWuKnQjvFlyLtG7SNKdCMtNCsBFnm8Nk1wYH903mNqHFbCFRnChr5cZUjw1b6idFuBbkakapq+Z+aaFL4fSwVJ43VK+hAaE/EEBWcG01KNxHWTi5enc70VhklzytiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by DM5PR1101MB2236.namprd11.prod.outlook.com (2603:10b6:4:58::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.16; Thu, 31 Mar
 2022 15:25:57 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::c1c7:209:c28f:67dc]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::c1c7:209:c28f:67dc%3]) with mapi id 15.20.5123.021; Thu, 31 Mar 2022
 15:25:57 +0000
Content-Type: multipart/alternative;
 boundary="------------GG4GQPr1y0zqiNCqbNYABfOw"
Message-ID: <83db791f-bcaa-21df-5382-111fdfebd792@windriver.com>
Date: Thu, 31 Mar 2022 11:25:52 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
From: Trevor Gamblin <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 3/31/2022
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        Bruce Ashfield <bruce.ashfield@gmail.com>,
        alexandre.belloni@bootlin.com,
        Michael Opdenacker <michael.opdenacker@bootlin.com>,
        luca.ceresoli@bootlin.com, Steve Sakoman <steve@sakoman.com>,
        "MacLeod, Randy" <Randy.MacLeod@windriver.com>,
        "Wold, Saul" <saul.wold@windriver.com>, tim.orling@konsulko.com,
        trevor.gamblin@windriver.com
Content-Language: en-US
X-ClientProxiedBy: YQXPR0101CA0013.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c00:15::26) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f4c9edfb-6ec8-4ab0-e8a2-08da132ac0bb
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2236:EE_
X-Microsoft-Antispam-PRVS: 
	<DM5PR1101MB2236CDF0CFBBEE15EC07D9EC9FE19@DM5PR1101MB2236.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	2UlT7IJ/ALBO8OV+JfIk7rLsESN+adyKSxhyM7aobIJDvYtQ/1GgePnQ8TRJNCzASMSxqSxld8TR3GTLAJjLrYnoD2vXH62ufa14n3dJIn2hLRzwYXuaX8kxjW+sq+whK0NCRd4dOCvoe5mit2Jc7CSlJP7u6WSW07i3N9LgQJHM1lePRGPK2V03cUaIHuhiQ32zkH032r4F/tte0XMnoaqlP6zB4A63HyV0LTYPeKzP/nTRLZUisAh3MB0pAuKS9K8d7fIzxjXFqbwh4Rj6fMqzdG6iUfczcNbcWFDGxz3pf5tPWS7L3vtIwlfTIdA6lP3wPpfiDVTwDSb0BD+k/aHKzLimYkCivGj84e1eQICxDjw6NOuu9T47r1K8WhPinPhJjjfeeqFQC0LR1PGFojEgEAics3unAP2Xx0QdOrbj3SuMFInGrG08CUbUnpxM4a4Nd2Z9WSwjbsM4uOcyuimSCxEKD7XVN5MgZdb60sxaGF+AHkdEjKQVabxFLmJWS2bt5cI8cc/yXIZLqRB04dHIJzNtdiF7tQGEYq9mY6ofjVkfSYF5KOh1FoDWTpoWiXHW/s9O86Nm8O/vklvPIv6L7y7mJF80cw3PL0dp24dFyBwQ79ZHNIjMZZt03SbGmBfNGpm6M3wBJHQ9SKuUs0OWxWti+XvHTiwdEqWoPA9SkaaRc/S+7PWFjXXS/F2L6RwcdD4qK3WI/a17/0u1jiB993vpElcoohghltkUcZ8xGGCpVsNKuhg8+zZlGFhZwUCmI5mX31r7tL1skkrPNIzKLNA3a87a9vAOzHN35Iv6dvOJykN9jQHzkQ06V/1m
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(4326008)(66556008)(66946007)(66476007)(36756003)(8936002)(166002)(5660300002)(83380400001)(8676002)(38100700002)(44832011)(2906002)(31696002)(966005)(186003)(316002)(6916009)(54906003)(508600001)(6486002)(31686004)(86362001)(6512007)(6506007)(6666004)(107886003)(2616005)(33964004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?L05rRFUrQy9lbEdSakZ6T0pPbTFlamlibG1XN1lQSVNucFAyWUl2VjVwNGgy?=
 =?utf-8?B?N3dDU01URS83QXJxUzJGOGZyWTBpVVFIazk5cmdKYjlJWE1YaCtVU1VPNDJP?=
 =?utf-8?B?Ti8rUUJBendNR3RjSDB3NHFGVExhUkJzYWtoU1Nnc2lSWG9zZkFub1dlNFJU?=
 =?utf-8?B?THpwc0dySXJGNzNEUVBqMkN2eDhib09KbHdldkVpRkI1Snd4Z002RUdpTlVt?=
 =?utf-8?B?Qld1Z3FiWWpSMW9nUFVENC9xcUxmUDl5enJmZkRlNDhlS2xnUFFuL1l4R3Fa?=
 =?utf-8?B?Qnl2aXQ0NEpTOHhpRjh4S3pncktqeFVuVnVRdlZZbGdlakdoUnh4NXBySmYz?=
 =?utf-8?B?ZkpzYUQrekFYWEJHYWRTbXBrRlBvSnZDV1NlQUdEbTdGRURpMFpJT0NMQ283?=
 =?utf-8?B?bUloaXBwRmIvNTVSWllDTU1zT0NUbW04NWp0UGpUTzl2TEkvZXBrMXd5U1I3?=
 =?utf-8?B?MnNWQ20wMGtoZzU2R2xzYkdnbUh3UXZISUNiL0tMdUZvTUZHNFY2RFJNb0sr?=
 =?utf-8?B?Umg1enM3YUIzLzIxQWNUWVRxM0JIUm5sSTV3bzM2QUJQQWJudWxxL2lOdHhz?=
 =?utf-8?B?OFptK25PMmszbkZxdSs0YzA5dElza0V5b1dZb1pUeGxwRFViQUtTVVhMSCs1?=
 =?utf-8?B?OFYyWU5CajZoK2g0Ry9XSW1RK1VFcFdMdUY5Y3lkNUVmMkZGN2s0K2cxRkxk?=
 =?utf-8?B?SVVoWW45VmR0ek5hTzFaU1dBZXd2VFkvellSMVdTQk83cGMrdTZpc01DY0xa?=
 =?utf-8?B?YXlBcUo4MDFpVWdtRUk4L2VhdTNWbW83TlQ1LzNKK0hNVnczUWNIa3lWbHFS?=
 =?utf-8?B?Rnh5VXhQTGI4UklsK0JhQVBPalc0RWo2QmFXbkZGeEtkN2ppVXgycFVwQlIw?=
 =?utf-8?B?N2NjQmQ5dERmMmhmdjlXNjVPMCs3SmllN3dqQWtZSDQra213SW54TE5mT1ZF?=
 =?utf-8?B?dnhOci9BbE03ZUluaUFxU1NwUVYwSUV2QjhQa2VmWlY0YW5aNUxQdnBwc1NS?=
 =?utf-8?B?MHRhdFh4M0x2QmI3dDlIbjhPZmZZc2ViR01WWk9ITUpLUTFqUUs1dGxKa2pk?=
 =?utf-8?B?SVVZaWQ5MGNUZXVKSWN6TUxHNHpnb1JucEhMVzBWZmVpcWZjOERKSE84enF4?=
 =?utf-8?B?M21ZdDNBQWR6cklvYWpjK2o3NGJTSlRWcWlOMWxyekVjdVVLVnU4YXFLTm5h?=
 =?utf-8?B?WW5MKzRDVDlEb01LZHVlS0F2KzBnV01PellBU2p5ZEV0Smg5K3MvS3dlOVlN?=
 =?utf-8?B?M29CcnpBMjVwSUF3YURiRkxjaXBCcGpKRXhGOVVIV1lWcjV3cjhrMk1Vdndi?=
 =?utf-8?B?SlJQdnBsaVhEQ3diWXREaDB5b2h1TVpReGxrTG50SDRRb3RaaUxOQzZPRU1y?=
 =?utf-8?B?M2IwRzNtWjRQdHpXUU1nL0s1N2FubW9McnE4L0h0Yk1MdnJ4bHJ1WWMzaFlu?=
 =?utf-8?B?ZThiUC83N0JQdzdnczhCcEdWTU4xRkZsNmNsYi9BWkEwV3NiMklnNjRHT01D?=
 =?utf-8?B?NjJnRHU3eFJ6cUJNQks0akMxRGxTM2VoUE4yRmV6MVA1b1BrVGJGSDhITWYx?=
 =?utf-8?B?dHZveTdFNnl4U3BqZ204NFRCbUxpQXloanVSOTRxWmZwd0xaOEt4YTJXaWlh?=
 =?utf-8?B?Z210bXVucjhheUYyaFQ3M29jaXYvY2NzT1p5VnVPNVVTTnJTTUJjMUNpaXI5?=
 =?utf-8?B?NXQvMGRiZjRXWW1yVGVPSS9TbnBad2MyTGJEMDVvTkdtV3Fta2dKd0NjNFdw?=
 =?utf-8?B?ZjY1SDlhYkl3RnVJampyV0FmSFREOGJiNlh5dCtuVjcyNmVNR0VlQnQvSWQw?=
 =?utf-8?B?VW5YVmVFb1VaMUlyQ3pQQ2czR3lZd1ZYU1dFUGQ0VENTaC9YTGxzVWppTUVP?=
 =?utf-8?B?dkdsZXBmZkxuYXpjZjdzQVBjVXFwMGdtTnYvNEYwYitSTWR3N2sxci9hMkNL?=
 =?utf-8?B?bGxpeUZ5NGFxVlVISmVseEZFL2M5WDlaaDc3V1dWT1gvNXRxaHlZa3VPRlp4?=
 =?utf-8?B?MlJ0cldFbGJyOXNWRHB4UnBTZ0VZR1RFN2g5di94MTBYbU01bndDdlBCdjRB?=
 =?utf-8?B?V0Fqd1FQYTBLNEtzK2gyVmpyak8wRU04UGlwd1JpQ29LdU12YllDd2FXU21C?=
 =?utf-8?B?SVdBblhSUXBaUHg3RngyZ2hvVnk3bzhRUjd6MjJRODY2VGR3THRQSytSeE9q?=
 =?utf-8?B?bXNMUnpIOTUvQmNoUkhvaU01bjB3cE52VG9Dc1FYN1VIb1QyVVR1T1V2MVEx?=
 =?utf-8?B?TjQ4RTB6Q2FvbDNKM1ZSR0NNaWVHVTVqRnFXdEkxVnoxOFYxNEVNVzl2RW9Z?=
 =?utf-8?B?Nkxwd3FuMEs1eDV4UnpBbDVtNHNOSFpBVjNJRm8yOVBRM1Ztc3dZbGV3K05H?=
 =?utf-8?Q?jiDSXuny+5M9KkM6PFA9tm/9GaPs5WyVn+pdSa9m8/WIn?=
X-MS-Exchange-AntiSpam-MessageData-1: DoE6w+hK1XblxA==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 f4c9edfb-6ec8-4ab0-e8a2-08da132ac0bb
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2022 15:25:57.1940
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 cEdDbiTq7Y7E/B9ueB0yiHHx7PPJElqgR3Zjc7V8rekk+UwR4Qjx2A/XQ3uqfdCgvGJhCHZXwf7tT5UHl5YiweXUc8PWjssfVfQxSGlgnTI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2236
X-Proofpoint-GUID: _LTSe_uQ9-Sw_7AwLnUl8BlHsQDHbiwo
X-Proofpoint-ORIG-GUID: _LTSe_uQ9-Sw_7AwLnUl8BlHsQDHbiwo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.850,Hydra:6.0.425,FMLib:17.11.64.514
 definitions=2022-03-31_05,2022-03-31_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0
 priorityscore=1501 malwarescore=0 spamscore=0 clxscore=1011 suspectscore=0
 mlxlogscore=860 impostorscore=0 mlxscore=0 bulkscore=0 lowpriorityscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2202240000
 definitions=main-2203310086
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 31 Mar 2022 15:26:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56611

--------------GG4GQPr1y0zqiNCqbNYABfOw
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Alexandre, Bruce, Luca, Michael, Randy, Richard, Saul, 
Stephen, Steve, Tim, Trevor

*ARs:*

- Richard to triage bug 14770*
*

*Notes:*

- Trevor is leaving WR/YP, so a new note-taker will be required for this 
meeting

- ~43% of AB workers have been switched to SSDs. Failure rate appears 
lower, but still TBD. More coming soon!

*Medium+ 3.5 Unassigned Enhancements/Bugs: * 16 (Last week 18)

*Medium+ 3.6 Unassigned Enhancements/Bugs: *60 (Last week 60)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *38**(Last week 38)

*AB Bugs: *61 (Last week 65)
--------------GG4GQPr1y0zqiNCqbNYABfOw
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Alexandre, Bruce, Luca, Michael, Randy,
        Richard, Saul, Stephen, Steve, Tim, Trevor<br>
      </p>
      <p><b>ARs:</b></p>
      <p>- Richard to triage bug 14770<b><br>
        </b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <div class="moz-text-html" lang="x-unicode"><br>
      - Trevor is leaving WR/YP, so a new note-taker will be required
      for this meeting</div>
    <p>- ~43% of AB workers have been switched to SSDs. Failure rate
      appears lower, but still TBD. More coming soon!</p>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs:&nbsp;</b> 16 (Last week
        18)</p>
      <p><b>Medium+ 3.6 Unassigned Enhancements/Bugs: </b>60 (Last week
        60)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>38<b> </b>(Last
      week 38)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>61
      (Last week 65)<br>
    </div>
  </body>
</html>

--------------GG4GQPr1y0zqiNCqbNYABfOw--

