Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32811C0015E
	for <webhook@archiver.kernel.org>; Thu, 27 Jul 2023 16:02:21 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.11374.1690473732768080257
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jul 2023 09:02:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=I6qS8cVJ;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=657239e943=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 36RApx4f016358;
	Thu, 27 Jul 2023 16:02:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:message-id:date:from:subject:to:cc:mime-version;
	 s=PPS06212021; bh=gtOgbLm3QrP5z3keJyfubs2Y/9XnGwDfEUQp300JRTQ=; b=
	I6qS8cVJiK2V78b44GBivRhyuCerYE9TFEUSHsL/ouQ4ItGr5eWynkOU5exBuItX
	m3fVKIRdRg5QXnhUgkFr3JsM3ON+1sn0IukIN20hX+hTdO2ndXQ20OB9NKcVc0jM
	nctAYZPf826enXhXnt6lkXO3Ap3UFvViUdS4WQt/HRr5atyIMvagNFm0VwJPnZrI
	utnt6f+QIs5z5OKOkVym/Ga+RsSmXeTqan2SMSQZP6lueaK1zVNWQcYOryKKRPHz
	0RNIA04XLNI7eBVwYOKvDMQAsdw3vbrIEdUQYNQbxiDQmZiZzCYteOAnEGwjmaCN
	mm+oZ1pQkwmA7gvMhwAw6g==
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2175.outbound.protection.outlook.com [104.47.57.175])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3s0636cq0m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 27 Jul 2023 16:02:02 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J7pe8ylQsvx6LKsBa/WkL2i7Fr1avZ6ilyInI3M2ZLVhHG7t90uaTkoOc+UpG9wjoUTcG7YYOkaHyADQLhfldpVbrAPYCRgSteaVZcSJXyt1v6xlkx0a/Xh/nwgEl1KXFATuiz7j/f+XTMAtY/8nm4W+FviYwHJdXPMjxUD9ddOalEpy/vRswx3wubnhonmIe875SiRsmWHSJYA/p3yktsV21NYJI7nrRdFjumG8ovJh2YLHaU3w9lNL3yZW8b7YnxwWzrbnAt65Ar/Ix76eTn50Meed2fzny/HE0aJbGxe8G55xGbwVa++C65WWSCVwewnxV/znSFLRlb5OK3im6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gtOgbLm3QrP5z3keJyfubs2Y/9XnGwDfEUQp300JRTQ=;
 b=h+MX110z68zesGaTjEv+5Znch5GFPAbSXJgc7k8LcdpkyB/JGBX7qk/8SnB5EQiapGIlLPs52EUNvpCtPScMKHF+GgZP80yDcdunAQu7EyREouIQEVv6h5RKlMebCKYt2rkDdzl2+PtMEGWr81EOO9GPX6HbZKMAIUnnU+v861aApbqL08y3wGaBp3rxRSbPZsVOYof6m/AS+O48QJsegrcX3VBZstYVTD2ObrYFcA2NsVIvbTeLq0eXPp0BEZi1pY4ACfvmG0PChcGHpM697pCCxWmhCSbTE+uotGwIHAKOvb5d70R/BoVfwxbp+MW0hA2yzmNb8HRV6+4HjtyS9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 MN2PR11MB4533.namprd11.prod.outlook.com (2603:10b6:208:264::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Thu, 27 Jul
 2023 16:01:56 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::e7fd:1ead:3f8d:580f]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::e7fd:1ead:3f8d:580f%7]) with mapi id 15.20.6631.026; Thu, 27 Jul 2023
 16:01:55 +0000
Content-Type: multipart/alternative;
 boundary="------------7kQET9J8D0nYicrNUoxwVu30"
Message-ID: <e1c68287-beec-4764-6539-be7fb22ac627@windriver.com>
Date: Thu, 27 Jul 2023 12:01:52 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 13/07/2023
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
X-ClientProxiedBy: MN2PR15CA0052.namprd15.prod.outlook.com
 (2603:10b6:208:237::21) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|MN2PR11MB4533:EE_
X-MS-Office365-Filtering-Correlation-Id: 27c94062-2a7a-4f1f-0116-08db8ebaccc0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	n4CSSVt8DwBEilhAk6/UqGcrCJgSi3c2ojzv3GvTAo4VwIMKmR0T4WbU3nDibtAfg2g5DNKUydu7Bu20QbKcxStv0JSG+nfKGdfZ5VYctnDOPksYlVFcNpCNxzLjDzyeLFpUxs/deOvodcBNnsuFdBZsZLG9T9Z5ZZwVQ1RwsYth0hNIOYjCCtgKN86g2ULydE+xtk+uZ4n2iGA6yNmz3mzzDZxxssJhxACEv8ZtyXg5Q8UKQsnTqaoYYzpNoDHgoUxdL14rRnJlden+ksQJ7O7Rpl1VJDmmypzuWJ4LmY1v4MQ+uaudwvN2gWgqj/Yq9TCmsG72h8BgBcqpcHnOXh5pRRmaQAk79EeaIQ7xQrwkKCGmY02WKDwCb3ebdwhw1QJr5oTZA/Yt8fgQRm6sUGRJ+HD8y6KwsXgc5kP6K3lb/AozjGmQMz17EjPL4HuCu+QKevn+Wz8LKgO/o/ni6M1aLio/XPx0og8giG5KbsARXkrK8WvQq/PpQ5u5NPwCAJP/BK83k6mkxikLK7DwnAe2f3vdoeXZdX4WQ3ACEsBM/w0U7BeVGAsavcb439LvqDKdcS4uCirgtc+7ONOf4wPGhLqzrrEclPWIho+Vfo7/qYwVkUZhn9xwXH55ilBmHyXO+edPz5sbv9HQrOaLzQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(366004)(39850400004)(136003)(376002)(346002)(451199021)(31686004)(6512007)(54906003)(6666004)(6486002)(966005)(33964004)(478600001)(36756003)(166002)(86362001)(31696002)(2906002)(66556008)(2616005)(66476007)(6506007)(186003)(26005)(66946007)(38100700002)(4326008)(6916009)(316002)(41300700001)(44832011)(5660300002)(8936002)(7416002)(8676002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MGIrdmRFMnd2bHlSZHBiMUU1KzJvekMza0t3ZEczcE5xZUFxaU4yTWtQOWdi?=
 =?utf-8?B?ekdHTE9kOGY2SGlsekVPUkZnU1JuOXNBYlh0VGdPeTdwbE1ZM3MyMGh1ZjRV?=
 =?utf-8?B?TjRDU2J2aUptNzJMZWdRbWU3c3Z3MFd2L0daOTYwNVNUTmxKYVNWOEdyMGRq?=
 =?utf-8?B?OGg3OUFwZmQ3c2d2RUVndGh0NjRzRi92OWEySFdGN2g3UzlUY0ZDSnR4MWdM?=
 =?utf-8?B?L3FXSUxPZW4rNTlTaUNoT015MlRPVWptd2t6K3ZjZGZzSEZic0FyeWRVUm05?=
 =?utf-8?B?UHJyVnRUM2JuSVZhMW96UUNZTVVIdDJSM3o3N0ttQ2Q4clFLSzdwMStSZklh?=
 =?utf-8?B?WmNIRXdpMnJyZWg0MlBoelZpYlREVUorVE9tblYxejlNTUYxYWpwMHFtUElh?=
 =?utf-8?B?NDlKYVB6cWo2QkFjVXBLbU9NcGsyY3FIL01sZUNVeVdWNE8yeDkzUzhXTldx?=
 =?utf-8?B?UnlnQzgrRFA2WW8yS1FRcUNSaHBtc3kxNDJwcUwyL1JDYkJ6aU9KaEoxQTlj?=
 =?utf-8?B?TENtcUlyWlBCVWZDSG53WUtYVVg3dmNZSW82aHJ2R2xYbC9RbmRPQ2VoTlky?=
 =?utf-8?B?cXc4RG1INzBIUitnQzBYZnJMbHZhNTJhTjNXODRxMXZ6bDh0YmxvaGgxaWJU?=
 =?utf-8?B?T3Z6NDdhTWhiMU9DanExa2hHT0MzWmwzNjhRMEJkR3puZzFsUldFOFY5YkdP?=
 =?utf-8?B?ZmdWSU1VdzA1b3ZGZTF2VHhBT0NlOGVpWG1YdEovTit4aGs0aHNIblFXVUJL?=
 =?utf-8?B?cmp3UFVKWjJYbHpCdW5RYzBkeVdxN2V0N3hVMXJWZSttNmZDaythdERvR1dx?=
 =?utf-8?B?Nm40Ym95blFzZ1VXMWJiNXVlNm9BbFN2Vmp1aGVkb1JvUU1ROWpIdGVxTVNa?=
 =?utf-8?B?VllJVldLTTgwdS9vdVVXM0dTbmFMRjEwU1dKWUN5MHBjMjVlelI4RmVIOWc1?=
 =?utf-8?B?VmJKN3A2TlY0VC8xYm1nbm5rTjUwMFdVMlJ4cGNPQ2s2R0xlQWlBUzJhWWpM?=
 =?utf-8?B?VC82RXpZUC9vV0pOc3RwZ00zZlpqODJLM3o1UjB1TmFjakU5ZWVPRzg2dndx?=
 =?utf-8?B?OUFPY2dnalM1QWRhOGFGOGZESC9ESVBVMWxpaVpuc0pEbHBSQXRaWktLZUty?=
 =?utf-8?B?Y0Z6K3JtZnRCS1hQNDl5cFdjazBIa2dWSG92VmlVa2kxbEpMa0diUEpFOFhQ?=
 =?utf-8?B?UDV0SDB2N091YlVLS2VQRjBMUUNQVGVpTHc1MUtyNmN1M05mTjJZUmNtVGZt?=
 =?utf-8?B?QmlVSmVwbXZxYnRtSStYVng1ZmJPZ3haTWJaaUdBM0sxZFhjVWpQNXBSenBx?=
 =?utf-8?B?ZXljMEgycXRIb0JRRGRtZVQzTlh5MFU1Q2hrQTlqL0x6QW9Zc2F0Y1ZUSEJi?=
 =?utf-8?B?K2R0MWFRUExuaVZDOWRVOWlRWWhOK3FENWRFNlAvbW1WZEpWREtxSGJldDN6?=
 =?utf-8?B?MGI1dEswUDB4UEdML29qWXhSTXhzTDRjQk4rNDN6amFpWFUyQ3BHWWkvc2FK?=
 =?utf-8?B?ZExHZlhpOExySEh4ZUJiUTI0cFNFSnA0ejlTSE5TWDFJaG1md000ME1laWRU?=
 =?utf-8?B?L1hqT3AzSjZYeWRmOXhVS3ZDazc0WFJzeUtnZitEa1dPdlVhdWhicHpROUJN?=
 =?utf-8?B?THdlMy9UMTdZOGlLQy9BaTI3RnJDM2lVTEthdnd5U2RBL00rTkhBUTVNd2Jk?=
 =?utf-8?B?cnRMY1dTNU1rSDJrdDlKc2xiWnl5aHpTeWVCeVZ0NXV3cVI3cEx2dEEwQUlx?=
 =?utf-8?B?Mjk2OCtna1U5VGlzK3B2b2tZTk50SjcvMTc4aUZnaEZpUWI3ajdDMUtoblpE?=
 =?utf-8?B?V2tndmJNUjFoZEo0NWdwdDBkdHhZVnVmZzJEWkkrZENOaXdaTnBQLzRMZ2dS?=
 =?utf-8?B?MUxCNnBRSkFieCtRaWVmTWxBeFNvM2lsSktTRVduV1VzaUg2OGxVaTFOU1FJ?=
 =?utf-8?B?RXNFLzZXdHJZWFRadE5yYUNhT242YlRGSUFuUHdiUTlBcVNMbS9DYndyOVcw?=
 =?utf-8?B?U29LbEdVaGVIRS9KaldZL1Z1ZmcySWpXaG5zOGRBT0pNNm8yd2xYS2dFYnBv?=
 =?utf-8?B?ZmNST3g1aS9FNUc0cGpobTlmUWZmRG5PcDJuT1ptazNaeS9WU2FtZHlMWXla?=
 =?utf-8?B?a04yVld4c3dKNW5EMkt0SXRuRkJpRkhqZXRaMVRNWGVKWWoydEdQT0F3TTUx?=
 =?utf-8?B?NGc9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27c94062-2a7a-4f1f-0116-08db8ebaccc0
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2023 16:01:55.5056
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4RAFioYKa3Xw22b9pdNt39kx+nn03uF1MKJXVoV5PCgk4tcXbGiL+4VFQA3xWJARzCUsW5QBUUzG7XURFWbXte62AWMolO+650d9IOnzP7M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4533
X-Proofpoint-GUID: MYt9i7Bzwnn0ia9ROVRjZ6zK2o_fXkmI
X-Proofpoint-ORIG-GUID: MYt9i7Bzwnn0ia9ROVRjZ6zK2o_fXkmI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-27_07,2023-07-26_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 suspectscore=0 mlxlogscore=832 clxscore=1015 mlxscore=0 bulkscore=0
 impostorscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2306200000 definitions=main-2307270145
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jul 2023 16:02:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60663

--------------7kQET9J8D0nYicrNUoxwVu30
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Bruce 
Ashfield, Joshua Watt, Ross Burton, Randy Macleod, Trevor Gamblin, 
Alexandre Belloni, Michael Opdenacker, Antonio, Yoann Congal, Edi Feschiyan

*ARs:**
*

*Notes:
*
*
*

*Medium+ 4.3 Unassigned Enhancements/Bugs: *66 (Last week 70)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *47**(Last week 47)

*AB Bugs: *64 (Last week 63)
--------------7kQET9J8D0nYicrNUoxwVu30
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Richard Purdie, Steve Sakoman, Stephen
        Jolley, Bruce Ashfield, Joshua Watt, Ross Burton, Randy Macleod,
        Trevor Gamblin, Alexandre Belloni, Michael Opdenacker, Antonio,
        Yoann Congal, Edi Feschiyan</p>
      <p><b>ARs:</b><b><br>
        </b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes: <br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.3 Unassigned Enhancements/Bugs: </b>66 (Last week
        70) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>47<b> </b>(Last
      week 47)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <b>AB Bugs: </b>64 (Last week 63)
  </body>
</html>

--------------7kQET9J8D0nYicrNUoxwVu30--

