Return-Path: <sakib.sajal@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4AC8FC433FE
	for <webhook@archiver.kernel.org>; Thu,  6 Oct 2022 14:52:19 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web09.6830.1665067930154255441
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Oct 2022 07:52:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Kf6DAqaE;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=7278530727=sakib.sajal@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 296Bwgrg018776;
	Thu, 6 Oct 2022 07:51:50 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=itCF/oMAz5A5Rnd03khpFhr8aQv6fu7mT6wz8A+Pcfg=;
 b=Kf6DAqaEOrADegjGUh+7ST/c7nUn6F2ZzaJRGxyBd5YPiXRi8zZYfT7Rh74LErqBRpEK
 W5/qQQJsDNVwPYFgEXuhpXuLWGq2vfweYhlRN+M4hN45PkJccx0OAiREfULOrwnzI+FR
 M+joKGWvyF9LirNeQRdxqV0YuPhwprKymrAkJWlg/BwyVxheaQttHR5+Lb19pI4rmp0H
 GWKCgVuaryKVhg+EhOHEwGAnEqyV6ag4iIX5aPLaZn9d9IyTXBEiB0ozKOO5+NeLznKf
 eeKiYMlzqW6PUUm05u0Au8HvrkgKjL5UMtYyqjNAEOKxsSm3zPkb2YhiBF8eL0naEqW8 3A==
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2101.outbound.protection.outlook.com [104.47.70.101])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3k1meh8gff-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 06 Oct 2022 07:51:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B+fT1QoRfr8Y9zJeg96MAhN1VmPpaEyOmTo2tX3KopQpMsGobkWFu9Tf5EPcYaDcH+fgb78UjM+06sdfLBKMIbBxApzcknl7UVYG4Odj6qS8ks+3xPe3inqf1KcpozebTsCfrcziHg6ArGpnYr3Gqha5OzJ/mKgE04vYQrhpKTRIN5trMZbTPcU4Ow6N0pOmsmrjstwKDwZW/AbZrhHFc9ATVg5cBn+nkQDMEt5JY99U8fsbm6rmy7FwB9WbRSzSl6GDts/F5PeNCr6BlQPdGF5LHHPAOxT/T3PqMKgjOd6hJ3nrbms1Qu6QhSPqm1/Pffa/DqxWapqS25epgEqZrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=itCF/oMAz5A5Rnd03khpFhr8aQv6fu7mT6wz8A+Pcfg=;
 b=j4G2nD5iPmvvBKfQsurFaTWwIdOvgokZkoIWVYipkANeNlyHwPLZ0z0cGDIZUHcV8lMZ2lLeklpVq8f5BjWcQDMFrjIUtS4ng837wW7uqKdnUv4A10ibno0DpQuxjOSqv+vDkKEoeB/hLVAMf7tbumzDDi6pgacFaj/yUHLCatBjshwq8eI/P3hvrxnTHRX0b8tjfhVmwzj6zGtsvdEbQ0puoyg65cqqvr/yab6oux9qDCnblUm2i3CwaJLXEs2whZE8fzcwHsirF+JI0BdmAigOVHffve0LJ1ba+4BJIV8cXPVgn0p5mwd8mjEje3/7H/34EzAJZ4paXBtrg17raA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB2538.namprd11.prod.outlook.com (2603:10b6:5:be::20) by
 SA1PR11MB7015.namprd11.prod.outlook.com (2603:10b6:806:2b8::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.24; Thu, 6 Oct
 2022 14:51:45 +0000
Received: from DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::857e:8b45:98bb:2336]) by DM6PR11MB2538.namprd11.prod.outlook.com
 ([fe80::857e:8b45:98bb:2336%2]) with mapi id 15.20.5676.033; Thu, 6 Oct 2022
 14:51:45 +0000
Content-Type: multipart/alternative;
 boundary="------------wdROPYfoF5riSs0AROjDm0gK"
Message-ID: <04ed112a-1061-ac2f-8b4a-d33b1b206216@windriver.com>
Date: Thu, 6 Oct 2022 10:51:41 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
From: Sakib Sajal <sakib.sajal@windriver.com>
Subject: [yocto] Minutes: Yocto Project Weekly Triage Meeting 10/06/2022
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
X-ClientProxiedBy: YT3PR01CA0081.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:84::27) To DM6PR11MB2538.namprd11.prod.outlook.com
 (2603:10b6:5:be::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2538:EE_|SA1PR11MB7015:EE_
X-MS-Office365-Filtering-Correlation-Id: 72cfe337-bace-4bca-b39e-08daa7aa49ce
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	QfTVe1oN9qPOKSmGK2XVUsFzaTOJMM5dpBMoXOnWF/p2B1SdG+FV1DqSD+Xp84vsAvwPsRZ7u2H4ova/VDHZLbC+WbjvaFzWOS1+46Jmra5tFERMXuAY1LXdyq6UMxZ/cLZquv6QirXWMRO9zDN0nIdDveFKS6zUJNvZG/hBiJF9zcBDx3uKWZu4ZKeCZcbIkCtbQnfcf7QT5DbdNQJTnL1Szk0slxCWPtkgjg4VCMQqh8dux+3D9ySOXD64HZvDng5RHNW2zFts96dVqnQlK5KJK636pbnpb4yj8V9r/V7rZdcqQ/H7S75q2kVOOPaMP7nHHx6N8nxUF9KQBFiU/95UWQsNvXSB7P2fZqe+6N5PH8pq+/wZgAxIX0YgLQ494y9Nv3JBpItaIUoL4kU83Bq2EsGD5R1BSLxENPw0d5aOaAfks24SwVVtMWNDgzxWOZZdCdylpvTeYyMjGG0pVmcWYvxYyG+dtn0E/q2OmBCk02rjOSwi2VCj1+apcfKCnwVVOrhfutVcuHDjf7vl6JEsIWjmLVSwgxw1oPOweUpUDUMx3+j4UGWfU9TKqiX6HSb5mt12aXEwSngH1oOTne4JpWA/D5t6ty1gekH6IixPtNef9xYyeuq2zeS50pGK+7hlaLML38h2D1u9Vl5LpD767AFmtlLkqVfKj0XCAdv8kS8MBbQHYyxbFs7efgntAoGxz+8I+tnrJRlHK0++ZvouJQKr8Mz4OIf09pCI6lINDR2+6l8+6lMP8EVbr0e2CfqK3+x0XYhIj1rsmLINHkAtWwBdl/o5dl38dAf4SA/h/m6wEUK7lo5LDUuEc4an
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB2538.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(39850400004)(136003)(376002)(346002)(366004)(451199015)(2906002)(31686004)(86362001)(2616005)(186003)(31696002)(44832011)(41300700001)(54906003)(7416002)(8936002)(26005)(5660300002)(6512007)(6486002)(36756003)(8676002)(66476007)(66556008)(6916009)(4326008)(966005)(6666004)(478600001)(33964004)(6506007)(316002)(66946007)(38100700002)(166002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?d2ZaNG5VNEdEczRyTytTYXE1cFhPMURSSVcvdUFHTDF0NTdoS1dlcVVnMnNp?=
 =?utf-8?B?eVN0MDlwOEpualRTaWhHNzNyclBiSUFzR1ZCUFBaZkoxa0dqNHY1UHRrZkF5?=
 =?utf-8?B?NmVXNUlKZHpuVXh4SmdvS0QzK3hRdktKdkVYSk9wMWRYNnlTYkpjdU5oaHFD?=
 =?utf-8?B?cTdRVVY1VkVwK045bkQyOERXTkswSS9paEQweThmUlVic281Mm9mcDdKUTF0?=
 =?utf-8?B?OU03OEN1ZnAzUldxT0lVZVJidnR3ZWhyMWFJZ2ViMUFTWHdkN1dWMzFoZUho?=
 =?utf-8?B?R1BhR25Wem1zTTQ4akk5Rk45V29maG4rbVdHNldyYmlOOGFOR3U3VmtDOUw3?=
 =?utf-8?B?UnNOREJ4cEJnMjJOOWdFcjhSVXZQOW92K1dwTkpHWW5leUVoUndaVFVOUkxD?=
 =?utf-8?B?NDBuMjlSSnk2R1JyUFVWYVF6QXZwQzNyU1pYekdwMmp3VG5nZnMya0ZYaTlE?=
 =?utf-8?B?Lys4dTVzbThIRUtOOU9tMy92T0pOL25TcnVMemhDN3dSdzhTMk1ld2p3L2VC?=
 =?utf-8?B?ZFN1aE9kQmtSa09laktXK0puYkxzRXR6OGhHZi9IdTh4M3RuekVLbVVJSzQ2?=
 =?utf-8?B?ZXZBTGpPb2F5WmN5RWs5OFE4R1QvS0kxOVUrOFRONTcxaSt1RWgwNnFjQ29z?=
 =?utf-8?B?eXh5ZlBWby9TTWFsbmFmcW4wNG9vaEJzSjZJS3ByRWxiNGZOeFNzNWF0VHdZ?=
 =?utf-8?B?akIrMXdzU1Q3WVF4SkpUSGJzcG1uQ1AzY25Zdm1pMEtUakkxTkM5YVJNQWhY?=
 =?utf-8?B?Skk0cG9DUm9ReVQ0TERUc3R1MnR1M1VGdnFiZk1EU3Q5V0VOMXFMQ081aytV?=
 =?utf-8?B?YnUzQis0dXhxd094R3QwU0F1RE4rQWYzU0dtaWFWZUIxbEFXOXUvaTNpQnM4?=
 =?utf-8?B?VEVGeEhLa1FCYlNCbEVpc0UwTUc3aWQzUTI3WnNNWlU1aG9vNlE1RjVPZ214?=
 =?utf-8?B?eWFCd3pFWlZueDB5L0U0eXhNQVNqWVBNK1lNc0Y2ZmRCanVZc3h1MmlPWHlS?=
 =?utf-8?B?VzBqdzlMTmducEZSbXdBMmw1V2t2YWpBN3RQSUpCYUtvS1B3Q0ZNa1k5T2Jw?=
 =?utf-8?B?ZXArVXcvVmo5Y3NxYlozSUlxcERnak5iejJkN05RbkpUS3VwMGp4ZXE3Q0Vt?=
 =?utf-8?B?NjI4L3ZxVEd5YTh5dHlzOFJiZnJQVnc4WWJIaUlOUXh4ZzFlT3luL2tlazBQ?=
 =?utf-8?B?MGNyNUtKQ3poNHFqejl2VWovbUh6VExCU25ndjg2SW1EcDZwTzFSNXVscnJw?=
 =?utf-8?B?VXNrZXBWYlRrd0NhVnZNMlIvdjAxMVJzU3ozc3k1eWpXMlRVY0Fnb1o0emZa?=
 =?utf-8?B?SUZCYVp4NGF2ZzZRNHJKYWQxSjEzZVY0RVFXVFRhZ0p0ZXJSWjRxUVEwaDF3?=
 =?utf-8?B?QVBLa2ltcmJ5a0pGaE0rSmRSM0dGTXlnellDNlRTUXpjUlVrWVJMMHduSG51?=
 =?utf-8?B?dGtuQUkvV2N0ZE5tZEYxaXd5cGFWc3hsS1FPaFdJakIwMU5Gd3RCUWRQSVdS?=
 =?utf-8?B?TW05cGd3NkNmSmZpUFh0RFZFZFZDK1ZlRzYrdzVZT2plbVlrNE9leHY3azM2?=
 =?utf-8?B?bHY5T0VIMGhxek9wQ09mdkVUV3N2WXNsOUdRcWxJaUxzR0tXN3NLbXZFOEdE?=
 =?utf-8?B?NXNFV0x4Vm11VlErRE5jK3RGMmlET1M3eHlFV21RODd1T21lRDRjRzMwU05F?=
 =?utf-8?B?eE9IZE15K0pOVGRYc1FObTgxdWlKR04rMVRQckxCMGdaY1I5OWpSUURYWGNk?=
 =?utf-8?B?VXBlUE56SlhDbFptemlmWjh5QTh6Q3NwcUxxUWVORE5qeUd5czVLd24yMWZG?=
 =?utf-8?B?MlJ3VEJpbDZ4cFpQT3BYcW9tTlFLeWgvS0RSc3VaZHVSblNnUTR6QVpTZTdi?=
 =?utf-8?B?YzdRSDRweHFkMGp3Uzl2L1ZHSDgwRUFEeldvT0pDajdyRFlUd0dPVHg1S1pY?=
 =?utf-8?B?cTFXVmc0SXplTnMxaTRrdm9yaXpVdVhELzJkbU51c0Z0dzIyUFJqeDJKZDFZ?=
 =?utf-8?B?RmxpSTc4SkN5S1Z2dktNR0wrcmFSUi9SNFp5UXlCZ0hOOU16TlBGbXppbEhG?=
 =?utf-8?B?YnF6V1pNRTEvZkkrYk9GdXAzWUluU21SWWVMa1l6aTBZNzRQbGZXMTBQZEpn?=
 =?utf-8?B?TnFMRUVWRzYwNWZza1ZnZHlIRU96cENFRGZRdERscGMwNFRVdWhVN28rMTR2?=
 =?utf-8?B?Q1E9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 72cfe337-bace-4bca-b39e-08daa7aa49ce
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2022 14:51:45.3095
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 MLvn+xSo9mLlcQjUnmEQKzOiUtu8UxScdkvCKzIu6vhv2kpCHoL2wrsFagCrhpaVwoLqc2lHPjnGTVRWvAxxTF4Qd5d+d0wB28+LppSU3eg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7015
X-Proofpoint-GUID: yCDg7sS6EfcZob7i0U0mBD6unlQu-dBE
X-Proofpoint-ORIG-GUID: yCDg7sS6EfcZob7i0U0mBD6unlQu-dBE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-10-06_03,2022-10-06_02,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 spamscore=0
 clxscore=1015 priorityscore=1501 phishscore=0 impostorscore=0 adultscore=0
 suspectscore=0 mlxscore=0 malwarescore=0 lowpriorityscore=0
 mlxlogscore=915 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2210060086
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Oct 2022 14:52:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58275

--------------wdROPYfoF5riSs0AROjDm0gK
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Steve Sakoman, Stephen Jolley, Randy Macleod, Joshua Watt, 
Alexandre Belloni, , Ross Burton, Tim Orling, Alexandre Belloni, Michael 
Opdenacker

*ARs:*

N/A*
*

*Notes:
*
*
*

*Medium+ 4.1 Unassigned Enhancements/Bugs: *27 (Last week 27)

*Medium+ 4.2 Unassigned Enhancements/Bugs: *9 (Last week 8)

*Medium+ 4.99 Unassigned Enhancements/Bugs: *44**(Last week 44)

*AB Bugs: *53 (Last week 54)
--------------wdROPYfoF5riSs0AROjDm0gK
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://urldefense.com/v3/__https://wiki.yoctoproject.org/wiki/Bug_Triage__;!!AjveYdw8EvQ!cAjVArCgL_RlaRXuscB-7FXNeNbEpNLXV5wf6cuuQ5AJ_finBsyqaqIWAMBAw_THa9F-SJpSJTfbDp4zK8Q6ydo_qduobM6c$" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Steve Sakoman, Stephen Jolley, Randy
        Macleod, Joshua Watt, Alexandre Belloni, , Ross Burton, Tim
        Orling, Alexandre Belloni, Michael Opdenacker</p>
      <p><b>ARs:</b></p>
      <p>N/A<b><br>
        </b></p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes: <br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 4.1 Unassigned Enhancements/Bugs: </b>27 (Last week
        27)</p>
      <p><b>Medium+ 4.2 Unassigned Enhancements/Bugs: </b>9 (Last week
        8) </p>
      <b>Medium+ 4.99 Unassigned Enhancements/Bugs: </b>44<b> </b>(Last
      week 44)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>53
      (Last week 54)<br>
    </div>
  </body>
</html>

--------------wdROPYfoF5riSs0AROjDm0gK--

