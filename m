Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D82CDC433EF
	for <webhook@archiver.kernel.org>; Thu, 14 Jul 2022 15:31:02 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web09.8968.1657812662292864770
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jul 2022 08:31:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=nw4L/wxx;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=4194a40724=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 26EDlLkj025021;
	Thu, 14 Jul 2022 08:30:27 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=cYrURmxOiS+iDS1al0hVO0PLOdkzRJ2oxIBNL3JsczE=;
 b=nw4L/wxxYtzM9TDbgO8t6rsU5gHwe4D5pMaD4Fg4bn83CaV7rX0SNcbfmG4hJpH/2Nlj
 sy1TBI9R12s4JJU0PqJ3Iuy729QE3oBdFTqfFIxsbHP3z3O3RadODPXatqvXTx55rn5x
 +4fMemdBiDiW7C3R2i4bNo6p5Nhg5HORFRgOYAKYfTjPeUa2nAgzmK6m/E+S++2U/xrU
 WhNJ6nf/7o100oNOozOyRA9IDCuuzNR/DWTt19qDgb9GyTRrR22X3azwsUU64kwhkwv+
 F9hmibsB01lTWWy+MkH6zOQSBzZOFtZ0r5U7VWHYS7kVYsY0UyF1r5yC6lB5OCniFATq Mg==
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2106.outbound.protection.outlook.com [104.47.55.106])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3h9m9k1f10-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 14 Jul 2022 08:30:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BnECECZHdM02m2zOnNaQCKeXehKiOauwltMxT0UqXL80/KCl4f8BcXLhjuCjuqwUyk9IPX92JaOeXDSlecm8l8LhA/1JBlhzHGLs0h3Z5jm4BF0nC6lOgCS0bRKFvc6fHy8gaAbm/kauM5Tkz3QpvIWJGYi/zvICFIhNvxIJHgerBApBrRL4gmE0DQ5y4A6hJskspZvw2uDgjsLkqO8Kt58tLK1C2AjjGZ6Nw3jBWLkjDIc143pEahomTgo11RZbg25IgNPcFpNtUCbdD1qgDFJCu76o0Eb9ZwfjKgRGrZnCWMMJqoEnPswurExtXLj6NWs7WRI+joDAIcysx02qbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cYrURmxOiS+iDS1al0hVO0PLOdkzRJ2oxIBNL3JsczE=;
 b=e3zTa+6HX77u9d3hKlGd86WWujGD6jzIGkqYJCutwgoj0UAgcpwfzB0QPk46xGbBCPGjnlaqsg8ittKfjLP6gDkg65NS4QI23F9begcFpoq360JoZFDd5vjoq0/Pzeo3ZtDZZyRNvjIAZyhlXJ4PUgo3aPVqEJ8zN/5A8VqPQu3GwnOSKyZrM+2XmjeyFf/5fh8ao16C6WfhU1PWjKvJvdDzBxrhStwl/c44tbXpH/Vs9KdvZTjvVPQDioIOonMvmj0bKVrtv2KLRIxigZ8MnsOJdeXts/bT6sjiDQANUPM47jXkDLd3Wiv5eXHjanzKH8CgJJb2avq4OY86oq6vJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BYAPR11MB2536.namprd11.prod.outlook.com (2603:10b6:a02:c4::32)
 by MW4PR11MB6764.namprd11.prod.outlook.com (2603:10b6:303:209::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.16; Thu, 14 Jul
 2022 15:30:24 +0000
Received: from BYAPR11MB2536.namprd11.prod.outlook.com
 ([fe80::dc7c:ee81:45b8:190c]) by BYAPR11MB2536.namprd11.prod.outlook.com
 ([fe80::dc7c:ee81:45b8:190c%7]) with mapi id 15.20.5417.026; Thu, 14 Jul 2022
 15:30:23 +0000
Content-Type: multipart/alternative;
 boundary="------------7HC6VwjfGHTAzagWHrcmSIDj"
Message-ID: <110c9d97-6dea-cfdf-c64d-d2d3869f2429@windriver.com>
Date: Thu, 14 Jul 2022 11:30:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 7/14/2022
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
X-ClientProxiedBy: YQBPR01CA0036.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:c01::44)
 To BYAPR11MB2536.namprd11.prod.outlook.com (2603:10b6:a02:c4::32)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4e9db2a2-363c-4111-0d0b-08da65adc4dc
X-MS-TrafficTypeDiagnostic: MW4PR11MB6764:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	/lvbKXVxr4wzTt6ZRGBPh9BhNDSzSzN4jvEwd+tH7AMwJAR02Qdwnmq4eV1Aqu3DQtEFOOtcDYVyHTZs3cBTR3v7f1H3TJj95TZ4D3uPcpPZKqOoIL1OaHI+4TEi/QeQoclt3cF8GzNwAD0TNz+SZX1Mut9FJihb4TZaEEHubzQs0MhX6c6QvfBIGq1qJvw0mbwewaTUgvjZLoU1BCLiMs1buUES2IUkuNSQhxWWbQvHCY6xu8mtCkZZgfF9HXN+F/kLkE67EY1woSW2il7bsmANyeI/44W3NxobKUyDFPgHRmzZKgSRDNJmXihLMct+8xf/l5Ai6Bc/IGzCr/nFAw47bCkc0EHouT8UpFlNabTxOjmxhJq6V2GNMQUaEhqEzYLbM+QkRYrRxTSk8X/88q/mRv5eGafhBfH3Z+z+Fl00EGhZ9538+tc+0Libg0ioi9OigS2iweuLLHIXEvZgxaICIVFmkTrwCWJQK/AZxBLS4c4dVV9/HjZpBtYukzh9JUuZLhcUKaOqYhvx+TYC5qcKQ1XdjR8SJCKTvAXFwPlrTaKk0y1xqZstNu8qtOanDo13wXan14WtxNoTC7g3sZq88+9SjFqP6HLYpHUNd6wUNE3cW7mRnjhj9YMk/RhnthahgPDXgYMKxPO3LOr/vySNNoUboYiZbKZ9M5NoDd5CSkXmIKv4JQ6gM0+i2SY8esvTxoOER9HWjyOwmnNIc6jeRUYsonB3LRCHzT+X4Z1/KeoNFgjEnnNEPGgkbfJnm9Ht666ZyJBbK3deGBho618kuRhNZMjmfwn2f9uYw0YyYxjvLFJBtrhEeoqtm5xDKc0Sy6IX9SY+Rzxv+mFViGCfeT/zQMVbU0SDogYHsz90wUl4mYKYEVdwdHFa1iqVqByvXftQa+mSiuNiHtZC5A==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2536.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39850400004)(396003)(376002)(366004)(136003)(346002)(36756003)(5660300002)(38350700002)(66476007)(54906003)(2616005)(107886003)(38100700002)(66946007)(66556008)(41300700001)(186003)(31686004)(6486002)(2906002)(6666004)(478600001)(6512007)(86362001)(7416002)(316002)(31696002)(4326008)(26005)(966005)(6506007)(52116002)(8936002)(6916009)(44832011)(8676002)(166002)(33964004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Z0FaUE01ZlpMSzB1OGZnYXFUOTh6VFFsd3poTXVOb0JyUjlMMmNtM1ZEcTUx?=
 =?utf-8?B?dTZkQXQrczcvenkvdXBMcGhPMUxsQU16RTNnakdlS2hvdGlldG5ldTRtZzdQ?=
 =?utf-8?B?eVUxcHFYUVNnVU8xOWhpZTRzZGd0aEpCTy9QVnNXcWovQUVuUzhaQTlSdW9M?=
 =?utf-8?B?WFc1bk50a25hY0x6ODlDeDFYT0Nwdm5NZ052ZDFuMGFZOUlKTHl4eTJCMFc1?=
 =?utf-8?B?K2UzUXJjQjNZUEFpK3NOOWl3WE14RTNhTHVBcmtEczRpQnhLOGtXbzArdkVM?=
 =?utf-8?B?TlZ2UW9DV3I3cmlpTVNHM0J4NWRCVWN1VlhwcUNLS01ab0NTck5MUE5IRENn?=
 =?utf-8?B?a3ZaMVoxdkgzbXRqSTlwMEtaMGpoaDZjblBtM2hacEpxRUxyTm9SNTBUa3hW?=
 =?utf-8?B?L1J2QlhmOGdBQ0pRVzI2Y0RUc1JmeWhrRXhMeWh2Yk9XS0orejhGZ25lMGFm?=
 =?utf-8?B?KzBsSzVnT3BvK08xU3BRNGk3YzNuQmVmQ1FRQmg0US9tRU9rMDZ5TTdzTUhD?=
 =?utf-8?B?SC9jUkd0ZzRUUWh2dys0V2xtQWxSbmMzYVF4VDNPdVl2dmhwU1g2SUkrVjBI?=
 =?utf-8?B?aUV0RkRhdDJldzExZEtBb084cVFxUnlyRlN0YjJZZisyVzNQWDY1LzZZQzUv?=
 =?utf-8?B?MUYzQ1V5a011TEw3TktMVURrYzhWSzFtYUUxMWgxN2VZZUhIdU9mRGdsVFNI?=
 =?utf-8?B?cWlNaTRWdCt5MmlDZisyc1E2RnlZNHB3U0ZKcXhlZ2p3T2tTMUFtVlpGUTRj?=
 =?utf-8?B?QzluSkFWRFhuTmZPMmphdzBXVUQ2STJlMFpQV3QvajZWWHhyR1NRZjRSK2o2?=
 =?utf-8?B?c2ZNVlM4YjV1eTlyaFp1M01xS0NDbjVJK3JEY1h3RWh1b1haUE55Nk51M1Zt?=
 =?utf-8?B?Z0dWSGtHRzFFOGFiUFpGQWJGM3RrVU1zQ0RyY1I1WUJjT2RPS2Vyc3NYZlFk?=
 =?utf-8?B?NnUrQ2t5U3ZWdXdadUZSUGZzYVVqanVUVzFrNWFseXU1Sm1pazlWbE5lRjh1?=
 =?utf-8?B?cjIySS9SWVRNV1gwSTdoNHhydWNZVzg2QjZEWEx2RWJSVmJYL0xZVnM2OWxU?=
 =?utf-8?B?cEthRVlkOVB6VEp2OEgrdlFqTTRsTzRhYXpQQVFoNExQWXBWZ3JIZFFSWGwy?=
 =?utf-8?B?Qm40ZzUzVGVaNmhZUWxrd2wxaUFrMFlvMVR3bzJxUTBUVmxQRVN5WlNadFBS?=
 =?utf-8?B?QWNkcWE5VGc3V1JCTzUyRndLT29iR2RSK0pkSTArei9ZQlI2WU1remVMUmRW?=
 =?utf-8?B?cUtFMyt1MTBHazlQbExERnRwclB1VE9GZzN4am5MSnJ4T1lFMDdqbU5oTW5I?=
 =?utf-8?B?bi8vZ3JMaW5SL3poMDBVSU5TVlR2K20rVDlvK201TlFDdDF5djB0Vi9pcEJn?=
 =?utf-8?B?bm1sVFJYTUZUclVHRFkwazVyQVVuUEJVQStmdm5wVWYwWE5YNTc4eXMyK3Ur?=
 =?utf-8?B?Z3hMNTM0aW93ZCt2VEprUXhFY0JwRFVPSmp5OTAvbkpTLzN6ayt6OU5meUI4?=
 =?utf-8?B?UGtCeHp4d0N1c3dXaHVZNGlhckE0dlNPS1FqTzV0TDNvOWRaY2lRcW0xZ3E0?=
 =?utf-8?B?T0pDNlZzMmMxS2d5azR5SWZycHZPQzhPaHNhSjhhdVZId2ZOWHBIQnEwUmZO?=
 =?utf-8?B?Z21pZG9JRWVodnBwLzh4T2ZZVDJNMlpHaGdPaEJ4dW95L2xlYThPRTJHWDBi?=
 =?utf-8?B?RjNLMFI4NmVVNXZwUVd2TUFXK0EyU1lrR1FYN1phTmR0OVZ5dXVEQm5GYmJ6?=
 =?utf-8?B?TlJpRmRHQXEvREhLMGJyVmNIUkNBM05BaU14Qkt1S0Z3d25BU2VuYUlvN0R1?=
 =?utf-8?B?YkRORDQ2V1RNcnZoYjRyUFhrQ2doUW54RXFybUpHZ1I1N0lBT3FTdVRsWlFl?=
 =?utf-8?B?MEF4aWNkWXhnd3Jvb0hBdkdjclI5ZjZTZEhUZ2t4VFB4d1NNYlQ4VGJEc3VZ?=
 =?utf-8?B?OVB0S0hwL1ZEOFZkMU04S00yT0pHMzR3V2xOaTJabVVUTjI3RkxMMEdwcnMw?=
 =?utf-8?B?eG92Wnh0MjhUSi80dC9zbUdBRUdWUi94Nm1IMTI5VFo3YkxkaHhkU21vQjND?=
 =?utf-8?B?RmkyVzFYRDg2SzJ2eTNySEo3YjdDdkt4S2I2dlU1VEhoOEMwYjdJSVlBaHFh?=
 =?utf-8?B?Q3lLOUFlVTNscndsamJyQm5OK25aRjdMaEFpUmtteU1pQXJZTkhEbi8vN20z?=
 =?utf-8?B?QkE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 4e9db2a2-363c-4111-0d0b-08da65adc4dc
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2536.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2022 15:30:23.5349
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 vHoQh4i7KsmPWicnQIde6+ll89KoQ0eG7kjVuz9hJphkMS/Xr2PV8XXdXTPbqdyPWhfpXpiqEH4FgQhPyFAEMRzly8UsiVGtMEfKetRuk34=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6764
X-Proofpoint-GUID: UZWsybw1ypReTvyli3n-a-9ZXcBA2GaE
X-Proofpoint-ORIG-GUID: UZWsybw1ypReTvyli3n-a-9ZXcBA2GaE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-07-14_12,2022-07-14_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1011
 lowpriorityscore=0 suspectscore=0 phishscore=0 adultscore=0
 impostorscore=0 spamscore=0 priorityscore=1501 mlxscore=0 mlxlogscore=774
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2206140000 definitions=main-2207140066
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Jul 2022 15:31:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57536

--------------7HC6VwjfGHTAzagWHrcmSIDj
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Steve Sakoman, Joshua Watt, Saul Wold, Randy Macleod, Jate 
S, Pavel Zhukov, Richard Purdie, Aryaman, Ross Burton, Paulo Neves

*ARs:*

*Notes:*
N/A*
*
**

*Medium+ 4.1 Unassigned Enhancements/Bugs: *79 (Last week 76)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *43**(Last week 43)

*AB Bugs: *52 (Last week 51)
--------------7HC6VwjfGHTAzagWHrcmSIDj
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Steve Sakoman, Joshua Watt, Saul Wold, Randy
        Macleod, Jate S, Pavel Zhukov, Richard Purdie, Aryaman, Ross
        Burton, Paulo Neves<br>
      </p>
      <p><b>ARs:</b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <div class="moz-text-html" lang="x-unicode">N/A<b><br>
      </b></div>
    <b> </b>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.1 Unassigned Enhancements/Bugs: </b>79 (Last week
        76)<br>
      </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>43<b> </b>(Last
      week 43)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>52
      (Last week 51)<br>
    </div>
  </body>
</html>

--------------7HC6VwjfGHTAzagWHrcmSIDj--

