Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF8DEC30654
	for <webhook@archiver.kernel.org>; Thu, 17 Aug 2023 15:23:39 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.190600.1692285814399367784
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Aug 2023 08:23:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=g3WVEiVn;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=75931c51eb=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37HBBEU0007500;
	Thu, 17 Aug 2023 08:23:07 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:message-id:date:from:subject:to:cc:mime-version;
	 s=PPS06212021; bh=3dKkq0ehXlePNx3g/Ey8oiut6Ph6A+PJ/IyM0bxc370=; b=
	g3WVEiVnzYuAepIEuoflEF5pC+rboI5GHbNCFTzfr2erfUAZWk/yBspjt4ijhUsP
	x/Lcwa8JsOYDAI7ytOqTReOkW3JXU1R9qACk6owtqnsx3XkPnzFzIRwlTH1RPQbF
	ONe0dfw7PxENja2SusIxjWw2nn4/cujQrr/wEzTJYraE6q256lqTYEd1T0Kb32ec
	xNFuq8Oax9qee8qE7G9N9SxBAKDDSRSQimWRaeCFXhh5q60D2cxr5qoMeZiqbQyQ
	DDvdfX8Rn6NzObSnIKtfoGWfIHo7g0YlQi09SMzCXuyFejULyE0dI7KbIl6xLr8O
	pUTTPH0LgOOJXdCmPIwj2Q==
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2102.outbound.protection.outlook.com [104.47.70.102])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3se5bycyfd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 17 Aug 2023 08:23:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PxrIKYE+I5OtqKwXJgv72M+Iq9uNzHjqILbzGAkhFRiO+vZhOVNTIt1RXA5RGo2nb+UUAbz1JPht5SvmdGQClEGBmJqULT137VvweRtGK7eitW6htfi0PBSvNO46E8pFlXmB78AFP//+ViQxHGE+J2mf+PQ/riSsvypmqJPXdxGLUhJmVUvgJVHuwdgO+Fb5dgMVkO932rjIuGyJhZzHYvN5FDCgASQnXShylk2OcVmOEyKHWV8OLRa+NHy2EHFXnw0CnWpk03zMgSFbFx/zXgy4+x2VtImwyZRAlOJoLqKZ6FDOlQmXJUMgonbPQAQ6m7pX/mVYrch36cMdNt7mIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3dKkq0ehXlePNx3g/Ey8oiut6Ph6A+PJ/IyM0bxc370=;
 b=VhgiCEpi9b1rvhRUi9SHeh6fAAWhmfFZCIHpMDrKdO+zXcxHQua/tb8rsuxB8BwEoImk/bb3SgrrejUiNJsve8wd0KFPbVRRNYdtvneNPIIDBONUueoeftSOAhKREnFMk/RPxs1NwHBSrvSX9PqK801s/SR5WW6gFfA9lK4x0CfzdyZwwHrhs3qlx6KFuz4ySiYrOeVPI/1KvJOWbuvIrFsaBKla5uDmOQ1fmh3RZ5vGTZgQw7i5NFh6kcwQSv4npSPZE2Cc58Ib6e21DjekhbV/ReFgx474xNllVUwc9+quCZeTvon9PwgFw+0US0xXainDH0IOtpeFUpGK5zKvjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 BL1PR11MB5270.namprd11.prod.outlook.com (2603:10b6:208:313::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6678.31; Thu, 17 Aug 2023 15:23:02 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4044:65c4:486f:538b]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4044:65c4:486f:538b%4]) with mapi id 15.20.6678.029; Thu, 17 Aug 2023
 15:23:02 +0000
Content-Type: multipart/alternative;
 boundary="------------bdcWXkVNqLj2rYauYE1IHw0C"
Message-ID: <bd6b5b95-ddaf-1784-5a31-03031b168594@windriver.com>
Date: Thu, 17 Aug 2023 11:22:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 17/08/2023
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
X-ClientProxiedBy: BL0PR02CA0076.namprd02.prod.outlook.com
 (2603:10b6:208:51::17) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|BL1PR11MB5270:EE_
X-MS-Office365-Filtering-Correlation-Id: 12e4448d-f6d0-4791-651f-08db9f35d8ed
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	AKq90cBjWDtsOE/7g2szvdmfM5+0SpwkA4aK1XHPHm2UrHtawH602nkVq+Mg4F0N1bsrZER7usOo3+RjyJifHQbImWKdWhnpI7T7OIRoHxfFBmQNHRSOSEWjtPjoYzOhodKVquIAuBAo7kiJL2VVlzw40/qsRH0XpkkbYxyKbJ7laAhwJFBiAf2gKxabgOwaGQNDEeiOu/LSyLhDZD/+I4Ris4uTjb5Up1QvS7pq4/kOdeTN80yC8BI4d43Bp5er+M+nywGR8j5Bcs3g9Szgv5IwYPmGkYOEOy+zzjJtGwd44nYAN4wCrbiIhJaUyC9cfbtic1WRXX+Xa8qcgRU6wmE1JyJhN/eYBGwBfQdsGZkcknMbiVY77aWoeiDzxxTCx0knSDJ5PNWYYZ+LoYmFGuygK6vIXoZDyrCVAHqQf5jqWjDmBqMQtHDEbwnVRtHWRlpejrpJQB1jpBXNiR8pY3JbZqXUwNcg3d77jllPLPncWO7ylq+WmEbl31gXIeXq6oF79tlWHqL+DPzMLWZPtwchgmhXmGzDFv89GBLgd1RQgI2fWP1yVKzRF0HzTPqhWwBZEKqguar9VSv6dZr2rKPKneHG8eUVqiYF+gZEnK2Lzy0xng3zCNZV48yUItfL35tTXYIMZbPZcEJ80S0oHA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(136003)(39850400004)(366004)(346002)(376002)(1800799009)(186009)(451199024)(7416002)(2906002)(166002)(66946007)(66556008)(478600001)(66476007)(6916009)(6506007)(33964004)(54906003)(6666004)(316002)(6486002)(966005)(2616005)(5660300002)(44832011)(6512007)(8676002)(8936002)(41300700001)(4326008)(26005)(31696002)(36756003)(86362001)(38100700002)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YTBPNS9LQkQ2dlViK1Z4aWkzS01RQkhlMHhENm4xL1pqMklZRTJRb0NjUy9h?=
 =?utf-8?B?dTU0SWhRQ0xPMEJaMy9rbTdmRHVKVjhNOFVDdVoraTE2K3oyRlJkUkExcVYx?=
 =?utf-8?B?ZVhCWE9zSjRVTUE2VEZwWGR5MnNYaVlKWjNNUElWSXYrbzlCNkxSMTN3L3FJ?=
 =?utf-8?B?ZVc0NW9BTlR5TUxyNGFSaHhaeEFqY01QSnp4UEVyOGNOUFRTZTVweWFsRG9T?=
 =?utf-8?B?cmZyV3U1bVVUeC9MUml0K2o0Tk4ycHdNMWlKUERGdjN4WENyM0lISCtLR25s?=
 =?utf-8?B?cFE4L251djFTczdVOVc3MDBGRThkUHUxZlNRVnNMdjlabnhLVFJFWmw1MldY?=
 =?utf-8?B?WVFjN29pL0Q3K2toTFBvQTE0d2ZleGJvWnJaOUtGdXJXczRicERzc3JsT3VS?=
 =?utf-8?B?Q1B3M0Z4VUx5eVFoMEhjcmMyRGtpWDdtTG5XUEgxRkU3alhkNWZrVnhLeXRo?=
 =?utf-8?B?cXNFOHczcDFUZnVhbFpZY2pBMGZXMllpdjROTkJXVUJSVG00MFRnZ0JjT2lM?=
 =?utf-8?B?WUpub3g3WWZxTHZPWlBOdkk0VkZQTDlKbmhrcFhuVTRuSDY0VGVhcjAzaUlh?=
 =?utf-8?B?M0IvenZUM1BvMy94bmdteTNHSzVxdmgrWmxNWUptQzZud01VWTNwS25GV3ZR?=
 =?utf-8?B?aCtsSkhRMVV6REYzUUJ5dHBwRXpVcjlaUUdyb0gwRFBucU1JVTV5YnN2VHVi?=
 =?utf-8?B?Z3dCT3RvL2NoRnU1QmFpVU5WVWt2T2dWVVdaSVRJYzh1dlhyY0dnNnRjYmRy?=
 =?utf-8?B?UVZTR0ZZR2JGVVA3ZTNSazczY1RoZ2VnTzhuREdDemczejd5b1FHT2xpT1Qv?=
 =?utf-8?B?a2wvMTJEeHNBWEN0K0NrVUNGU21IUnB0QVZOSDlZdDNXZGVUeC9LOGUxSk4y?=
 =?utf-8?B?Z09HV2RiRDR4d1k3RVNjbGdWb1FVVDZUYzNrUWVZYm5wTlB3N09BQ3BVOVpG?=
 =?utf-8?B?MmtnUVdtTlhBUXg4aWlsck1IbTlTa3NRUXhLNkdwSnU1N1F1cC83MXhrT1lz?=
 =?utf-8?B?em1CWDVYeUZxSUdQdlV2eGxiT3ZVNUYybTdtQTdyWTRqRFJvVEc3dFBVTUxx?=
 =?utf-8?B?V1FHZjFFYnRmcG0vcVBHb1YxVXo5UVJRS3ZHeDk0dEE2L0ZWS0hkTHJXYTlq?=
 =?utf-8?B?cDYvOFk0a0VNcldFY2MwTFlGUDh0bDBUTjRzYVhkKzgwNnZ0Q011eStTNHg3?=
 =?utf-8?B?b0I4elZsbDVweWFVL2RkQ1pmZUxDbnQ1QVQ5L2liTjZ6UWhtWWJRNlBGSU5K?=
 =?utf-8?B?Rk4yQTVhbm1HNW92QmpwWTB5Z2Y4V0ZlUEMwUnNYMnF5c3RJTVhZVWlROGRP?=
 =?utf-8?B?Mm1LNWhwczdlUktpZWRwdnR6NWdTZ0EzUXBxUG1lL0oxaGNQMy9sWGZjNHFP?=
 =?utf-8?B?TmpXWjlBSE1IWEtBZitBQjlNV1I5T09TbTFSRXN5Z3pPZGNBaXJGMUREaTh0?=
 =?utf-8?B?dkp3WE9mdEdzRVhUTDZweG9sUWx5eXdPV0FBRS84NWpHeUZhcWtJaFFUUGlq?=
 =?utf-8?B?TDVzcnR5OG1vbGUzN2FRNUp0TDdzdFZRZG9lU2lzQmZUOVhSUHZSUng3bEhL?=
 =?utf-8?B?SENWb3YxOUZHWTMybFVEQVZ4alVGWXVRWXNMU1VpMjZTNHFtRk0zNks1MWZH?=
 =?utf-8?B?OXYzNHVaUit0TUdiaU54T1lmMDQxOXAxTVJkejQxNHJCV0lFdWJjT2xCQjVB?=
 =?utf-8?B?SmRZUlJNUVVLY1RZQ1NYTVlGdmNBUkpCMGs2cHZJbHYrc2RuZnZuYTB5T3Rl?=
 =?utf-8?B?UDdvS0lYQ2E3NmkxYmtrb0xnT3lNYXB2NWwvMzI3WGJiZUt2Z0NsRTdKazA1?=
 =?utf-8?B?ekozNitCYTdxMXNoNFhCWVVmQnJSZDNXa3FqNnZ1R1Mza05oOU5QWTNKdDNV?=
 =?utf-8?B?OGRjUkNESE5MTE0xVUdMcVVISFV0enZ4QWFjUjBIZU1rOHNtMW9hK3pHanp0?=
 =?utf-8?B?QThOVXVDelo2Y21jLzRaVnVZaVdzbTBGYXprTU1rM0d5T002dkR0N1V4ajdu?=
 =?utf-8?B?VE1lUFRURm5RcmdVRWxETzMyaENMTnU5ZkU0VkxFWEhnL1dVNG9qcUhyWFNJ?=
 =?utf-8?B?dHllb3UrZEMraWtVUFRTN09RZTFEbytRa0lWdVhwSm40clNqR0RaenA5a2FX?=
 =?utf-8?B?MDZQTVpueWR3SHNnNUZkei9xaU1kQXMzdlJkTEl4NTdwQWZyeExlNXN3Szdt?=
 =?utf-8?B?MVE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 12e4448d-f6d0-4791-651f-08db9f35d8ed
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2023 15:23:02.5796
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K6dust96yi7VCsG/h3fz8yqPjT09Y2ZfLM69wFdmkMML6Zjta8SPnYt6QVJkwBMPRDLEwXSOBb7dcxziROyMmK/XfG3nazIp5FUa592gG24=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5270
X-Proofpoint-GUID: 9wORf6rq4OBdhqCwTQpVmK2e5oytxm7d
X-Proofpoint-ORIG-GUID: 9wORf6rq4OBdhqCwTQpVmK2e5oytxm7d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-17_09,2023-08-17_02,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 malwarescore=0
 clxscore=1011 priorityscore=1501 mlxlogscore=828 lowpriorityscore=0
 adultscore=0 mlxscore=0 spamscore=0 impostorscore=0 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2306200000 definitions=main-2308170136
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Aug 2023 15:23:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60821

--------------bdcWXkVNqLj2rYauYE1IHw0C
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Bruce 
Ashfield, Tim Orling, Joshua Watt, Ross Burton, Randy Macleod, Trevor 
Gamblin, Alexandre Belloni, Michael Opdenacker, Antonio, Yoann Congal, 
Pavel Zhukov, Edi Feschiyan

*ARs:**
*

*Notes:
*
*
*

*Medium+ 4.3 Unassigned Enhancements/Bugs: *65 (Last week 65)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *42**(Last week 45)

*AB Bugs: *75 (Last week 71)
--------------bdcWXkVNqLj2rYauYE1IHw0C
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Richard Purdie, Steve Sakoman, Stephen
        Jolley, Bruce Ashfield, Tim Orling, Joshua Watt, Ross Burton,
        Randy Macleod, Trevor Gamblin, Alexandre Belloni, Michael
        Opdenacker, Antonio, Yoann Congal, Pavel Zhukov, Edi Feschiyan</p>
      <p><b>ARs:</b><b><br>
        </b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes: <br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.3 Unassigned Enhancements/Bugs: </b>65 (Last week
        65) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>42<b> </b>(Last
      week 45)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <b>AB Bugs: </b>75 (Last week 71)
  </body>
</html>

--------------bdcWXkVNqLj2rYauYE1IHw0C--

