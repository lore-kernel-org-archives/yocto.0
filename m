Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D358C4167D
	for <webhook@archiver.kernel.org>; Thu, 10 Nov 2022 16:28:12 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web08.9582.1668097684372157593
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Nov 2022 08:28:04 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com header.s=pps06212021 header.b=FiSHdKkm;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=831374d7ba=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2AAFKIkm025955;
	Thu, 10 Nov 2022 16:27:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=content-type :
 message-id : date : to : cc : from : subject : mime-version;
 s=PPS06212021; bh=0fj7TKyGm4Y8Cz1MDxiA9aCtwP37XYZf7iZrKWt0FhI=;
 b=FiSHdKkmvz4sZFHCsfaud5y4KBCqjQTodGyFdZkQ3dztxlGBUgh6sjjYnmcEraU8q6M4
 EXaVqLWDqZYkim/58vyAEdEGQ9eFv451IYRTi+mJT4x5d1JUc0sBhcPVQtiEEe6Kzc8f
 Q5XiA/vDAsPC7np8QcYi34CWTym9rGzHvIOHEKveYCw4g77tN+232xfhU1TX1AgA2R6d
 4NgY0WZNwsrI0gl1qX87ETBPPB6vEEcSEVNuinxZbowWsZ/LndCnUe1nnejYytTPJKkX
 xahVONs1Id/S2Ig8gVnxHIFQXTruVtApf4kW5oPmlDBqloqTSAh6dD3ZrJBC3ODNc82m gw== 
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2043.outbound.protection.outlook.com [104.47.66.43])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3knet9mu06-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Nov 2022 16:27:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b6nYUl8tHsf8cVhn2QxsHrXSN/KYEae6ouRyWxlREFFB0ykpe98YgS6L0RyT5VInGewwFioPwGvXZ5yy2+I1nMNPJc/8vUpX8F4z5hcjcSOq+CnXyIZnEfGP+f1674QphgqiDntNstfaQwp104galHzVvheJqHUObVXp3QxjY3kSui49OFqh1GJqyoEEayBvkgPM+JEqRLLU62LIPEgWWNa3fMn4PyV90ErQJlTS9sVJG2pHAbo/BWyRUZLl1F/7hEHanTNVlZTWF8SNpi+o82Y9JyBRpbWS8ePFADVRf7DXF7z7tlYTq5Os8Mon9TY/MP2+m//hjKY805sW/Pjo/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0fj7TKyGm4Y8Cz1MDxiA9aCtwP37XYZf7iZrKWt0FhI=;
 b=lExBRkbGQzm09ZGziuGg/q9yhesiPKslwgPDb17pCnX1LWGJM27vFVuR95EbZqe6A8msvfAbNLxyFEJRBAgeVgs581djGXvNdf118QiYbvPZEy9lswwN7tbFIRHiAin545G6JQ38kqgDsEo4W0bMTecDqZnx/gjxQZaYmq6DF9B3sjb4r9sQRHyzyylY2qb9iyUwhzI45l6OqUvD4ndvJvTzehSgrmq8ZcLfnddFTr3+MGx4ftigFvuR5mrOSOeEBL0rK0QvbViyg0E3uiMpsiA0kVsUR4szZrQF+hIbbUa79nrMh0R/r6XzqC+WSEWyCkluDZ7HTWZ5CE+hECt9MQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 DM8PR11MB5639.namprd11.prod.outlook.com (2603:10b6:8:24::15) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5813.13; Thu, 10 Nov 2022 16:27:47 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::1f24:5efb:1519:ef4d]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::1f24:5efb:1519:ef4d%7]) with mapi id 15.20.5791.027; Thu, 10 Nov 2022
 16:27:47 +0000
Content-Type: multipart/alternative;
 boundary="------------NLOig80KyrlDduItVa0lXHev"
Message-ID: <f4b0ed2b-f44e-d309-34a9-5a8cfa07e2e8@windriver.com>
Date: Thu, 10 Nov 2022 11:27:44 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
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
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 11/10/2022
X-ClientProxiedBy: YQBPR0101CA0234.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:66::10) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|DM8PR11MB5639:EE_
X-MS-Office365-Filtering-Correlation-Id: 35c79cea-9047-45eb-3cc6-08dac33880a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	IaZh6bN5t6S65CFqgDSaiueyYN3fXP9Mv/vsIFXTspMFupmeovyen/n9h3wESiyS1sG5LcF85nPGRm7fXECIAyioXpHjGoNTqDZ4qiyI13jwCp8k+76DNg/wyZaXpLRDUvjna8wHiLLfJlz2mFTsrbdI4Pzo7cdIwlT4VNoNGkPFoazvPwq0sfCTkeeN/cjT6BPU8+1i6sTP8yUoO2BarZvU0kaCZciAySOW6V5+YsPuYw/a8Cvx1OqWNEtUX/41ofIyakDZJpT/O4pklb6tdVmWYC+nOpCmEZtTXxlr9mR1+ZoJc1aSi4Zhn3EFk41hsJ1h0eHM04yRY+n8ItOORhe/Bu6a8CdiFfm6STys7HWspuRZ06Kz0x3xQsyZicW6jZrkSB0q4HFRvrf3OH+axlgVks7egICzgpdLPxAn3Z3Bylmg1uJJhMsl9DoIFs9rfdqVgv0hcGBS5in44b14Vcv7RyYOVMALc0cDIsJbVy+niOHEbYtgXEHnEMRuoo21SMfJdYhLqUpuYdKHWFTBFpILnWQO/jx7ZP4eW8nvLrW0G7WJWw15xkN00Clcm4W3DQUwZaxkJtcaxODQPCKMNDuNv3dfWLQDw0v+j4bnZnuxML9e6PFGVw43Abtm7FwmMobNLzSfcDoHh2SLIHGKgXcxMrJY4UQqmOvlgaHKN0FVbB8OY7EjR5p9Hi7fBUSjdM/XqUF34gNKNAplPCtvMdhBqbWKPqsJS3FlXmG6dZauuf0KY0Xoo6tvhtCTND0/s+G26kxBhz3+oO8ChoVe0GZU4x2dCST5VTLPRe63rCoWs8ey19StsGb1k5tsqjdR
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(39850400004)(396003)(376002)(366004)(136003)(451199015)(44832011)(31696002)(86362001)(36756003)(5660300002)(31686004)(7416002)(166002)(2906002)(2616005)(8936002)(4326008)(66556008)(66476007)(8676002)(6486002)(966005)(66946007)(186003)(38100700002)(41300700001)(6916009)(6666004)(54906003)(316002)(26005)(6512007)(478600001)(33964004)(6506007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cVRTWEdiUHVjajFSLzM0UVRYR1JJQnAzc1I1UGpVeGtsYmdWMnZQdU5iK1U5?=
 =?utf-8?B?N0NyYld4b1JaaytxSFN2YWhnZXd4NER1MkFwcFBIRHdUSHB0NDFtb1FQQ2Jj?=
 =?utf-8?B?UU53cFo2NWt6ZUViM05Jd3JHWUxteUgralVUanBINlJlRkkzTGFhaXlETVNr?=
 =?utf-8?B?QlB0a0E0anBaWURSdXc3enhjZGRqK3p3dC9Kck9zQ0psZHFxZTZBWlFTZ0tm?=
 =?utf-8?B?eTZ5T1ZuclN2OVl4MS9TbURxRis0RFVTNko1cHZJaFB2Y3pqcVo0ODI5T1F5?=
 =?utf-8?B?eUV1aWxEQ2RwV0Y4dUVBUnJIOHFZbEJSU2duUUNiZG9SSFJiTWMzYkNaV0xI?=
 =?utf-8?B?UXpLZEgrcGxWNFpXN3VyVzRIMEc1Ty9XczdoSmlsekNrYjJLT3dYeXk4cmhn?=
 =?utf-8?B?dUxOTmhON2kzY2czYVpEc1ZrWGR3UXRDalk4TVFkalFxVGRhaHJrdjRtdUFN?=
 =?utf-8?B?SE03VisvMC8wRmhHZXdEOUpCRnhTWkJkRk1yTWhKZTNYbG9GTlplSmtpWlM1?=
 =?utf-8?B?Z1E0cGwyYjY1UTJRQ3VkUUpSUnd4YVNSdFUvTndrWFlTSVZnSlJHcHhZSTJ6?=
 =?utf-8?B?ODRUMFRwRWI5cnVLdjRYUnVsMkJkMTNGVFFjcVFzU1E2ZDg3UXg2TmxFdFcx?=
 =?utf-8?B?ZU5DcXZRa3A2VnRWcG5wWWpNU2tQUzRaZXhtT0hvbkF6YjNuU0d5dEE5RHNk?=
 =?utf-8?B?LzJmdTRWTzdxUy81ME16YjhBT3lHc0FDWGxXYXNpYng3QkNwNUxyOTBpMkt6?=
 =?utf-8?B?ZjA4aUtNejRGTlE1bjdQWldOLzd4Uzg3US9uRVJnQytscDhnUENnazNSU25D?=
 =?utf-8?B?aWZTNVg1T1VYcWFhUHEzaDJWZ1psSjV2VzdHTHVjVEJxYUd1YzhtWlBJUC9W?=
 =?utf-8?B?V1Fnc1hZcHBjU0lOaklxc2p0NnJNVnZDdHpKVnFmRzd6QitSYnVJTzBpU29X?=
 =?utf-8?B?Sit0WkN6TFNNQU9aUHU5TXVsNnNBK014dCtQNjM0SGhGVmIyYnowTU9jNjZI?=
 =?utf-8?B?ellpV0IzNHJSVmg1VVNpTjhUNlZJRnVFbHBsTmdiK3FlRkQzUlNNY2llcXFy?=
 =?utf-8?B?T3hBNlRqdERodFlacHU4Mm9CWmd3eXduRGtmYm9hczhVNWdxSXh1THNKZFpV?=
 =?utf-8?B?alZpM1RzT3dlYUloNGVzMlJ5QWQ2bjU0QVJxNXdMRzJvM1ZmOW5xc1FGNkJL?=
 =?utf-8?B?RHpwTWZGVjQ4Z3hlaGR6SjJDZTl2NU13MWlmVkpjVkIvck9qUVVrcW9ZZytp?=
 =?utf-8?B?SGRoWTgwOGE1NFB2bnZuQzJUdkRPdDRaM0lMWFlmZ0k4YzlwZm9OQjVXQjZ5?=
 =?utf-8?B?eUhmdWthVVdUUDI0YjgzYmtkWExrTlpMQjhqcHRkNytRRjRseE1iUmVTTVVY?=
 =?utf-8?B?TjhwWk9kandNNkoxTFpabityaG1rN1kxTW1LTnVOMTgvVjMxZFFtVVB1QjZO?=
 =?utf-8?B?aTNWbjdzMDcrdDJnZzNIdDRHNGZzMTRVSUhZVEVvN3ZGR1pWOVplTGZwZklr?=
 =?utf-8?B?WXVQWWJwYURIdEVyV2V0MlExenZ5UFZpM2VtV25BVHc2MUd5OWVnbzY0TXZV?=
 =?utf-8?B?TkRpQUUyRGhac2plOFlFeDBzR0dJYUQzV0puNVlMTGZiR0tEczhydXgzYnNN?=
 =?utf-8?B?dGFTYnhQMTduUGlqb3REbEI3QkJVVzc5VjFvL1BPUVFVYVF5c21aaFgzMThu?=
 =?utf-8?B?WHQ1Sm9pV3B2QVRFL0tMa25xbmhWOHl2OTBCeW81aTA0QUFEQUZwQkwxZW8r?=
 =?utf-8?B?VS9aOEJ3UFp1Ukpwa1RiYWJWZVpqa0xmTzl0N1FPZjNyaUlyK0FBMkpkVGdD?=
 =?utf-8?B?a2dIZGtpcGl4VGh0RWY0aEc5SE96OTN5MFVId1VKdkZpcE1WSlR2b2NRTUsx?=
 =?utf-8?B?WHNuNU96UEVyZUNTOC9lMXhlc0lKaC91UjdLQXVPWStseUtSbUdmMldvR2o5?=
 =?utf-8?B?UFdIQ01yN2hYdVNNdXlDZDlkelUwUkxqY2FKUjUvVHYzUXFwbXhoTHZoM3ZY?=
 =?utf-8?B?eEplWTNWdFd6ZkZ3YUFvUFhwQVRUSm1HcnZKY2VIcThhWW42eEZJMkZhYzRD?=
 =?utf-8?B?ZjV5Mkx0bFdkYWpHRTA0NG9sMTdMY3VXSkVmWksxWmJ0RmJmMllkY3NHOWZ2?=
 =?utf-8?B?Y0dKL2FNZXQzaHFRV2pIWUxOOTJOY1FCdEdVV21yeXd2UVlhcG0xSXRaWW5O?=
 =?utf-8?B?WFE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35c79cea-9047-45eb-3cc6-08dac33880a0
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2022 16:27:47.4759
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pwWBrdkgcztJ1xd6UrlHM74V28XIOGHMn/xK5TB1QosbMcHzgSmfCG1ZYysWx74woU9m5jzU81WUfljWNXYgjHYlHeES78uqfBioaZV5Iss=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5639
X-Proofpoint-GUID: vQXMHXebLJRTVKyRoGdcx252Pc54IUYD
X-Proofpoint-ORIG-GUID: vQXMHXebLJRTVKyRoGdcx252Pc54IUYD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-11-10_10,2022-11-09_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 mlxlogscore=798 clxscore=1011 malwarescore=0 phishscore=0 bulkscore=0
 mlxscore=0 priorityscore=1501 spamscore=0 impostorscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2210170000 definitions=main-2211100114
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Nov 2022 16:28:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58537

--------------NLOig80KyrlDduItVa0lXHev
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 2AAFKIkm025955

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Randy=20
Macleod, Joshua Watt, Ross Burton, Alexandre Belloni,=C2=A0 Tim Orling, Z=
heng

*ARs:
*

*Notes:
*
*
*

*Medium+ 4.2 Unassigned Enhancements/Bugs: *69 (Last week 69)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *45**(Last week 44)

*AB Bugs: *61 (Last week 61)

--------------NLOig80KyrlDduItVa0lXHev
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Richard Purdie, Steve Sakoman, Stephen
        Jolley, Randy Macleod, Joshua Watt, Ross Burton, Alexandre
        Belloni,&nbsp; Tim Orling, Zheng<br>
      </p>
      <p><b>ARs: <br>
        </b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes: <br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.2 Unassigned Enhancements/Bugs: </b>69 (Last week
        69) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>45<b> </b>(Last
      week 44)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <b>AB Bugs: </b>61 (Last week 61)
    <p></p>
  </body>
</html>

--------------NLOig80KyrlDduItVa0lXHev--

