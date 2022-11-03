Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F75C433FE
	for <webhook@archiver.kernel.org>; Thu,  3 Nov 2022 16:23:54 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.590.1667492628932203650
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Nov 2022 09:23:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=cN7f6X1x;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=83062f08e3=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 2A3DhKCp029148;
	Thu, 3 Nov 2022 09:23:32 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=4rdpwqHxQf0VTAVWt5kV79MlPcjEt25iznyA4nMRjn0=;
 b=cN7f6X1xBu5XTQDZJYzA27EswIWJpEnT7uY2ekmIuadPw3cKwbWaRGts7yHr7I+Czb4L
 KEt/gijoI7wJwJ6sCOCww+ygdlNJkOu5PszHyJexJO8ONi9tce7rN1ViK0HPxEUm8uSQ
 QV75olg0NlkpN9PL44DkD2/yVc3fTvYct8nWuXaGMvKphXKaRdPXIYcg+f0s3hh2TItS
 0v9g7q0KPweMIocx1xy77CmYwj6aEAlb0r5FXz1xpNVB7OyTMVsUcHSkPfd1YiL2iMqX
 jhl2gJkPSBJY91fc082+3g4Bb67unf/9UD0Dy+LbJJKZdHAN5v1KhI6NyW+xoOarhMqW nw== 
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2176.outbound.protection.outlook.com [104.47.57.176])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3km4awrk1a-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 03 Nov 2022 09:23:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I9lR1sN+A7lNLQ+STqPBl8qvIoMTUcUZszF7bFODxXuSfVgUlqiiT9YN+JT9zy6GXFftvUMxqKkZodrBJ5fcDMsC0n027VRxl+tJPVbDaZCA1+QTzCSPqDn9U5oeD0JpeJxMQKBjlLZf6MmuGb8kBiFnba0w8RFq95B/v59baY7kfcpi00F9DK95XI+cEUBe+IBf5L9CPmqlLnkWiRjXV84r4agC63FMiFSB+rOBXikZD0F7INUKvRXLsw8NF2tN4XgyCZkFEvIZEtDDe5E1y6BnFTOPRuXsGACQNG1H1qNj84AkdCKgWjkdqnlAoyTVo31QK/F/AXAUV+WxftMcbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4rdpwqHxQf0VTAVWt5kV79MlPcjEt25iznyA4nMRjn0=;
 b=FFnK15UJv7qSKJ9RNL7qz+EA8hQXfTu4XWzC3kLAmZ/bgUHg/CFzzWAQmV80cX9j77QyrUrY/YhMtztwDNPcd9mgI16F9S0YvFwXG8Auw+yzeeaGXHEKEBo6Vo3WO4dOCtvvO2f1i0dERGfkJ76VryDZJ4N3cC5oNd3EPEwYZArRdKTfJ653Qz2F+/7ejqRmsUcjn6xdZNUPy0K6XQT+89gnUP/CfJM7VOq/0tvOxJ9ay8Xm9WtGaN0gbdbFdZjjBAkx0wZyYn42Eoe6oOeHW4FWTBFSYJdRSvHfi+FFfFh7ZdpO+MQRg6Ga3XzvPFlvahqMNmblr041RxFWZcwY4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 BN9PR11MB5356.namprd11.prod.outlook.com (2603:10b6:408:11d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Thu, 3 Nov
 2022 16:23:29 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::1f24:5efb:1519:ef4d]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::1f24:5efb:1519:ef4d%7]) with mapi id 15.20.5791.021; Thu, 3 Nov 2022
 16:23:29 +0000
Content-Type: multipart/alternative;
 boundary="------------n0buBLiRmfuMKKuhU0k5l9OD"
Message-ID: <4106ac56-6976-37b2-914d-dd965771a366@windriver.com>
Date: Thu, 3 Nov 2022 12:23:25 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 11/3/2022
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
        aryaman.gupta@windriver.com, pavel@zhukoff.net
Content-Language: en-US
X-ClientProxiedBy: YQBPR01CA0090.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:3::26) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|BN9PR11MB5356:EE_
X-MS-Office365-Filtering-Correlation-Id: 8da58b56-3965-4c49-8187-08dabdb7bdf8
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	udW6Zx3D5laZucX2tWqvj7Nq4hCqH428sh9+sUCUutQ4kcqRRTHntg6OZdy1MFbqs+WXcA0Ti6ElBzdN62TQDfwTLRScjZpoGD3+JIAI+PjkS0MYgrdhkC4gQVqddITQKwWbU9RQJy8klhOFFfTezwDkc4DZ9DzWHEyr5rn9faHYDlMt2rRVs0MPH/mrrskbbcPkiua2Hfy0ANyuccR7chpimYm0woFMFUtnRkPHeeJBoP6A9R7Ii9C0BNk0MhE5ei2VHdGMikIRicZDui8txoXDV5RoKGg2mhZKhB+/4SjFOLDvl7wvALBx6UfnQYVh+Us5VvTk1rzKXfpE9OE1cpSyXO5ciubU6veoIBnAIgy4U8mciDwxI7J8ft0c5i+9jKBNEvtOb9kTPc5O4ETgGA20O2wYIcISaNlIV3XGjyqdw4J298nVYS/AkdA/XamQM9HOyeggx50tcFzneDAo8iVU48IHXh60cgdYoee/PHS86MY8gxVXvS3HVD2qQYRv4HPrD5l+MNkQwudVenwFB5Ap6zKjgRUOIudDaDwkwSwTt32KiJAUJC5wHaCSjoAjKDmyTv6PjgcBJBU/lpNdw0NB7B+jzreIn1MkQzY8TwdM4UFmJ0jjEJ9ucsTsKzBBVRq8mQFJoOxYNBMlCkWkWdhaLOoyhSHkA5kX6axC2MdCu8SJVvB626W1jpIZJi34zifzjC4XYOdX/7aE9454u/AlgUBCBRxPqZd5/apUuEaSLcZL0LLYWLF+eSSDyPlgNuu+j5w15G0LObkQq6nPJSJMG9k+UmZ2tF5Ew94tmY1OdhNe9epT2vO0zQ+73zFz
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39850400004)(136003)(366004)(396003)(346002)(376002)(451199015)(66946007)(5660300002)(8936002)(4326008)(41300700001)(66556008)(6916009)(66476007)(8676002)(316002)(166002)(86362001)(2906002)(54906003)(31696002)(36756003)(44832011)(38100700002)(7416002)(6666004)(33964004)(6506007)(31686004)(186003)(6512007)(2616005)(966005)(26005)(6486002)(478600001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bDZyOEVrZ25JbnEwU1pYclJUVE50RlhaZHVoVlM3amFyRlFHMlZMWmNhaldY?=
 =?utf-8?B?enVEblhSdWsrU1phbFY4TWtXWXF1ZFhHQnk1SGNJWUJFRStQNDNTZEt4d0Yw?=
 =?utf-8?B?Vm5XYWRHYkl1dHFsTGxRa29sWkFtSVA2cnJzWTdNSi9yb2ozSHJZVVJqUzJn?=
 =?utf-8?B?UnJiRlRSbWhzMU1ZekU3RElzeStocStMRitDTm5sMWhJNVJ5N3pzSTZrNjUx?=
 =?utf-8?B?RjhHRUxvNmZ0cGx5YS9SNWZHN0xUcE5TY3FVNGZRQ1BpZzRDdlZnYjA1VmUv?=
 =?utf-8?B?c2pxV092d0c3Q0pGSTBOVkF6aW1RbnRmSTF0MFBkM2tIYnVkYXU5REZVYnQ1?=
 =?utf-8?B?MjBVNE5ab293MjRJOXVXR1RRQ3psV3VmNEV4Tit6bElvTXdYbDd3UmQyRmFx?=
 =?utf-8?B?UkR3OE1MUGlueUl4MHFQcElEaHZOSUJ4dDRSNDY0VGdXVEoyQjhwLzFsTk1a?=
 =?utf-8?B?NEttODRESlBFZ1RTYk0yYWZDUEdRMWVVcDVOcW5HYzRCZ1Evcm1xcm1DdXR0?=
 =?utf-8?B?TkpLOGd4MFhPUW5qVVBVajA2ekk3Rkc2cFR0R1pVbUp2QVhzWXJFdlJFblJJ?=
 =?utf-8?B?RVJaaGViWmhkQWgwVkxmTnR0UC9kT1k0aDJjL21XY2RXZVRUOTNiN3pkQk1R?=
 =?utf-8?B?MnBqcy9XR1pMS3NzQ0tvMnVPTWRqK3ovZHlQWFBFQzJkR05YSFFBWU03RWE2?=
 =?utf-8?B?eHlFSlIxRk5EK2l4Vk16a1FZMXNBQXRBRWIva2syQUxEVGFmbzBscHFCZzR0?=
 =?utf-8?B?Rm1EOXRXMTNnRkhKQXNJeHdrR3Nkczh0VTFyNzRNSGdvSm15OXlPc25lL2JE?=
 =?utf-8?B?L1RpSnBVWFE4ajRlOG1EbDFSSWg4VzgxdnNjQkJocysrWEU5WFB3MzNMVFlh?=
 =?utf-8?B?UUNVSy9mbHluQy9Ya0dMMUMwRXh4aEZoWDE0ak9PcTBCc3N2L01WZGRyeDdu?=
 =?utf-8?B?UWl1My9mQ2E4UlVmQi9xQXpkTmtJc092QzRsKzlFNi9YT1laT1J0Ujl6cG1B?=
 =?utf-8?B?ZDJKSXJIRytuVm1WTExtZHpFdUVRNzV3dTlRcGZTVGFzblFnOHpRQkVGYjRT?=
 =?utf-8?B?T1g2V2Q2a09vaXVQb0EydlRzY1hTWFoyTlZOMWxKUmpUbFlKVG53Z1V6Tjg3?=
 =?utf-8?B?elR1RmsyWkdrcVNsUGtSN3lRYnRBenlLMDdySDNVNGIrZDdpRVluQisrUG8y?=
 =?utf-8?B?UEtaenpISlBiRm0wTVpyY1NjY01mZGpibW5FQXlsZFVGQ3M2ZjhidkVGS0Vh?=
 =?utf-8?B?aXFKb2ZSMnh5dWRGRTFiTWF3WlBnYkJHL1pIOEFFRmtzaWw0YmcxZTVaWE5O?=
 =?utf-8?B?VEE4cEpBRUltVi9idjJYQXJGTUpsa3p6czBsQVBEOGlndk8yM25VNG4zTEtW?=
 =?utf-8?B?dG9zUFBSYkM2d1JDQWRJZURRbG5iclFoaVJPOFNXM2s3QkVucUxBcEJaRFAr?=
 =?utf-8?B?dFo1SXhxUFF0YzY2RVNGeFRPU0J4cEVyMUU5Mi93Z0dLVTdHblFkT24rcGF5?=
 =?utf-8?B?bmppeTJYSW1wOFJsMHRMNkhBSXhZN2pMM0pWMlE5WVplbjVTZU16VzJ0RVVu?=
 =?utf-8?B?VGJZRXYyM0NHQlYwaldXcVhSZWFKV3VGazM5bXp5OUh4ckphWnk4RmIzQWl0?=
 =?utf-8?B?ek1XRjhTOUEwTVRzV3JCZ3FDMUxRSzRHNmc0b01JTDE0b1E5RzZ5dHpucE1L?=
 =?utf-8?B?Yzc5RFRZRXQyWmI4R3lSTzFhUEZjbVNYVTN4eWRVdmllQ0lIMUFNTzIwbXNU?=
 =?utf-8?B?Um9iTVhKWDZzMkdLOUtIQlYybHhVd2cxaEZuR2F0S09jY3VWdFNOQitGQjFY?=
 =?utf-8?B?QzRJRlo1RWpIN25PeE1RNWlyLytMUWxzczBkc25mcjQ0aEwxajNCdXJDVEE3?=
 =?utf-8?B?RzdqZXBMKzF1d1JuV0dLRjBmTTN3Q0J5alprdHVCRUZLSE1uRi9NWVdzUGls?=
 =?utf-8?B?OVZGL1FBTGhONnFoZDRGanhib3czci9wQkx5RXZudWUvWnFxdmxGYmFmUTY0?=
 =?utf-8?B?OHZqNUZpUmZ5bloxUDE5a1c4RmVKeHpVck1hVXp4SVkyaGhwd1dhMm03eHcv?=
 =?utf-8?B?bHBBYXRXTDh4N2hpRmF1Znk0TmQzT1RLVnJaK0VITk1aQzVQOUxLMCtwdkNO?=
 =?utf-8?B?ZGV4b0c5MWd3dlNoeHpvQXdqMktQUk9FUERRSjlLNkVTWlFPZHBFNU1JNHkx?=
 =?utf-8?B?N1E9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8da58b56-3965-4c49-8187-08dabdb7bdf8
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 16:23:29.2066
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2ETAtbM6BewTL4/jlkdcqVspqow7jHLrvaVlldmawlAPyxnLCraYWLxtoqVwEtx96zB9Bw1rP6oCRezttRamJtq2tWF/hEcqaBKovc2IGek=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5356
X-Proofpoint-ORIG-GUID: VEGvcaHW30jtVJOSKm_oEKEyNAmA2LHd
X-Proofpoint-GUID: VEGvcaHW30jtVJOSKm_oEKEyNAmA2LHd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.545,FMLib:17.11.122.1
 definitions=2022-11-03_04,2022-11-03_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 phishscore=0
 priorityscore=1501 spamscore=0 bulkscore=0 mlxlogscore=890 suspectscore=0
 adultscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2210170000 definitions=main-2211030109
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Nov 2022 16:23:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58475

--------------n0buBLiRmfuMKKuhU0k5l9OD
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Randy 
Macleod, Joshua Watt, Ross Burton, Alexandre Belloni, Jon Mason, Tim 
Orling, Saul Wold, Zheng

*ARs:
*

*Notes:
*
*
*

*Medium+ 4.2 Unassigned Enhancements/Bugs: *69 (Last week 70)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *44**(Last week 44)

*AB Bugs: *61 (Last week 58)
--------------n0buBLiRmfuMKKuhU0k5l9OD
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Richard Purdie, Steve Sakoman, Stephen
        Jolley, Randy Macleod, Joshua Watt, Ross Burton, Alexandre
        Belloni, Jon Mason, Tim Orling, Saul Wold, Zheng<br>
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
        70) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>44<b> </b>(Last
      week 44)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>61
      (Last week 58)<br>
    </div>
  </body>
</html>

--------------n0buBLiRmfuMKKuhU0k5l9OD--

