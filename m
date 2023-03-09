Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1AB6C64EC4
	for <webhook@archiver.kernel.org>; Thu,  9 Mar 2023 16:32:12 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.18426.1678379527108070695
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Mar 2023 08:32:07 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com header.s=pps06212021 header.b=eMCs5bjx;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=24328c8b9f=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 329CXPp1019254;
	Thu, 9 Mar 2023 08:31:51 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=MNaCDzPIvz1+BzzmYvmXdGp+jrvV3oVkHd1/PsbrWa0=;
 b=eMCs5bjx5yrAm2ESvAMZOsk6hmfSXBg2HM+1tVkazPTbE3bLUAHJ8q+5++nhIaPBXJDK
 ZBukfTvAiRndjS4IszUYUNGIYPyX/WP6KTuWcjIL8cRs2+TM8RAqR9srSPncC9/5/GDL
 jCDg5Dtdr1wIN0idofa3vhbbJ12M8uX9bSEtUz4KsX8SkOdtV5Gg9a4Vmv9BxqfeieTT
 9ei4El6GxwdgMU6J2aCWRGOBIgJJATJj9MG3mhro+al2+ZIh5ZPHuFqJU8woGYFFFgjo
 VUibMjtW+W+gm3M2U+jS8ZeUfDJzSsA6Ym3uxHamHg6JmeXOQYE23YQPa8wkeumAcxtu bQ== 
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2168.outbound.protection.outlook.com [104.47.58.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3p6fff9uhx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 09 Mar 2023 08:31:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BL8egtl8DSmM0/MWHh73GGM/S4Zge0yXB381jUN4U3P2mWAW5r/bxyLfwOnD79TjQWn/YLX6GtWx08JcO1OHLV44764jh4ev70XKQLX3bRFoCrTpfuT3usD1oKkOUOUUWkBN5lcj4fAl8naVYbyMCruzUU+gsSwieu9tLNhCwYC09XULm9WNhKw+X2IsIyfx5B3d2hclFxsOu0wZn5rSK+oXMWLFiT5kSfU5n+zba3cevcjLB5xXZS8lwVDMjbAzTA3nGjgvNzr80Fxz28duuz8soQnOn3hB27yTzN262MFncW6YEMS43AXZ+1xK80xC6FCaVg9l7FsDiyMCeox61Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MNaCDzPIvz1+BzzmYvmXdGp+jrvV3oVkHd1/PsbrWa0=;
 b=bDcM4vp6vdL68l7XDQTDgwTK/s1SltbtTVKKAOaNTX4u5+1siuINh2fE7UQQsz5iFrWNpS9FMA27B1QYhABeSMieap24syIhAfnp45e26sx+m5vwIlq4G95SNOYjlbWhzls7c0jIIZs/JfcSW6o0tsuo5pjVqbt6zQh27z9btHy3H/ypfkBkOTAjqoS6TzQkRsF5UO40rAexpEGJ50R7Rnl1JLeX/8yvP/AJiqrJzqrbeWd1iifDdtNiyyTQAwOoBJX/40lukBeGqEtz1vq0ZPdcxiK8H/srPNIRUsPeEa9hID+NBq9JGIjUA7ktGiwV/GdgaGfV13yE9B9jUXMkeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 CO1PR11MB5012.namprd11.prod.outlook.com (2603:10b6:303:90::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6156.18; Thu, 9 Mar 2023 16:31:48 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4f46:b639:f638:d5f7]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4f46:b639:f638:d5f7%5]) with mapi id 15.20.6178.017; Thu, 9 Mar 2023
 16:31:48 +0000
Content-Type: multipart/alternative;
 boundary="------------i6wkrJgL2A5U4C8rpcIlW3to"
Message-ID: <1ec16fe1-3fe6-4d0b-6fb0-fbf15270f13f@windriver.com>
Date: Thu, 9 Mar 2023 11:31:44 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 09/03/2023
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: alexandre.belloni@bootlin.com, Bruce Ashfield <bruce.ashfield@gmail.com>,
        daiane.angolini@foundries.io,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        luca.ceresoli@bootlin.com, Pavel Zhukov <pavel.zhukov@huawei.com>,
        Randy MacLeod <randy.macleod@windriver.com>,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        Khem Raj <raj.khem@gmail.com>, ross@burtonini.com,
        Saul Wold <Saul.Wold@windriver.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>, tim.orling@konsulko.com,
        sakib.sajal@windriver.com, akuster808 <akuster808@gmail.com>,
        valery.chernous@gmail.com, Zheng Qiu <zheng.qiu@windriver.com>,
        pavel@zhukoff.net
Content-Language: en-US
X-ClientProxiedBy: YQBPR01CA0105.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:3::41) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|CO1PR11MB5012:EE_
X-MS-Office365-Filtering-Correlation-Id: 99c090ef-b647-48c7-624b-08db20bbc74e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	00LS9maDdrCtcCeBshI8jSBoKT6qxF9SprLGvAXKtjMVdZqXP6H2ZwjH8gMUWcHVkJnSJks+GVRiBnzxV5fDw00t5eWXij1XtNjb/BAYuFKw13MXvcLmCHY0PTN8eCIpBRXopPmJA0rg789wgW3l88yVQPcWGO4ihxa7nLjIFuKfml1xwXaBH3aQ7S2rOJSiRA4KnvXrLSaFVnqTjiCRJUk9YVXpFL/jJiF7/HIAUcQ7kaMQ/+aX/OgOqlHaX7r0ggZ2GeySq0gh4saO3XmbvVwCkjzLoVPCOAH4T1GjK4CZ21Qc9FyWoWqcsXUX3nvpGfm5r14jtwrnu6r6crwIhgmUuBbfEbFgAIp8QuSveVVJTO8aTku/Hwyl16OjHSQiOaJkZrhODoEMj/Rhh7jyDDnsquxQjf9OtPDVZtKGaOyih+Es0uMTfjy5rjv/v5dRLfgkLmuCr3UL1S9swOb7Cwgn5jGh5m7Db/hV5ymJOmuB6M1+gLJO4O6wLF8gtWom8CILiInyYQc1FaV00XBOWUolTYBxCqd4FVNjED7FgbziT3XW4SLJfvv2CHruAj/E7KfqEpesxVxnguFGrglmhhgRoALtSV3mmQFfp/h3zOhcwgyit+0JyPqKTblSoNov7gQRgQ54ImBktRAC4mGKQSiRlO41/3NDWUYPVAGtFttaTrmOh0fnLkB/yxv11zM0psR/sDcP46iLh0XTNkJ0DgW6s4lFW9q2iMvWyE4TqLo=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(136003)(346002)(366004)(376002)(39850400004)(396003)(451199018)(86362001)(31696002)(6506007)(2616005)(6512007)(36756003)(33964004)(6666004)(6486002)(316002)(2906002)(966005)(31686004)(186003)(26005)(44832011)(6916009)(478600001)(7416002)(5660300002)(54906003)(4326008)(8936002)(8676002)(66476007)(66946007)(66556008)(41300700001)(38100700002)(166002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RUZMTmZpVE50TitIQUJPMzdlKzQrc3NPTzE4cTBPVjFQQXJyZS8wZ2hnMDUx?=
 =?utf-8?B?LzhYN0gxMTJxa243bUJHUWtvbzZhQjA1ZEpqNWtyL1ptL3ZmRW1mcEhFZ2py?=
 =?utf-8?B?ekkrbVNzdTc3d0pLRVpIeXZKOEhyTWhkVUVnNXdFSEFCWTdqb0NYNmtmZGl3?=
 =?utf-8?B?aXo2Q2NMcWM5Q2FDSko1Wk91RDU4TlhKMEV6Uy9NM2FIV2l2NS9rOHFES2Zu?=
 =?utf-8?B?VkNYeldpWDl1enNvYzNQMXdKYVNLc0hTUnNrVksxanZYTFBHaWhIaW1pY3JQ?=
 =?utf-8?B?Q1MyMTNQandsYmdSalNJY01tRUZmSlhZWEJJREpNZS9TMTdkV25UcHROUU4w?=
 =?utf-8?B?UEVFTm9iVUhPMmUxc3FRRnpOSnFEU0xZMHhEZjdrand6cFRVRWZ0Mk4rRlM2?=
 =?utf-8?B?VjFWeWhzUEJUa3ozL1hYTlRGWXYrRzkxOTJDVVc4YkdTaTQxK20wUUJNT1Zr?=
 =?utf-8?B?V3dpa3RmMitKa2U3Y2phckt1TEpvUVNhcjYvU0FKaUhlc2RpNmVpcHVTakd4?=
 =?utf-8?B?Z3VRaFVhK2VBZXhRNit0M040R0FlOHphc3B0UzFHaWZsZU4rUGhLS0UwSkl3?=
 =?utf-8?B?SS8xWXVIL3VYOWlpN3BlY1M2RGlVdUR1aU5TSk9tTThkdDZjRnFaZ0FPN2pu?=
 =?utf-8?B?VVhmT2lyeWZjVVQwcEhqYWRPZnNuYzV4cWc1QnJ6UFQ2eDU4ZlZ6d3NkcFpT?=
 =?utf-8?B?V2VEeTZOK216ZkRGZ0JzVTZFV1JMSmhzM1phMkpzY05IY1Y2aTRQbXh1ZGdp?=
 =?utf-8?B?N1l4dDNZMHNCUzNGaGwrbTlPdjIzNW1yNWNsOTkzVFFTSmZZNlhmNkp3aW9D?=
 =?utf-8?B?K1ErRDY2RjRnWDlhM2lSVStNMWxpbXArczhhb1RWOFM2QnpWTDRXQWtHOHkw?=
 =?utf-8?B?a0pZWSszdGRkQ21nV3RDVXlmZWNJR0hXWVZLdlJwM1JSS2puYVM4UXFJRXpq?=
 =?utf-8?B?WDY4NVAwWWdCa3pHM0cxNC9aT2NHTGI4eWlZeUFVVHQwWlBTSkhxeTRKaUoz?=
 =?utf-8?B?TXdRTzUzd3BuNVpVR0Q0VHhtNDBQTis1UWQ4c3VaTE1uc25kMkJYWkhXNlpr?=
 =?utf-8?B?TTdmNmJIODFDZFlJOGhGRFVFNzE5WUVFZDVJUkhiQjVPYVZURjN5dGVsSjZZ?=
 =?utf-8?B?QWpCWnVhaGVIbTNTc3h0YmdIb3QxSHQwdUtLVUFROFhsZHYzMVRJUzNkK1Er?=
 =?utf-8?B?K1o1MkNJMzdLbFdDMlZoZEFSamNYWWtzV0E1MGFvN2VWM1laMU1VcmliZmVm?=
 =?utf-8?B?TjBpRGtWNXd5c1VUWFVob1hubEtxbG45K2Y5aFJwakpZc2YxVWo0dkpVUUNF?=
 =?utf-8?B?RWtaWTl0TWZvRFdyeEVuNyttTWVLL21CZ0hlc3cyMXFXbWEvNWowcHd1LzZs?=
 =?utf-8?B?NWJhaEZSVzNVVHpLWTVnL2hHamxpUFhQQmFRSDdIKzdGNlJFNmhFUzA4RnJt?=
 =?utf-8?B?dUpFeDJLK1pxUDhaTUtzR3VTMXVKNXVJNkJqZTUrU3RnMGNQSE1acGxEZzJM?=
 =?utf-8?B?YnZKNE9MZ1J1b0xDSEVUYnlRbmw1N1I0VllQejd5MC95M24yOEEzcndZNlU0?=
 =?utf-8?B?Snc2OXFNWVppQnVYTTlqQW83d3VsdTdOanVtRmtiWUZyNWk0dFdMUmxqN0dp?=
 =?utf-8?B?d0RSSU9nNlppZG9SZ2RhL1M3T2FIa2VLT1p6cFR1MUdSQ1kvcnZGL0lNRmFq?=
 =?utf-8?B?QzBvS2xqTXlPWVNJTVJWdis4RkY1bmFtT2NHSWt6V295RjZsYUg1aTlxQ3pu?=
 =?utf-8?B?REozbGd5VkJkVE0vZXp1NkVSYkZWdlJMWWFwTVMrNzhXNUxEQ1BvTVErSUZr?=
 =?utf-8?B?dWJXaUtKTWpkRDVSbDhQOXVXTmdYWVZpbURSdjBxcGNHRXhGNVZZa2VLS1FN?=
 =?utf-8?B?ZERUeDdaSzZPeW43WVdrK2E2S0J6Rm1Kek5UdzlRcFNOc2E1MStTVGFzL2Fq?=
 =?utf-8?B?ZnBjN0x6bjVBeVFqeWRUUmFNQlRGRXZJMHJ3THlSVjVXVnlxRkdGUVA5aC9U?=
 =?utf-8?B?cE5MSys4UXdxSlBmZEVvMVZudFpPZnh3NForVG55MjhES3FISjEzSVhKMzZX?=
 =?utf-8?B?eHIraFhtMWxtTzhobUZ5ZTNxU3Awb1lDNmlVQkxnVU82K1U3SS9BN08rZWtz?=
 =?utf-8?B?V25ZaDR0RXJ1d01oV2pSU2pvY09aMnprVm1pM3lrblVrUDlVSkg0K0ZzcHRl?=
 =?utf-8?B?aWc9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99c090ef-b647-48c7-624b-08db20bbc74e
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2023 16:31:48.0958
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nuXonXcZxiHoUe2vRBnwdbOKdcdEy1Xqke5SXCW1KfhQs4XJJWm22pmzEmCDHpJ/9O+rehROa8s4pjUxOuseQKNiDA0bKrIutchIUTzuvYY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5012
X-Proofpoint-GUID: 1sUfHDYsPLWPqYDaza5ZqMZnZVEQe2uN
X-Proofpoint-ORIG-GUID: 1sUfHDYsPLWPqYDaza5ZqMZnZVEQe2uN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-09_08,2023-03-09_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 lowpriorityscore=0
 malwarescore=0 mlxlogscore=818 impostorscore=0 suspectscore=0 spamscore=0
 priorityscore=1501 phishscore=0 bulkscore=0 clxscore=1011 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2303090132
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Mar 2023 16:32:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59375

--------------i6wkrJgL2A5U4C8rpcIlW3to
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 329CXPp1019254

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Randy=20
Macleod, Joshua Watt, Ross Burton, Alexandre Belloni,=C2=A0 Tim Orling, B=
ruce=20
Ashfield, Pavel Zhukov, Yoann Congal

*ARs:**
*

*Notes:
*
*
*

*Medium+ 4.2 Unassigned Enhancements/Bugs: *48 (Last week 48)

*Medium+ 4.3 Unassigned Enhancements/Bugs: *8 (Last week 8)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *44**(Last week 44)

*AB Bugs: *66 (Last week 66)
--------------i6wkrJgL2A5U4C8rpcIlW3to
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Richard Purdie, Steve Sakoman, Stephen
        Jolley, Randy Macleod, Joshua Watt, Ross Burton, Alexandre
        Belloni,&nbsp; Tim Orling, Bruce Ashfield, Pavel Zhukov, Yoann Congal<br>
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
      <p><b>Medium+ 4.2 Unassigned Enhancements/Bugs: </b>48 (Last week
        48) <br>
      </p>
      <p><b>Medium+ 4.3 Unassigned Enhancements/Bugs: </b>8 (Last week
        8) </p>
      <p></p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>44<b> </b>(Last
      week 44)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <b>AB Bugs: </b>66 (Last week 66)
  </body>
</html>

--------------i6wkrJgL2A5U4C8rpcIlW3to--

