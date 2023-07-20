Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7038CEB64DA
	for <webhook@archiver.kernel.org>; Thu, 20 Jul 2023 15:30:19 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.128.1689867012332867064
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Jul 2023 08:30:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=JXFKC8Dl;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=656581357f=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 36KBuOc8001817;
	Thu, 20 Jul 2023 15:30:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:message-id:date:from:subject:to:cc:mime-version;
	 s=PPS06212021; bh=bjrOYO8UCtpiOqQlVmsCeN4wTt4BKGpmc1XsYwuafvM=; b=
	JXFKC8Dlj9Y1p6+qTzsDeHc2FxcE55lW2xg1Ryi/wqX5hF82tUFB9NhbeesTJjRU
	E5shKmSLKmiBPmNaIhtKdZVyAhQ7/VoEamkd8zoDCx+peoE0v6CSGzKM2inHuLMk
	/JvCYfQrFPoYQXD15N+VU3OWnY1RqubpOJ9Bl2StnyXZe8IFnANgD1XMUaJDTsEF
	C4FOfbZK+7kVwXHxq6Rc7sndPOweAnpc/JDGgCFe/+wwGw9BZ7/MBD6haTHNH9+S
	ZOINf+tvd2Qnxk2+GeHihcmmV7l8/SlTTFLyWhPxCCsKGqpZ3o7bC0zkIhSKrFUk
	MERi+aDEVYz+iIb9anHDuw==
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2103.outbound.protection.outlook.com [104.47.70.103])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3run8acsbk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 20 Jul 2023 15:30:04 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EClP88o5+z0yZHzWTLzBQsOgif83NtshJJNU0nZNR02sD4A4opauLLVsRD1tV2R93t7tutV09XHN43BwEbqSm3jVbYVdmg0E3l1eMxDmi+2XNvHx1kn48/BAYzTOWDM3M5QR0G2UEzJm6DlN8IL3YO5Kkwceget4BbdPdjQygEX7id6ZeqkYPOhq2b03HzSdOq2PSVLeViiKd7Pw5sxt/txYrg8QedyLV/Lrha4aTEpO60rgNhGt+vFCYCFD77EHX9Zl6aFDh+3wtePSMIYXjmnsRaVq14kGLoklbmadPW2AHXR4hram74Lf04ARTBKd9VGbyB+i12urQ06zKeQqyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bjrOYO8UCtpiOqQlVmsCeN4wTt4BKGpmc1XsYwuafvM=;
 b=CeaZg/IeHEme6zR41abuPA1fK3oP7GY+9l/Am0DEEEOHIeDM99PhWV7KxsoimO1Vhq2zsFKV4eVI2oriJexDCjQFxkmtk6z+9jhysXnYZtoNcCRV1FWUv+uRaTQrz4fMz5O3fQ05QwyLZnA9NahgZjFio+MlYROSLR539wnRy8DE4Jk+vqeHB7uIR2g0rSJqrhSe77fBvXNGdRxakK5Fm6Lg71JhAE99GhI0tKxBzX4k22CwGlZppIUdCWwKvikq9jNOnNZtwi/QJ7ym40yc/Rq0y3RN/hZUZFrrQ83ZbE5BwFyTUUE5ISlEigymHy1MATUZKzuPGCl33v8oGpOsUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 PH7PR11MB6330.namprd11.prod.outlook.com (2603:10b6:510:1fe::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.32; Thu, 20 Jul
 2023 15:29:59 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::e7fd:1ead:3f8d:580f]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::e7fd:1ead:3f8d:580f%7]) with mapi id 15.20.6609.026; Thu, 20 Jul 2023
 15:29:59 +0000
Content-Type: multipart/alternative;
 boundary="------------foeql2D0wpES60cGmW8TIkek"
Message-ID: <751a75b5-ff37-dfc2-6fc2-17b6c5eed449@windriver.com>
Date: Thu, 20 Jul 2023 11:29:56 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 13/07/2023
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: alexandre.belloni@bootlin.com, Bruce Ashfield <bruce.ashfield@gmail.com>,
        daiane.angolini@foundries.io,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        luca.ceresoli@bootlin.com, Randy MacLeod <randy.macleod@windriver.com>,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        Khem Raj <raj.khem@gmail.com>, ross@burtonini.com,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>, tim.orling@konsulko.com,
        sakib.sajal@windriver.com, akuster808 <akuster808@gmail.com>,
        valery.chernous@gmail.com, tgamblin@baylibre.com, pavel@zhukoff.net,
        antonio.oliveira@konsulko.com
Content-Language: en-US
X-ClientProxiedBy: BL0PR02CA0099.namprd02.prod.outlook.com
 (2603:10b6:208:51::40) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|PH7PR11MB6330:EE_
X-MS-Office365-Filtering-Correlation-Id: 374ae95b-4827-41f0-c82a-08db89362d7c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	tTTtCS2BF54ghBnh+lAsDeoaLn+C6qF94mA6AJEEGcfQxmu9taDLO3lv6I/Lzvzpn6a4zp4yeCNk8RLtXND1PFTsFICRkCpSoBzx7EeHkEy9DaaXPfi+3c/6l/G9Mea1cxCPxcpOvNdIKJKTJ144IkgMzFJ2uW+vWqjGXYprOjUky+abJSxQjmHUPl+jxLgSQnJEKvm9xdpP1dbjr22Q3EFhbxw6vLM9574jxv487GW/hXxPcMNihwDWpgLQDLgY6ncb8yIVdKqUN5AKClNsDVTdYuM3KIpbbV833jSt79mWgCk2XUVSTTIL0wySzmf168fWKj6q+Vp+wT/bu3NLmdxIKsfuRJKdnP7KzyIdSq5teFxnKKXWZjxJ1VIm0boE8ptCjMCZsmuw8mo5IkY3nGdsezMFBy3yFD8uK0T6InVBMSMB67NVsCwK7q08BnrK5qc8mVqV9DiE1K3OihTbo8jQRgdDdGpQehybUN8WJVFOF0+L0m+wUexCLZDJAMgVkXr6uNBwC6yuwOB4H+bR9aqnoy9R3cJCr8xry9enam9vj/4W+gxxwzkTsaE3OaCUIa4/+qAF/7yP6gdZE72HKS9b++gCpU8w8xHoVITYDN9HsAMMaCq068Q3N3Q4LRww7ek0o67dwkGXDnTG8x9hSA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(136003)(366004)(346002)(376002)(39850400004)(451199021)(6506007)(33964004)(6666004)(54906003)(478600001)(6486002)(966005)(2906002)(26005)(186003)(6512007)(4326008)(7416002)(8676002)(66556008)(66476007)(316002)(5660300002)(66946007)(8936002)(44832011)(41300700001)(166002)(6916009)(2616005)(86362001)(36756003)(31696002)(38100700002)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ekdaSFhybnV0Z01IL2JGc3pnVzRBdCtwYUxBR05nR0V0S3dBZkpyeEV0WE9l?=
 =?utf-8?B?QzZNUGVKcHJCUjJnR1R6aHFEWnpLRjhBdUx6dHoxKzdZVVdzcEZoZHBXTG0y?=
 =?utf-8?B?MXdkeEpEMXRMbXlxM003d09uL0NoU1ZTejE2dHZuQnErSndWcXAxZFF1aGsy?=
 =?utf-8?B?c2tqTFhKVjdBT1d0c2d1cUIzQm1DZ0drQmFYcC9TNDZaRzUxdTJxN2ttMjZJ?=
 =?utf-8?B?WkdVZnFuVlErL3lSdkh2OURpKzNua2RzSHROQXJmNU5HZk5lYUZBWFFLYkp5?=
 =?utf-8?B?djJMT3QwcWhVL3pXbUZ1TWFZbExhS2lkZzltREtJQ2hPbFZvYkljWEJYUTY2?=
 =?utf-8?B?bklNczlhNGRvU3RCLy82cmEwWGpZRjlBQlRMcE0xY2xFWFN6eVhkZ2tHMVRK?=
 =?utf-8?B?VC9MVTVKa1d0MjJtMEhid1hBbEs3QlBNakxjSlllVFdvaUp4aS84NGFaOW9L?=
 =?utf-8?B?Y0NOQTFEYytqeGNlanhxL3lLblYzZWVhaTFoRzB6QzVZOURoLzBDLzVCeU5D?=
 =?utf-8?B?UVN0aHFaM3MvMTJDbklCOEFuQ3pJNDk4UGUwQ1BWT1BTZk5OVHJEajNDZHZt?=
 =?utf-8?B?UnBKMVNmelpPUUF4UXBzenV6ZW5yTVQ3dW9ZWmg5M0NUT05KQTdyeUtOcXdD?=
 =?utf-8?B?cEFkUVV1bHVFc1VIaHE5ZE95YzNhL0cwSzMxSWJiV2dQNzRjVDFFOEhENDBT?=
 =?utf-8?B?emZxRlV0bS9ETkZ3elJZYXo5U1cvZzhmb3pFaWpSL0N2WU5KcVBXcGIwQmZF?=
 =?utf-8?B?cVlDbGEza1lKQUZ2bUhYZHY3ZGIxdDAwS2M0YUZUVTdiQWw4L2hBbG9ycVJ2?=
 =?utf-8?B?UjFONzllMlBMTXFtQUpobU05RUZIc2g3VXFwNnJtU3dNVTVjZzlxcTBmMDMx?=
 =?utf-8?B?bWVaemlEUUsra2tNVE40L0lBaDRrQ0dteGJBZHZPN29Va09kR1VSNnZxQlRi?=
 =?utf-8?B?SUh2aTFwWkt4ZmIrd0o4Q0J5LzBhU1VZMVRVMlQvY28wUms0M1ZUbG5lSjJB?=
 =?utf-8?B?SjU3K21mdmpRNUxGa3pnYnczcTJFWFI2V2Z6TStINkNJVXVWZVJEUzZibDhp?=
 =?utf-8?B?V1VJbEU2a0N5RGZDVmRPSlR0MTY2ZU90RW1LSFJhSWpNZGsvbTlLRlQzNGIr?=
 =?utf-8?B?ZUpzZ0lNR1FpMWRkMGV6aTRpQzFaWDBmd3JxbHM3VzQ5ZVBqbTd0TU0rQzJv?=
 =?utf-8?B?UkZjbGx1YU5DR1IrMFlmRUdXNTdhYlpwMG52TEdEVWVlUUExYUQ4SXU2cHpw?=
 =?utf-8?B?Mk8xR2xBZndiOG5DY3Z6c2pYRWJ3NGMrZ2cvbXpyOTYyQ3g4S1h5SUd5UUlJ?=
 =?utf-8?B?czBFS21lbjhHdXdzdnBFbkJxV285QnB0UmFIMU9EZkozTmN3RUFvWWgwdnY2?=
 =?utf-8?B?VjY4Q1I4N3l3dGIzS0NwY2FsWFB1TE94eXFxeTFSK3dlazdxUFI0N3pqTHFl?=
 =?utf-8?B?MS80bEQ3bkNEU0M0N0tyYW4xY1RoNFh1NGtxTnFHbGFobHR4bUFGYTBDcjF4?=
 =?utf-8?B?YjJJUWdzTmo5ejVjdy9ZUnZlMEdta2poenl5cjgrMFRQenNydGp6eS9QZTJ3?=
 =?utf-8?B?bTJKR1E2YmNaeTA2NzN1VkNpbHNmMHYveWRzZ0tlWUNlVWJ3NVJQaHV0QzRV?=
 =?utf-8?B?MXhza0hoTG9EOEc3MjFRYzJ1SVpvWExwOGpWeFAyYnkvTFJPNGd1R2FoVlhv?=
 =?utf-8?B?aStyakNmOEdISWlsTk0wQy8rclRrSjViV2RhZHJ2bXl0M0x1Z202TkkvQkVz?=
 =?utf-8?B?TFFjQmtzaHE2cjN0QWZHZmJDcTN0TjV2VHN3WlU4akR0NW5VcHFoU2kxalRP?=
 =?utf-8?B?NkliTFczUTgrcGI1UE1OUVYvdEM1RS92eHZHakRtNDlHNGRzMHRIbENUaVFI?=
 =?utf-8?B?R1YzR0VWZmdtMWltWFNpRDRTQml6Y1V6Sk1OQXB1TzVxSWt0Z1hRQnpOQTVU?=
 =?utf-8?B?WmpkVnZUN2hIOVJLS0xmaTdqN0FaM2FyS1g4QVZUcWZHdEpzcjlYRTNTZUZB?=
 =?utf-8?B?enNxSVN6Nkx4NDVrTVdBRlJOVXJGWjhBVEhvYU9OeWxXYWxoTElxdXVRTG1q?=
 =?utf-8?B?MmFPbWJpNUJ6dTAxeUlma04vZXk4RktNT1lRQ0dhL1ZmVisvbXJsTUNxdzRF?=
 =?utf-8?B?QUJqWjRXUHo0ZFlZUzkxZU0vY1dqWXcycFZJcVgwNHE0b1ZqTm84UEx1cDhx?=
 =?utf-8?B?L3c9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 374ae95b-4827-41f0-c82a-08db89362d7c
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jul 2023 15:29:58.9359
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JzebeppqR5zcJMsAvCEMdpQd59dGsddVCLtUDrnyO4KPeAr57n+YiYzkiwFmVazEBlBqKVIr5zSKTDPZ7YT17IAd5bxxuPScjS/6PoL1D/Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6330
X-Proofpoint-GUID: IloGG5b07Lr86F27DfNxwGeUmsB6P4Lo
X-Proofpoint-ORIG-GUID: IloGG5b07Lr86F27DfNxwGeUmsB6P4Lo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-20_08,2023-07-20_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 mlxlogscore=864 clxscore=1011 adultscore=0 lowpriorityscore=0 mlxscore=0
 priorityscore=1501 spamscore=0 phishscore=0 impostorscore=0 suspectscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2306200000 definitions=main-2307200130
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Jul 2023 15:30:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60623

--------------foeql2D0wpES60cGmW8TIkek
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Bruce 
Ashfield, Joshua Watt, Ross Burton, Randy Macleod, Trevor Gamblin, 
Alexandre Belloni, Michael Opdenacker, Antonio

*ARs:**
*

*Notes:
*
*
*

*Medium+ 4.3 Unassigned Enhancements/Bugs: *70 (Last week 74)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *47**(Last week 46)

*AB Bugs: *63 (Last week 66)
--------------foeql2D0wpES60cGmW8TIkek
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Richard Purdie, Steve Sakoman, Stephen
        Jolley, Bruce Ashfield, Joshua Watt, Ross Burton, Randy Macleod,
        Trevor Gamblin, Alexandre Belloni, Michael Opdenacker, Antonio<br>
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
      <p><b>Medium+ 4.3 Unassigned Enhancements/Bugs: </b>70 (Last week
        74) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>47<b> </b>(Last
      week 46)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <b>AB Bugs: </b>63 (Last week 66)
  </body>
</html>

--------------foeql2D0wpES60cGmW8TIkek--

