Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BC7AC433EF
	for <webhook@archiver.kernel.org>; Thu, 23 Jun 2022 15:33:49 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web12.9007.1655998423048589591
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jun 2022 08:33:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Ou0t1CKX;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=3173bc0ecf=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 25NDEihV021489;
	Thu, 23 Jun 2022 15:33:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=p3vhI8pBm4K1MGwo6SRz3RIoObs1gVdpytYeCdC3LS0=;
 b=Ou0t1CKXSqQC4FPy21gD6nWB/2FQWz/bOEFsIQ7aYBfHuR+qv8tRhUQ8VKRyfVIAD620
 GfWjdQnHcNlCS9CIUMj4OAllKfE3FroGUwNeO+FtE5svB+kWV3yvyldU0gjAxJbsx/fp
 AH8+Eoxj57qAwgPtdChu4lzoj4cwJqoxBw/G7DLq+fDGSTMGJbiUbRUE6OmA8KxyBSjn
 VoWFiWs3zvtXbMaKKLVg1of+JS5gxVPAWbU9+KJi8wtl/AP7DFGAqtnzfH583S8XFIz/
 tf+zg4emzYauhSfpbefqYOl+RwTcRFQlRs/3fLy0ckphwWOLDFuRuFom5EFHwG4gm6+G pw==
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2104.outbound.protection.outlook.com [104.47.70.104])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3gs3x1c836-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 23 Jun 2022 15:33:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kh+4QYZs3/71H6wclPZd/DLpYKKBTN+4vV6XTdN1pNzGzYzGUKmDcJtSTnAbNLXqiETUa2BCfR2yANnJAOXx48RNzEJLAHCjUjovhDPVvlueYSlMm5PhyPXIBJRmBayzp+M+n8ppjPzTsRBIDLMhcMXBLM7WaPAHsPXLBgk7OsM0w5i6UAQuK4edWIIJgrv5ZwJfiF28tlpGhMsazm1tqiXbbYQFyTUaOuekp/0fZWX1oPmi75ojjNX86A8VKbRrJBhAttu7dKkWfjokSBxkg1rFAeotM1m8mOcirK+a4o1I9uJbrJWkrIW6UKXSQGbzuxikKvKyEnCCv1qy70EDKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p3vhI8pBm4K1MGwo6SRz3RIoObs1gVdpytYeCdC3LS0=;
 b=SlrCQE9skyx/etHH7wlecdu9TFWPYejMu8OAM+oEc0yK8p4yYY3ST761DRQ3JKijRDXVS02AzEf3PmMWF2YLwGQppmHgv0oc/exuot7h/+rBxrMNGuiEOdB8KO3DGjvDg/f3D78/hPT2YLg0LP61okMH5YqrcZfJ8J4pO8L7lfp3CYpfwXPJ2h+3eVu+h2Kky+6rJem7p1al7cjalJGqv7O15olywGJ9zbtKZ2utNL4DNKL0kbQcb/ACTVF9SOwvDSzucLdNzYBKokA1CVpItP0OaTfHGpYK5czquBvI974/YEkNOKA9DYFGKFgHVJ7xFmwisp5rMPjbOIGynhviNw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 SN6PR11MB2765.namprd11.prod.outlook.com (2603:10b6:805:5f::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5353.15; Thu, 23 Jun 2022 15:33:07 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::a807:4bee:8e08:3053]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::a807:4bee:8e08:3053%7]) with mapi id 15.20.5353.022; Thu, 23 Jun 2022
 15:33:07 +0000
Content-Type: multipart/alternative;
 boundary="------------5NY70o8MVcP2J75oNUmL5fxN"
Message-ID: <fb4b056f-6447-c95f-e7dd-00904ec6cce3@windriver.com>
Date: Thu, 23 Jun 2022 11:33:02 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 6/23/2022
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
        aryaman.gupta@windriver.com
Content-Language: en-US
X-ClientProxiedBy: YQBPR0101CA0270.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:c01:68::7) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 560bca53-712b-492d-2a93-08da552dabf7
X-MS-TrafficTypeDiagnostic: SN6PR11MB2765:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ZuPFJ5aLBJTNZ4WTPqGRSWvEUc1xF+f5X5VWfgAjRExXPvRkU1u/AmjgT2wmfq/ussIeeKmGEDG/WIBWVOfz6H26GKCVY21QIqmJlLG0P4Sh2A3i2KuUItPqgflPnuVdFJMK2TY5L85zApEDlaBTmFw1hfc5z5zlL2GoEGGTLo6OC6PNdVsWU5VkR0K8qlOuAPVdfmWoaUW+tK4fGgz2+YfHYDdaQg9APxYRHo3LoCJ7BDI05/K9ApW5P87O3hBkLQGNn8NsUY3VECdn8XOTHu8l/8tptkEox1qbEzTKFPpxwN5ZQz71uxHp/KTaMQ+sDQ27HNtokpy2bbBOjPHIKl4u1Mbs6dAmEHdMROZ33V5XFvJzxlCk8yG2KY+vIogNKPN8MgRRGBRfSVDZ9RQ8JwquA/yYIps2nAXY7vZ7NAQ/j+GE6Fs7aSE563fAG0R9olpY8qGE0kQX+/rhR9DvqeEHAdLbtS+K29Qy0yWaeVpGjWoZwO8lAPKES3SVezaFCrd7TGTU8nfG2x/lxnd0L3No5o7wALbQJGG+jS6ZkXUZdqnqZR54k+kNkLgW9j5owEzskBT6+y8l9TFBOKFDj7+FJs1ZkIvI2mNm8W61wZLvUkLCVI8t2gpNkcivcVZ6aC4afak4cYM1zyDVsOrAik7unsvvRXsba5URJaskKnU3iAuy5vJm5zkbSpJ+Hj13KOfRtN/vpBQsNoRhAt4tdMXbeEOeW92FTr69PlM2RaZWZulj8O6nz+1Rsr4hkgEOJCtO9t1d7/Ipp9pglP0mB7LQzK8TOVtoGbTEe8dnvY8T5wCjfYodxl2wU2CqGfIxTARN5Ie/uSa4R1ooDpZR02riL1/vnBUuH2rQf2gHdAJNccI9HOof35GJ9S7nVsBA
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(366004)(376002)(346002)(39850400004)(136003)(396003)(54906003)(31686004)(52116002)(6666004)(186003)(38350700002)(66946007)(41300700001)(316002)(44832011)(2616005)(8936002)(966005)(6506007)(86362001)(66556008)(5660300002)(6916009)(4326008)(6486002)(36756003)(66476007)(107886003)(33964004)(31696002)(478600001)(166002)(38100700002)(26005)(6512007)(2906002)(8676002)(7416002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZEwvZkhCcEJOVHNjeGU2dTNCVnV1RFNFZHpDVGt3NzNQUHptSWh2bHJqMENI?=
 =?utf-8?B?aUxLMG9zY3h3OEdtNGJaZGo2MFk5QU9GL3Nrc2xuNlh5TkJVRGc2WVhlS1h6?=
 =?utf-8?B?UHZoeno2TlphYmtVVWlaZnFQMWQ5aElmMFVsTFNGdUVsdnBPT3V3QXJDbVRN?=
 =?utf-8?B?WFVwbTgxUWloVWNmUHlYTTRZQ25iNWRJeG5FS1NKRUJ5YkVyREZiaUwwWWJL?=
 =?utf-8?B?NzU3UDIxSjUrdzdWTitXNFl6U2N6MVdxbDUxbHlQa0ZlYVBacVhvaDg1RWZ5?=
 =?utf-8?B?cUZxNWZxNEM1YmJmL0QrZ1laZlVUTWJTaGNFSWV0QXBmQ3J0LzEzQXVKdU9C?=
 =?utf-8?B?SDh0bDRTeEx6RlArckRwZEJvTHp2dWFLMUhlVTVLYU9DczhxMS9JdTBBNXNh?=
 =?utf-8?B?RVY1cGQ1RHlXZEthbEhibWhrbkMzZlJBSWxqTFZEcDVMOTNiMnZoa2UwT3c5?=
 =?utf-8?B?QWRLS1NnMU9ZVWhrY2ZDc0ZqMk53SW1RTldEYitvT3N6M0ZOSlZ3SjhsdEZ3?=
 =?utf-8?B?Qmg2b3B5eC92eTM4TkhGU29MZTFCVWVHVjNhVFhZY1VLMFc2ZWhVd0wvWDNS?=
 =?utf-8?B?NXdUcWJpemdtbUZQVENkQzYwOHJtY2dLY0N0K1ZkVnV0UXRDTEJjOUQwL1ps?=
 =?utf-8?B?cmV0SkZ4QjB6R1VUT3pvb3RWS1EzNzlnNVMxUThlUk5iNEtRcGFnREt5bTlT?=
 =?utf-8?B?ZmdJRll4T1JlSnFHQUJ1ZTNzbXBSY2xXc1p2ZnFpVm1hQnVWVlk4bHdtN3BB?=
 =?utf-8?B?aWpJc0lZWE96dUFWQThpZ0dSWUpYbzR0NmM0djdvMUo4dzRlNnJrYXc2U3l3?=
 =?utf-8?B?Wm5Nc3J0cFBpYlFaSEx1QlprM29zeTliQlJDS0VKaG5YQUs4ZUVhUnNVS3lL?=
 =?utf-8?B?VFFFYXNuNnkyZWtzUWV3WjA4Y0Q3Um1tMmdBVjFta3czdFkzQktjWlZWQW9M?=
 =?utf-8?B?NlFIVko4cjNUdHNuSnlzWnBIWnZlaGNTazd4MzhHYTJUM2ZuOFVad1YzNlQ2?=
 =?utf-8?B?ak9PeGo0TzhOUjhKWW1mUnUweFRBZm5HQSs1WTJUWDlZcmtQYXJVaUh2R21I?=
 =?utf-8?B?bUxoYVJGTGxCK05HTXJaYVV1bEl0VGdXcHA0d3ljcFcxcEc2a2FXWDFzWmpm?=
 =?utf-8?B?RjFSblJGZnpaVzNsazRXS25jYkZtZisyZ1h0cThTcXJuUlluaHprUzZKL0Fm?=
 =?utf-8?B?ZVk1ZktNMUV3K1NzeFBqQ3JEaXhEbTBlMVZpYjM1ekJwMTZ5L0pxNHlpcnNW?=
 =?utf-8?B?SXl5eDQzWG9jek81eGdtZURqaE9ZZ2gwTEs5ZmxLcFVhVjFzUGlUd3VEQWhs?=
 =?utf-8?B?aGtGcndydmxMbmN1R3RvTnVuVlI4N2FuWUFwT3lPcWdyZnhGQ2pOTUJzMW4x?=
 =?utf-8?B?dmhWOSs1TENQS1EwVFUrWHF5RFU4L20rcGk4Y2wvaXc1akJSdW9zUjJLZDU1?=
 =?utf-8?B?a0hsRldnclgraXc4ZWdRaElITXdZeURWNHU1cjZOaGVPNXFDblREY0ZrMnpD?=
 =?utf-8?B?dTlnTFB1N3R2ekw5L0Y3azNjWWNnNUs1UVk3cnY0SE8xOUZQaFd5ZmNpY01z?=
 =?utf-8?B?Mm9sTnRIbk5maFFrdFkrSHYrd2N4dG4zd2ptSmx1SXZuMmhDS2MwNlJQWkVK?=
 =?utf-8?B?K3lQRmNHSFZJMEdnVHZEM1BVeG41d1RvSnkyeUs4MjVQL0FWdlExN0pueS9l?=
 =?utf-8?B?L2hjZXpuelVWcFAyQ0R5TC9tN1ArSzZOUGpvODFpNUpLSzA0ZUNjNU56TW1l?=
 =?utf-8?B?dHhXdGNmYmJoa3FPTFVGMGlibitJalQybmtCVW1IZmJmemxrY296cjBtVi81?=
 =?utf-8?B?RHJqb0pUVlFvQzZTVUdHbUJmNURQZ1pNbnNjTUU4T0JrZGsxWktMY3lzbkQr?=
 =?utf-8?B?WUJpanFJaDRiMFZBMSt0RGc0U1dZTERhYU91ekJhbHNTaWNUdGJOeXR6V1lu?=
 =?utf-8?B?OTNjKzdVOEVUSEZrMTg3clpQSjI2UG5OODRxaFdPcldWZ24xMDcwbEF3d1J2?=
 =?utf-8?B?YUJLZEU1ZmVmQm9wRGZ6TGIyRHNxQjJwYnQ3b0hXTE1tSnlDUGRtQnVSTjdH?=
 =?utf-8?B?TE9ZYTBKZjRNaEthU3ZXVXB4RlQ0QUdHcGNDMjFJWnZGQmpQdnhFUCtmWGdT?=
 =?utf-8?B?VjRocHJFZTl6RnhOTFNINk5Oc00rSmtZd0tkckF6V1l0RzhiQzV0dlFxbS9w?=
 =?utf-8?B?Smc9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 560bca53-712b-492d-2a93-08da552dabf7
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2022 15:33:07.4900
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 WX6Hmy6oO6x3AHtBeZ8hhvUAcazTXwANqvnUJPNz3jc04/86TtV01NRpbjNMAUx49s60pdoGWPGoJ+rczwNGAKjVTKloJH7WGg0pIMkH1oE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2765
X-Proofpoint-GUID: lI5yF2E2ZbbxoPGYMjTMdAd-4uZndgbC
X-Proofpoint-ORIG-GUID: lI5yF2E2ZbbxoPGYMjTMdAd-4uZndgbC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.883,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-06-23_06,2022-06-23_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0
 mlxlogscore=616 spamscore=0 malwarescore=0 bulkscore=0 clxscore=1015
 mlxscore=0 impostorscore=0 adultscore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2204290000 definitions=main-2206230062
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Jun 2022 15:33:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57385

--------------5NY70o8MVcP2J75oNUmL5fxN
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Stephen Jolley, Steve Sakoman, Saul Wold, Luca Ceresoli, 
Michael Opdenacker, Pavel Zhukov, Richard Purdie, Aryaman Gupta, Randy 
Macleod, Ross Burton, Tim Orling

*ARs:*

*Notes:*
N/A*
*
**

*Medium+ 4.1 Unassigned Enhancements/Bugs: *74 (Last week 75)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *45**(Last week 44)

*AB Bugs: *47 (Last week 49)
--------------5NY70o8MVcP2J75oNUmL5fxN
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Stephen Jolley, Steve Sakoman, Saul Wold,
        Luca Ceresoli, Michael Opdenacker, Pavel Zhukov, Richard Purdie,
        Aryaman Gupta, Randy Macleod, Ross Burton, Tim Orling<br>
      </p>
      <p><b>ARs:</b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <div class="moz-text-html" lang="x-unicode">N/A<b><br>
      </b></div>
    <b> </b>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.1 Unassigned Enhancements/Bugs: </b>74 (Last week
        75)<br>
      </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>45<b> </b>(Last
      week 44)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>47
      (Last week 49)<br>
    </div>
  </body>
</html>

--------------5NY70o8MVcP2J75oNUmL5fxN--

