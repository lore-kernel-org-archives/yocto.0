Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7BF4C433F5
	for <webhook@archiver.kernel.org>; Thu, 16 Dec 2021 16:23:19 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web12.12595.1639671798668643486
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Dec 2021 08:23:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Np0LF4Ng;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=79840fd348=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 1BGDDrlK017717;
	Thu, 16 Dec 2021 08:23:11 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=qpO+YAuQijLWTmxvXABiXQHsNX2P73zhwwqdMgNlKCg=;
 b=Np0LF4Ng/wACBy/OY20ey1LsIjNiEIqOesOV+4AaeUK6MEwFU1MwweJo8NLVyMVBpwR6
 6UkNII5G8DLOx0k6QEKB3W97u8mKrwYMm+oGUt8jbnqMo85ZjJqUoQJnXEo13MgFsYKD
 Bjl30wWM71yXgn27AcEqyeXJ51aMI4T3SuDm2E2SkavbCkFIijEDvn2/X4qZcGpkb9Jd
 srOIgq276lZ7+xQdtOQ16NvcKsFXnPSzRCULJcYQ560A4STCX0AuJvHK75+IVnAQmgJt
 gWgTQnrgWsbe/unc7KhWkTo+BqcdfyoF3wDqjN1sZzxsIfQixthUn/WGjgw81UXDjEuk cw==
Received: from nam04-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam08lp2046.outbound.protection.outlook.com [104.47.74.46])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3cyyup0d0k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 Dec 2021 08:23:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nq48yL1BGFF53t9YLzOYTyDDu2glng5BVcxGAGaJZMNqeBxfqZR2KmYxDta5J5RNnr2h/HbcuvFz08wqp8k/yLTT1shWAJTVLbCrz0rI4SUw9tunXkUgXCfzh5WbFRDjg+D0208De09clbdVjrBzOV7lcwz5T4OHve5iulb4hSFGyQml4st6xmbtn9UUVmMc8XPryhB7UuwTSucEqZ0KmTNmjgo1ykzsNCR8oWDjoBU9xYefIy2NOpu5BZbOtECDRewGT2rXMOOTaRRQGHfI0uVsjW7749qjcTrVR1VIigTwJ2fsJ34U5mxQbqWYpf8mf4fbSsZK76m/+CQxgGfABA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qpO+YAuQijLWTmxvXABiXQHsNX2P73zhwwqdMgNlKCg=;
 b=ho+gXQlB9tKSAQlFtpxfjHpRS0Oqvzjp1Okjl2tJyD45XPz0kuF6VtZUkuEkXCOrfbYrXCeEq5uflw9sxjZRJBH6093bXy65wnqpv6r25Y/fyePPAIyUApsh7OHGU32XBhzjPTJorVn9Ji3gPxr5hbWSHqh6IQmxVhH37jQn3RzUoxggxBpxLRqvGQAsGahxaan44EPSNSJoWfxIojqb7RmlvykSrk5s6kqcUcsLRf857pg49998/AXCUgWzUFrZhG9AWx/KVhZX3Jj1oF3rshsfhch+Su6VsBZMHBvOZWdNOEVxOlxrwqCPqVnh3T/BcjF0b3FjY+FHrOpKzURG7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BYAPR11MB3623.namprd11.prod.outlook.com (2603:10b6:a03:b5::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.15; Thu, 16 Dec
 2021 16:23:08 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::381c:4755:45c6:141]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::381c:4755:45c6:141%7]) with mapi id 15.20.4801.015; Thu, 16 Dec 2021
 16:23:07 +0000
Content-Type: multipart/alternative;
 boundary="------------CVpALbdm0jFzphM7C0fpdv22"
Message-ID: <c25e45c3-b8ab-5ee6-07f8-e2df0d6d2e3e@windriver.com>
Date: Thu, 16 Dec 2021 11:23:03 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
From: Trevor Gamblin <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 12/16/2021
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        trevor.gamblin@windriver.com,
        "MacLeod, Randy"
 <Randy.MacLeod@windriver.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>,
        "Wold, Saul" <saul.wold@windriver.com>,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>, vchernou@cisco.com,
        reatmon@ti.com, "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        "akuster@mvista.com" <akuster@mvista.com>, jon.mason@arm.com
Content-Language: en-US
X-ClientProxiedBy: YT2PR01CA0030.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:38::35) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5fb6f833-ed57-411d-e21f-08d9c0b0581a
X-MS-TrafficTypeDiagnostic: BYAPR11MB3623:EE_
X-Microsoft-Antispam-PRVS: 
	<BYAPR11MB36235D57BA2D212F6FCF7E0E9F779@BYAPR11MB3623.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	UvXlPtsbxtIFuB/oHL8SwgxtXnd1SaX8rgBZfchfNzXle+PphTDyIX9QfSqFS9Qmb9dMltqYKGcU7N4I4aUQ+SJ8QzKWfDizecuONH1oNxUAk3aoz3B41S/A8FrEZvm2cVYkyQhufF3IsfQ/Ipunv1UlQSrhfnGWYOhXStLaVR/8QehFTdAV0xGKNZN5zUf4dWK97IHgsu8t2tw2nrHuTeshEZb9KokTfz28BQ3eDnaSTQszsLiqLX9N0Sj1OCYw9rpt8FulGMGCzNKbHJ+RQ7xzUMFcc/9dG/xVxa+zi55V4YjjKWnHXRG3R4iZBcd4zCB17OXx+wPlrWhI2FyhGTkz0wvQxubccekQTcsAVCXRoLhBWpbDFVZSHz/YoanMGVNFzAp1W2RWZs1zhN45FRwQkC6HaO4wj+8YYWERAnRSqNOmJ/qakdSnWFMgOp5MCIBZkGsWCm3mO60A010XbIMkPHyx++iha2do2MBvv5hcEx79Vj3e73h9/DT9/iCqV66P++c0qn2heHuvhGBZoTxeOMljC/fb7aLeKhFBxaoFu28H5WpNXeI9/i3Pg5z/d/ihxmzTe31VaAB/Urj+uyEy+nUJS62cFNCIloUG8SznrNJKO62T85V6gxqpGO7KSi1SQ1w7mx2TkIYWIPetK54DjT7Q8W93IdH87u84jzper15ZBuPDR0lfyzDi7/Go4RqEXWz8FKuNSpb/AEPwgVBf4jN8D6CPmLuAuxbZGAcFRNxg2ubTmSkH3VanxH7lewXbZelJq1/ZGam7CUyXmBbJYGnADtp26xVF7RmjgEXoV53SUDL9h2K/CN9FaEAx
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(33964004)(8936002)(83380400001)(166002)(6486002)(186003)(54906003)(6512007)(66946007)(6916009)(966005)(6506007)(44832011)(38100700002)(2616005)(316002)(66476007)(36756003)(8676002)(31696002)(66556008)(5660300002)(86362001)(6666004)(4326008)(31686004)(508600001)(2906002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?eUxlaUQ0THRxcGcwQ0lMdDVCcEk3a1Fod3Jqd3diaFJ6OWxhODJJK2dHT0Nr?=
 =?utf-8?B?L2lYR1QrZXNPZXZFYUFoRFNqN29HcXBteVFiR1J5UnFybytCekVUcEJLNjI2?=
 =?utf-8?B?aVJta3VhQXZmbHFRcmo1V1BnWDA1eHJjWUNvd0EwZ1VVYkJsQ0EySFNpRVpo?=
 =?utf-8?B?N2FhSDMxclpwN21yRWxRNCtSUGQxRkh4Q1BacXdIdlV6SkRmVDV2V0Q1Z2Zq?=
 =?utf-8?B?Tm9hU2FZWE5TS2F3MXN5bHRzNHRZWGpacSt4QXkrOEk4SkNBNUNiRjgxckJL?=
 =?utf-8?B?K0Q4Sld1eDJobFVRWW9TSk5UZ2d0SDBXbHJRNEFWVWFYVmVtWDB2aGZTZitl?=
 =?utf-8?B?bTlCd1prLzJWaUVoUEJOTGVwWnY0bmNuci9DaUNiSjNXb1k0cnoxNE5OcHVU?=
 =?utf-8?B?WXlwZGgyLzVVTER5alFjSjMzSVMxeXNwUXFQRXNkUE1SOEJ0VTIvMWRxVjFK?=
 =?utf-8?B?QU5BUkYySzlGYnp1OGtxSkFjYVUyeGZBeXJTNXVkMzAxeDBCc1lPZ2gwSzJ4?=
 =?utf-8?B?TXJsS2ZBMk8xbUtmZVkzRmxyY0xGRmpPcWJVVm1pZ2lWUlg4N1BYQUZuKzFP?=
 =?utf-8?B?cUtTbWptTFlyQWxSc1NaZ2ZkT0lySWd3ZnNnMk5kMTRtb0MyWFJSejlZOFdJ?=
 =?utf-8?B?bEl6SkhmZzJoRHhjUU5sVmZ4aW04UmhTWFFucTNpL0NnMlp2UGVYN3ZJYUVT?=
 =?utf-8?B?eWU5Y3hjdTRCMGVXNmdqWi90azlrWDNzcUpCLzIzejM4MkFRTHdYbjQwZ21i?=
 =?utf-8?B?dmdKV2dpL0oxZDhBK1VZTHRIZjZSclA0WFhhSndodEVIWjZTZWQ2eksrTGU5?=
 =?utf-8?B?Q3N0QlpUdHdST05PTklpZmZ1c0kxemlIakRHRzJCak5PRHRjVXNQVmhhTFN0?=
 =?utf-8?B?L29NYTh3bGNDM3ljeWVWUXpxQTBDS2pib0xaRjhhU2tUYVFxNklmOTZkUkFU?=
 =?utf-8?B?MnhaMFV6Y0VNZW1qS2UySk1yWGJlWmlWcCtwaVhiVUUyLytNdzFHK3U1MEtv?=
 =?utf-8?B?MXkxTTNOTlF6KzU1Zk9JVU56eDBxMHpOOWJjZEtqSThFcThhMHFDRmhpcTI4?=
 =?utf-8?B?a3JwdldYckR5bDNGS2tRUVYxMHdIZ0ZrdnMrRUFwQUFZWnFSeXpVSGpiTUJz?=
 =?utf-8?B?eVp5NHNUR1JSc3RSaDRkcVpMT1g3N1UwNW00dGZjcmRYL0Z6T250ZUFCRllB?=
 =?utf-8?B?OUxwaS83OGhadGZYVU5ZUXdpR2ROTitDMW1ieVl6dHRob09kTGp2RUh0SGN1?=
 =?utf-8?B?UHJOVGg3b2w4S0R4SFNYckRycjZwV0dhRWphNUpKN1R1UEg5V2FFWmorNkJU?=
 =?utf-8?B?ajVLL2JRbVFmbzFtZjl1TDBrUFdrMnBwODBxS2R4N0tORmxDbjlCeEh0RFZC?=
 =?utf-8?B?cDZCVGJ0eEhEalNPcy80Mk1VaTUySjNnZm52NEkvNzUrYnVIOTF2OGswaGEr?=
 =?utf-8?B?b2pnMmJkOFZ4aWVDQk9FdW5xYzBZY1BrNWZHcUhRMVZWeHhGTStkVXFXZ1c3?=
 =?utf-8?B?cER6RHZsV0xxTnJHTWpBUWYzWkxNaG0zdURhTkFSWTlXUGExU1Vqb2tFM2NC?=
 =?utf-8?B?VU14dXREOWVqM0tGUlc3Wm51WTA4cEV5c01xNUtPaVlFaFNOcjRwWktUSmZE?=
 =?utf-8?B?YldIcENwQXVsZE9kQUdkTDRtUnh5QXNianAvQTlwZTE2aWt3WjVkbnlHWWlR?=
 =?utf-8?B?QTJvVzNUYUZIQjFoc2FUMlp1Uzc2OXRoYXVJaWg4ZHJkY1U1MUVSc3hQZG9k?=
 =?utf-8?B?K050MUlRbmlqZGNMNStmQ2JDQ1AvZWRKWUVrMGlJOHpsVE9JcDdJZk9CYUlD?=
 =?utf-8?B?NkkvVFVmUGFCcFpDS3RTQVpGcEJhcjBEa1hOK0ZIY0Y0Y3MzbmVjMHBOVzhI?=
 =?utf-8?B?VjRoTEovS3ZKaHZDa1FyMktjTXBQNWtyT2lZaXJDU1BmbXNyN3R3bVUySGtU?=
 =?utf-8?B?UWZVVE5nTm90VzliQzBqVmZGWGxBM1BQdW00SjJ3cVIzdVl6VEZrOHRPdUlQ?=
 =?utf-8?B?Wk1XaVpPcmxDNE9LT3g5REo3b1VGa1ZSZWV4ZGhyK1FYaHIwOG83WFBRajBD?=
 =?utf-8?B?MzlWZjg5MnA3ZFpGR1UvbVVBY1hoRUxGY0x5MmZnYm1TUTFJRHJxNTRoK2FO?=
 =?utf-8?B?NFk0R1oycjYvWHVobzlKRi82cXVIczVNV09LeFJQanlSalNEbStBOTBONkJh?=
 =?utf-8?B?YUkzOXphY0NxOHRXMHowVHdKbisycit3UktuNlc5TURJMmUwREtnRENkeG1D?=
 =?utf-8?B?ek01ckZ3L0Q2anYyWCtuTjE3bStTaGZSMVlwNmc5NS9rY3BLeFR4RlZ3ZWVS?=
 =?utf-8?Q?EXriHWhmyH3OyMkzsf?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 5fb6f833-ed57-411d-e21f-08d9c0b0581a
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2021 16:23:07.6913
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 bpnsBHrgi2CBveFfHQ0Xk+sc1UnfuL6IOVZAZXlHN2ZpaT8lsMgOIUbipaG5U2e7sqwa/YrImuP5r6A1dR50fIptI/8ywLylATb6zxItVj8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3623
X-Proofpoint-GUID: -MuaEmmB1wkEYzbpaabTX4iMjhYIi1O4
X-Proofpoint-ORIG-GUID: -MuaEmmB1wkEYzbpaabTX4iMjhYIi1O4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2021-12-16_05,2021-12-16_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=713
 impostorscore=0 suspectscore=0 priorityscore=1501 phishscore=0 mlxscore=0
 spamscore=0 malwarescore=0 bulkscore=0 adultscore=0 clxscore=1011
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2112160092
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 Dec 2021 16:23:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55601

--------------CVpALbdm0jFzphM7C0fpdv22
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Armin, Jon, Joshua, Michael, Randy, Richard, Ryan, Saul, 
Stephen, Steve, Trevor, Valerii

*ARs:*

- Randy to bump the M1s in the AB-INT list

- Randy to remove AB-INT tempfs from the whiteboard field

- Randy to move Medium+ M1s to later milestones

- Everyone to review their Old Milestone bugs and move to new milestones 
or close

*Notes:*

No triage meeting on December 30th

*Medium+ 3.5 Unassigned Enhancements/Bugs: *76 (Last week 75)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *38**(Last week 38)

*AB Bugs: *73 (Last week 67)
--------------CVpALbdm0jFzphM7C0fpdv22
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Armin, Jon, Joshua, Michael, Randy, Richard,
        Ryan, Saul, Stephen, Steve, Trevor, Valerii <br>
      </p>
      <p><b>ARs:</b></p>
      <p>- Randy to bump the M1s in the AB-INT list</p>
      <p>- Randy to remove AB-INT tempfs from the whiteboard field</p>
      <p>- Randy to move Medium+ M1s to later milestones</p>
      <p>- Everyone to review their Old Milestone bugs and move to new
        milestones or close<br>
      </p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <p>No triage meeting on December 30th<br>
    </p>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs: </b>76 (Last week
        75)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>38<b> </b>(Last
      week 38)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>73
      (Last week 67)<br>
    </div>
  </body>
</html>
--------------CVpALbdm0jFzphM7C0fpdv22--

