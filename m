Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4159EEB64D9
	for <webhook@archiver.kernel.org>; Thu, 29 Jun 2023 15:15:06 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.10888.1688051697879192361
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Jun 2023 08:14:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=LkWjIftV;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=6544c1153d=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 35TBvL17009848;
	Thu, 29 Jun 2023 08:14:44 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:message-id:date:from:subject:to:cc:mime-version;
	 s=PPS06212021; bh=rOfstHl0sl3IhGLJZRj034e6NVYwVErGZADbRg9e5+c=; b=
	LkWjIftV5ELTnAfEaDxetMT2+jUbTuyh3yJEHW+R2KlWjCiLEtbHn1MbKTR5ZAlA
	dYNAcSD7D4qiqIbx1N2vU/FhXTF30lvBfeaYOKNMgWPnFxL4qn9Hl9emfNlyjq9e
	8rFPEvs8tFDwFIcdOJwZeUsVTNr0V+uGXUeFvdjVH/rBNiqeoAjcpZyYaMTFQ8kk
	ssLHNIRgEvNFSSxj8mW8HE3J8oBCoq2SIPiARfn/P2hogZpiiKOluZZgfff9Vt5a
	XQWtIPLMvoMYMHGgTir9vQxK128BlNRJTf0z899+/RFUQdT4IDDr2Px5PpGzyx1u
	aCBf14y7fnGtJtFW7ME2ig==
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2040.outbound.protection.outlook.com [104.47.66.40])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3regfb4652-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 29 Jun 2023 08:14:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZXDub4JD1DrYfRctsuC1NCflQ18gbmmvAbUUhFjGM4ul9eGReCbyxhrUIkiVsaKIErROb7AoK74cJq1rCjkZOtOumRxPavF5YFyNp5XzfVNK5E97CpTpnpwo3QWuBfHjSBBREwE3duP3lhGzbN089IFelIraYlRQmZ5id6D2Ogp1sRiT12540BUETsia7nJnzSE7YMyTpuPg9c4j9OOpzMR8sYmdr3zboj62byiAGio7KIFkjT5ZYWMAAk/Xcvdko4XTCdPwV7ofqo8Zh0PQvF2VBOLu/2GJO8oNkvcyDlsgfDf2VKIQC4b0/OJenYsccGC3xKJqJTPNt+djmWWIxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rOfstHl0sl3IhGLJZRj034e6NVYwVErGZADbRg9e5+c=;
 b=K/6m7iMQNAQKoQyIJJ9qqs6Fjl6lQI6o2FvQ71rz6QqSU4sSX8VyvOdfrVxgYgrOa2cKTkvueftwxAt9Nt9u5hA95myknU9yIhrDzOzu4ftE/WFpwMPlWq0zQp1t3LnMldIaLshn+07UpI9KxL8hR0JuIN+tVZJqS3r8IYwVKwRivcHcEIH94vFgfShZ34fBCWRqLdP7NyJIiFbwxmWwgpeqr+NYP3F/JBL1YQj8C6lo15CnMekYrwmevFp0HVQcHNPaSUDN3ChpRbrak5tUl73rcYM+4pROHrneoy9vMId4elGmXva2hUihPaoNePXB0zrmofJ+rtw3eVqBZEIrfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 BN9PR11MB5260.namprd11.prod.outlook.com (2603:10b6:408:135::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6521.26; Thu, 29 Jun 2023 15:14:42 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::8dd:d4cb:2602:c41]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::8dd:d4cb:2602:c41%4]) with mapi id 15.20.6521.026; Thu, 29 Jun 2023
 15:14:42 +0000
Content-Type: multipart/alternative;
 boundary="------------Hfp3xwehsNoyJ8IG4G30d5q4"
Message-ID: <704e9bdc-ac2a-6bd3-8483-34df5d007d2e@windriver.com>
Date: Thu, 29 Jun 2023 11:14:39 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 29/06/2023
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
        valery.chernous@gmail.com, tgamblin@baylibre.com, pavel@zhukoff.net
Content-Language: en-US
X-ClientProxiedBy: BL1P223CA0029.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:208:2c4::34) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|BN9PR11MB5260:EE_
X-MS-Office365-Filtering-Correlation-Id: 24ab974b-dd85-4d58-4189-08db78b3904c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	hSh/t6sry5U8ufByV66H9/phA6yKHHws/cMJMdszGbsGUU503D9VYcPa3YUKfpgwHjXyfYmNB9OYwQRAxESgswS41g1zWq/YdvpSr8Evgr8PtyufancMwQOkKWDsw3Qqm5yT9LTmqx2P4imX6ii5teRGpWre+mfsY5uZiVXumAm+6j4nKqQOALO6OpqkmI/yVzTthIfycUk/cez8HAls9n8fHvBShhH51V8vlht3V9Q+7g7OzRmQ76C7whsVeyiSCMC2tF3iZLsPuNKYTZZ+Ng2O+eWuNmObUBArrlB3/+eEql0yHv7MPa9//beIroyJ4vdQ4t5sX1vpdBMGqdwigQX/1mvOvl09SKk1tv5nnZ2++HL2WVC80KweDBBH5RbgdZijblSTU+4dQGf3AXnjuOWT4EWWn7UF/TQ7mtXNkqUHI3YCmzo+lL6+0/dybYj3FaIHQIiXDDZbktc1tT+kiuC/lHNYDHu7TbGj/OOJ2aYKqeVY18MiQc3QJLXRZbHjOvwCUpxeBdbFOs8MB9Z8vCwA8Zhskz+qnAibbCUv34MqSw/GyGEp4cgfR0nzdhirkN5g5HAU9xBltBsTy4M4+qBvXwv0s9YNZvvxBv9XRoc9aEiT+hDKASAxOeBFU+H0QS02O9MsHFtlu0hbGnv9aQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(346002)(39850400004)(366004)(396003)(136003)(451199021)(966005)(6666004)(54906003)(6486002)(33964004)(2906002)(2616005)(6512007)(186003)(478600001)(6506007)(5660300002)(44832011)(36756003)(4326008)(31696002)(316002)(166002)(66946007)(38100700002)(8936002)(8676002)(66556008)(66476007)(86362001)(7416002)(41300700001)(6916009)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZGNlN28rWUlqL2N4cVc3bVNvQzhtblZrWjRnSGZvZVBSNUViMWxlenVIcVQz?=
 =?utf-8?B?V0I0R0xLVlJ1c05BWitGRmNvOFJvQTMwd0lXa3dtQmYrRklQS21wZ2s4SjZQ?=
 =?utf-8?B?RE5GV0xJaWxOb1Y0OVhyUnUxMlFUM3RrOU9jRWxvN2JmaW9tZlZmMXhXNWZS?=
 =?utf-8?B?bnptL2UrVXgrcnlGVEtuOGUwV25vMVRwRnh0Qk9mam9PbytZc2RmbGdSM0lZ?=
 =?utf-8?B?UVhGd254T05hdTRMSWRZMEwrWlhnT3BJZVRMdUZBb0NCclN6d0YwckRaUGVz?=
 =?utf-8?B?c3dYMEd1Q0MvZDVPSUF3b3FlL2UvL2dUZjZ4ZGQvOVRadlhxdGtTYWhmTllh?=
 =?utf-8?B?WTVSL2JEcUxnVHh6NnVMTVl3VkVLNzdqeDRobU13b1BNVkJVbEJGa3JvTE5S?=
 =?utf-8?B?YzFjbkIyMElwYkhkbWpVRkk5UTZWeTBIVFlJWkpuQ0hOS20zYjdManJPcHEr?=
 =?utf-8?B?b2c0Wi9EVVBaZ29FOW1HU1c3YmpWNWZucWtwRThrdUs1cFpTdmdWakRXditx?=
 =?utf-8?B?SHF1U0JGVjJ1T0JCMHozM1hzQklIZ1MzRXRjbDhMQjVkd1p1SnlYSWVaeE41?=
 =?utf-8?B?cEE4VnI0WUdnYUlzYy9XRHBTSUxyeS9CSjZWWEhFQVVJeEN0QVZKSWcyMlJM?=
 =?utf-8?B?TTJBdlE3TGVhZUlLSVk1TURPK3FNRHpXelBYZGRaa2pZQzZwSEF2TzhtbCsy?=
 =?utf-8?B?cGpJUnVuOXJ1bTZPa0o0UnIzbWR6TW14L2dHWjQ3ZDVGaXArRUFTSmtPckZ5?=
 =?utf-8?B?VzUyWlNwb05NamlUdmxaWWF6NzY1b2V4WGx5MjY0RXJJM3JEWVFKWjVLbkZr?=
 =?utf-8?B?MUVBaWxIMzJ2SGpEbE54QmhqWDcwK0pSWVd3aHJNSXlZbkNNZ2FPU3QzSnUx?=
 =?utf-8?B?a0RkMVN3MXhFSEYwS3lDRlh4VkJyakZQQU1VdGVzMVVFQkpJQWhGVm44WXZ5?=
 =?utf-8?B?U3NodFZRelhHN29HZmwrU1IyajRiclpkUTZyNWZWUHA5RnNOcXd1S2hrSGpL?=
 =?utf-8?B?aWJ1aWx6K3ZNbEdtQXRSbnhkNjVDMVp4VE80bE5VNXZ3L3d3cmRpSkxTM21h?=
 =?utf-8?B?NEhmTlBPalU4cjFFVTRVd0VkN2ZmNzNtSFFHTXo4Nk9GdXBtNWpFU3hEczg0?=
 =?utf-8?B?L2NtSXF6ZFU3VmV5NDhDc3BwRjRaNW5UUHZhelZvM1lMT1AweE12WVNWdmNs?=
 =?utf-8?B?TVhXLzk3RXF6YTVzTTdCbzRpYmorbmVvM2lWTFo4bDRrWkt2ajBncWJOaDBM?=
 =?utf-8?B?RjZaY0VuOUpoeXZEdzF6aUFna3BkZGdmY0QyWUp6Wkk2bHRjK0tUMEJMd3ZF?=
 =?utf-8?B?TEphTHBhZnh2eHRnYVRqR04rVDRKRy9CSlRTNStZTUUzTGtRanllc0NMQUFV?=
 =?utf-8?B?NDN1R1orUlovNXBSN04xSDg1aVRER0lCc1A5UFZvS3ViNHRuRFdrUnZCMTFr?=
 =?utf-8?B?RHJpOGlNRG0reW10OEFmN043anQrSXB6aTVSblZTWllKVkFqcXppZVpoK1ls?=
 =?utf-8?B?SUtKR24yWUh6U1FENGMyUVdpb0xOak8yamViZWZ5Y2oyY1pLemR4UDIreGN2?=
 =?utf-8?B?dVIxejFEL0o0UklxNEppK1VBNmYxbUtuTTFJeXNYVVZEN2cxbEpkLzQrN2lE?=
 =?utf-8?B?enV3RkthbnF3ZHRITUJIN3QxTW4vcEJ3d0crUmhYcndpcm1DMGl4ajRWc0sz?=
 =?utf-8?B?N1NwTmVKZnNuWG1tdjAvb1FwTis4cWU5dzdYc0ZUMmhGU2NSWVkveDkrdlpF?=
 =?utf-8?B?ZE91RWhMTlVaRVprcGNSRkdra0NSbzM2aXR6Rml0SllsMGpPMGZUUXBRc3Jy?=
 =?utf-8?B?eEJUUjZzSXJWRWY5Yk53M2lkcEgvVTR0anQ2TEdKaXFPRnNUdzZsK2RlSWUy?=
 =?utf-8?B?a2pTb2hBTnNRRTR5SUtCQ2ZBNCt4ejl4WVhGa085b2hzV0JiODRmTXVLbVJy?=
 =?utf-8?B?ZWZPd2djV1JoeEE5ZlBMZVFYSXFFbHU4NWgvQ01WVWJrMmlOK2I5WTNYWXhU?=
 =?utf-8?B?Z3ZJeERZWFBqaGtzcmRCSEp5ZzlhVWQwZWRPWlpPbHFHaFFzTTUwd2RhbVFM?=
 =?utf-8?B?WktCVy9FZ1dsVnZ3enFGZzdyRk1ML2lVa0wvUk5XTjNTREJFNkkrcm44b3JP?=
 =?utf-8?B?cmFXemxMNmF5c043N0pEdFltZG1teXBHRzQ0WklFNE1TSytFb0x5aSsxQzV3?=
 =?utf-8?B?QnFoZTA0M2hZeERzRTg4YzBucXJGbmh2bEdtWG1HaXhuUWpEb1YzS0piTUVh?=
 =?utf-8?B?VCtyUGYvb3FBaTVIejc5Rk4xS0dnPT0=?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24ab974b-dd85-4d58-4189-08db78b3904c
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2023 15:14:42.1138
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5Xs1mPnsXsMnC7/yRPu78JTjgkWgMO7TMzMHy2aJnXHi+O5FirMj3L+lS3jp+lP/OZcd58Avp0zpydjbzSzn8Y2bRTwg2cjuUA2Ngxdw524=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5260
X-Proofpoint-GUID: VQjV-h-DPEVFQFR_WP843UxdalPpqfM2
X-Proofpoint-ORIG-GUID: VQjV-h-DPEVFQFR_WP843UxdalPpqfM2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-06-29_03,2023-06-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=870 spamscore=0
 clxscore=1011 priorityscore=1501 lowpriorityscore=0 phishscore=0
 bulkscore=0 impostorscore=0 mlxscore=0 suspectscore=0 malwarescore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2305260000 definitions=main-2306290138
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Jun 2023 15:15:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60478

--------------Hfp3xwehsNoyJ8IG4G30d5q4
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Bruce 
Ashfield, Joshua Watt, Ross Burton, Trevor Gamblin, Randy Macleod, 
Alexandre Belloni, Tim Orling, Michael Opdenacker, Ryan Eatmon, Luca 
Ceresoli, Yoann Congal

*ARs:**
*

*Notes:
*
*
*

*Medium+ 4.3 Unassigned Enhancements/Bugs: *74 (Last week 73)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *45**(Last week 44)

*AB Bugs: *68 (Last week 66)
--------------Hfp3xwehsNoyJ8IG4G30d5q4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Richard Purdie, Steve Sakoman, Stephen
        Jolley, Bruce Ashfield, Joshua Watt, Ross Burton, Trevor
        Gamblin, Randy Macleod, Alexandre Belloni, Tim Orling, Michael
        Opdenacker, Ryan Eatmon, Luca Ceresoli, Yoann Congal<br>
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
      <p><b>Medium+ 4.3 Unassigned Enhancements/Bugs: </b>74 (Last week
        73) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>45<b> </b>(Last
      week 44)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <b>AB Bugs: </b>68 (Last week 66)
  </body>
</html>

--------------Hfp3xwehsNoyJ8IG4G30d5q4--

