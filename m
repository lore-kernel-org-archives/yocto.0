Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5B7C04A68
	for <webhook@archiver.kernel.org>; Thu, 28 Jul 2022 16:06:28 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.34488.1659024384026465556
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 09:06:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=DCOnZXCk;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=5208c19d6c=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 26SFJlHR011015;
	Thu, 28 Jul 2022 09:05:29 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=HgEm39f9QrBfYdDC6zik3RGGaCeORBiHyVaVokLP7p0=;
 b=DCOnZXCkGfvu/pAPAK6hWHg7kNisRIRAA8gGkxZ0/M8m90EcqJLZjT0LSQLjr+yCivwq
 RTCpKHce0164cKVRzqhGRvg7ebVjen8Yz0rxw5ZQDM/MQYBuqUiaXbjoAE2x3KH/q19U
 +IcBRtwpHU+rVWcpSyoELHllXA55xC3e/Xtpg9c1JYVpolo/Mk9sNeaUZBPeVH/JlTuY
 ktqRRFGfJSHt7wDEVNpTGQyioFfTtKoHaM9MKIXZiR8wo7we52Bh3DQO/WMP4YP09H50
 rGVDeRd5g4fZoqCOJfzG2Vp+7A4PceOoBO45XTo4bRIbx78vNTFGR45O63W3DwHRn6e9 bw==
Received: from nam04-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam04lp2046.outbound.protection.outlook.com [104.47.74.46])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3hgc9547a9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 28 Jul 2022 09:05:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dGFTrjX2XzhU3I+iM8A0+6fOcOJiIgr+bs84oGOFJ83XD812lEOCdMvrsQZ7BxdFu10mfOBwuPwhJKG/kwasBKYSxjHoz4v4tJ9CqyYvj2A28LFvXligjJRHwA57RWmIBWuyS3P6IAwxCgK8hK8xUGBAiICzxYjPDlv1XXQBoJLRBm0weMqMgK3TcaniZm5G1fef505qOKxHywGLVLe9qQiAy+hHnoV39nagaRfoiQCwrdylGCSw/PlmYwv+FxozE/OBTDaDzk32aySvc4e6/Q3On/FO71WpaslpW04wGEI9Y84ZuWMF5vjpe9uCEi6iXpU/A0/l5/Yfutq7e+jhzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HgEm39f9QrBfYdDC6zik3RGGaCeORBiHyVaVokLP7p0=;
 b=GNGfmVirQ4X6jr8a+meakaA+72TfAaDbhbpcWO3b6uVJiX1TTrWEdjS/K+J4RHuePkQHgS2nY79vSdrEjxzgYtLhxTjAj46vtRTowGtNtcRALKJb1EPKl0JCnz2Clwqnz3T7NHsKUQWRu6baB26t6jZ6KgK7rLSzRtzw+hiLCWTADB9Dc4sQE93tgmfGPcOsMk/XY8crah3eBOVawvCIZVI4+k4G86IWIrs+prB6ABi1g7141nQYXEns/IemOkma/LFd+ZFhFTSD1bVuXDViYJYu+puKacvSHGAL/3xU6cthih6jxnCsdeCjaWaMOFBt158UBgiCHjs3sEPAmSXEUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 SJ0PR11MB5661.namprd11.prod.outlook.com (2603:10b6:a03:3b9::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5482.6; Thu, 28 Jul 2022 16:05:22 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::a807:4bee:8e08:3053]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::a807:4bee:8e08:3053%7]) with mapi id 15.20.5458.025; Thu, 28 Jul 2022
 16:05:22 +0000
Content-Type: multipart/alternative;
 boundary="------------RPF0veBwQaAi2gCnuGagGQAV"
Message-ID: <bfe41b3b-3b8f-ee1f-6752-0b96c04f2722@windriver.com>
Date: Thu, 28 Jul 2022 12:05:18 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 7/28/2022
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
X-ClientProxiedBy: YQBPR0101CA0225.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:66::6) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 92ac4692-9af3-416a-e9db-08da70b2f9d2
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5661:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+EaqSRP/qIrfANzrkJjJmrr6ndpeg9yiVSHUHymNsygZUSuwzYlnkjJ/7UCtffOYYvcoN4kdiwq63mAfk8rClhrSEUDIYRP2+JHnEVZ4bWjwWodQN4GoIxNBZYfzTOhvu7wESJlz65/IugnSAYlzDHvud0hG4vk/8f/z/gcZA82KXIuIPQ6HxKpLAmBiXq1KqBZTxCBcSI8uoTl/MGA4DU7T0aN+Hlp8D1XIyZk7bse6aGW9IkKmDJyC1IGKw1q3gDw/HbmzubKRAYITCD26MYRkMFXpSIF8+71ABgCXxz+OzLYhZPOQu/6k+StCFgig4FdfPJsYBikWQdPh9krVXOC5Qn4sEuQiOQroPflaAeYac+AK27ECsn7YDOeLXCXwuszUdpHiWKNgXU7UHAqkIJi+cxN38Yskea+SENkPKv/44EFK1a7zbzHy3S8FeIsBMhaoQ7GRM3+le4eNIqKpbsC8cb+vJHcUHrUVvGYkZoOQ9hSmdkvYLn9l5EQ+oZPOBPgtrOUFMtxJ7W3WG6XaQ+wP6Zdg1B+fM8LEfVE/hEdS9C7k1Rz+8CTgHF0qsxtaDm4iWD1bGqpCm7RmGgT8QGC6CzpiI8sNKwZwKP2qw2eEkDaxkPu/JP6Vq0Pt0BQNHnmqsAYIQ981vnkhQBYRkOy35roPMZPSP3yz+7D9q5OJBKBsCWgKSjQ8D7/kpePRQUGU4wHyZPzACmG5TPAXD1QYKD+yb3JDIEBp79nVUfvk5Ocu/GHl6gclu575h4i38mzL3p20IjJGnTJyEw3RLLIRemeZKnAEcRV2Mp+zEHLyKfwVrRxaiPfkU8pXx9swpI8JZqw3vJYjq2Fij8FdHCJjwKK0eWRkEjKnduSnAls=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39850400004)(366004)(396003)(376002)(136003)(346002)(2906002)(6506007)(7416002)(31696002)(5660300002)(33964004)(8936002)(86362001)(52116002)(966005)(6512007)(478600001)(44832011)(6666004)(6486002)(41300700001)(166002)(8676002)(2616005)(38100700002)(107886003)(186003)(36756003)(4326008)(66946007)(66476007)(66556008)(54906003)(6916009)(316002)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SStaWFJWWXBaS3IwMmVRbE9uaTB6ZmN3TEpHNGVpbjdLYXdEbDJHQWZUdzhi?=
 =?utf-8?B?cWswVkRUdytMMEFjcW1QNDF2UitRU0ZPbk1tSWhqbGZZd2FWTnJYeWIwdVVR?=
 =?utf-8?B?cDhTa2h0STYwbTJxTHhzQks4UTdtZktRWDNzN3ltRnhWRzN5QXA3R3ZKMzUy?=
 =?utf-8?B?WkJTUWNYbk5qR0QwME5hQkg2b292WURWd0o2MWE1TnBWeUszZHRlZ2s5cVEz?=
 =?utf-8?B?M2lpa2psWGdKZHdoeCtlczhuQjlIb0UzUDgwZzViU1dXQlJSYnBXd1RJUlFE?=
 =?utf-8?B?d0tQNnAyOU9Yamd1dE9ab0RsUHdMRm9jVi9XS0toaFd2SkxPRzN4SjBNSk9n?=
 =?utf-8?B?SWZ4NW1LT0prUGYwZUYzemp2SEFydVM5cnRxbjFsVGdHMnNRQktSOGtBdnBm?=
 =?utf-8?B?RmtRUGtzQ2o4ODJEbUZERVB1eVdVcUUrWUpJMTBGcVUxQTE4cEFFeTFwWFpj?=
 =?utf-8?B?TFo2eCszMWVLbnh1Zlc3bEZQcTgwY3lWL1ZFZ3l2T291dXVyMzVwdjB6Y044?=
 =?utf-8?B?UlZvL092R3R0dGdEOVp0K3dVM0ZlR05GaDdnRGFoa2J3UldsYVdsOXhhdVly?=
 =?utf-8?B?OFk2TTYxeWpRMzY4bzJhM3k1UFVtWG9HeWdPOU05MzA2TVdmSytDV1hXZzN4?=
 =?utf-8?B?NitWRlpjdmRjMVovWFZyaDducHVKU0dIY2VpaHRlUTNxU1VGNG5aZGIzMVh3?=
 =?utf-8?B?TUhrM3BoTExOdVdNWkpQa1Y2WWJoVGJwOUdYdjVia2cwTVFBK3hQeXRZMHJ5?=
 =?utf-8?B?dnRPY3o5WTFHT1ZFOXhvWnROR2FMWE5UNlY5VXVwMG1hdlNybndBQ1FHQXdR?=
 =?utf-8?B?b0VhUEx0VCs3NmJhRk1RWkxEQ1VuNVh0QkR1a2Nlb201bVVoVm5qSFRpQjJP?=
 =?utf-8?B?ZjdZTXEzczZjbHhGV3E1b25jY1VmNXU2RHFmNFBBcnhDUVM3aTJ0WS9xYkxo?=
 =?utf-8?B?ZGIrL2tUdytFNEI1cUJqUXoyMWJIRnp4SndzZmlqVGNHYVJTQWhpa3RmZDc4?=
 =?utf-8?B?UGdkUkJxeUtmVEl5Q0ljN0laeWhJc2lwREtOcFhQMU9JM01mOEFMZytJTDNz?=
 =?utf-8?B?UU0zNFJSNUgxdEZZV04zVTdhSnV1RlBGUDQ3eC9pM0ZIZXQ5ZlpYQ1F6RjIr?=
 =?utf-8?B?cFc4WEY5Z3Y3TnJadVk1NytyVzRzNFVDaUhHK05sTmNtUHkzZFFpS1Ixamhu?=
 =?utf-8?B?Y1M3TVZNbGpxNDZPU2R1YXd3Z2dZMGlpbWFuNWx2VS9mT3NJSDlURkJjU2FE?=
 =?utf-8?B?MjltZlR6Wm1xY0FueHE2eUJ2YUNyQ2wwOTU0Nko3RitKS1NtYXJtdXZDQVVN?=
 =?utf-8?B?WHBoMHhqbTJjeEVKVFQ1TWpoa1lEK3plWjYwUC9Na2l0N1FSakVlaDVxZEZY?=
 =?utf-8?B?L0w4dHZ1M3pWOWdZN0xNSWIrZUNmRklDYjMzMFRreWYvL1cvT2J3TXdsTHcz?=
 =?utf-8?B?NTV0VVYyZmFHbUtTUys0bXdLNWlNdXJ6UDdESzhMZTNGUzVkT0h5WmhpZWpC?=
 =?utf-8?B?TTNJWlc5Q0F1RkR3T2VRQksrWGx3TjlRMHdmMTByTUJHS2kvTFZLcjJEMnhj?=
 =?utf-8?B?cEExSzlGKzNPVC9PdjNhaDFWcUlxYitxdDlYR2EvWmNzRGUyK2dtUWtjenJl?=
 =?utf-8?B?b0ZwTStDZzZiNjFRd05hRG96QmlPanV6UWsyUEJTeDJMNzlxSldtNVIwNkNr?=
 =?utf-8?B?K2JOTFVHelFPM2lvb1JQTklYc3RMMzVwUWhObUcxQ1pIT2JkQm1Pd2tnd1FQ?=
 =?utf-8?B?NGROU1FSMmJKNFFMRDJPazlsYlJiWGFjeWhrazMwdmhtYmtXcEhYRmxDVGZS?=
 =?utf-8?B?UTBNaHVGUzl5ZHlvVDBGaXM3OGpqbmYzYVJpRzNhbDM3WWNsQ1F4aTc3S2Ev?=
 =?utf-8?B?TFo5UDk5eUtNeDJSZXplamF5UnZvYnBUQW9sOHpTYi9VcGxnUkEvSFVONCsv?=
 =?utf-8?B?aDkwTjNlTE1sNS9rbXRRdit3bzNERU9MWU9FL3dlMzdEd1JFdmJsK2tGSklU?=
 =?utf-8?B?OGpERTBxbTVDUjFuRk55T3Nha2tYTEIxQUwyKzRVWVlVM1R5YUd1bWMwREVX?=
 =?utf-8?B?Z1hWamhyaDRoZDk2UWFPRWpvUmZDNzVCY0x3RnAyVWhuSEFKU2VBWlphRHlG?=
 =?utf-8?B?TXY2WURrYjlTV0JkbWpMWGZyREF1dzBxbUFrSXRKTDFZbnFJNUxhUWNWN0Rt?=
 =?utf-8?B?TWNKK3ovZW9HSlNYVU53SlJZMHIwV1ZDSUZnYlF0VkZzNjVBOFloMFNyZzd0?=
 =?utf-8?B?VFpjK214RDhsRDVUZVEzWFB4M2RBPT0=?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 92ac4692-9af3-416a-e9db-08da70b2f9d2
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2022 16:05:22.5435
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 xaWmispEmjmB0MJpoEC4YXqwXDt0iaTLV4/hLOy0iDwbgZMsGoG/nT45H4lXGyGliJpRbst5fpW0989UPjAV87/2WKwzY6gU3BDG6d5ARao=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5661
X-Proofpoint-GUID: FQhP1J9ej9zietWxMvoOk9Lm61sXWZn3
X-Proofpoint-ORIG-GUID: FQhP1J9ej9zietWxMvoOk9Lm61sXWZn3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-07-28_06,2022-07-28_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 mlxscore=0
 adultscore=0 mlxlogscore=875 suspectscore=0 impostorscore=0 clxscore=1015
 priorityscore=1501 bulkscore=0 spamscore=0 malwarescore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2206140000 definitions=main-2207280073
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Jul 2022 16:06:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57662

--------------RPF0veBwQaAi2gCnuGagGQAV
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Steve Sakoman, Joshua Watt, Randy Macleod, Richard Purdie, 
Aryaman, Ross Burton, Bruce Ashfield, Luca Ceresoli, Paulo Neves

*ARs:*

*Notes:*
N/A*
*
**

*Medium+ 4.1 Unassigned Enhancements/Bugs: *78 (Last week 77)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *43**(Last week 43)

*AB Bugs: *50 (Last week 51)
--------------RPF0veBwQaAi2gCnuGagGQAV
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Steve Sakoman, Joshua Watt, Randy Macleod,
        Richard Purdie, Aryaman, Ross Burton, Bruce Ashfield, Luca
        Ceresoli, Paulo Neves<br>
      </p>
      <p><b>ARs:</b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <div class="moz-text-html" lang="x-unicode">N/A<b><br>
      </b></div>
    <b> </b>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.1 Unassigned Enhancements/Bugs: </b>78 (Last week
        77)<br>
      </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>43<b> </b>(Last
      week 43)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>50
      (Last week 51)<br>
    </div>
  </body>
</html>

--------------RPF0veBwQaAi2gCnuGagGQAV--

