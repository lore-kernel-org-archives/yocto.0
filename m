Return-Path: <mkelly@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 908EBE00D69; Wed, 13 Dec 2017 10:40:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.33.51 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 880 seconds by postgrey-1.32 at yocto-www;
	Wed, 13 Dec 2017 10:40:54 PST
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-bn3nam01on0051.outbound.protection.outlook.com [104.47.33.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B297BE00C59
	for <yocto@yoctoproject.org>; Wed, 13 Dec 2017 10:40:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=Ik5AQjbOyv57I0HTtn1wm8HKDJEo2NC6JM8J1Sd361I=;
	b=U/kr1N2u6MHmihIxZGaNf8SdRdN71R45C3QwE4RZ3mLcihO4GELxfVAQqG7yKUPOgjuAGiy/k6xWrJwvurog+sroCoOPwa4gEENq3HQKD5RtepmE6mWmo15gGWsbW0DOvy/cxQ428OQ0cDlotKEHTCAlZlTTCr6V4aPt38HuNWg=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=mkelly@xevo.com; 
Received: from [192.168.0.3] (71.35.172.156) by
	BN6PR0101MB2931.prod.exchangelabs.com (10.174.87.140) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.302.9; Wed, 13 Dec 2017 18:26:11 +0000
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Martin Kelly <mkelly@xevo.com>
Message-ID: <13c0ade8-e1fe-d4e7-a73b-67ea4c425321@xevo.com>
Date: Wed, 13 Dec 2017 10:26:04 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
X-Originating-IP: [71.35.172.156]
X-ClientProxiedBy: DM5PR2201CA0033.namprd22.prod.outlook.com (10.174.180.150)
	To BN6PR0101MB2931.prod.exchangelabs.com (10.174.87.140)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: af67f260-3aeb-412d-3a12-08d54256fd30
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(4534020)(4602075)(4627115)(201703031133081)(201702281549075)(5600026)(4604075)(2017052603307);
	SRVR:BN6PR0101MB2931; 
X-Microsoft-Exchange-Diagnostics: 1; BN6PR0101MB2931;
	3:+VnxWzXCIbHpbZsyuml6Em/osmbqvm4rm2m8/S2X/DJO/EpQMNvECh4jlZ14uXhU6to4GdogTzExqyjnXZn0eQsOFcjBIOIRBgO0eKzuFOU317wW4XGLMJ6REP+FuZjOiiYg6NdSLdTj64Y1+qfIQW4RD7IqcOMf8yB15aI/0/fTlzg2+X4X300NF53swS6/AOyIr9thc7trSKP6DxgBPyg1hHtW/VmWzkJ/DPOUIr4Kg8Kiq2vOZwLhTVNfEcIl;
	25:0KpLWLqYnShqV1FPDoQ2yGL4TztYahNDV7yxHOuhdI+J/9rz+Da0bpYGFk70KTOWBsIWk92XGkZrnhUYo2RJ6spifLoHcNRBvIgXvx4UvnVuqnUAqcAsVFgsNJtFZDI2XAw/u7V4C8D4ShQLPDj0ubs5HXB59JH4s9ec/1A44tyu3RoMNuZdp2Luq/xx9tYywpoA88fnRUKOTWt69kr1cmi4bKgARjS8uUQTkWAgXjvKadwtMayhL13kzqzDS0oBQsUrBM+nsnP1sO3OI3bkw+7jfo2u6cDW6oFU3cPyFaTyUHvXbcXcx82B53fsHYc8dahgyOaaV4HgFjJ9y3qUcg==;
	31:mbqTHZVfwCGAOF8GhRs4NYh/qw8toXNqC+6P5C23hbx1GIAMZGABGTUdsRt1OFwEO1sk3cTP7ilddEq0KRJvzzHuVv32I6uxRstNVwvDNWsWxxvCZMA1OnxWq/jnRPmZMu3FdtESda4Ic7TVGd5mQE41qa9SVRMXWhEq9klcHNZ/E11zfTRTfvlPxxPemsrFzokRa5LbB8CUN0bd5qS0iIPIPwvswH43nKxf3c7iEHk=
X-MS-TrafficTypeDiagnostic: BN6PR0101MB2931:
X-Microsoft-Exchange-Diagnostics: 1; BN6PR0101MB2931;
	20:MzJEEQFgh4BYMT3Ykf0FMBaV8Bn3R/JMX/bMRh8/QMHCO/cb57uBUezzzLxxWeP04V66R4LLSgsTnkuCalcfrfrz0L4wtKTMP+cmJrUJycza013tSB52YhUYCXkayk5tQ0XVaYV9JPLjJOHHvaXiRU1ksJNUFxwdGi8kPNDXl9PHwH0vv66aa7B/kP0gIV9Gc6PgKWEavZHfvTqGNLNI44Km/DU1bybJ/pOv4bIng67b6Dx9/0JbDYetD5nkXO/jiIx5DQUr1ozp51e2GUwcARC+TfRFrgyIRC1tbx43FtYE273uYQRQ7rivHf5n06TqTOWDxXnzWe0Mu1VjMWVi09W+EItYLqDhnxHvJd1c3BvjNB5Y/s0bzwNkUshlRIexiF1/nKA00H4kT6Ftkldy+tCu6rNwjgNbkz/8FfAYD8M=;
	4:DYmTsESiEQ6qLdpFdDRIr06ROSv4xSzn8xJ1zB5MycaNLXOASAM/GblK0EiCiK1jBZwM6K4Tinq5uvQi9/jFkGLi+zVlmaNLBTiScHpLnAvk4vmDaDlC7o9+5F8DVqmmNoe5UIJu41SILPEu6tENez+fLdTk32scNE5Qb2p2CuOfULW28COQcGfjUv81NXovnio+t/kRGUZWan0v/6rX+cbp4+73Ihv9TMl4FF2kkJRuXuL7CnVZqqsZjKAkWAViIG4RhuQCHrOfh+cac+NcxxIinG9LmthvQYLsMaKNPc5YYYVvmLbtB832FftNSePb
X-Microsoft-Antispam-PRVS: <BN6PR0101MB2931CC68FFBC92F49B472B36AB350@BN6PR0101MB2931.prod.exchangelabs.com>
X-Exchange-Antispam-Report-Test: UriScan:(166708455590820);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040450)(2401047)(5005006)(8121501046)(3002001)(3231023)(93006095)(93001095)(10201501046)(6041248)(20161123558100)(20161123562025)(20161123560025)(20161123564025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123555025)(6072148)(201708071742011);
	SRVR:BN6PR0101MB2931; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:BN6PR0101MB2931; 
X-Forefront-PRVS: 052017CAF1
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(6049001)(376002)(346002)(366004)(189003)(199004)(4326008)(7116003)(8936002)(3480700004)(53936002)(36756003)(65826007)(5660300001)(106356001)(2351001)(65806001)(83506002)(67846002)(58126008)(16576012)(25786009)(105586002)(2501003)(65956001)(316002)(47776003)(66066001)(6666003)(6916009)(52116002)(31686004)(77096006)(558084003)(966005)(2906002)(6486002)(90366009)(478600001)(5640700003)(2486003)(97736004)(68736007)(31696002)(81166006)(16526018)(50466002)(86362001)(230700001)(3846002)(52146003)(23676004)(81156014)(305945005)(6116002)(7736002)(64126003)(1730700003)(117156002)(6306002)(8676002)(386003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR0101MB2931; H:[192.168.0.3];
	FPR:; SPF:None; PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
Received-SPF: None (protection.outlook.com: xevo.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtCTjZQUjAxMDFNQjI5MzE7MjM6TDRCTlJCN3M3bWUxeTJYeUh0SERJdzl1?=
	=?utf-8?B?QlZvdWNTaGd3S09TamFBR0xjTko3MmdaVWZTOVlpZVRwYTA0UC9aNFl4Znkw?=
	=?utf-8?B?eTgwLzZjditaVHJxY0JrQWRoamhkRzhMaGlwamN6TEZQeW1ZQi9rQnVwQWd5?=
	=?utf-8?B?MXJUK1Nad2JackFLbkNoQXYxbkJNbnJHZ3dqOGVGWW5BZlJsazFtRUF1OGVy?=
	=?utf-8?B?K2lGVVNPL3VjTDlMY3BLZ0hEY3BKSHhiZlZoVkxjK0pXZ1U0bk8wWU9HT2ky?=
	=?utf-8?B?NERYS051Wm1NVis1QUFWdlFkTEMxL3A2bE1wRHovM0lYSnZXMnArRHZvWTFD?=
	=?utf-8?B?d0hFNTZ5RzNVWFN3M2l3L3cwUTVObEM0aGxvWVVIRU1YYWZHTHk3VXNyMFE2?=
	=?utf-8?B?SXp4SlNSUFFLOXgra3BBcDZXUkdwa2pwWjQxUXNmNmhwWWp0eUVlZkh1dGVC?=
	=?utf-8?B?M1ZqaHV5djJrdGpFMFVUSENKYVAwQlRwOEM3Q0FId2VIb3NEYUMvTURhdlNi?=
	=?utf-8?B?Z1laVzc0RWYxVVF5YThkQmJmckp6STUzQnNPS01hOXBQTWhTeDB0N2dRZHRM?=
	=?utf-8?B?NXJRTGs3NmxZemtscm1SbjhIUG9hQVk4WEU3ZkVhWUFBNUVBZjB1N0hvOFNh?=
	=?utf-8?B?dG1FaG04NzczNVZOZG9UbS9QNVBOMzQ0TE1FaklHaWFyZlhibXJKNHVhTHJx?=
	=?utf-8?B?WjFQVHljSnFtR1MzSDBVSGZqaFEzRWkzTzR2cExCOUpCTmp0OFpxNUI5MnMr?=
	=?utf-8?B?MXRmcHRjODdSTnRobjhUc05ZenlwQkhMbzlscS9zeE81Z29KVm9HMzIyZHVG?=
	=?utf-8?B?eHg1cnVjM1hSY00vcWZhMUR3WGdBcFBmZzR3ZHZnR2xYQkxpT2tYNG96WVM0?=
	=?utf-8?B?aGVZTVRGT3huN2VQTlp3bHA3cGtrbXdIa01HWEFxZHh1OS82NUR4cFRoVk5J?=
	=?utf-8?B?SDhoQU1UL0tybDJsMW5rdVdWbFR4NVVqbS9pQmNjOS9BRU45aXJ2VjhJWU93?=
	=?utf-8?B?TVhDTW0wR2gyOGRQNUFyQW1sZ2k1dVd2RzIxSElJMXIyeldhNlc5aUdBTGtB?=
	=?utf-8?B?aFlQOU52TzdVSjVudUg5UVRlOTVIK1phWHpPT0lVTm9ERUw1QSsxQnFxZSs0?=
	=?utf-8?B?bHl2Q25DVzEyTVZQNnpnNVcrRFlITExhcWxqakUwVnY0Y1djRmZiYXVuNytZ?=
	=?utf-8?B?dTRHdEptdGVMOW0ybkR3RHJYQzVsMkN0WDVjUXhVMzNoeExQNFl0L2RDeXlp?=
	=?utf-8?B?TzZZU2x0YmNaNlkxVWM5ZytFYTVUb1FCS1lldUpXU201UFZTbUgxYzZ3MnIr?=
	=?utf-8?B?RDB6cHhWU1dFc1JEVGFTNWl3RG5yWGVKRjllRVZPVC9tSWF3c1hpeTh5dTN6?=
	=?utf-8?B?K3I0MEVLMm5LOGgwOGNOTGxDSk8xN2ZSVXhnMUw2cHk0M0k5Ump6dnJSOTQv?=
	=?utf-8?B?ZkhuZjJLekF6Ni94MHoyMlIxWi9OWnd5L0FnaHdPN1pPVlNvR01NSmxvZTRB?=
	=?utf-8?B?WENnbEoxcU10MGZjYm04N3Y0MG41SFFMSFZnWGtlZ2l5QWVYb2JmL3Nya096?=
	=?utf-8?B?TnkyK21nS1NmUlFJNE5NaE13TDIxbGhtOFYwMzFja0NsRm9KZGphZGdHczNL?=
	=?utf-8?B?L2YzWjRFUmJOSTE3eitvbGF0NlBOZ2t0bzhReEdQTDBqZzl5eXZvOHRyR0c2?=
	=?utf-8?B?bS9MTmt0S29xZjFhRFdBKzdBRWp6cVVPWXIrS3VvRFdkNWc2TVlqRnhHeXlY?=
	=?utf-8?B?WGk1NlFmV3pPZ3laWWtnYUJLMCtqODNSL05sTTFOZUc1ZVVBMnlNUDJFYTJj?=
	=?utf-8?B?SE5hRzZ1ZmZac0tHZ3hEWDdGWm4zWVZFUDVjRzZacVBGRFB3R3did000TDBn?=
	=?utf-8?Q?heb+pVDbndfDMaSKXRGyYloS+vQrn7hJeY?=
X-Microsoft-Exchange-Diagnostics: 1; BN6PR0101MB2931;
	6:IUdUSKlyHbU/QfUXE0JDlaDs964UspXCe9f6/wGOFHt0APe55b5JDAIuAABrByCpPCT0r61yOWF79UrF5ovAQEsSj36gO0QSsGO4RDGhOy7js5W6mEzpH5ejDelsHziX6BLm7JJvCiXyxOfX170qIRAJnbX9fHDSDPQLrMoiyyBQRi+ETONGL+/SzsiyhCDz0/a5iS7Z5wOxmhG17g7NWIP12Pq2vvZzmqI6OSES2AtW3sacd++kYBqhVjf0IkqCPEjx6SzdbKUoOuWXdb1TLpTF4809KYeHlUaZQaHr0KdIVX3/Jm8IPFpHGeICy0weHVEmj2/M+o2ImLNe8heYkXCJOR2yV08S+DPJuYSGACM=;
	5:plDR1fCKaTpOP7yZdSmZtfKUEbaREe06CuqJKoUs1D2IbBlTW+fUxS+POWMIhkiaJ3mcpaOvnO0SaGEAuX6aE6NwheD57ewNOuqJVarxuy8qlLb3VrZbRQFEvY1PBrNbp/NIPhXt2bvwqRCK08yf3OIwYEjhmnyI0xlPDWm2Tbk=;
	24:+E4yKz7wCzvBjaaRGLMSIJskucFTAlik+3BQx58Rp+1kWMVgu26HPmCVuQ96i/CX49xF5pdNTpGP3xVvZbAtO1Fe3VX4PbF3mi0gQyll9zc=;
	7:Ez+xbMl/a5VOiOVQL7k/713DzIMDxKpZhMU4wFPrEoL/yNum/vBcP/PtVwyKuVSp4PY99CldrzmP98poU10n5DwpR5C/01zoNYcjLkRdSJIgbJt/iWmbCeKRv0DWvPKZLk38KA43UvUuHSZOI3deGAe7/kvXVXqfM8w0dW/2MieRRDivNkKQ2ddRsNACPeTht7jZNoegRpab8HNug//6mbri4JCBUdgQ6i4PBSeCy5OU5xLalNF15QyIwn5g4KqE
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Dec 2017 18:26:11.1928 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: af67f260-3aeb-412d-3a12-08d54256fd30
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR0101MB2931
Cc: brian avery <brian.avery@intel.com>
Subject: CROPS status?
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
X-List-Received-Date: Wed, 13 Dec 2017 18:40:55 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

I recently discovered the CROPS project at 
https://github.com/crops/crops. It looks like a great idea, but I see it 
hasn't had a commit since June 23, 2016. Is the project still active?

Thanks,
Martin

