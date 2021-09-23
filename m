Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.6560.1632411656854811442
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 08:40:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=dmeQPNjs;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=49002df7f1=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 18NDxIiY021883;
	Thu, 23 Sep 2021 08:40:48 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : subject :
 to : cc : message-id : date : content-type : mime-version; s=PPS06212021;
 bh=/Q6zi5J4G2GJ95CQYaQueqBtEmG8Xmlkq3faTFbZWTM=;
 b=dmeQPNjsB60Irk4FyHLmDLhPVxNnrkeR7OzzcPI9NxXBp6ULvG3j88hiHicYsg9pgW8x
 8VkqLkQf7st+7OBuEmgOnPtMUTry4zIeMl2RvPbfHmYjAMatRTAnJzYT1RO6F3N+DAcj
 ZlhdOzUMWE8EE2HycLv9oty+O0bQkVorKoa/OX+3xAIDAs6gqimgtx7n7s/uc3XpyKxg
 5XC0TlbCiYcIpl/io70fffD0RpYUEGsNr0KjKNslhYUZZXTe/NzKbkAqDKai0m/noxiZ
 OPOJQ17/vS28FBQWpsN8v+EXuhhGeU/bA4l57myik0p20PYO7umAiCanD5Sc8yF/n0yr Ng== 
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2169.outbound.protection.outlook.com [104.47.56.169])
	by mx0a-0064b401.pphosted.com with ESMTP id 3b8d37gny5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 23 Sep 2021 08:40:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DY8o45ll3W+UDQacEkFun0BcMnvatVwe7Qr/qfjM+EpFVULNimtPsvVN9/KV4gsE2GyYqwtQW//2lXaaNYC9w2hNtNpgyBtZTkPY9ullWzNsXF2MeXsipPBFn7+7vwOj34WkKOjnzMPAeB560Ud9jHrWf1YlOynOXVXdQdbH6R/aU922shKBHm7rZ3RQDoM/2J+7SzSMe/4/z96W/kJ+GdCBiJQWE0IpKpZRivT2Ba1TSuornlCZCx/Z/9Wg/9MfxJaP/IUDt9O+6UCHpF96G/otIX6p1/P48QciYcx4B4YTTDSmJYNGhLOn4MbGM/5+f+53qBrkIgjtP08A6TLvzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=/Q6zi5J4G2GJ95CQYaQueqBtEmG8Xmlkq3faTFbZWTM=;
 b=GxQc02rBLOXidx42EJj3CT4ll7Sd+rlJkaBZ5Oe9wYuD3GYoezaHwEHP/2KgYREHANP/qjID8I5BNpmobChekJLZjhR6hxCBwk4Fd7KiWkZzbq1eUi66FZM3mkrRTkdeZGZIUSPjOJ+7h6TfpmvVhRAPfPS73JuJ3V7rRpmcY0zd9Yu8nqej26vmqsNeQ3u2vqz6Pdce7J1e+gCovzCWB6Oq/rPqVVwJ1o027MMXyXjWHzuvn+tk42pCFQcalnS/VrUn6QIaiDB4ojK6dGidhHOb+3PkQYh6IsD5UQuLiRcXvVR8TqcDZ2OgsfOONzm7XukbB79WOl05no7la+GUTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BYAPR11MB2904.namprd11.prod.outlook.com (2603:10b6:a03:87::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Thu, 23 Sep
 2021 15:40:46 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::fdd3:dc0f:a385:34d1]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::fdd3:dc0f:a385:34d1%4]) with mapi id 15.20.4523.023; Thu, 23 Sep 2021
 15:40:46 +0000
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 9/23/2021
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        trevor.gamblin@windriver.com, steve@sakoman.com,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        alexandre.belloni@bootlin.com, Ross Burton <ross@burtonini.com>,
        "Wold, Saul" <saul.wold@windriver.com>,
        "Surendran, Kiran" <kiran.surendran@windriver.com>,
        Bruce Ashfield <bruce.ashfield@gmail.com>,
        "MacLeod, Randy" <Randy.MacLeod@windriver.com>
Message-ID: <85d19597-9cd6-cef1-83cd-e2926b851e61@windriver.com>
Date: Thu, 23 Sep 2021 11:40:42 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
X-ClientProxiedBy: BLAPR03CA0017.namprd03.prod.outlook.com
 (2603:10b6:208:32b::22) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
Received: from [IPv6:2607:fea8:c29d:d7c0::81de] (2607:fea8:c29d:d7c0::81de) by BLAPR03CA0017.namprd03.prod.outlook.com (2603:10b6:208:32b::22) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4544.13 via Frontend Transport; Thu, 23 Sep 2021 15:40:44 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ab483c1e-d5b8-43e1-8b90-08d97ea882a6
X-MS-TrafficTypeDiagnostic: BYAPR11MB2904:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<BYAPR11MB2904FF6F2FF5DD1BE9622AF79FA39@BYAPR11MB2904.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	cUnCZsgKOGG1TUtFubTKfVVWNtjNO2At57iXcFc7ldeJ3Rhc+rUycQeUGqQ6rg7b2vHXXMsQTzRJERosyP+rl3RsGJ5ubY+1AOHPFoZjCXLuJIMMPekeMiWxfaChUrBWeNeuXq8x4E9dxvK/QFZbo3OFr5AbIEMM4OMMaZNCE1ELAhaa+Ib61wC8ElVqhk+4+ICrfKZlcMhnNLjdNJl06uX3LwT6q97zH418yrqr3zA5F5OtwiEpv4QRKrun5K+1UXI9+vNjLz8Gt+dDtGNoIOwdXUzNyt/jjAmXNjEHrbMZL1TCF2VywwXzd/5CapApCY1zbF/9r/SYp4BPLeH5kqoAylfMwJiA5TGiZqIq0K/bcJWPqJt/fXZ22x6LeZYlyXKPBjWhPPxdj8EHRCgYP1aQXCboEGGzgIgsTrORN1AfnHKSnYMswrG7VrZUxkiREX8WcN24rA+1igp8anWw9oiqNCWCqLjDOU9zzBfzdWTKefj73XMkiMwZ9rMkOaFryi7NZGY3SXsLVMiAq5b9yk4IVfEOnKzCtY7Zn5SQB5RQ4xrOOHJ00/Mkdvo6Tc+Z4duqT5cV+/J5Qp6Lc5kN5RLv4ZkI2qgdw0UuuLt/ZO7QtrkbI7u9XumLdtOVhmQOZPmo+fjYX+fL5PxIr61r7fjWBBc4Xnwi6fOJvkthl7Py6cmPeRn0OSlxI5IlfwsYAzH/woPABck4JL7E98LybmzN72o81CYlZQ8NBUkFOaPSBbqLbNy3tW8ykbyvzYRrY93S/avt5PfE4Htr520HPxCoNmo3hKP2P1Enxce+uCy12I9vkxb4FxMHR2JoCupF26UU5jO0PtFFkMlkW1XNtQafviq5kx1PT+KmAbTErxk=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(316002)(86362001)(33964004)(83380400001)(5660300002)(38100700002)(186003)(36756003)(8676002)(66476007)(966005)(66556008)(31686004)(8936002)(54906003)(2906002)(4326008)(508600001)(66946007)(44832011)(166002)(107886003)(2616005)(6916009)(6486002)(31696002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WXlzVFlNNVhFOThKU0Q1blZYYk1YNFIvWHlLYldkSFlCcERRUSs5OHpEakVi?=
 =?utf-8?B?aytGZkxPTXRrbXJYTFMrR0dKL3RRcDhNTGdMMEx6KzM3aFlyTjFrZFV4ODZ3?=
 =?utf-8?B?NGV4NFZIZjhONk9GaG05aXFrc05nYVNRTlNWbklaUytQMXRiS2gvdlViZkZ3?=
 =?utf-8?B?Z1JISHphaE00RFBMd3p4UUJseWwrcUpTR2Y1MHd2VFBaTE5nNGkxOHNCME9H?=
 =?utf-8?B?V3M4MzRWTEZyQ2lNZmtyWmlGUFFzL0pqSGVCclEzY0MreThhWDBKRnNQVWtH?=
 =?utf-8?B?SWlNWlkyQ2RjOGlSZWFVeU96OExUa0tzVVplQXlwb3dwOXpEQkplNFVIRCtn?=
 =?utf-8?B?aUk5UlI4cHplbDVUdFJFTS8vSlpXUEQ4VzhNQWE1WUlXL1EwdE90TjFRaDdH?=
 =?utf-8?B?NEExQVAvcUpMMUtjY1hMQUh0NUZXVFhlTXV4aXUrVGNjaWI2M1B3aHA3K1M2?=
 =?utf-8?B?S25IQmVpRExFVFVXdG1tZC9TelBGVFZIVUNaNEQ2dzRUQUVQZU9iM3F6NUxC?=
 =?utf-8?B?SC9tazZQVnNSZG1PYjZER2VFMGZVQzNUa1hlc1FQMHowdkRteWI5Q21iR3B5?=
 =?utf-8?B?VStaaUk2OGFlNUdTWE1vWXVTZXhRTitTRkh3UkNZZ2xqMTFkaW9KakVLUTdM?=
 =?utf-8?B?U1ozR3VMSTNueTVXakZyMUJPSWFPb3lqakh0a2thOG9PRWRUTmE5SXRKQXhs?=
 =?utf-8?B?WVZIK3M0Ym4xMi9VbE8vdGJFQktab0xYUXhSZ01MUWJQODQ1cCt1SXBlN1Yv?=
 =?utf-8?B?SHBBL1Y2NWM2ZUN2QmphWUNoTWRVUUw1RWFORW11M0o0WGl2UnhPQ0lYVWhL?=
 =?utf-8?B?dnNNcVgrV1hGakViWjVuZFJqcjVPcnFUcEVmSWVwWWhOYm9SaHhiNm9kaWdS?=
 =?utf-8?B?UnMxWEVwK296cFJtVDQrSEQyTXlGWlRnT1pXdWJuY1hGK0xyU0FMYytqYzRP?=
 =?utf-8?B?SXYzeWlqUmk4dktWMHRVMTU5RmxxcXNBL2trRUhldkg5MHUrMWxQTCtnYVJu?=
 =?utf-8?B?bnBuN2U5MzRwK0MzY2d4eU00NGk3Wkp2RzlkeGlKR1dCaHBqU0NPNitoOUx4?=
 =?utf-8?B?MW53UGtqVjA4dThPRS9mWW1pTWFsNjBPN3JReDNQZDJVa2RBMGE4UDBuc001?=
 =?utf-8?B?c040MjBGekQ3NmNaLzBuRmxybkFDdStBY1VlY1BvQk16TVpJOW9pWTZ1Sit0?=
 =?utf-8?B?Rms3Qm5YVVZvT0hwalE2b3lMamhtdXcrc0V0UkhzUkFRMGtJZWJqUWU5djMw?=
 =?utf-8?B?Mk5ZMGNHdDNUQXNMMGc3OTNlZ3kvd0RQWEtweTRWME1VNWI3ZmxWdDljQVV2?=
 =?utf-8?B?Vk9Cb1ArZm1SUk92WTMzazk3U2thQnZwWG9xK3hjN3doampFT1RzcXdoSStt?=
 =?utf-8?B?dnlGeGQwTjR1S3NueVBHdnUvRWMvSkd3NU5wNUZYQkpwT3A2ODgza2tIdXZ0?=
 =?utf-8?B?UnFONmJ3UEJSYllLR1hFUXJVRGdpK0tHVWhhNkc4N2FXZ0Y1cUptNUxsVW9B?=
 =?utf-8?B?ZTA2b2QrUngvWHJlK2tqWkpkeCtJdVRLYzV6RnY0SWFCV0tIMS8wVG5LVkZ3?=
 =?utf-8?B?MXhzREsyUHg4MTVrSFYzbDJjNTJSWEFlazR6NE0wQklKaHRVMmwycVcvR2pG?=
 =?utf-8?B?NGxsTXFQRnhPUWNBRVpnWGlMd2d1dWJ6R1doS1JMZFJSVm95eXV3OWFwUGg3?=
 =?utf-8?B?MStzQmVDVUh1K2lVcUxERnJBcjAyd2Z0b1lGVVBkVU90MFRCakU3ZTdyVVFp?=
 =?utf-8?B?Zktja3QzUkFyMzlheFZKT0JYMWNUYzZVRGg1cW9PUVBGQmlVRklweS8xZTFM?=
 =?utf-8?B?SmVCeG9qeGhIZnRTbFd4dz09?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab483c1e-d5b8-43e1-8b90-08d97ea882a6
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2021 15:40:46.2543
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +8cJYwzbrs1jb9gJY/G9koPtO2CyEnVBy2rO0J9nWmpFintxScGMWAR7c3+8tm6G22aekCRNBBHxoZ+ciN+cMx9rteE8WsQFbkawMZRzcUA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2904
X-Proofpoint-ORIG-GUID: 1tf5vCQ-8YQdULc3VU7jDaHnCaxMfbrd
X-Proofpoint-GUID: 1tf5vCQ-8YQdULc3VU7jDaHnCaxMfbrd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-09-23_04,2021-09-23_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 bulkscore=0
 priorityscore=1501 impostorscore=0 mlxscore=0 lowpriorityscore=0
 clxscore=1015 mlxlogscore=999 malwarescore=0 phishscore=0 spamscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109200000 definitions=main-2109230096
Content-Type: multipart/alternative;
 boundary="------------096CC75FE34926F95387E637"
Content-Language: en-US

--------------096CC75FE34926F95387E637
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees:* Alex, Bruce, Kiran, Randy, Richard, Ross, Saul, Stephen, 
Steve, Trevor

*ARs:*

- Steve to review failure logs for 14557 and post any that might be useful

- Richard to have a look at bug 11801


*Notes:*
*
*
- (carried over) Steve encountered build failures such as the one in 
https://errors.yoctoproject.org/Errors/Details/593109/ when attempting 
to run dunfell builds with the PARALLEL_MAKE load averaging added. WR is 
testing/investigating on internal Autobuilder instance - Trevor is still 
planning on looking into this!

*Medium+ 3.4 Unassigned Enhancements/Bugs: *68 (No change)

*Medium+ 3.5 Unassigned Enhancements/Bugs: *10 (No change)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *39**(Last week 38)

*AB-INT Bugs: *54 (Last week 49)

--------------096CC75FE34926F95387E637
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees:</b> Alex, Bruce, Kiran, Randy, Richard, Ross,
        Saul, Stephen, Steve, Trevor<br>
      </p>
      <p><b>ARs:</b></p>
    </div>
    <p>- Steve to review failure logs for 14557 and post any that might
      be useful</p>
    <p>- Richard to have a look at bug 11801<br>
    </p>
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
      <p><b>Medium+ 3.4 Unassigned Enhancements/Bugs: </b>68 (No
        change)</p>
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs: </b>10 (No
        change)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>39<b> </b>(Last
      week 38)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB-INT Bugs: </b>54
      (Last week 49)<br>
    </div>
  </body>
</html>

--------------096CC75FE34926F95387E637--
