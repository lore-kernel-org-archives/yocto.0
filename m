Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C4EC433F5
	for <webhook@archiver.kernel.org>; Thu,  9 Dec 2021 16:33:29 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.14057.1639067607042251409
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Dec 2021 08:33:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=QqhHwd9v;
 spf=pass (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=7977ba1086=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 1B9EDXEe031377;
	Thu, 9 Dec 2021 16:33:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=nzBPZw5sny6OqRHzQ+Jx/BdOXxisV6GFAt8EyyLtXw4=;
 b=QqhHwd9v98CoLpN5YOQkdkKHa+sXLH3JZYaN9vBj9B0uSuH79XAKmepenY8npLu4nri4
 vL+cMXeJcziz2K9gG5eRM/yhrFbWwJQSHPaEcuaPkcOyz2BpFFcnvMAo1m8/FWu+drED
 5lucIgckkE91KUzLMQY8jCRly8r9z26kRJJwpERRLU+FNNbTEun5+GknmuJdK45Ytm9f
 nVANnZWo2M7U1Ix0Jp/UGBH7Hp4hcEAGgywY2A0GGLvN398K2r5H44zBPneeR8bNQrFZ
 7lG7i5Do2EImC57kKqWYuMI/LIyhAy0Zkn6rhrZ96tfylOczAF7JmuZ7hAjSX4TWv/eP MA==
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2107.outbound.protection.outlook.com [104.47.70.107])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3cukc3r40c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 09 Dec 2021 16:33:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZJeLe/wptohNzemU5DMZq6Pid+TCHEz8Sduja8p4YXUtWTGKRXAQ8DwyFeeMfbQoZ1ppyqusEaEKy2mzj8O3PjszJZWwOH3lKx6T9YoSFfZAhQLoEB4pr/1OSgT3YDDKX2hqDBZYwqVI7+rREqvnSpDRLoF+qxZRGiNINpvkN4T8LqCFMC0wobKJj8a0HNcO+IZI3tsF8NT55VdNOh+GG8FbNmI2UyMKObfWf5bsFFueiFmpH5OS9wpH6yemdYuYjw6CnZGQBOsNjjn3y34MA/y1rVZL/v1V3LVLCoxmu0u4DXFcSN0lRRV0oBh1B4lbV0zWigkVYVT7xwUU5N3x+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nzBPZw5sny6OqRHzQ+Jx/BdOXxisV6GFAt8EyyLtXw4=;
 b=cba8Vg4aTb1+TMnhkMkyR2pBhBloPMdtX6DyEwF6hlTSm53sjdbKIkMUbY3q92E526rKLwF47NExufJarY4nI/hKtuHqotck/VTVUOg311X1JYlg6lLuAl86iXGWQiQZKs0WUCWfOsYv+0xajG1V5UhCOuGuZSPNJo+2jB3m6TkCnDo3eg7iSyB+EQLQyFmYFu+gCFIU4nhK599hRBTcoqOs+XFePK0xb/vcMwFmCRlJhl39bdisllZ6dQ8jzTLoECZlyg0IdoX78wXqBrRX0jrIuzbv3UtXD8CtSaGUnHA1WTbqEv+PhKljyYn8+v7YfjoxuI054jNoWEYlnvt0ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BY5PR11MB4008.namprd11.prod.outlook.com (2603:10b6:a03:186::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.14; Thu, 9 Dec
 2021 16:33:15 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::381c:4755:45c6:141]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::381c:4755:45c6:141%6]) with mapi id 15.20.4778.012; Thu, 9 Dec 2021
 16:33:15 +0000
Content-Type: multipart/alternative;
 boundary="------------c1vk6jEQJXfunOZv4MChsKEN"
Message-ID: <4c097dca-117f-7e03-5355-2230e0829e19@windriver.com>
Date: Thu, 9 Dec 2021 11:33:10 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
From: Trevor Gamblin <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 12/9/2021
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        trevor.gamblin@windriver.com,
        "MacLeod, Randy"
 <Randy.MacLeod@windriver.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Michael Opdenacker <michael.opdenacker@bootlin.com>,
        alexandre.belloni@bootlin.com,
        Bruce Ashfield <bruce.ashfield@gmail.com>,
        daiane.angolini@foundries.io, Steve Sakoman <steve@sakoman.com>,
        "Wold, Saul" <saul.wold@windriver.com>,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
 tim.orling@konsulko.com,
        "Mittal, Anuj" <anuj.mittal@intel.com>,
        Ross Burton <ross@burtonini.com>
Content-Language: en-US
X-ClientProxiedBy: YT3PR01CA0055.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:82::23) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c6ed3f14-5dda-4141-7272-08d9bb319922
X-MS-TrafficTypeDiagnostic: BY5PR11MB4008:EE_
X-Microsoft-Antispam-PRVS: 
	<BY5PR11MB400829292CE0C35FC475819D9F709@BY5PR11MB4008.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1417;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	nIb1krOlX1YKjCzqxuZvWMGQfw+oKcfue2WoeHfwkstzEg9t7IQ/BHopV3zHv7csZhnDoUZ/r5JL37eR78Vz+evAuyaE692QoZRcV54rT7C9oXdxy15XbXVC/P4kL7BtaFfHQWl+4eFUyQBj5WUgB9Kge2dVRknvgKxWrwPzCaTznQFoNLWHKkkSEwMwB6/ZXGw9CCueMdPlowZjWbJecj+UyT9IXMRdTQvmpIrmznvkN1ZmIGiICWs7fQVx1Fv5UGzImQ4uAcaak2pLrOciuXHoZgLtQNv85AmumX819DarWZmhtITknnrvvIB+3zBew9s2V5xmI2GLQWg+g+WAD1UUwG6d4EGICFJTaecpQ3w9HUMLfRg5N5IP/v9oXJOs54iA+/z6SzeF0YtwegprvlpvxVXAi+XVTU1W/bx0+kC8wf5v7WDktHOW+rZJLdt4HIU+I6vlUSrlf5HLUMNBgNHqTIk+FY8zlvWmOPR3NsFyqhjhM6OlCHGin9xrNcoaLEKB0Ny5/nbroMotnzG8ghk25zTTOmqdhU47E9dGC5k0KvQLXmwJgKIqlJfIAPLwDcK0fDP3cS+36qPAGuOChPIgppvUm0EbbLNR1pyg5mFZWlx18WsmeMpy0wbh1AGuF9q061dQmperSw2gH9oQixDPwBKLIr1zmfP22WvNaKQ5IvP72c5PvYusCRcN4Iv+1jM8iVvQVSZdCkvey1EFMyHpNLNN4hNXExmfsA5TG2s4yqh0f3HOo3nD9n1PdQ7/l8AM2Kz6J6uQGCJcc2OHUFBLkQbTVvxAxRfdc3l//DmznaSIl7T8Hkm4vifbuEj9
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(8936002)(33964004)(6512007)(508600001)(166002)(5660300002)(2906002)(36756003)(7416002)(6506007)(4326008)(966005)(38100700002)(6916009)(6666004)(31696002)(66946007)(44832011)(6486002)(54906003)(186003)(31686004)(66556008)(86362001)(2616005)(316002)(8676002)(66476007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NExyWEhpUk0vdDh3WjczcW9lcmJJbTZmQUtPcitrNnpiUmRmUmtvZmFOSDEw?=
 =?utf-8?B?RFF3RnpjYmM4MEh5Q0M0SkJpanhZVE0xb2VWQm5OT0wySXJHK2NuZG1JM2Jp?=
 =?utf-8?B?ZGVOVTZvZEhvM0Via2M4TXR0MkVEZzRmeVFBai9PN3pvbE9yTVE4RWowMTBV?=
 =?utf-8?B?TFI1RjFtVHA5Wm94RFdHVlRSRnBlck5Pa3MrbS9KUDFwZWpyKy90YWJDWE45?=
 =?utf-8?B?aUlMM2h5R1IrM0lQYkRJeENCVmlTVXh4VGpVcHRlaFRFYkVIanRHazNxMnR1?=
 =?utf-8?B?MXRDOGRZcDZkTEhHeHFBYmo2OUZkTzh3R084WnhkaUR4ckZPK3pPdkFkZ2hX?=
 =?utf-8?B?dEtKTkhZdlJlYUozVTIrRFFlbHFXL3MzWGRkTFZvWUdoUERwV1RoVnBKbHh0?=
 =?utf-8?B?YWo5YlJjT2laTi9na2tFZ2o3RzNxUjliMmdiTXY1dHczUEVEN203RWZ4SGd0?=
 =?utf-8?B?K0JtUWdYRlFkY0VOc0dFek5VTU9tTjVQTVhVOEdCcHUyZGFRZmV3eTZMVW1l?=
 =?utf-8?B?QTNMSXhrNkROM0ZPeXBVbXM5bUJRT2pMeDhCYmFJckhaSEoyMGUzbWhzQnJ2?=
 =?utf-8?B?VUgvdTdGcHVaS3M3OUY1cW9PdFZ0UmJXTklJYWF5R1JsYnh3ai9SSThIcEFG?=
 =?utf-8?B?U2ZFU3Axd0tmZjJBKzA2UDB5OFgwMGJaU2tMS1cyK05VckhvTXhLcGhGZ2tY?=
 =?utf-8?B?eXR3akxXVGJLemxqU0M1M1g0a2U2UE1vU0p3NEgxQ3h5OTF4M2xJc1NpNnAz?=
 =?utf-8?B?ZjNVNWlteU81emYvWnVFeUJsSHBVbDZxNHNCcEZNZHpYbjNqVUhnSGllZDJJ?=
 =?utf-8?B?QVkzYTFhZmpzNFdWYWRwTE1IbHM4eTFaSFFVeTBFeHBDQnVkUUpUZlJ4K0dZ?=
 =?utf-8?B?ZVV4bks0U25lcVFtbCtNRTZrVVlqRjBORWM2UmRWZlRybWFUM09ydXZqWUxz?=
 =?utf-8?B?WDgrM3J3UTZJbDhXQ2JXcHc4RW9VVWZCMFEzWnFyL1MrRmVKV2d2cWlxTytG?=
 =?utf-8?B?Z05FNnU4eFV6WkhVN1ZFU1RlVTRjdVZUTDlxWlNuR1FJUkwraTlpU3RWdkNj?=
 =?utf-8?B?WGJObHhWV01jTkViZjd6dUpSQVAyejhKZ01RY3NWSkdycnJ1SlcwdGhSRVU5?=
 =?utf-8?B?Z010anM0RzArUVdBV2NWVzZYeTJkaXdwbGZFYWY1Zis1dUQ3OWZxYTVLbFNL?=
 =?utf-8?B?aWM1dE4vMWlrZjgzbnJETXk1NU1CREFCOWJVTkFCUWRSb1ZyQXZ6M05PMDlt?=
 =?utf-8?B?alF4dmlRSTBLa0J0clIyNHJYejMvbG54SExrZDB1RXF1T05aU25acTR3by9V?=
 =?utf-8?B?YStxV0dLcnpoU2hZZFZVWjJZZm1qRFN4bGs0ZHFvNEw2TEdUOVN3Nmg5VGd5?=
 =?utf-8?B?WFBZNVl6czR5OUwzUjlGdE0yeEhYRVZhRGF5clYwUm1lRnRjNEdsWnQ5RUhw?=
 =?utf-8?B?UDRWZVUwNE5UbHFRUWNyZkdHeU1iYWw5eWp2NUI3TVVzejl3dHRZRDZtZFR3?=
 =?utf-8?B?RVJlQWJzMnZxS213VFhVSU5lR2pYcEdhdnNlMmFuSk5zUXRTV0I4dUI2T1dS?=
 =?utf-8?B?RzE3enp1cUM2djlYYWFjMmRDT21HdXhna2ZKWHo2eWRKblE2Y2F1M0Z0SWtT?=
 =?utf-8?B?ZUtnaFRDK0dHZmRYTndSbVVXWkoyRDRldjZRVUlFdTN1TFNPd0MrS1U5alVq?=
 =?utf-8?B?akFrSnJWVkg0cUZ4eWpLUXJnTGtsdnhQME84NnkwT1ZMbE9kNUR4SkQ0U0xG?=
 =?utf-8?B?SDZDYjJhY1pwVnovY25OQTdYbGlYZ3NtRStFMzV6aTg2NE5UYktua0hPS2tV?=
 =?utf-8?B?N3JId2ViRURMbGpVTG9sYmxOWG1oU1JjR2lIV2dZSXJKQmh1eFBaL2hpSXRk?=
 =?utf-8?B?Y2FFZWJrVmljTmZNOXNXWUJ3YmtLQ3A1M0hwdVdiQUNCaHBKM05GSm9Sc01a?=
 =?utf-8?B?VE1oNlFETWxVQjZTUVpiY2t1K3ovaGUwT3lIcTRoL2hLTEd2SzViYjhxeEY3?=
 =?utf-8?B?QkJYT2IwSUYyTTA2YVdPeXRpaFprUGFScUt0R0loZzlrOWxuY0UrRlBpRXhz?=
 =?utf-8?B?OXBIbW9WR2ROOStsbE1mNUtnSWsvM3FEL2c4NXltbWl3MmlpNWJFQ1N0cVdK?=
 =?utf-8?B?dGMrbWxpWnBRZUphYm0yQnFUTTkvN3lkUVpVc0NZTGN2WmJwUjZXM2Z4dlQ2?=
 =?utf-8?B?WEpoK1lHM3AxSndSbjB3cHlSTEVQR0doZ3BUNU5lencrRlArTXZRb212QTZ6?=
 =?utf-8?B?aGZkN2p5ZGVONVVQcXFVQTh0UjJURlRna01DSFpwRUhRbHFDdXlJYk1JR08r?=
 =?utf-8?Q?5zUb9xx43SCHF2rCz3?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 c6ed3f14-5dda-4141-7272-08d9bb319922
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2021 16:33:14.9723
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 fZFtY9J+c2k3Gc3HNq/tFO5Iwed8h9H1Apjuze4XEBsp7pgqGJ5Z/K1PlL8kOa22hChqzv5FJlPKmlHybUoj8TkXDmRpfMr6ZfGryBGFN3U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4008
X-Proofpoint-ORIG-GUID: wN6Y1N1ZZ8siytrkgwDwehShWxxpoQ8P
X-Proofpoint-GUID: wN6Y1N1ZZ8siytrkgwDwehShWxxpoQ8P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2021-12-09_07,2021-12-08_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 mlxlogscore=880
 mlxscore=0 clxscore=1011 spamscore=0 priorityscore=1501 adultscore=0
 bulkscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2112090088
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Dec 2021 16:33:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55536

--------------c1vk6jEQJXfunOZv4MChsKEN
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Alexandre, Anuj, Bruce, Daiane, Joshua, Michael, Ross, 
Saul, Stephen, Steve, Randy, Richard, Tim, Trevor

*ARs:*

N/A

*Notes:*

There was no meeting for 12/2/2021 due to Yocto Summit

*Medium+ 3.5 Unassigned Enhancements/Bugs: *75 (Last week 73)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *38**(Last week 38)

*AB Bugs: *67 (Last week 61)
--------------c1vk6jEQJXfunOZv4MChsKEN
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Alexandre, Anuj, Bruce, Daiane, Joshua,
        Michael, Ross, Saul, Stephen, Steve, Randy, Richard, Tim, Trevor
        <br>
      </p>
      <p><b>ARs:</b></p>
      <p>N/A<br>
      </p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <p>There was no meeting for 12/2/2021 due to Yocto Summit<br>
    </p>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs: </b>75 (Last week
        73)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>38<b> </b>(Last
      week 38)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>67
      (Last week 61)<br>
    </div>
  </body>
</html>
--------------c1vk6jEQJXfunOZv4MChsKEN--

