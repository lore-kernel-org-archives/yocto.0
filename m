Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web09.943.1631806458102989839
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Sep 2021 08:34:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=NtyqWrkv;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=4893d09dbc=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 18GCOeG9014965;
	Thu, 16 Sep 2021 08:34:00 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=subject : to : cc
 : references : from : message-id : date : in-reply-to : content-type :
 mime-version; s=PPS06212021;
 bh=AuSvyuAYCuNQ47MfdNIcgHj+zl3eZCF74qOJqgQDbp4=;
 b=NtyqWrkvd5VNKz9wLwLvhadgne5Ynrydi+AU7boCs65SQeqNjBffp8YwwoVqwYJa1I3+
 DYoRtGJiMzN7vogRdHs4ssdbX1yfi+EIrxKf5sZkDPnh37AtAbt+wMkt3tTZnIvamBZN
 tqj0f/JxIt6hoTtuc5eQe/QmDjD9a6eTfYVex9vtghNPF7QoceOlPFm1tknzfKgMFatG
 el4T1ZwStHXdQvES/FmAlFsdoIE6bZmHAfQdGAvE5fxbLsXZ9Yc3u3gU6f0JF7kaPCn7
 XWWTz0HSiQ2gC8jUFSLN+K0ak1Ceb3Q2uydZHAyi56+yeQ7lqmFokCGFMtrVRfxtFo70 Dw== 
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2171.outbound.protection.outlook.com [104.47.58.171])
	by mx0a-0064b401.pphosted.com with ESMTP id 3b44uj87jq-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 16 Sep 2021 08:34:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ny0uvFnHzck6ENf1yLpETf00qaukObw6Dx2psTf9p61j+mnUv5wmzUnBtT7jCHRi1KdBZr4S1O1Xad+mYfxYFaNgelxYPAhC1oLmWWz6ldn9jeoWZiORrFZXmjUOl26Pus0dt/NNS1IWMxU+VfJbHs3jlKxJsu8nwF4JtaBndl2zeVj4Us0a/wLnlVVmLKcrswlFAtTO+6A7oulhZmS8f9PHYUVOHiQQ44xKN+Aq/iJ6sC/mm2ljpXgx/rms3hn1HM0vKfkV5yBMzzD3MboHLdIVnvxglmMupNoW+F7USgcA1aP+84w8BwpXbx1AqfZNZYlgvFXuBkfdj+qNFgAtkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=AuSvyuAYCuNQ47MfdNIcgHj+zl3eZCF74qOJqgQDbp4=;
 b=R/Dajx6EfPHiyuOun5/ajmvMsEcraERRrIKpMdwc2vYwhY9cI/l9O4G28PQtn9qsF5IJDBhHgC15NcDvPVyUWCIHo1mBER2O0wj6hyRuhaVr79HtuXp9Ly0YMP0rbmYtqzMtUbcUzwP78oTyWkR5ILj0TpCH27pQ3P+FS6ZS7GbzcYJntZn8VS87adiDjWatAAm1QquHAcyJRrZyOofyv/5zk8Esx9p8bvcZ9EwGFRxaQI9WHmsLGZ1XhMrTWRrlThA69u2kivdjPzl0/d4UMsjODz6RiwmNBso7LnYfk6PLUUiY48ospwL3OApG2gKEOORAkvxklLw9afBaea5hsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by SJ0PR11MB5165.namprd11.prod.outlook.com (2603:10b6:a03:2ad::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Thu, 16 Sep
 2021 15:33:57 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::fdd3:dc0f:a385:34d1]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::fdd3:dc0f:a385:34d1%4]) with mapi id 15.20.4523.016; Thu, 16 Sep 2021
 15:33:57 +0000
Subject: Re: Minutes: Yocto Project Weekly Triage Meeting 9/16/2021
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, steve@sakoman.com,
        "timothy.t.orling@intel.com" <timothy.t.orling@intel.com>,
        "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>,
        alexandre.belloni@bootlin.com, Ross Burton <ross@burtonini.com>,
        jon.mason@arm.com, Michael Opdenacker <michael.opdenacker@bootlin.com>,
        "Wold, Saul" <saul.wold@windriver.com>, daiane.angolini@foundries.io,
        "jpewhacker@gmail.com" <jpewhacker@gmail.com>
References: <2d5ab941-d94b-07de-c6fa-5e71f088e267@windriver.com>
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
Message-ID: <ecd4e7db-5536-1430-df78-50b03a7729dc@windriver.com>
Date: Thu, 16 Sep 2021 11:33:53 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
In-Reply-To: <2d5ab941-d94b-07de-c6fa-5e71f088e267@windriver.com>
X-ClientProxiedBy: BL1P221CA0001.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:208:2c5::12) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
Received: from [IPv6:2607:fea8:c29d:d7c0::81de] (2607:fea8:c29d:d7c0::81de) by BL1P221CA0001.NAMP221.PROD.OUTLOOK.COM (2603:10b6:208:2c5::12) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14 via Frontend Transport; Thu, 16 Sep 2021 15:33:56 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 86dc09d6-e4bc-432d-693b-08d97927663e
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5165:
X-LD-Processed: 8ddb2873-a1ad-4a18-ae4e-4644631433be,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
 <SJ0PR11MB516510B41517989213DDEC709FDC9@SJ0PR11MB5165.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
 mmBivS1ZdJHX1ODOv6eSp2gEmis2LsEcZyZN7XTIIj2DIpci0AIFJ1opc95YqO26UU6OJ/nykLckSJ9SJzbTPlYjZAjrAvgOu0ZUa3KUICeH49nzuTYRvsiQvkW76EDL3dhw/nGoOpH2zY1zXb5jAYYe6K9jkSeweVkC3l89ncUSn98q9G55+pxHu9TFxbhfpoiRFD3nW7H7JiP+S49LoIbXTRzY2emyCxm1VYNo3s23R8GvMM7rVtcg7nA1GpYfTTaqkB8yiuW5DAWliarWqRXFgRyhpqAvdMP5iwZBAozGSkqaTT4jDkGIZffOxuBtrUQgUXDPMCLTQnArV77MueNKThnMdqYhD2mu2XwtiZETQ/pv0wR7+tF7bYSYMVgiF8+CK1izflYiFNzlDLbaA2YAjCWy6x+ct9P1kB+iHv2UWrSP572PijL7VeQz4CbB+Rh+Rxni4QKhmqBEF2dZkA0hel4+ZQwqObE2+RffD0WbU6FKt5gH7DMP9N3X6QHr678r/D14DTeAB5Hp3K+5z/9/WFvzfAvQiCnlapEzsy3DvjkY55pNs4MyyigI24FSDN4jNk08ebLtvsJRpo/bPjLMfCWp/7WXhOKb+C9ZDKhkiyA6NsqzM9LcC5jhh9SJGLBJb3NEh0mi+IRkgiuZwkZL/PJwclHbTSNaSCXiVmapV07kaSH0tf/6RQ5VF6CAzFdSlH60L6HOfHsK/YDLYsn1wZOv2z/cI7IrBjk+zuxS1Z4XbqcHTrpDK5UmT2xrtsma5R32CO7aJTim1hzkKUF95Cpcq+Mxx/6HXENBMGI+eE7TbrhZCoIMTVojWLB4/tnJI6CjAKSMPImlx3Nad/em0ZVJDi6dxenB+9VdUdE=
X-Forefront-Antispam-Report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(396003)(136003)(346002)(366004)(376002)(6916009)(8936002)(83380400001)(5660300002)(966005)(478600001)(33964004)(186003)(2906002)(86362001)(6486002)(7416002)(31686004)(66946007)(44832011)(36756003)(6666004)(53546011)(66556008)(66476007)(8676002)(38100700002)(2616005)(31696002)(316002)(4326008)(166002)(54906003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
 =?utf-8?B?TTBnL2Z6L3JKSlE3S25NMHhNWlZ3ejZFK0NvYW9QZW0rTEZXOHozM29RaGtu?=
 =?utf-8?B?VDhFeDFSQlpRNjQyNFhVMlpob3pDZkNyaUUwV0gzNGU1c243UklIMmVqa3BP?=
 =?utf-8?B?ZllCT09hbEk2WGYzQjRFY2hoQy9rQkpsbmdDL01FTHBzb3BnVDRCUGpIWjk4?=
 =?utf-8?B?Vkw0dVE4akk3UndsZmt0Wm1vUmdwajFvSjVQemZ0eEdWQVB6bitvSHJHVEZx?=
 =?utf-8?B?QnprTWY4dnkvcnUrczVkaGFHbzZLdk03enFrZmp2NXlKbGFUcHk3b0dGWkR5?=
 =?utf-8?B?SFpTNkh3WGxUajNPWFJmTnpjQVdXMHdlb0Z4UjBUTmJ2eERhQXNJOFVkdkJL?=
 =?utf-8?B?Q0NZSGRmVmwzZEhXWFN3S0lnMkNtSEpxazFaYXlwOHFVbEFaV0lwelVnSGJ4?=
 =?utf-8?B?MC9UUEZ2VG54Y2hGZEl0K3hxQ09hZkVEZEhBd3doRkVyWlBXWThLb1kvOGJZ?=
 =?utf-8?B?b0grMEREbzJjZUdjMXMzRWxQZUZCSGdiZDVPdlpKK2tmWlNZTkFma1o3M1dH?=
 =?utf-8?B?RTE1THNRWUEyVjRPRFRoaWdrN1BiUEVIS1htYXYyeDZqaHV3ZTd0aGRJU28w?=
 =?utf-8?B?dmZXWm9KQ09oVXdSdzd0alBhbmROendoZkhBcHg3Mit6MVJ5cWY2c0RPS09H?=
 =?utf-8?B?ZkZweENKRDc1cUhIbUNvbkVHUWFKVmNEbWFid0dXVjB3WDZNWHVtWmlmeWwv?=
 =?utf-8?B?cDhnSkdKU21ZZlFucDVXTUR6ZXhlZUtsRkpBcWZCUDlNV09PNmdVemtCWENz?=
 =?utf-8?B?cisxVVpzalk1MjlYLzI2ejNEK2ZnMWlmRUNOUnV2Nk05YW9XNzVRb0pUZkxi?=
 =?utf-8?B?ZFM2dkwvN2piTFFsUmhSdXFoWjVYMXhrRzJwdGJzanN6NnpGMEVBc2NKMXVj?=
 =?utf-8?B?a2ZvTkVaRVBzaWNkNlNzS29OTXRFclNpN0ZpQ08xNWhQOTNOMWQxa2xpcjlp?=
 =?utf-8?B?MjR4RkJGaDRsTVRYc3B3TVBiWWtzcUZrdzI1UU51VEJram9GdmI5NVdLM2hN?=
 =?utf-8?B?ZjJCcGM2cUJjaTZxZEZwZXhEZmpRMUk4UjhNdUZsbDNieFhoSDV4UEloMGhG?=
 =?utf-8?B?YkRBNmtmVzh5ZnpGWGhOMUhBSDBPNjc0U01tREErSzRLMUYxSFBrL2FHSmd1?=
 =?utf-8?B?c0MvdXlKeHhLbENTU3hDU2dNQkRicWVPOEIxSHIyM0pzdkJNRXR3ZzAxbkNi?=
 =?utf-8?B?VmVKVjlxQ2x6K2xIYlQ5dGVDRzJMR1BxVWwraXBSZXdYaUVGTEJhK1kxb05q?=
 =?utf-8?B?bm4zRmNSa1NSek5SUlpSbnJtdXdCY016WWg5SkZ3Ty9ldVNFQlRNcy92clF5?=
 =?utf-8?B?ZlJpR2tGTzFqRzdMUmw2YjZ3NFpFYlErUDUvRkJNOEowVHVkcHV0b05PRXZQ?=
 =?utf-8?B?MWNPSC9EWkprKzVRTUdxZjc5czFFcU9IYWxsUWZtZTNLUXRJUHdaQ0hwclBF?=
 =?utf-8?B?bGpibDNhOUFmM2xLdDBUYkNhV1lrSlVNcTJUdlpnb2J4WFZMYng0ai80d2NX?=
 =?utf-8?B?cUQvMXZVODYrZXhKWXRxclpRTVRBTGlwdURVRnR4U3BqeEtaSmJJeXdpRGRI?=
 =?utf-8?B?cjRVTWw0R1h6TjRjRnRORklNMFRRdm1Qd3VUQzZjaXRmOU5nbFZObU55RGkx?=
 =?utf-8?B?RThURnJvZ2t0SzZ4eHRiRWVSYlYrUnE5R3NrSjVraHptQndGdzVHdnF5dGw5?=
 =?utf-8?B?b1ZxRGp2eWlNckJZSzBleTlVUDlQd1JLMnFQZDJaNEo4dFFWYkNOVlk0Qlpv?=
 =?utf-8?B?a1Z5eU9MWEc1aVRYSjVTZ0d0WGRGVVBoSTFlazZLTmRHakJCYzJmK3ZhZThF?=
 =?utf-8?B?WHBNZ2orVERJY25jNUJOZz09?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86dc09d6-e4bc-432d-693b-08d97927663e
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2021 15:33:57.7086
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j2n9ZzoMUcDxFzk3k7wb9ZUw05hfbu54902yEM9kPTm4zKBXEH4db0N0FX8o5Ss7JYFBJzGbp4QrCymtxmbA2S6mk4AwaFlSwShuLIxvyGY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5165
X-Proofpoint-GUID: 1wQfubl5YbvJu52sbwkPX1eXRGgQofrE
X-Proofpoint-ORIG-GUID: 1wQfubl5YbvJu52sbwkPX1eXRGgQofrE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-09-16_04,2021-09-16_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxlogscore=999
 bulkscore=0 adultscore=0 priorityscore=1501 impostorscore=0 mlxscore=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2109030001
 definitions=main-2109160095
Content-Type: multipart/alternative;
 boundary="------------23315AA96C4EF5F3C0FE47BB"
Content-Language: en-US

--------------23315AA96C4EF5F3C0FE47BB
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 2021-09-16 11:33 a.m., Trevor Gamblin wrote:
>
> *Wiki: *https://wiki.yoctoproject.org/wiki/Bug_Triage
>
> *Attendees:* Alex, Diane, Jon, Joshua, Michael, Richard, Ross, Saul, 
> Stephen, Steve, Tim, Trevor
>
> *ARs:*
>
> - Trevor to move old AB defects to M4 after call
>
> - Trevor to ping WR folks about moving Old Milestone bugs
>
> - Richard to add a comment to 7298
>
>
> *Notes:*
> *
> *
> - (carried over) Steve encountered build failures such as the one in 
> https://errors.yoctoproject.org/Errors/Details/593109/ when attempting 
> to run dunfell builds with the PARALLEL_MAKE load averaging added. WR 
> is testing/investigating on internal Autobuilder instance - Trevor is 
> still planning on looking into this!
>
> *Medium+ 3.4 Unassigned Enhancements/Bugs: *68 (Last week 77)
>
> *Medium+ 3.5 Unassigned Enhancements/Bugs: *10 (new)
>
> *Medium+ 3.99 Unassigned Enhancements/Bugs: *38**(No change)
>
> *AB-INT Bugs: *49 (Last week 48)
Correction: AB-INT bug count is at 52.

--------------23315AA96C4EF5F3C0FE47BB
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2021-09-16 11:33 a.m., Trevor
      Gamblin wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:2d5ab941-d94b-07de-c6fa-5e71f088e267@windriver.com">
      
      <div class="moz-text-html" lang="x-unicode">
        <p><b>Wiki: </b><a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Bug_Triage" moz-do-not-send="true">https://wiki.yoctoproject.org/wiki/Bug_Triage</a></p>
        <p><b>Attendees:</b> Alex, Diane, Jon, Joshua, Michael, Richard,
          Ross, Saul, Stephen, Steve, Tim, Trevor<br>
        </p>
        <p><b>ARs:</b></p>
      </div>
      <p>- Trevor to move old AB defects to M4 after call</p>
      <p>- Trevor to ping WR folks about moving Old Milestone bugs</p>
      <p>- Richard to add a comment to 7298<br>
      </p>
      <div class="moz-text-html" lang="x-unicode"><br>
      </div>
      <div class="moz-text-html" lang="x-unicode"><b>Notes:</b></div>
      <div class="moz-text-html" lang="x-unicode"><b><br>
        </b></div>
      <div class="moz-text-html" lang="x-unicode">- (carried over) Steve
        encountered build failures such as the one in <a class="moz-txt-link-freetext" href="https://errors.yoctoproject.org/Errors/Details/593109/" moz-do-not-send="true">https://errors.yoctoproject.org/Errors/Details/593109/</a>
        when attempting to run dunfell builds with the PARALLEL_MAKE
        load averaging added. WR is testing/investigating on internal
        Autobuilder instance - Trevor is still planning on looking into
        this!<br>
      </div>
      <div class="moz-text-html" lang="x-unicode">
        <p><b>Medium+ 3.4 Unassigned Enhancements/Bugs: </b>68 (Last
          week 77)</p>
        <p><b>Medium+ 3.5 Unassigned Enhancements/Bugs: </b>10 (new)<br>
        </p>
        <b>Medium+ 3.99 Unassigned Enhancements/Bugs: </b>38<b> </b>(No
        change)<br>
      </div>
      <div class="moz-text-html" lang="x-unicode"><br>
      </div>
      <div class="moz-text-html" lang="x-unicode"><b>AB-INT Bugs: </b>49
        (Last week 48)<br>
      </div>
    </blockquote>
    Correction: AB-INT bug count is at 52.<br>
  </body>
</html>

--------------23315AA96C4EF5F3C0FE47BB--
