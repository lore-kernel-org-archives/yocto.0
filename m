Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8AF8EC6370E
	for <webhook@archiver.kernel.org>; Thu, 14 Apr 2022 16:03:57 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web09.13229.1649951303689406595
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Apr 2022 08:48:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=CkMMdw0Q;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=11038278d4=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 23EFOU1d025963;
	Thu, 14 Apr 2022 15:48:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=PGuVjsIwGhA0Y+f24tu/Wbo7mnGqAaLNew4BWJkoQoY=;
 b=CkMMdw0QhGTlETdMXYWOz8AA6/+lk8UP6myS1WR8p5rxvGSq5JcnbIfD36IMJltd8hH/
 BhJ0h9+Ybe7EQ7psylsbYElocMyTDafwz4PLa4Di7+SdpFVlx3fEldZYWvStYZqAsWLr
 xF4eC4wm4CmnDm0EnaaxNPUyoHNUWE97KnFGVTW9zJF+cjlhReqmuLDrlIHswf6kZgQy
 4By8MgnxZaZxXBjdqaL6q9ovle2ekjvaaUr28XTfxYY4wDkk9wL8bzR56/C/xlaTBX7g
 XqIPjgvMkC+n9PfSBTTb3Zh1+6t2Ix9bpJm+U63uK2Aa02XnQiJC41YXzWSyToAuxwYQ 5A==
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2168.outbound.protection.outlook.com [104.47.59.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3fb6fwc35t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 14 Apr 2022 15:48:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f3VegK9p2+Xa1APJL08GTunptZBbOPT+VTJqgEzrcvZ02iOuSn1UpwhWOMFAr6dOHQoZuyxf74uRneT5WSSO4uio7AKe7PSIVC3A9+0/7WggTVGF2oHRBUYv9by3/p5SZ1j7j671W1J27CgVUEcc+Bq1FK7xI8sE/7CcPA++1O2ZWO5hc8XIohVlRG6d3EHqBlH5k7TBdM2A7SK+AjAQgFtGbLa1pCo8dwqjfaXWmhus+9DgW9OskCqkjnRxoTGsEl7EhPnSDj/jp9OHyXWwN8XvaztZ11GRPiXDUZtN8GOiGYHR/HtTB3SvuV10gR0Wrn3E+DRvqsyVw1rxvG8HjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PGuVjsIwGhA0Y+f24tu/Wbo7mnGqAaLNew4BWJkoQoY=;
 b=I9Fy0xqo58LT0lAVikIV/+vgcDswD6xCkoWWih/kc052Sl2HfiITlQo/ta820lD4mMI0vUKWE5nJGIhIvwOtY1/ea+r2o4Ozx0M9X5FqQpUQ3UncRFW1EBlsXC2rJpxr7fAawOnKvsi3t+bb70lLXuv6HR4Tz3zkFKNpyMJzFPD/iy8c8/HzGHI1tHNGEu8+qkG9w0hnv5TLJc5KCTIdZSihshXfoiFiP+pQ+fSRV9YDS0VL0Noap8brY4IuhYbvAlpbxzve18G0QTHEnAawp3x45YuQ79eBiuA3cKcdbPVaocZNJD99L0ISaQs1rUyuaIrIZS+AlSyCzeUOy11Lpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BL0PR11MB3169.namprd11.prod.outlook.com (2603:10b6:208:69::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5164.18; Thu, 14 Apr
 2022 15:48:03 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::451f:7e82:b7f5:8c6e]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::451f:7e82:b7f5:8c6e%3]) with mapi id 15.20.5164.020; Thu, 14 Apr 2022
 15:48:03 +0000
Content-Type: multipart/alternative;
 boundary="------------sgSB0z0C7VcmCeGNR1VgOUqr"
Message-ID: <626fc857-044f-6c55-0ecf-889c27eb5c64@windriver.com>
Date: Thu, 14 Apr 2022 11:47:58 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
From: Trevor Gamblin <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 4/14/2022
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Language: en-US
Cc: alexandre.belloni@bootlin.com, Bruce Ashfield <bruce.ashfield@gmail.com>,
        daiane.angolini@foundries.io,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        luca.ceresoli@bootlin.com, pavel.zhukov@huawei.com,
        "MacLeod, Randy" <Randy.MacLeod@windriver.com>,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        "Wold, Saul" <saul.wold@windriver.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>, tim.orling@konsulko.com,
        tvgamblin@gmail.com
X-ClientProxiedBy: YQBPR01CA0003.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:c01::11)
 To BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 47753054-92db-4c24-8383-08da1e2e28d9
X-MS-TrafficTypeDiagnostic: BL0PR11MB3169:EE_
X-Microsoft-Antispam-PRVS: 
	<BL0PR11MB316947F4A407E2687ABA4C119FEF9@BL0PR11MB3169.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	/ljRpZxoqgRgYS96cQtZ5NM8zsEN5Q1do75sFGDqFVG65UPQC01TnYEhAyIIZLZwGg7Vzjr4cafxGA1wrPOdZktX7uBbvrbArxp7GfJW6H0Fs0op7PX5zGTDUtgD78LjrZ3UUomOMXt6PU9kd1ApngQmiMfD60hICqorhbs2y7+G7NaSZyWuKJ0x8V9aTDuLtwipCnnqDNwnC5DdJM/P6JG9HO7UDftJj8ipYnqcaz40U1+eIunKarPwMOV0SNqubvkC4UlFm6VN5R+9frhCS8TsZe6aLaP/Ln+Nu7pqsflS1CnkG30T6Wuw/gageedtPQyrN2UH5gk2Pg6UAxKhRcXwyNQid8ihoYaNE+ju85mBGF9IVZAGHoOBvxmgLsxVKA3/EjU0kzPho9b6d0LTeUVpIBLq0GB/y+kdf7QwADtS/pgSTcnO/SXvdPFnBAYMJIekhRf11DxZ0ZRDgjhnXcmJmi1Jk5BIgoxgCYVt+92OWv/fQUjV7Q/YOeWWtrmR+qCyfDjbZlt6FausKq9lTyP3HK3a/9K2ZF8p3m/Yjs9mQCxw+On/3+L3PqtYA3E1SkBaOBWHA9gEFjlJyTnstu5HKSwady255gjidEUfMpCLK5uRhAhmaQHtAsINI+CnVMdPwo/qINkkMHHcTF+lGCh7gmYiN7EQiDTqqNXI3D4lD1ieaLVbrMqukTnr6wOWbME/6UrOledWW6X7WybgrMJxYmN3X+Dk9Nlj8o82+wiyirqLAe+PiX6JC4eOYqQi0eCtu2HiuA5nHsKZWCggvy5wiIQH9CIsrZpgzUiWNj5cOXlA5LWtsL0hP3oK9WcQ
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(54906003)(8676002)(966005)(6486002)(66946007)(66476007)(66556008)(83380400001)(6666004)(186003)(33964004)(86362001)(2906002)(166002)(38100700002)(2616005)(6916009)(316002)(6512007)(4326008)(508600001)(6506007)(31696002)(36756003)(5660300002)(7416002)(31686004)(44832011)(8936002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RE1pM1ZKQWpaclhLTDEycll6a0FNMi81MXd6eHd5MmpBL0F6NzFTOU5BRktI?=
 =?utf-8?B?VDJnL2pET1lFM1FvZXkzVnVacWc0amZieThsR1JCcG5pZGk4elJSZkl4a2dL?=
 =?utf-8?B?M3Y2UXhRYkhHeGIweXZpT3hxclJZZlE1cDMrNWhoUUdRMmN5dENoU2ZGdDBp?=
 =?utf-8?B?RWtBb0x3U0gyL05EMFZCOWc0dTVueGp1M0JVSjkyelB5QnNUUDlvWnNoSlFI?=
 =?utf-8?B?bFJqQnRkVjlmQXgyKzRsbEljMVBJcm93eWhUeGZ1b2xKNlBaWExieGIwRU5J?=
 =?utf-8?B?VG9LbklEdVVLNlV4RlBuLzhzazhhaGw1ZktJZEkveVZLS3I3a2tlOCtYbnNY?=
 =?utf-8?B?alc1YW9zM3dNVHpIZmsydDF5MDF6MUxZSFo3eUJUREZ2NXQwaWIrY00wN01S?=
 =?utf-8?B?ZTJzaktYUTZwY0N2bEpBVEEvT29XRVVLcDFPT2xlS1phYzRrcVhWR3NNbUxW?=
 =?utf-8?B?Rkt4UkV3dDhraksvN0x1bndMbTVRZ25WejBtWlgxcjhOS21GeDhZdXB0dnox?=
 =?utf-8?B?UUxUUG5rMkFtZUVLN2pPVjBmMDNJQjArb3FuSHRIYWRoYW5tdldsbFo0dkJL?=
 =?utf-8?B?aEVYYWgzMlNpRDZKenYyMnAxanZpbjdFZ21keEVweG9vZUZMZ3o4bDdBTldQ?=
 =?utf-8?B?YjBUSVBJME1NN0F4YzQ1eXBwdGJZL0U0QTZ2REUzYXEyMWFZVmxmd0lZVXNG?=
 =?utf-8?B?N2IzSU8rUSt4OG9PN0VDZHpiWWZ4dWdqVHBOenVuT292Y3VFVnFnbXFKdnQ3?=
 =?utf-8?B?UWw3eHRsMkhPb3pUdGpLRC9OUjlGU3lEM0dVS3dSTTF2dXc0dmFRY2xpR1dD?=
 =?utf-8?B?cThIb2ZqNm8zVXViWUVjdThYSFNjcHRkNFRQSm1ENnVqeU9UL3g3M0VNeG05?=
 =?utf-8?B?eFhiblhoSkxPZ21XUmJ1ZlRndkdSSnRiUTNGaDB3ZHVsanF6bnVDcFkzN0Vo?=
 =?utf-8?B?RmxIUUVWc2NvV2dJUWRmZi95U2hsT3FMb3pRS0tWelZydDRRcXVYazZGRGM1?=
 =?utf-8?B?ZHlSVzBldWdDMWJ1cnMvcU0xMUFpS2VHNTc1WXNIYlFYUzJkYnRJZTQ1VWJ2?=
 =?utf-8?B?QU01ZW5HS04xQ1pSdEowSmROK2taL3VqYmNhZGZlcWJ3eFNLQ1Q3SDIwUHNH?=
 =?utf-8?B?RExLdmdjR1kxUlhJMkFON1hmaHR5Q3VYKzNaVTZkOENPd3BncEtUcXNrb2tn?=
 =?utf-8?B?RGFZd0xqbjhrQWZ6VFJrWmM5dzJWVTZCNWl4V2tPVzJzRWdvc2locEFMbnNQ?=
 =?utf-8?B?aDUzQ00reVpSckp0SWgvM0Z4aWlVMmZuT0NoNnU4RFBDSktXU09WMVU3d1Va?=
 =?utf-8?B?blgzQmg3Nnp2RndVb1RuT0gzS3hIZS9rTkJ0a0xoWTY2SlR3SEdGOW9QUjIw?=
 =?utf-8?B?b2J2WENmOGl2c3FXS0x2YUd1c3JjMmdTbFhJcEVCb2Q0REFXb04ydURGVlpM?=
 =?utf-8?B?WXpvMm85TUhvY3JyRzNRNFhtQWtRTjdFRnVMcW9WUS8rQWR2bGZxbEhiOHhC?=
 =?utf-8?B?MFN6bzgvYkZ2NXlmazBWaVpxdmtoSFFKOGR4QWNJUkJxbnhqMHZPSEpJbm9q?=
 =?utf-8?B?WVhLS3gwYnNIdEhnZDNQSGhuUHFqd1hSNXl3ZmI0Kys5OGl5bzladzlYdjNJ?=
 =?utf-8?B?Y2wzM2NYOHQ2NmdwaHVKbVA1ZjNsYnRXOU5TQjd0REcvSkdwMGtybTd5MDlD?=
 =?utf-8?B?NGlJRmVMT3ZDK2IvcTBER1VzMkNOSUxTOUp0ckJyQTdDeE5lOWpibmgram5S?=
 =?utf-8?B?NVV4N0M0ZEt5T1VTREY5L1JTYlBreHZEaTlNeHJyeTMvU3ZUR1lBdUFwdzZ6?=
 =?utf-8?B?Q1VKZ1Bjc3Z1OHhtY040OUVNRU5jZytOdWMzZ0UxZlJNSGh1c3RaOUFzWkZV?=
 =?utf-8?B?alFhN3F5T0x2b2RhbTVHQXlTS1QwaU03K1ErU1EyUVljNi9DQ3EzR2Q1aFdO?=
 =?utf-8?B?UDdycW1ncFc1VENkRUVoZDgxU1hBaFVXRG1namwxMEhBeXVDRGVLbC9WK2hw?=
 =?utf-8?B?ZmxKZk5aZWphSXBCWjBueFM3Nnd2c0RuUjNHUFpSTS9Dd0ZGQlZTcC8xNEJE?=
 =?utf-8?B?VHJVUlRuZnpDdGIxU3Q4VVFSaCszazAwZU44bmlvUFZmS1lyK2NoUkhwZWJi?=
 =?utf-8?B?dDFUNzI1VmZtWDk3ekErUmc1a3NGdjUxN0UyMnhDZFNabUhBSXZTUTZpVGls?=
 =?utf-8?B?b2RjUWZtV3ovNmtEaG1lYlVmRTZ2RGsrOUVOT1RRRDhzRjQ4OUtRZUZFUFk0?=
 =?utf-8?B?UTNRUWVtc2ZjUXVFbysvNmlHdHZuZnV1Nm1IbHphTU9ib21pajZ6UkVyVjJs?=
 =?utf-8?B?VVNhcVZocHZNMHRHaFlwT1hEdDFQRkJ5YjVHOHR6NFd2ZWdDNmhZVjg4Unc3?=
 =?utf-8?Q?mzBlCezj7pyDMbtlumh88ITki5O/8dn1fhc5dIdWCG8T6?=
X-MS-Exchange-AntiSpam-MessageData-1: dHI0K+GpP3tcmg==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 47753054-92db-4c24-8383-08da1e2e28d9
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2022 15:48:03.1050
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 i1l8fNFsbSyy4gpD2PiCvZPLwJxVSUgUrGybZ1211Mz+JRCmPGbAz8uxrSO1F4qghL+pl0p3sy0vhHFKcDqCKiyZsBmtM3PQnbl20GonGBA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3169
X-Proofpoint-ORIG-GUID: yTgebjCV70ttKZ_S2GZau0rR0mrTCB9l
X-Proofpoint-GUID: yTgebjCV70ttKZ_S2GZau0rR0mrTCB9l
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.858,Hydra:6.0.486,FMLib:17.11.64.514
 definitions=2022-04-14_04,2022-04-14_02,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=889
 malwarescore=0 spamscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 mlxscore=0 phishscore=0 clxscore=1011
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2204140084
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Apr 2022 16:03:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56770

--------------sgSB0z0C7VcmCeGNR1VgOUqr
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Alexandre, Bruce, Daiane, Joshua, Luca, Pavel, Randy, 
Richard, Saul, Stephen, Steve, Tim, Trevor

*ARs:*

N/A

*Notes:*

- Trevor has left WR/YP, so a new note-taker will be required for this 
meeting. It was great working with you all. Take care and good luck on 
all of your future endeavors.

- ~43% of AB workers have been switched to SSDs. Failure rate appears 
lower, but still TBD. More coming soon!

*Medium+ 3.5 Unassigned Enhancements/Bugs: * 3 (Last week 14)

*Medium+ 3.6 Unassigned Enhancements/Bugs: *74 (Last week 61)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *41**(Last week 38)

*AB Bugs: *58 (Last week 64)
--------------sgSB0z0C7VcmCeGNR1VgOUqr
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Alexandre, Bruce, Daiane, Joshua, Luca,
        Pavel, Randy, Richard, Saul, Stephen, Steve, Tim, Trevor<br>
      </p>
      <p><b>ARs:</b></p>
      N/A</div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <div class="moz-text-html" lang="x-unicode"><br>
      - Trevor has left WR/YP, so a new note-taker will be required for
      this meeting. It was great working with you all. Take care and
      good luck on all of your future endeavors.<br>
    </div>
    <p>- ~43% of AB workers have been switched to SSDs. Failure rate
      appears lower, but still TBD. More coming soon!</p>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs:&nbsp;</b> 3 (Last week
        14)</p>
      <p><b>Medium+ 3.6 Unassigned Enhancements/Bugs: </b>74 (Last week
        61)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>41<b> </b>(Last
      week 38)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>58
      (Last week 64)<br>
    </div>
  </body>
</html>

--------------sgSB0z0C7VcmCeGNR1VgOUqr--

