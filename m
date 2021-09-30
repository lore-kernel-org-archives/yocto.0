Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C3B2C433F5
	for <webhook@archiver.kernel.org>; Thu, 30 Sep 2021 15:39:57 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web09.14404.1633016395698391675
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Sep 2021 08:39:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=ROiHvsmk;
 spf=pass (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=59078d941b=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id
 18UEp4U9007578;
	Thu, 30 Sep 2021 15:39:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : subject :
 to : cc : message-id : date : content-type : mime-version; s=PPS06212021;
 bh=wOZQgLzlpRNvyJXewRcSXigsoPT/skcGgwNnfPF9qmM=;
 b=ROiHvsmkJ9KtZoZgAJSO+sMJRgR8AIJNM8sFEE4M6gG+5eLDtUiwZfIIun4ounq8nxW/
 utlcwgSxGtJJLkhgjfIbfVQ9HiRpEPHODmUzP6xdc+dcq5XUoOl3+Tryxd9yBqEluGF8
 HHrxuOjVLXtROT0xZN8zpteeovZ95R+m6RsT0qoTKxtXTym3d30uV9OrBDEqaNkjEbkY
 /+eSXsNtei4Ck8qc1rsH7Ty45kLggF/6hU+s/f3vHUxOAXa2Dj7fcvEH4unbpo8S1mGw
 9fAkfNIonls+F7itSNobGPvEHsvkruCnlVeGcLBVmoVeuvuI72XDnSKTkKurgaLENtI6 KQ==
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2173.outbound.protection.outlook.com [104.47.57.173])
	by mx0a-0064b401.pphosted.com with ESMTP id 3bcrpfhacs-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 30 Sep 2021 15:39:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=izqsxm1FHsnPVfvm4lsUculwpUCHsNU325XmnCd0qewbbSOEXUHGcKBQtwhu+OV2RIt9m2Zv33mUvDy2Tm6smFDU4K6BxMHEuI0ZnFyiayWz9AAjznoYlUBoSlnVAicFutrZZJRqrXo6W3uBf42DdHzkBCDVVBWS5C2GcojuHpOkhJwc/meOH9IX4gXIvUJeqSNxntZoUPg6CueTGK1KNRPKB/LEelSz/1rox/pLTse1xu5nSgckke/eNNfXRL+cXTtxteMDtyiLPibnizsqEchW6P+8A/1iCLrPsMY9OOo3DyrhREeeHLOA5EOfIvcbav6WsgMKvQL0zR0Kq2pMUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=wOZQgLzlpRNvyJXewRcSXigsoPT/skcGgwNnfPF9qmM=;
 b=OUjzzR2HlUzakBbINlppB3D9DHY3tTaNDqkmtLcgRHnVPz1CTP7z73wifKV4dNpHIc6Hm3uZ+8qPcHmyca4XZrVVqI0XCOFfLsDtdRPDuNtuinNICW1Zwa5bX5/hSMSrbFqWmdtf+67PQZAWg/XrVkZxCxSGoZhiGBNi/lHutO9i9ixYA6E6FQKm5BBiixaqPvESv7BAG7gBVWO48EjTGWU4xq3j3nP4qVMZvIgf/lno7ZCo0AFTKUDDGkSh+Ve+j2iU1aW+NEfoYPoFPWaOrc7mnCfBiqKO9/zGY4/XPXEivbcI7Q/ulzrq7Uv4i+/2zUugYniT1+bsOdwbiwTdfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: foundries.io; dkim=none (message not signed)
 header.d=none;foundries.io; dmarc=none action=none header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BYAPR11MB3224.namprd11.prod.outlook.com (2603:10b6:a03:77::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.17; Thu, 30 Sep
 2021 15:39:43 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::fdd3:dc0f:a385:34d1]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::fdd3:dc0f:a385:34d1%4]) with mapi id 15.20.4544.021; Thu, 30 Sep 2021
 15:39:43 +0000
From: Trevor Gamblin <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 9/30/2021
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        trevor.gamblin@windriver.com, steve@sakoman.com,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        alexandre.belloni@bootlin.com, Ross Burton <ross@burtonini.com>,
        "Wold, Saul" <saul.wold@windriver.com>,
        "MacLeod, Randy" <Randy.MacLeod@windriver.com>,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>,
        Michael Opdenacker <michael.opdenacker@bootlin.com>,
        "timothy.t.orling@intel.com" <timothy.t.orling@intel.com>,
        oobitots@cisco.com, daiane.angolini@foundries.io
Message-ID: <9f4c6686-b32c-590f-d260-17097b47d290@windriver.com>
Date: Thu, 30 Sep 2021 11:39:38 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
Content-Type: multipart/alternative;
 boundary="------------26F440F22A6B20FD712536CC"
Content-Language: en-US
X-ClientProxiedBy: MN2PR19CA0052.namprd19.prod.outlook.com
 (2603:10b6:208:19b::29) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
Received: from [IPv6:2607:fea8:c29d:d7c0::81de] (2607:fea8:c29d:d7c0::81de) by
 MN2PR19CA0052.namprd19.prod.outlook.com (2603:10b6:208:19b::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.14 via Frontend
 Transport; Thu, 30 Sep 2021 15:39:40 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c003169b-60a6-447f-fc28-08d98428858a
X-MS-TrafficTypeDiagnostic: BYAPR11MB3224:
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
 <BYAPR11MB3224FCE70518B6A03A7E67F89FAA9@BYAPR11MB3224.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2657;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
 cSv0+HcJXm1sM/ZIEFMELTugO0PPFKTnYEx0TxXIFGLx/ePcpACWQfvFZ7qcxEy2NZqBCJUw1iniFKj4wm6SMxc1UcnraqKoHq8VqVmV0sYRulU9+LvmRXrBOoh64ZiMCuAs6KRb/yC6ba1RbZ26kGgbqDlvnYXkBg82GyLKpNDwC6+ZAjsJ9XV+eg/hJayMc6Rfp2IxI+Y3TgQN1i4yNuCtv4xEyw9WiVpzxlAdauOoYo2g1d1jYi6mfNoyr8F3IdMx5bP0VegNjBa8j1Ss37Lmc8cv4i4W5OP0aAfW70y43p0KMmiaYrQxz4/zfDOHGB6WcyH/lWnWtt8GWOSS0eKDKG7RKGjtdMU+wBSEa8ktJwAh/BPiJnnNRUX1WY5WGiN9qckiBgA6an0QgKWClBbbFtaGxj9H3UukI0xBL5s6vXoAaqTdPHvNXSnjMvccBCH/m76fNiNrRkvJEN9ZlYgkXfcGLVaXXxFrSiE3Be8WvYyImJJAgoo80fYj2kZHIM7rytY/jaM5J1CsVDvgOjNY4WM1FkGRlTvadJP/jKOvlsBWaPRCa0oaxl52klX85wWjeg8WQWBBjgNgRY4qIMczMt3z4vCLbJyYQ+6SQ6pARl8ngyQ4HJf7rdY5CG3sB84junexZDwsn3Y1w3nbY7akFg+DTYgSQijwbhf1d/RWiISDAKKD75sbpt0Il6ExFsW6vIsmJQFc046Jm4EKPz6Hdg32HigGGOLguo5g2EADEwNnQFEUe2LjZbuWMoCMD9D3SRfh4Nh/v6hf1ryId3TrbDb9JHBBRpeTxmg2L0/PII43p7CGr5X8MWZIMtk0ZEvIeiZmTbhIaTBXr7JX9vZfuC7c/ly5FoYRcum+qD0=
X-Forefront-Antispam-Report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(66556008)(66476007)(7416002)(186003)(38100700002)(31686004)(86362001)(31696002)(508600001)(8936002)(6486002)(2616005)(966005)(4326008)(44832011)(2906002)(33964004)(54906003)(5660300002)(36756003)(66946007)(8676002)(6916009)(316002)(166002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
 =?utf-8?B?cVBNK3F5NjkyRWtwMS9ORTVNZWtqOGQzRlZqMWxrNVFYS05CaUtkeWxzRjc2?=
 =?utf-8?B?Tm1ZbzZsUmxiUlZPWlU4aGZaQ0lmeSt3emhyWWdYemhDVFVveXplb2VQYzFs?=
 =?utf-8?B?dGxzZC9zSmZCQkZWNWVFMlljR2pyUEJialh3b0dnYURrc2dsTEFtZHdrNzVC?=
 =?utf-8?B?ZXh6M1JOSVVFWWF2ZzJmT1piWlIxZmlYMjJmOTY2M3V4c2MyZUxIUFdKUG5l?=
 =?utf-8?B?RFNUVXV1T0xDMHRJV3RMVU5aQlphRm1EMzlaUDFwdjdETitRYUVqREJBQmVD?=
 =?utf-8?B?dWk5dWlRK3pMeTlDV0tmYXc1anVJdUZrZmFZWGk2bVpOTTd1QWprNjJ1Qkx4?=
 =?utf-8?B?SnFKMGNYeEdscTIySmtaZXdTWWMyWmk2Q1lUMVptdUd4T2ZYd3hNREtKUUN4?=
 =?utf-8?B?Y3l2TDBFTitqWDB2Y1NLbUJ5Y3FvZjlBZXZNQ0tGS2d0L1BESWs2N1dGMnpE?=
 =?utf-8?B?V053MFJDL25KVzRWUytmTmNCdHJXUUI5ck0wNVJ1azVzZ09VT3V0QVFuZjV5?=
 =?utf-8?B?WUMwNGJQdVVQR0ZyM1RNRjNTNzNFNExGZzMyN28wRCtZb3NwbHV6V3NHS1BO?=
 =?utf-8?B?S0VCQmIxbHp0S0dRMnJiRWE2VUhrUzdRU0g1aE1NTVpIT1Mra3BDS2trbFI0?=
 =?utf-8?B?bmRBdHkzdzVkQXlJZFJBTjREMDVjaXlVKzQ5MFQyRkZOUkN2UWI4WmF4SklS?=
 =?utf-8?B?YjBEQlJobFYyMmtjRFhSNXNMTkJpQ2RLRkl0OC9vSmdTVVFKblJRM05ENTVR?=
 =?utf-8?B?a3A0Q2xtak9QZ1BPS0M4bitRa1orM0RHcDBUaUlFdERsKytDbFNVMFc0cDFx?=
 =?utf-8?B?UG5oZzI3cmNZM0ZvNC9jUFdkQi91RmhJZ1I5azNmbXl6VWJPNDQwVDR6WmhD?=
 =?utf-8?B?dDZ1bmc0UWVtaGVqakk5NGx1TzNlbWJIWjBoKzBtMFQ2UktPVTlCNjlKTlVk?=
 =?utf-8?B?bTJ6NDQycXlBQkhyMUY2WWhoYlB0TDd5T0JGdzh2ZDlDVDVYWnRqVENYZzJi?=
 =?utf-8?B?UlBPcVdsSFZLSGcxYWU5a2VUbWwyaVJXUzU2KzZKbkFCVzFVTVU1VDFiSTVM?=
 =?utf-8?B?Yng4MStBT05Hd1g2ZFBFbjREelc2K0RtQmZsYkx5cXBRWEwrbXUzdVdjYzNF?=
 =?utf-8?B?R0g1THVaTGRTR0hIR21EN0JuT3ZxOXRvUTc4UnpDRkZNdW5UOUxVaGFKVWVK?=
 =?utf-8?B?RHhtaHRrcjRjelpSMUVSemxmek1wL1B4RGs4eDlrOXhpM1htVnQ4amtYNGda?=
 =?utf-8?B?NkRKSDJ3N1FnNXFXeGRGbmxDWitBR3NZdlNib1Vwd1l2MU5oMCtYZ0h4V3ZS?=
 =?utf-8?B?SmNwb05jQ0pZZ3V3U3gyL1hCdisvRjI0OXJHT3JmZU95TnpFbG45QmJDNm42?=
 =?utf-8?B?c2FEckNqUGxBTEN6cyt4VEVCTXRZS2pPU2hwbGlaelhITkM2TnMveWhJZnRj?=
 =?utf-8?B?RWppNmgzbWlmVVJwNnc0ZTFzL0N1MmIxNGFLUEpQNmFnWmFrRzh1c1NNUHA5?=
 =?utf-8?B?NUQ0cXZaZk14N3ltcnI4ZWgzQjNsOVphS1RwMU1zY2RVRlUwS205TkZVbXFH?=
 =?utf-8?B?MHo1QmVlZlUxa2c1RXBRMTFOUmR2OFZxSmNkRm5BNDN5ZVVHQmZOaEJrOXBt?=
 =?utf-8?B?dXd5WHJKeUhhSVBHSnFIWW80ZUUzb1JsaVRqU2prNHJ4amROb3oxVEdNcHVM?=
 =?utf-8?B?SCtEdENhdmdCcDk5Y2x3V2VlVzFiVGxyZEdsSk5aZ3BweUhYQ3hCMmRrRE1a?=
 =?utf-8?B?ejlPZ3VwSFJTcCs4ckxqNzdEb2tJcDVoZm9QOVhETzVwSHEzeGE5dTY2TUdH?=
 =?utf-8?B?aHNLczdpMlJZRm9xMUgrZz09?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 c003169b-60a6-447f-fc28-08d98428858a
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2021 15:39:42.7799
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 ikKWIg+QnmlMucLtF+em5Kk2chuKa99STg2lxfMNswUXKcPE/UJpuRQLzj0H1QYdBYZhHhMBfFX4Esio1qYpfwCrHBsJgbFXxox4skv+1Oc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3224
X-Proofpoint-GUID: FT7UgaKztSpNy03ikgwmsv-x9i9t_Jt-
X-Proofpoint-ORIG-GUID: FT7UgaKztSpNy03ikgwmsv-x9i9t_Jt-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-09-30_05,2021-09-30_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 adultscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 mlxlogscore=778 clxscore=1011 mlxscore=0 impostorscore=0 bulkscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2109300096
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Sep 2021 15:39:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54921

--------------26F440F22A6B20FD712536CC
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees:* Alex, Diane, Joshua, Michael, Oleksiy, Randy, Richard, 
Ross, Saul, Stephen, Steve, Tim, Trevor

*ARs:*

- Trevor to revisit Make parallelization as part of look at bugs 14564 
and 14565 (originally encountered errors such as 
https://errors.yoctoproject.org/Errors/Details/593109/while attempting 
to add load average checking to dunfell)

*Notes:*
*
*
- N/A

*Medium+ 3.4 Unassigned Enhancements/Bugs: *69 (Last week 68)

*Medium+ 3.5 Unassigned Enhancements/Bugs: *10 (No change)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *39**(No change)

*AB-INT Bugs: *62 (Last week 54)

--------------26F440F22A6B20FD712536CC
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees:</b> Alex, Diane, Joshua, Michael, Oleksiy, Randy,
        Richard, Ross, Saul, Stephen, Steve, Tim, Trevor<br>
      </p>
      <p><b>ARs:</b></p>
    </div>
    - Trevor to revisit Make parallelization as part of look at bugs
    14564 and 14565 (originally encountered errors such as <a class="moz-txt-link-freetext" href="https://errors.yoctoproject.org/Errors/Details/593109/">https://errors.yoctoproject.org/Errors/Details/593109/</a><span class="moz-txt-link-freetext"> while attempting to add load
      average checking to dunfell)</span>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <div class="moz-text-html" lang="x-unicode"><b><br>
      </b></div>
    <div class="moz-text-html" lang="x-unicode">- N/A<br>
    </div>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.4 Unassigned Enhancements/Bugs: </b>69 (Last week
        68)</p>
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs: </b>10 (No
        change)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>39<b> </b>(No
      change)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB-INT Bugs: </b>62
      (Last week 54)<br>
    </div>
  </body>
</html>

--------------26F440F22A6B20FD712536CC--

