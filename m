Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6640CC77B7A
	for <webhook@archiver.kernel.org>; Thu,  1 Jun 2023 15:18:31 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.35070.1685632702107881235
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Jun 2023 08:18:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=am9Rmx9U;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=55165e1334=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 351DfvqD021403;
	Thu, 1 Jun 2023 08:18:06 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=BnfS32enChdrQ/JHTU0hFAHZ7DJQ5poeOHTsL8vUwp8=;
 b=am9Rmx9UgnYqTmFuxCNSoT92KfWjtesg58FfHLCYzRAcvNphI+YzmBWXsJbKLnooV0WT
 /+i9CKzus4gFUI0uEbLn+PzXhq9ie3ws0HkBezNqCvA/g7f2JdRf9jD87cOf2cLN1oDi
 kpfNHQWIc0nwb2j//S2yVVpmlqbd8/PzkKD7TF8fJHfXd+flUa2naxjwoms+t6N9sTWo
 niKw/51tDDeryL4opDuI9kc4mRCU0TRFg2aC9QsE7697OaK3ynOrt9s5xuMyab7cx+rV
 /qrM+GSVIgiVvJNI/R8u+/qiBvzkfK5l/8Ve093rVZDR5T0CZKsKj38kpsy310jEfRE8 Gg== 
Received: from nam02-dm3-obe.outbound.protection.outlook.com (mail-dm3nam02lp2044.outbound.protection.outlook.com [104.47.56.44])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3qud53cs20-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 01 Jun 2023 08:18:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L3DcAJ3RTJiDyM/Ey65SjdPltKf/0PXEdEeLW5iLNO/n8MYOWggMMqMiKh2mDYyp4uIvyQM14VZMurKw3PrN66cWzqFZd5Olieh2cw06/FHg0LJTPlvmK5LHHK5c1rIvhY2Lg7K2oGd/lEs3nijwzF7cKpesAO9h2tWxcaY1bAJ2ESASMTFYiC3Ucm3V5S0J0boiTQCz604rgT/kKbpx9G/kE0TIPITHKEnVwxqOoRS7wY/2t2bvwkF8u8xkWLyLCFos3n38knsnea+wXwjZQ4Gi3JmsP1Dsn4U5Fm2CMoCELsWCHyylIUeu0BAZE1cLoGqc1XF/EZ1sePvereeLhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BnfS32enChdrQ/JHTU0hFAHZ7DJQ5poeOHTsL8vUwp8=;
 b=iI/qefcf6qeWdC7nOtKftxktsYVjWM/xR6NFSWcUFSBOmEwyxUoyoBtw4cH+DBrSUA4EqXf8+4ejcCeYIcIM0p9UCvqEUsCZO/zDFMts/IrN8KgeU+ZKsbD2tH21Gz4S0yoFpqG6CsU6hXg9reHl+91IemuPD8TNC1E/TQXE5NsoeAy5BW5SlkSjkEr1HwbKTKuGTbwt6bnNREAD9NkAdBbzC1iEYXuCT8uE27z/MUxRj/6hckwz2BHI/x8B/VciuCvdzYSZOax+MufNpyeVJWwRq72wFVC+VYSb0/7QAfi3tgB1QC0FKce2zrZBMyO/VUTB7pRaKvGZmoBAqgj6eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 CH3PR11MB8314.namprd11.prod.outlook.com (2603:10b6:610:170::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6433.24; Thu, 1 Jun 2023 15:18:00 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::61aa:b66e:fce4:b592]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::61aa:b66e:fce4:b592%5]) with mapi id 15.20.6433.022; Thu, 1 Jun 2023
 15:18:00 +0000
Content-Type: multipart/alternative;
 boundary="------------ErLxkQnria0EQOM9dE04WllM"
Message-ID: <839deb9f-1922-fe3d-64fd-51fafed87291@windriver.com>
Date: Thu, 1 Jun 2023 11:17:57 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 02/06/2023
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: alexandre.belloni@bootlin.com, Bruce Ashfield <bruce.ashfield@gmail.com>,
        daiane.angolini@foundries.io,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        luca.ceresoli@bootlin.com, Pavel Zhukov <pavel.zhukov@huawei.com>,
        Randy MacLeod <randy.macleod@windriver.com>,
        Richard Purdie <richard.purdie@linuxfoundation.org>,
        Khem Raj <raj.khem@gmail.com>, ross@burtonini.com,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>, tim.orling@konsulko.com,
        sakib.sajal@windriver.com, akuster808 <akuster808@gmail.com>,
        valery.chernous@gmail.com, Zheng Qiu <zheng.qiu@windriver.com>,
        tgamblin@baylibre.com
Content-Language: en-US
X-ClientProxiedBy: BL1PR13CA0294.namprd13.prod.outlook.com
 (2603:10b6:208:2bc::29) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|CH3PR11MB8314:EE_
X-MS-Office365-Filtering-Correlation-Id: 226bf94f-f16e-4f34-e6a6-08db62b362d9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	tJbS/Zoa/uQbj7amUmI0zv7hgKCV4Bn29kvDZYa3tDb5wCIrA9puOpyLwMbJuznQGpQETfShnkwHcjd9/pM5P5ON66+N8jCQu9RjeRcgXh+tw0VMmX1xcHozTci4rNvfC+ZekYuaCrtG7eal7nKX6sKeIZ6QBKmJxJMnqzW7ttQShT6jVj0HQmD+97hTzSRCKhskAG9k0qNpghBKU7KHLWOGRlFztmYzhyeNjbFytugM272rQv+3YrDUZmQUIX7TbVMORdYP0yZhROG39HShT1ngW5bB0SK89GCZvg9ei4Jx0XnKUPa2Fl7KmSpJ/bqYbLALECZGw/ovRO3d9EDr4ym1zdgakUZBQuVsNEOYx+oCdEAb8OWjA9YoEi2rcChL1Coym1qnLSEzZaAJWsFypZAMGOtZoj1VP2P34PwXMwhUY1CTZToOjHD/NqSEdjqs7OwQd+B+3QsNZmILudsA+G84pdwfB4Lv4MKjWdOeXL+86zIaRdFtDduQKYJ6tPzrkp67+l3bbptMMJIX5oKrbb5+ao8gD1LKKHvNAC8FUTzcMqHLdH2PiwKid6Vh6GwbIZKT9bmvbIVRObEYr6nnjCvWuag681+xR0zATcsfA7BVr58q9yn2tOrSjoK1mxmyM+RNCDuAwIJUmxyFIxoH4w==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(376002)(136003)(396003)(346002)(39850400004)(451199021)(86362001)(6486002)(6666004)(33964004)(36756003)(38100700002)(2616005)(31696002)(166002)(6512007)(26005)(966005)(6506007)(186003)(2906002)(66946007)(6916009)(66556008)(66476007)(54906003)(4326008)(8676002)(8936002)(5660300002)(41300700001)(478600001)(316002)(44832011)(7416002)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?UFZVRUVJcThMSEw1cXBpNnM2M1RpY1ljOElPNzZvNm1PQkw4S3dFa1REZ3Nn?=
 =?utf-8?B?d0JvQy81UERhTW5KS01zVjVFYWVtZy9KMW0rOTF3cVZ6NVNaUjdzZU01SXRX?=
 =?utf-8?B?R0VwSGhldzR6aSs2YW5leURDamFzZkw2VDQ0dlJyOGVaVkR1clYyTHczUUlM?=
 =?utf-8?B?aGZSeSs0c2JxK0dGb3FkejU4bGROc2VGOG9oVkQ5Z2txdTFRYmR6aFRPNXdN?=
 =?utf-8?B?THYzTnpJdzJuZVc0SnpyVWR2dXhMNEZ6RnY1ck8yQ1VrS0FpWmFObS9PWmtV?=
 =?utf-8?B?bEV3bkNScFdPdmNuV3djVk9OT2xQbmRmTkpuSU4wU2pWZlVKdlA5Ry9FVy9s?=
 =?utf-8?B?SlV2eFB0cUsyQVhCU0FGWlBkcDJKaEhKUTVjSUdQY3JLZEJyVWx6RHhBTDhz?=
 =?utf-8?B?ZjFZYXQwa3pMNXZtZ1FEcUpHYWJnRFovQTVkSFhUSUVmYVhhUzJ5QjJ3Yjhm?=
 =?utf-8?B?S0ZkOFZ3ZFpOdC9yRkFQRGhvZm1VK05YVy94Ty8zRWg3bmE2M3A4SFczc2VY?=
 =?utf-8?B?WWVJM3pEWHlMTnZCVVM4UkVhSnBwd2VFeDhPLzc5TnErajlTREcxS2lsTlZk?=
 =?utf-8?B?SWorSDIyWW41VXdHRkQxb0l2bGY1YUMyVzVSV1Z4WlNwMEJWYXNuN3g3ZHpk?=
 =?utf-8?B?WHlHNjk4WGtRMlZaTEpkUG9mOUpVNTdWQno1RjhWZ0x4TWVSeVFQQkFiR3JQ?=
 =?utf-8?B?bGJXRFF2eWNjYUdnMkhka2tnRlQzVXoxWXVIbWlyL0NBRHMwTnJOOVYvQlRI?=
 =?utf-8?B?MHVYVFA0UzRUMTZxdVQ4TURpeUhXQm5UQmQ3ZWZrSjFtZk5wR3hXaExyMGMy?=
 =?utf-8?B?bUZmdEs1MVg1cEJSLzEwWlplOGVhZlBhaTI2SHdtRFpleVQ3Tm1BYTNQTDZQ?=
 =?utf-8?B?OFVtL3BabkI1aHU3elJMUTFWNDRYZkRoeVFBblhDSDV4c1FUQ2FiakR2N3A0?=
 =?utf-8?B?TU53NFRIQlVpZTNyYVh5bzN6cS9SMEJDR0dOT1l0czRnRWxZRWxWK3hScVZa?=
 =?utf-8?B?R2s4VWhkaHhpVFhCbEdEODJmSE1HRUc2SzJ3Z2VsZG9yTkx5T1JRWjNseENj?=
 =?utf-8?B?a01aeDk2N0x4aEY5cy85M2p1ZE5PcHkzV3dCTjV0WGZjSkV2bzhvZHgraDVL?=
 =?utf-8?B?TU0rOUlQTGVJL2Q1NUtveTNRQU5pcTZtVTFEdFJnR1JRR05qNEw0UWtIc3JJ?=
 =?utf-8?B?Z2gvckZ2VGVXL2J5ZGNldVhLZnFkOEdGM1ZocDdMdllZM05HVWN5MDdITlhF?=
 =?utf-8?B?aG52VXpXcU1PTFJLLy80QXZtbHN5K0FmVkZQU2JPNFJwMGlvZTcyL3JzTmFh?=
 =?utf-8?B?NFZORGVLTzU5Y1NpS1JzNDNlV1lYVEY1TzhGam14dGhoTFBuelBPYnpoaDRK?=
 =?utf-8?B?dCt4N2V6bnlQRXBjVVdZa0YzU0pHZXBjNnJ2T3F5dGNiQjczUHI5a2JmbXkr?=
 =?utf-8?B?SldKZG4wdHVCeTMvbmZRc25CT2RiU3h3TlE4RHRGVEFheXQ0aHZlYUZsYytp?=
 =?utf-8?B?UlhBNThzTjdsWTdTNm42OUQwQllXZHd3Y2JrT3BlQXd5OVpIYnJTZDI2c2Uw?=
 =?utf-8?B?U3JwUXFZazMyMXd2ejBvYWF0UFlJcUZDdkxWditxMjZQOG9TSzZXY0NUZmtB?=
 =?utf-8?B?ZmRoenFYa1FVQXpZaXJIYjk5NHROS2FtYXJYdU53a25wR05LWEVkY3ZXWW45?=
 =?utf-8?B?d3JxbGJCNVgyY1Uza0hxRzdCRTJGMGVUeWlSb1psMDB1UTMvblFxS0lIREFG?=
 =?utf-8?B?Q2ZSVFlURjE1ZWFhUkVVVUdCRTlEeFB1L2MrbkxScW9LUUg5Z0NmT1lLRnp1?=
 =?utf-8?B?SE1MODZic1hINEpCcnFsWTFzeGRuenBla2tYMlJoU3luNmcxOGdlMUFCdVdu?=
 =?utf-8?B?MmNYZ0Jmb2VMQWdCT0pNSDVUd0syT1VuZ2hXQUhhbnNvVWJKYjB4Z0YxbHpN?=
 =?utf-8?B?UDNOV3V1eGY1N0dwMXp6T3JWaG1aamtTVmlscEJuYnNNV3oybXRQQktaZEZE?=
 =?utf-8?B?SkZUYTFoUzYvclhqUkozRXd4OU95cURDRGJMYmJmWnc3YWhkZVJjZ0RIeVph?=
 =?utf-8?B?aWltZmxPbHlaSHVxVndxVmZtUzBvbGNudnMzQWJhbFdseUYzZjVpVzNwZUl6?=
 =?utf-8?B?ZWE5SmpiMjZaRHJCRm5MN0ZTTmdEUWV5dTBqaWRoN2svSGNCbEZLenBoNU4v?=
 =?utf-8?B?NUE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 226bf94f-f16e-4f34-e6a6-08db62b362d9
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2023 15:18:00.2682
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RCPcE7HyXkfwLOToduK88pigxPtSaJJzg819NUkWKbbKurb3Asf8XsHAn5LoFxMOcipAo196kcMOv44hEN0pyPg2yOWAVTcAHeK1bUE2Igg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8314
X-Proofpoint-GUID: FALiPJogJD_k_1LZLqJLEosCKeFyIQyC
X-Proofpoint-ORIG-GUID: FALiPJogJD_k_1LZLqJLEosCKeFyIQyC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.573,FMLib:17.11.176.26
 definitions=2023-06-01_08,2023-05-31_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=838 spamscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0 mlxscore=0
 malwarescore=0 lowpriorityscore=0 impostorscore=0 clxscore=1011
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2304280000 definitions=main-2306010133
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Jun 2023 15:18:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60158

--------------ErLxkQnria0EQOM9dE04WllM
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Bruce 
Ashfield, Joshua Watt, Trevor Gamblin, Randy Macleod, Alexandre Belloni, 
Tim Orling, Thomas Roos, Yoann Congal, Michael Opdenacker, Ryan Eatmon

*ARs:**
*

- Trevor to create followup bug to 15129

- Nat to look at 6986
**

*Notes:
*
*
*

*Medium+ 4.3 Unassigned Enhancements/Bugs: *72 (Last week 72)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *44**(Last week 44)

*AB Bugs: *70 (Last week 72)
--------------ErLxkQnria0EQOM9dE04WllM
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Richard Purdie, Steve Sakoman, Stephen
        Jolley, Bruce Ashfield, Joshua Watt, Trevor Gamblin, Randy
        Macleod, Alexandre Belloni, Tim Orling, Thomas Roos, Yoann
        Congal, Michael Opdenacker, Ryan Eatmon<br>
      </p>
      <p><b>ARs:</b><b><br>
        </b></p>
      <p>- Trevor to create followup bug to 15129</p>
      <p>- Nat to look at 6986<br>
        <b> </b></p>
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
    <b>AB Bugs: </b>70 (Last week 72)
  </body>
</html>

--------------ErLxkQnria0EQOM9dE04WllM--

