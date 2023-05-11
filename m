Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE03C77B7C
	for <webhook@archiver.kernel.org>; Thu, 11 May 2023 15:10:06 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.62472.1683817800106167628
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 May 2023 08:10:00 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com header.s=pps06212021 header.b=KAbyZHEr;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=44952449e4=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 34BCcm2g009358;
	Thu, 11 May 2023 08:09:38 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=sE+vI4tgfC1rc+ZiFuT9f+SwhLgsQPfHR2npVsfmwIM=;
 b=KAbyZHEr8ZVSHZrXq9+f1gFoBOEKMpHLljIqPfLOscM0tQA2xNgKvfE7gcUBsIX6ucGk
 fV/FbSyXHxFkc2a77uNLFSSzNvruwxWcs23tfJSVAaFg8EldZ/TZYC8RDGWhtUItOp4o
 ba+y5KIOuCriFys6qnHGv2eRleeaOQcLY3ceyh7zCtuWWOutHGJgbAj6eWjQKOmIgatv
 mETwmA9SS/Tbz1m+Uabsyen7p5ECsHS0Z0iV3GTIf+Hbvr0ERFgfqvp15X9/ytCX9OHG
 VFpRYhY/jg1bCQ4aZtbheu45HPeBsfrNkeT47b4NuQOkl+iS+H4LMTnLOh2yMIPJX2Dq Rw== 
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2100.outbound.protection.outlook.com [104.47.70.100])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3qf81jtt2q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 11 May 2023 08:09:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YS6h2Mj0uI8yIujAIboWUudkyFEKNyjpZBjB9cNaMER4Elq3t6F9zkS8YbbZV+sinuKTFkehkxRZtJHPSQvlFBhc11rGx5w2YDmT/G4GnsLU512A2fU6fpfFY9sWqTxd1WfHqJEV/zHiSH4VXKGqOsDyIM5jlUUbi9eNf+s+7JSFVZeAYONDcdTb2OB4JDsQaecht9FaUeozMs4Dn1XW9pNkDETzoARf9FQZANzckf4QwJM4GgFECBtp6gqra4i+ylWcw8fefJl0o5gzh6bLg0ObmEhKu1H1wCXBagpoRa7j3B0qkOpkLHf5/kXMXyuA8MqNDTR6PK5slyqXa5nVIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sE+vI4tgfC1rc+ZiFuT9f+SwhLgsQPfHR2npVsfmwIM=;
 b=Xo7VzgnJY7FiEYPMXSAPWRKYqOFBh91UTghEKmvaS8DoeTZOAR03Xl+cerFgeBJ8Cjp3AJ4gURuzEvnJBw2h9ooyK3nEy7BHMImZ6yxITZH65X15a5iOS4vjG+o72fHcDM8tHp/MFDls8knATfWPXAvvHyDQN3/+hsxBaLVJ6VDQRivOrbvwTm3qJCePqTzeY8ddlw7FVoFmF/O7ihSvjFEfCayuAcOX5/PdJ6EpNuffxKHGUh3n5HQWcZGr6sHHgA6/l+dYezpRG/NYiTLYHLSdQTWFDQl930PA9054YahT8UkRcDZf/pPw5TUKxZX2doQxVaqMgdHZoI8wgZYgsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 SJ2PR11MB8422.namprd11.prod.outlook.com (2603:10b6:a03:542::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.21; Thu, 11 May
 2023 15:09:35 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::61aa:b66e:fce4:b592]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::61aa:b66e:fce4:b592%4]) with mapi id 15.20.6387.020; Thu, 11 May 2023
 15:09:35 +0000
Content-Type: multipart/alternative;
 boundary="------------jZ1m6Mfhas7GiMsSuVcSJXQ7"
Message-ID: <67558735-b32a-21cd-a019-21587da73a72@windriver.com>
Date: Thu, 11 May 2023 11:09:32 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 11/05/2023
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
        pavel@zhukoff.net, tgamblin@baylibre.com
Content-Language: en-US
X-ClientProxiedBy: BL1PR13CA0258.namprd13.prod.outlook.com
 (2603:10b6:208:2ba::23) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|SJ2PR11MB8422:EE_
X-MS-Office365-Filtering-Correlation-Id: a386ed02-16e4-4512-0c66-08db5231bb2e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	mDMC70hT1SZt0jsJkr8h5dU1hRdx6yCpYcEhf3BeayNdM2pFFXCD4Dl9sI0X26aos8Gk//PFnTpIc1H6NzIIqBKEUbGZaLSaiQt8xCgZfuoEyfjWX3bW371IdVtf7rZHEvaPOsNmFyTiRVCm7QPw6UAJiDFJBgaumVsF9bZkBsLRdySHYwa/H68kjaeJAjYidbeO939hmyyqVFugj/C7+6Y3Wj/tXFTGRN72CcmZQ7JIBtya5bjIj8QgL76DjQ66CUUI6SXijj9NM7oroQIEl3/k6Cdn5aL37Nep5gZeoajeFJU3dO4EnDnoaPZA8wHED5h+D3JT0s+HMj8+tjGAnFz7QeXSfeIyXTh4vC5hOdPC8LG8wuTeWNw3uj+i9u/s1TlxyRlNWccBohFdCFUn0fv3b/rUwEYvT5s2RxA+xUwtElOSfhBep3AbFO1H+BloDiyj2LK7gJx2zAWCn7zWb+7hgVCS9ik6CKkFLSCfItj88orU2ZXJ7mxEflm4NdFHUXE4l9Z9X6XDrihvH2TorQilWJR67LwrySCTMTqR0IAskUtMH51dr2awTTyge8fu9Mlx5/ApbncWRsKq6rWeqz1BYP0qV7YXMDqfXS81R2Xblr7+UCU2EtAJUY8KWgrIZCre/pAtbYOkcAGrQ7/jgg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(366004)(376002)(346002)(39850400004)(396003)(451199021)(8936002)(4326008)(6916009)(31686004)(54906003)(966005)(8676002)(66556008)(66476007)(66946007)(316002)(478600001)(41300700001)(6486002)(6666004)(33964004)(186003)(2906002)(166002)(6512007)(44832011)(26005)(36756003)(7416002)(38100700002)(6506007)(86362001)(5660300002)(31696002)(2616005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Z2tVVFR6N1BJZ29rU3B5c3ZrU1pLbTE2clNVb1JKTk1jaVZmWTE5c3IxUUNC?=
 =?utf-8?B?UFZJZTcrZGIydkJ2bEx6RlBxWVlJWThlS0NFdEQ3S0dvbys4T0NTZnBVRmJB?=
 =?utf-8?B?ZWpFK3ptanFjZ2JLUXZFL2c4azNiajRXaTh6NnVwUVdxdEpuUFpHUjhrdGpo?=
 =?utf-8?B?cFVnYlZkZWlEeWVzQ0FMZkVnUU9zdVZHZDBrK1UxcHRpY0xBR2sydU5OZm5B?=
 =?utf-8?B?VEswZ0VpbnFzcjZ0OVNGOCtDeS9wVk9hVlhwQjY1VFdTcC9Vb0RBUk9sVVEx?=
 =?utf-8?B?SjVUdDVqb1Z6UWdsa0NHL1daQkV4T0s5UkxwZGV3cmtYU2NxMGxvZ3NkdGtL?=
 =?utf-8?B?eTBUd2xYV0RldUxFMFk3b2FVbzNPVE5rYk1KaUVPNjYwa0RYL3ZVSSsyczQv?=
 =?utf-8?B?UmJHRHJ2b0FOWlpoNy9wY2V1WjlrZ2MzcmRUa1J6dkZoblFSSng1cDZwdmNz?=
 =?utf-8?B?S0JFKzFSazE1NHYzQ1hLb3M2NWVTcFdwT1VFVytEeUhWRWhqSGQydDU2cElY?=
 =?utf-8?B?M2NRMmZKUTY3RkJPU0pyNjZFSVZlV3J6OVV1M1c5VmY3cDZqcVMzcDJGWkdj?=
 =?utf-8?B?ZE1NRkppU2pXWkZJMEhnalp2QThiZjNpZ0ZIa2RHbkR3Ujhrb2xhTVJYNjdr?=
 =?utf-8?B?eWhEdUlvRnFXWVM2Znh6aWIyQ2VpdlBvK1MxNVVhYTc4U0p1eElxNUFQQUt1?=
 =?utf-8?B?Z3l0ejJaRmxsUHdZa0RvUWhnZE9LbHlTbjg3L2xLdHV3aXpqN01iYm9pOFBE?=
 =?utf-8?B?MCsyTU5URm5aY3hHR0Z3dEgzc2J0UUVHRHFDdEhSaUUreU5GLzlIdlZvRFl6?=
 =?utf-8?B?ZGRINlNkM0srdytrRnVhOXBrclNWSGJzVDZKUkNDVFU2cERoekUvRi9BS1Nj?=
 =?utf-8?B?TUVPRjgreGdzY05nOWltQThTemlqdWpVS0xScVo2YWdkYVZZdlRjR00rYVdR?=
 =?utf-8?B?UzMwbi9hdXJrNkRiZkk2SER5TU1Mc0prNlJQVlRxeGw3b3JuYnIwZndDYXFY?=
 =?utf-8?B?WHdmbGt0TkU5NEc3SkszUGhCU1Z6TFhQWkdzMzRtQ2gvNkNqanFWV1grTURS?=
 =?utf-8?B?eUZrOGhUZjVJK2hEaUlJUjZIY0ZrYnFZbHRTMUtiSExqbGdVcVFxMmZBU0NK?=
 =?utf-8?B?ZUNCdk5aR0dCSnlYaEc5V1IzYlRDY3RMaXRzQ0JvR1FTRjNoM1dyLzl1dHJB?=
 =?utf-8?B?UW9JWHpUWVVIYnhhNEVMM2VCdkNEYzZsSFBqTjFpRGRJZVF4dHJIdC8rQ3dH?=
 =?utf-8?B?MCtPQnQ3TUpoSEhzaFJRU1dMV2h4VnVYM1YxdXdRdFV6VGtxRnFmWWhkcEFZ?=
 =?utf-8?B?N0VIcW9SblQwbjBINnR2NksyQXBJemFod1hvOFhJVkhObzdoT21IYTQyd1NC?=
 =?utf-8?B?ZXJwRlozNk5INHU4dWpzYldPV3JFenVvMUk1dzJpYWxKWm5FRTZJY2pLQ1ZR?=
 =?utf-8?B?cmtIVXBXSm5nYk9lZk41YTRScUVJTEFwOER1RDdoME9pY2ZMNTB5Wk8xYU53?=
 =?utf-8?B?MFdtN25ZWm5nSHFDR2Ria3V3UkdnemhPYk5TSU9CcUlycUVyL1h6Q0VHZzhN?=
 =?utf-8?B?ejg1MENGN0hKakxybGh1T1NFcnB3Z0I4NHlnQmFzcHM4RG9iNFd2TnFsY0dJ?=
 =?utf-8?B?My9vODhxVlhCTmd3T0cwMzdkb1BkSVpaUSt1c3p2RGdiNnFpM1ZZZXE2UU50?=
 =?utf-8?B?dkMzaXYrN3libjRuWGZlZmM3a04rVGZuOWlreEErTVhPU0F5c3RTTTE1bkkv?=
 =?utf-8?B?K2E3THNGeWQvbnZhL1JIMUU2YncraUs0Zmt0RHhBMjFFU0FlZ2tTdHd4dnFH?=
 =?utf-8?B?UmhyOXZDVjFOaGJJY1pTWGc5a0c4WjRBaFVDTlRJaG1TK0dHclkyZVB1anZi?=
 =?utf-8?B?WmFrWUpzSUVrRXpnSXE3Y1htUFdVYjdSbzJyUzRjb2xQa09VKzJ4VitPTHZD?=
 =?utf-8?B?NWFCQ3NZVXdJaXlTM3F1aW1YcFkzZFZtYnoxeHlENDNsNFZkMld5bGlmeHIv?=
 =?utf-8?B?WUhHdnhPVzNPTE5ETGVqa1ZCL1BMaSttZUtObmFKZ2crWVpqUHFhTmswVmNM?=
 =?utf-8?B?ZlBxTXo3SmQ1U1FPSXZnRFpWZ3B0b05PbUQxL0pqQ2Q2REdXQ25JMHNLak5X?=
 =?utf-8?B?WE9XMXEwVmd5cG11K0xlT0ZKTE90Kysva3BoZUMwdS8yUmR6RHR0T1NCdTRG?=
 =?utf-8?B?dWc9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a386ed02-16e4-4512-0c66-08db5231bb2e
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2023 15:09:35.2448
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Exd0ov7gFFXge0c/AHLh0RiJvaQzT9JLPEBHF7zCS93kIenAlXBmDoKT8QrJOAKzBOeBtxvKXzAtjy7vyTVxJsJ3V03UZOHU6S9LQ8ipzIs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8422
X-Proofpoint-ORIG-GUID: fXNut4ZgPdXCMt9EFjzUur8QjuirR6V7
X-Proofpoint-GUID: fXNut4ZgPdXCMt9EFjzUur8QjuirR6V7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-11_12,2023-05-05_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 malwarescore=0 mlxscore=0 bulkscore=0 clxscore=1011 spamscore=0
 mlxlogscore=884 lowpriorityscore=0 phishscore=0 suspectscore=0
 priorityscore=1501 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2304280000 definitions=main-2305110131
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 May 2023 15:10:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59990

--------------jZ1m6Mfhas7GiMsSuVcSJXQ7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 34BCcm2g009358

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Trevor=20
Gamblin, Randy Macleod, Joshua Watt, Ross Burton, Alexandre Belloni,=C2=A0=
=20
Tim Orling, Bruce Ashfield, Michael Opdenacker, Michael Halstead, Yoann=20
Congal

*ARs:**
*

*Notes:
*
*
*

*Medium+ 4.3 Unassigned Enhancements/Bugs: *72 (Last week 72)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *44**(Last week 44)

*AB Bugs: *71 (Last week 71)
--------------jZ1m6Mfhas7GiMsSuVcSJXQ7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Richard Purdie, Steve Sakoman, Stephen
        Jolley, Trevor Gamblin, Randy Macleod, Joshua Watt, Ross Burton,
        Alexandre Belloni,&nbsp; Tim Orling, Bruce Ashfield, Michael
        Opdenacker, Michael Halstead, Yoann Congal<br>
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
    <b>AB Bugs: </b>71 (Last week 71)
  </body>
</html>

--------------jZ1m6Mfhas7GiMsSuVcSJXQ7--

