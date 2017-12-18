Return-Path: <mkelly@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F25BE00D03; Mon, 18 Dec 2017 11:14:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.76 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 5612 seconds by postgrey-1.32 at yocto-www;
	Mon, 18 Dec 2017 11:14:11 PST
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0076.outbound.protection.outlook.com [104.47.36.76])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CBA9E00A9C
	for <yocto@yoctoproject.org>; Mon, 18 Dec 2017 11:14:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=/7sL02YS5p8DFIpGRhs8YUyrWekgNb4f8Xnva86zHF0=;
	b=njWznXRl33m6+cNg8EYT0GUb3Gpj8OoeMgYFJ/gW78uHn1wHZl1HDlvHvjdmfzfJwC+Ptc7UFzw9atyxy0gMTFq847a7K6XGcpKgdIBxCVhrGIl0viu01y4eM419MQiOl4OgBdaDFoSR0IEDYfLiyiRmJqJLSs88+ttBLQIsH4A=
Received: from [10.201.1.39] (65.122.179.226) by
	DM5PR0101MB2939.prod.exchangelabs.com (10.174.183.14) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.323.15; Mon, 18 Dec 2017 17:40:36 +0000
To: Joshua Lock <joshua.g.lock@linux.intel.com>,
	"Avery, Brian" <brian.avery@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <13c0ade8-e1fe-d4e7-a73b-67ea4c425321@xevo.com>
	<A3D4AF61-F4E3-49DE-BC93-DE355D147B7E@intel.com>
	<a280cd23-80e9-474f-0f2c-db0d5070b8cf@xevo.com>
	<3a1dd0c7-8e98-5497-cc87-256e2f5eabf4@linux.intel.com>
From: Martin Kelly <mkelly@xevo.com>
Message-ID: <076de94d-b239-c8aa-e860-f1d11fcff383@xevo.com>
Date: Mon, 18 Dec 2017 09:40:30 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <3a1dd0c7-8e98-5497-cc87-256e2f5eabf4@linux.intel.com>
X-Originating-IP: [65.122.179.226]
X-ClientProxiedBy: CY4PR20CA0005.namprd20.prod.outlook.com (10.173.116.143) To
	DM5PR0101MB2939.prod.exchangelabs.com (10.174.183.14)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: abbe872a-9734-4a53-7f50-08d5463e72da
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(5600026)(4604075)(4534020)(4602075)(4627115)(201703031133081)(201702281549075)(2017052603307);
	SRVR:DM5PR0101MB2939; 
X-Microsoft-Exchange-Diagnostics: 1; DM5PR0101MB2939;
	3:WlRPub1hE2/ZdueIfcW71etvIG6rjStNRmiQgub0iukjsVBwRUYAsYGCljqinYkZniM+uYpZ/7DLy0+ZCXIRM9WxrrQ0JaJzFLfJv0XR7MZSHed9wLWg47A7OFZUfEt9KwcYRtu/5+DqF4dw8kv7GAWZpEUXGK88gRwlEr+c30AnYpDwA557fiRSDYKREpuolfGmhKFXtkJKxrt9+vV1idQ9trXA8G2sijzsGT6UHP2gXJfNgTBTfDrwZU91zDTG;
	25:nJfPWN56JFHs5tD4Oy6/MOEFwta+anKL0jzlGNpOLwvJlKjUw0OgcpUMdGhHIV7eKTP2Lc6QJ1+AgCI8OiA7yL3vmVeKfXfEFc74IekaYzOQDcduJf/FYipwR+b9cBVU5my1eSMRmN6DRdwjH9bQStK2jGI2PuT28pxDlB5fDttCcm/yE2YUzHPr8HhqpXVsISgCScTokZ+bNPJtiYUQe9KNF2O/lViBjfEy1jABzZRwvPUZUpjckyrOCBbQEomh9UrfiQNW/8093BZUU0y3OSQpjTcFXlH4If1OV5bqI/pDnRVQMkh53aMRP6Crez/APsMamjrCj9tveAfQ8WAc1Q==;
	31:TguLeLaEtyKVkKXO8nAZyV6hPtTH1isl9Li+pokFklP7xqVLFwScd9LKJrhAJV0zfMgFxTPyuiHJvZJC2pQQ5PTrEM42beEfCaMefMUjUhfX0ko2hJBRhWc9rMzzuVbSIDOuh1445TxK9uLMr734tdVUEaoSQ6UiuhcOdOz8y2zXqxmW28dhz9g04y664IGWHPfLSu/Z6P4+XiqjCQeaWlDin0kwQbSP05M5ICYXZIw=
X-MS-TrafficTypeDiagnostic: DM5PR0101MB2939:
X-Microsoft-Exchange-Diagnostics: 1; DM5PR0101MB2939;
	20:QZ0aihoBGUIRpJUDX+jBAS/wK6C1HiQSXW9k4cqzuBdOwfHNv9RLJ/guclCqqMrc/qidxtkF4gPY98y9lqn0aiSPRdBbH36sZ7a48qKH86mUFLhcM+3lAF9W7znm7no01nnUnAdthQVyCTzkNXAzndY+/T1J2+9negh7Z16JcU3Ozy9B45RRqoua25M8uTUcX3nTmSr88Iz2CG6kJqxa1N50RLozuDAewJ29RqsbPOP7bv47gNh4j3hWZWww/llqH6dbK35zkdmY5oah4+ZFWVSZ0oWd8KTDMr3oXy/PEplpjl/VoPOkmPaIMCKl6siwZyshuGwv+tNSZ2pkb/PrxEnDoi4Uk85SRM1uGHCrANi552QaCdvfVYj8AlNV95caeeOfuVgur8hrH52ZPiZrDhCJ9prZNfWuZiJ6pi68Qzk=;
	4:M3tZcoc72ozFXxeK/DDgDJZTVcivANEInL3/J8H4+3ppSRjdQdaNffjoozkyhDlCg6l+5YsQy74ZcuT2wSQA6RWHoKAZyPpvH/f1SM5Wg11IbagBiUNG54xvqLkHSeLllYgKnepYTiFZ4P8HWKClC8Zqu3y1tQ/gpYwS2Zkd4vG43fSCq56qU/D/ee1PHDCEbvNE7Z8g3Ik8pK8J2T4toP+RkfDE+NP8H47wWIdb1nLtvpqcHC6Cj8n3gkQckiCz8SRExMv1aeqLAPxENa2sGQ==
X-Microsoft-Antispam-PRVS: <DM5PR0101MB29398A237030A9A302063702AB0E0@DM5PR0101MB2939.prod.exchangelabs.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040450)(2401047)(5005006)(8121501046)(3002001)(3231023)(10201501046)(93006095)(93001095)(6041248)(20161123564025)(20161123562025)(20161123560025)(20161123555025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(6072148)(201708071742011);
	SRVR:DM5PR0101MB2939; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:DM5PR0101MB2939; 
X-Forefront-PRVS: 0525BB0ADF
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(6049001)(346002)(376002)(396003)(39840400004)(366004)(199004)(189003)(51914003)(24454002)(966005)(16576012)(386003)(53546011)(59450400001)(316002)(2486003)(52146003)(90366009)(2950100002)(2906002)(93886005)(36756003)(23676004)(110136005)(52116002)(58126008)(305945005)(6666003)(8676002)(68736007)(7736002)(67846002)(2501003)(83506002)(6486002)(77096006)(65826007)(5660300001)(229853002)(25786009)(31696002)(4326008)(86362001)(65956001)(6246003)(3846002)(8936002)(47776003)(64126003)(66066001)(97736004)(6306002)(105586002)(106356001)(31686004)(53936002)(81156014)(81166006)(478600001)(76176011)(16526018)(50466002)(65806001)(6116002)(230700001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR0101MB2939; H:[10.201.1.39];
	FPR:; SPF:None; PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
Received-SPF: None (protection.outlook.com: xevo.com does not designate
	permitted sender hosts)
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=mkelly@xevo.com; 
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtETTVQUjAxMDFNQjI5Mzk7MjM6Rm0rSHg0L29uZ0tNTy9ESnNaamJ1UnJq?=
	=?utf-8?B?UDZjUlhleUNJNUoybm5HcjcrOVBNTlg4NWVKSy9HaEdrNDVvbDQ0SzFPRW16?=
	=?utf-8?B?ZVRWek42VTBEYTVGZll4d3dHQXZhZHJKamwzSVU3dkttQkRYc2hHcXhBSTNR?=
	=?utf-8?B?RXgyQThpLzRZYTZ6WkF0MWtnajhsUitSRTJaMWZsaExiWU5vZGRHTjBHOFJ6?=
	=?utf-8?B?NDJkMXlsOG9ub1JmSlc3ZE9BbHhLeEt1ODJOcTFFUlhBNVdTS05wdWJjTEFO?=
	=?utf-8?B?M0YzMkJZaTJZeXNoOUVYbkFFcHljVE1wVWp0eklRbTBnQkhzQTIzSXZQR25E?=
	=?utf-8?B?NjhPRDgwZnp2TFB1OGFrWjlCYWFXNWt4bis2UDlBU3RMd1J2cjU3TWhRQVBP?=
	=?utf-8?B?SFNJL3E3UHYwK0Z2YTVjNXUyWkhGa3lGcy9EZkRwdnZpNzNMSHBSTmhzcG9H?=
	=?utf-8?B?QWR5ZlJyWGs1aGRHZE9hQXo5ZWpCSVFLN3BRTTNoTEdwVmZYSkVVZStFQTVX?=
	=?utf-8?B?di85YTZMZ3d6UzRlVTM0SHAwODIrK2NRZ2k1T3lhb1pIVEYvM2FBdnVlNDYx?=
	=?utf-8?B?WHlodDJLb3JJbm9sOStERkV4Rmp6Uk03WnNPYks0cnc0R2ljK1Q5VytHbnRK?=
	=?utf-8?B?RDZ4Ym51ZXhQYVlXTkcrL0dPaEtRQ1A4eEdSUDEydnk3MzR4YkgrbG91N3BP?=
	=?utf-8?B?bUxsOEczWGNKQ05lSy96ci96dDVOa1o1V3d3cjBIQ2ZHaWJYcTVnVWY2eEx5?=
	=?utf-8?B?bTVLUVhXdU9qNndPS1FGUWN3UlY1b2x1MXhwNnIzRy91WDJveWVnM0I2aHYx?=
	=?utf-8?B?aExHcmxjZUp1YWltTmcyend4elI2NmtRVlhPaWRleGJ1azBoOUZtTVI0TXpW?=
	=?utf-8?B?cWtnY2p6NEtBMXBCN0o2V0dwRUh3c0FscFYxU2NBcUpBeklJOFY5VUtJcGZq?=
	=?utf-8?B?cTZLaFlyOXNmbnB1SkNVWGZTUzRadk0vSFlIdlpIcHVEN0NxVzZwRm9ZS1gv?=
	=?utf-8?B?VHhWTk5oRm5JeS9KNzNFYWEzd3hsUEppSTBoSEl4NThwWGpsek5oclhmd1ha?=
	=?utf-8?B?dTJNbk1tQml2bVpUdWNRTElmbE9kaUZkMnZzWVB5UEJ0SzlQVjB0YW5hUWxJ?=
	=?utf-8?B?S3o3bDJCZlRUN3p5YWFKSVZlM0VHdXdQN2pqdzVyUDBEY2FwaDJBemRRNkQ1?=
	=?utf-8?B?VWt5V2hjVzB2d2ptNU9uQWZCdkJqRWxyZWd4SEJTdXNxTjdoWXc2SW1tM2VN?=
	=?utf-8?B?VGlYRm56Q0JnRDRLck9BcFoxNmEyQ0dqK1U4SUlPUzJaMnJkNlkyTVlzU0ZT?=
	=?utf-8?B?L0N3Y1plZ3RyNWw1enlERjk3Ym53MTRQNHMxZjRSVkpnbFJDT0YwYlcrNnQ1?=
	=?utf-8?B?NVZkakFtajVpMWUyeTFadGNxY0xHUlFXZjNuVDYzMjRHdjJwejV1VDY2QmRL?=
	=?utf-8?B?Q1R1V3lGSEVGbE9ieGxWeEpvSll6S3pKb21Rdks2Ny9SZWl0aWdwY2puYzlS?=
	=?utf-8?B?ZExHY2t5M2taM1F6am1MK0JNSlhFTWt1UnhnTW1MVDE5SjE0YTRqQ0pkekRF?=
	=?utf-8?B?eVc4ZXZsRTJqYSsvUDN3b2NRa3NnVTQzTWlrUjd2WUYzWHpnNkkrek5wOGZB?=
	=?utf-8?B?eXZ3OUtHSDIyV1lOOE9Ic2gvbHdRZGNFd09MNHpSb1FPVUlwNzlXV3ZiTkRn?=
	=?utf-8?B?QzhmSER5cHZwalE1UTl3MnJrMkVpWWVhUUZYMWdKUDJCZWYxTi80UURDRERC?=
	=?utf-8?B?Rjh2ZW9ubi9nbm0wUzM4TUpHKzYrdFJBUUhOWk9xRnlabmFUN2hmVkVJTlNx?=
	=?utf-8?B?Y0JHZm1uNVJGVUdOS0V0SVh6RHd4d2pPWk1PbStpS1JvWXZUNHd4L3NYbyt6?=
	=?utf-8?B?MnhQSTkxZE5GSlhrRU84YTU2ZkM0TUNFYzdPU0xVQ3VQWXBJbGdsRXc3L01V?=
	=?utf-8?B?VWV0aTVOQmlIM3diTkhyTzhBQmZuNjVzeVF4Smp1UnNnckRDa1VqbEhmL0JV?=
	=?utf-8?B?ZTR0eXBCVkcxRHNvU2dINXJ3c2tndHZOU2h4ckVBPT0=?=
X-Microsoft-Exchange-Diagnostics: 1; DM5PR0101MB2939;
	6:8b8UeriofVHM1TZd36lK2PeAwcu5laqb+M9NLLTGB05p4kP6EpFCGBKWboQx/e+qriQJfPfiPC0IUyKiaD6NOTbwVwPSVwmeZsqcw/mLzJY2dup7Z3J4e5AAd6z1bgC5o1i+Nx0FJdREYf7Zqq/zhxgV/X+JnIDy5K9q77JDOfQ8fErrWYwVD1qrRy1w0Q33nnvtb/It5CfCmwPByiftAMnZZT9uQ+j09WG1g7rBZVuMe+2hB1kwKAi/5JGMzaL9U6isnMGRA3VdUM2lDvOuz4wheo9i6CzZc+kB6i4u2PBaJ7ikKFwSu4Ru7kJ4cgzML+wiQAarHSQvKctcQ7waKc6uw4tojaVOTQPKyCobe+Y=;
	5:RX9XZYl23uO4XCP5tjbbQA2QNH5eNBoHUWKvPIgOdPxrxutzmUond8JlxNksbaO/E+Oe6L28wBImMqI+Sw40kYyvbG2OX4RKSE+eS7dUWXs5oUcdS/rOm2QwCK2FiHzoF/km1dAeRU0iINuz6sp3EcSwMeP/oVwi3kjkKC+43qQ=;
	24:Z3l2DXWywYsbobnp5xqNfA7KSYOZ7TpN+OQUzlAxmQ5Env+v4Z4Iaxul6kZazJmH4XHCo9xbvHzdeWbjCGgWV4XlXR3QTt7a6/JB86fsbw4=;
	7:wGxDtdCsoBybv5sVDHN/Bz0wrYLX7TusHI88JBdNTooJ+Q/YzA93CzzKNSPictRDWWHaGciMPPEq/qqbuwW4C01ulYQ42dQiSHPrpr8pSxj8zykXK/sqNj7ADADzwS0x4jOCnhMq/IXZbuaHGsizcCBp663mjsztgiz5YFYmeyCDjBnd7tF8wlgsGhc2wUUo6HKp7IIUanhQT34CHrNGj0nw1kHYxJm+WqQSlSoAy4LIKZABgr3Jp9RKxL1Ci223
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2017 17:40:36.8975 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: abbe872a-9734-4a53-7f50-08d5463e72da
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR0101MB2939
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
X-List-Received-Date: Mon, 18 Dec 2017 19:14:13 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/18/2017 07:05 AM, Joshua Lock wrote:
> Hi Martin,
> 
> On 14/12/17 20:52, Martin Kelly wrote:
>> On 12/13/2017 12:44 PM, Avery, Brian wrote:
>>> + joshua.
>>>
>>> I am no longer working on the YP, but Joshua is looking after CROPS. 
>>> It is actually a family of containers, so some parts have been 
>>> updated more recently.
>>>
>>> -brian
>>>
>>
>> Thanks Brian. Joshua, do you know the code status? Is the project 
>> still actively being worked on? Are there any related repositories I 
>> should be looking at?
> 
> We have relatively little time for feature development, but we are 
> attempting to keep the container images up-to-date with new distro 
> releases. There are Fedora 27 and Ubuntu 17.10 versions of the 
> containers available on Docker Hub[1].
> 
> Thanks,
> Joshua
> 
> 1. https://hub.docker.com/r/crops/

OK, thanks for the information!

