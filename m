Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2922FC433EF
	for <webhook@archiver.kernel.org>; Thu, 21 Jul 2022 15:29:56 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.7849.1658417385551291774
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Jul 2022 08:29:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=VIBs0//a;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=420116e756=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 26LAKdCg025044;
	Thu, 21 Jul 2022 15:29:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=8Z7JraxOpuMT+sF8hMI9fo2QGVtk+ypsW0qdOPOkvlI=;
 b=VIBs0//a2GjmgKsHR1+C7TE4ffGeNcGitTi9lVIdwLZSpGTP2/mX8vpx7y1+IROCsp9y
 ZOv2/8mVxre4Va4/rk5rEHu0IBFbVKsqsuXnO0G6YIpTFA72c5E95AblwnUfQMZUmILI
 GeSmASYoY0KYVhJJxJe0URgIj223GqwwsK0pOgzrExvQJ+MRuU1nGb0NEgQuwZe1he1G
 1q8YR16PBDRgKGJ+7ZPUBur3JqMsyOc6+9UzIBcESAPwmSjRaOC5ArXHfrYTg6mJSGVe
 RsheHpdIgx8Ze30N0ocHq309eZ1YJAvqdcH5O5gMW3CAEh6gXhdEo96mqjIwPp7JOtKK oQ==
Received: from nam04-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam04lp2043.outbound.protection.outlook.com [104.47.73.43])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3hbma9m4pq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 21 Jul 2022 15:29:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cecuZF6xA9yTpiF7DA0tXYRJS6Z2drKo2rONOkbsnHG0CdAgUeg7ZpkPEZ2RhYRT3cz9rvy1kXX5h1n4Tj1HOMh5hFcb30VBM/k8cJcW+WVKNenTZGZzQqJalaendXwweDTn958/bcItjgyrh+HmopaznmwZIYETylv2PhoDHG6PAKXZjmvWwSXV2j6G8BFcYaw052hoiFVqM+DrgWsELwAt7Mdsm2F8ZUHu2Hq/wpNhL59eWnyasAVdVYt98rPvXNq51H2jYfRrFSX1RAQezPqGf6KQQ0EKJd2JPqM7TwRVCV4OxnMy1QOHcd4tgRTdJp14+8tZ1tVZhVgIMl7QmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8Z7JraxOpuMT+sF8hMI9fo2QGVtk+ypsW0qdOPOkvlI=;
 b=aPGDjg2WdrkukjqMZKhOV9o6/g97yQMdj6OnBspOJRaFh9a6J17bmd2o+1j6b2ga96+KPdlh1yHMU2t2zxBN+oQGtwNISNK11cP9YQUzuTC6H5N+bUm5O1g5QOKLhItFTdSWH35gsPNQCl7hrf7IehDUbtkLMxS9xwixS4qTxy0Vvwj9jASKl6iyCPVSjNDBJl6T9gJA8hPjix4Gr0EoVAVSGMR1jmdf/mCcVriAK9UI9ZJHcbaihiBbiaSEcxIMpEbqNKmJskav6sVUHsY3D8wFZ33ETtjeV0tLkfTxoRDg6sUo8O6LyKGHWAgfasjuNkMs/41Ve45NquCyATB6ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 BL0PR11MB3009.namprd11.prod.outlook.com (2603:10b6:208:31::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5438.19; Thu, 21 Jul 2022 15:29:20 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::a807:4bee:8e08:3053]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::a807:4bee:8e08:3053%7]) with mapi id 15.20.5458.019; Thu, 21 Jul 2022
 15:29:20 +0000
Content-Type: multipart/alternative;
 boundary="------------ua10GUdUzUO5ANBG0f2jmciT"
Message-ID: <ff180690-b443-0d8a-5be1-49d013eab358@windriver.com>
Date: Thu, 21 Jul 2022 11:29:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 7/21/2022
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
        ross@burtonini.com, Saul Wold <Saul.Wold@windriver.com>,
        michael.opdenacker@bootlin.com, valery.chernous@gmail.com,
        aryaman.gupta@windriver.com
Content-Language: en-US
X-ClientProxiedBy: YQBPR0101CA0187.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:f::30) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5e6447fa-6580-4f4c-b0a2-08da6b2dc7e3
X-MS-TrafficTypeDiagnostic: BL0PR11MB3009:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	DYvWV/wUQajtIEKuWQLAzvmbCwgbWnSzrybOmFwQ2ZPlWMOQOtZ86pl3yJp7/sPbC2vY+Px9RMm4ylYw8hqaC7ooOuBTERVdtravwJyLjJ6z1H5RyG5RNLtoTBIf85+Uqk0Aj1Y5ev5r7FuAHjneTFP2aoNQpydkn1LEGSbeFzbpMMYDfS91ZGtZPuW9a21NWZW5+KO7sTGSdsI7P4LzQAJD5HY+ZLkRkbKTq1p5gee4h1afo4meYrin7tTfKoNXLKP0JKJEwAaZJCP8h08Y8tKGVTpk+eVV8H/Nv8BZ/UoGMmaVWu3ExV2+wZwjcv6wNaeoP6Sqwq5Xxb5Yqmu0Nqt3dwkndNS0nYL/0de+tdKluvi9sQRIg+du+4DfZxmqIuGQ4UXM7N+tRV9BvyTC1+TJtVKU5w/4s0+gzW7ja0z7x0O+LHr7T6RghJNaGkZGUanE218kpRDnfkPr5LUWLb0+MNn9hvIY6gv0Cw1K4u3YRtVsZFfn5zI1gz/eLZmt5j9F4wPfO1AI5hiKEfpYDN+5rw/r6HKMplAgwU9Ndk6C9Kv6zSxQphaUlOcmA62fz5IsfE16bpHUXlkHEjv9t3GEiatjZ71DUYM1BgV/kTgyuvOQTTT5fMsO2IcczPOfJs7Q52xA05IFSvw625f8M7Jvo94S32nbzA7cuosKBsLZvQUlHUxo87tm4A80b4SXJSjGmK28sxOBAmLg/gUshSTUlP1yYNKGsbYJzV5OkB3jhuej5t14kdm599rq5S9TpgMxpx4RK757tngwB5rrWNMLlUadakH4N7tIs6pvOjQ2lKrvDTBAZUi5SVc8ekVxLSgP8jyRSCAaS18ZZwrz8u18ewsAMypER9wv8YR8NRg33kfK8dvnNraGWRQeC44Xj5T067nuFdQQZ+5AY9/28g==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39850400004)(346002)(366004)(396003)(376002)(136003)(166002)(41300700001)(6506007)(52116002)(33964004)(6512007)(316002)(31696002)(478600001)(26005)(8936002)(54906003)(86362001)(966005)(6916009)(6666004)(6486002)(186003)(31686004)(38100700002)(4326008)(5660300002)(8676002)(44832011)(66946007)(7416002)(66556008)(38350700002)(2906002)(107886003)(66476007)(2616005)(36756003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?T3JpVGE2V2V0NWlRcnB2U2wrOXpubHZFV3BBSzNuZTVjMms2bjhPWFA0c056?=
 =?utf-8?B?c1RmS295NzJrWjIyTkRaVWlmVmZMelkxajFOVmd1YTZWUXBuYlBTaWR0SFFS?=
 =?utf-8?B?eS9jTWt4ZFVsU256bHFlZUhWZE5zWVJWb29idW1NNlRjQSsvT01ZSDNYQ3dF?=
 =?utf-8?B?M3AyVUxHUnFWTFB3N3JSWnkzRkRrMFNxcGpRMUpBYllHeHVxb0N2MDhxaDU3?=
 =?utf-8?B?VFdFeVJTdm8zb2pqQjc2QnVQbjU3UndKa0xlWTVOaE1iSjNYSnRHamtNaTZD?=
 =?utf-8?B?NnBkVHVLR2s2a1l3dUhvajJWSlozQWowRXgzNlp3VDVTWjZxTi9FNTNQQ3lh?=
 =?utf-8?B?MzFsS3pCL09GRnpmMjlFSDdTRkx3TDBpenlFOVpKWFdQUDgwcnpYWVlvU2Fy?=
 =?utf-8?B?cndEbHhKeEJwNDVHaDZuYlliL0F5R0drTHR5Rnh3c0RXZ3VMWmhjQUdsSFZB?=
 =?utf-8?B?enR1RjlGcitiOFRuMG9xSnJHRzFGSXM4bUxRdlpPK3hhNjQxak9TR0Q5K21S?=
 =?utf-8?B?NVU0TzYxbWx6S3dhYUVYMTNFN2RWS3NiMEVzd2ZnNVVCQ2YxNnhLMEp5QUNO?=
 =?utf-8?B?ZmhtVDVtUXY2K0V5SzRlN0FYU1JlNEZoMTNtSUVnWkp3ZlprZHMwUVowbC9H?=
 =?utf-8?B?N2ZVNzBIM0xORXpjUGlqeFVuV2FxU0lkQ3ZqWEJobTA0U1hSWDNjR2R3cVhZ?=
 =?utf-8?B?SWlYQzRsd1AyOGFDbVpwamk0N1prT1I0ZHBMY1BraThSVEJ2M2xsTWQ1cGo0?=
 =?utf-8?B?TUNwOGxCeW41eDF2Wkg4RExYRUVwUVVORitRT2VJOFF2YUdPTThtVGZURkdm?=
 =?utf-8?B?em1NWjBiaE5Xb1RLRDJ1YUcvZTkvVXczSGhOR1J5aStXNTN1US9EMnlYUkVw?=
 =?utf-8?B?MjA5MWdwcU02WGcwaHY5KzMyTWJjSWx5Mi9UQlBULzFiS1l0UmtyeDNHWXFr?=
 =?utf-8?B?c0VrR0tGdnNCUE5YQWdNR3NJYlNBYzZuY3l0aWZjTDM5ZHp6Z0RiWk04QS9T?=
 =?utf-8?B?OUZKMXN2dEREVk0vMWVjVHp4bGE5Tk8yS0RwUWRWZllFSVNROHZBRnhkYWNV?=
 =?utf-8?B?N2ZQYlUzdzZMZS9KQXZGRzM1dSsvenVucEFlZFR2SkNXbThDU3Z0ZVJmaExa?=
 =?utf-8?B?RWZqNVhWcW1XOEZ6RXl2WSs4NzdnVTZ2blcxUDl2R282Y0ZiWWdUMk1FdUZo?=
 =?utf-8?B?dERNdmJxcUhlMElqVy9hUE51QU5Wcy9paWpVTGhUYkdsZHZmN2dnbm9pSW9U?=
 =?utf-8?B?RmpFbUR6OXRyUHIwQm13ZmRKTWcyTjZBbXRiYWc3QzVFUFU1ZEIraDJsK0Jm?=
 =?utf-8?B?bmYreWFNai84VmRSL2ZHVjRJcW1UODVPK2c5MlEvYUNqd2RiUlJQTTF1MEdH?=
 =?utf-8?B?NjZGRkJhTlFJRzRBUTl5L05sVU9mYmdRdmtxV0xwQ3FUQ2o3WkVZeDFMSzBK?=
 =?utf-8?B?SUh1ekRaVEpZUytYWDhoZUNJcXZ3VlE4VXBVWmZUbnpsSzh6czR1UkFBVDl2?=
 =?utf-8?B?VkxDa004ellvR2VuTXAyUWYvRlllRzN0Rm45OHJod0c2YXlUSE1GdFFlYVpn?=
 =?utf-8?B?cXZNNVhUbVVmdGJ3and0cnRVYzIvOHFETGVOcGlQaS9nSWxmTGRKWVF0cVFW?=
 =?utf-8?B?eGFLeE5hQjhHdTF1WkRrQU5GZmpEYmJEZk53eXF6dWRhVnlPNDM2Q29zUGhZ?=
 =?utf-8?B?c2FTSG01VUVnczJiK2NvUVIzZ3FWVG9QcnFlUUxDNmxXMU12c3k5b2FnanZk?=
 =?utf-8?B?ek9CdWpqYmtLdG52bkxwTWU0MHVCRHpxaDdoand4OEJNeVJKZGdxMVlTUnY3?=
 =?utf-8?B?UFROL2FscnpOMkd0NjM4dUtPUFFtL1hOZmtnYUFQbmd2c2pCRWI0NXpFMGhq?=
 =?utf-8?B?bWJWRWM5N1dza1hhN0pqZTdyMjRqeFdRdWYwZDVaWGlmTEM2dUVxU1A0VHht?=
 =?utf-8?B?RnlraGJtMHZwdVN0WjBBRDh5SHpzTlZiTzJxbnNaSUdSNEhZUjlkemo5a1lh?=
 =?utf-8?B?K2JnQzNubncyQXpqZHduQWpSOEpQYzVOY2kyOEJyWXVMUFdTeGJEWWhJclR5?=
 =?utf-8?B?aktYNnZHajRkNllncWVmUVZWbHFwWDRCK2VhTEU3ZllKelpJTXB4Y3MzSnQx?=
 =?utf-8?B?WHdwaWptT0k2c3J4WWtpSkRSU0FWOWNMbTlBVGdpa2VhU2RJUllEekNnRndY?=
 =?utf-8?B?NHc9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 5e6447fa-6580-4f4c-b0a2-08da6b2dc7e3
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2022 15:29:19.9978
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 eiFNd6/hmwajsaXBVKufIqccamPquUBasr2gQfv+7Sy35yhcmR2btlamMq6/IEAiYVWiVXy9ky31uBVLHJ7pAeQB6lHBt62Zkx0QbhZR2zY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3009
X-Proofpoint-GUID: g86N9Zo_tyl0W5t2ImzzUHH3s78MeSS9
X-Proofpoint-ORIG-GUID: g86N9Zo_tyl0W5t2ImzzUHH3s78MeSS9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-07-21_18,2022-07-20_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0
 priorityscore=1501 spamscore=0 phishscore=0 mlxlogscore=846 adultscore=0
 mlxscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2206140000
 definitions=main-2207210061
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Jul 2022 15:29:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57609

--------------ua10GUdUzUO5ANBG0f2jmciT
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Steve Sakoman, Joshua Watt, Saul Wold, Randy Macleod, 
Richard Purdie, Aryaman, Ross Burton, Alexandre Belloni, Tim Orling, 
Bruce Ashfield

*ARs:*

*Notes:*
N/A*
*
**

*Medium+ 4.1 Unassigned Enhancements/Bugs: *77 (Last week 79)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *43**(Last week 43)

*AB Bugs: *51 (Last week 52)
--------------ua10GUdUzUO5ANBG0f2jmciT
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Steve Sakoman, Joshua Watt, Saul Wold, Randy
        Macleod, Richard Purdie, Aryaman, Ross Burton, Alexandre
        Belloni, Tim Orling, Bruce Ashfield<br>
      </p>
      <p><b>ARs:</b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <div class="moz-text-html" lang="x-unicode">N/A<b><br>
      </b></div>
    <b> </b>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.1 Unassigned Enhancements/Bugs: </b>77 (Last week
        79)<br>
      </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>43<b> </b>(Last
      week 43)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>51
      (Last week 52)<br>
    </div>
  </body>
</html>

--------------ua10GUdUzUO5ANBG0f2jmciT--

