Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3CD28C433FE
	for <webhook@archiver.kernel.org>; Thu, 24 Mar 2022 16:00:11 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.12780.1648137607827911720
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Mar 2022 09:00:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=nVufQYfz;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=008297714c=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 22OEdw4E030558;
	Thu, 24 Mar 2022 08:59:53 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=d3TeIQMu4LpwkU22adtD6+vxEobZDku3e+5nJ32zXyY=;
 b=nVufQYfzSQqlY4HJgSY/d8OUwCBvUNryblakK4n97jkeOiKofD2dHtT9v5OESucDnGxP
 d3W7CThknCRfpZaTcg1hy7AY6vB0y1uPHISFOu1u31/+A4j13VJ3nA0QtvkeORP3SQIi
 3ItDUdeeezsL7BUf4Y8RmwlPEa8PFX95UdK73NNsIvlMD5Wb8f6z/tW6EM9OQVVgQIbu
 2XD+EOPwJWPlOHve+zpENc2iFCTmDZdCX4NUpEH9hIvee3r9cmrvgWNAAxrlY3dNjqMu
 haf9T6KFvZEgo90TYO2IVRZuIE5Xm+g7TfSnYzn21wo2CEgtJ/jVl0BYouXXy8HSMP0o fw==
Received: from nam02-dm3-obe.outbound.protection.outlook.com
 (mail-dm3nam07lp2042.outbound.protection.outlook.com [104.47.56.42])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3ewepj4ema-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 24 Mar 2022 08:59:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZuWXq8Kd2Itw683v19mbvQ9+BXOrgjPpjNtY11Sv7oZLOSY1QS4LeJyyHiGjKb+cuEb11jwzD0nGXu7O6EPkHc5XmNH/zQljbMv9eSMYllaq7CY7xupTFYxKcjXbCbTx5lf5aL6xSM8XLkSUYroijbDzQPq905TYNQcKCBH7rHywh055CEiFdplff5plH/F3YcijB6i0uWt4fT8XTFcVi/Bbmht1SfigQ853ZBOiSuqqIlMNpibC8y6B0zrKycBhv7SR2xKzyyg/D6Fc7gDEG3YO8eDf0nF4vxximtTTb9VdO2proRvImv8zXCQIRXfAepVlz8Gc4NV7lUIqKUWjFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d3TeIQMu4LpwkU22adtD6+vxEobZDku3e+5nJ32zXyY=;
 b=FEXXqhnpu4U1iR3paKJoAblqdDCOfkRYADKl6qaaj2sv0CQrl39J2oGSpuZNBDNvykrieGo2ZRS/KIbBI58JkypUs87lza08OIPyoY3nCkqhPWr0Qijl0SyYOxgofaNSjjag2R4MeHRI4E6FPWwI25gFyjD1wuYhUtSxTFJSAntU5WzLx8stmEIRN8VUAZf4vK5Sf79YKo4YsA6zyEBgJBFg3TyEwtAEP59p0PvqN8KwlK64SvGRhVEY6j+kV8oe7WS5Md6KwJDzBoSzQvoGAFlpbzWZdIqFqQs0jhk00JYrES5NwtAyO2KK74AYk09PjoQXMWQmcph/SLJZe8diiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BN6PR1101MB2338.namprd11.prod.outlook.com (2603:10b6:404:9c::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.17; Thu, 24 Mar
 2022 15:59:49 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::c1c7:209:c28f:67dc]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::c1c7:209:c28f:67dc%3]) with mapi id 15.20.5081.023; Thu, 24 Mar 2022
 15:59:49 +0000
Content-Type: multipart/alternative;
 boundary="------------U0xRnZ0LGkSnY0YzuDWOEIWp"
Message-ID: <e4395540-a7c8-7fcf-7733-37b4d315a9da@windriver.com>
Date: Thu, 24 Mar 2022 11:59:44 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
From: Trevor Gamblin <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 3/24/2022
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        alexandre.belloni@bootlin.com,
        Bruce Ashfield <bruce.ashfield@gmail.com>, jon.mason@arm.com,
        Steve Sakoman <steve@sakoman.com>, luca.ceresoli@bootlin.com,
        trevor.gamblin@windriver.com,
        "MacLeod, Randy" <Randy.MacLeod@windriver.com>,
        "Wold, Saul" <saul.wold@windriver.com>, tim.orling@konsulko.com,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>
Content-Language: en-US
X-ClientProxiedBy: YQBPR0101CA0206.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:67::25) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ac165cad-45fd-43a2-b6b6-08da0daf534f
X-MS-TrafficTypeDiagnostic: BN6PR1101MB2338:EE_
X-Microsoft-Antispam-PRVS: 
	<BN6PR1101MB2338DD07F1E1427BBB0C45059F199@BN6PR1101MB2338.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	K07aaWRDb9J4WsZV0OWev0nHxEX+3kf9M2tnYOdPcQ1p3IT4ny9ifJV8nTAhpJ1adhbhKGAy6srVx6ay1fnwRKI84pQw+6miqodRClz4DF8aBwQCzTh8I6fufl7Wjfiyef5LR+wQ75iIow1tNSB1QVinEsVawI4TVVSIQx6N/pF1qhMvqPAS+F/mo7wGvpvSxBmlKm1vaeiDiXnct3HLwifWvVWzg930/g8epcOuo8LrOD3H0Iy5d9FqIsUk9m/z2+fBftc4ux1GA2eO2JicDn7/S8wTAceQDsRyG8URzLwtjBG7cK1HHD4XgQ+TY4LgCdflqK6LI9/30R85dEmU2sXB7m6SJAL3lej2F8FPdm45VslujjJ0eWL/UERNolcHiXjrLZTM+i1sLR3f3LWLEnz+V451FAezLMG3P87aQ1gAv57G9YblzkXTAuM9Z+SPC+tODW8LyNR3iplSqP6LCGmPHUkLvJqzVtiFbdeIarHisTjg4oD0AlYUgdX50n0B34fXYipGlmS1Ku07NjAC4tkXh/ZPus/8x+vXkDpZcj3yapEJW44Z/99OkpAvWv14ojF8x2qhtvxq0aDKlQpXC4dU06GvoQ0nRYXNs+RsU/26qNnZ1j+xQ0v3h2U7DQyBXuyoy6XlVfIsMwJQZT4Y3ittfWHY1WhMkf2YI19VZ5QODfw2Jk/iI/FfhyijSE+P8cUFifmKeTUZ46TUb+eJe2qD5OwwYoou+30Hn879bQo/DvT5BrdT5LOOAnWTStIeJghjLpWWRuu4pc4B4le0KbRsUk3OLn/ZExkv3GeO6ihOKXSGd0M2V0y1xQN5R81D
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(6666004)(38100700002)(31686004)(8676002)(66476007)(54906003)(6916009)(66946007)(66556008)(316002)(6486002)(966005)(508600001)(4326008)(31696002)(86362001)(6506007)(6512007)(83380400001)(2906002)(36756003)(166002)(8936002)(5660300002)(186003)(2616005)(7416002)(44832011)(33964004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?R0VOWXVuaUFrUkk2NEQ0bUxXMXVVVlRyWmVlWld1UURKQlo5QUxpWXdvSURX?=
 =?utf-8?B?V3d1TDZTMDR4eTBQeVVublZqRHFwUDlXUzdsbEV0YlhSZm5mZmhaTlRMS0Q1?=
 =?utf-8?B?WVJqVG1tWGZhOGRIVFhaem93bTFPVFNjMW9LN3RZQlJkSWZ4VXJkcC9udUtu?=
 =?utf-8?B?TWtCaE90b0g2Smp6dDY0SlZyeTUyOTBKblNHNld4VzZSQU5Fb3dGNm14WmVS?=
 =?utf-8?B?NHd4WE56bnBTY01jMHhCZmhjUCtvUVBadmluRnNZTi9kS3pyVzJkcGpLRkgx?=
 =?utf-8?B?VWtoRm1iNGRQTGF6SC9FZlM0aDE2cmxja2NCSmNGU3FVYXpZNnlkb1hMTVVq?=
 =?utf-8?B?MCtpTFZFZ1d0TThJcTdWemI5cURnWFlqVy9EZXhicUFvVXBhS0dIbXlYQmhr?=
 =?utf-8?B?NVZEaW9hbGZtM3lsTG41N1ZqUlpMNnBydmdQdmM5VG1NMmFJdzc5K3UyVk5s?=
 =?utf-8?B?VzZsS3AvNVVSSEZNeUt3UHNRaEZ2L3VmdmtMQ1JWNlRQc0ZXMzFGV3haZ1JL?=
 =?utf-8?B?ZzYwVVBMVHJ2T0grZzdMc1ZXTkx0Sk1qL1NxaWZGenYwN2lvVjMwdDhBdDg3?=
 =?utf-8?B?NUdnZ0FUNVVUb3RLU2Z0aVF3Sk80cmN4YVMybG00U2M5cDhNRXNmeWNqTDYx?=
 =?utf-8?B?b0czMWJwK1BDajc5dGJhYTlKNUtFci9kV1pUWVdDczdwekphcXhYUUtqZXBP?=
 =?utf-8?B?WWZlM1gwL0hjcDdtSkd4bzdKZW9VUzF2c0duakFhUzFieDBCWmwrbW5MRUwv?=
 =?utf-8?B?T0Noenp4dFgrWkF3Y1pKQlZTenBteVFBZlpjQ2RIT1piK01NR2NqbEJvMnNv?=
 =?utf-8?B?UDdSbEVERHZzMGltZXp2NURVZ0NhekFuSEZoWXpqSFV4ak9oNUoxMThoOFpB?=
 =?utf-8?B?MHM1VXZRQWN3Uyt3MC9iNnNZNHI5R0Q1Y1VDOWR6YVYwRG8vaE9sU0paVEUv?=
 =?utf-8?B?YnBNNVlUUVpoalBzeFp5dmhOQVNYWk5FcEtRTEZBRDJWc1dQR083YW1GNG5D?=
 =?utf-8?B?Q1Jyc2NkOTFSOVFib0xwcHRKWU83UHl6T1hyK2lCV1JzZ0RLSERLQnBhbTVo?=
 =?utf-8?B?cU9XR2NSd29Yc2hGbW53bkcvQjloM2dDQU53TWdwRStQMkUrMDFSQTJ2YnBt?=
 =?utf-8?B?N1h4WGNIWndydmNoNjRrNzdubUlRWThDQWdBQUZSNUNza0syM3RvWnFacFo0?=
 =?utf-8?B?SlVBQUg2TWZKQWo2T2lyR2JTVmQra2ZTOXo1eFJkRkVLNmVOelBKdjVtQ2lk?=
 =?utf-8?B?a2FtSXAzSUlxc2VKb3FmRlJCRGlyeG9tR2xRaE1SODcvYmtrTmdReEUxSEhu?=
 =?utf-8?B?UHdwUCtsQkt4VjRxQlhOMkRGVjdTdmZsZXBNeTl4TVFNamNWZUFUMjFwem1Z?=
 =?utf-8?B?amNqUVlpbGMwR3dmcTM4MmJNeldBQndmNy80WXBndUFzWXN0b2c2aHNIUEdk?=
 =?utf-8?B?UDRucndpanlvaHdpSm5tVzZScjFxK3hickVJLytTQlN0Qkx2dE0xSUtrbnZo?=
 =?utf-8?B?RHhyeWpUT2dJN3VuWElwZGNaS3phb25naU91L2xLdVBOaDZ6Z3RKcXk1VDFO?=
 =?utf-8?B?SDNCckZyVWxkK1lJRmJpcUVBeld2ckk4L2VtWFdObUcxeDZLMmdkaXI3VHhQ?=
 =?utf-8?B?d3dYNGZPLzBZajY0Y2lVT3piWGVEWHVwUXJEaEY5eWw3azRlUEpGd3ZIT29m?=
 =?utf-8?B?UkdXRUJ2VS9sUlFPdEFZS3FOZjNNNi9QS08zV216N3Jsd0lGK3praFN0aXVQ?=
 =?utf-8?B?NldEYXFmZ2U3bkNUcnBVbGtkNTJnZlZHaXE1RjlmSHFRZUcwUlBLRXVGREpH?=
 =?utf-8?B?LytaRDlCS2lxZTBWcEJSaVlveUh0MlB2aHpndlpBZVZtVHRWclk2MzkyYVZQ?=
 =?utf-8?B?d044WGNQNTMzT1BnRUFIR09LTUhHS0tURm9VTE1WWVE0cloya3hDeWJ1aVlL?=
 =?utf-8?B?dWg1Skl0ZUdpOGQ4UElIa1Q0UE9wUkloQ1owaFV3OEU0UWR5Y2hhbDRNR1Jw?=
 =?utf-8?B?c0VZd291d1doSnE5dGRXUE5vVzZNbHNncFhadEs5dGNDSjNWaG5oT256RDdW?=
 =?utf-8?Q?nKZk8E?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 ac165cad-45fd-43a2-b6b6-08da0daf534f
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2022 15:59:49.5923
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 LD4QALjf/uHiZc1NevE6kpwdwfXVS+Ms7ul45NEPuiIjUUQzAeIL39rWy6CS1Fx//pIbhIYF8QgfNXQBpB/ftETpOiHedn6b98aHE2nSyBA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2338
X-Proofpoint-GUID: D827fXYRysK_FHizVx2cLR1ux9-SGan8
X-Proofpoint-ORIG-GUID: D827fXYRysK_FHizVx2cLR1ux9-SGan8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.850,Hydra:6.0.425,FMLib:17.11.64.514
 definitions=2022-03-24_04,2022-03-24_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 bulkscore=0
 priorityscore=1501 impostorscore=0 spamscore=0 adultscore=0 mlxscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0
 mlxlogscore=810 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2203240089
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Mar 2022 16:00:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56551

--------------U0xRnZ0LGkSnY0YzuDWOEIWp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Alexandre, Bruce, Jon, Joshua, Luca, Randy, Richard, Saul, 
Stephen, Steve, Tim, Trevor

*ARs:*

- Randy to ask Sakib to update his Old Milestone bugs
**


*Notes:*

- ~43% of AB workers have been switched to SSDs. Failure rate appears 
lower, but still TBD. More coming soon!

*Medium+ 3.5 Unassigned Enhancements/Bugs: * 18 (Last week 68)

*Medium+ 3.6 Unassigned Enhancements/Bugs: *60 (Last week 10)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *38**(Last week 38)

*AB Bugs: *65 (Last week 72)
--------------U0xRnZ0LGkSnY0YzuDWOEIWp
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Alexandre, Bruce, Jon, Joshua, Luca, Randy,
        Richard, Saul, Stephen, Steve, Tim, Trevor<br>
      </p>
      <p><b>ARs:</b></p>
      <p>- Randy to ask Sakib to update his Old Milestone bugs<br>
        <b></b></p>
      <br>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <p>- ~43% of AB workers have been switched to SSDs. Failure rate
      appears lower, but still TBD. More coming soon!<br>
    </p>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs:&nbsp;</b> 18 (Last week
        68)</p>
      <p><b>Medium+ 3.6 Unassigned Enhancements/Bugs: </b>60 (Last week
        10)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>38<b> </b>(Last
      week 38)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>65
      (Last week 72)<br>
    </div>
  </body>
</html>

--------------U0xRnZ0LGkSnY0YzuDWOEIWp--

