Return-Path: <mkelly@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DA9CE00D48; Thu, 14 Dec 2017 12:52:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.33.86 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-bn3nam01on0086.outbound.protection.outlook.com [104.47.33.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B839E00D1C
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 12:52:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=wgG1CBvEIArRQ+X31RYnhMPQV3uWCobzCpwBDKItvGY=;
	b=Pz7En9OAQlDVofRUhnM7wjKZjAmCqAT3GH8qSAtoCylWScsoBRODcnXhzEgI4YfZMW35VnXrJisNOwLuWeoudBYMmUIm7cq8vxJY3gT/mhWn0Q4ZmNo/ZCvsKjejOeWpO1oZUjDjwohpY9FHucywZyQV7k/vI7yhi2P4SRONugo=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=mkelly@xevo.com; 
Received: from [10.201.1.39] (65.122.179.226) by
	MWHPR0101MB2943.prod.exchangelabs.com (10.174.170.14) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.302.9; Thu, 14 Dec 2017 20:52:12 +0000
To: "Avery, Brian" <brian.avery@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <13c0ade8-e1fe-d4e7-a73b-67ea4c425321@xevo.com>
	<A3D4AF61-F4E3-49DE-BC93-DE355D147B7E@intel.com>
From: Martin Kelly <mkelly@xevo.com>
Message-ID: <a280cd23-80e9-474f-0f2c-db0d5070b8cf@xevo.com>
Date: Thu, 14 Dec 2017 12:52:05 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <A3D4AF61-F4E3-49DE-BC93-DE355D147B7E@intel.com>
X-Originating-IP: [65.122.179.226]
X-ClientProxiedBy: BN6PR21CA0004.namprd21.prod.outlook.com (10.173.197.14) To
	MWHPR0101MB2943.prod.exchangelabs.com (10.174.170.14)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 81bae836-1555-4b63-37b3-08d543348d70
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(5600026)(4604075)(4534020)(4602075)(4627115)(201703031133081)(201702281549075)(2017052603307);
	SRVR:MWHPR0101MB2943; 
X-Microsoft-Exchange-Diagnostics: 1; MWHPR0101MB2943;
	3:XDGtiI6r90E1kxS8+bktOYOFEOLQezvYOZdvNbALQQgizB+TgPYCfwVa2J0lH7h5m7rdd5+2ONAPwq0HjWtuxjaw4u2cAnmzskvJADqE/AExOKbf0qgz6g6OdzBnyNlXUn2B8OeEHwD8la3iMlWGAvR+FlNmEXQHCKt0x1WmjWvP8oRtlNINnbtoh8CUMLyl9NRACrQgur2KQHD4UlGXWj+ey3x/xm8xrq2Pt2MR8zItRj1xmQ79Gn8QGb3zRLl6;
	25:oOxBjvtvewz2BMu6PhaV/ZcVMZfH8G4lvf0mwzI/mBsXxU20rm9XFhxVqGQkTp2gRDp9bI8SA8yb21atUxS+S9DiStqRthQhl7sy5LbzSGESmBZ8XQVYuVEXB+AfEwkgQyUD1Zde1bFKMMRHpmn395a0b0hxt65VT5e/Z3Sq2RDvRTLpWV3l+2LE8qFLOCK4rp0NIGBMEpNLhBNnIuSKiCytaKnhNxj9th9DyzfUuu07YF0ncbi0RtPEHbOQW//synO4SrSt5z8waTYwN3gkasQpamgygeSiZZCqedj+Xv1Lz5Kslb9eEp/uQMtObNrzt/HXCv8SWQGWfRL2Ji+3dg==;
	31:cdgEvtmVj5yoBdmQ/gqV1V2DZPjMHL9aag7N9blB7GfLWPcx0aV68hZwMnCkbWRpqmoxyqW4yxg4nKld/GTd4PSfq9OqZgGmOMbxz7vOf1ZLB2fYu5TVkdArqYw7NYmwLAsicsmg7zTclcPnkEuk1l/shIb/AURTCuCjpqCrrfGa5BwwtU9yHzQVHiLXhRTdpDyiYjEoqb0FiFi7L74qMWEPB23G518m02kr9XbcdqE=
X-MS-TrafficTypeDiagnostic: MWHPR0101MB2943:
X-Microsoft-Exchange-Diagnostics: 1; MWHPR0101MB2943;
	20:gNl6i56hAQZVP2eQfPXYQOq/ejhJYPjY9lw50BS5Exs9UueI7XmBscWQgOvmi8Tba7kCL//EJ+izo6yq4E4OhZ5av9Tz2Z23i95RHgFnDWNLrBK8x886dJ/h+osVkzdXjRnQHZVdfHX1xLOlOUKunGZsEx2GA3RrdzIzeutLIrZSwU0F7gzGo1Mfgyvx+f/U4Av9zzY8EIcty5qis2/MHLYRCQoGFiVEBG0oBltrqrrMDhKKrojfQzVpbyyHwbSdXY29OeMisObuW5bAsCqtHnXA2Xv820HtLsvGSIO8BZVKOJ5adEUjtOehwWrJsPL5sOweM1SSPqR4Oza6s9m6cTxkss3kRoZ1ODA8eILwU1ajz8Gy3b/u+qYyH1bSninPGbA/Gds9eyDMa71CGggBoOoyefl6OgEbcppc/ZhaskI=;
	4:yvWVb3hfuLnDgA2NtPbp9xz5qzDF6P7At2in/03mC8Fo9cNWSNRad0wH5E4uToqFgnK/LmOTd0EkxTIl41X+XkMTY1CA+bowGEKIZtCm0VjhR67ua/hmlXhkeyBjDDO3mGGH202B+meyMnRVFn0mbqb7ytIgfvIuSvcPtPE5yyqh4ntLg7axCn0fsMvjE/PKWgUhtkVIAyhhYgmIEN4/IekpPd7p23q0ftZQS8tgrdrO9kIUCHBU4GYLY236SFJ0SkgYh51ulRKqULqlyHs/mnJd+qcMVEDPYWIveIjmeYscM7MUF3AZUPVr640MWUaS
X-Microsoft-Antispam-PRVS: <MWHPR0101MB2943D892D83DEEA88BCC7A06AB0A0@MWHPR0101MB2943.prod.exchangelabs.com>
X-Exchange-Antispam-Report-Test: UriScan:(166708455590820);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040450)(2401047)(5005006)(8121501046)(10201501046)(3002001)(93006095)(93001095)(3231023)(6041248)(20161123562025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(20161123555025)(20161123564025)(20161123560025)(6072148)(201708071742011);
	SRVR:MWHPR0101MB2943; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:MWHPR0101MB2943; 
X-Forefront-PRVS: 05214FD68E
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(6049001)(396003)(346002)(39830400003)(366004)(376002)(199004)(189003)(24454002)(478600001)(83506002)(52146003)(2486003)(67846002)(966005)(105586002)(2906002)(3846002)(6116002)(106356001)(8676002)(81166006)(31686004)(76176011)(64126003)(23676004)(81156014)(8936002)(230700001)(229853002)(31696002)(3480700004)(52116002)(6666003)(2950100002)(36756003)(6306002)(7116003)(65826007)(5660300001)(6486002)(77096006)(90366009)(50466002)(6246003)(53936002)(68736007)(4326008)(25786009)(47776003)(66066001)(65956001)(65806001)(16526018)(58126008)(110136005)(316002)(386003)(16576012)(86362001)(7736002)(97736004)(53546011)(305945005)(2501003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR0101MB2943; H:[10.201.1.39];
	FPR:; SPF:None; PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
Received-SPF: None (protection.outlook.com: xevo.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtNV0hQUjAxMDFNQjI5NDM7MjM6SlZTRlFXdjZpZTFJUlJLZEFBUmlvaVU3?=
	=?utf-8?B?d2pSeGJIMmN4bUZ0czZtMXlFRUZzaG54Q0NnRXVOQ0xCOWJGTER0UWk5dUpp?=
	=?utf-8?B?eEFiRkFwd0doeUIyU1d0eEtmdSticEhIamQ2Y1Bab01BZlpQTWMvSDhZZGZT?=
	=?utf-8?B?amJKWEUwUktWcExpdUhpeEg0eU53Ty81ekhSclJROU1OWnpxbmU1aFFOWC93?=
	=?utf-8?B?aEZ4NVlGdFhOMHNFd3JiOHFVbFVZK3JtQW4rMGtjSmVVSEF6bDNCc3VaRDgw?=
	=?utf-8?B?T05vUDNCaUsyQzkxUXprMXFJaVN6TXFKUzBMZzZaUUJJQThnbzZ4YXdtZWs5?=
	=?utf-8?B?YjhzL0hyZDJNVXdJRHIrZG56Mktmc016ZlBJT2hqbnA0V0VHckRPZnk5UDB0?=
	=?utf-8?B?eDczVGIyQnVVaXlTczZwU3U4WUZ3aTVPTVVHVklUek9BRVZSNnBQb3duSFd0?=
	=?utf-8?B?cWtZVEdXazR6TXJlR1JXYzBzT2xlT2ZhWm5oSTdUOWd6VytXR0pjYUFmNVNn?=
	=?utf-8?B?MWw0b2JRaGZKUnM0bWE3WTVUYWM3R1RqUkNUR3d5TVFndUFCQzUxR0Z0ZlRn?=
	=?utf-8?B?cG1GZThGeEVpa2lmb3NVR1MwMnpjeFBpemsyaXNURWFLWkFnVDZyN21wZzlH?=
	=?utf-8?B?M3JWMXNFN2MrSHRLNjVvdjZZR28xNm9IMUpXNlU0eWNpbUp5YXZZMTBvYm9C?=
	=?utf-8?B?UjhHdHJrUTF3anM0aXlqY1g2YmtCL0ZtNm1GZERxSkI2OHVwVjhnU2l6ZGdD?=
	=?utf-8?B?c2tZKzE5RnBVSEtFUDZsSzU3Q3ZudGJmUVpLNitQbHdCbG40dXAzNDU2a1Nh?=
	=?utf-8?B?djF1V3Jyak43YVRpd1RwQnNTUXMxL2psMzNCaE5ZdnZ6czVaSUR4YkNkdE9z?=
	=?utf-8?B?YUl5L1lHYWNMTUdQSnNVNGtwdEpZTWRvZE5IODZlUkZXS3o3OGo1MTFISGVT?=
	=?utf-8?B?V1JWUjR4VGViY2FlenI3cWsvOEN3V1FKeUxhMDVMeVhHU3ovOU94S2ZSSmJi?=
	=?utf-8?B?WDNlcEVsTkljWjQzMjFkOTVjeVUzTndHRzU5dzVIb1NmSXpEbWppQUdiZFZB?=
	=?utf-8?B?d2hNbVVRSXJhU1lHZWk5QjZLdE1ndS9HVzlJcW1xeEhmdnd2dytQVklEeDM3?=
	=?utf-8?B?ajJlRERSSlVhMnpZSUNPMGNQRW0yUGJqWGhxME8zOVhUdTgzK1BGcVcrVDFX?=
	=?utf-8?B?bnpJTkxCZGJuUmtGZFQrOGdqanpNWUo3S2pJUUtMNVBnUVdudy9mWG5FWkMv?=
	=?utf-8?B?NDgxZkpkMnVNSjh5NFZGTmt0dmdrOE9NRjRmSGZmN0pKNk9KNlY4MWJncTd1?=
	=?utf-8?B?MEUrWENwc2czNXUrdEV5RUVyQTRreCt4QWN4U0xlc24zeXVha3IyeDRzTFZn?=
	=?utf-8?B?azBnWjd1bXZ0U3BDVGl1MWxSUkNVcVpHQnBTcmtYekxpMytZdy9hR3JIaEtC?=
	=?utf-8?B?bk1OMmNpbzJ0Uk1FdS9EaHo3UzFzbS9qd1RZMnhNMXpBcXA3K3FXUmZBYnJl?=
	=?utf-8?B?djhjS1lxYis3UTRZb1UwWUw1Kzh5ZVZBWlJqUnBPVHhoWnVjWm5FQ3dyRWYz?=
	=?utf-8?B?UHBPc0t1dGt5djRnVGVDM1JiOTFNOEJOa2o1VGE2elpYQ2ZPRUtQWGM5RFVt?=
	=?utf-8?B?dWUwZ1p3RDQ5MHI1Y1BrSDErd2t3WnlhNVJWbVRUWm9UZUswY01oSmdzWDZD?=
	=?utf-8?B?a0RtL0FvcUFvNE9UT010WjQwRWtDR1FyTkhHRHY5Y3RlU2RHaW82REV3NDBM?=
	=?utf-8?B?NUFSbDRlem90a1hhTjdkNGI1a3hKUjkxeWF6c2pPUGhRL0doYnFPZjBXQ2wz?=
	=?utf-8?B?Snc4djFWREhtVUQ0RE5wbkxicWtWQ3habFY5NWp0SU9zUGV0ekcyRTNHdGs3?=
	=?utf-8?B?ZTE1R2pTTFk0T3cxN0dDMVNKTDI5UWhNa3piSjA4bUo2YnYvVjRaT2w1NG90?=
	=?utf-8?B?ZnZvNmc2bEpqRUdjdUlXWm5BY0xRSGc0MDVSNExmbkdNbEdnUWdHWExzRUNQ?=
	=?utf-8?Q?OFk8xs2H?=
X-Microsoft-Exchange-Diagnostics: 1; MWHPR0101MB2943;
	6:m3LL47wQzjFgIhuIhwsZ0T8MHipgvEg9Z1Z6+9p/iBMdpqoc4SP8RGxN4fq302avGp3IhAMYv9yDa+gY5/iklEEtBJuZNS5ztzaByldocLQCQnCUc5wOoGGMw52TOIw5SAxXkTFmApkCdpd8bqvvZC1ykBmq7d++4MjuU2+rqMQIIVFi6BQhgdWO8EyrR1Nn15jWW16ZCAkbwpi98Uo40bEIo+d5+iRKKkAd3Jm0qwAnKO0aC3XoOFJ0IksLiqOKTyRja5zr2CRZUbM4sCEdp85pAb2BhBhO1TLlj4LK+ON/aRSEnWaT9eGFcIkcLOUeSP+VCcTd9rpgEeGUHkemxWxofXDKD7s+0ElO7lK56W4=;
	5:RGIYTeSBOp9ESyPWA91+ScV2tVU2T+cX3JwbxMmdXzl7Lauqd8nWPGBgeKMDu+LsjM0ZzcuygLrOhYZDHK23bHbfMhp9/lUR5GJkIOyiZz9LdrAhp1dJvmV8xAlppkYmo8yQwgEEzTdVlUTDwopPjVSyKJXOsc/Ovo0CsybhE2A=;
	24:30AKEKFNpC9LmY2RxtcdapsyMCVD/m1khekdt9QHNlv4fgzCz6LDiWlstzfhlKzvTVQzOFtgNfaF/ZriRS3OhXD5mrMf+m08pq8xzmKtmFc=;
	7:Cn3RAqVK5VSRfswG1wkeruiyt1rZJrL5yw4YgM2KyxOPslXU3neA2KtPdYAUIn5NMMif4q6sIXkt0NKdBpRMyjUIWOL6EGQKEocHaIPFsLLbcHtr0xD0D/D0t5sfsIdF4EgaxHmO0rYdvS0dJOUsap8+H4BMD1vIWZ7XM17Fht2uX6kXHYePYRJUgTPSB8owZNaoK6hjq6KI6Ju9PXb7VReFf4ZLjzgiD+q/mbbnKe0rfkOCnVlaz/3bN4IoV/V1
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2017 20:52:12.5908 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 81bae836-1555-4b63-37b3-08d543348d70
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR0101MB2943
Cc: "Lock, Joshua G" <joshua.g.lock@intel.com>
Subject: Re: CROPS status?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 14 Dec 2017 20:52:17 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/13/2017 12:44 PM, Avery, Brian wrote:
> + joshua.
> 
> I am no longer working on the YP, but Joshua is looking after CROPS. It is actually a family of containers, so some parts have been updated more recently.
> 
> -brian
> 

Thanks Brian. Joshua, do you know the code status? Is the project still 
actively being worked on? Are there any related repositories I should be 
looking at?

> On 12/13/17, 10:26 AM, "Martin Kelly" <mkelly@xevo.com> wrote:
> 
>      Hi,
>      
>      I recently discovered the CROPS project at
>      https://github.com/crops/crops. It looks like a great idea, but I see it
>      hasn't had a commit since June 23, 2016. Is the project still active?
>      
>      Thanks,
>      Martin
>      
> 

