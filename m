Return-Path: <patrick.vacek@here.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED666E0151A; Fri, 15 Jun 2018 02:49:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.1.118 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 73855 seconds by postgrey-1.32 at yocto-www;
	Fri, 15 Jun 2018 02:49:38 PDT
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
	(mail-ve1eur01on0118.outbound.protection.outlook.com [104.47.1.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EC17E009F4
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2018 02:49:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmcs.onmicrosoft.com; 
	s=selector1-here-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=xzft9qm8L7Z1T5q9trdjEu6h/bbQ6FrKtUg06iodYhk=;
	b=x9fZCTU4WB5OZQmZILeOH30WtAnwSh7xYlaCHiz4IXEXZkOHj+7RYCg8meIsYL52IlF3qz4005DdKcV2KVgijNV1ePq5m39+0040vOZjpxN8zgtS97MGNCOVZ/HrKniJUot6m8x4DKLG94aFCiZw63+T4jCE/DLJ176KP9ps6Ns=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=patrick.vacek@here.com; 
Received: from [192.168.1.113] (87.191.159.149) by
	AM0PR04MB4099.eurprd04.prod.outlook.com (2603:10a6:208:64::33) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.863.16; Fri, 15 Jun 2018 09:34:56 +0000
To: Khem Raj <raj.khem@gmail.com>
References: <785a2b9a-d6c8-8356-d218-ecc80af2c46d@here.com>
	<CAMKF1spJvA1pP1BrwmcazY0n1QujJPU270dpL=vq9Vfuri73nA@mail.gmail.com>
	<83419d13-87b0-40a7-dfa0-b30924399405@here.com>
	<536f8a9d-c5db-6cf6-4d4e-fca749d143a0@gmail.com>
	<a7231983-76e8-4307-4eff-d206f4756b5e@here.com>
	<CAJ86T=Vu-4PURtuk3Di1n7WsvV4yoXJUR+1MTWD-M9htiMqdFA@mail.gmail.com>
	<67f8156f-28dd-d3b8-f2ac-c03bcd587d50@here.com>
	<CAMKF1sptHV5Pc8WZ+zw=7VOUn=kMiekcV-7fFtMBynJgpvmy9Q@mail.gmail.com>
From: Patrick Vacek <patrick.vacek@here.com>
Openpgp: preference=signencrypt
Autocrypt: addr=patrick.vacek@here.com; prefer-encrypt=mutual; keydata=
	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
	j64UOX5oCSfUpA==
Message-ID: <68f08dd5-17a9-1fd2-d056-5b433d5f3a6d@here.com>
Date: Fri, 15 Jun 2018 11:34:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1sptHV5Pc8WZ+zw=7VOUn=kMiekcV-7fFtMBynJgpvmy9Q@mail.gmail.com>
X-Originating-IP: [87.191.159.149]
X-ClientProxiedBy: AM6PR06CA0006.eurprd06.prod.outlook.com
	(2603:10a6:20b:14::19) To AM0PR04MB4099.eurprd04.prod.outlook.com
	(2603:10a6:208:64::33)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fd4a4a31-7727-4783-54e2-08d5d2a34189
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(4534165)(4627221)(201703031133081)(201702281549075)(5600026)(711020)(48565401081)(2017052603328)(7153060)(7193020);
	SRVR:AM0PR04MB4099; 
X-Microsoft-Exchange-Diagnostics: 1; AM0PR04MB4099;
	3:DX2ZNY89NveX1dEtItw0yppXDYsVf162HztP2IzbDs9c4NPvFBg3UrJsB8s8LdpnXqalEfw/FOrXtTmd/kkpt6qwCl3oTgRVBhQgpJDiK/WeucvmEZNzBImCqEg4E+3s+qLZAUA5hKCZUAUvmInci6mGJI2yi9oxmdeoc6XtbMKkNzWGkWfY4jzvyVbXPd1HErq80TLaLklSfigIhq7BQsCJNiRyg6yFEKBNB9YugZxGrZ3gEcLbeypKyI0U6SkZ;
	25:hZVYvuViW2QLUoa5PbEES06WU/9kAIF7IOOPcE32/ltPNZltFIukzzgvgpandiR8t9XjzGhrZg7s+1Pq/CqdcNZIo3J+kiVHKElGWB+/1QNapduyHhN448sjCEU2M1+BtBdyUbT+ljd2dZEJnxYgY+7WrP0+v0ET5L4RUCBH0qoKTiAYb6vUnuGQxJnRpn0+OjyNCqCkSZFBssJcizOgiR3hE7CzF7BlM29Gaokl7gdd3vY1Qs7FfOdZoRBDf4MsU80v8YU0pXSs73T0yKrgIYlzNyrQcBiL0EshMU6hPQdY0FAeaQCKHkyG1c/MBVmZbaTG+tYSLe8arjovGxlxLw==;
	31:1AN6Pw4ktQQ/NoDs3BexvVLYxoWLXFizjtsxdUjXQHh7tD5m8HWd3MdPKVzSobjepS3C7jbl7Czoib+CK+3VYEbt2dXbRwTHYMtwgOqOF7uPCdpXxE5t/YyVeiXbMdqhlq5YHKffZ0xVExUB5qi1wu18J8Eb2elUy4bfWm4ArzipA+Q3KgJQ3676gUGpuLWZNrcCYEBKtMJzRpMzLaRdBanEgTAWCln/ciYrSdMqfOQ=
X-MS-TrafficTypeDiagnostic: AM0PR04MB4099:
X-Microsoft-Exchange-Diagnostics: 1; AM0PR04MB4099;
	20:kh+AbRjRL5BBj2aKqCI6Y+++LbA+3sXUB0+/cCU9z74XvRXTC7pZgEIlRZ7FDDSke7AFcoUeaJy57Tz9hAzZKfUnU8h8WqqdX7VYT6eaCkKEgCl1FzpM7/XR3VJB/59O6xuUnNM6GGZlud9CZIK0GQRf2jusUcJj+QjfU6VysBCZ4spk4REbxz7LvBQlkPcw4MT+SRcYyo8g5igXNqwlce/EWHH4IuCD3ttfi+dbYFjlfzNkzFIYV/FBX+4o72MZ6d6jvfEwJ2fHByqe7rxNRiDwEC1hX19uIpxh+K33GzfV+bYmBmDfUk3vILS1UA/q+ESrYDs0uzFBqaL8caDLjWIG3whGm7nhp0Y1inX9KDHjOr4O4e7ctnKu6b1k91lfFNhuVKljEgcoMywi68Mtn+iz3Ur+CQB325oconZKI2U/TZOS8BnkhUUqx/JEYJi2DnewxbbpKLWASA9zv+9eK55edshNDtgo12LQxeFK4DM0V0G9y8Kochzjyr5Z2r0e;
	4:egjcgPIwAiFk5ayauvVUjpiiYY74BIjNqZhUit4TUZ/drEmaPA4RJij90hEgcAI5ReyNk3BLTFAOfhswCzD2lm4OMz1nR6eCC6JNs3qO/nPy1qxFNSded0EZCVSZq2mMvz8KMHDIRbB6RWUOtPdPG7WTQXH2xMyR6EsIKYOO7E7p0WuB4zVkz26GvYUDPfO9P1MBQzlQ0rBHI9Mx6zlaKAXvf8wVYpxkVzENR0eXQhPosfglx30AmthhNDpCutBIcA2gM4ydfpOIsWMQ0WoBAeFgIR5NfKruXtSp+H0u/qmzk2Oto2qWUdtcyP7eD/04t+7B1ifc5GtB+xRKhVrV55o8kx0hHsbZzp8wLs5HQfU=
X-Microsoft-Antispam-PRVS: <AM0PR04MB4099297E1D457CD88D5C4B438D7C0@AM0PR04MB4099.eurprd04.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(87047540314649)(17755550239193);
X-MS-Exchange-SenderADCheck: 1
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(3231254)(944501410)(52105095)(3002001)(10201501046)(93006095)(93001095)(6055026)(149027)(150027)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(20161123558120)(20161123560045)(20161123564045)(6072148)(201708071742011)(7699016);
	SRVR:AM0PR04MB4099; BCL:0; PCL:0; RULEID:; SRVR:AM0PR04MB4099; 
X-Forefront-PRVS: 0704670F76
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(6049001)(39860400002)(366004)(39380400002)(396003)(346002)(376002)(199004)(189003)(6486002)(58126008)(93886005)(476003)(39060400002)(16576012)(54906003)(31686004)(486006)(230700001)(65826007)(6116002)(3846002)(8936002)(31696002)(7736002)(2616005)(86362001)(956004)(6666003)(6246003)(446003)(4326008)(117156002)(106356001)(25786009)(44832011)(105586002)(305945005)(11346002)(229853002)(76176011)(316002)(64126003)(478600001)(47776003)(97736004)(50466002)(2906002)(77096007)(2486003)(53546011)(23676004)(26005)(6916009)(53936002)(5660300001)(186003)(52146003)(16526019)(8676002)(65806001)(36756003)(386003)(68736007)(81156014)(65956001)(66066001)(81166006)(52116002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM0PR04MB4099; H:[192.168.1.113];
	FPR:; SPF:None; LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: here.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtBTTBQUjA0TUI0MDk5OzIzOlI2bjRNa1ZyaGlyOXozWTc1bkdNa3dHcTR5?=
	=?utf-8?B?eGY4UWRnNHo1TW44QVNTNFJwTkFpa2N5TUpRbDcrSHc0QmZjNU9rc2lFaUIv?=
	=?utf-8?B?Sy82S0tlT3NER0oySUNMeUFaMGYrWDFuakp1cExBSW0wN2Frb2l1SUJZc2JO?=
	=?utf-8?B?aXZrd0ZsRStzaGpsL25jUDRlT09YZTUwRzdab0NKVTJlZWZuR2xsaTZTK0x2?=
	=?utf-8?B?d0JLTURWTEQ4ZmoyMTZXTFNFSkdaK2IweGo4UXZjdFpTUGp6dWRpMVd5R1pI?=
	=?utf-8?B?OFoyWUFJRTh2ZFdwMFlPd2Y0dXZNanRiSW9HRnJiTFJRb0tsb2lIQWVMZDlZ?=
	=?utf-8?B?dEJxRjJuQUQvTEpqRFlIQnFqQzdIS1c3T0ZVWmM3M0pQcHc5NlpGd0ZtWFEr?=
	=?utf-8?B?VEYxTUpJN2ZaeFhITHp2bEg5Q05FNS85NEdUNVRkdlJPYUN2V1phWE1kOVJx?=
	=?utf-8?B?YS8rakp2eitrY0xFR25NbU5ORFJUbjlPTTN3VlVuMThFVWgxdWpLcThoL3Qv?=
	=?utf-8?B?Z2hvL3o0aGdsQ3lQUlVIajRXc2xWamFodi8zUGZ4d2ErUzJxaXFNZzNES0FT?=
	=?utf-8?B?TFAyeTV2N0RkZGxNRXpUaGcxQjJBeHMxTDVxd1B0Yk8yTjJreDNRcFB3UnRs?=
	=?utf-8?B?TXRaZ1h4MHhwUWQ0ZVdOUVdVOGM1OGFWODlTc2VuUklCR09hdEk3Z2hSb2RR?=
	=?utf-8?B?NEpJbFd1cTNGajZRM3JXMEx5c1pHYU5CMS9iSksrVE5uSWRnb1dhdmhxTVdj?=
	=?utf-8?B?T2djN0libjdOQk5MN1JLTUVnMDFLVk9DMHVqNGJua1V4K21TaXJhRXFQY3cv?=
	=?utf-8?B?azNzRTJsN216OUpiUU5DdStOcHRteHZCNzUzUkl2UUVrQ2lLTGUrZ0w1QUJi?=
	=?utf-8?B?Q1ZVNmR6OUFnNWxpbkg0aVRXOFdrRk9CYW9FRnlMRHBZSUZyK21zditheDZy?=
	=?utf-8?B?bnkwZi84S2hEQm54U0hpTUlaZTJnWjBoNmJ0MnI0QkdGMXNHQ2daYmhLNzVW?=
	=?utf-8?B?Kzhxc01TNi9relVOUHQvODFoNnRyeEk4MFVsT1FOY2hnaUszYnpJbFBNbk1h?=
	=?utf-8?B?djd0VUZycFE4aVJ6RTdSalR3YzU1U2llTm9zeXZvVUhRb2kzTFNaY0RVNVJO?=
	=?utf-8?B?STVnMHNXYXdVdFFLY1JFR1VRZFA5TWZCc2ZnZDgyRFNuc1hNUjA5R1ZJWWhs?=
	=?utf-8?B?NUlNSDFyTzVOd2VjYkhRRm52d2cvNFhweDFwUUhvZW9FVDk0a2h1RlFNdjJs?=
	=?utf-8?B?VG1ta2Vua2x5d1JUUWVIVTkxOEhFNDRDRUZublRUaUphN3F6QzNHSTFxc0ZR?=
	=?utf-8?B?U0hmaTArWGZVQzFTdWdsYU1LUUpxZXRnZ1ZISU1neEs2ZWdmMEg5N1NRQVgy?=
	=?utf-8?B?ODA4TkpHY3hKNFExaUk2SXZmekJGMi9wTFFJeWNZQjA0M1VxeFRjZVRQbjZr?=
	=?utf-8?B?b1ZzVmRnRWNsL1BGUWJzdy9EaklHdEFMVXFVd1dvVkNpMGxEQTBURW5sMjJ4?=
	=?utf-8?B?aHk4cjJJUEJYUXRlVUg5UU04R0lZM1RpVk56ZkVObzFOYlgybk42OURIRkFn?=
	=?utf-8?B?bUtBU3hka0Nyci9TZ1lSaWJWNEJXRXdaaDJhVm15dG42OWJ5R01pSWl0Yklj?=
	=?utf-8?B?MzNUQUx3NVNTd3BLRHl6bUl6YW4zdFQzaTlhYkp1dnc3TEZXSkdtU1VmajQz?=
	=?utf-8?B?T2Q4a245WmJkWEI0NGVPSjNqeG82bDhvZVRRMlVxZ3BkTnJwZEw4VG5md2J5?=
	=?utf-8?B?L0M4YVI5ZitGNHlrb29CeSthZVhJK1VKaWtSYTFoZG5FaC9LN3QvOFRWVGpW?=
	=?utf-8?B?SmhFdVZ6bXBoV3ZOcVRZeUh2RVpSbGk3UUNTNUoySFFBbEgzcFBZV2VRaDhI?=
	=?utf-8?B?Zlh4MjE0OEVqZWpYb0lTZmZYcWZiajg0RnlFVjF3ZnJVOUMvdWhyckhqTXRj?=
	=?utf-8?B?NlhqcitkcGl5SGx0SWpMVjAxQk9PZzF1N2tCYmhYTTdzNWNqKzFGK2FLZHdr?=
	=?utf-8?B?bGptdVJGMjUrbjlyV0tJelUwcExYbit5aEFEUUlaYU53b0haWXgyMjBYdXR5?=
	=?utf-8?Q?V8Epliioq6GQTHRdj9PGF6r6C?=
X-Microsoft-Antispam-Message-Info: UkR7VKt6ayPYnYKbBVkut1bIDUO8XihK1nhYaX1eriNG9QgHsSctVkiuYsR2FbbmhLepcSrhHvw6rBcCFXvssQkrwcF+GJLijLElt43aVmchMmCsjtRHLTvQN6LGk+JSOKzgq6AyjZ9hRA1uvNgHa736Stq+ylNLX6NBmgC6oYw2AJijUbU2274isRdllvUq
X-Microsoft-Exchange-Diagnostics: 1; AM0PR04MB4099;
	6:STj9byAflNsfQu0pVkKNY3E+mmXZMWKfGv/D4rVGMwfeMlsonhFDrjIu5C3RMug0KC7hOCP4mLDm8fv1AS+sgaDFVzrMG/ktaFTAvXJjkgPAvBRYAhoAWulnmynd+SbWSgxWBXLxHAt17FJg7wzhMdfVmuHTLHZISWIK/XCtcs904ZWkip2uNRqrVjaxpKlTg5HzFshR1GM6YR0xS7PHBV4ffVqXPImNl4voRJNMTqBsquIIMaO6qoHpWNlKV27APawhiPXPMkAcBqWIudCVVqB6CYyLGqlLXGci1Z/ZOh9modK8LL5BlbKCUtCk7RUS7JGhWyC3QbXF4TbFUyDTXFEmWGy7lHli8Blze1afNaBK4bY5PhSVEhKbFPia6oQKSzeTSnXEgcAmlNC6Yj2jy4mcKIiagkm5FFgm+ymeo8FGHki0siVvEFnfBVy3Eq6aLkyi3Qc5YpmbGMHyqET+4g==;
	5:z0LD+/ByW4uULUASJ6oaYe2GCL2B9s3o1DM+OhT+iiRVGCIa7t0O0/4zzOYkxfmaN5fPSrqjWRjCGOlEhUHM/GXqVJIUBMiOJd01udUso6Jw+q5IXXQoXZQIgjV7QY7jCnqJjypvFi1jJf2p6By5FW59GK3UG1NJKYEJB+XL06g=;
	24:Mi5F8mkid340QtAoxJcM4W1RahcBCCBbhZL4K3bw2I6qouSRMKXsMy8xvPdfNqj2dISv4b/q/DVk7yCXrACGMCBfmrBpK8F38FKUXHpD1LI=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; AM0PR04MB4099;
	7:TochL96tCYRgc1MzbD9rQTN7T8mn7dYeAIcBXtJ4zJ5rl8E9qZf7YducsAZVtKbMlTnTq0Nkv6qJGo7n5hsmyrYM3gpOGqOGO3Imb9vUpS0iLTINO7l6R5AicU37Ng/fev1k/ieMsL6MonBVtqEdrPLGrmyabr8mDiZ3sjKxyGb3YrOXF/7ahJcunZH5ND7sDEY6DEGAotQKdnFzEyW4mwPnlS1xPaJl84LIUn1DMLcofEHyUnaQpihiY1JSCCPD
X-OriginatorOrg: here.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jun 2018 09:34:56.2252 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fd4a4a31-7727-4783-54e2-08d5d2a34189
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d4034cd-7225-4f72-b853-91feaea64919
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4099
X-Mailman-Approved-At: Fri, 15 Jun 2018 08:25:57 -0700
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: sysroot not being populated
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
X-List-Received-Date: Fri, 15 Jun 2018 09:49:41 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

On 14.06.2018 16:28, Khem Raj wrote:
> On Thu, Jun 14, 2018 at 5:45 AM Patrick Vacek <patrick.vacek@here.com> wrote:
>> On 12.06.2018 00:48, Andre McCurdy wrote:
>>> On Fri, Jun 8, 2018 at 2:42 AM, Patrick Vacek <patrick.vacek@here.com> wrote:
>>>> On 08.06.2018 10:26, Khem Raj wrote:
>>>>> On 6/8/18 12:27 AM, Patrick Vacek wrote:
>>>>>> On 07.06.2018 19:06, Khem Raj wrote:
>>>>>>> On Mon, Jun 4, 2018 at 2:01 AM, Patrick Vacek
>>>>>>> <patrick.vacek@here.com> wrote:
>>>>>>>> I have a recipe (aktualizr-hsm-prov) that depends on another
>>>>>>>> (aktualizr)
>>>>>>>> to provide an executable and a config file. The former recipe includes
>>>>>>>> `DEPENDS = "aktualizr-native"`, and my do_install() for
>>>>>>>> aktualizr-hsm-prov has a line something like this:
>>>>>>>>
>>>>>>>> aktualizr -i ${STAGING_DIR_NATIVE}${libdir}/sota.conf
>>>>>>>>
>>>>>>>> The binary executable (aktualizr) runs, which tells me that the recipe
>>>>>>>> can find that. (Although to be honest, I'm not sure which version
>>>>>>>> it is
>>>>>>>> running.) However, it doesn't find the config file, and sure enough,
>>>>>>>> ${STAGING_DIR_NATIVE}${libdir} does not have the config file I
>>>>>>>> expect. I
>>>>>>>> can see that aktualizr-native is populating its sysroot-destdir,
>>>>>>>> but it
>>>>>>>> isn't getting copied to the sysroot for aktualizr-hsm-prov.
>>>>>>>>
>>>>>>>> I see this problem in sumo and master, although previously this logic
>>>>>>>> has worked just fine in morty/pyro/rocko.
>>>>>>>>
>>>>>>>> What am I doing wrong? What changed between rocko and sumo?
>>>>> Can you check location of sota.conf in the build tree for
>>>>> aktualizr-native in directory called package/
>>>> Oddly, I do not see a package subdirectory inside the aktualizr-native
>>>> directory in the build tree. I do see it inside the aktualizr directory,
>>>> though, and it contains everything that I would expect. Is there some
>>>> sort of configuration of the packaging system for a native recipe that I
>>>> haven't done correctly?
>>> No, what you see is expected - there's no packaging for -native recipes.
>>>
>>> Back to the original problem, I think you should consider the
>>> aktualizr executable and the sota.conf file as two separate things.
>>> The host executable should always be provided by aktualizr-native.
>>> It's less clear what should provide sota.conf - it depends whether
>>> it's just required for building other recipes (ie like a header file)
>>> or whether it needs to be present in the final rootfs? If it's only
>>> required for building other packages, then it should be in the -dev
>>> package for aktualizr. If it needs to be present in the final rootfs
>>> then it should be in the default package for aktualizr. Either way,
>>> recipes which need to find sota.conf in sysroot would then depend on
>>> "aktualizr". Therefore recipes which need both the host executable and
>>> sota.conf in sysroot should depend on both aktualizr and
>>> aktualizr-native.
>> Actually, after some further research, it appears that my problem is not
>> entirely resolved. The explanation of packaging and native vs. target
>> dependencies all makes sense to me and usually works. However, this is
>> not the case for one specific condition which happens to be part of my
>> test suite.
>>
>> One of my tests is to change the MACHINE in my local.conf, add some
>> additional layers, change some other variables, and then bitbake. Then I
>> undo that and bitbake again. For the most part, that works fine. In
>> rocko and before, it worked consistently. But it seems like on sumo and
>> master, when I do the test by changing the MACHINE and the layers, it
>> somehow clears out everything in my recipe's work directory, despite
>> that that recipe is not used by that test. In fact, it removes every
>> single file in tmp/work/core2-64-poky-linux (but leaves most of the
>> directories). When I switch back to how it was before and bitbake, most
>> of the files get recreated or re-copied, but not all. I have to
>> explicitly run `bitbake -c cleanall aktualizr aktualizr-hsm-prov` to get
>> things to work again. (Perhaps cleanall isn't necessary, but some form
>> of cleaning is, and it has to be both recipes.)
>>
>> Can someone help explain why I am seeing this behavior? I don't
>> understand why the files get erased, why they don't get repopulated, and
>> why this was different back in rocko.
>>
> when machine and other variables are changed then its mostly
> resulting in hash changes which is enforcing it to rebuild and when
> rebuild happens it will clear the recipe specific build area for that
> given recipe and repopulate it as it has to rebuild/repackage it since
> this time it will get most of build artifacts from shared state as it
> has been bullt with same hash once before. so it will most probably be
> re-using that.
That make sense.
> If doing clean build is helping then this might mean that they
> are not staging all the files that you depend on. When you do
> clean build they get staged into build area during compile phase and
> it silently uses it. So ensure that all files you need are accounted
> for in do_install
That makes sense, too, but the first recipe (aktualizr) definitely
installs the config file I need in do_install and lists it in
FILES_${PN}-host-tools. In fact, the entire package subdirectory of
aktualizr is not repopulated, and thus the recipe-sysroot for the second
recipe (aktualizr-hsm-prov, the one that depends on aktualizr) is also
left empty. It seems like something is not triggering or preventing the
repopulation of those directories when I change MACHINE back to the
original value (qemux86-64).

