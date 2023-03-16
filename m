Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 096A2C6FD1F
	for <webhook@archiver.kernel.org>; Thu, 16 Mar 2023 15:32:48 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.15408.1678980764487536202
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Mar 2023 08:32:44 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriver.com header.s=pps06212021 header.b=kZxyPk+N;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=243977a5da=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32GBmX36003373;
	Thu, 16 Mar 2023 08:32:27 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=B3L2ba0H/H2KRMYC8QFNL18iukichaawGsET/9Qzrws=;
 b=kZxyPk+NogNfJK+024rQaa44pDUcaC4g+bn+qOWSWfr08zJgrI3WZCV2cqG1ONpb4gNf
 liJVQnv7+1u/8852rnpYPecicdrtZuzEJGBCra3zsk6FNebWqTGQIsgaW0ndn7BSRym5
 0XdOdGf7slgPAxN+5o32RDR5K5ZSqgyaSnAAt7XBDJCvUI5KYycVrBxwc/dJb4vTdxh+
 Q1G7AOr1eabnmq3K4FxarxTKhuDLzgPjGmeCrgX7MGuDHx25qH0Dtvzdz7e8YIpPq/dU
 5q2fkJTSez4VN1GsoH9o+6C+e6Ql/O3iNSZAyRESozEIaO2LZAoB7H9r6LAPqKMxjgpS Kg== 
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2100.outbound.protection.outlook.com [104.47.55.100])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3pbqdngpeg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 Mar 2023 08:32:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z58j0L4KP/iEXgGaiWuKd8JjIrdsQqXryXU/042WAwErusNnjn4Tc25SQ0a0EE3yimKDuxu69biBXj0lkZkZXE9t8qojpE/wd2G6PGHnXr8OMbUHhwgEvjVuKFz5/dHVwLJVC8v4SYtNIqXU2zPZODDMlvEDLFReGfmkWKGj1ZGHX1apcQOy6oic3A4y+COI633IG90FTz91zcqFdWJyVY3kuwfiWu88TZlj00WUnKWMSDkNYOT+o28V7zw7JJb5TLpLojg9fMOtRnB/mQK6L5xrQTli44naW70Vtn7sTNEBnJUhFBxshBILIuZu5Fc0c/YUTJ4lf6F/3fCTscDpkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B3L2ba0H/H2KRMYC8QFNL18iukichaawGsET/9Qzrws=;
 b=Y11c1ue4jM9ZuGVtdUw8+Rm/8JnP0aJd9pmGU+kpmCsHpjOwF2sqdTXP7DMFxCyXZ5sE6f/dv9mGEAoQMjA1wtajpU6Z8IBccPxUL5Mia1VgubEnuYH5Icn/4blBX8PaP+7j4dFxV7CyOVg/5zHYhdsoi+6bpGdNyccsnDtpe7nMXQCChFjn+g/zhithQkFORRJ60kxsxw5JsNEj1AqsL3LM7FWx/ekrwWd5aTcKb6/fBKr8sP8VGYpxeTqo+TpCdlPjy8yMPLHcX30GFdhO76HlRM9psnjcnbMReIfpnVUF75jg4E7KGjbS4NzPfi4esXJW1T/nuZ91/xYJe0X1oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 IA1PR11MB6515.namprd11.prod.outlook.com (2603:10b6:208:3a1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.33; Thu, 16 Mar
 2023 15:32:22 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4f46:b639:f638:d5f7]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::4f46:b639:f638:d5f7%5]) with mapi id 15.20.6178.024; Thu, 16 Mar 2023
 15:32:21 +0000
Content-Type: multipart/alternative;
 boundary="------------WF5aTJLOoRI8CxIGds7rE0j0"
Message-ID: <f7e60aef-f433-8a8b-977a-9f2e85561c83@windriver.com>
Date: Thu, 16 Mar 2023 11:32:18 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 16/03/2023
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
X-ClientProxiedBy: MN2PR15CA0033.namprd15.prod.outlook.com
 (2603:10b6:208:1b4::46) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|IA1PR11MB6515:EE_
X-MS-Office365-Filtering-Correlation-Id: 29b7af65-80f1-41a4-7cbb-08db2633a28f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ZH/JqqleN5hiFJWKPtdu2M9fa6NS52fbcKCRcvSZ5nwXfAYh1n18zJjTXL09jKK2ICTcBdZ5keAqKIPqoa/14JTK4cOEES0s677fQ0Sj1hECIFrAsHaxS1gfvFFE34V/p3I4tRmh2b2cRzlxmDHwiYKv1gdFhuj/L1++tgt6ssspGXTChK9ObEHZ+mMYSqJWGzbIq9RmNmeAxc8VRpFluS3PSi3+SOs7vkbEYoVCgjpv3U22MzBkCmve03fyPgJ+YqtX6peqvCR8ASYKccaRYuFElPtGoHG5LUM4zmj6v0XTFCRNYxeX4cJx6i+x/nwzSHI0Dx0T0hqLSpkOrGcKy6s/bu85nbbKEU4D7ntGnLFEWRtFgcsFnhFIBQq6lHYGSOONynReAdwtEdZdw2GnFg4YWg7ZenziUDMwjSDnTvZNywPstXnLDjZamw6NhTImR34Kl+IC9NocUr426Q7I1QSDcA/OnOs9l/P2llHl1z8rFVgo86Yx/pTzJaeg26tWmkbsADv/h1MPN21aGC+87T19bS53Q5kSoptUD2n8m6WswFwcZEp4ni16GU6vOygV9RN/bwNyiMKvbGCnYPtmr4Qiz0IEgE0iOtiRyMjAbG+O+J9OyQpRln6IJCrZvYB/YjaoOmvu9zGhIcaIIhfsTl9jn13xVV/MKNFLX/UmGfZgCy431FakVANvRCHLp32pSnIlLOoQKHKGoJrmcVNLYHhKNR8wWmQOu3V/AqMqPNY=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(396003)(346002)(136003)(376002)(39850400004)(451199018)(6512007)(6506007)(31686004)(41300700001)(6666004)(26005)(33964004)(166002)(36756003)(54906003)(8936002)(186003)(316002)(86362001)(6916009)(31696002)(66946007)(8676002)(66476007)(66556008)(44832011)(4326008)(2906002)(966005)(6486002)(38100700002)(5660300002)(478600001)(2616005)(7416002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bUtjZ1JBdno1RDgwRUR4L1plZ2xlK0lrdE9YR0lmQU15WEJ5NWcwRGFnbU5j?=
 =?utf-8?B?aWJFc3p2cTd5VXhkSEJYOWNrektJK0RGWFk2OTUvWDNwUmc1L2d6TXB6M250?=
 =?utf-8?B?RmY0bGRYYXpxaytmaDJ1MENxL21zSkU3YXFRdUNhRHk0ZVAxeGFKekltNlRO?=
 =?utf-8?B?N0hPMVNTdGhsMmE1Sk9qZDlwbXhnVFBkYnE3Y1djR0txUk9jTmdYY2ZLektw?=
 =?utf-8?B?eml1MGJLdWJqK1hCQ1VocFROMGo3eEVneFVSR2dHTWJORmRCWTc0Y0FieVdt?=
 =?utf-8?B?eTBJY2JuRS9lakVCdDY3dEJ0VEZBUkpMRjQzUWZTZHhGZTdsdzBPamtncG5M?=
 =?utf-8?B?TEFETVBmL0pUS0xhTHVsMFJmanYrRnZhK0pxWmFGN1J5ZGpkY3MwUmdCcmtW?=
 =?utf-8?B?ZzJNalduL0dvREJScDVyTlpvY0ZZaElEbWkrUXNUcE9PY2VDZ0x5S3BlenJM?=
 =?utf-8?B?eDFDQTF5WGNmNlZ5eEY0MkhwRUVvSmxWTmJCSjNKU055UExEV3RIRGFlaVZk?=
 =?utf-8?B?TDFpR0U5QU5GTWpvRGJYcDVXdlplaEdORExybXBkZitSbC9wUTcxeHpmNkZv?=
 =?utf-8?B?SWtCNHFVQUhDc2xBZW83dnkxVThyUGh5a2tQY1RYdmhhNnZWYmVqSVR4UzRF?=
 =?utf-8?B?VnoxZm80YWJIM3ZTalBHdHY0QmwrMVdEN3I3bEQyVlMzZlREejQ1ZldnclZ4?=
 =?utf-8?B?c3hYS0lVNnpZVXhRMnBJRkxhcUFhcG0xdHZjS29xVTRkYUhtVjNEVzdiWjJj?=
 =?utf-8?B?Q1BEMGJ0dnlkeTB2dERTbThPOWpKSUFpVXNMbEx2UElNNHB2aEovL0ZCdXpU?=
 =?utf-8?B?L1ptYlBJUnBYNXc0dmw4bjFwaDNRVzFsSjhhVmQrWGRaaWhPcldJK1g4RVds?=
 =?utf-8?B?d2dZVzZUSUxkenVNa1BQcW0xS0l1V3AvUWQ0cFJlYTBGRkdoUTFlSDZzN2pr?=
 =?utf-8?B?MHEvY1ROS3pMVVVlbjlyMGlOWVUvcWFFTjc2Mi92amFURWE4U1hvYUdsUXVB?=
 =?utf-8?B?RjIvQ2pRUDdLUitYMWp4TC9wOTFzR2dJVjM1U0djOE1icGV0Y0F2czA4bnlL?=
 =?utf-8?B?STlxVmZaU3B0TnlubDBtYjU5N3NQK1FZUCtubHRuOXl6L25MNG4zWHRVd3E4?=
 =?utf-8?B?R2Fvc0czVmczbERZSzhEQVZQaWhvMU9STCtYM1RsQWM5VmZBb0VKdnNxV2FV?=
 =?utf-8?B?d256MS9DL1E5NG9mU2VTQW5xNDhhTHlLYTVZTlYyeFRjOFFLL0pTM3k1NFMw?=
 =?utf-8?B?VUx0clpCYjFSZkYrcUdqZm16ZUFMNHc2aHN4Mk4yOFNqam91TGVOeFE3MTNn?=
 =?utf-8?B?dlNqOHM3ZjN1cjZES29UTDg5U0RoMUUzQXA3Mjh4N1M3czlSSjI0ZzlKMlBH?=
 =?utf-8?B?eGNLNTNOUUdlbkFkV2dicGNjN3J6ZmV5YzdlZXE4blBxQUJBQU45WmFPRmlq?=
 =?utf-8?B?VVROMXBtaXJzemx2ZUFJOEZWUGhCY3hXT3VQMTlSeVcwNUJwSWYvSmNuL2xO?=
 =?utf-8?B?bzJROTlGQVdPdEo2T1dkdjZabEYzcko5NEt5OHVXc0RXTUZ5dEZGZGVTb0w3?=
 =?utf-8?B?SzY5S3Ywa0pRU1E3VXczL2VudE9zVWkzd3FhSmhCeXpKNGJGbTYzellmOWFJ?=
 =?utf-8?B?N0wrRGVSeUtvQW5iRmVCOTdwWEtLUC8vRE90WExDQmszWG1iektUWGpRdnpI?=
 =?utf-8?B?NURFamc1VEpaYi92OXRhSFNtZ1hxS3hBMXEzcFFzUlp5VHNRZ0cySnk1dHEw?=
 =?utf-8?B?L1lGOS9ycFpFbzBPaUVvS0k1ZkhRSktQL0NrcEVJSE1YOFRidkE1bTFUM0No?=
 =?utf-8?B?dHZZdUhrWjJ0YmtLckJuMjRqMjV6Y0lLT0x1NnVxaExVakQyeHpPRC90Qk5I?=
 =?utf-8?B?REtBYnZWNi9JVHcxVkd1VS90eFNYaTN2Vi95SlJmZEFLbmF0ZzkwUXFJMUEr?=
 =?utf-8?B?UUw4Z3dzcVV0L200N1ZFdUtoeXF3azM3cFhHcnlKVGFIVVYvUDQ1bUxMMjRn?=
 =?utf-8?B?elM3WEt2WU0wTkNLZks4aFlCZ2cvWmppemVqblhVQ2x5eTZjYjNZbGpDVXU0?=
 =?utf-8?B?UENKMlBvYnFGelo2RXMwbkNKTnYyVUhpNW5xcHdEbWxxM05DRnVQdk5GcW5P?=
 =?utf-8?B?aEs4eTJsamtxT0F1TlBzOC9kcldXT3I2ZDFCSnlzUG9iclZMYzNIZjlFRmxq?=
 =?utf-8?B?eVE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29b7af65-80f1-41a4-7cbb-08db2633a28f
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2023 15:32:21.7275
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3ANtwKZw80qGN5DaAR8awqTLj2N0Kq9boaQzS9811RmIHEyF+Y+paYGBaug+ddvzfYcGoe7/n4TuYBr5Z/QRj9eJAu3IN95NwpKYMqnmbKI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6515
X-Proofpoint-ORIG-GUID: -7pKFljMoIbabWgqVhnv9msao96gUUve
X-Proofpoint-GUID: -7pKFljMoIbabWgqVhnv9msao96gUUve
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-16_10,2023-03-16_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 phishscore=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 spamscore=0
 mlxlogscore=831 mlxscore=0 adultscore=0 malwarescore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303150002 definitions=main-2303160124
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 Mar 2023 15:32:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59442

--------------WF5aTJLOoRI8CxIGds7rE0j0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 32GBmX36003373

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Richard Purdie, Steve Sakoman, Stephen Jolley, Randy=20
Macleod, Joshua Watt, Ross Burton, Alexandre Belloni,=C2=A0 Tim Orling, B=
ruce=20
Ashfield, Pavel Zhukov, Yoann Congal

*ARs:**
*

*Notes:
*
*
*

*Medium+ 4.2 Unassigned Enhancements/Bugs: *60 (Last week 48)

*Medium+ 4.3 Unassigned Enhancements/Bugs: *11 (Last week 8)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *44**(Last week 44)

*AB Bugs: *66 (Last week 66)
--------------WF5aTJLOoRI8CxIGds7rE0j0
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
        Belloni,&nbsp; Tim Orling, Bruce Ashfield, Pavel Zhukov, Yoann Congal<br>
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
      <p><b>Medium+ 4.2 Unassigned Enhancements/Bugs: </b>60 (Last week
        48) <br>
      </p>
      <p><b>Medium+ 4.3 Unassigned Enhancements/Bugs: </b>11 (Last week
        8) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>44<b> </b>(Last
      week 44)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <b>AB Bugs: </b>66 (Last week 66)
  </body>
</html>

--------------WF5aTJLOoRI8CxIGds7rE0j0--

