Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web09.1200.1623351983805543281
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Jun 2021 12:06:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=n0kXCc79;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=1795f8b46d=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 15AJ3f1M002340;
	Thu, 10 Jun 2021 12:06:22 -0700
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2172.outbound.protection.outlook.com [104.47.58.172])
	by mx0a-0064b401.pphosted.com with ESMTP id 393726gqua-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 10 Jun 2021 12:06:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KEa3iyhliXwDfx2PJMO+B30TPIeirQ3yO/nilYlx7DJ2/+Z+O3u+VzcuH0iIAW129TYQAV1QczQaFW0JqrayuIBesjaZBq9RyGQBY5B2q7QJWr/L6Hl30/vEPkk1vWFzWvhGV7fbimaK4X5iYrxjXiGsqQbPTbs3qD0tv/2EhBZsK/mt/tkrJtNUoykL5fnQAs/ZQM7Rc41wr+huuUNZcbvwVmuriqSEsOGlxsz+z1mUe7Ba8E/bylLKiQYm6dG8V5G+L7iFK8EpnETBw97Zp0tXYefjP8N4IFv014SrlHJxvnFLmItFYxt2XoyLrUgvrMA7D7VpkvWGz1gexX+AnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Wz2b9T86uk4Sg5TgWQ89JUIiEWIUGIFeqcp3GTDQy4=;
 b=M3Rk3lp++rdL6uqbn4sDJ5sKvdlPejmJhGhtmqREeR/R6hS0tONxfV/lg8w2+LplJgFHNr+givlYphHBc82AJvnhCewvkPJ/zta1ViZ3ABciKxuEu9IkP7UqNVcZyWOA0e7oY2oOPmkMGI9tAxvPZx0AH9RsWvkLF4/2nT/GhF4FjULt743lm1eOtFh9Ysd/SYoMLxJYlRXdqQiihsSwcjoqzgEl1RqwIe4X874aP3Cr3ltFHn/1f/DhbmgNrjKDYoLZlfuKMZ6uUZv9zbwAH7IyCZ+ErIcQYVn3jlrDmhOWbaUN6yGzibYnkm8HqAyTj23PfK3453J/Yv1HC64Npg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Wz2b9T86uk4Sg5TgWQ89JUIiEWIUGIFeqcp3GTDQy4=;
 b=n0kXCc793filEWGVDWCh0swgU1gSWzhZlxBC34eKKI5ec7ugTre9BaSebXl/6rWGdpi8KrUO/4yVFk0XG/EENrXrHi+q5MDyaC824dGIyOAMwvlLJ2SxOhGzI2dTncuQYIx7BTtAqPPP9JC/EdedssUu6SHFo7FAzXimJmwFviA=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by SJ0PR11MB4846.namprd11.prod.outlook.com (2603:10b6:a03:2d8::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.20; Thu, 10 Jun
 2021 19:06:19 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::b5ac:be57:85a9:f240]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::b5ac:be57:85a9:f240%3]) with mapi id 15.20.4219.022; Thu, 10 Jun 2021
 19:06:19 +0000
Subject: Re: [yocto] bitbake controlling memory use
To: Ferry Toth <fntoth@gmail.com>, yocto@lists.yoctoproject.org
References: <5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com>
 <10280.1623316977582274550@lists.yoctoproject.org>
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
Message-ID: <829bf26e-b882-d479-aa0c-f22998071fa7@windriver.com>
Date: Thu, 10 Jun 2021 15:06:16 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
In-Reply-To: <10280.1623316977582274550@lists.yoctoproject.org>
X-Originating-IP: [2607:fea8:c29d:d7c0::6e79]
X-ClientProxiedBy: BL1PR13CA0246.namprd13.prod.outlook.com
 (2603:10b6:208:2ba::11) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2607:fea8:c29d:d7c0::6e79] (2607:fea8:c29d:d7c0::6e79) by BL1PR13CA0246.namprd13.prod.outlook.com (2603:10b6:208:2ba::11) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.9 via Frontend Transport; Thu, 10 Jun 2021 19:06:18 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3ebee9b7-ee00-41b2-a585-08d92c42d410
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4846:
X-Microsoft-Antispam-PRVS: 
	<SJ0PR11MB4846830A6A529D9A667C159E9F359@SJ0PR11MB4846.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wDodfR3F/HFs5CDIMPfDCxGXdPMp+fQ7KcLYdn477gCZeVZRpW0e9LEAP2Bx8wRnGIFPFrVAWBOKMqVt+F9SfvWgI8fXNUReq+c9/i+7dFhfCNCuZUbcrXulWHsDXDePwswos3HuT72w7k/AKmprvB4HDUbasnCNXEpv1yiBMBQ4rJZt3evqyC1CNpvv5TFuZRjjMKnHY6PVjFWgaqxOk0slbsjLu57zRKLlx4MzwlG3h36zffeeb2oDsDYsTor9BzHh6mDgLXF2gJAfP6r/R+oJZPNDgV/M1lNazXDfP3stAOTzWMF99crt8y6vXxZAjwsiAIUoAKMqA5ZVrPpDWqMWLukPctsscncsJvEn5Mlgh53HKdBPGoEEIT8SEXbsY5U1KMNxXuOkU5Xrocin8VijkKvfb61rBNUDOsUb3Ek4MSRQ+2slzyLfMOpmAxt6YXVoeNtxTMypLpFJHFLTBrdybKUhtQJn1kgrvRneZ/f7iiALCTFdD8f/kvlgBHc931oU4mbWGqhq9ASbaC9N5AqaXQ6BYkNRsAwfSwoVWjv5D8QcAx5xaJMv5TRl2MNVhHT22IPYvfBxZ1dcfBruOgfnx6HCBcKmGjcqWiQaVZIz1lh4jVJqgjuGLNGm10vvoEu9eKoO6Ng8uHD/EugGVeUKg/A9fxGRYMl3Y7o9tG4jTLpvsjO8SCu0QMnHNih/I7bU71jtvDogbCHCzL2Xe80qo4BjD41lY96SAc421cnp9KUyfGeSJP/mXQlUJUkhRItWiUugDm8A5zAsIrRh+khnr4NP1BSjOxBZ6yCUxbnyNvSCM9qrkxAZJUgL4wivYi98nWzcqe3fiLCeehCknw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(346002)(376002)(136003)(396003)(39840400004)(316002)(478600001)(86362001)(966005)(31686004)(16526019)(186003)(83380400001)(6486002)(38100700002)(33964004)(31696002)(53546011)(44832011)(36756003)(2616005)(5660300002)(66946007)(2906002)(66556008)(8936002)(8676002)(66476007)(166002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MXc1UTJJMzFGYVNPeXp2WEZpaDduRFJXcDlSNjFiMzFVbDBqWDJUT2w4Z2Rm?=
 =?utf-8?B?d3lMZXBsbjFaSmFybnlDL3JaZHhhM0I2QmEyTHhJbDdCYnE5ZUNqRXFzL3ZY?=
 =?utf-8?B?MithcEZXWlJYQi8xbVBkbXdkT0JYOTlGYWEwL2c4R2cxcUpCWlUrZ2o2L0h2?=
 =?utf-8?B?emtmRmtINFlWYXhIWDQ3UWpFSHcxMWF1VHpUYy82N0ZCREcvWkwyU3hIZXNH?=
 =?utf-8?B?QkVwdzU5SlE5UmhtTzJHb1l4dlkwalgyeDROY2E3dlNpVnhIMUw4cG9Ndk85?=
 =?utf-8?B?Z2tqZUhWV2RYZUpQZjZPcWpSVkJHQlNJOUlmejNtUC9ndG4vYkk2RzRtRzBl?=
 =?utf-8?B?c0lYNmp0eFE3dUU1MDJaZEZWSmdyMGdhRHFHSitjdjR3WGRSMVBkMW44MnFv?=
 =?utf-8?B?dFJDR0RyTVY1eTZGbWVBY2ozWnVieGkydzA5NkJyQW94bG03ZHowbUQ1Y0NH?=
 =?utf-8?B?Tm1Sd0FtYUQyRmw3VFBYNlZFWFhHSi9XaXRiZG51VS90ZThTVnRja0tSNXRL?=
 =?utf-8?B?QVhxV082Yk8yVGVFeXFpNmdjNVNIWUNCMWJMaDJTZC94NU5JaUNPbzFWbVIy?=
 =?utf-8?B?ZkRuQzJLTWJKZnRHQVNNTnQyQnhGQVg2alowVlljcHpYdDZQOU84MUtidHlj?=
 =?utf-8?B?cmhjd1FtTGo2WVAyN3p0RTU5MHVnWUV6YzZCbjRmQnhSUC8vVm04dytwdTI3?=
 =?utf-8?B?Y3g3dVVlMko5ZnlQaUJGRVBLRkhpZktGRFJkbmlZbG9DRzNDY2VOZkZoMXVw?=
 =?utf-8?B?R1JRVW5iZzk3Vk9lN1NQVm54ZWd2MHU5TC9UVzN1VndpMVREcEZDRWRPSVMr?=
 =?utf-8?B?MkNCc253Q2VQLzdJOXExT0FsdHQrTTN1Y1lybU5xRjVQRUE3dVB5YjlrMllp?=
 =?utf-8?B?V2QybTc3OXFpdC8xQWRzOHFGVGI2RXpONFYvVXkzaGlwNVNkcExKczV5YVla?=
 =?utf-8?B?QlZ2cWlLdjNoOXhzakc3TnZUdHRuTnJNUTVFSXBjTms0Qk9RbTRFRFAzdjVx?=
 =?utf-8?B?MlZ5OStxZS9WM1ZBVDVvRVl1VFB0dTJhNEp3Mi9WNzYzQm9TdlIzV1JvS0ZM?=
 =?utf-8?B?NmtVLzdxZUVrVXdrVnBwcHhzK05yZnVuMUk3Y1dnQzBJYU5NRTF1akpHTDhY?=
 =?utf-8?B?cXFBbzIrU0lldFhXV3lxVFZiM0F3ZjRiTUlldFV0ZzVGaTJ3L3E5ODhsNFRy?=
 =?utf-8?B?L29qdGJZZnlJbkxabHFoSWpCK2RyY3lVQ09DTVNyVlFLbUVEVlFUZUlVamRo?=
 =?utf-8?B?TG1pQmMyMFMyVHF0eVU3RDFLdGhqZWJ3TXE1NW9lVEVvemRadDFsY0dsQW04?=
 =?utf-8?B?Y0lUOEl2eGM2MktzRUZNZHJIQWQ2U2o1VFNaa0h3MlBYaUlVMVFreHNNd08v?=
 =?utf-8?B?d1crMHNRbUVJaFVLTWJZeXpmcFZsR0VFQThQN1NxQVViWFNab0dpMnB4dHVi?=
 =?utf-8?B?N2tYSHVHdSsyZ2RhU0ZLUk1XSmVTUEg0YlI2OW56NkFnN055U2tTSlFoZHVn?=
 =?utf-8?B?cjJpT2lvK3had01ETTRjcEQycWkxQWhXUTNyWnZ1OFdFcmpnUG5tem5SSHRO?=
 =?utf-8?B?M0dEUVdnMEtQZDB0Zkdxc0xWVklwcXVXb2k3ZDlIZFpqOWxuVUZWWHVPNGdq?=
 =?utf-8?B?RU5aL2M2TzJCUXZWMy9JSmxadGw0ckdCMXRDZzFHMVRYS3pGRHNwK0FTUU01?=
 =?utf-8?B?NlZkYWVvRWRPZVptdzMvR0p6WUFHWnpMZWpaWHBMYjFzNERTd1V5dnM4SmJr?=
 =?utf-8?B?N3JrMTAwcUtBZjdtRG92aUs1dGh6MlhBalVZQWlhSzE2NVp6K2Vuc1htTTlB?=
 =?utf-8?Q?Wjf5f99RU4eHZIu/bwJIBV4eCM1MC0uTwgTp8=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ebee9b7-ee00-41b2-a585-08d92c42d410
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2021 19:06:18.9448
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a8MXmE6FbcQG+d7YtMw9P0URo9q37X15EkYkEI+K1oM+BUTUn4N0Ro5AhqmXhIaDDWtzYGjc2b8JAwAgikd0/BPzl7RrHxAffTx51XeKutY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4846
X-Proofpoint-GUID: OFPQC4Eg2uHijJtxU72hKBnSzivGxoTJ
X-Proofpoint-ORIG-GUID: OFPQC4Eg2uHijJtxU72hKBnSzivGxoTJ
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-06-10_11:2021-06-10,2021-06-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 suspectscore=0 mlxscore=0 malwarescore=0 mlxlogscore=999 impostorscore=0
 phishscore=0 adultscore=0 clxscore=1011 lowpriorityscore=0 spamscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106100122
Content-Type: multipart/alternative;
 boundary="------------DC4FF3453D9A1434E48001CB"
Content-Language: en-US

--------------DC4FF3453D9A1434E48001CB
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


On 2021-06-10 5:22 a.m., Ferry Toth wrote:
>
> **[Please note: This e-mail is from an EXTERNAL e-mail address]
>
> Hi Trevor,
>
> Gmane is really messing things up here, sorry about that. I need to 
> create a new thread I'm afraid.
>
> I'd like to your reworked patch.
>
> But note, I reworked it too (but maybe wrongly). I builds like 90% of 
> my image, but fails building cmake-native. Or more accurately it fails 
> do_configure while trying to build a small test program.

Hi,

I've pushed the patch onto my fork of the poky repo at 
https://github.com/threexc/poky

Let me know how your testing turns out - I am still running tests as 
well, but it would be good to know how others' attempts turn out, and 
more changes could still end up being necessary.

- Trevor

>
> Ferry
>
> 
>

--------------DC4FF3453D9A1434E48001CB
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 2021-06-10 5:22 a.m., Ferry Toth
      wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:10280.1623316977582274550@lists.yoctoproject.org">
      
      <div style="border:solid #9C6500 1.0pt;padding:2.0pt 2.0pt 2.0pt
        2.0pt">
        <p class="MsoNormal" style="line-height:12.0pt;background:#FFEB9C"><b><span style="font-size:10.0pt;color:#9C6500"></span></b><span style="font-size:10.0pt;color:red">[Please note: This e-mail
            is from an EXTERNAL e-mail address]<o:p></o:p></span></p>
      </div>
      <div>Hi Trevor,<br>
        <br>
        Gmane is really messing things up here, sorry about that. I need
        to create a new thread I'm afraid.<br>
        <br>
        I'd like to your reworked patch.<br>
        <br>
        But note, I reworked it too (but maybe wrongly). I builds like
        90% of my image, but fails building cmake-native. Or more
        accurately it fails do_configure while trying to build a small
        test program.<br>
      </div>
    </blockquote>
    <p>Hi,</p>
    <p>I've pushed the patch onto my fork of the poky repo at
      <a class="moz-txt-link-freetext" href="https://github.com/threexc/poky">https://github.com/threexc/poky</a></p>
    <p>Let me know how your testing turns out - I am still running tests
      as well, but it would be good to know how others' attempts turn
      out, and more changes could still end up being necessary.</p>
    <p>- Trevor<br>
    </p>
    <blockquote type="cite" cite="mid:10280.1623316977582274550@lists.yoctoproject.org">
      <div>
        <br>
        Ferry </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------DC4FF3453D9A1434E48001CB--
