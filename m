Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF204EB64D9
	for <webhook@archiver.kernel.org>; Thu, 15 Jun 2023 15:24:32 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.21410.1686842669163202278
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Jun 2023 08:24:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=RckweT/8;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=553003b588=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 35FAV3Xb015573;
	Thu, 15 Jun 2023 08:24:13 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=wHXZyk4zgYK3oI9j2cexijFhOKC9hD+TGQB1JJi3nN4=;
 b=RckweT/8CYmYuYlGmLAoO1qtiX6plxGMoiyvnFocprUFGjBlSoqXfJUl4r2JayGT/eUL
 KggF1r2uOSaniLamu83O159VQGhQPiCMMrF9xT1cC4SiE6ehTuYAhp9I67ryX8wkmRWB
 lzSsSv6VWxwd61EWhsy5bc2vmNffmGOhA/Gn4xug9fq88GlZl4/yfcaNcZqr9BStjIm6
 sRlzIwRWQHarGe/g2+bvLvWVvuQuiDW3uXBGQC3/FAj8uuKgAtlWPTByVmpBuNgoEa3I
 btPUVmu+1AZC9pwgMuHkByw8FBWXlNbAO/aQh+ZC8cRbYAjaT1K8oBGHKc5e+oD1M5/E Vw== 
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2174.outbound.protection.outlook.com [104.47.59.174])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3r4rphms3b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Jun 2023 08:24:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h1Lm6Lnyvk1vG8a5rbNninCRfEGjqBG77ZNw/LEukY19wTAgoDsElwikOSJoMqQXMMqqzXDeK/v7Iil4Hh/3QA0J/2TVPA0lfV1ZT1GfWX9V1Y8ZdLn98Wnw5IgZEeF8EP7NkhMQxyNvDcrsbHHaK4KPdNOmLosvz6oHAbsfQVmas54OKABub8E54JHEuvqLbYcFajXxJFKi5QmaNUoBIxbSKFvYfod4YWocwx7lQ+LRHspHiCZBwtg8z4NpfBCzAcTwM09Vu2Kwg1QYtkARJQD7ahpydQttgQgged16B3R/IlavOFXmXL4+p4hNoou+oKRtGG7z8BhePBqKGJhaYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wHXZyk4zgYK3oI9j2cexijFhOKC9hD+TGQB1JJi3nN4=;
 b=YcfIA58rEe5Ev0uENMbK5oEoje1QwlvFheVA1paBN4RHpDqfkYJPqG+MvORjwFD4K+/7ICfN+OuBngNwdNFDKZr9Q8QJ5Uo7wzemtLIxXtErkV1EviRCsIpbjrbtEd6SJlqu+OGkbrGqM1kd7c6PfGdOnWDtb2F/1TagpLUmkfyxCoNEksFudT3wED+I3Q8iOkfdRz2Wg+Z69OMWrbP14WSOc9LDGINT30pAHs60pcDfM0/NocImseQXKg6bUcz2CaTWhs+I6R2kr4Bn5QBg72qmxidnafcyvj/awQoEE9BxBKaW676FB/lWk/Hqmv018S4BpRSMj302Jhcd42I94Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 CY5PR11MB6320.namprd11.prod.outlook.com (2603:10b6:930:3c::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6477.29; Thu, 15 Jun 2023 15:24:10 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::8dd:d4cb:2602:c41]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::8dd:d4cb:2602:c41%4]) with mapi id 15.20.6500.025; Thu, 15 Jun 2023
 15:24:10 +0000
Content-Type: multipart/alternative;
 boundary="------------EBcgM5Iw9hQo6pHoPMtgQXs8"
Message-ID: <3e578f4a-4f1b-2981-e4f8-d4d3b62ec30a@windriver.com>
Date: Thu, 15 Jun 2023 11:24:06 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 08/06/2023
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: alexandre.belloni@bootlin.com, Bruce Ashfield <bruce.ashfield@gmail.com>,
        daiane.angolini@foundries.io,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        luca.ceresoli@bootlin.com, Pavel Zhukov <pavel.zhukov@huawei.com>,
        Randy MacLeod <randy.macleod@windriver.com>,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        Khem Raj <raj.khem@gmail.com>, ross@burtonini.com,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>, tim.orling@konsulko.com,
        sakib.sajal@windriver.com, akuster808 <akuster808@gmail.com>,
        valery.chernous@gmail.com, Zheng Qiu <zheng.qiu@windriver.com>,
        tgamblin@baylibre.com
Content-Language: en-US
X-ClientProxiedBy: BL0PR05CA0010.namprd05.prod.outlook.com
 (2603:10b6:208:91::20) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|CY5PR11MB6320:EE_
X-MS-Office365-Filtering-Correlation-Id: 38066101-a250-4e2e-6b42-08db6db49129
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	5F/y2BrBjH/cestYrjYadPdhwlzXT7cDy3mjk7vqPtEyJHl36eX7uZueZ1ZsD/fe1k/xqx7PJfria6zmYaPdf8oiAocQNdG7uJcqo7hetw7WhvYiLzE+/qS0jmwvhzu5n0WYiaLvfo8EcynYdR3lhHj4+JDS5x9grclh9caAPEurnj1gpA6chcgdXodIcf0hVKa8G9FbTFwgRApAlE2GXRkr+jA9Q2FORtqUWyCOj0/SDyycZXLDMQ5p4L9sOwXgl2qgp1aB97pjomO3cQj1QT93ODl4QD0vyBoRl9AnZzbfxfHqpgbe73BntRaChVRT4KgXczt+Mha5x8793ohmcWwvEAGIpxfdQrUoo1gofbHJiLPQo99pfCPyYAWXvazLgOTulHlm8tdz10OmJWWETCOXWKP8fKWoDy4aFexpHMh8C91QInLf3BIRm4jYwfKrlaV7RXlWk/3C4I7xCxPaJULyyeJOSa0Sa1ttJKp0n27LhPvxFiAzVhKkCa6zB3DiD467OqSEV06VnwFx0kVdF/7q5KxOmW6CFTghygirNzcU0RQMkGWpaIH2WrR6solF0FY1m0IqErW85FD1BmoFHG//mvZt5ww1djGhxGO20MDytMIb8HW/njubie7EHB3uUH6t5kaIyeKO8qyV3cwWgA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(376002)(39850400004)(366004)(396003)(136003)(451199021)(166002)(6486002)(86362001)(31696002)(7416002)(33964004)(966005)(316002)(6666004)(8676002)(41300700001)(26005)(55236004)(6512007)(5660300002)(38100700002)(6506007)(44832011)(8936002)(36756003)(66556008)(6916009)(4326008)(66946007)(478600001)(186003)(54906003)(31686004)(2906002)(66476007)(2616005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YUhOUVNQMlROZnBJM0dqd1N2aFVmY0l1cHFKR2g2VC9OSVBjS094UHVCY29N?=
 =?utf-8?B?UXY0OVF3TnhlVXhZbWFvZnZ6UnZNWGUwekQ2Y21MdlMxZHdCN2lCeEN3cm9W?=
 =?utf-8?B?NlNHUFA5a0FBQlRTMjlQbVhOZWtRSDhUZ1I3V0dCNy9ZbGtSV1g3QnFwYVpD?=
 =?utf-8?B?Z1I5V1hlU2QzTEhlYXp0WlljNk1BV3ZXdWtjRTRWdDJ2ZlpUem5YL0o4MWRV?=
 =?utf-8?B?NVNOZm9RWk4yK2s0VVFCakNPcWtPRDBaTlNvdERyOTNNSmw2S0EwL2IycFRp?=
 =?utf-8?B?MldIeWRaVCtBaEQxZDdMT0VxUXBOL2llbTRnSUQ1cjVuQVdEVms0N0VhWlJ0?=
 =?utf-8?B?OFpPL0R3UndYVXhoc3J4QWt2V2tPS3dya0RtYTN2b2NJYmU0UE42YjNzQURS?=
 =?utf-8?B?eWNtVk5aZnVCZkxidDJWRzlSejJoYXFIMEpTRHZpWS9TQThZUWtDQkVzZUlK?=
 =?utf-8?B?dVh6MkdFUExXMEJBZER6ekZyaDV3M0d5QkxhTFdsM3pjNUYrck02TWdVa0xI?=
 =?utf-8?B?WFVWdXdlbXhMSk5lZVhzR3B5Rzh3azhDckFmWE1TNkFDZ3U5NjM4eDcvUGVv?=
 =?utf-8?B?RGRRQ1JFZkI1L3RSRk1ES3kvWFF6M1lncnJKS3MzWlZzTkxydzFHeCtrYmgx?=
 =?utf-8?B?TkhjdmU2ZzAwdk90VjJoYis3c3F2YTdHNGJ6ZzQxWUVPVW1yWmRvb1NlVllr?=
 =?utf-8?B?Y0NjMlVNZ1B4QzNKQTFkRlJZMTBFU3dxaXRRT1lDbU9RZzBLUUJHRUVkRzUx?=
 =?utf-8?B?WkY1Mjk1ZktYN3pZQ290bExZT25uQlZwNWFiSXFRQUtha0syZjlCSFliRlBo?=
 =?utf-8?B?dUtneWlDUHkrUDE4RWF4ZnJoQWpqbTdwSEVwWG04ZW8zVTdCcFB3aTM3bzNL?=
 =?utf-8?B?T2VEYVFWeG9hK0JaNDNPWGdDRmJiRFFxbFY5MnkxN0xhSzI0UmRobXRaUEM2?=
 =?utf-8?B?RUIwMklaTGxFb0szamZheFpvQmhUSGszZkFWNUlpaHNyYUdSaXplZWtibytX?=
 =?utf-8?B?NThHSk8yT0JSekNvOHUrQ2dvVU1JTFNsU0gyQkVYMS9mWVJvNVE3Q3pjRUFo?=
 =?utf-8?B?L01EUnNkaWdrSVVFWmRxN0ppZFkxYmIzOFJZRi9pY3JKdGlrcXVOdXlLemY0?=
 =?utf-8?B?cUhRM3NLWFVGMUVWWE0vNVVMMzRucW1pZ0trS2MrVzNSTnVqMitvc2x6SDVu?=
 =?utf-8?B?Z1JuS1M4aVV5VWhsZTU4MGwwTkxPemtFbDB5Vno1d0llOEpuR21LanpiR01P?=
 =?utf-8?B?bkJxd2kzZERXSjhvMlhyckY3T1hpY2NoVlhsQ2pSTDNteEpad2V2VURzZXlz?=
 =?utf-8?B?Q2Z0bjA3TXg4eCtUcml2SDdLSGdlQUJ0M3NlazRrQTMwVU55K3h3OUpNaERM?=
 =?utf-8?B?aGVqc1RtekplRCs0dGxMdWhIeVR2eTVXZDhWZFY0a3JCWkMrWVVxMXpvNEZx?=
 =?utf-8?B?MzU1YkJSWkJYb3phMVRwaU9ZZ2cxZGpYaGNla3I4QWQ5OHpseGVIMVVZaGg0?=
 =?utf-8?B?WlE3TDNqeFlITTZvcldXbUNEVXltQ21GRlFCb0lVbTlmNmNEN1dRNVNBQjBy?=
 =?utf-8?B?d3hJNjRTR0pLNUthc1ZrYzlmZEpwQ1F6dngybFJseEpRRWNHdlR3SGxiNHdV?=
 =?utf-8?B?aWRPVnNnenZtL3VaTDgvU0F1dXVNVmVob1Z0VmJOVE5Ea0FDQkdvNVR4OVZ6?=
 =?utf-8?B?S2xnMFN5b2NoUkliZ0ozQ1dYVzRaTFJVMG96TW53UE1CQ0loTmlJaC8zUlRT?=
 =?utf-8?B?bmtVbmxyekI3RldXRkwwOEhWclRVV1NBekVpU3RMWHlmbHd5Nm11TDhoMllG?=
 =?utf-8?B?Z2g5QUZJT1pZS2hFRHhuRTIrbDJDVjc4VUxHRlhUUit2dzdFdEU0bGhwVEFs?=
 =?utf-8?B?OFVBcGNhVXNQVzVvSzJ0K1FacGs2eVNKUUVxc1pQMW5EWXcvUGNPaXllYTRo?=
 =?utf-8?B?bDl5Q0xFNzFFbzZRTG1wcnVJTzI4Q01ydFdJdWdCL0N6a3Z6ZnFoVTNXVkQz?=
 =?utf-8?B?STVlbWM3SndldDZKSUpDMWhRNHJxNDY0dTJyUVkxdWpMSjl6N1FkbVY5NzJN?=
 =?utf-8?B?S2Rpb0FvVnVrR2oveDhoRG1leTVWZ3V0VjJkL3dyaVVWY0VoSXdBbkVSOUhV?=
 =?utf-8?B?OUVNZGVXUW45ZlQzVW5DN0Uzbk5DdEl1d0FQMzJlUWVxZ3hWTlNoV0NLa2Zi?=
 =?utf-8?B?dkE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38066101-a250-4e2e-6b42-08db6db49129
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2023 15:24:10.2010
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aO4Yk7H4zCT29gLBDuneJwa3bgxcjSJjL3f/BsXIVCs8H3UyZx5rbTuTHHOGDFykaeg7HHiDE/ZsGGPX8Th96esn9CirPejgrTdq7n63YYY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6320
X-Proofpoint-ORIG-GUID: 9SYevR1yVTQLmQ7TozqZUaxGI8W_eKVQ
X-Proofpoint-GUID: 9SYevR1yVTQLmQ7TozqZUaxGI8W_eKVQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-15_11,2023-06-15_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=899
 lowpriorityscore=0 suspectscore=0 priorityscore=1501 impostorscore=0
 bulkscore=0 spamscore=0 mlxscore=0 malwarescore=0 clxscore=1011
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2305260000 definitions=main-2306150134
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Jun 2023 15:24:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60311

--------------EBcgM5Iw9hQo6pHoPMtgQXs8
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Bruce 
Ashfield, Joshua Watt, Ross Burton, Trevor Gamblin, Randy Macleod, 
Alexandre Belloni, Tim Orling, Thomas Roos, Yoann Congal, Michael 
Opdenacker, Ryan Eatmon

*ARs:**
*

*Notes:
*
*
*

*Medium+ 4.3 Unassigned Enhancements/Bugs: *73 (Last week 73)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *44**(Last week 44)

*AB Bugs: *67 (Last week 74)
--------------EBcgM5Iw9hQo6pHoPMtgQXs8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Richard Purdie, Steve Sakoman, Stephen
        Jolley, Bruce Ashfield, Joshua Watt, Ross Burton, Trevor
        Gamblin, Randy Macleod, Alexandre Belloni, Tim Orling, Thomas
        Roos, Yoann Congal, Michael Opdenacker, Ryan Eatmon<br>
      </p>
      <p><b>ARs:</b><b><br>
        </b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes: <br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.3 Unassigned Enhancements/Bugs: </b>73 (Last week
        73) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>44<b> </b>(Last
      week 44)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <b>AB Bugs: </b>67 (Last week 74)
  </body>
</html>

--------------EBcgM5Iw9hQo6pHoPMtgQXs8--

