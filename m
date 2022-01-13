Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EFC65C433F5
	for <webhook@archiver.kernel.org>; Thu, 13 Jan 2022 16:31:14 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.11306.1642091472836225264
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 08:31:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=VEi9do+i;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=801267cc04=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 20DCogdL018201;
	Thu, 13 Jan 2022 16:31:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=l+3mvt8sw14OC5JwME7FrNRQCOl9GaFw4aYz7lFDqBE=;
 b=VEi9do+iwq17DmYhEVDvjfm3hU4hNucrnVUezSHW26NlprwTHqI3aGwJv6OhfHBia2hW
 r8dTG7TLFZNmfPE3iMLz6JeWL3xoWqGt+tEr1KONO5gd4J+IElyvcUEKa7BETif7qudm
 w4aZBJACTK0E3DF2T+8ejDKSw7GEogEYj/k+uAXUPCBi2j2YP5ENEknegAEmb6XwfPtM
 N2IyIaxuPfZH/MUBHv7ucGHsnQLU6WHFds50EPK5y8NK0DqUeBV1SWtRxEuAbUev8Sbw
 9a0wIwEQFKX2xwbqKcrAvGm5KWGatVB1dkx29BQoAaJXaFYHCwhf1HJwe7KO39EUc2H3 CQ==
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2102.outbound.protection.outlook.com [104.47.55.102])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3dhy7rrxuh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 13 Jan 2022 16:31:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U1fidw5AY9EVJ3lNWyfqQS5Rt1U7VF070XbaN01fwrBaQbA7ygyLBQW8HRTY74Gi04xRKUQKS0kKIC5OCdSJtawU/iwfYfKc2bQ69zghwRiEaF/uLdEzwxj1H/RcZFAFo/DY9hx/urTwIUPNh8U4SaQYoaxTJMllyOHGw/qeRZCBB2+59TWg5kQ7KGb/xSKYzDcnQmWUcBloMz2XyE2o6g0cVjFsNoeB/SjvkHs3UVm0FQRNM1+evbk5KpyMpnMOs1eTHdcFgnIwhlKidWPw/k6m8aVoG512P9JgWvIL7plOKxUoXJvKxRcjrT6Od8zQ4SOr/c/JeESPGTD4UsEBww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l+3mvt8sw14OC5JwME7FrNRQCOl9GaFw4aYz7lFDqBE=;
 b=KqpkxGSg2CgLydL0+OzpoZWtF4tRAz7DhCSqwo83VEWatdCHiTjM7JWUN6F11xOgRBwi0ZV/vjAxf+y6Mq7aUkFLQLMjzh+RPW6ae1dPlA0TjeVCGJLDnjriLI3x7uwnF4Hgot1U/1KNNyYSHy6BxQKva51yH898G/zYKRKR7xUz3Y+hyzoCHO+gHpDpAxJTgQTFz2tHAsjaBsgwth/Zg5Gw1Fk/MP77tdLvCWsl3bHmz2rENkeNmac0mg7eeR0W+d74zsJTeTqUbSZjqb+sAbyM5Wq1VQeMekMypunITj3/Ib8zGdEwMgzaM4bmkS9W5/BDHTP9vzMHtmVTp7nFIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by DM6PR11MB3850.namprd11.prod.outlook.com (2603:10b6:5:13c::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.11; Thu, 13 Jan
 2022 16:31:03 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::955b:e7a7:ad10:9dab]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::955b:e7a7:ad10:9dab%4]) with mapi id 15.20.4888.011; Thu, 13 Jan 2022
 16:31:02 +0000
Content-Type: multipart/alternative;
 boundary="------------SNS3QWl5FliFjXcV3VQQRX0J"
Message-ID: <01cd7ec2-8392-4916-1680-c83bc705e630@windriver.com>
Date: Thu, 13 Jan 2022 11:30:57 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
From: Trevor Gamblin <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 1/13/2022
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        trevor.gamblin@windriver.com,
        "MacLeod, Randy"
 <Randy.MacLeod@windriver.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>,
        "Wold, Saul" <saul.wold@windriver.com>, tim.orling@konsulko.com,
        Michael Opdenacker
 <michael.opdenacker@bootlin.com>,
        alexandre.belloni@bootlin.com,
        Bruce Ashfield <bruce.ashfield@gmail.com>,
        Ross Burton <ross@burtonini.com>
Content-Language: en-US
X-ClientProxiedBy: YQBPR0101CA0167.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:f::10) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 262da5c1-72f8-44f0-5466-08d9d6b216a3
X-MS-TrafficTypeDiagnostic: DM6PR11MB3850:EE_
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB3850622E2EF6660DDFD427249F539@DM6PR11MB3850.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1201;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	z2h30HzAlGWuOK19DHxUWUWLwoNDUn8A42OLki8bV0eVco/6OqQRsvQrmZlFdVqda8lDn1qfMGqweaMwm2u7EC5NN5wpKUQk/Ceehm2Dcn8lMAyh/wGPiVmWmcTK3QiHE9voFizP15ZPhDg0xV6u/23wcvt+coUQzcPYoqxdbFlOep51aUIN2q6jM0gTgRLfMWfmISu/FbGN9KBLOa4MwtUetWV55kOZGhMk5xSDW4mm76wC9V8PgnkZjMMbPj5J9aMwkZ6/U548T/0h2+Y6x98DqRgO9cKwIJWC1oE0/Cdz+jjFxDSB3716U0ADUtATsfQUcY+1FgXBZDwgGkwwKwGTaK/knAiIXEdP0+5McmrtzV2AGFPCDvO1UYu6o1lFKSrMWACHn8HaL41olYrxR3MIK6KkywEw8qkBq+EByAYRXueKG1YCnGe/w624Esew0WgKRuzi4UtysxNidhLQ1b7DDn6vwlA/gq+V43hAuMMCwW/JoYCdJqEwJaidSguz4cd2RbdDV5hTCH2QWbJhUUQnBWnbC6ovZbWxmzdjOvDGwsb+GVoSE5+8sIaZUKsvPOw7sqItsiEpQJNVz+3Nlob+LdGxHf9W20KmDbX50vW64xZF1WS2TgNOpSCYy+sVmP/upUzMZnalymw88nutuYqHKKNT37Gu6BogjXFq2iNzZ6cXmRR94tz6ziuJl40wW6P+tEMDRlrGjmgm+rloirCjhEeHs/m5QuwX5aTzXAyB885mf58P3/MTEWdq1jmK4n7jdlkE/Zxstqm25o7Ql+c0fQ8TJ/ThGKPni48J9/gzLJGlSgJy7sBXfosgSlyk
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(33964004)(186003)(6506007)(966005)(8676002)(44832011)(36756003)(86362001)(8936002)(508600001)(31686004)(31696002)(2616005)(6916009)(66556008)(66476007)(83380400001)(66946007)(38100700002)(6486002)(5660300002)(4326008)(6512007)(2906002)(6666004)(54906003)(166002)(316002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SjRaeGV4M0V6aGR6VTBDQW1DRGxMRzN5MnA0bkRpakQvcy9SZmIwZitiTHV4?=
 =?utf-8?B?Z0VuK2tPYytsUnc0cFFCeDQ3KzJEZUYrVHlEUTFxVENGajlBTkNCRmRvZHEy?=
 =?utf-8?B?SjlNYmdQRDg3NHRQVHlZb0ljbmdBZVlrMWN5Y0xjUTdPZnhVRDA4eDNPYk92?=
 =?utf-8?B?UE9FN29mU2srbnBneUE2QVIzWDdiOE9UcmwyN1FQNzJ1b2U0T2xUcDhIUy96?=
 =?utf-8?B?YVVSejNJZko0SHZSMVFqKytqYllVbTJPbFVxR0FHS05TRStSUnFLU1ZoK3JN?=
 =?utf-8?B?UFR3SG15OTdXWUdWaGNrTVBJRWtldENrN1R0eHJJMFE1YXpObE5LK2R2Z3pR?=
 =?utf-8?B?RnVsMWRhWWhhMU1ZdkVWeUVsbkZITFc2TjVlb0FVODFnQ2taKzJBeEx1MGNK?=
 =?utf-8?B?UUtvRVdNdFJONnFSQlNIQ2Eza21ubno5cDd6VGVoU0tYTGlITlhNQStzbkh6?=
 =?utf-8?B?dStzamxxa05Ka1ZsM3dkWjQyV0dqKzJlVU9RV0srYkp0c3VRdFpDTXNIdWxS?=
 =?utf-8?B?OU9YdXlkZXlPZDJEcVJQaEVMbG5RMzI5NCtGNFNrN0swNmRkU1JYWTlsSHBC?=
 =?utf-8?B?dml3WHFEbWxodjgxb0N2UnNHUytsMnBKK0tCMFpCZUszNlFFWnc3SjVYd3JN?=
 =?utf-8?B?czJtSHRyMHdib3JpSldYQllIaUk4WHJMUzVEMHFuY1pscS9xR2k3VkRIeVdR?=
 =?utf-8?B?T3hlZWZTMGJNbXhOZGJobUY0SE9TT0pCNmRpS0d4SGZlUGlQRlh4WVhEQTY3?=
 =?utf-8?B?enV6TGNwYTRrUE9GWkVhNkFLZm5MOW5FczhGVWMvNjZFUGk0NkIyaE9ONVRO?=
 =?utf-8?B?ZllxdG1mUHVUMEcrQlBJR1U4RFlSREgzMHJTV1JRMmVrOE4rZHFIVTdGRW5y?=
 =?utf-8?B?dUZpNEo0LytBaFQ1VC8zZE40ZUVsSlgzblRlR1I0MmZrci9NaTlMd1JIN0Vi?=
 =?utf-8?B?U0ZPRFRoT3Z3ZUhVTFpnRVNXcUNRYitzQ1JuMUg0V1h6UVJYOW9yQmlQTUVl?=
 =?utf-8?B?aEdtcXhTMXFKa3ROT20vaXorb2dQNHNyN0dJeUN2ZTR2WHZWM1BxQmJJQnpx?=
 =?utf-8?B?SVltazkwU2t0MHkxQnZacURUNisvWkFrRlBuUy9MZ1dxMC90dFpYZFBqckJt?=
 =?utf-8?B?RTU2TWUxSnNUT0ZCUUV6WUlqVDRLaTIzZFFVZVJpNTZheUZsd3JmNERBVjJ2?=
 =?utf-8?B?SGkxc2owakFDWk5kS3ZoMW5HdmwwN0lEdGhLeWhLRXhLMTVhYUlrV2dubUZM?=
 =?utf-8?B?V0hkbXJuUnY1V2tZTFI5YmZQZ21WL1JZb1JpS0EzS3E3NDF5c2w2Z2VmVXV6?=
 =?utf-8?B?MHBvYUxsS3dnVmZBU3hwZnhRRkhtb1dBemhsU0MwdkxUeFV5QURmeUNYMitT?=
 =?utf-8?B?UzlXTlJCanlTa05GYWNjVzRXcmVhY0lnVlJnRXFGNHVsdVM0cjdEMlN0Mk1w?=
 =?utf-8?B?aHJOU3NnWHk1bEhoQXJwWk1WUGFhR3lpK1cwMm9QMVErNkREM1Bia0V1bXll?=
 =?utf-8?B?YlZKRWRlT2ZoaytSSnpQMVRqQXRpdlBZOTJHbDlwYlpMWDRtMkNzU3h4aWg5?=
 =?utf-8?B?dFV6Z2RSOUMyVUpXVSt3RWZsQkhOanNDZjZySmRNcVdWVjRlcXRYSlloRG5D?=
 =?utf-8?B?ZDZIYXpxdFZlZ0VDenlNdEprUGo5MlBUOUJQZzRuMXpTekNLcmlVdXAwOTVk?=
 =?utf-8?B?WWhodVBjdEl1VXFjc21HRTY4eTdhRURGWUVTTld4Q2FNTUhqeDFCckJVdXY3?=
 =?utf-8?B?U0xkRUd5ei9BQ1d3dFNqVGhiSFFleDkva2cvdHpLbHpkSU1TNWtEelJsRG9D?=
 =?utf-8?B?WGdwSlFvN2ZldnFSMFhxSTU1Zm1NUjRPMDRUVHlESUl0NnRGNE5qYXFEY0JZ?=
 =?utf-8?B?QlBaWEdHRzFYL0ppSUY4N0pIOFpEa2E3dHVVa3oyR2IyUXZSZXlWUTZXMHEz?=
 =?utf-8?B?Vk5iUFNiUDZmUWVNK0Q3NmxwK2Q4Z3hPNnlKc2thT3BldFpJeEp6ZEhDQW5l?=
 =?utf-8?B?aURKZXJyRGg5Qk9YL2lTTGw1TlFvOG1vWllsblFRRnFObzVySml3QUVtZzBN?=
 =?utf-8?B?dHZlS0J0dUJ4dU5VbWY5ME5ETVZDOGZjOGhmL2ExaGdnMlYzQjUrQUxsSC90?=
 =?utf-8?B?SzhUVHAwNGtCWFJUamJ1UjhSVjkwT0FRUEtzNndIL3Eyd01pYmdaU2dMSTAr?=
 =?utf-8?B?ekZqK1U4QzJJL3JwSWpxc2kyQTh2U2NGNmk2ZCtvVlovMDZ1aC9QeG45REht?=
 =?utf-8?B?S3pyYS80M1UwM200dHpMdUNWS1o5b0xSRW9Bbk85VisveW5uU2tNdnd1dTk4?=
 =?utf-8?Q?c4eXiN/Tc74XnsECiw?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 262da5c1-72f8-44f0-5466-08d9d6b216a3
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jan 2022 16:31:02.4617
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 Hz9qNHnkfnkBluBNXDYcVPhG+cNsEELIfpg+Oxf9Qycs1WgdsDJ746BfnujgrLzBNvYPq08ZloCa+YJWGehtBohCPLihipVuV9PoH7SihVk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3850
X-Proofpoint-ORIG-GUID: EMgg_IwYTNhp6D0axwYt6dsp7n6Yks8R
X-Proofpoint-GUID: EMgg_IwYTNhp6D0axwYt6dsp7n6Yks8R
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-01-13_08,2022-01-13_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 suspectscore=0
 adultscore=0 phishscore=0 impostorscore=0 malwarescore=0 mlxscore=0
 clxscore=1011 mlxlogscore=912 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2110150000 definitions=main-2201130102
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Jan 2022 16:31:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55837

--------------SNS3QWl5FliFjXcV3VQQRX0J
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Alexandre, Bruce, Michael, Randy, Richard, Ross, Saul, 
Stephen, Steve, Tim, Trevor

*ARs:*

N/A

*Notes:*

- ~50% of AB workers have been switched to SSDs. Still too early to 
determine what effect they are having on failure rates

*Medium+ 3.5 Unassigned Enhancements/Bugs: *78 (Last week 75)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *38**(Last week 38)

*AB Bugs: *74 (Last week 66)
--------------SNS3QWl5FliFjXcV3VQQRX0J
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Alexandre, Bruce, Michael, Randy, Richard,
        Ross, Saul, Stephen, Steve, Tim, Trevor<br>
      </p>
      <p><b>ARs:</b></p>
      <p>N/A<br>
      </p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <p>- ~50% of AB workers have been switched to SSDs. Still too early
      to determine what effect they are having on failure rates<br>
    </p>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs: </b>78 (Last week
        75)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>38<b> </b>(Last
      week 38)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>74
      (Last week 66)<br>
    </div>
  </body>
</html>
--------------SNS3QWl5FliFjXcV3VQQRX0J--

