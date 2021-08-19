Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.71541.1629387071244885894
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Aug 2021 08:31:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=M4zBh2GR;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=3865379517=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 17JBVn29004014;
	Thu, 19 Aug 2021 15:31:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : subject :
 to : cc : message-id : date : content-type : mime-version; s=PPS06212021;
 bh=rTgXKC9S6MSZdyydiiU3OLBp2qapzM+xajEOtjRUuZY=;
 b=M4zBh2GRotjyt8dd57qE3GTNcKbV7WzAppLPkK/jp2oeRVIpz8ynFbu0J95IGz5bmdUo
 VPMcJ/+lTWa9gzgysgU3JDcVFLPSYLBTBTdw1ZoZoiK/6/zHDeigfvnddkh+A7p84cdY
 XkVGQwoQUB+Y0241OahwEoYQkde/ttBmOKh8rS3Ft8e0RI2ADgIS2hHrsgvDFh+KyiLc
 TkMX0JmLeNn+U2NKZX8GCHdNxurhPt8+7ZHTycv14dM9t00789NFrsx9vloRg/VYyzgS
 CfgXsLXZW+Dr8FA7jZzwZjCQ/0pXRNfj0TiPxE4sKt74ZwTEDvz/3kDxTuxf+EuA+jBR RQ== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2101.outbound.protection.outlook.com [104.47.58.101])
	by mx0a-0064b401.pphosted.com with ESMTP id 3ahakcrj44-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Aug 2021 15:31:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NFzOZmUg55S2nyXZpa9qCUS5g8LVOYH+n2AsaHPhsVrMl4WRtqNbU4ZtKFN7+By5xDnKRdVrmY5M2yrbvLPgzamMUxNaq4iswCeDzzKE23dHcvqPx+6HGRWWw4ghhVdGz6OwX9iR/f3c1FqBj3DregIFiOCghvCUxDWgs3F6mPQgQ1uE8g3kGqDkHe6gx0blA19Mw1VMZ+cxu2MdrklV/rlQJIcMitNJEv1zk2cqrxWr00+Fu4y8lydLoJC5wh5dn3yAKAilaaEBVHaXxNNG9F7Kw1tZICFMNpUIATkao+tQd39JpI8JxHvKgvVXneFxT8zI1ykJAwXEp0qyalZmIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rTgXKC9S6MSZdyydiiU3OLBp2qapzM+xajEOtjRUuZY=;
 b=j+epX48+xDh9iHtPifbRf8hWicy2tOcpwxeBhyDmMIqY8FzQ7RHS9EmImG609d9IEkKyTkhWODx5WDU8Tfd6FTagRqZSFIFlbr+KrC3bDdrIAxgkdwUsi9nP15fEt+kZ68fuMvbN+5NJe6NYC3Yuhm7vUZnLy/BHpr+QieHmleV55itBatD4HHCP5F9sef3a6LLgPo23rXwxg2L7mxlO1GLNna0Le9HGC67OD7QMs1ouQUDZ0cUe5mLlCMz7g4NVHUWnjaDrUBM/eoRQVvz33ZQAz8M3ipDs09nUGR865Vcur7VBcKTSVSJ9kuHsPt6hJVMj2FOtjhkEe/eIOZFPVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: mvista.com; dkim=none (message not signed)
 header.d=none;mvista.com; dmarc=none action=none header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BYAPR11MB2903.namprd11.prod.outlook.com (2603:10b6:a03:89::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.15; Thu, 19 Aug
 2021 15:31:03 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::5988:9cf6:c130:3530]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::5988:9cf6:c130:3530%6]) with mapi id 15.20.4436.019; Thu, 19 Aug 2021
 15:31:03 +0000
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 8/19/2021
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        trevor.gamblin@windriver.com,
        "MacLeod, Randy"
 <Randy.MacLeod@windriver.com>, steve@sakoman.com,
        Tony Tascioglu <tony.tascioglu@windriver.com>,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        "timothy.t.orling@intel.com" <timothy.t.orling@intel.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        alexandre.belloni@bootlin.com, Ross Burton <ross@burtonini.com>,
        "akuster@mvista.com" <akuster@mvista.com>
Message-ID: <c31e0b73-cecf-62f2-442f-e07832ab5b2f@windriver.com>
Date: Thu, 19 Aug 2021 11:30:59 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
X-ClientProxiedBy: MN2PR01CA0061.prod.exchangelabs.com (2603:10b6:208:23f::30)
 To BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2607:fea8:c29d:d7c0::f245] (2607:fea8:c29d:d7c0::f245) by MN2PR01CA0061.prod.exchangelabs.com (2603:10b6:208:23f::30) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19 via Frontend Transport; Thu, 19 Aug 2021 15:31:01 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: feb2cc4f-2ed6-4105-4c94-08d963265ad8
X-MS-TrafficTypeDiagnostic: BYAPR11MB2903:
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
 <BYAPR11MB290333976DF71741842322669FC09@BYAPR11MB2903.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
 8W4diNMoWanURjfCRV+CoA1XXU6YnX4EoIqmItLjAWr+iTndwoOcH2mEssui95jWk87fLP3ULz1NgZbuoFePeDPxJYFg1BxohDRV2ASJCNrMYkDBdYb01qsKbY8A3TwPpNMl6JOexhFbWLj7G42GsT2jncDKYlgDpWMapg5TWV6LfNvUW5wbbV4wrb2eZqKHrVRF0wiD+GsMqXchoLZ76oTZFqUu/kaHeTutyp2z5vsqtQWjAnTbVNm2lutun6N/WemW53MyHiZtY3LNV627YADU7yl1LkNlUj6THOJiQRxRosF2ysAobnm7Zf0A3FHkYRMqc/I8YMWiDZ+YFcLpNcNumQbdaDLdePd/Hf27wq1b1/YZFD5KXD+bzlfzCGbgXwVH2X7wVunD2D4ScXmMi2eSOhIV2Fqq7V47GfgzbbIYNJmeRaU7BWw0Kr5YM5qKV8VoVieUDGJQh9OlmqpqzG7Nwx8aUKM8TK3GlpDHPks1srsLk6k71mytXLU5yvqouaFU5ahuHd/qMPgdOAiwBG9ktu/GOFa31P12MU2DEFGWCii0+smDM3kIl5p2SxsLgVhCA4ELLL570pX0u6RXN0Wsn2zSoEYJ0JkhLBohu9CHxjo5VfvSCw70UU9idGz3kpPh6RA2Gjieugj54bKFUKa27w5OTwCiJ/aVgINR+v477RWxDJsRQmBC1cZRNgH2vRk7Or0CJIOcvoyYponfTclqjjE5Rl3pVqZeKGyXZVLebVhTZ7vFd7UTkrkAsUMiAFOJcooS0Ml1eL65X/9CkYiDaknzmFB4U7uQm8cu74Twa4Zd7xm47iVXeezwM+3r
X-Forefront-Antispam-Report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(376002)(396003)(39850400004)(136003)(346002)(6486002)(2616005)(36756003)(316002)(66556008)(2906002)(83380400001)(166002)(33964004)(8936002)(478600001)(966005)(86362001)(186003)(4326008)(6916009)(8676002)(31686004)(38100700002)(44832011)(66476007)(54906003)(31696002)(66946007)(5660300002)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
 =?utf-8?B?aG5jNkd4ZFB1a0plVmtrMlNtcHd5S0NVcEJtOFlGQWVKdldEZDVIRUdvMFFD?=
 =?utf-8?B?T1pMb0w4b2NETFVBbmRLd1pOWFBnOXJFMndnUHpIOUtuRllqTDBiVEphNjQr?=
 =?utf-8?B?V2F1aXJxSzQrU2xjejlVSmNJd3FtRFZaTnROa3JoTUVkMVBtUnV3Rnl0ZllF?=
 =?utf-8?B?VlBWQksvOW54a2x2VUZjVWpBeEJST2tBSnJCSDZYUUIrc0pjWG5OdnlTR00v?=
 =?utf-8?B?Yk54RFdWMEV0YWVpNmE3SVhJcERCWkdDeEo1YjR4Rklkcm4raTI1WWkxbVcv?=
 =?utf-8?B?MkZSL0tHNjUvam5CQTFEQ3ZqcHdxdVh0enV5cEtSN2M0eWMwNVhzVVRUR2tU?=
 =?utf-8?B?UFpYY1MzSzZSaXNrV3RiZmRZZkwxZGJwM3U2TWRqc3lxSTBLaTRkRlhkSHIv?=
 =?utf-8?B?V0U4d29wdEFLN2h2V2dBM0RsSjVRdDFJTjBXMUgxOUpwcWMrd0hwdUo0N0hV?=
 =?utf-8?B?OU9lUVIrTzVHa0ZSUXNCVUE3Y1dsYmtlTkRVVzlUQXlIZDdINVljMURKWUVB?=
 =?utf-8?B?dlg3UHo5MjFscEszcTF1d1lldjltQTNyTTJaSjdnSjZmMUdhamZVK1R2bWJF?=
 =?utf-8?B?bUVXbXdvRkJOOXpNVnQyeTNIYkdPV3hVOTBEMWRGeDQvUFlwLzUydURQeUhY?=
 =?utf-8?B?VU1nRW9VR2c1d3BSVkZ4b0o5dkZrV1Y0Ukpzd1hSRDZUMmtHKytIdVM1bjVU?=
 =?utf-8?B?S3lGRThrUVRwbUI4c2F0eXkyTXBWd2lnOFJITkdUTktqRm4yRXp5MTBENnYx?=
 =?utf-8?B?S0FjR0RIY2h6NWU2YzMrak5MazBRVnd5YXB1czg2YVQ5OG1CRk9oeXg3dGJm?=
 =?utf-8?B?UlY4VkcxUVVGRm5zWEhTOW83Y2FpOEQyQTU1VVhOa05IT3JxQnVLWkZHZ01K?=
 =?utf-8?B?VjNaRXpSRkgxTXkvL1orQkZrTDJHYlY5Mkg3c1hmcEVGcFJhU3ZWRmRqQmo4?=
 =?utf-8?B?RU1ZTDZLNGFGemt6dTdCL3NpMnlDL3Z6dnd4ZUxTdGNydGs4NlA0TTZBTXhU?=
 =?utf-8?B?R1RYSlZpZWNMYmUrdXRIRWNVcFRaRDV3TmJjcmRBVlAxeHRtRWh0MEFoWVRl?=
 =?utf-8?B?L1dwWDVHaVhMbVJuZldjSldwdmFtOCtEUjMyM3pLV05LN3F4NUJUcGFkUW5m?=
 =?utf-8?B?VHM1Rk9GTEh5RHFBbTYySjE0Q1JpeTVTMDJGRGtabWZaK2VhSnRORzdmc1dy?=
 =?utf-8?B?SXVXN0MwbjNnZ3A4QWh5N3FSTWUrdElkQ0FETzVEaWNnMWtLbVhiREVka1dG?=
 =?utf-8?B?SmNGQ2VEMGRqVUpDYUthTXJ3Qk5QT3ZZL2FWR2EwL0ZkSnNPUll4NGVsRHE1?=
 =?utf-8?B?bUtXeUZLWUJrT0pCZGt2RW5SVW1Qc0RCbXgwRTdhMUdBQjdieHR4eWh1L045?=
 =?utf-8?B?SHMzb1F0dzBISks2b1pSLytiOVUxcHFidlRKUjVjZXU4UnBtbHRlY0pCU0hm?=
 =?utf-8?B?K0dmeXZzT0lySURKMm4yL0gyT1BpanZabEt2V0ZGam5lWkNVYm1MVjBKZkN5?=
 =?utf-8?B?RTgrVjBhOVhpV0tXY0RySVJ6emN3am1VdGRBa2t1L0dVZUlrVjNtNXdlbStj?=
 =?utf-8?B?OXAzQlhFbHc0S3VDRFJNQnJnMUNZUVVPRUw0dzFoRHg5T0QxSW82RVNtcmhl?=
 =?utf-8?B?NVdIcTQ5akVPdmRFZ1RsQXl0UnljWFhUZTQ3dGp3T21HVkNoSmk1SlI1QXcy?=
 =?utf-8?B?SDc1ZGpFSXpDMFpFdmdMRVY1aWFqbi9PY3ZXS3dBenZ1YVRBQjJCcG1rT1V5?=
 =?utf-8?B?OU5aQzlBZEVmMnYvNFhzRFRIcWZleUd3aWYxd0RHRXBiZGFYbFRUSTZTMEQ3?=
 =?utf-8?B?czVSOTArcXJodzFTdGtHdz09?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: feb2cc4f-2ed6-4105-4c94-08d963265ad8
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2021 15:31:03.5946
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NIfYGNXjiTLUvwZXQymZ18/sSIp1mBEH5tbv2yDEZ7JS8ezBMJRdEwL8e4g/Np6NbYVrJ0qm7wUvkbGM0IuW4O5wypXF8NU5h+yO9pebYZg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2903
X-Proofpoint-GUID: Y7ExcARVf0HUzm2cRNsZvwKY_byvMuCb
X-Proofpoint-ORIG-GUID: Y7ExcARVf0HUzm2cRNsZvwKY_byvMuCb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-19_07,2021-08-17_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 priorityscore=1501 mlxscore=0 clxscore=1015 phishscore=0 suspectscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 mlxlogscore=999 malwarescore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108190091
Content-Type: multipart/alternative;
 boundary="------------601AB3B1E349BD9EB5954BAF"
Content-Language: en-US

--------------601AB3B1E349BD9EB5954BAF
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees:* Alex, Armin, Bruce, Diane, Joshua, Randy, Richard, Ross, 
Saul, Stephen, Steve, Tim, Tony, TrevorG

*ARs:*

N/A

*Notes:*
*
*
- (carried over) Steve encountered build failures such as the one in 
https://errors.yoctoproject.org/Errors/Details/593109/ when attempting 
to run dunfell builds with the PARALLEL_MAKE load averaging added. WR is 
testing/investigating on internal Autobuilder instance - Trevor is still 
planning on looking into this!

*Medium+ 3.4 Unassigned Enhancements/Bugs: *76 (Last week 80)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *36**(Last week 30)

*AB-INT Bugs: *46 (No change)

--------------601AB3B1E349BD9EB5954BAF
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees:</b> Alex, Armin, Bruce, Diane, Joshua, Randy,
        Richard, Ross, Saul, Stephen, Steve, Tim, Tony, TrevorG<br>
      </p>
      <p><b>ARs:</b></p>
    </div>
    N/A<br>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">- (carried over) Steve
      encountered build failures such as the one in <a class="moz-txt-link-freetext" href="https://errors.yoctoproject.org/Errors/Details/593109/" moz-do-not-send="true">https://errors.yoctoproject.org/Errors/Details/593109/</a>
      when attempting to run dunfell builds with the PARALLEL_MAKE load
      averaging added. WR is testing/investigating on internal
      Autobuilder instance - Trevor is still planning on looking into
      this!<br>
    </div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.4 Unassigned Enhancements/Bugs: </b>76 (Last week
        80)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>36<b> </b>(Last
      week 30) <br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB-INT Bugs: </b>46
      (No change)<br>
    </div>
  </body>
</html>

--------------601AB3B1E349BD9EB5954BAF--
