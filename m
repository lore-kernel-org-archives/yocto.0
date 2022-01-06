Return-Path: <trevor.gamblin@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49A25C433EF
	for <webhook@archiver.kernel.org>; Thu,  6 Jan 2022 16:22:09 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.10998.1641486127797448124
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Jan 2022 08:22:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=qySCi+XE;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=80056b75b6=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 206FQAFE012872;
	Thu, 6 Jan 2022 16:22:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : from : subject : to : cc : mime-version;
 s=PPS06212021; bh=eElc1hAmwqEMhh5eKkxDD+vT3E+IRCFab/wGV6ndITk=;
 b=qySCi+XEX+R+QF/6MSSV0uedOrN0gUHvXTRePRsZl5F4a2v1ofrmRViGSE1aUFREZjR5
 8UJ+KO+Nmo9dx28RV6whBDWCYg1xb/SCdi8K6Y4OWw8UyYC77ZwzmMPCT/2B5a0jK67y
 IJQCkqkqW5H4ASTuK7FyL/FPH7KUQDO10y32wGQyhL18/yzQ6mqCMS0BL/yLUY37gwXH
 EKrFwbon5oAybOthQXfK4Sup/NqJAO4C3HmFbnFibJ+vVmYKa7CgfYgOV0N14j/fMjyU
 VJRu8XzoX0wk0ZjciRVUp3nvNtD8uBku5selniDkiLfOOdHk7paKgJoFqOmgCXZCtieq FQ==
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2104.outbound.protection.outlook.com [104.47.70.104])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3ddnd7gfwp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 06 Jan 2022 16:22:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bVWge+idSCnOIZH2cuAAVYU5Tw7eb+QRcBVEv3LOSTdo/eUO56rYPPiiYvIEBtWqtDZBT9OQySJ4thjI8IbBBRwIuRx1zaefI6kyZzhwR31UgxmxwbaV0dNEvYVJ0tV0KG4d7wMLY5Y5zQj6vTTQ1eiCyeKhoSP6IyaU8tnwzva0JqZ6L8E8yS7a3+zBCM5evPWnURpMFVZ4hmzSAZZkpB5wsE6I8HS7aQX06z3ac8jK/iBNd7EogK3IvibFG87oy/r8PONEhCe4x2rUDkrwZ3x3Ap9fkC221fejojTc6/yAw9FJlFRxi2o205rsMdrrB8fGgA/nQtdDqetRcguugA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eElc1hAmwqEMhh5eKkxDD+vT3E+IRCFab/wGV6ndITk=;
 b=ZSyyTbSl5qyD53214c3rY7Lp+Zibph5f+56UPkBo4/eGBoWQ5fKtO15zb7SGKrLvV9YrsKzuli7Q4qhNeLZ5TBYslIfMBi562B0v7W7PqDHXTRmkDl3juMUxJpFFomOyKClNEXkVBX94Eo7ZI0JnKj5l2IgJtIcgjOWqFXkvRK2syQpkeVn747qTSkPMjn8RwtxyysapDiwmIoPzPjLlh2xTE4waQr+ZlirZ3+7qfgrPilOrFfsYdZRHJJmh6YDsAauKzGXNB9M/XB1kzWIFaljqc8zF+JHrMBm37hBFkxSl3j7+ERe8D5jBcEsTWXA4sbhwxT8rvx+G0JI3dMLoyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BY5PR11MB3894.namprd11.prod.outlook.com (2603:10b6:a03:18c::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.7; Thu, 6 Jan
 2022 16:21:58 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::2c56:bbbb:8def:1f37]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::2c56:bbbb:8def:1f37%5]) with mapi id 15.20.4867.009; Thu, 6 Jan 2022
 16:21:58 +0000
Content-Type: multipart/alternative;
 boundary="------------d0AhAJJK0mRkoHV7i7zrZ50E"
Message-ID: <ad48f342-be1c-eac5-dda7-318c756c9aec@windriver.com>
Date: Thu, 6 Jan 2022 11:21:53 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
From: Trevor Gamblin <trevor.gamblin@windriver.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 1/6/2022
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>,
        trevor.gamblin@windriver.com,
        "MacLeod, Randy"
 <Randy.MacLeod@windriver.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        Steve Sakoman <steve@sakoman.com>,
        "Wold, Saul" <saul.wold@windriver.com>, tim.orling@konsulko.com,
        Michael Opdenacker
 <michael.opdenacker@bootlin.com>,
        alexandre.belloni@bootlin.com,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>
Content-Language: en-US
X-ClientProxiedBy: BL1PR13CA0304.namprd13.prod.outlook.com
 (2603:10b6:208:2c1::9) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ffb527e7-c54b-4a73-12af-08d9d130a950
X-MS-TrafficTypeDiagnostic: BY5PR11MB3894:EE_
X-Microsoft-Antispam-PRVS: 
	<BY5PR11MB3894656B9486332D8174C5619F4C9@BY5PR11MB3894.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	5nLaLcVb+RYz2tl6i9eboE5bJcD/mK0Fx+QmarV/lZdFhUh5KNB/5Xo7gdy5itVUURu77HpVLRx8u/yp9zIMkbYRYoKO2mwojFk8UKedMZjtDswJoeVv3/SbWPfD9IqvhwkjNhjDQ+alG0uiVc8+K39qHYSiaRP4ZubgDGZQGQdcx70vUnguAKYoqIjFJ+2lJR2wzglFjT4zBaYJksQmhmF83HVmkCK2P9z/HZY89uXIbm5wZ3Rc6x1my72+rXWUYQ7fLIUuamEiOs+SqyOErExrPfHfJXNVLUNTLpqD41syppuGnfdzP2M1W4SxYILY4j430UtTDLE2Lu1+O8zHHYt7zb4Hq2Fmx3WENz0WjXZ9b2KXT+Y1Tlo0wUb1koZq1nLUeOAUsRC4BhGHHV35vhKyBehsITQ+hsZaKELioTkks/7i5ERXVpgz7kdHTUGzfRhAWK/Vy0j0NYSuZ4G00a1gQCQotFsqDWuJLm6eGuoPSwFBQhFmGYKZ6RxIksqDrpU0fSIsZZaLfATJGDqqCAlGr9uDXflGdp7oiZznXxCjAZRzV3F+LVdQYEnCcsGl/C9O+MIyCVIUR6Alhr0I4uj+gL92qGxj1ZB++w1M9FR5vqloGxI7Y/9H/bm7cxfBBHDXrUB7C8+kTK+wVGT3tSOjAH/WXnn8tthm2CsXyUvd1TVMJ8EHnlaQs6lOmmHcBwh3MRln8czg2COZevjZT8XvNzbFHmrqqhEUpm/4Ms5hlmh3nl51JHuRP702IxfJ4I/ec3Cm0jqTpGIT1XDK93TJo5ofV1GoveViGYcs2bHio9b+nrM2RgpPGnA/bNTw
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(316002)(166002)(6916009)(38100700002)(508600001)(6486002)(4326008)(44832011)(2616005)(66946007)(66476007)(66556008)(6506007)(6666004)(186003)(966005)(86362001)(31686004)(83380400001)(6512007)(8676002)(2906002)(31696002)(36756003)(54906003)(33964004)(5660300002)(8936002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?LzhKdWxQRDVZbGV6bzlvdjhuMFQ1WUJuQ3ZvV3FVN080bG1vY1F1NDM4Q2Jw?=
 =?utf-8?B?NUFxSlppdkxibHNKRk5sWFVybmJPSndGQm9FZ3VBM2lVUnAyVE94bWs4TGtJ?=
 =?utf-8?B?NzZnemo3RWI5OS9qNVRQVERDL0lvTzcyR2dwQ0t4SGtGcUxRVlhCMnhlcnBV?=
 =?utf-8?B?ZEFQZnAra2FqNllyOHMvMkxZWTk1VkRrODFSNXZGQUkwdDZxMXE1RW16WGpu?=
 =?utf-8?B?d3NDd3RjdGlWUURqVVFqeDBsSXlJUTg2eXZxamhSVUl4MDJmYXVHSGdadnM4?=
 =?utf-8?B?SnpmTFZpeGxrdEEwYWZkQ2NRU0htRGRoS3NIb1EySFhXaU1YYzR0UWpkNS9a?=
 =?utf-8?B?ODlFQXJ2dGFnNmcrcTBnS1BtWUE2SVBvejRubHArTmk0OHdJd2Z6WGhPZkpO?=
 =?utf-8?B?TGN3UEY4bE5ZV29xRTZyQWZHa3AyZlJnRG1RbG9NcWtmZ0IwL1A1UExueDNk?=
 =?utf-8?B?QUlsWHYvTk9pTlU1SFZKaXlFUWtpTVhHMmtFd21yUHp3RTN3Uzd2RHpNam1W?=
 =?utf-8?B?MXZUYk8ycEMyMDF2Tjh1aU9QdGtHejMyejRxTXl1Nk0xWUpKZ2wycWZaVCt4?=
 =?utf-8?B?Vk9HYm5TdmVHUDI5Rm5remN1WlZFRUxCUzVKNTV1b1pMM2t0bk9Cekl1K0s1?=
 =?utf-8?B?VFdMYjFQZktMV01pTXIrMlEvNlhsQ3FjT2V1dnRWMHBMbGd4eDdqWUdBY2F3?=
 =?utf-8?B?Y3RtcUdjb0M0Sk9pZmJYQ2RQRGdSenpWemJuNWMwUWJFaVE4WmJJdzdKZ0s0?=
 =?utf-8?B?OGJYcm9SYndHV3N4b0l6MFp5MUJmbTNCOEZKRlhzSjBGQ3BJOXJYeVR4QXNt?=
 =?utf-8?B?L2ZJcDFRNlhrMnpVZGJHZDQwVTYwTi93TGF0ZmMvY1czSjJKV1RuU200cDlG?=
 =?utf-8?B?OWhPdGorNkFtM21rTlpIWlNtWFZ4ZHdaM1d1Y2hXSmJUREVON29aZC9rMlN1?=
 =?utf-8?B?L2JkZWlnTEN3YU9jS2ZqU2xiVmdQdVRaeFVDUGgvcDRXQ0l1b0NWYURNQW1n?=
 =?utf-8?B?WU53VjFUaGRmOTF4QkhHQmR5WWRLTHdMazZLWUhPTWlpcHV5enJhT0lDaFl1?=
 =?utf-8?B?b0ZtWVNKeTl6YW5iSCt3K2hwTU1tYUhOazVQZFRpRE5ia2pnV1dkT3VJeWhq?=
 =?utf-8?B?R3hqQUEvVGZ4bk9vLzFqTmFXV01KdVpzWVBiOFA0WjA5Zk5YMW1Oai9Fa1hx?=
 =?utf-8?B?azhFZHdnK25UU0xBV1VQNG5uYlFQVFJnS3NHWnlrUmZXcUFGUnpaUjVhL1pW?=
 =?utf-8?B?dGdEejI4L3ZsNHRFYnpaUVgyRlNoelJON25PR1ZBOVMxMnVOc05NeFZqVFlT?=
 =?utf-8?B?YlBadGhCdlhFTnZvUGp0ZzNpUTBIWkh0N1FzRElSYVZLREUwZVZUUWd2QU16?=
 =?utf-8?B?WFdnSDJuOG9SVERFZ1k1Ymw1S3BrbDVqdFBwYS9xcFVYSUFvL0NUZXYvbHVI?=
 =?utf-8?B?T2xZTE0ycHg5a2JzS3pvdnVkN0tLMUJWR3lKYndnU2U3dXRKc2VON052bnhK?=
 =?utf-8?B?WkRZdnlxdG5GdEcrUlpTbGV3eC8zeXVCdkhCWjJ1SWR0UWdKOVRTSmswTCtM?=
 =?utf-8?B?amgyZFZuMWVBYlU3aVJhRWJWdTdldWV6TlVZaHUxeDM3RjltZzduN0Jtek43?=
 =?utf-8?B?azBpL0VEQVVzd21wdjN1WUZOZW9YcDFKWG5lYm12L29BWlVYV3p5cnFpbzZG?=
 =?utf-8?B?RzAxMVFYWUtNYUlJMDZCa0gyanFGOS9NTmFtOWVlbEFTek0vYkxzWVlreGtH?=
 =?utf-8?B?SENFdjZzWjUwVFBNbzJ3aC9RdEV6QmZGeDRhdDRUbFN3YzNMOGNVVFE0ejFr?=
 =?utf-8?B?YWROMGJWcVdxd3JKQjFQeFc0aHFnbEpIcHMxVCtsM3pTQnJBeEpvT0JaRUlX?=
 =?utf-8?B?eG93Y3Jta0dSSXF0TjdPODdWaFdHdFdmMW5ZanVpQmpldklId2p2T0dNaGdl?=
 =?utf-8?B?N0lKSHY2ZjhWMzB2U2dHS1hpVDMyYkkwYlFCVTAxdFlVRWZ1eGtmVUMwM2FI?=
 =?utf-8?B?cDUxRGRqSXc1QXB3aHV4K2lVY3hOTWw4ZkpJOEFyVTJTMUxleE90WW5UOGVE?=
 =?utf-8?B?YW9tWm9vUjRNaVJJOGszZWtmUDkybGF1eGp1U3BmV2dqK0Zaa05aWDI5aWV0?=
 =?utf-8?B?NFhQcTM5R3M4U2srSzhrMlZuNGQ2aXpUczlZMVNpam9IaktGYkRYVGlnNHNa?=
 =?utf-8?B?cVptMTd5Vno5RXAzL1NIaDVseEd0YzI2QW5GV25ORnRkN01JNlhYZjBhd1dn?=
 =?utf-8?B?T3ZMRGJjYjRyRTFjeU9FdFQxaHZKWGlhOE1xaysvQTQ1TkpnTzZFdlNkQkhN?=
 =?utf-8?Q?/NZmoAv/huo9vXa9za?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 ffb527e7-c54b-4a73-12af-08d9d130a950
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2022 16:21:58.1211
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 xVFQXEsca2KIlQqWV8p1iKC2tMHLm18N9hfONV7Nz7wo01QQUXssNaLsS2vFli0JAOCl0TqAETmqj0JYRWQgiCvai230u6q4KRUsTtdLCKA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB3894
X-Proofpoint-GUID: J6aUT0fr_1jRGdL8dwXOiJabCVo15IXw
X-Proofpoint-ORIG-GUID: J6aUT0fr_1jRGdL8dwXOiJabCVo15IXw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-01-06_06,2022-01-06_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 spamscore=0 impostorscore=0 malwarescore=0 suspectscore=0 mlxlogscore=682
 mlxscore=0 bulkscore=0 adultscore=0 phishscore=0 clxscore=1015
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2112160000 definitions=main-2201060114
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Jan 2022 16:22:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55751

--------------d0AhAJJK0mRkoHV7i7zrZ50E
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

*Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage

*Attendees: *Alexandre, Joshua, Michael, Randy, Richard, Saul, Stephen, 
Steve, Tim, Trevor

*ARs:*

- Joshua to send a patch limiting the size of diffoscope output for 
reproducibility

*Notes:*

N/A

*Medium+ 3.5 Unassigned Enhancements/Bugs: *75 (Last week 75)

*Medium+ 3.99 Unassigned Enhancements/Bugs: *38**(Last week 38)

*AB Bugs: *66 (Last week 70)
--------------d0AhAJJK0mRkoHV7i7zrZ50E
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
      <p><b>Attendees: </b>Alexandre, Joshua, Michael, Randy, Richard,
        Saul, Stephen, Steve, Tim, Trevor<br>
      </p>
      <p><b>ARs:</b></p>
      <p>- Joshua to send a patch limiting the size of diffoscope output
        for reproducibility <br>
      </p>
    </div>
    <span class="moz-txt-link-freetext"></span>
    <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
    <p>N/A<br>
    </p>
    <div class="moz-text-html" lang="x-unicode">
      <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs: </b>75 (Last week
        75)<br>
      </p>
      <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>38<b> </b>(Last
      week 38)<br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><br>
    </div>
    <div class="moz-text-html" lang="x-unicode"><b>AB Bugs: </b>66
      (Last week 70)<br>
    </div>
  </body>
</html>
--------------d0AhAJJK0mRkoHV7i7zrZ50E--

