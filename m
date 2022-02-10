Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8418DC433F5
	for <webhook@archiver.kernel.org>; Thu, 10 Feb 2022 18:51:04 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web12.14798.1644519063178033861
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Feb 2022 10:51:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=gbceonh3;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=90409efa6e=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 21AIAfUp030917;
	Thu, 10 Feb 2022 18:50:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=mPkQow6T39BtxZupDdRkB0SdV9ejRvYNHoNYKRQ4ol8=;
 b=gbceonh3SfnJxFQnxuwUpyadLwdgk5GQvt9c/LIFyq5brqy9kb8PsIWY3/fxcu8c+r8f
 uOhbp0r+P1n1DEkWrhHacmZbt2cJAP+GqNhvxP9nsEd2IfRW+ealoj0tF7V1KcLr3bmo
 2W03aOaAABSmEbP/ktxLgICdYKsRgLz3NtMho7Pzgx4qyE80crgL2e6Uj5Wx9iJxRc0S
 wGgleRR0RPRPCZI7p0/6YIrTprfA9L4yosYT4d4sPzHyqXUR/b5oGIxQ5keXHuYYSabq
 6BOW0UMD7Bw9eAIbW7YKljuFyhHB3sLcZ23uQozMYx994xXs/PxlRSNLGJpMGcJMfkus gA==
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2105.outbound.protection.outlook.com [104.47.58.105])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3e4f9e16cj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Feb 2022 18:50:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bqpjhlky1yEgr9T4aRG41EFoRS0eDXiXCekf7mgHzGKsb8B9v+cYy29gtGlxtMdRbPcdRj7WyNnfKT+XTG+W+LO3v+IfIR6B1uqV52y5JD3CH2YD3T/g4QrdDIlywinnLQok63Eu1c6cbxjSGnV+hyXHVLySawxPNaDty+/JHJ/SyukG4WtB+y0Xv48Nf0CEX+oFtqjJW03U2+YkAHX5HvttR06e3VVMiNCoUC0Jct7yrJ0dqfY0nbPeNDmjAotOCn9t9nY1ZS6qDG3QgPlwrnyTaWLRFoywTNemHiR/JAluYZ6runJyjrM4pjgZ1pdp9LZYZZiKKMFWLJZ3MorISA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mPkQow6T39BtxZupDdRkB0SdV9ejRvYNHoNYKRQ4ol8=;
 b=ddGsG+cVVcqczN65s4aEpdwnSK6vxRBOR7U7tA3nmv8iC4DsEhXOCYYIUNoeKzztnV17WxTqJLzBBDA9JGQbUsQ8moVfoNBJ1qtBcuDvHbmfDdqQ4kFl1k212evc4Y8rdtOVWfDbWC5kPl0nmaUfntwph7X5YbxsAqanCnOywFdVhfEBSov24lYu5q/IkC0962KPBwvbUC9jnSSVNcHV183rCooi2EbEMIt99skpF4ld5xp0MtveK49eB2iW6Rg1Ba5dZ4eQfCumMvjjnRYrpdNTaOViPDAcAUtgWo9WZ1+6+qYFrdmhRMGLXsMG/UFmLbPO3Wu9+Y40DPJp1jshjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BL0PR11MB3153.namprd11.prod.outlook.com (2603:10b6:208:6b::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.16; Thu, 10 Feb
 2022 18:50:41 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::998:a55e:a78:af87]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::998:a55e:a78:af87%5]) with mapi id 15.20.4975.011; Thu, 10 Feb 2022
 18:50:41 +0000
Content-Type: multipart/alternative;
 boundary="------------w5KGljRCBeChIrpiCmI50cDH"
Message-ID: <b08feca5-3975-4ffe-05d9-8657773f7cc5@windriver.com>
Date: Thu, 10 Feb 2022 13:50:35 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
From: Trevor Gamblin <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 2/10/2022
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        "MacLeod, Randy" <Randy.MacLeod@windriver.com>,
        "Wold, Saul" <saul.wold@windriver.com>, daiane.angolini@foundries.io,
        alexandre.belloni@bootlin.com, Steve Sakoman <steve@sakoman.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        "akuster@mvista.com" <akuster@mvista.com>, tim.orling@konsulko.com,
        pavel.zhukov@huawei.com, Andrei Gherzan <andrei@gherzan.com>,
        Bruce Ashfield <bruce.ashfield@gmail.com>,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>
Content-Language: en-US
X-ClientProxiedBy: YQBPR0101CA0183.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:f::26) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: aca9388c-8da3-46c6-ddd8-08d9ecc63c2d
X-MS-TrafficTypeDiagnostic: BL0PR11MB3153:EE_
X-Microsoft-Antispam-PRVS: 
	<BL0PR11MB31531359F032F100678BDAC29F2F9@BL0PR11MB3153.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	pcqcEdL3f7q5Lpye4TZBBkLvFbSnojg9p21OrwNVnj7ddAkNGaFXkCoV5C8YrvPtabbWQ7RspUMo7tSWSj5zcwo6Z4+QwjJkQvkey5JA9S8Zu/F6trrct1TgP/f4cD7SdCR/4pv5qXphaxkCoYGNeANIAd4ZLsHG1L2EAt7OTA64ZprXxrFlknq+NsTznJkPuMKJIs3QoW96sQeuPqRFQVKM8xsHLC5KvtiR1Tbd0amxjzBbY3e4p9qtDv5JTFRtGYewFcjgGl6QcppQ0fWS9uwzRzQY9LT64Bzp3wj0DO4PgioJMfjyx2cXssRM30VrqUcEgbaKtu2MpUUrfFkZDmByqVCMUU6PVImk51yQB9uRw0SsB/RMeCBcOJU+JkUvul8Z4v92/MBmFdtMLME/hADx59CQW9u3XQl6tJA830xTtIrj2baNWfsl2kc2tJtr3MHSRXAXiaNTfP7BtLrAKKqBBtkCJZ4R+ZypciPoatCRLwXq8Nd9FANpqvsvxb+Udo8os+sPUJ+v3onJ5cE0sJwJKgSWpm2iEQf5YQ8AVM6Cs3YTv6l7dOcmufSRj3gVHpu9/xMoS2it4DkY6YT0SyoanpmIEk76D0wx1NSd/RQbV+O3Y4eVJNDkhW/S/GexfngZipWWWbRW4eqYk/qLtoT3XthuP6PWPypKpwGjBjraPJZutB8tGybRiVE7eevldB1yt7WQo71E4zphbxca/AHzc1Tea7iBS2U5jKrWlIX36596KFRX/BQbyKZB0au1BVfSmHxVmc1LqF4RBD0nnYv8uwJ5JNGC2s93f+O/Co2HzuklMsaLhmXDb9pWnm6u
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(2906002)(2616005)(186003)(66476007)(44832011)(8936002)(86362001)(7416002)(66946007)(66556008)(38100700002)(4326008)(31696002)(8676002)(5660300002)(31686004)(316002)(36756003)(6512007)(33964004)(6666004)(6506007)(54906003)(83380400001)(508600001)(966005)(166002)(6486002)(6916009)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?OFpZUjVRd3BBSjBVa2xFY3ZIYktYNFkzSjI1MGpWS3J4VGhPa09yOWZlLzRj?=
 =?utf-8?B?NkFSU0h2aFQzem1EV0U5L3NFRzJON05xei90NDhud2JvTHF1RzZsNTJWNjda?=
 =?utf-8?B?R2hXZm9SRjVhdkxNdmU1TTJGSGpnV3pNa1RNVWhRQm9PZ3R2R3FqL2RGUTVy?=
 =?utf-8?B?UnZrbXIrQ0lxbUlNV01ERXRVVHp4bWRKbWJ3TWpCMWhrM0VXMXVSRmovbWlZ?=
 =?utf-8?B?WlltOE1vOWxtODU1SE1uTmdmRFdQRmVVSy9XN3ZDME5jakhBMVhSaTJpR0c5?=
 =?utf-8?B?dXpzaEVTS3pJTUxBZzBBT3dCdHA4cE5oK1p1QzJmbFpjOXhTQXE0UGt3WDF6?=
 =?utf-8?B?Vm9uMHJxcjA3cXJSOHB0eEc5RVMyVWtzdTA5OGxVbDlHQUx4OEFBdjNFeWxS?=
 =?utf-8?B?aTlmL09RSnBhS2IyMTJwbzI0Q2RvVTVwSm81bDdFVS9pai8rNXNBOTVQNkRJ?=
 =?utf-8?B?dXpQR2l4N1VidnVpQXhkRHBOWDJmL29XUGF3T3cwM1NnQVNBSFVJVVlVazNq?=
 =?utf-8?B?QUNXa3R5a0syRWtnYXAzdEY5NVMxNVllNVJhWWxvZndQeG1SK3NRZjRsWmRJ?=
 =?utf-8?B?VlRuQmFpZUxWbVh1ZmJkN283NHdkZnVUYnQ4RnVjQytLS3hSQ2JHdnRHNC8w?=
 =?utf-8?B?QmVPNk1HZ2NGNVZWNjE2WjVmQ0F3VThZUG5lK3VvUmlmdU9PY0RJTkNuR2lq?=
 =?utf-8?B?RHo2TWsyd1VCNUNaVzNpbnR0OFY5Z3ZJK01pYVFOdURVTU11YW1KSVd5T2VN?=
 =?utf-8?B?eCtta1dPa1BxWElQR2Rob2MzMDM2Wmx3L1lJcURaRVBkNHVQRDdtaUp0YzMx?=
 =?utf-8?B?R1VpRHN0bGxUWXNROVgzWWZJQkZQNFQ1S0ZndkpNOTFnckZQMEs3ZytraC9U?=
 =?utf-8?B?anhLUnhiZ1l1RjlxMU5weU1XZ00reS9kL0FDV0ZLVUdzbC9KdUN3ME11MUlL?=
 =?utf-8?B?eDE4S29peU51bnZ3L1E2WFhyZ2VQbDZFSnZZaVA5eXdkSng1ZGVlZmtEblRW?=
 =?utf-8?B?d2g0YThseDhvUXFiS0dMZDhSZmVQdFpBTm9jbys1MmFmeDhwSUZhaDlEK2Y5?=
 =?utf-8?B?aWlFc3RNODRWV1I5NDFCSWRLNy9Xc3VOVmdqRXU3U1RJOEFhNTlTSXBaWTE0?=
 =?utf-8?B?cXZlVGRXZ1MxS1Fuck83VTMycHlyQWc3bm1WR3pITmZDaVM1UWFCMnpRZjZh?=
 =?utf-8?B?T1ZWNjBiSzFUZ2gxVXRZMmVuYmJNQVFvcnl6TjJ2VjZyNHUwb2NYRUpRcjU3?=
 =?utf-8?B?ZVAwaWZMMlhIS1RKTmdmN2xPaDlMZm90Nmo2Z29MNlVqanBnK21PdkpNTDhz?=
 =?utf-8?B?RHY2MFFvc3hhaHNBK0dKQ0EwSjlWa1Izb3RTY3htSG9JWFEyL2JKU3N2MXc2?=
 =?utf-8?B?N3FVdm1uek9lbDFaek80S3AzL1J3ZlB2M25pRWkzWnlLYi9sbi9mSzdDSW1T?=
 =?utf-8?B?eFgxd1VleG43bngyY0kwaDY0YXh6RUZTaWw4VnBtSUdmMnYyTHpOYm5mRTha?=
 =?utf-8?B?RlJnOHd4YVladXpmM09oWU1NTThkQkxJSHRQdGtST2ZSWTdaZnR0bHFVYkt5?=
 =?utf-8?B?WUpoUUp2cXdURllFUlVBQkNNRE1ReXZXMXlYSVJnSHNVK2JQTWc5U1plK3Vq?=
 =?utf-8?B?aVZROTRVRUh0TFJXM1REZXhtWEI4NlA2V0JFNjFDYlk5dnpKRElJdXlFRy8w?=
 =?utf-8?B?NU9mWnFrWVhoNlY5ZmRQenVkTElvYWE3QUJpZEo5Z055NVU4RVYyTGIvRkVx?=
 =?utf-8?B?aFlqdzNwbUxqTlZFdUdpb3VDZWN0Z3dzWEI5cVpCbFIxM3NJTEVpckVRaDZ3?=
 =?utf-8?B?REppVG9heGpFSWdzbG9wR25pWVltQ1FmbE9FbVlJNWg5SEI1UmxDV1Y5bG96?=
 =?utf-8?B?RzR1UUNrWkhIK3B4djg0aVVBV2ltcHVZdldyR2pTVmt4T0h0cGZ4MzRaNlds?=
 =?utf-8?B?N0MxcFRwUDZJTkZVLzhCMlBwRk92MDRpZW04ZjgyWFk5RVV3Y3o3UWFPTCtR?=
 =?utf-8?B?MkYybnlrQnZaNnhzZkczTnBMQ2Q1WVhaQXhkWHcxbGNraC9sZlZscXpLUUdh?=
 =?utf-8?B?QWIzL2NGQzZrUStTbGZXbnRCVVNFeHdOVlU3SkVaN1FVN3l5ZkVMUTk3K21w?=
 =?utf-8?B?YVk0ODl0L2dYOUJBNHloeWZFczZ5dzh2eXZPQ3JLQjF1am9Ldm9Ibk9IWFA5?=
 =?utf-8?B?d1ZTRDkvZEJJWnVpSVVsWXJ4VlZINGZnZUpSNXpIZ1lPeDNPUS9keFdNUWY1?=
 =?utf-8?B?MlM3TnZVL1o2TzRjanJOM21KMDZtTG9wNENPRkc2WVlsdW9VSDBtdUh4UVUr?=
 =?utf-8?Q?kaPMGpiSAtOFev9t/7?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 aca9388c-8da3-46c6-ddd8-08d9ecc63c2d
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2022 18:50:40.9766
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 gHY6ewF1Zgk/xQ+caNshmOYZAepmcNQtsPrdmvhlbZnuFiZLuarCrgNHRAkqR9igr3nxhglpEfJgZv6jPElHA0sW7g4SXrNC0Mz55H3a+EE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3153
X-Proofpoint-ORIG-GUID: qqYO2wMEOBLLhSTu-l3KbJ3CVW3xqZI0
X-Proofpoint-GUID: qqYO2wMEOBLLhSTu-l3KbJ3CVW3xqZI0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-02-10_08,2022-02-09_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0
 lowpriorityscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 mlxlogscore=893 malwarescore=0 phishscore=0 clxscore=1011 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2201110000 definitions=main-2202100099
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Feb 2022 18:51:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56153

--------------w5KGljRCBeChIrpiCmI50cDH
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Andrei, Alexandre, Armin, Bruce, Daiane, Joshua, Pavel, 
Randy, Richard, Saul, Stephen, Steve, Tim, Trevor

*ARs:*

- Saul to address NEEDINFO bugs from Robert Berger

- Randy to search Bugzilla for prelink bugs to close

*Notes:*

- (Correction) ~43% of AB workers have been switched to SSDs. Failure 
rate appears lower, but still TBD

*Medium+ 3.5 Unassigned Enhancements/Bugs: *79 (Last week 76)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *39**(Last week 39)

*AB Bugs: *75 (Last week 73)
--------------w5KGljRCBeChIrpiCmI50cDH
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Andrei, Alexandre, Armin, Bruce, Daiane,
        Joshua, Pavel, Randy, Richard, Saul, Stephen, Steve, Tim, Trevor<br>
      </p>
      <p><b>ARs:</b></p>
      <p>- Saul to address NEEDINFO bugs from Robert Berger</p>
      <p>- Randy to search Bugzilla for prelink bugs to close<br>
      </p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <p>- (Correction) ~43% of AB workers have been switched to SSDs.
      Failure rate appears lower, but still TBD<br>
    </p>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs: </b>79 (Last week
        76)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>39<b> </b>(Last
      week 39)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>75
      (Last week 73)<br>
    </div>
  </body>
</html>

--------------w5KGljRCBeChIrpiCmI50cDH--

