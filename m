Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1DF4C43334
	for <webhook@archiver.kernel.org>; Thu,  9 Jun 2022 16:11:33 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web12.15205.1654791090787361928
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Jun 2022 09:11:31 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com
 header.s=pps06212021 header.b=JmRkXjQg;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=31593878e7=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 259EYb8t031541;
	Thu, 9 Jun 2022 16:11:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=ff9bJ4u5tAijbE+3lre6G39VyDbafF7MAHja1aec92I=;
 b=JmRkXjQgkhpBaXQUvV2x9/s9DY1Zui2Usi3TBawQjhro+U+rNyEozqfEh+XfjfS3gqD5
 +u+ecUqvfaD/KA0cS7ycJoVf2vnC1rblMuWHv93yyHTYT6Tb5DGQQkjMVQUqj0qH2gs9
 +hdT4qWc3CQ+vBk8GDRb2aXgoIaSp191ZBaHRRqOt2C5Wiwk+oPpTTwvmO4JenB3VUHI
 y5tMICYNThKTxD24eub5LJ9lGfU+kywhH7CiL41amLTjenrQpfJMk1M1Ps9vk4GiYXPl
 Xxtb6X5WlvnNESNjZ0RSR27G3kMOSIuMURnUlFa+xW52nsH09k3zmQtSjbwZvRSSrqGI tQ==
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2108.outbound.protection.outlook.com [104.47.55.108])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3gfvm244wg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 09 Jun 2022 16:11:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ftsJCz7DIKh1Fz/OhftP9/1LDlsWphmdS5yIrZsnWD4rJQaPnM4Gf/4uzcihR45gRzojyKv9YQcXPZUH4zJ5uUa+YLMwGfUlDY4Va3hSGvf6euCsrGyyQ5yl65NAIdzIdcmluvrYerz03jP86qbUIhFUItc+LzAIEo1QaFHosZM1g6LorMBxDtwKoNmNPKOJViFt45wHJTZZUEETMHCz5/ezIJ1yaMd8RRvGTjIISIFJ00XH7iE6XgwJ+y/VRXYf+CWmX1eC7WRYPlaNxnqDFA8uCLpU0FMEGCRNTaXUDB+KgC5zFGeqZ+G9TJlOfenToC1WJ2Zm+/xX/HObo9WqhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ff9bJ4u5tAijbE+3lre6G39VyDbafF7MAHja1aec92I=;
 b=hgdEEbA5eWbsxcJsLGj1EF4bQNkCdV9ZYwbdAqw7PmHVDxv329l21374xOAm0qrwQfD56qx3koFVWqs8XvfLBpkmi/SlIJKgw9vQ6CQlXCjkfpTR7FXPCdSXvM9/BGkjLobx7yyLuiykQXMgXpSMeIvmp5+Wo3R+KGzm7b1fhzwe5pr9uqCD4jAevwpe29RWnSbdEE3UA5OW4O727hpxPbyVcYkSNRTEwh8iQWpGsefWkszbh19hxmjLrh+cBdFuJCbxk50TmmXuwKx1obljs3G1IShxvVvYPhbD6HslXA0YtoZukgQ/Dauk0hZ8a2LTPKU75CzFq8x1j8bjawSghg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 BL3PR11MB5698.namprd11.prod.outlook.com (2603:10b6:208:33d::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5332.12; Thu, 9 Jun 2022 16:10:59 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::a807:4bee:8e08:3053]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::a807:4bee:8e08:3053%7]) with mapi id 15.20.5314.020; Thu, 9 Jun 2022
 16:10:59 +0000
Content-Type: multipart/alternative;
 boundary="------------ak3HKV2Tc4T9HQO8iBNTkBTi"
Message-ID: <d3db1573-3ae0-8f68-39be-b07bdf7cfe78@windriver.com>
Date: Thu, 9 Jun 2022 12:10:55 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 6/9/2022
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
X-ClientProxiedBy: YT1PR01CA0144.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2f::23) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d158c067-8351-466f-a5b3-08da4a32a421
X-MS-TrafficTypeDiagnostic: BL3PR11MB5698:EE_
X-Microsoft-Antispam-PRVS: 
	<BL3PR11MB569817293738EF96C90011C3F2A79@BL3PR11MB5698.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	B5KqWgPOV4N+FYIHKAdIfH4Hj3kyGnfHftgX9H0YTuDvE9rDe3Vxxo8gxLgUT9DkkuVxPTRJkuBYt9JoEW+LVBPvSAAes32/q6tEkVjtwrS3ltAtBZAAPU7qHGfKDCctkWzCvyN0r4qAIx2QZi8uBvJm/BVyjHxtohX4WpNo29HBG4BHFgzP+FkpadfSZKr0hwuyf0KrFMrPVAWJ3Q7dlWpt7dhZcOaz0plfifhwAZIU4Sza/SnhdqATs2108RZwfvgJzZWRcU7HMeefKotdhS4Hbc0QHqNBeWqFP5yI+b/u/4baYbWKiQY7BJxO3E63Fe9r0KrfvSWHlGhp01tbNVQJrWGo490F5ZsEo9nXsWpeS7AJZdLaGznc7pcjBGYJbq7pTc/O+NXHKFoFYXm8GXtBxZG2LtU7lNjtuSrDH9HctEaVCwn8AOUUJWJWZGStVQi2fV0UtDF4Yx9TLMqn5CaYjBEwJlqY+WZaziFmActV8RgSa1Rt/pKZz5B4W6rARuhEvN3McA7/6Yihw9aBv1MMtuQG8bjr25JTmqWLeE8Iz8JgmXGWotUiY+ntcVKJHCoTir4G4GygDp0UCp31/BxtJg5JD1FGkrNfzolU+ewqZ8vpIifJY170/f8fwLf/nV+iK6qHwS7sMCaQjl5yWeZkj3nXAw3a4H/gIKrLiZ+dCV5fh95niJ23yh31MIqQMubT12s3tLM1CSqy/LtS/e+cfoyScu1PEWVXYMjo5EEURcUFmv9/yc29x7UL8iB1bKxY8EaLR+a5ZQQzSwraBC1SRyFcq8cffxnZZT1DXRNCqPdS66FGvphKdbXS52XFB87lqmViyz/YdGtgGDpBAbueyj6xgwKPBaYu7FHOHG0=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(86362001)(8676002)(2616005)(186003)(31696002)(83380400001)(66946007)(66556008)(6506007)(107886003)(66476007)(316002)(26005)(2906002)(6512007)(31686004)(33964004)(52116002)(6916009)(54906003)(38350700002)(5660300002)(38100700002)(6666004)(6486002)(36756003)(4326008)(966005)(8936002)(166002)(44832011)(508600001)(7416002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bHp2MFdLazhvVnpBdUppUW5mZytaczZqOWwyaHRhQmg4Y1Jpd0R5emVvOC9E?=
 =?utf-8?B?b3gwN3dwQ3Q5bmlDMkE3MFlCWkFGaHU2RnBLOXdValAzQll2NXRTMmZ3RVA2?=
 =?utf-8?B?LyszaXp4RXB1M0N1bkZDWlU0SDRGTVg0cmxlaXRvUVE2SjdZV3BDL2s1VUhH?=
 =?utf-8?B?TTdoczhKa3BpdUN3SjRML1QrY1FEclRUNDB0QmsxTWNNMjdzZmxzb3krTmJn?=
 =?utf-8?B?WEhURXUvU1hNV1Z4U0NDTDUwNnRwWXMwemFHK2NDSDFlcUtmdUxrWDNFcXdB?=
 =?utf-8?B?V3JuY2NFQmZTcWZndmVmaVpLaFVpVk04Ym5FbHc0UnpKZzJoV0MwNXQ3NHUv?=
 =?utf-8?B?YjBOZ3lNYXBKWEhMbjR3bk80NGxmS2NmaGJ2TE11MUlFd2doendCUjRJMFBZ?=
 =?utf-8?B?SFp3d2NlcmZUNGFMY29IZzJSYU9tV1l3dkZNSkFUaXJ6c2NjSG4xTU5vQldL?=
 =?utf-8?B?amlRL0RWREpsY01lVWZRTjhHeWkyTVo4d0xmYUxQeFZQaTBrdTJXb25BaU52?=
 =?utf-8?B?TjlVUXhINENUUGhxNVRwalpPcE5FcGphRTYxTlNlbU5EeWVLVU1zYTI2RStr?=
 =?utf-8?B?VklkSUNuaEVJNzJWcVRFakFURzJFOVNCaE5WdUw2VGkvSU1wbFIwYlVXSVAz?=
 =?utf-8?B?Rldmd3hiTWhKdmREbWhiSlJSVGZka1BJRjBsSFNnS3hHekNPc0ZjNDgydzB0?=
 =?utf-8?B?NGpoVXVieEF0TjJaOERUU0N3TVduWHl2WWRkTFZSV0tIZFZvdVFGSGxRUWFP?=
 =?utf-8?B?djhFVVVOUjlURVV0NkREbVB4MU51RXJOTUlqYkR6ZzdlSGhxUzhWZHF5VTBB?=
 =?utf-8?B?WFAwSjcyYjdOaWRlTlNTbjB2amNOc3pESU5xUjZSNFYwNDBVdUxLeGJsWkR4?=
 =?utf-8?B?N2kzOGI2amwrWGhmdnVscGtHOTlscUNDY1N4ZW1QeEZHRktXR2FrZjBac3Jn?=
 =?utf-8?B?VWZRaUhPTjE5eS8vODVweGs3dUpMZ28rdVMremJudXhUVDdsYVducjZ3ZW1u?=
 =?utf-8?B?bWpRZTc0Q1BJVXpSd0paNHFIYnZZOTk3WFlTRzgwVyttRlJRcm9sWWVwYkJi?=
 =?utf-8?B?YVJVdVkrWTc3M1htWTgwS3JGMHdTWUl1S0lWZlIxTHBlZ0dUckpheDJZM2lh?=
 =?utf-8?B?YUpHMzUxZEt4ZzF0UnlsWS9melVFYkoxV2pVZ1g2b3V4U0hiekllRjBTWFpl?=
 =?utf-8?B?Ulh5cHJQdjVDM0FaRzFDQzdHSjdZYXdDd05Ya3Z4NE84c0YxMmxDZDdYQmNQ?=
 =?utf-8?B?UGE5STE4M1ZoYVE3b3U3dUFVSGY5azZrek1yQ0t5aU1IT00zRzZ4b0d1UDV5?=
 =?utf-8?B?K2lUc1R2S28xMUNkaUlQZDE2R1d5QkhLS3c1S3BhTVZWTW1FSkVuOVlSVGJH?=
 =?utf-8?B?Qi9DQU9nQUxDam5ieG1YdnVtOXVucktZcmp6SHRud1VHNW9QN3hmOGxJdTZ0?=
 =?utf-8?B?WWR3eEVHc1FXdDc0Qm16bVREYlAzZHNYTExzWUZSUnFPSTQ0MjRJZWhJNTB3?=
 =?utf-8?B?S21manRQdE1QYU9UWHoxbCtjSWx4MzliU0czdzlLRlJxRXFjZXBZcGtxSG9h?=
 =?utf-8?B?NUZ6MzZJT056M1h5SFdncTBKL3pNZjR0Sld4Vzh2em96akRVWTNIOUxxWlls?=
 =?utf-8?B?d0g3eGxtSldxdFZwRmZIQVFVa2kxS3FiaVJoTnMrdng2R3FaUlRRdi91ZVhT?=
 =?utf-8?B?UkZtbk9tbEVUWFBtZklnRkRGTDR0d3pkSTMwTE44VEQ4R3pnNTQ4Z0UvcDJp?=
 =?utf-8?B?aUhPcHZGajdrclhQSzh6dnF6WHlRbG90aTcyS1pqeHRjZ0lxcmV3MVBLYmRm?=
 =?utf-8?B?SU14SjhjTUVpWWtuSFJ0L0RIRW1DR2cvcVkwSzdCa0tMRDNQNmZLNTc0a0lr?=
 =?utf-8?B?ME80Z3FNU29GOTBRbG0vaW9tZW1ZemMzcmNZMDBrSUk2WGN4S2YyZWkzZmpC?=
 =?utf-8?B?QnV3czZveVRtOGJ5em9vZmRwalBsUTF6Zk9GVlpLbWZlaU1oKzhhT251REFn?=
 =?utf-8?B?LzcyR2dXaXhtcmoyKzV2aGZIQ2RkVDJWclBiU3pyVCtGY3pHWXBDUVp3T0dM?=
 =?utf-8?B?WEpaY2p4UFEwVjBhSVlWcDBab1VoUDhycFp6ZjJpOWZvNEFmU1BiR3lYUHF1?=
 =?utf-8?B?ak1wYTQrSFVZV0x0ZkVQWTlNdGVHYkhuTDlBS0k2elNQUTRCdlpMcjloRTVS?=
 =?utf-8?B?NFhaRXRUcG5Fai9ZQXBRODJQWUw5aGEvWlIydXdEZGJQVkFVR0N5cFQ5V2Nl?=
 =?utf-8?B?c2hHR0VyNFFiZld0VHdjVng4R3g0d2tXK1NPTlp3Yk9sdEZsODVReGJTRnF4?=
 =?utf-8?B?NGgwcU96bk5hS2xBZGYyQmZvdHJaekV3dzNkelhGNEpQcXIxZmQwWS9RYnNJ?=
 =?utf-8?Q?Ys34oXQurGjvKngM=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 d158c067-8351-466f-a5b3-08da4a32a421
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2022 16:10:59.1022
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 NNkysHqlgWRO0me8UPUMAMQfDAsYKO5QHDCAnWFNUDxSlawLQx/n6TT21mEn5LEsHP2scOTUAf8QsJtSvRK1pFF2mDmI7Pn4cq7nlrrFBf0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB5698
X-Proofpoint-ORIG-GUID: GG5KGBaolWtizJbOjD1x7pQw6hmX8hSO
X-Proofpoint-GUID: GG5KGBaolWtizJbOjD1x7pQw6hmX8hSO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.874,Hydra:6.0.517,FMLib:17.11.64.514
 definitions=2022-06-09_12,2022-06-09_02,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 mlxlogscore=685 clxscore=1015 bulkscore=0 malwarescore=0 spamscore=0
 mlxscore=0 suspectscore=0 priorityscore=1501 adultscore=0 phishscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2204290000 definitions=main-2206090062
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Jun 2022 16:11:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57309

--------------ak3HKV2Tc4T9HQO8iBNTkBTi
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by
 mx0a-0064b401.pphosted.com id 259EYb8t031541

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard, Steve Sakoman, Tim Orling, Pavel, Aryaman Gupta,=20
Stephen Jolley, Randy, Luca Ceresoli, Michael Opdenacker

*ARs:*

Richard:

 =C2=A0=C2=A0=C2=A0 - Bug 9762: close with a sensible log message

*Notes:*
N/A*
*
**

*Medium+ 4.1 Unassigned Enhancements/Bugs: *73 (Last week 74)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *45**(Last week 47)

*AB Bugs: *47 (Last week 47)
--------------ak3HKV2Tc4T9HQO8iBNTkBTi
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Richard, Steve Sakoman, Tim Orling, Pavel,
        Aryaman Gupta, Stephen Jolley, Randy, Luca Ceresoli, Michael
        Opdenacker<br>
      </p>
      <p><b>ARs:</b></p>
      <p>Richard:</p>
      <p>&nbsp;&nbsp;&nbsp; - Bug 9762: close with a sensible log message<br>
      </p>
      <p></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <div class="moz-text-html" lang="x-unicode">N/A<b><br>
      </b></div>
    <b> </b>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.1 Unassigned Enhancements/Bugs: </b>73 (Last week
        74)<br>
      </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>45<b> </b>(Last
      week 47)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>47
      (Last week 47)<br>
    </div>
  </body>
</html>

--------------ak3HKV2Tc4T9HQO8iBNTkBTi--

