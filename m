Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.32707.1629992881158591367
 for <yocto@lists.yoctoproject.org>;
 Thu, 26 Aug 2021 08:48:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=SltNytCB;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=38728accdc=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 17QDAFZU012157;
	Thu, 26 Aug 2021 15:47:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : subject :
 to : cc : message-id : date : content-type : mime-version; s=PPS06212021;
 bh=CboQRY8M35j4PNzwJU1L0fjNhWa6AKzazAG0CAUC8Ho=;
 b=SltNytCBRWdrqKC8fDRzWZ4gLj1kHLgl8lbweeKoapZyGs3T/6BmvdRhvSey7GcZDMtg
 wGg1hFvKMEaq90Lid0XnQfaF92xY1AFKLodMZxxHwqqdhlDVzvRblsAOWf+pdxp2ZxYu
 vQzx0j14ZhH8/dLuvtVoaeMsrmpeUQ39e7QlzQoPxfH+V7LcycGCTSwltqqBLN/3reov
 JQ4+egZnuruixpQFOFYMRATcZRH2psIfe/rC+wBQ80avKpNGzIgZE6xPixJlt9RBlFmz
 e40Wmb4dqvocEAi0YS3NY+PyfDdV68rrx7euVXJ8kBqd3ymFO1PWw9uXAQwlLlIy3Tqj rw== 
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2103.outbound.protection.outlook.com [104.47.55.103])
	by mx0a-0064b401.pphosted.com with ESMTP id 3ap71mrb17-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 26 Aug 2021 15:47:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YMYlcAXJBm/kzE5XCVO+PEb9TUuiHzlStCacpru4BGtStm1Rm0F5wMmT9hVLemZgXYJRMlRkrnfDTxPmCmnaJr1ze19w/a6kgWSk7Iz2UC8jmaiusIbJUYFqjzZElNk7S7Qns2RMWARCueaybSzdXnB4cEXlwQsWd5llzpQ1AaR9Dt3J8em6x66NaUg+3RW02ONx3NB359zMbdkhxv9ZBLjcxGNMaMnVjr+Si3kaYckliktdQ+vX85GcSIIjoVI4q2oDcmSJtSJ36d/3+BEUNXNy9m35HOx0PWoV7Kxyu5fv/Yr1G2ICVDmS4fcXAeuwKdZ0j3Ezg8u1vag8tWvOTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CboQRY8M35j4PNzwJU1L0fjNhWa6AKzazAG0CAUC8Ho=;
 b=h8Vg1lEhXfmpf01/n/dl1pRhywoi0FlKzOnkeNnHp/uL0Z7dxNMjucBKHuizE3U5FuOYYGRPo8QsRK2HA8N2B1duKqvAEtTSF6D3QWwf10xxBeyqqbR56fD3P/h1U6HofquzxnJmv1f3DNEjZoP+u23RvwNLXUoGo56V0FNgnM0Hs7PRBqqGOXOKy3O0SvNp2/azAA8Dk2EOwIv275Louz4j8zw/UI/ZVCaIL29EMLfKh6q/2pdRne0U6a7WYnhOoLLBR8ZJnTYOeNQUBn6VmimmxwHs4zc02H+esmJxymwnTM5AqflzE7byAh3OaNyKmF4AbignfLKoXseu2jv5zQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by SJ0PR11MB4877.namprd11.prod.outlook.com (2603:10b6:a03:2d9::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Thu, 26 Aug
 2021 15:47:52 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::fdd3:dc0f:a385:34d1]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::fdd3:dc0f:a385:34d1%4]) with mapi id 15.20.4457.021; Thu, 26 Aug 2021
 15:47:52 +0000
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 8/26/2021
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        trevor.gamblin@windriver.com,
        "MacLeod, Randy"
 <Randy.MacLeod@windriver.com>, steve@sakoman.com,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        "timothy.t.orling@intel.com" <timothy.t.orling@intel.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        alexandre.belloni@bootlin.com,
        "akuster@mvista.com" <akuster@mvista.com>,
        Bruce Ashfield <bruce.ashfield@gmail.com>
Message-ID: <b2904808-9ff7-98a4-726b-54ff358327d2@windriver.com>
Date: Thu, 26 Aug 2021 11:47:48 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
X-ClientProxiedBy: MN2PR18CA0015.namprd18.prod.outlook.com
 (2603:10b6:208:23c::20) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2607:fea8:c29d:d7c0:fa88:8bc5:c0d2:27cc] (2607:fea8:c29d:d7c0:fa88:8bc5:c0d2:27cc) by MN2PR18CA0015.namprd18.prod.outlook.com (2603:10b6:208:23c::20) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.17 via Frontend Transport; Thu, 26 Aug 2021 15:47:49 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a50835bf-66b6-4162-6a5b-08d968a8dd09
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4877:
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
 <SJ0PR11MB4877FC1E817E82F101321F319FC79@SJ0PR11MB4877.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
 kSNlJPo6lnNRt1IJs1UYSrc82+6zj7Kp7XgfL2R1dMMb7EtnmTk5K4d3eGqCjzpL+RSEuEx5qFHQyrHFc5MIKv49B5W7XLKs4KRL0xWRwJ4dQ4CsP3rzuGLpPXIfeDha8A/9BRpVVeV7tAJJjaQN4N1cVF9jyqJxjLrXGpxxsKD4WiUyQs5QnhBS8usP4I7uwWzlzJH6NAcWByssLwfLmLLDFUBBSYIs2XBdSeI9pwggnzxausHo9bVzc/Cprqh4hn+9c4AbwqgbSd+5rcGgeIRuZVJvZ52dXQymUnQ++M4uDsVtt78lhFBLc7CxG0Zt6qKW/96xm+cm1BVSZjVGj2pnalshJLjJGLDHeyFy6F0U/2bEhA2zvHJ9y5wUrCh3kqPpNIDvVRh94GpwNCO2v67vf2RSXTyIFGMP13R9OVbLXYBron0TlVjPBNvD4vxPd3FYSHEICVLseEN9C+On84thsOlp93ZMksfV2hY6mMjHwkLhYOdrNeQDt/hHP6jQRp1iPqgAL/epxjy3BEtjVjPyca2/K+8v1n72qi5lrwLwSkLokAz5wk9FLZM8k0hNxR+25JHW0wQenlj5hJzF7wWycWS2bBKryeK7K8o4WHyKxRof0eNP3AaUlnq15VEKuOhntqYDPeYxUdO7/vVNSv47ppu9cDxpqDg0Hfj4AfqAcBueetu+qQIdSBJqHG83bLUoO/y0LBtwosspg99STL2PHsH3g36xixNqFf7YOmneEY/Q8q9rJ0soDa3dDXawAzmet5v9p8dj94PHzunmaa0pEXuLuZjGmivNjl9S7bwdJMV2v9uu1A9qpembym77QSJC0wiKaRMnxzgnAQDiTSmXz6qvw48L+puNLUA+Cfw=
X-Forefront-Antispam-Report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(376002)(136003)(39850400004)(346002)(366004)(2616005)(38100700002)(4326008)(44832011)(316002)(31686004)(8936002)(83380400001)(478600001)(6486002)(54906003)(31696002)(6916009)(2906002)(66476007)(33964004)(8676002)(186003)(36756003)(86362001)(5660300002)(966005)(166002)(66556008)(66946007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
 =?utf-8?B?U0NCbWk4OVQxdjR3WmIzY0Q3SWlReFVoT0h0ZFNPNWlyaDk4akM0QzlXR2kw?=
 =?utf-8?B?dEJqdEhveFhYNGhjUHEvNWNzS3FmZTExNEZONGt5N2hxdVhEelAyaGJaOGRt?=
 =?utf-8?B?ZHQzR0Y3QWMxYkMrUHJiSEJHY2VtdXhXVkV5OEY4OGhycHFvWnBHSjBkYXdP?=
 =?utf-8?B?U3dyT1NwMlU2RXZSQlZGZFNMQXcvZ0ZnMXhkQUtrOHZmVjhYQU5JUTZsNTVC?=
 =?utf-8?B?UEx0bkFHOEN2U214ZzNQM2U2YjIxS2wzNzZtZnZ5a2V3Z0wvV0sxZFBKcnZz?=
 =?utf-8?B?RXkreXBVdmtBblA2ZWlOQU5RK2VVUmZpTDNxelJUVEpDYzVIU2EvVG8vT0Q2?=
 =?utf-8?B?T2FQbGxKbVR5Ykp3em1mQXJ6bHNOUXRNbTBqM3lqcUdwZFFUS2phR28yRXZD?=
 =?utf-8?B?OXRqL2FMNVVpMThnbmx2WU1xNWVvYWQvR0p0OGc1RlRTTEM3ZU1VcGZhK2xh?=
 =?utf-8?B?amd0akxkemZpckp5ZTNNckN0dlYvZnFOY1RZdldZMW5HTGFpZzUzQWFBYTAz?=
 =?utf-8?B?c3JzOHp4YXNYRU5qWldHdkxKT3RXOW1acHc5ampzS3lOSTVtNjNud3k5NzRS?=
 =?utf-8?B?MnRkV0tCVG9KMHUvdWFIUGdJdHlhcFYyVE5KL1kxdmkyQUQwN0V4a1l6dGtn?=
 =?utf-8?B?STM3U1dPQnZDM3dwU1YybXMrME9MMFJaNWw2NFZzcnp1VDZLZUNLQmlpMUQv?=
 =?utf-8?B?UWZNd0ovYThBWUlXR0RWVVdOUCt2VElJNEJIbVplMisyY2FuYmEySk1KbGhP?=
 =?utf-8?B?OGJScmRkanppUTBNSVE1RTFYcythNmhiemNSaG95V1piNUswS2tRMDVFbGg0?=
 =?utf-8?B?aXNFK2krbjhMeFA3VFpCSGhmOXUwVkNCTVV3RmJodlFEZTYzM1ZIYUFwdHU0?=
 =?utf-8?B?a0ZONnBZRzlLQW1SbzB2QTh5RkhpeEJVeWlmMGZlclhETWxnZ2ZocEVDZHpr?=
 =?utf-8?B?eTZCQzR3SFdzell6eTk2dDhya0JrTlZ2ZzVROVlQS1hDS2NyQ0NVa0tYUlJN?=
 =?utf-8?B?MHFBZFVlRmVVaGd0T244b3FNRHJMNnZOeXFQSHNZRWg0S0pMREgvbXFzcitn?=
 =?utf-8?B?VksyRWx0d2lrTkxNSExnSGVFYkg4U0NPbWVvZDl2cmxadGhsMk5TVDhicTJK?=
 =?utf-8?B?ZElzdWhFR001T1pxcHV0L0w0SWlVL2xOYkRoMjY3OTdQRXhhc2VEenplS0Yv?=
 =?utf-8?B?WjJCWWlpYkVLc295d01TRURPckM3clk5QURxcjJIZHY2SXQ1WG9qZm41VnY3?=
 =?utf-8?B?S3M2WWxURHZaRGNhM1RPUERuTlRJeUxBakxvTDUyN2V2UW9QMFNkc2Qyblpk?=
 =?utf-8?B?T0tvdGxDTm1ESGRVWTFHUEFINEVOV1djQmZ3TnhJSkNJOVl2VWVPcnBoWHpT?=
 =?utf-8?B?dnA1aUduUXVSQ1l3ZjlPSWtKc2pwUTBGdmprem5zeC9Mcm5CeDlQQ2JBWVJJ?=
 =?utf-8?B?K0VSMFVDaUFWQVJOek1WQUZOZEppNW56OTI3MjN4MHZRM1JaZHdqcmY0cnd0?=
 =?utf-8?B?OU5qOWpWNXB2VFJ3QWdIZlVEV2VlRU5HdEVIUG5vMUJLdmhRa0RPeEx2K3VY?=
 =?utf-8?B?dzdsSS9XcDVVWDlVeGFNVE9senZSU3FHRDRuT2JLd0VJOHA2d2gwR0dHbUJ0?=
 =?utf-8?B?enBhR1hreXRyNDdQWEdUTzI4VkNvWSs0bkZFZkV4dVRGUHp4VnJHRUY1U3pL?=
 =?utf-8?B?OXA1OC93U2xUUnhZUGd4dXB1WUxHSEhSTlFyWkVGOWpJQ2QzeCtjcGVYdU1H?=
 =?utf-8?B?THc5RStQMUpMZUd0Y0lDY09rdDZwODh5N3RjM2R0cUVkdUdQQUVXTXV0MXo0?=
 =?utf-8?B?OWpGWmdidXJ3aXFpclREVTNBcGFyYUdYMmNRNE5pMVduODgzU0VCNjhOdDEv?=
 =?utf-8?Q?qtLypWgKVNo8X?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a50835bf-66b6-4162-6a5b-08d968a8dd09
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Aug 2021 15:47:52.4140
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iEQe+D23HYtLlN4vFF1nu+uaZVcR0krmilL4xmCX9w7T8l4ZYoN/0J8T5P4UGUS0g+YYGyrypvPmG1c+FIgPdTUF2fYTVHlhsa0c2bk5gJU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4877
X-Proofpoint-GUID: Ei7YT2lQKW7QsjvKDeNSEeT-Wquh85JH
X-Proofpoint-ORIG-GUID: Ei7YT2lQKW7QsjvKDeNSEeT-Wquh85JH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-26_04,2021-08-26_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 clxscore=1011
 phishscore=0 mlxlogscore=999 suspectscore=0 priorityscore=1501
 impostorscore=0 adultscore=0 bulkscore=0 mlxscore=0 spamscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108260088
Content-Type: multipart/alternative;
 boundary="------------28F6D55224BA2F3D3C512B9F"
Content-Language: en-US

--------------28F6D55224BA2F3D3C512B9F
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees:* Alex, Armin, Bruce, Joshua, Randy, Richard, Saul, Stephen, 
Steve, Tim, Trevor

*ARs:*

N/A

*Notes:*
*
*
- (carried over) Steve encountered build failures such as the one in 
https://errors.yoctoproject.org/Errors/Details/593109/ when attempting 
to run dunfell builds with the PARALLEL_MAKE load averaging added. WR is 
testing/investigating on internal Autobuilder instance - Trevor is still 
planning on looking into this!

*Medium+ 3.4 Unassigned Enhancements/Bugs: *77 (Last week 76)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *38**(Last week 36)

*AB-INT Bugs: *48 (Last week 46)

--------------28F6D55224BA2F3D3C512B9F
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees:</b> Alex, Armin, Bruce, Joshua, Randy, Richard,
        Saul, Stephen, Steve, Tim, Trevor<br>
      </p>
      <p><b>ARs:</b></p>
    </div>
    N/A<br>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">- (carried over) Steve
      encountered build failures such as the one in <a class="moz-txt-link-freetext" href="https://errors.yoctoproject.org/Errors/Details/593109/" moz-do-not-send="true">https://errors.yoctoproject.org/Errors/Details/593109/</a>
      when attempting to run dunfell builds with the PARALLEL_MAKE load
      averaging added. WR is testing/investigating on internal
      Autobuilder instance - Trevor is still planning on looking into
      this!<br>
    </div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.4 Unassigned Enhancements/Bugs: </b>77 (Last week
        76)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>38<b> </b>(Last
      week 36) <br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB-INT Bugs: </b>48
      (Last week 46)<br>
    </div>
  </body>
</html>

--------------28F6D55224BA2F3D3C512B9F--
