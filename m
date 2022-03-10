Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4A4DC433F5
	for <webhook@archiver.kernel.org>; Thu, 10 Mar 2022 16:16:46 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web09.11264.1646929005342532800
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Mar 2022 08:16:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=eynQnROd;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=0068693661=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 22AFBMS8006093;
	Thu, 10 Mar 2022 08:16:35 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=Q93bDw4QSuLPXqeA75GOfz5G44rre/OF2HRaXH7SmJ4=;
 b=eynQnROdrExUJ+yVlQefeNGQLEiMBQTs5eaaY7947o5SFEL6Xew+AmNWubtz/vWMni7+
 sY8ViNt36Ssw0s0Jq6JpOSOzhOhfqdPPKdzZEm4uO4zbaY3FkOwF5yM5UIoj/nJ9h8u1
 JQ14aroSN0OeJLv7UCBN7BtGhWmhvjhkJlz3FhbH5SATvtFGlYM8WH+Ot69uZyM1HP+H
 OVrSbXq7OxDGc9eYwCdL81FuUycTuKY8MosliZjVzjykUI0Kl8AzS1F0mbJnNvQ9L3RA
 BPiXOdqQhzDAygQ9jx6yucLIrTYMd5a1nRLKuv6nzaOPhrL3Hue8JU1j8v/9hnvceiLe 7g==
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2044.outbound.protection.outlook.com [104.47.66.44])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3em416ccdn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Mar 2022 08:16:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VCzZf919BSF7cAbxpr03HSA+kPTksOydjzFbfr1nWGDkv9oqd7F0wlBdLRkCf7TfIwp4pxYlw+cCtYgdiqbqGhCEa2Y7nbrgpB1ZC8VT0YAvKrjhMSidJw5+rwVeCEZZhQM6cpo7Gvmfj5wPi1lIKKS3KFtJ4djYp5JRqUCOij9RwMLZRYBeARlFjuYeMBvhIqB76sOZ8CpZd/eramB7kxm1V1rulaOoW5ftLno9yd/GK2sXqzVD/IZ1iIBWvDX39LO/nUyPhqvInJ3gOSUqZhMASxI51jAls0wDXyGJhK/a/K7G86kGssmk8kdF6s6tpWSLJOix22rtC/1aD9LxCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q93bDw4QSuLPXqeA75GOfz5G44rre/OF2HRaXH7SmJ4=;
 b=RtV9VcR6rXBK6Kohh6X47XUhaK/mJ7l3pHaSc7d3BBFQvr3jv+PA9LY8hAKuYNg9XmOSNSYejt7VTe+BVcgPI2KRzeEkQvzE1PyxaiepsA73MQQN8SCCLbPh58HVWT/MLZMOeJSVh68qSEz9Ol/g53ZcMyJP5Fb+fcO30EfyYFV5V39Wz0wKHGWLSUyCbDMrm3KU2zQAH4KopguJzyxKflpGVXCQuyZjOiEXNEmGFpAJIOMJVRz9r39Ph6/UhS5JrppFr9iTc2G7hONgSHeDbQ9TBPHi3tUvO826Hxcv35zIp/aO3Qo75oFcwURueZiEfNJVKiuHGvshdOQvyeW5AA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by SA2PR11MB5194.namprd11.prod.outlook.com (2603:10b6:806:118::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5061.22; Thu, 10 Mar
 2022 16:16:32 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::75bf:a544:9ea7:a236]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::75bf:a544:9ea7:a236%3]) with mapi id 15.20.5061.022; Thu, 10 Mar 2022
 16:16:32 +0000
Content-Type: multipart/alternative;
 boundary="------------BK0g0xJ28UJffgAJWZ9TdDA8"
Message-ID: <a9fadacd-02b9-4236-ea89-b9b30d7a9233@windriver.com>
Date: Thu, 10 Mar 2022 11:16:27 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
From: Trevor Gamblin <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 3/10/2022
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        "MacLeod, Randy" <Randy.MacLeod@windriver.com>,
        alexandre.belloni@bootlin.com, Steve Sakoman <steve@sakoman.com>,
        trevor.gamblin@windriver.com,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        luca.ceresoli@bootlin.com, "Wold, Saul" <saul.wold@windriver.com>,
        Michael Opdenacker <michael.opdenacker@bootlin.com>,
        tim.orling@konsulko.com,
 "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        Ross Burton <ross@burtonini.com>
Content-Language: en-US
X-ClientProxiedBy: YQBPR0101CA0142.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:e::15) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 395f7280-e4a8-4885-780f-08da02b15717
X-MS-TrafficTypeDiagnostic: SA2PR11MB5194:EE_
X-Microsoft-Antispam-PRVS: 
	<SA2PR11MB5194AF89C0286AC1482967F69F0B9@SA2PR11MB5194.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	F0JO2pWsbV8B+RTZSsfygc57WOg1uLMfunYE9xnbl1QIGyLaffpwSarGgQVKzZ18OCXjgrOwyctHR++YfV4n6u0P/9GBwLsouEngiEjjs+v/SxQ3hwOuXVg8KCM6ReL+spXuMPOVmhzZp4A7hg7iLx90spw4qR7WraSAdPIIqYW8V6WNuRMA/FscsDClvd94T4TqGlWNj6IfSpK5WUvwDWAyuhyTL3+0o1vDuE9bRyQROGTmJNQJayfJa6wuk2W7hY24nR7c4ZHvWvqSvnEWH01Abq8c2J1W+qOLsvAjTeM7QLa7ocy28cK9w3oJ18kRkI+QbXTlNlptsZVwcls//D+im8p0+I2v4Riz+z3oi+cObDdFh1uaaW98uX6w3707TGff6eUCrsBNMkqntexvqJ47EwOW15JDaB0oYCu1a2A2Mdla3+biyx3d/w54VaBayzG7u1kR6DOTWLsYHL9EPGEfoXk+YtjbShpWNIJObIe17Iu7sZqKY7PlLput9aPnj2uGA0rK148YeetIVCSXoGYydVvi6LiJz+MXrgu8/lH7Ys6omMaI9w1l7hb/3Rn6ESzwdb5426ovnwHC4Si7+EqiFd0vvuEF6JSomLZha/aLaVQWC7YME16VPdTcX8PmkceA4QyIf1EXVhaF0SNwn2C+tr3NMYq9Or5EMjjMvT3+GfPzlSQTijmdrKd8BazGVESa2IiZoXhRTf/URZYIZtZRYn3DIBxwCQ8Vd8qrQXnVhKOV/6hIcOt+uVcbfbyj2JtBebVGFoQ32aH+e5aBKdW3ZIS40JKBNbtxEGJJpn+X093UUiwH0j10ClWhqiZ5
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(36756003)(4326008)(66476007)(8676002)(66556008)(66946007)(33964004)(6506007)(186003)(8936002)(316002)(7416002)(6916009)(54906003)(38100700002)(508600001)(31686004)(5660300002)(6666004)(966005)(6486002)(44832011)(166002)(6512007)(2906002)(83380400001)(2616005)(86362001)(31696002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OTlJY1lERGVacWhHeGQ3NWphS2VCRjJNbmd4bjZHeHVVdG02WmNzd3UzaUQx?=
 =?utf-8?B?a3Z6V2dGclByWitCbVpkblFiTlFIRDhWa3ptVkNuMEtUd1B3WkNydkNkcDNV?=
 =?utf-8?B?ektucmkzT1R5K3BnNWZOcGFOOVFQWWh5anExUG92UnRNVHRYR0dxSmo2M3dT?=
 =?utf-8?B?c0VPNXF5RmlNekJ4M0ltcG0xZ0hLWTlITEtvdG5kRTBMdmNhTmVUU0F2RjNk?=
 =?utf-8?B?NjNpWm9QaW9ESVpHa1MvNFFqVDR5d3Z3SXNJSFFrd3ZTcEQ4em1NS2xYdjFo?=
 =?utf-8?B?ZUg3VlZMWlNPSjVtbFpFcnRVcCs1Q2RIcElxRHhuWnBhZVNHS3FxUXdwdklh?=
 =?utf-8?B?RDNKaWFjcnB4TFd5eTBabFdzOEhyTWJpdEJQeGV1SUZ6ZlBNK205cytsUTBq?=
 =?utf-8?B?Yk51VTEvME0vcXgvNG5OdHR1QVJrcjlrdW42T01teGlYeTlsUGFKZmo5M0dP?=
 =?utf-8?B?T3paOENWMGJ5YXJWK2E1TkNEb3o0ejlTWklHNXl1RHJqS2Z2c1Vqd1BlTUU4?=
 =?utf-8?B?MHpaVk5uNWp0MFFGcWNBOEhMVFprWTJwRmQ2VThsNitIL1RWZ0cydFowVGNT?=
 =?utf-8?B?SGhtYWdiQTE2dmh3aU1INUt2ZDBVMmgvcG01RnRCWXdOVzhMZjE5WWwrZ3RU?=
 =?utf-8?B?YUFMejZraENHRGE2Rmc1WDhyZWl3N0Z0TlRBL3hMTFVUcXVkdGFtdWMwWmNT?=
 =?utf-8?B?WVNOUnFzWGZRU3UzRG44ZjZxZEYzN2tQQ3pBWC9hUXhhc01OYTdYdHRvdGdn?=
 =?utf-8?B?WVNkUEprMFY0Z0RDeDRNb0Rzbnc5UlpheENreC8xUDVWc3lPUVA2c0tVMHM4?=
 =?utf-8?B?OXNGWHQ1WnBvbWg3aXYxam5RUTlGM3JYM09KaTM3K0UvcFU0eUdiNlErcXRm?=
 =?utf-8?B?a1VnaGhkZlRDMEpRdUJsTzFQUHg0eElzMm9DZ3pBdEg4eVVMYlV2cUx3ZXVr?=
 =?utf-8?B?eWQxQ2lyWVFtY2ZMV0xqRHMxSFZLT05hamovVmdyeHlaRUZmUnF5R1ZsSkZs?=
 =?utf-8?B?bVZCTUFvZHBjVm1SeFlOMStrSkV3WXpPazY1czdWV3FpQnRRRmk4a0dzQmxN?=
 =?utf-8?B?b21hejFuak5GSlhjUXlmYmJEbHU2RFZEQTZnMnNyeTRMelkyTFM0dTZPcUZl?=
 =?utf-8?B?QWUzRnJ3bkxvampHQVlsUFJtKzVpUThJWlJkVkFZVFZ4WkZKZm1rbFBaZXp2?=
 =?utf-8?B?QWhpZGlJMlZRQnVDU25pNkNRYUtaWHFnNkdWQXRqWXR5dlp2OUpnUEZLT1V1?=
 =?utf-8?B?S1djeWJFOUluaEllTVpWSU9uTHRlQy9vaTRnSzd0NzVNRjFoZjNpT3NWMGUx?=
 =?utf-8?B?SlV6MzdMTENFcExmdENhZ1J0bW5tbmx2ZWNQbGNUYXJhc1dCQ1ZUMmZwRzRa?=
 =?utf-8?B?M281RjJHbkp4cU1XS2ljVUJNblFkajZkUzBUOHVJTDZGU0VqQm1EL0NWNmRV?=
 =?utf-8?B?SEdNZ2RkRDU4a1NIUjI4d2ZPbmZyeHFNWWVlVm0xTjFIWWJtdUVSNzNiOWZx?=
 =?utf-8?B?bmp0WGoxQ29CN01EeDVVaWVzMWp6VG5ibGhiWFVmV1cxcVJUMmtwbTFZUXFs?=
 =?utf-8?B?K2RYRmRjT083TFQrWVFjZ3ZaazVJV1I3SEJjRHNaVytpY3UvWlA2dkJ1Und5?=
 =?utf-8?B?c1M4Rk1pQWVFSEJlOTRzTElVZ2dTM2F5RUNYMUMzWHdzVi95WWgvbzZKYi9Q?=
 =?utf-8?B?UlhkeUM0Y3RhWmRGSFpQK1pXQU5NeWp0QUtOQVdLL1U1TjRSY0dHU0NKSDZz?=
 =?utf-8?B?emNkUXNwTUt5Y0VLMHZTSCtrZlA5VTc0VkxpUTBzbUd2b1ZYSHg3dys3cjlU?=
 =?utf-8?B?TTlqVVZkR3RrcU4wWndWa3EzM21XTHpSU241NVByU3Z3Q1Z1WHNObFhheW1C?=
 =?utf-8?B?SWpUMFY0a1VXN1FheS9WSXhuM3EwWGRNWUlETk0rR2x6aWVJUkZta1hiZzlv?=
 =?utf-8?B?Mml6Z2ZKVmQvQ2tMdE9GNHVHZHkvVjU4blY1aTd3aTNIUkEwMDRBSisyV0Ro?=
 =?utf-8?B?TjQxR2t6cjIzeStqNzBybkxVZ1JVL05DRFFWUGZBaVBib2VkUm9STk1nVlVL?=
 =?utf-8?B?OS9McGRNeWhETTBISVIzR2Y0M2ZGcVZrZURoQT09?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 395f7280-e4a8-4885-780f-08da02b15717
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2022 16:16:32.2469
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 1Uc1V++rLe6BEzFct0RBm/9So9Wq5w3XHKqz2VNBSaUI5OFHjwwNAuYK16V95bSj8KlHP+kQXrb3CbxxcAqC+hdGl4VGrmTDXpAJg/7O5BI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5194
X-Proofpoint-GUID: 2rC6EIBXl-CKCKNnE5Hb3JxzCzS8gRHY
X-Proofpoint-ORIG-GUID: 2rC6EIBXl-CKCKNnE5Hb3JxzCzS8gRHY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.64.514
 definitions=2022-03-10_06,2022-03-09_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0
 adultscore=0 priorityscore=1501 bulkscore=0 lowpriorityscore=0 spamscore=0
 malwarescore=0 suspectscore=0 mlxscore=0 mlxlogscore=844 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2202240000
 definitions=main-2203100086
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Mar 2022 16:16:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56416

--------------BK0g0xJ28UJffgAJWZ9TdDA8
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Alexandre, Joshua, Luca, Michael, Randy, Richard, Ross, 
Saul, Stephen, Steve, Tim, Trevor

*ARs: *

- Randy to move AB, 3.5 Enhancement M3 bugs to M4 or later

- All to review Old Milestone bugs and move to M4 or later

*Notes:*

- ~43% of AB workers have been switched to SSDs. Failure rate appears 
lower, but still TBD. More coming soon!

*Medium+ 3.5 Unassigned Enhancements/Bugs: *73 (Last week 77)

*Medium+ 3.6 Unassigned Enhancements/Bugs: *2 (new)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *38**(Last week 38)

*AB Bugs: *71 (Last week 75)
--------------BK0g0xJ28UJffgAJWZ9TdDA8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Alexandre, Joshua, Luca, Michael, Randy,
        Richard, Ross, Saul, Stephen, Steve, Tim, Trevor<br>
      </p>
      <p><b>ARs: </b><br>
      </p>
      <p>- Randy to move AB, 3.5 Enhancement M3 bugs to M4 or later</p>
      <p>- All to review Old Milestone bugs and move to M4 or later<br>
      </p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <p>- ~43% of AB workers have been switched to SSDs. Failure rate
      appears lower, but still TBD. More coming soon!<br>
    </p>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs: </b>73 (Last week
        77)</p>
      <p><b>Medium+ 3.6 Unassigned Enhancements/Bugs: </b>2 (new) </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>38<b> </b>(Last
      week 38)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>71
      (Last week 75)<br>
    </div>
  </body>
</html>

--------------BK0g0xJ28UJffgAJWZ9TdDA8--

