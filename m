Return-Path: <patrick.vacek@here.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 671BCE00E1A; Fri,  8 Jun 2018 02:02:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.96 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 4695 seconds by postgrey-1.32 at yocto-www;
	Fri, 08 Jun 2018 02:02:04 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0096.outbound.protection.outlook.com [104.47.2.96])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85BDBE00DE0
	for <yocto@yoctoproject.org>; Fri,  8 Jun 2018 02:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmcs.onmicrosoft.com; 
	s=selector1-here-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=SnMujAlQZrAo4jHj+VBkB+0W5nFSDSkhCRjHe7TeUDo=;
	b=gplAElJKRWAGsOZbs2ppygrJaI/TRrwhreCDnwx7S5qSLgfS+774j9e1YMGwzoFED2HuonJDQU1w6w/axOx9gUcwxPnbPHEFLzAG6auKVwcv34nbUMBNOIfEAs/H6nhrm559Dt5+ivb9vmc8nUtIw30WCLPl4P3FG6c3Xm5Mo3Y=
Received: from [192.168.1.113] (87.191.159.149) by
	AM6PR04MB4102.eurprd04.prod.outlook.com (2603:10a6:209:4d::32) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.841.15; Fri, 8 Jun 2018 07:27:46 +0000
To: Khem Raj <raj.khem@gmail.com>
References: <785a2b9a-d6c8-8356-d218-ecc80af2c46d@here.com>
	<CAMKF1spJvA1pP1BrwmcazY0n1QujJPU270dpL=vq9Vfuri73nA@mail.gmail.com>
From: Patrick Vacek <patrick.vacek@here.com>
Openpgp: preference=signencrypt
Autocrypt: addr=patrick.vacek@here.com; prefer-encrypt=mutual; keydata=
	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
	j64UOX5oCSfUpA==
Message-ID: <83419d13-87b0-40a7-dfa0-b30924399405@here.com>
Date: Fri, 8 Jun 2018 09:27:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1spJvA1pP1BrwmcazY0n1QujJPU270dpL=vq9Vfuri73nA@mail.gmail.com>
X-Originating-IP: [87.191.159.149]
X-ClientProxiedBy: LO2P265CA0170.GBRP265.PROD.OUTLOOK.COM
	(2603:10a6:600:a::14) To AM6PR04MB4102.eurprd04.prod.outlook.com
	(2603:10a6:209:4d::32)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(48565401081)(5600026)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:AM6PR04MB4102; 
X-Microsoft-Exchange-Diagnostics: 1; AM6PR04MB4102;
	3:3Rq4jprp3SxJ2s5fT7aYxNrH+/jhRCMoCSZy8HlGbK5s5SwKyMe+QSbZQCuakrHvzS1BGJSzvNiKJLZi6XD9CkB8WFiaQH0pNArxG7jq1EB9Y+GTNdwwIkZgyIkgDs8E+t9+KcjaHdyrSTH4D57192et6a3SZq2qVUzL0rxa0EYm7D9ZcYsKBsMkLgFgDrniBFoiOUQA9RJG/6r9I1UFzlZLTMAxlN/C5n4GJE4qQRFgxNYggXkEzhSrZh+D5weX;
	25:FZd91z4HEnCJkDSA/Jx8jtV69oQYNdksTK34miWFYQh0Clz5XNPvFVHBIJmGj6cP8bsgxjk9SumgjL8G9VTEoYugLFWMSKuT9SfqT1A70dQT06gxLYjCCG6otwlftQxn7xwcOoAyuZ0sVyYdTey99f7J4T7sKWtRjO/hTzYHYBga5xV1QYSVf4fvJYFM43nrqQNhWufYk1q+Nuzs7hCTKs/mVo8pzQLXp1EhMdaQcpXthMxWa4PUUb0PcBq/uGJxa0K4J04CtpcakHD2w/Vut6l5vl32L83JuraFMaSPBh61m8qxbzXDunciWJQhg3VaA79jrrsok5Svm+diikfYHA==;
	31:Pei3OEnoVWd2VB7R5burnA1cmj0ssRA4mVpSs0Umc5DSWs+Ho6AYELeTl+TXJDfZOGzDs1E5Aotbppp6pUN/XA4fK2aG9t8YR1CiitcJVcvfTnjV2VukKsyHe2pGBJGWsQLHfMM5esoWt230BqlNxJpcZZ7TNOoYTlOb8p64xOrOXAefXnzRrby5u7zO/9x3BoGAsK5rQamEH06Tnfs33Ux7lOT2QdIudJrbPOj2kQw=
X-MS-TrafficTypeDiagnostic: AM6PR04MB4102:
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=patrick.vacek@here.com; 
X-Microsoft-Exchange-Diagnostics: 1; AM6PR04MB4102;
	20:ees+d9ZmrI8TtAETz2+4LnreIvWF5gDnJiI68fIrt/qPxvfxxB+vPIpZk6cVIIzsaQqeklssDzsHJnN+QEhZ2cPvpkPGdIrs90XHip8M70bLzEbkr+oq7c4QwKi27zFjlKZ88bWyjsZqfjcYasBwPLxe39Zs7aNzNLBUx9KfUhXmBRmEuEQfAz2kCc/ioJ04iOFh3PZaqP1LmBWmq43+GBOtSLPVL9WtXpSaHr7/FQXLgjpkD1DheQKsUETGHXG6I9CQG36NAk0PyxW4KLxeKhLg2HnitPEaG+/zTF5dq/60VixDGosv2CfxJltzcOXYYOC2YY2H5DVFRbk7nqNVluClSnmn8wa25J30QX7jQX1PAgwRDGVqYr7WSi6j26e4oTnO4EHkaFwElpu+94fx3xtdgIhxx+CnU4hhqsUCbZ2D5QVnENjEm9PjekbB4PutWD8u9MiIqkzxOo9HpD+bYt1/4Jc6kT5PFYmu+T7AgY+rjq14NfAC3DSake/a/yC1;
	4:pRWQdly+sQ9H7pR9XoyaJpDyRqOr4VrH0Ubfff4fEi7e0U3wKkN+ozWYGmOfkXr1oMrLi0L3zpYrFcdRhDmai3lTTblm6wjf/Yt/NFy8EzFDUNRX1mxhac4Q0eThLiS+xNr8lGFTSWY8Fp5/kR0HJCWMgxOb+FQhuqM3zqjMPlZdLrGyjUHAX15WEzC3+JL369AjG9FoESK7IBeao+Je5cytaMa2uWO7l1XQ+aC3DHf2TeZMsqKLSvlN9u/rp5+WfhggTWXGJ8UybjuC7pM3WFJbYrpBVxCUC9t8aPxHr0bCzGVsGCE60H/mWJFxgcTu
X-Microsoft-Antispam-PRVS: <AM6PR04MB4102A908EC9A4B7EA834FC2C8D7B0@AM6PR04MB4102.eurprd04.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(87047540314649);
X-MS-Exchange-SenderADCheck: 1
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(3231254)(944501410)(52105095)(3002001)(10201501046)(93006095)(93001095)(6055026)(149027)(150027)(6041310)(20161123562045)(20161123558120)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(6072148)(201708071742011)(7699016);
	SRVR:AM6PR04MB4102; BCL:0; PCL:0; RULEID:; SRVR:AM6PR04MB4102; 
X-Forefront-PRVS: 06973FFAD3
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(6049001)(346002)(396003)(39850400004)(39380400002)(376002)(366004)(189003)(199004)(53754006)(86362001)(476003)(81166006)(8676002)(26005)(81156014)(11346002)(2906002)(316002)(53546011)(8936002)(44832011)(16576012)(2870700001)(31696002)(6486002)(31686004)(446003)(486006)(5660300001)(16526019)(65826007)(186003)(77096007)(105586002)(106356001)(386003)(68736007)(76176011)(229853002)(6916009)(47776003)(6666003)(65956001)(65806001)(66066001)(2616005)(52116002)(23676004)(2486003)(52146003)(25786009)(956004)(50466002)(4326008)(478600001)(36756003)(117156002)(64126003)(3846002)(6116002)(53936002)(97736004)(6246003)(7736002)(305945005)(58126008)(39060400002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM6PR04MB4102; H:[192.168.1.113];
	FPR:; SPF:None; LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: here.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtBTTZQUjA0TUI0MTAyOzIzOlhKeXg2L0M0TElaV250bGtEWFdqWkpIeDNh?=
	=?utf-8?B?cGh2SWpWNzZLaWVPTjlMZk91QWZXMHViR1VVRlorc1V6cEsxa1UybHdyN0Ix?=
	=?utf-8?B?eFZ4QXpSZTl2VG5obGowYkpURDg2SDZhV3VaLzBXZ3J5bSs4eUJDUHV2TG9T?=
	=?utf-8?B?cVg1UDNhdnpITk1NcTNrTW4rZkZIRzRubWY1QTBFcU1qbFU3UDg3SlZXRnJz?=
	=?utf-8?B?TjZZL0VUSFc0R0E0blhMWXJ6UlkzM1JTanlQNEp2ZG1ueE1LeCt0YXZjTlly?=
	=?utf-8?B?cUI0aEsySlMwQ3pUTHdwWU5LaXZEdDY1NWZEdE84U0htVkF2Q3RwSHUxTXpy?=
	=?utf-8?B?T0d6T00yREVjRU1JWTIrS0hvbkRUYlkweFZXT1RyallLZmxjV0hrRFJsYk5l?=
	=?utf-8?B?VmVlQUtxcTRPakt1SGM2STdFc2tJdFd5YlpneTVuaGtuenBlT1YxUEZWdHFm?=
	=?utf-8?B?VnVxS01XQ1UyRW1WVUF0ekdhS0tGdEpKNWg2YXF2d28vV29zUDFqMVVnb0U3?=
	=?utf-8?B?bkhGc1c3cFlncWc2bXhVdXEzTEpLUkZnZHBFZTlEd1JlQ2pNQU1RenNINFJZ?=
	=?utf-8?B?eG51R0FiRGF3MGJKUUowSmdvUk5zK2RoY1FWRFhOcGUzQXE1WWpUM1JVdG9X?=
	=?utf-8?B?czZpdlVrdlhXTkxxb055OSs4RnlxSEJBbTJCUEZnZk1mSG9QTFlOZnplOURM?=
	=?utf-8?B?WFVEZ2YzazNrVXRKcS8vUTlmWFVBS2RXcjZvMlVMbU5KaXhyNStvMFp6Z1FL?=
	=?utf-8?B?QWxPYnV3Y0xlZXppRkJNWVpwMUpLUXdKYmpZcWlzRk1DeEhlenBJc3QzeDRs?=
	=?utf-8?B?SElWM2t5WHJmVFREY2ZHam82Z0Fyd3FDc1gwd1MyS1gyb2M0NDBQMDgzcTlj?=
	=?utf-8?B?NU5seXJjWG16VmJUMFZ2QmNYYVNUd2FPSWxWRnMrWlpMU3JhbjQ4UHBRTURF?=
	=?utf-8?B?M1RydlpyQS9tZHBEUjYzdUpHR1NsWDJzTm1MRDFYTlA3QlBCRFAzc3UzZVo2?=
	=?utf-8?B?SnpvOFovYTI5VXFDR2lmZDYvU3lYYkdsOE9sdDdrYldFVStBdi9mTGZhZDRT?=
	=?utf-8?B?WWtxVjNCbFNiN1JpRDd2eExJTHZqaTlMaU9XN2RoZUtibGxrdUNHWkdMbTRn?=
	=?utf-8?B?TE1PdGlXWksxcndEN2xXaS82NGl5SnJkdzlDZ1NlNU1zSU1KS1hSeFh5T094?=
	=?utf-8?B?T2g3M2kwV1JMNnlNTEFEeTdiS0w5Z08rZXJUOUNacld1ellrUVpTYUdpWWNx?=
	=?utf-8?B?Zk9mZGVpMzZJSUR2MFg3RS8yVjBTVlNGNnlHaGsxWDN0UnFoS0x5aUJFZUd4?=
	=?utf-8?B?ZDlHRmd4ZXg4TTc0c0RMQXFxRWUzZXFKd1N6NFV4bTNRNjJNcTNtenZEU3Bu?=
	=?utf-8?B?RE9vVWs3UDE4SVZRRmJ6UFg1ZUFuc29VeVVIYkRsSTlTYkdHTUJPVG81VGY4?=
	=?utf-8?B?VnpZNlpvL1RLRCttK2QvVWY0eTQ1QnFTU3Y2MERsNkNDT1dFWXVZZ3FzTGp5?=
	=?utf-8?B?amRMRVl3MXVMeGYrbmtTWkwrZEJxYkxKbkc3MGhGQlluZWxhWThZdk51Zm1I?=
	=?utf-8?B?MG02VjhvWWFMSEhzMUI1aFZ5aTQrNlNCSWVrV0JRNFRoOFRwK1VQcm5VeXBZ?=
	=?utf-8?B?Q1J6WGhzVFBZVjJCcENGMHRaRWNkSlFsU2pBRExFRW5mNkFpOE9pc05JNHFJ?=
	=?utf-8?B?ZkEzaHZsTjBaRmpZM0w5UmZmTWExUklINTgxMk9zTWhpNWxvQUFCRVV5QjJM?=
	=?utf-8?B?YlNjUk15RG1VQjZYelNyTXdYL3lrRDlGaWpkd1JIcWFwbmtNeEVPOTZCZm1X?=
	=?utf-8?B?YVF0R3VhSnhxU3dvSW14bVFsT0prUCs0YWEwdjRsU2VETWFNZGh5Y2tBUGs4?=
	=?utf-8?B?eTFiTTBGaWtyeXZQY1Fmbk53ZFZGSUh6VFJnQnRNV1NyQWVURUVZSGRqT0kr?=
	=?utf-8?B?VkpKZnhTSVFIejRNL01pM2FWUm5MaU1ZNW5WZVYxZzNJdldSU2gzNVhKdzFB?=
	=?utf-8?B?Slo3QmZ2bmUrSUt1RVZsVHNiMmhKMEFHZWZWL25SandSenF2TXR5dTZ5cU1I?=
	=?utf-8?Q?5Dzs=3D?=
X-Microsoft-Antispam-Message-Info: vAFoInxzLvzjHR8KoV7vO1nosh7BxKTJuX/oWoI0MxijGe08uIf7BMaJcmVAkLZ/9mSpPdp1HeBmUAKp1+oKz503iUTjGnTiZfsQY4wGeKnHuI3Axv2bRjm/0P1waNtS93ytfdsDhCRENEhMMqrrZeJfs8QuGHCMGbh/6HVZ6LhiV5TNgcFvL8V8mN8yUokA
X-Microsoft-Exchange-Diagnostics: 1; AM6PR04MB4102;
	6:xMKIx5xmJmub42+t/YQMF/eyQkmt1t1tyNRx09C9Ubv4FzuD2HoBC/mNb9Y8TBtNllDSoyaQlwfomkg25JmSvNIZGciaMmHeh/z6IHYiUwmLDa8ZU4qPO/D8BpDeXGYMVOmmF3ibk1hUhCWH44uDuzK5UdkYWbMe/QMxA1/3VHWd+DZnJ90NaGjMCNHX2WmCnzG2GuMbQZrPQBPuGkhphSLTPn6QPyCZf4wRpwKjRJcNqEDV9ylPiXF1r5b5t/UDqzKciK76EWMbNZjEQcJxS3E+K5MPDCbTPqStk6LIjLvzFTmZcwQ/4c2KTdg9K9MmZcE8dyzGL+G7z6FQ6sMwht+u7569yCW2ZJ2T6LP71NttBm1T041jNK+S6gccM0mMTmOG+Nj4T7iTVL/5nIyICLwk6ZJytv37yO6hQ7gBqL7XYt3d4IDPqxG8lgT9mFu+FLiVg41XF+BvGzgI+8sJ1A==;
	5:PbtPWvI1eDF68rSorVBs0N9IAGWC+YNnhifZQNo4DLCO3BJS+4uJ4E1+LGq3SCNkMBcPZIcyK36ITtcuwI/o16BJiqL3Cm6GJReRZVXXRS+meYqc7e9o6rPdoj+E7Wu7U9XVQ8sW+7EUadMd0+YmCfdqVou9KTPx5wz5/mGAgEs=;
	24:IyG6saUsZD4gY5mQcBYrgpdi8eUDoO/VSDtzwSqB3Z4zC8Cjj1vxEzbZHWZHGOqghwdDTUYGEZ2SWm9p9qeHplL8IC2j8ZvzRQrFaFstDWw=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; AM6PR04MB4102;
	7:gZAfJnDyFgaekCf/itufZjFHRCqWzqSrxhGoAPVwwOKge4ooNl5ziVtWoGEqVWwOkKZ3ch2lviYOQ23LDo4tbJWfIvKo3o7zoxfFZT6KxNhqe1j1EdxWfzV+lMjTTaOmSW9iMIBYOl6Y0aWRd6lm0+jaEVvP2ylD3h5lPNUzc1/AJ3mTtNg7anLqFV3v07CiC6MBeWUQJuN3b5rHj6p34DWy7KkyncdDwkgj9P0lH95NRbBfYPL90cL5PKkT0CjF
X-MS-Office365-Filtering-Correlation-Id: e8750669-7dca-44f4-da69-08d5cd1154e3
X-OriginatorOrg: here.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2018 07:27:46.1077 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e8750669-7dca-44f4-da69-08d5cd1154e3
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d4034cd-7225-4f72-b853-91feaea64919
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4102
X-Mailman-Approved-At: Mon, 11 Jun 2018 02:39:56 -0700
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
X-List-Received-Date: Fri, 08 Jun 2018 09:02:06 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

On 07.06.2018 19:06, Khem Raj wrote:
> Hi Patrick
>
> On Mon, Jun 4, 2018 at 2:01 AM, Patrick Vacek <patrick.vacek@here.com> wrote:
>> Hello all,
>>
>> I have a recipe (aktualizr-hsm-prov) that depends on another (aktualizr)
>> to provide an executable and a config file. The former recipe includes
>> `DEPENDS = "aktualizr-native"`, and my do_install() for
>> aktualizr-hsm-prov has a line something like this:
>>
>> aktualizr -i ${STAGING_DIR_NATIVE}${libdir}/sota.conf
>>
>> The binary executable (aktualizr) runs, which tells me that the recipe
>> can find that. (Although to be honest, I'm not sure which version it is
>> running.) However, it doesn't find the config file, and sure enough,
>> ${STAGING_DIR_NATIVE}${libdir} does not have the config file I expect. I
>> can see that aktualizr-native is populating its sysroot-destdir, but it
>> isn't getting copied to the sysroot for aktualizr-hsm-prov.
>>
>> I see this problem in sumo and master, although previously this logic
>> has worked just fine in morty/pyro/rocko.
>>
>> Switching to depending on aktualizr (instead of aktualizr-native) and
>> using STAGING_DIR_HOST or STAGING_DIR_TARGET does not help, and in fact
>> makes it worse, as it can't even find the aktualizr executable in that case.
>>
>> What am I doing wrong? What changed between rocko and sumo?
> is aktualizr recipe installing this .conf file when building native
> version. If not may be
> add it to do_install
>
> install -D -m 0644 <path/to/sota.conf> ${D}${libdir}/sota.conf

Hello Khem,

I believe so. The aktualizr recipe includes the following (edited for
simplicity):

BBCLASSEXTEND =+ "native"

do_install_append () {
    install -m 0644 ${S}/config/sota.conf ${D}/${libdir}/sota.conf
}

PACKAGES =+ " ${PN}-host-tools "

FILES_${PN}-host-tools = " ${libdir}/sota.conf "

Thanks,
Patrick

