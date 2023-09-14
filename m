Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10344EEAA54
	for <webhook@archiver.kernel.org>; Thu, 14 Sep 2023 16:12:02 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.16576.1694707920128214362
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Sep 2023 09:12:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=MMRN2VlZ;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=7621a73da4=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38EDNiKH002568;
	Thu, 14 Sep 2023 16:11:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:message-id:date:from:subject:to:cc:mime-version;
	 s=PPS06212021; bh=u9/9i/mLJfBkdwJIHnQXys8I1X+Rs1NLB/vMTM1/UUc=; b=
	MMRN2VlZsECmGjQO0Uu9Fn8R/pM65zdXs1N3zwNPxNVoo1BQEyK8j2I1YGfB9907
	wGaPyMpngj2vbDF8WjM6O2aTxi+k8Ax7MlzQNj7SiP8JsKwn9REZzlfNra9wvBqA
	rzOM8LECRvbiIMlSx0i/5qp0+sqSXtHwFQE4q6Qs9rbwychoBa+8ft9LCiGqSXOy
	cbZC69FkDBP9EzT6FZGORfWA29JJYcJETVhLMVACiehZ8MQI/A+ZAtqtv9u3ibe2
	gy2TmLbG3Jmf+d/lMA0xcJpRHIaD0OkMdxvHF++G/SPEu2A14xFHKbSXiFIDgspT
	9uOtpM4fFMgHyzuIZCWXpQ==
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2173.outbound.protection.outlook.com [104.47.57.173])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3t2y8msyb7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 14 Sep 2023 16:11:52 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZLeJAGB6JSXkmlQloWzlKSLm4AyLtOkzQlpNTINz1RZokcU6yb08k1ijMgdDACMfsYnojz7HsW/pCF/lf2gJ9o69yOJc3C/qMZyz4t2BZnyc2rLD6hr66ozTOkRWL5EmHg0Lwfk99hMoEKZW9M5muwbf6hucx8ViXJWBP3KkBUQvc4qQ9Ue0CUyNZK+EMI4CX4cVbaGj9kV6lrGG1QpgiViARuxyVlqwSu/HsTgo9Qr3ViLcaW2rK7U5sJram07pbvRE2V41OF33YgAwQCgZGAIuRQ+OqFVz6ogIBKKRLqjY+Jj4+PMP7ImBAwOPkbps7bwkK2k2F94rUaD2OR6OFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u9/9i/mLJfBkdwJIHnQXys8I1X+Rs1NLB/vMTM1/UUc=;
 b=oWPjK3Q3sC7C/jRyfgT0bqUEBMW+pPFnHHEb63h9reYo4ikiRI2Hj9tiYuz3vFOtAIKzgV2MtdUpSKXwIYWbD46mL+Hs1U29l3KC2xs2tONbbEeoxmLbHsuyrwKtTZqAdHRn+z464opDcgF2zmIgUFFWaFeLVfd5VQNbTd9x9TiC/5UndGTo6wcm26CiZ/Dmst5y1+fX4DImDgtTlFw94QSjUFjwUl/M5IsQXl8kMaLtuVgLw1iLaM7Rc8mCl2d0R+IY+K7sjERqURDwz4wxT0A12/CbkCm7ayvopeSbffIR4E4CuKusOtImLxY4nKTJ7nNWhzdhR1CLgLpmDxsbEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 SJ2PR11MB7503.namprd11.prod.outlook.com (2603:10b6:a03:4cb::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Thu, 14 Sep
 2023 16:11:48 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4044:65c4:486f:538b]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4044:65c4:486f:538b%4]) with mapi id 15.20.6792.020; Thu, 14 Sep 2023
 16:11:48 +0000
Content-Type: multipart/alternative;
 boundary="------------7x4ahDtqZSicBPEb4wm2MtsU"
Message-ID: <4795b853-5ec3-5a35-19c0-9ba66e8b3596@windriver.com>
Date: Thu, 14 Sep 2023 12:11:44 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 14/09/2023
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: alexandre.belloni@bootlin.com, Bruce Ashfield <bruce.ashfield@gmail.com>,
        daiane.angolini@foundries.io,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        luca.ceresoli@bootlin.com, Randy MacLeod <randy.macleod@windriver.com>,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        Khem Raj <raj.khem@gmail.com>, ross@burtonini.com,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>, tim.orling@konsulko.com,
        sakib.sajal@windriver.com, akuster808 <akuster808@gmail.com>,
        valery.chernous@gmail.com, tgamblin@baylibre.com, pavel@zhukoff.net,
        antonio.oliveira@konsulko.com
Content-Language: en-US
X-ClientProxiedBy: BL6PEPF00013E13.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:22e:400:0:1001:0:14) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|SJ2PR11MB7503:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e612519-a1bc-43af-b276-08dbb53d4c0d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	KwoTL8pNZKyFjpeSjvpMFiVB+/Qvh1X0mMrHEtbV1yDkJNwrXPFELnqW0P+Juho8KhXA5d/zoQYOCMH3uGPrE7s0PAy1qqtbeyAZjyX9ESBP8PU8MotreUgabXqZIih1GCz3GzlkNrXWPT2d5B2nJCOXRMuXFEYHdnfyxRulcAZawe1oL83mAyVhgM32E6XichQZvC2vbR2T0KQV6KacGhtWPzD7pwjgVVyp+RsauCDK44aFgf9sBJjzklUpScSJihKHv8qo9t7GrHWQKYJW9unR9jwaWXbS8Lm/Hb2FYcDdF5fKkeieHbrLTLBDBKZvhIRUuxcI82/12ry7JmAPWQGUJhzC8HNlSBdeO+QX552UsDTnKVc5HD8gh+xBenVjUrz/r5eX4X9YCdG82tX1JmmmJAGKkNWRKKa4HlL268YBuSyOm6xqNsZFUkZVHcv4oWKf2MPp+4CI4uR3OShNXl0er27fa3q6GTHKpctZydknEinieBbyRtavUhXS3yxyom+P/MgJ1MA0TR7FDH5IxIoOwnaOLi/RdS7XtY9XCqe+S9rpQV4EHu/M5gjm4OHPkkQ/FWAiO4iAFFx5mZUzu8QHF1VUla4ANZ++uqE2WtfAHm0GNBpPlADTV058fqcgNbe0LN4ydCRsJx8oyVV/sA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39850400004)(346002)(136003)(396003)(376002)(366004)(186009)(451199024)(1800799009)(41300700001)(33964004)(6486002)(6666004)(6506007)(44832011)(6512007)(166002)(2906002)(966005)(7416002)(66946007)(5660300002)(8936002)(6916009)(2616005)(66556008)(66476007)(478600001)(54906003)(316002)(8676002)(36756003)(4326008)(38100700002)(31696002)(26005)(86362001)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MDlmVzFkMnZTUXB3TndnMjltaiswdlViZnVndHdyRm9XcWF1aVVDallRZkh2?=
 =?utf-8?B?b0FkdVNNdUJ5clNZK1FPR3VmNVY1RjRmOGcxRnVLWk5ZRHhRZ3cybEt0RFlP?=
 =?utf-8?B?eFRTcnZVOU9vM3dKK0F3QkdTMTN1RUZGSEtwOWMvUEtrajBpRlMydEMvZzg2?=
 =?utf-8?B?Z2tYUUNnOFk2c3lrVXd5ZmRpVmxUcTQ4NHR6U3BJa01vRktrcW15OVR5MHVT?=
 =?utf-8?B?VSt1MjQ5dTFrb1VHdlcyKzFyTUJ0WkZocURaN0N6VWxJZWRVbW8zVllScGho?=
 =?utf-8?B?MmdEcnE0b3JrazJRVW43UXE0NCtZV0tTTlZJWXBTZlQ1NTJKNHU2UDNsSUJQ?=
 =?utf-8?B?K1hnbHFtQmdiTG9zc0hld2NnU3BZU0NsSVlzd0lINm54cmFSSUtEVmwzc2lW?=
 =?utf-8?B?YWRuNjZxRWxPRkw0R2RwMUs1eHoxRlREck1oY0Jmb0IxaDdOZTAxMWRZc0lm?=
 =?utf-8?B?UlRCQnordGVmTGJoODR1UVdVd2ppOUo2NlJYbmhqZWtlRzBRaElNVTB3cW1o?=
 =?utf-8?B?bWhRbnNQemxGdE5QWlVXMlQzdno0SGpPcWRhRnBVQTJxNHZHUFZIUmNRSnJl?=
 =?utf-8?B?dFoyZ051dlRJWU40VTQ3TFJMMzRpQlJ5VmpHelRtaWtWSk4xVlEwU3MxWEtp?=
 =?utf-8?B?VjBPWW5Qb29FTnpWQ2diWjNKaUJZcmt1QzlrK2oyRkdiZkkwWWZYODVVT1Yy?=
 =?utf-8?B?VW1VWFliZ0k1SFdhcE1GblFrWVZ3R1pCVEJ5TnpwOE42UjFnTkxpVWFDTldV?=
 =?utf-8?B?ckVkL09GMTd2cHNXaXJaUVNrRlZVMUV0QXlDZ1BERGRzaUxURlI4ckx6dTBz?=
 =?utf-8?B?Q3FQL0gxZDN3anB1eS9HbXdkSEp5OU1lMjRzbmRmOUdGT1JlVTJXc1NkU25y?=
 =?utf-8?B?MzZEZzU1cCtJamNnYmVFdVFhMTRiZVBtZGgrZHJNdmV6RjBNV0Ywbk11YUxX?=
 =?utf-8?B?WjlMSlljUWg4bUFVVmFnbFk5VFNlVmVRdmxkUzlTQ0hJTWNmQzExbU1rSjVv?=
 =?utf-8?B?L1NkQWZyaGFlL1ZSTjdlU01YVUtJVWoyU1hOcFVSVzU3RGtXMnY2aEpGcVVG?=
 =?utf-8?B?MUJBcjJnMVdGdHRYaUNIMUhLWkZVS0FiMHd6dU1wbmpVeWg5aWR1djFEeTM2?=
 =?utf-8?B?YnJIWUUxWG10MHhJQVpEUytvNVphRkxiRHQvaERleDd6NVFhN1B4Y2VyczQ3?=
 =?utf-8?B?ZCs5ZnBsU3Z0SUVsZmV0UlYyQWZZemN2K3JEa28vdVdjZUJOMVE5bUZTYkND?=
 =?utf-8?B?ZEtYc1ltdmNCUENZbVV2VlMyR3lleEpTNmFpcTRHcGxMZVQ3T1JWYlVyTkQ5?=
 =?utf-8?B?L0g0cHhqQ1g3U1hnNU1ycVM4QzdJcXc1WGhnQjdiL3gyaUVzTGh4enR0YnZr?=
 =?utf-8?B?QVQzdWM2NzcvalI0THcwWldGWW0xUEY2UUI5cHkvbTBweXMxLzRiTTUvWXZn?=
 =?utf-8?B?b3hvcGEzcW94LzRmTzNmcUNBd3h0Z2I1SnExQThzd2M0eVcyN1NOZGpzemR2?=
 =?utf-8?B?KytQQ0crVEpMRmQvR21nczdlZFJxQ21MaUZWb25JWVB4UXFzaEhNVkVOeGJx?=
 =?utf-8?B?KzYwenhPVWltc1hzOEdNeUNrZ1ZHMVZHK0RyQWxueWtRZlA1eEthNmZuWURR?=
 =?utf-8?B?c2JvdzJCRUdGVkJBMmVuSDRwOTRRVDlMSjRPdTN0SW5ZZW1SZzdyZHQzYlU5?=
 =?utf-8?B?YkQzNnNmRG5ZZTNTKzJESWdnOHhjMWlYK1FGVjdURjRpd2dQbVhScytsUnly?=
 =?utf-8?B?dENoclBRVCt0REJEMWh0L1dTMDNFcjNla1o2aHFTWHpFVGdDR3UrSE1wR2Zj?=
 =?utf-8?B?MXZ1LzVhSVR1MlpxcUdkQzMxbDBzOG9VMUdGMzcvL3ovVmc2OGpTbmNMcHBp?=
 =?utf-8?B?dTNzaXBYd1VSWkY1RlMxN2FvTUY1enN1ZlVHdGw5Rm9uNUNnNFpNd2dWZm1L?=
 =?utf-8?B?QzFtTFVsaWV3N2NmU1BUOWVlM3pqd1F1Z2tFeUFubHZycGhDakJJc3ZxcTVM?=
 =?utf-8?B?amtrVm84TVM1K2pMN0FqYm1lRjIzMk51M2E3NWVYVk5jcGh3Z3lSOTROdGQz?=
 =?utf-8?B?MDdobDJjQ0N4bHlZelJvMG8yWkE1dWxEYmZQZU1PNFl4MGUxc2JSYnlja2dt?=
 =?utf-8?B?V3N4MUk3U0xvTWticS9PL2VWSjUyOGtrNkRTb0dTdDZreXdyTWdVMHN3aXdO?=
 =?utf-8?B?cnc9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e612519-a1bc-43af-b276-08dbb53d4c0d
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2023 16:11:47.9125
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Sq7/sYzEl+vQJ/7ldcMeiVrGTnNYmD0hxGIzDH0IeyCLvA13eKnDvwl8X5eYZhJrh1YplQ/fR7DgEyotzQcoT+r1cgOpLATUeEUQeNv5gtg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7503
X-Proofpoint-GUID: ez2GvDcwIxpTlwULVnHfHGBlyI4NkX6d
X-Proofpoint-ORIG-GUID: ez2GvDcwIxpTlwULVnHfHGBlyI4NkX6d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.980,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-09-14_09,2023-09-14_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 suspectscore=0 mlxscore=0 mlxlogscore=842 phishscore=0 priorityscore=1501
 adultscore=0 clxscore=1011 bulkscore=0 malwarescore=0 spamscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2309140140
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Sep 2023 16:12:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61009

--------------7x4ahDtqZSicBPEb4wm2MtsU
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Bruce 
Ashfield, Tim Orling, Joshua Watt, Ross Burton, Trevor Gamblin, 
Alexandre Belloni, Michael Opdenacker, Antonio, Yoann Congal, Pavel 
Zhukov, Edi Feschiyan

*ARs:**
*

*Notes:
*
*
*

*Medium+ 4.3 Unassigned Enhancements/Bugs: *67 (Last week 68)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *41 (Last week 42)

*AB Bugs: * 74 (Last week 73)
--------------7x4ahDtqZSicBPEb4wm2MtsU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Richard Purdie, Steve Sakoman, Stephen
        Jolley, Bruce Ashfield, Tim Orling, Joshua Watt, Ross Burton,
        Trevor Gamblin, Alexandre Belloni, Michael Opdenacker, Antonio,
        Yoann Congal, Pavel Zhukov, Edi Feschiyan</p>
      <p><b>ARs:</b><b><br>
        </b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes: <br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.3 Unassigned Enhancements/Bugs: </b>67 (Last week
        68) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs:&nbsp;</b>41 (Last week
      42)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <b>AB Bugs: </b> 74 (Last week 73)
  </body>
</html>

--------------7x4ahDtqZSicBPEb4wm2MtsU--

