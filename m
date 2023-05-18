Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC41C77B7A
	for <webhook@archiver.kernel.org>; Thu, 18 May 2023 15:15:47 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.19880.1684422947278432600
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 May 2023 08:15:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=F9B4ngbn;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=4502aa5b7b=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34IB7smx004974;
	Thu, 18 May 2023 08:15:27 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=aZZY5m3ydvVocovqTjEQMmJjb9BHbjfUyN12kEyxP0I=;
 b=F9B4ngbn7lhE8cswx4J2+vzZydjDwAHyqqo6aX/j/vXFapWGZN6dsvNoeJURrFJk2VZv
 OwIrABhEJx35jFyP85DrPSsvHr1YAavbG7H4JXrimz0zWWmctag2iAKD3I6+dXUq7rc/
 mCbNlm6M4wx3ZSBwNmE13giP/lZ+p01Da88f2oesUwGFBC+xMu0PGlgdV07XPtnlrnrR
 3GxyicDnrMhYYVOy/aWCXMnCVdrhUTcpTfHXq1lqzoWUUayChwWjS8S01qlmCyM1GtkG
 ZIETHKTquv6Ximj3rmO/+PCZr7lI3VpA1Z9PHIYbg3FPqeeLK2lg3pD78sHi7TGt0uHi ZQ== 
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2170.outbound.protection.outlook.com [104.47.56.170])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3qms6d1k9s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 18 May 2023 08:15:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Oxs4FlXEOkQWTfe9CXcKZvWT5dPGtl0ap8R0fq/ee6zlWgwHxTHUZIY8zpiaAeCw1yugKRvZ194Tnaoj8uTM1Q/1gbUHkBr2Go0ur9ZMgp2T7IYdrZyRC30o3rg1a8Kxr1nHNti8j3jlRxnarbsMw83QfQzRAc/rxpZI7AOP+sKdkmI0BAoYR4cY2RnkR4MvXjf6B/AQpsvMP+1tCvhb95J+/O+FGs5/wiI7e+WBRf650yaBqRX9vPKRAAf0SJhJ8egXLWjcah7TBFozdCR5WQCyk3UrGiFKZZMLMAK1pD6uOavYVRP0EXdTQixogFirWdk+lvE+lpYpkc+Lt8CyNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aZZY5m3ydvVocovqTjEQMmJjb9BHbjfUyN12kEyxP0I=;
 b=PxhentnxNdfoOeKxZvyrk75cDjEoM1CdCMtGqo0fRWE2o3cKXInDJIa8LUzd6md9m8vK3+sLedxYEyoOHSzBjRp2vcHdQELBB11dt4TjyWH5BAZQdUYbg+faFK79AWkt+7ssqxPyTs1UsL4NTUMdOv6FQKl1a0UVNcVseNMmdG1rMHyr67otElmGD/Xfo6TYUpKrdHCs6FmmgsZo3ViMOj5GgFW7fsoIOU8dIHmXB3CAYGIonxm8Se4/tT5n8MaJIPrEpUFmUb5ncn56W+vwSSzqyDpibbAZe+1MZADw+vNjZb4ADGhDkKWQNZNFWMS9vo+EZ56VZ9nDvHliVwpJEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 PH8PR11MB6927.namprd11.prod.outlook.com (2603:10b6:510:225::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.17; Thu, 18 May
 2023 15:15:24 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::61aa:b66e:fce4:b592]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::61aa:b66e:fce4:b592%5]) with mapi id 15.20.6411.017; Thu, 18 May 2023
 15:15:24 +0000
Content-Type: multipart/alternative;
 boundary="------------j4LiVCR9kWVDSc3YwjfMpc5R"
Message-ID: <c3bc8056-a979-6d60-69ab-bbd54d64fcf9@windriver.com>
Date: Thu, 18 May 2023 11:15:21 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 18/05/2023
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
        pavel@zhukoff.net, tgamblin@baylibre.com
Content-Language: en-US
X-ClientProxiedBy: MN2PR15CA0041.namprd15.prod.outlook.com
 (2603:10b6:208:237::10) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|PH8PR11MB6927:EE_
X-MS-Office365-Filtering-Correlation-Id: 0182e1aa-c695-49dc-eba7-08db57b2b448
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wHpJwHz8oyiLlUlBXcziC+WHlmZMx/B5sf7SiVoeUuu60sZsuI38nZWbRdYuNXspY2ehZ+KmvKs5HCNiiEIMoDxoYTtczMVxytSciyPQXywkJAoxgaiF/74pE5CdNMCmgLkIHFtt3k3WBuzYkHZjADyp13uvQLZEdw1dCTVXmKV7AghIF2/sELJx7LfVAyxNqxZTR9y14+HacPDQfwndlYdhEXA2n+LQrrAe1MMfawJaRHfc1Bhd0u9a2Ev2rRchQarS4k1WUIb69Bmt0mQoryTsB7kRCk4bhOxO2Y/aM6z6RvqdBvKFozcYaEUfGvBvEuGUYvsG2YELOTzbFSCkGyRQgI+kC0/fmriT6dgHSb5VrVZNdxHD6+nxYhqtfFwJk/vXVJsXsKAf+Xc8fwGu3uUYtd7U+zFqbt0T0dEj5XQGIpBhi0Euwk4PRCpOAKWo6SsRARaAkRv6zAY10TGotGn/QKEdWJT/9Odd5yvnRghODTifJQuBCrqcXOuu002JfLWrL93VxzB9x4OEA2TopIb0frKD4tvBS8C8c6LfMp6ZZc6l1AwSthMzCQ/9ii2fN7E57RQ0xwrwxZTgUdxRI6z9Sj8hgyk39NJ/JchIbyfejT4LnSJKWFsYfoCsXMcoCuCK94x2yQAYhmL0zLWj/A==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(366004)(136003)(376002)(396003)(39850400004)(451199021)(86362001)(31686004)(33964004)(41300700001)(6916009)(38100700002)(36756003)(5660300002)(8676002)(7416002)(31696002)(316002)(166002)(66476007)(4326008)(66556008)(2906002)(66946007)(966005)(186003)(44832011)(6506007)(6486002)(6512007)(26005)(8936002)(2616005)(478600001)(6666004)(54906003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cHdTaVo4Q2hKSm9BUXcyaWp5ejZxeTFvQTRlblRSci91MEI0SElHeTB1MWFJ?=
 =?utf-8?B?RkhDUVdQRFMzN2R4aFpXblBsQ05qMGl2dDdwYUpOVGtsTXBMY05oNzZaSlM3?=
 =?utf-8?B?ZHJsdFRuRTYwZWNJV1dUSEdRc05qWnY0Tk1ENkVDYmF4allkamNWZXJSVUJH?=
 =?utf-8?B?UlJEa2tjU1l6V0FiVVlhU1NmUktGTUtlZkhrQkUwblJ4L3U3RkgySE1QOE1O?=
 =?utf-8?B?N2JDUG9GQlRCTTUxSFJabTJZYVVkaUNQdFpBRnprUlhzN2tNSitObi96UlNw?=
 =?utf-8?B?RmxPNDNhbjRoRHlaclhzRStnUGxPYlU2WWpLT0NoVUFsaWJIelB4czFmK21F?=
 =?utf-8?B?S2pqRk9XMFpXVzNqclAvbjNBUGIxNXlBWElvbWlDVGpldjhISTh2dnA0cHMx?=
 =?utf-8?B?MmRXYnVCQS9XSFpHR2lZN29ENnNBS1BNNVJtU3dTbjMvRXd4UlJGTzVrR0xL?=
 =?utf-8?B?ZitjdTlSSVJLQktsMDA1L3ZtS01rT0ZzS2dHTDRLelpYcFpoR1ZFSVZ2Vkkz?=
 =?utf-8?B?bC9SbXNnYXJPVndiT241RFZwN0dRTGVmSUpLNGIrZFZoVEtlNXFyK0dHVGxD?=
 =?utf-8?B?TTJCb0F1UmllWUlUYlNXZ0p0Uys0T1N4d2lERkNWOTZwYU9hQndKWXY4ZTc3?=
 =?utf-8?B?RnowbGRyZ1dvWmpBZFVYbTMrek05emZ1WjRMR25qaHdDVHBGWkVOZEQwY3FN?=
 =?utf-8?B?OWhpRlQ0UERveXUzZEtld2ovRE5tRXFRcUQzWUZSWVdwaFBZbTJvR3dHd3Ba?=
 =?utf-8?B?V0F5b0F2UStUV2xERGc4ZHkrbDZUWGdZUHNLWjEyZzg2WmRsRCt5WTZiNjd1?=
 =?utf-8?B?OU53alFMaTU3RmZiYlY2N3VYcy81ekN2Tzl1eElBSDFraWYyTDNTdWhBZUlv?=
 =?utf-8?B?QlMrNC9yMVZ6R1ZPbWRUVGFxZzduVWVhZ29Pbk1LWlYyUlRaVEFHdng3Q0JU?=
 =?utf-8?B?V1FmUG96Z0pKdCtvRkJjZGgyMmlveURzRmpwcEtxRTIzMmRlUGNpOHJ1bUky?=
 =?utf-8?B?ZFBPSUZQOXJUTmorTklXbFR3cUplSUw0aG51ZjRCTWhxbVA4QmdkSVpnek1V?=
 =?utf-8?B?UlJESFVMZUR6TTRWYzQyYWp5WEduMUVaMnlKNG02SmtyazFiTTIxb2QwUFpz?=
 =?utf-8?B?Wm0zUmoydmZNZ0h5NnpFZDd4dVpMY3htMkZrVEFVV3pmRGRyMUdydUtxZk5Q?=
 =?utf-8?B?eTRGcnREUHg4aUg0Y1pBTDNCMGMxMm10NXVOeVE3eVJYdExkSWhnQ2JjTDNr?=
 =?utf-8?B?b0VVODN0dHFRUXRXMXltU3dGNG1wQnNlUkFvcWtTQ1hkSUpHR256RDc4Z0dN?=
 =?utf-8?B?NTlyOXU2UnY4bkxzL3RzdnBkN1Y3aFBNdkFjZVl4Q3A4cjFsUVBMa1ppeEk2?=
 =?utf-8?B?S1lrQlJiTlFpcUFDd2k0MnpDRmUrTitpZlpiT28wdlJkVzRBOXFVUE1WbHFq?=
 =?utf-8?B?NVdIVnEzVEtTSUpoRFFPUHk3bVVPd0E4UDB1L1hxOGJLd29QZ1BkNUM4dFpM?=
 =?utf-8?B?WG9VMmJXMkFNL3NaM1NIbzMvYXIwSzhuTHpldWx4VWU1Mnl1dUpmK3FOTHBz?=
 =?utf-8?B?Tms0b2I5SXhvRzdYT0NSTlhRRXcxWlVOUkhQQWFFeklBbXBTbVp3VFJWSEgr?=
 =?utf-8?B?dTdGaWRydkdGTHlYU1FhVE15K09OT1dmbWtaRHYzNDFyZFJVVFdOTTd4Q0lm?=
 =?utf-8?B?Qmhvbk9VRDYxUFhXN3RndlVHbUpZVEVqQ014ZXRpbm5KbWdHbmxiS1J3OGpx?=
 =?utf-8?B?dEJHQStEK3BVcUluVEtuZ0xXQnBPRXVXVTk2Mi9SbVB6NzAzV1FCcVQ1S1Z6?=
 =?utf-8?B?L25xV3ZWYklhVEpEdEZUcHB3eU9LeWNnVmNQZlhOS2VHclZKdktRMG1RaTVw?=
 =?utf-8?B?Sm1aREM4R2loeWxuMWp5L1dKUndpWmVZVU9aeVRmTFlyMFZoVXU0WUxGOG5R?=
 =?utf-8?B?SU1yelJDaTZWd0dqWXBKY2hibFJCRWhKNE1jZEt1VWJLempDY3dKV0YxSk5X?=
 =?utf-8?B?eHJYQUdWVFQzSnhkM3dIb3JzUUZNSDQvTkNiQ1pOWEhPcUgvaUNTcURBbUg0?=
 =?utf-8?B?YlpVUDNZS0haaWpvcXVQd0sxbHFwdkhNUTREb1BzWS9iR29XNGFOemxZdlFa?=
 =?utf-8?B?TXdOUUxGS0lsZ1BvYzh2czh2aXErZHBNY2Q0WE5tTmJtMVg4dVVMRU9ISkZr?=
 =?utf-8?B?bVE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0182e1aa-c695-49dc-eba7-08db57b2b448
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2023 15:15:24.5790
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C6aUot8haFGW9d6NRMmogMuA6DRbFRJgCFsbG4zEj9TulKVlyd/MdpouzOQwaEnC4Pf19xAMHrTJ1TyOaIuvAcYUU/zRH+OKVkevBcsGCdM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6927
X-Proofpoint-GUID: RhSNulK_vRPo3MQ1CwfOFmey95eX3Gsz
X-Proofpoint-ORIG-GUID: RhSNulK_vRPo3MQ1CwfOFmey95eX3Gsz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-18_11,2023-05-17_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 suspectscore=0
 spamscore=0 mlxscore=0 mlxlogscore=901 malwarescore=0 phishscore=0
 clxscore=1015 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2304280000 definitions=main-2305180122
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 May 2023 15:15:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60073

--------------j4LiVCR9kWVDSc3YwjfMpc5R
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Steve Sakoman, Stephen Jolley, Trevor Gamblin, Randy 
Macleod, Ross Burton, Alexandre Belloni, Tim Orling, Bruce Ashfield,

*ARs:**
*

*Notes:
*
*
*

*Medium+ 4.3 Unassigned Enhancements/Bugs: *72 (Last week 72)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *44**(Last week 44)

*AB Bugs: *72 (Last week 71)
--------------j4LiVCR9kWVDSc3YwjfMpc5R
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Steve Sakoman, Stephen Jolley, Trevor
        Gamblin, Randy Macleod, Ross Burton, Alexandre Belloni, Tim
        Orling, Bruce Ashfield, <br>
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
      <p><b>Medium+ 4.3 Unassigned Enhancements/Bugs: </b>72 (Last week
        72) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>44<b> </b>(Last
      week 44)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <b>AB Bugs: </b>72 (Last week 71)
  </body>
</html>

--------------j4LiVCR9kWVDSc3YwjfMpc5R--

