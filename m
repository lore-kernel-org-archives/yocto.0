Return-Path: <hongxu.jia@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF9DEB64DC
	for <webhook@archiver.kernel.org>; Wed, 12 Jul 2023 02:54:39 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.4741.1689130471836292273
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Jul 2023 19:54:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=N+tWorOL;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=6557340de4=hongxu.jia@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 36C2pN7s026913;
	Tue, 11 Jul 2023 19:54:29 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=content-type:message-id:date:subject:to:references:from
	:in-reply-to:mime-version; s=PPS06212021; bh=BTM+5maZUeWc+jcgAP9
	5StNN/m31HVVsWappx73bdug=; b=N+tWorOLv/62Sz+wIiBSO+QPt3/SMKmFIjt
	UzxGHiCCZ8lmUQn3Gh1COaAnuxr/EMBTtYczHhlc9qlTxKKqvBI5e7LeTg5G/JmZ
	epb6GwM4B+XjJ/c/aqCagPu02alPok7pAiHJCmOwas3UN+KMtBaL4FKiOWjcP6gZ
	gcPjTOTcnIST3Gk/wKhwCxsbwElNjma+ed93qEOAcPs7DgQdMiuxUfX6ejMT57Uj
	t60p3qiTN6v+/+EOkDf7MX/fey1Do00Qg8FEsVrotqYt/ahbDPS3sgrDy4+VeF+6
	Z6BycGfSs+CDtoe/LVyW4SP/0vwAO++awHtMix75GWtBcf1p0tQ==
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2171.outbound.protection.outlook.com [104.47.57.171])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3rq32yk0sf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 11 Jul 2023 19:54:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bvIo8f9mDRVtTHvpnBGlTM3+jfZvWM4OZ9B3EZatqkVvOBzjss4qT7xycgFpu03QvE2onkW3gD8oiGnNNV1ug/cobSfwAaeCg4OBZjnMgy0CsXz/H/CEup5pEoW2rmTDg7HY+wGyFiX0VursMlQIhuXXZGlQamG/lBVdniBgAWAhxUSkC++wnFd8eMjHmrtiFMXCvQsa8UQ7nJLVYKX+1LKQvq3j5syxauFHzmMI8LEJRYhOg51xoAmQmGIMHk+Ddyr0Rb1kEMHkAk54pfvmMkHowvqPnU25ONllgTavZc4FDqoMvJV+v9ViVf+Q6FPIcN73anyvJHx64ws8r+1qcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BTM+5maZUeWc+jcgAP95StNN/m31HVVsWappx73bdug=;
 b=VrnWpjbkpOnsQUBvtbkVDEknfyePKk3Tdbesb92W8l6D06fopkYF0tsbECmBwVYBDZ1VnCu3OsYqzPl7UyUJzu2W+P2LyI9IGHEVzsQEp88p/4w2/V/9MsPIvRDoHpQN1CKVK8VPqaGEZFOdSdSMnSihNLtInSRoezvpoFdOclUr5aXSVAySZC7MAQMttpatPuc1pZVCqBKO8MS0yJQvlm3p5UbMcrKQaZoPe8RsM8b+Qz2msOtrtXcimXQO7SmzV0d63ruB7iRO+n5igyxSxOPh2+05LBWya3FVWPzTPNvcdMiWt7eABFrzpoTswo5SH5CsmRl6izMuFUfr0opVVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from MW3PR11MB4633.namprd11.prod.outlook.com (2603:10b6:303:5b::9)
 by SJ0PR11MB5040.namprd11.prod.outlook.com (2603:10b6:a03:2d6::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.30; Wed, 12 Jul
 2023 02:54:27 +0000
Received: from MW3PR11MB4633.namprd11.prod.outlook.com
 ([fe80::e721:1439:a3aa:f61a]) by MW3PR11MB4633.namprd11.prod.outlook.com
 ([fe80::e721:1439:a3aa:f61a%4]) with mapi id 15.20.6565.028; Wed, 12 Jul 2023
 02:54:27 +0000
Content-Type: multipart/alternative;
 boundary="------------NefCMsrlXUG8NeP0qQtOpgnT"
Message-ID: <c11d02de-6a5a-ff51-cc7f-bad1993a1ab4@windriver.com>
Date: Wed, 12 Jul 2023 10:54:18 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [meta-tensorflow][PATCH] bazel.bbclass: Fix build with bazel from
 sstate-cache
Content-Language: en-US
To: Tomasz Dziendzielski <tomasz.dziendzielski@gmail.com>,
        yocto@lists.yoctoproject.org
References: <20230515115507.9216-1-tomasz.dziendzielski@gmail.com>
 <CAJkqNs3=LvFuCC1eQswc3z7rGSphPw5fb+dkZ1-w5TYFjH1XgQ@mail.gmail.com>
From: Hongxu Jia <hongxu.jia@windriver.com>
In-Reply-To: <CAJkqNs3=LvFuCC1eQswc3z7rGSphPw5fb+dkZ1-w5TYFjH1XgQ@mail.gmail.com>
X-ClientProxiedBy: SG2PR04CA0154.apcprd04.prod.outlook.com (2603:1096:4::16)
 To MW3PR11MB4633.namprd11.prod.outlook.com (2603:10b6:303:5b::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4633:EE_|SJ0PR11MB5040:EE_
X-MS-Office365-Filtering-Correlation-Id: 6474df29-f5ff-441b-d1a1-08db82834df3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	upq+/9HZwCsKbLPFUzTPQv0hI5X/6fp+Ra/LbCOxLNr7DBj4+28ideGErba1sShpZjHq2wgU11w7IAaKRgiuFstmHA6jqzkSa37X+CGTfvVXDcJ4MjMUbAXYMPRIHi3DzbpnTN9i0U7mzqrAi83xliVJf7jIhxLzNi9WhpL3/ha8AZ1mYBbuBn0TkF1nhb2vxPBcb990cV+lUDkBDOMAo2J03ZrzEkBQ1em+U48L2Lv9y6W8ljEqdwYOk0IbKsvvwLNY1TPHPNQH7ZiHPZh5Je6hM7JNwG6jKdkKRrDYSzOZqxPIswFYoQV2TKEtkO3iGfPoAjU0x4PztluTGdG7kLB36ivBCCplkl5mblkRtBD3PcqnEIfcAeEOh4KFF7nexT84VZ0LSAFTUDDhNtqRqIZqW+Ieu0PC0HYNlAwTPg4zry07KhWiWuj++PDQbByyc9TFLqXsJa2P7rqnnDCSnodunDtUjdsGzh+bbhUReZ4QfQ0xvUIF1lMh7Gdg76LQcI2bzHaCbdrE3R8oB2CQBEriaZvNu122vhKHXgDYCUtOiLt+vZqH/BLIWZUIbiln5OqqtrNpAZZZHQSKMWhTBaodtN40HoWtntE/cpWsSim3UQu4K4aoYlmqzQN2mAqUs2KTajczT0GQoX/6DWASQA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MW3PR11MB4633.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(346002)(39850400004)(396003)(136003)(366004)(451199021)(31686004)(38100700002)(6666004)(6486002)(478600001)(33964004)(2616005)(83380400001)(31696002)(86362001)(36756003)(2906002)(66946007)(6506007)(26005)(53546011)(186003)(6512007)(8936002)(5660300002)(66556008)(316002)(41300700001)(66476007)(8676002)(44832011)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?L3hHR0xLSks1QnR5QmFyTysvK0hoUXFjb1BteXZTTkFSL2haNzlyaithN0VJ?=
 =?utf-8?B?c3ZLRFJpY2tKYnFLYmlDT1JUYXNQbVBremN5OElLSWM4aDFQK0NVOTJNNmly?=
 =?utf-8?B?L3ZjRmZNWGVPUlFJU011RTZyN0ZNR3ptTm43MGRlNUVjU1U2dTZpck9DVnc4?=
 =?utf-8?B?bVpmMTUway9pOXRWZnZnY3Y1NHBxTGRnK040Y3p6ZEZWUVlBVkVBZWp4Mmtj?=
 =?utf-8?B?eXZKb2d4a3hZTW9kQmhXVG8ycXhPaitWUlhZVnowMEpmMlpGN1k0ODdkbGNs?=
 =?utf-8?B?RTc1TzRvQnZoZVU3cUFvTWVzMXB1bEd4cFl3emVCaWJoNWJPZ0pVRmdtNzlq?=
 =?utf-8?B?RWx0b2g4WmJtUDV5NzN1eGpPeXNZN0NWckp1T0laVXRzbjYrRjUrTnU5Qlcr?=
 =?utf-8?B?RTNjbkE1QU5tc1lQWElKQjlneDdZenRzYjVmMTRydEtFSWZOSnR3Wm9kRHd3?=
 =?utf-8?B?L1hQZ2tHNVdtVUxNK1FlRFRyTm43ejM1MzUxN2FQRkJ0Ykl2MWthekkvcDBi?=
 =?utf-8?B?c1VQbnVTMmtWTEhMTGFtOFhnVnBUZTVCVmN6QjdRNmIzV2FYTjlsWThPNHdm?=
 =?utf-8?B?TkRTN0ErUUdtdkZMdTJQV3hpQUw0M2NmcmNYdzVSM1QvbG1hWC9Ubm1meFVR?=
 =?utf-8?B?VEJJMElFaGVMTmtMRHZ5RUlKaUk2K25IQmYwQ1JVT0NxVjhYRFZlc0dvaS9F?=
 =?utf-8?B?VUdJQnRiSWZ6REdBMVl6eWZ3TXFzbVdMaDZ6RzJ3cUdFV1JPVzBvUjJPQTU1?=
 =?utf-8?B?YVNJL0xPclBMOEY2L0FCNmp0T0ZwK1NwNG4zZWxIdnhCNlpnNWs4NGJzeEU2?=
 =?utf-8?B?SnF3ek5Va0lGdVFpOG9USlVXejM4Ymx0RmlKbmdVMkZDeGhLa1pCSk5md3ly?=
 =?utf-8?B?WUNoT2xZR0pqbjdkelNpZ3JhOGFRZEdsakVod3FZeFJIUU92THZuZ3FMOXZl?=
 =?utf-8?B?NzR1TU9BUkVVVmttTEM3UlVZL2FBTW9Td3M2RVl1UG5JTmM4dVlyZ3AxelFq?=
 =?utf-8?B?b2xaL25UUmtpMkVPS0xyUlpHei9DcVRZSnBUeE9CaTNaN1FHbEh3NkwvSlNi?=
 =?utf-8?B?QWV6Y2lMekVCcUI3TEtWcmxISE40UzRmUzRtd01NZjhTQzlNK01xaWl4dkRr?=
 =?utf-8?B?L09wTklBZGtXeGYzZkFTU05WWTM0dHRaR2J4TWFBQ3I1bEhPMjZBQVlTTldN?=
 =?utf-8?B?d2dQenpMY2pod0tMbHVzeklIeVFweFhZWGIzS0ppaTBJNkw5eCtaeG5XSWpE?=
 =?utf-8?B?TWpUR0JTTU9oR2RzcEVXT2Z5US9qQSsyb0N6enZnWmsvc2tqdHJ4SWpvWjFs?=
 =?utf-8?B?dmNlY1VwR09jR1BWaDZWQUNhVEhEM3pFMlNIZ1ZMWkpWNlBJV28valdzTlAz?=
 =?utf-8?B?eFF1N0srSlpvOTk1elV5SEI5WlVPcURiWndUaStIenBQQVNmVGxnZUxjaGth?=
 =?utf-8?B?MWYxOWQ4VHhkZFZtb3JlK3pIOEZnN1hZOUZQVG9Ed2pxY05tR3FhR1FZbjVK?=
 =?utf-8?B?TTI1M0NXQ0IwZDFpZGxjZFhHMHhxbnNWMzVSd29vM3VONUpkNzVvbU8yMGcx?=
 =?utf-8?B?cXhBNS9OUXN6Wkh5L1krZFRwMkxLZG81dUd4MDJrK0IvL2IwaEFOSTZ4RmMv?=
 =?utf-8?B?SXlVQTNXSjBPc1VNakFrTVQrbnNNY3FhQXZlUGt5eDM0cFZOTS9sYk1nMUs3?=
 =?utf-8?B?eFVEdmx3cXo2enJrN1pyaXRGczZpZ0ttODNWQ2hmOFY3V2dGVzhHV0VpR0o1?=
 =?utf-8?B?ZG5uSTZ0SENvakxtVEZYWjFZZE1sR1pRWlpiSml0NERjOFR6K1o2czg1ZHFw?=
 =?utf-8?B?bGdLc1pRSjBaNzZEWVFvbXNGVTBLM3htdFRsUVRUU2lkR1JmbnJrRWNZSkRI?=
 =?utf-8?B?SzZzN2FtVUZrQUdVZFNYVVFFRW1KNlppczlsVzNwYlJ0a1Y0b0ZsVFhUNjJC?=
 =?utf-8?B?NDNJRStwdnArSERRZTQ2djgxVVFFbnJEODlZdlZuNHQ4VWs4WStydWN6NVBW?=
 =?utf-8?B?UllyT1VGTjl3dmg1M0dlaDNoMlVmU1RNSzQvdXdSTjlLSnFLSUtjVkRqaEFN?=
 =?utf-8?B?OU5wdkkvc1FTQ3N0eVNoOFFDaDI1SjlpV3RrZmlYeFBWVzh0Sm13VjVqN0pa?=
 =?utf-8?B?NWRqc3ZNL1A5eXAvNTJpUEdBemZkd1JKQU01U0cwSnpPekFISmF6eXF1d0Z1?=
 =?utf-8?B?MkE9PQ==?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6474df29-f5ff-441b-d1a1-08db82834df3
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4633.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2023 02:54:26.7075
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1DciSx00ivzDPhFmSBV1aO9OUAnZggrgXQ5xkc+kLmwSXXfr1jSffceJxWcEpLJBPpQofRXw4PBPQbaKyJY9bjlhqtFr+2YogjMikSZ9aRg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5040
X-Proofpoint-GUID: BqimqNOd1qk9TkObrrzNzCdFTw71WBAW
X-Proofpoint-ORIG-GUID: BqimqNOd1qk9TkObrrzNzCdFTw71WBAW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-11_14,2023-07-11_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 spamscore=0
 impostorscore=0 mlxlogscore=999 priorityscore=1501 mlxscore=0
 malwarescore=0 adultscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0
 clxscore=1011 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2305260000 definitions=main-2307120023
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jul 2023 02:54:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60552

--------------NefCMsrlXUG8NeP0qQtOpgnT
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/11/23 16:55, Tomasz Dziendzielski wrote:
> **
> *CAUTION: This email comes from a non Wind River email account!*
> Do not click links or open attachments unless you recognize the sender 
> and know the content is safe.
> Hi Hongxu,
> I can see you disabled the uninative back in the bazel-native recipe. 
> Can you please provide steps to reproduce the "bazel/bazel.real: 
> Input/output error" so we could investigate why it happens? Disabling 
> uninative will cause the failure if bazel is taken from sstate-cache.
>
It is not reproducible always, but be reproducible on specific build 
host, it seems gcc tool chain or libc related I guess

//Hongxu


> Best regards,
> Tomasz Dziendzielski


--------------NefCMsrlXUG8NeP0qQtOpgnT
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 7/11/23 16:55, Tomasz Dziendzielski
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:CAJkqNs3=LvFuCC1eQswc3z7rGSphPw5fb+dkZ1-w5TYFjH1XgQ@mail.gmail.com">
      
      <strong>
      </strong>
      <div style="border:solid #9c6500
        1pt;padding:2pt;background:#fcfc03"><strong><class="msonormal" style="line-height:11pt"><span style="font-size:11pt;color:#000">CAUTION: This email
              comes from a non Wind River email account!</span></class="msonormal"></strong><br>
        <class="msonormal" style="line-height:10pt3"><span style="font-size:10pt;color:#000">Do not click links or open
            attachments unless you recognize the sender and know the
            content is safe.</span><br>
        </class="msonormal"></div>
      <div>
        <div dir="ltr">
          <div dir="ltr">Hi&nbsp;<span style="color:rgb(51,51,51);font-family:sans-serif;font-size:13.3333px">Hongxu,<br>
              I can see you disabled the uninative back in the
              bazel-native recipe. Can you please provide steps to
              reproduce the &quot;</span><span style="color:rgb(51,51,51);font-family:monospace;font-size:13.3333px;white-space:pre">bazel/bazel.real: Input/output error&quot;
</span><span style="color:rgb(51,51,51);font-family:sans-serif;font-size:13.3333px">so
              we could investigate why it happens? Disabling uninative
              will cause the failure if bazel is taken from
              sstate-cache.</span><br>
            <div><span style="color:rgb(51,51,51);font-family:sans-serif;font-size:13.3333px"><br>
              </span></div>
          </div>
        </div>
      </div>
    </blockquote>
    <p>It is not reproducible always, but be reproducible on specific
      build host, it seems gcc tool chain or libc related I guess<br>
    </p>
    <p>//Hongxu<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite" cite="mid:CAJkqNs3=LvFuCC1eQswc3z7rGSphPw5fb+dkZ1-w5TYFjH1XgQ@mail.gmail.com">
      <div>
        <div dir="ltr">
          <div dir="ltr">
            <div><span style="color:rgb(51,51,51);font-family:sans-serif;font-size:13.3333px">
              </span></div>
            <div><span style="color:rgb(51,51,51);font-family:sans-serif;font-size:13.3333px">Best
                regards,</span></div>
            <div><span style="color:rgb(51,51,51);font-family:sans-serif;font-size:13.3333px">Tomasz
                Dziendzielski</span></div>
          </div>
        </div>
      </div>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------NefCMsrlXUG8NeP0qQtOpgnT--

