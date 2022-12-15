Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E759DC4332F
	for <webhook@archiver.kernel.org>; Thu, 15 Dec 2022 16:39:02 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.138976.1671122335932937515
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Dec 2022 08:38:56 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com header.s=pps06212021 header.b=NwOP2O5I;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=934851e415=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2BFGNxwD007658;
	Thu, 15 Dec 2022 16:38:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=ICml71rG/OTGY1F44H8FFTfh9kEE9Rr/j22JLVcEhto=;
 b=NwOP2O5IWJORLjfqqr7ryOl9ZyZLIY9gk51YbgNmNIlpBk+4akhSdImaScSkw8BYtspJ
 sOL4O2WgRyucd3j8+YeUOoKNh/sieN9v25w4hVLXdCUtfA8Ym92SGoYFq1fqGl5ckztk
 pEQ/oeoPlOYZaYwOmqTLOCJaYsH1+f+Fn0HpZq+xqzklq+Z/jWM8aI3PdbU1UlCLxwXa
 1WiXUDHdjl2ccm+YTX0bxnhmL/HCVGEu9RnhknITTbTxeO0MkIDnCdXG9Hc5/QPWR2Yf
 RmlVp5eY52Dv2Lj2aPeTa9HC7zkVUWMIMFPMPsqQ2CMeRCjL+SH0NtOQtqAwLGqT/tv1 KQ== 
Received: from nam02-bn1-obe.outbound.protection.outlook.com (mail-bn1nam02lp2045.outbound.protection.outlook.com [104.47.51.45])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3meyfysnrh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Dec 2022 16:38:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g2KS5yZyZpqPdFjiGC28TiFDZwHnyS6+ZY+JYytJDDWJyD41JBzj0f2zH455xlZxiY7gcqOT4fSQfFsOx3IqWcwEI3WS0UMqwmn+DDNjnIywD2U3mJcLL96NE/47NoYj5WxQNvkImE/XDzAYEOyvwBEWNpc3+u3KJOEqcN7jJ7KgX0jv0NHX9y2lRfUTU4+50e5OEp5eDfJW7roxIz9jkKvjuuNdf9LIXidWzTEPk2pTC+dxLLidASlI60thfTNuJhSYS++JWAOVySjDJhU7+ihOOkku2u4pd72og1+s4Wgqep79a9nj0u8jHrPVXVTg6AC1Udfhquvw8/4NmHHmAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ICml71rG/OTGY1F44H8FFTfh9kEE9Rr/j22JLVcEhto=;
 b=eA4P6o3c6z4+p28HmYXw725KgGC93IgHBotCWwOvbaT9Ug59dpToDjshkL0r2A0D6JIa8stSLbr8L9EXmZQU15xEXvhQqIO/iRXpa1TtmRAOBy1XicL+R2rpgCBE+0vfTmagy9eUDtCAf6w/1iJjy2KDaDLiyaktQXhGvS6AQegtWU++SRAw8IYqMxaJsYwuQ6FiC3fKcIHx1RbMU6KQzLYPosnU4Erofal4uLcHEDe1jQQw4gSLnYZfhRqOn4Ord7NALHd0b50QnQl0oySNS8IGno3aZNOmI82ZiznTteC9pIMoXRYSa/fhYPow9I/R5oHQuQs7wYDEAkRKyQ92yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 MN0PR11MB6182.namprd11.prod.outlook.com (2603:10b6:208:3c6::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Thu, 15 Dec
 2022 16:38:35 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::fe:f069:565:86dd]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::fe:f069:565:86dd%3]) with mapi id 15.20.5924.011; Thu, 15 Dec 2022
 16:38:34 +0000
Content-Type: multipart/alternative;
 boundary="------------HJliL2tQvBpPevxUi3PXTDLT"
Message-ID: <a9cf06c2-cd7b-9a93-6976-a4ac08892a54@windriver.com>
Date: Thu, 15 Dec 2022 11:38:30 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 12/15/2022
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
X-ClientProxiedBy: YT4P288CA0014.CANP288.PROD.OUTLOOK.COM
 (2603:10b6:b01:d4::17) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|MN0PR11MB6182:EE_
X-MS-Office365-Filtering-Correlation-Id: b50eea3c-2b5b-4039-0067-08dadebacf0f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	dZyOFK8sotAJhI2iz4M2Nh10zRWncNWrEg/TrYK1lFL23CjRfN13T+vWw035LTZMq4/RMgDEAyE6FRodAZYf9s5O5GTs8rKh6CH1zA1C5+kqyZ7i541pSFp6LTQdEaJ6CgTsPM/uxe3S36jJ4ssdYLakRCRaTX5HzqmrOxP/TTO1z9LLAieYwF2em99RGOT0QH4LJPRFzgQ6S/WDKdEtoMVfhnZdtLrrTEBG2StJHquODjl9szWXYuBr7bhe3cVXfMv31kb+H5m+cTHrKcLoOlwvUlbEc3Dg1G0UeeDGVU940BcJM467PhXgf7P+qdiJglpLkMp7QGHh9f6nlAVka1S8FVgtDEPjwxLpejYh0W9UD76rHqVc0itQq4sLdIWNJYZdSB8GZYxANwkv4Cm5DpdeEAyQKomMTxdnbPd97AU7f3EQMZQ8fr7kz5tcuKNmk2mAmtQG8FStVTPz2xmKOkzfua1ReJ5sik+q6X8AkhJIMZas3FCoFNwrNCuBW4Th2uQJNCA8RC7bfoJdG8ie9eo5rWxBdgsl8poM3B6aHIPS41C7+p7Kk6zcZxs/KEjnqXNMDYjqUxpBxpX5c7r7ldJlRiT7DKuMIfLwQCrKCUYUYyCEM6bhWYEPJR4FNvFOZbykArv8qVlaa0M08pIY2TvwaLl46SFzQDM3FQ02GWZEilzo8ggOMP9IyXP88fRfCM4NAiSia+8Sok3vwx1XOeA1ihrOTCJmfwNKVIsZ+6rxxwcl8aDRNf1CLku796Xk
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39830400003)(366004)(376002)(396003)(136003)(346002)(451199015)(36756003)(6512007)(41300700001)(5660300002)(7416002)(66556008)(44832011)(66946007)(8936002)(2616005)(186003)(4326008)(8676002)(66476007)(6486002)(6506007)(33964004)(966005)(86362001)(6666004)(26005)(38100700002)(166002)(54906003)(6916009)(31696002)(316002)(478600001)(31686004)(2906002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZHhGTHB5dVpmdDV3RHVsV0dLNFNUQmJob3RKVWFiQm9tSmRIUzFZckxnalhK?=
 =?utf-8?B?Wlk2bGNMVVdoQnAwbHphVmdad2JiMXJuV2FnZ0xHcFFKa0lsWmZEakpFQzE3?=
 =?utf-8?B?K2FtQWpxYnFKY0M3aTNEajJUOFVKQU82TEY1V0o4bDF0M0FnM3FOZ2wydnMw?=
 =?utf-8?B?cDVNMXJRejQ5MmFacTJRMHFjTVV2dmdHM2lZaWlDZllveFU5bjJ2QTlxUjE2?=
 =?utf-8?B?V25wRzRMNytHeEJYb2NpK21HVU9NUHl5Wit5Rnlub1FPWWM3cjNMUzlyd2pu?=
 =?utf-8?B?cGNhWFhCL0VXMTBGUE1SQ1hOWm45WkxFU2hJa3k2czRLaEZBV2dXU3ZROHM4?=
 =?utf-8?B?TVA0QmkzN3YwVVZMN0Rlc002eVcrZHRvejF6NGpibjlhQW4wTzAzQXJsY1pP?=
 =?utf-8?B?ZW5jMUJEZXBZak5pa1ZiM0I2QlBjU0RWYzNTYks5RWl2eCtlOXQ5b2VrbzYr?=
 =?utf-8?B?cHFJQUgvcmswNTF3YXhYRWs5NVRtbzBYSmpOZFRNWE5GR2FVZEVaenRxNm9Q?=
 =?utf-8?B?eVlsMGMweFI2MXpkQ3RWN01EV3VTUU1CNFB6OVYvbEdEWTZ3OEdEd1JLOWly?=
 =?utf-8?B?YWNZMTdoWW4xYUx0UCtUNm5BZ1JRY3NlMFlaT01JTk5vRkIwUXBBb1pmMEFl?=
 =?utf-8?B?UkhMU2s2NlR2NFlaK0daM1pTTTZ5K25YMTZlNFphdFJYYllhdGRqb3Y1a0ZR?=
 =?utf-8?B?UmpocUlQaHNEKzE3NStMMHRGVkhLdGpEY3VZemxMLzhvNSt3N3VpVXJ3TjAy?=
 =?utf-8?B?WGpLNExaRk1oSU1TUjlPMkZyNS91dE55WGYxSUdkMktGQjB1b0VvTmx1dUNK?=
 =?utf-8?B?U2p2eUVjRDByK0RGT0drd2pNblpFTUUvOFdDdlM5SEZDUnZPK01ONkhZeXJl?=
 =?utf-8?B?ZmhmY2lGVlJka2doR3ZvTUJ0TGxXY3hJS3Q4TVBDYUhCaCt3QmF2eDlNYWhL?=
 =?utf-8?B?NVBFK2JuTGRrVUZEQjFlVnJ1eTlZOWdrTXRNb2MvT0M5U21IMUxQTUJmbnZt?=
 =?utf-8?B?TE9kdTU4NHp1QTZaY0dJcys1LzlQbEwwQXI2U2NhMXIrVUROTXltb21RTFZP?=
 =?utf-8?B?Z1laWnlxL2RHWThrYU9meFV0cTVUb2dTcU1rVGJiWkxUa1VMUU5tWEtKaTVl?=
 =?utf-8?B?UmtIZW41Uk9EdFBGenl4b1lSL2RlelNaOWJCUStNNFAvODRXN0ZhTkFLUi9K?=
 =?utf-8?B?OHVnQk9FamVXcFBjT3BBTFowYW5xa3RhaTE4cHpyVlh6K1I5ZFdqTTIzUWR5?=
 =?utf-8?B?OUo3K2JmV2I3QjhwUU1qcktGd1pURVJFY0NaUnhiZWh5OFFBNTRTVzB6bURk?=
 =?utf-8?B?ZjVHeVRVQ1lITmtsRFAzYUZSaHJ0Z1EwYSsyN0dPaVU5eEswVlpmeUNvVHVF?=
 =?utf-8?B?V0xrYmNEdXhUeW1aN2ZmTjAzbEFscDN4N0x4Um9WTXBOUTdPUHlvUGdXeVJO?=
 =?utf-8?B?Z0tmaFJWSkVKSDh0R1c5WHQ4R3IrbGtxOVpreXlMaGgxckhlanBEK0NtR1V6?=
 =?utf-8?B?dVNBV2hOaExVam9YUGhiVFZpUWpUR3dFdEgraUhtUldMSTQrUENJMDBJVk1i?=
 =?utf-8?B?a2p0UHNXWS9SbHZNdllHNzU1WktGaE9EWWczV21YMWNpTCsvTDNES1hPdE1C?=
 =?utf-8?B?aFNhSzc1VDNTY2l1Mk5HSXRWR1hoTWdQR25aQ1ZhQlo5czY1ZWdXQ2VUaFZh?=
 =?utf-8?B?ODAva1NCU014Qm5XNU12M2d6aUluWWZ3ajJTV2FiNnRreHBIN2JwYk5yQVVW?=
 =?utf-8?B?MFVaaGdrUWRhNXBPMGlGZUphZHhtSHVPY3VudVRNa2NqU3VPREx0YlhaUW1J?=
 =?utf-8?B?Yzg3WXZMZlN6eWY0RTluYmtoMHk3aTBDYzI5RFFCY0d5TFBsZnoyeFJZaStI?=
 =?utf-8?B?dzFWbXdlUnhNMVNoM05YQUZRdWNVWmQ5eW9VeXo0elVGYWh2ZFJkeW5JSmpr?=
 =?utf-8?B?YnpmRnZscDJPRWpMdEdCTFZoeVBYQ0RremprSXYwQmJrUDAvNmx4UVNWbWZt?=
 =?utf-8?B?T0RubGYzVXNVVjJUazhCOENlRWx5SFdJZXlBSE9za1c0M0JKaVdkeUh0a3JN?=
 =?utf-8?B?RndlR3lLN0JWSllZUUJBWDNCalNKUGFZUnNncUZ4cEZtMUlSV0kzc29BU1Bu?=
 =?utf-8?B?Q2d5VUEyN1RyYmpyRmRvK2hEdGVWNy9HYU01bTY2R00xMTlwQWNDTnpMRlRi?=
 =?utf-8?B?M0E9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b50eea3c-2b5b-4039-0067-08dadebacf0f
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2022 16:38:34.6746
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OmZa191Inp7wspXk1lpnnLN91K/5iM9HHskbEYB9tnlilOwuBiYb28s0WswW3864Wf/KLu94AneCfocpnUqecrrubwJf7XmR4sw4ZdsNDB0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6182
X-Proofpoint-ORIG-GUID: lBATtoS8b6tR6U3mG30szQz4l7maYpWZ
X-Proofpoint-GUID: lBATtoS8b6tR6U3mG30szQz4l7maYpWZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.923,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-12-15_09,2022-12-15_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 impostorscore=0
 bulkscore=0 lowpriorityscore=0 priorityscore=1501 suspectscore=0
 malwarescore=0 phishscore=0 mlxscore=0 spamscore=0 adultscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2212150135
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Dec 2022 16:39:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58808

--------------HJliL2tQvBpPevxUi3PXTDLT
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 2BFGNxwD007658

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Randy=20
Macleod, Joshua Watt, Ross Burton, Alexandre Belloni,=C2=A0 Tim Orling,=20
Michael Opdenacker, Bruce Ashfield, Pavel Zhukov, Ryan Eatmon

*ARs: *email David Reyna and Michael Halstead regarding assigned mediums=20
with milestones.*
*

*Notes:
*
*
*

*Medium+ 4.2 Unassigned Enhancements/Bugs: *70 (Last week 70)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *43**(Last week 44)

*AB Bugs: *59 (Last week 58)
--------------HJliL2tQvBpPevxUi3PXTDLT
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
        Belloni,&nbsp; Tim Orling, Michael Opdenacker, Bruce Ashfield, Pavel
        Zhukov, Ryan Eatmon<br>
      </p>
      <p><b>ARs: </b>email David Reyna and Michael Halstead regarding
        assigned mediums with milestones.<b><br>
        </b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes: <br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.2 Unassigned Enhancements/Bugs: </b>70 (Last week
        70) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>43<b> </b>(Last
      week 44)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <b>AB Bugs: </b>59 (Last week 58)
  </body>
</html>

--------------HJliL2tQvBpPevxUi3PXTDLT--

