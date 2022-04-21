Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 477C1C87FC8
	for <webhook@archiver.kernel.org>; Thu, 21 Apr 2022 16:46:13 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web08.23779.1650558693062510152
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Apr 2022 09:31:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Hcted6f0;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=1110e4ffb8=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 23LDc6xs024711;
	Thu, 21 Apr 2022 16:31:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=oM2IPbswD6wbmlF2Sv5BvBRL+/QFDLoZKtlYGR93JTU=;
 b=Hcted6f04yvUdcHsSoqFL4z0IxjhYae5JAEl0GtYHmr4MnYQQ1TZvpDT3J+Laud744a+
 P0tOZrCAhjus7Vgj09OprYoTbM+k93LbUhDnILYi2vdZe2jtJxXsrXZvS5zbI+0GjpxL
 neU2MlH51RED70SHsgX8VNKtwRYnrualRQRTGmNmFB3UujxtCYIRW76iOMbPhx6qlnla
 GkaHN+zkQ9YNhpYlc7m7248c0Z+2vR/xaEJ3JUIoY1bZUHupOgfhutl1LpLzFgoJEYji
 69Qx0jryD29B/UoJQGLta3GrFpnoLEuSgaZF0hEOxgTO0WMVngvjaNHa9vJ/c+VCNany OQ==
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2109.outbound.protection.outlook.com [104.47.58.109])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3ffpqn3yys-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Apr 2022 16:31:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lDo/ME/tFcURo21KktV0rq/2X9LCcFEOra6aH3VKG/3aST5N1EIQuE96U9H0er3gG/edWJVtY3frEp574rbP9dYBBpYCC0H3Xl+6qgLkFwOnXrMcdOqZW1z/otvQfSBgRhbKfMYOv0L6L1ESF6OlOAqq07ysMn9zw8GlPWDT6vBJzJfnB5EtX8GvemCXIgIYQBY6F8ENnb0VNTN4I2sdO7swnn6gJ6FDfDoUeQaqsHDsY32vDoZnW/y/vbKD/2r7sC+UximqkpxHsJhJuPVxWgYVPiBpz/DrzHQNy0PkZO5XjQ/c0MYewACzlgGOifOorfI/bVAoY8yyr9eMC3Usig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oM2IPbswD6wbmlF2Sv5BvBRL+/QFDLoZKtlYGR93JTU=;
 b=WNB1Db5W/dItax8xa3Qhpw7JyESITzWvagbqTLdU6E9HGHJVDvEPxBbchwrH83OJ9nr4iKIVX2JeqOHlF79ri/5/3nrC+GRgPsuaOBd5ZY1XwYRcla4doMj/4iXQ1X/+AmQc8ldkZYFrU48SvKF3U223NdxUiAid8aPorYTI1Pw0bICA8Q6qpveoVXK69ZcufK3VZhklXlFo/geeFaDYsLzwedb4s4QK7Mhz4c7csBQyhx0rDOhpXMJDZlGhcJBU7PbIwAroQAU3MuGm/seh7+v/qcksR9fILs6RPdcuZDd3qrTedTA79OyB+0gyWKrVMvKJT5nreKh7+YulvEqFfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 MN2PR11MB4711.namprd11.prod.outlook.com (2603:10b6:208:24e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.15; Thu, 21 Apr
 2022 16:30:58 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4442:39de:d36c:b6ac]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4442:39de:d36c:b6ac%6]) with mapi id 15.20.5164.025; Thu, 21 Apr 2022
 16:30:58 +0000
Content-Type: multipart/alternative;
 boundary="------------dSwLeiBgieXhBSJA7HzBJmoL"
Message-ID: <6ce6730c-ebc5-d26d-19a1-7a2c4637b7ad@windriver.com>
Date: Thu, 21 Apr 2022 12:30:54 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 4/21/2022
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: alexandre.belloni@bootlin.com, Bruce Ashfield <bruce.ashfield@gmail.com>,
        daiane.angolini@foundries.io,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        luca.ceresoli@bootlin.com, pavel.zhukov@huawei.com,
        "MacLeod, Randy" <Randy.MacLeod@windriver.com>,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        "Wold, Saul" <saul.wold@windriver.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>, tim.orling@konsulko.com,
        sakib.sajal@windriver.com, akuster808 <akuster808@gmail.com>,
        ross@burtonini.com
Content-Language: en-US
X-ClientProxiedBy: YQBPR0101CA0175.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:f::18) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e15c8041-89bc-4f2d-7866-08da23b450a0
X-MS-TrafficTypeDiagnostic: MN2PR11MB4711:EE_
X-Microsoft-Antispam-PRVS: 
	<MN2PR11MB4711811AD5069F02DCFA2A63F2F49@MN2PR11MB4711.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Lr1PtXUSgef3KCXvtxUfsrHtwC1kYUhnlqI8SOkYH2vAM67q4k3KWS57MQb35khwtSLki3kdHx6E5cSNTa/F0MKTsHNRyNrUd22ZRVlXtjutNGutpZk52npn/moufo6U7z5GKUqz2K+t+7JG9sLL12ElOhiseyGkVCZhjRVvy7bv0fzZtAuPD7LkQwt7YPzAsy2F+wSsV5j4GyY0mLqrzDBxJV43/sB3KlLWxJMQUOzvyXuk84yd8A2/gtqQurb5V99JKlLq2ARqZrr11zDx/5EcRnlWivC7FnWWaNj4OHw+b6YIxdVmlZMLcI1i7RWmoYBbCwtyig0mLvIfZHSbiLkvps1F5FSOKfvq5aiunOaFrxxUcyNSwZgW0IS33L5YNiOIpURSxjxdwmOc5itjvmbK4DhX/o5710/5u1JCWJCeBYmSkleomc9z82bkDfFOKTpnH6shYiFw8QSa+GY1tkayiX+RXrCWL/9uZMeQGdN5PQn0uoLfO1fAqc5RlmRUCYV4YBdyTQ8qP1NeOaP//mggp/gqyyqon3nnsv9VgK0L2lihXppnwkMAsIpNObuK/P6UXmuFZu66zS++HAo/7sgR3CW0AuDGnzDrheDez3AYRTesaSpE1mjZYp/y9WIgAzhyN5y8yH0XtbeFzCyQ/WDDVu3dxJDKscE1GjhKQLj4TTWJhwczQk0FE3cUIpzmIH79P/jRhA53JoDjrNljfCih2ybOHVgIn5gf5mpV9QBw8uQtZEv9XW8T0bRNM3+qOumpF8FQIk2fb7B3lky7bvuitKhdiB5u57nryhG/FfU2z0/6eC4vXM5/8zzqMe+5aXs9ysSRjEX5rW1fRO4VKzb24tK6ztM5YVYmYKpV++Y=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(508600001)(966005)(6486002)(4326008)(166002)(2906002)(54906003)(38350700002)(86362001)(38100700002)(31696002)(66946007)(8676002)(6512007)(7416002)(316002)(6916009)(66556008)(66476007)(31686004)(5660300002)(6506007)(8936002)(6666004)(36756003)(26005)(44832011)(2616005)(52116002)(186003)(33964004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YmV4bmJoV2psc2RORno4Z1lIQm9rN0REalYwRVhWeSt0TnJOS1NEeFgzTVgr?=
 =?utf-8?B?bkRIZUdSN3h5clMwSklqM2lPRy9WdE5TVE9PVEs4TG9Oc3JXK05wVlVkZmEv?=
 =?utf-8?B?L0gzdXk1ZlhvK01QOWw0Vnp1VEhER05PdEwyWXZaS0FYek96ampHN2xSNUFu?=
 =?utf-8?B?RWpuZHI1WW5nYlVLVTI5L3VzSUp5M00yRkFBdHJCSVNZY2NtMGNYUzlpcUFu?=
 =?utf-8?B?RmFLMzA3UVdYTXVSR2dmeFpxSytTWjYwb0xYUkpuQ0piM1ZWMGxHeXJEYngw?=
 =?utf-8?B?Nko5VzBzcGx4M0pIQ1VPTWV2bFViNUVzanlGbnFaNktFVGNReDFqMWRsdEs3?=
 =?utf-8?B?TU80ZVcwS3NDMHo1S05mQzFvZWVWTGZuMjhvaTJPT3U0SDR0dzhiajJnTXRI?=
 =?utf-8?B?dmgwQnR3MmZtbURFM2NrMDNLQ1ExbU9qSlF5aDVza25ZV09Td2dKM2U0NG56?=
 =?utf-8?B?bmhYM3VKVmhnbHdHbDBGQm1DekwrRVMvWmU5UHhDWE9nN0F2WThVT0cyYXk2?=
 =?utf-8?B?Mi9aSitDbThuN00wWWNkcE9YcTJDSzdzS1pvVktxcGtjRkduYmxxSUd0UDNk?=
 =?utf-8?B?T0xISjdkSk56N2VlNXROS3ZvUTgzMnJmUlpLcWJyQTNBT0JwVXU4Y2tKeGMv?=
 =?utf-8?B?ZUtwOGk2dVhGM0FyRkt6eVorc2JyM3pzOU9Cd3ZJUmgzNUhPVFFPTFpXVnJj?=
 =?utf-8?B?cmhQUjZWRUJqMDgxRVJHbmpnMXRzamZ2RG5GZ2xlR3RORk4xc2lDRjhGamJM?=
 =?utf-8?B?VDBPdnFpbWY1QUFZTGZleWZNVXA1QjZlcW84MWxJS254czBMNkV3eU9DcG9h?=
 =?utf-8?B?UndJSndRdUZqNHBFL0FUMzBoaEtncmNIOEVqaGdoUjRXV0p3RFplZjRXUzBi?=
 =?utf-8?B?d2xwTGx0K21yb2tGUVRYUStaaW5nd2tmSjlnUVBRam4wWU9vcFZ5dU9HL1dn?=
 =?utf-8?B?d1EwdEM1ZFUxNGpzZ000WFoySGpKYndlNmtGa2hxdk9tU3M1MmUvTSsrQUh6?=
 =?utf-8?B?d1lLWEpwU0V0SUsvenJ3Y21HZjNZQ2ZuSkNZM3lvYzZ3Mzl2THh1OXBFc1J5?=
 =?utf-8?B?aWpPZ3IwNUtmRUJoZ3dvMWQzUDhRNm5iVFE0ZzBCQUtUQnFMVStWRnY2djRa?=
 =?utf-8?B?VnpqM1R4b2V4VDlnVVNGeHIrOFlnMk4yQ1djN0VCRnlYYXh0U3N1cWRGaVBs?=
 =?utf-8?B?Q3EwbmNQUnEwYUo1MXhBTEc1SW82WjNkc3M3WW5Qb29oWUtyL2ZSS2NIS2VB?=
 =?utf-8?B?M0xGYVJPcm40ekxyT09Way9SZVlyd2p5dGRzYlRDSmNSU2UrYWI5cHh1RExl?=
 =?utf-8?B?eitrRlRVYUNBUThhMlNhdWkrK2J5Q1BJNW1qVVMrcUcxYmRKNGNDNDg3em5p?=
 =?utf-8?B?OHliVFBpTmtBNGZONlY5eGF4U204d1E1QTg3eG9tcC9HS2JvZDFoMVd4RkpM?=
 =?utf-8?B?VmlCQUgyL2lxTTBoVDRrMFVFUkMxN29yM2NWL1FVSWRwR0JKcTQwazZlZW11?=
 =?utf-8?B?SWhWNzRJVVRHRVl5NkhoQkpjZlc2MnlpT2VBdUwyblpYOEdHcVpZdjNuaTg1?=
 =?utf-8?B?SkZqZ09BQlBxSDRGTWlTaURISjNKQW00dGdBYnpENmZtQ21SUVpJSFM2VVlN?=
 =?utf-8?B?Z3JNL2JZUktGaytGczZwL0g5VTdnVWFwTXlWOXNjVkEyYnRRSHZHYVp2WUtt?=
 =?utf-8?B?QTd4eXgybXpLS3hrLzMwVHY4TXdHZzZiWElycDU5aFoweHNjcWlHQ0h1STRD?=
 =?utf-8?B?UzNhc1RYd3NzcUIzWDVDTkJRZTB4aVM0SGd5WGM2dGpPd0x2cW9EcGVIUWd2?=
 =?utf-8?B?VHZDOVM2SURzNVFVYi93L2NyOWk2bTlkUmh5SFhIeWtNQTlzVU1IaGJNcytw?=
 =?utf-8?B?dWQ3MlpITXF4Nk5jOGtQOVFjMzhSS1R4bG1qa3FCY2cwNXpkMGJ6S1VRRy9N?=
 =?utf-8?B?bGxzaTZPM1drRUF0MU1EUFVXZzlSR0lRc1RSelZKRXozV2sxalEraVMvSXVY?=
 =?utf-8?B?SGQ5aXNZUk9ISGo1eTVBVzRtOW5uYTdQT2E3a2dOQi9ZOWRKc0pNS1o0SzBt?=
 =?utf-8?B?Yks0N01rdGxOTzVBU0p4b3FuNEdQd3U1U2hidmxPYVhNR0UydUV5alJXY3Vk?=
 =?utf-8?B?bzVYazJteVlzKzQyMklqZHRPWlpqNzZIMmZSZjFObWZLK2kwZjFpOWtqcFFD?=
 =?utf-8?B?VFdFd0lzTXZPeVJCNGVVV0pvWGtMSElSb1cvQmdMeTB2Q1hZdEhUUjFRd2Y0?=
 =?utf-8?B?S2NVdWo2TUQ0djNHTzlCWnJLbk9LbElaQlBIV3dFTFBWTW1abm1KbGJNbVk0?=
 =?utf-8?B?ZDUwZ2dnRHBJNnVUaTV1d3dSbTRnazFMMzlaT216cTBuTGloa0plVnQ1RXFW?=
 =?utf-8?Q?olV2/N8w4tBcbrm0=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 e15c8041-89bc-4f2d-7866-08da23b450a0
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2022 16:30:58.1531
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 qRzyEPA4wtQN5XLWsSQe6bwxRBVNiQgxFsMx04WQKEnksnOc/Fguo/DL5qam427eT8hke4zjWaLtaLBjiqGmnu8uLqCJ+HCypL8LuJG+YWA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4711
X-Proofpoint-GUID: _o8_edvMXNXHdzYXfz0PWh6xZIELmhQp
X-Proofpoint-ORIG-GUID: _o8_edvMXNXHdzYXfz0PWh6xZIELmhQp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.858,Hydra:6.0.486,FMLib:17.11.64.514
 definitions=2022-04-21_02,2022-04-21_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 phishscore=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 clxscore=1011 suspectscore=0 mlxlogscore=566 adultscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2204210087
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Apr 2022 16:46:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56832

--------------dSwLeiBgieXhBSJA7HzBJmoL
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Akuster, Randy, Richard, Joshua Watt, Pavel, Ross Burton, 
Steve Sakoman, Tim Orling

*ARs:*

N/A

*Notes:*
N/A

*Medium+ 3.6 Unassigned Enhancements/Bugs: *76 (Last week 74)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *43**(Last week 41)

*AB Bugs: *53 (Last week 58)
--------------dSwLeiBgieXhBSJA7HzBJmoL
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Akuster, Randy, Richard, Joshua Watt, Pavel,
        Ross Burton, Steve Sakoman, Tim Orling<br>
      </p>
      <p><b>ARs:</b></p>
      N/A</div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <div class="moz-text-html" lang="x-unicode">N/A<br>
    </div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.6 Unassigned Enhancements/Bugs: </b>76 (Last week
        74)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>43<b> </b>(Last
      week 41)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>53
      (Last week 58)<br>
    </div>
  </body>
</html>

--------------dSwLeiBgieXhBSJA7HzBJmoL--

