Return-Path: <patrick.vacek@here.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E497E00D4F; Fri,  8 Jun 2018 15:16:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.139 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0139.outbound.protection.outlook.com [104.47.2.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DACCE00A04
	for <yocto@yoctoproject.org>; Fri,  8 Jun 2018 15:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmcs.onmicrosoft.com; 
	s=selector1-here-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=lq6tVEI1sdqb+Jsz+7oFrbGpbvGK7fbSjcGIOHSmGtY=;
	b=TRxCkM9XT03vd7i8D/sBFc5FaqGSI4L77K0vkOWS1zxBhqv25jf+qETLWH2veexPaLgi20edZh9ZJAC19tFfyd1/e3FeeFQL73CrTYXTyoUNXx+oKT4+0824K7ZAR6A2iJhVQkp4riF+0a9qIN5vVpaFr5e6aVmUfi21Vz+Z22k=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=patrick.vacek@here.com; 
Received: from [192.168.1.113] (87.191.159.149) by
	DB7PR04MB4106.eurprd04.prod.outlook.com (2603:10a6:5:26::11) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.841.17; Fri, 8 Jun 2018 09:42:58 +0000
To: Khem Raj <raj.khem@gmail.com>
References: <785a2b9a-d6c8-8356-d218-ecc80af2c46d@here.com>
	<CAMKF1spJvA1pP1BrwmcazY0n1QujJPU270dpL=vq9Vfuri73nA@mail.gmail.com>
	<83419d13-87b0-40a7-dfa0-b30924399405@here.com>
	<536f8a9d-c5db-6cf6-4d4e-fca749d143a0@gmail.com>
From: Patrick Vacek <patrick.vacek@here.com>
Openpgp: preference=signencrypt
Autocrypt: addr=patrick.vacek@here.com; prefer-encrypt=mutual; keydata=
	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
	j64UOX5oCSfUpA==
Message-ID: <a7231983-76e8-4307-4eff-d206f4756b5e@here.com>
Date: Fri, 8 Jun 2018 11:42:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <536f8a9d-c5db-6cf6-4d4e-fca749d143a0@gmail.com>
X-Originating-IP: [87.191.159.149]
X-ClientProxiedBy: CWLP265CA0154.GBRP265.PROD.OUTLOOK.COM
	(2603:10a6:401:52::22) To DB7PR04MB4106.eurprd04.prod.outlook.com
	(2603:10a6:5:26::11)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(48565401081)(5600026)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:DB7PR04MB4106; 
X-Microsoft-Exchange-Diagnostics: 1; DB7PR04MB4106;
	3:c4MCLJ5kOmdAqbybjKy9evbRBTF/uD8szReryMYid1cvG5eNVgCnavSvXUb8+G3GH0At5GzlkqF9iGuW8lXdxpdqwTgrqly767wdwnOURZJ+iFFLYExyZS8Vq+dMRV4smmxcEtCUUv/PeG66HFRG1hJzj33PyJFxb5BJjAIWE5O38skum2pExFU414NKRCJUOC4UBnpL0kGNMan1WR2a9ZDlSWAmyrqbvyy/BKVw2/KAtdFZoXRSHtN+aMQ0bdgD;
	25:X+Zn0UKraCFxOHmvwxSPW7tz9NqGS+R8lajQMQui5W0PK4H8I+8RAaGeZYXxQFwZVGjSAD93TatUlmrTqIAgFUs1l/sD/jhT5YV8YWj5VK3j9/TBbgGL4sxV9VstHcqHQWftnUEKdak3XWXbHEci5qlY81dJ6JgAVsQLsqSgcoomTkjGjnIcrLr50Qh3YJjQCphaC6SCE9cPSV60AM24kbztAWEg6hU9pCYEfagYSTiJQic1H6Ooz+i9ZZLeE1FF8WsXbMkWV80wUktRsoNtcr7D3d2buVdvMLJlLR6XtlY+NWHlNrnBnmXcznks5SX4P1m7rJWMgwMrBGV0m7jv3Q==;
	31:BOnBtrQVw0p7QpZB+G+VWuL90h9EcRpgTVJD3ZM/2/1acQlqCYts6v+vKEDeSkzmDwT1ZRhsxKWd5hqA4w9a9tYTP7cJV/4fwovAiEWTTYqJqFGkg909PqYNHwSl1lmdt5hiyj3EVHsRi7hB2qqijqwf3otDk2KtNuNqFVjUUh5qRLE0ibfReOQgnQPJJmxzfWDAL/uUc+zxxfRzLTp54K126Hx5yXHH5LoEJX92KkE=
X-MS-TrafficTypeDiagnostic: DB7PR04MB4106:
X-Microsoft-Exchange-Diagnostics: 1; DB7PR04MB4106;
	20:8/q3nDl8g0HpVPh+RaN+NcvtUPf/TXZruNJPcssiBA/l7rj9yGtYdw+gQSHjE0WXnXzigkfJoqrS3nwel8cE0YNBPOpkDXKYM7qLeVnQjda+Q2Dh6ZIvyePZCAomBPEWn4WJuIFw4iHSbJ4uaP/rTx34wcU0ZZZBmU5srnwhjvkZwfL3litFD58lybL6Zj7Z0WartegmYk2Kztij4dutKEPKWPwN4n7hGNhY/VXa2HK0PEcL5IWfd+JxyquVfk8rz3qsVXIYc5tq2rMUGHn+v88GMCd2rB5YTGpY7F8KTIXwXjRYaKlnmZLKusVhuX3cGRUor08WygdTHwiMHQBHmRwjWNHN9GJbS4HrBuFUVbNoPWJrx8jtyBtAiIu+VfRnZClMWosjf8MpwEbksQE4Nl287/KTd9jfuPMcByiCFGW+OmPTKMo6F8iKG9l2x/mua42ML5uv/gE+i0yyqL41F5FFdpuw5MFP73VDX6zugeJacA/KQFpilBEF2qxTS5Qy;
	4:rsQGMxHLYNppFsawZAGPqNFmBeIHqL3pRT17djYmi66wF3uvKn1IDCbJKi4BjEe+uAyR5punVSIH9yYOZWbuVYA9Zy2sp9fTch3H9OCqEwpSofVfpqtH2j47Mb/Lvu4HZ5DDMnmLsEfT5LqiQkR/Zn+av1GgEy9p1oaAsI0yBXbX9Tod495wTickshuMcdCb6s/XGvDD09LU0k9Mv+1hA/XbYsXcLX3AjmrRPJx587MVygiS+SItKyXPe8QEZnfIxM7HgNq7ftJD2p26HKY7fONq2f2FmqYexkRvQAN01HVnVLxOu5zJtnpjPrhIQirF4Y8veemoNi3kF31isz3rGCWGNKor+txGLfSDXsUPsZ2fGD9vE98KmY6HjCIYwlTS
X-Microsoft-Antispam-PRVS: <DB7PR04MB41063AC04376328782F337608D7B0@DB7PR04MB4106.eurprd04.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(87047540314649)(166708455590820)(17755550239193); 
X-MS-Exchange-SenderADCheck: 1
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(93006095)(93001095)(10201501046)(3002001)(3231254)(944501410)(52105095)(6055026)(149027)(150027)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123562045)(20161123558120)(20161123564045)(6072148)(201708071742011)(7699016);
	SRVR:DB7PR04MB4106; BCL:0; PCL:0; RULEID:; SRVR:DB7PR04MB4106; 
X-Forefront-PRVS: 06973FFAD3
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(6049001)(346002)(376002)(39380400002)(396003)(366004)(39850400004)(53754006)(199004)(189003)(66066001)(2616005)(229853002)(65806001)(65956001)(486006)(44832011)(6666003)(81156014)(81166006)(117156002)(25786009)(6916009)(50466002)(4326008)(86362001)(478600001)(8746002)(305945005)(6486002)(2906002)(65826007)(64126003)(7736002)(316002)(5660300001)(26005)(16576012)(58126008)(186003)(16526019)(77096007)(68736007)(47776003)(8936002)(11346002)(106356001)(39060400002)(446003)(76176011)(6246003)(93886005)(53546011)(386003)(6116002)(6306002)(52146003)(31696002)(8676002)(36756003)(97736004)(3846002)(31686004)(52116002)(2486003)(53936002)(476003)(105586002)(966005)(23676004)(956004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB7PR04MB4106; H:[192.168.1.113];
	FPR:; SPF:None; LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: here.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtEQjdQUjA0TUI0MTA2OzIzOmY5TkdDM1pDWXRiN1E2c2VpWGFyT21BYzhN?=
	=?utf-8?B?d3QzVWNzTHZ4SUtSVkFrbDNVU2dWY21WMGNEZE5LeGVxZEtrSXljZE56dlIz?=
	=?utf-8?B?VU1XaVpwT0tCQkg5QVJMRzdsRktXYUZxd3Q4U3ZrdW5BRHI2UmhzS2orK2Ux?=
	=?utf-8?B?ZHNzVXdBZHlJL24vQWY2NS9xR214Y2IrR20reU5OUDl1S0pBcGttTHQwNG41?=
	=?utf-8?B?b1czNWFMTWNxbnczZEtqTHpmZWVXenowQVJlZFk0RGhvR3AyYXdMMU1oUlRp?=
	=?utf-8?B?UkF1OHQ5V21jQUhRb3M5TWhkTHRYbTVLUDdHcDJ0M2dlaFZSM096MnhmZFc2?=
	=?utf-8?B?TWxjYjB3eVJNamlkbDQ0MmpzdkEyMU5EZGtkWjJrbVJybHZTdDdiSFlsK09v?=
	=?utf-8?B?c2dFclFTMFQ3T0lRSnc0eEM5MnVueFJsWXA2M0kyMHE0RTd2NGJSV3lSYStB?=
	=?utf-8?B?QTd3d1dOVC9TUldFUTY4eEVSelFFV21HMFN1c2kxSDBnVC9jY3hWbDh2Q0Ux?=
	=?utf-8?B?UGxJY2kvSWp2UGVndC95MnpIbldUcWY0U2lFN1Qzdy82eDZSamY1WitLQm1y?=
	=?utf-8?B?MmxsN1EvZEExSWtoTFlSWnNqZ0M0TkNwYmV6MTZZWllSakUxbU02TGNhKy9Q?=
	=?utf-8?B?NjJPUDd3YWNoUWFGQVpZYkVSQ2lVMU4rYU1lKytGd3RWSVBFOWVPZVB4TTk4?=
	=?utf-8?B?OWQ5OTNTdVFSdE5CY2xiMXIyOVh5Z3Q0MVg1NzNKdy95cjNUbHBBYndnQ1A3?=
	=?utf-8?B?bFJSTXJaQVdIa1NiWWVpaWpqc05MMHUzdmhydjhmZ0svK2Uyem0vNG01WFVB?=
	=?utf-8?B?VUxSVDM1QzJYeTZRVEU5OFh4Z3hZbCtNMmtEQ2ZwUGhMd3VqQ2tIVVhwT0E4?=
	=?utf-8?B?cTRtdXhOWU9MeEhJYTdmMDFpOTgxK1RVL0NMV3NZV2J2UGZ3QTM3SG1GelB0?=
	=?utf-8?B?WVRKL3pDT253ZTV3dEtIV0d6VmZEaStDNlBWUUEzbStlb0dhaTdqQXY2N0xN?=
	=?utf-8?B?aHJ3Sit0TkYyajcyaTJqV1dOd01zR1pKV0lSVmc4TE5YV1ZjbnBiVXdveEhC?=
	=?utf-8?B?SzRZaGc2R0F6cG1FMFBYc1pSWjB4M0FZa2hZT21iYVJnTDIzNlBnQnpOdU95?=
	=?utf-8?B?cHhEM3FlUVkvQkwvTWFac042OXpUS1JqcHhrR2JSa1hvaTk4ZmZFeXVNbElo?=
	=?utf-8?B?ay9PeDJxZGpJU3NLZXdMOExDU1Y3TFBSYlpVSUNzYVV6QmxSN1RNM0NWS1Zx?=
	=?utf-8?B?TkhUSVZKc3dsNEhLNm85NjBiNEt6UDFBb1Q0bklGS2lwTnBpNGtIV1BFVVVx?=
	=?utf-8?B?YlNoRDcxdFZaQ2k0OEJlNmdGT3cvZTRWbmJWMElPWnNIaHNGaXhLbjVoNEpE?=
	=?utf-8?B?UGlIcjVYZndXWEFqMjZNTEdlWUNVdmU4KzgrVGVmaTVwR2MycE9ISG9Wb1N2?=
	=?utf-8?B?dHlHQ2tuRmVHMWZDYWNiSEZRZ0FhZ0pmWXpWL3VuQ3l0ZUNYbDZWS2FCdGFP?=
	=?utf-8?B?V2pqSlMxL1FCRWRneHB5WTF3RWsyZGorRmxxQXliRGdkV000dW1Uc204RVh2?=
	=?utf-8?B?MG5wcTVFWjhkeFlvVXZWemxZbDEySnBQbVRwbS9UWlhPb29uRzdrZ0pSVHly?=
	=?utf-8?B?Rm9xcDltZitKZVhEcEZGdjFPTU9CbjZSR3J2V2ZoZjNSSlZZdlN2N25BbFA0?=
	=?utf-8?B?Z1oxSUJkMVVpeUVHdUZNS0NmcnhzSGhObmw5RWd5STFmQzZsWW1NdjJFU3BW?=
	=?utf-8?B?MWdBdGVVOE1EbXVxWE5FQWlTVGp4aE14TFIrd3JTckhDd2h2TUs0UDNOWjVG?=
	=?utf-8?B?NTRhNHpqY3hMZDRKMGZOaWFQWHVJdFJSVWVZRVpSVlZhREg4RExVZkVPVDlF?=
	=?utf-8?B?cnhQOEVZcVNjNGorVUV3V1VPREE2QTMwcWpqdW5xN0RmUlg0QW5kWkZDTU13?=
	=?utf-8?B?ZGRVdE1IdWU5cHM3VEF6bllnUEpBK0JkOEdyZmlFaVNldnFPbVFiUU5xRnRJ?=
	=?utf-8?B?SXI0OTd3OFJ5ZG5waHFmZmlmemptMUl0UUxxUVo0dXFtQUtsNTZqVGlCK0Vr?=
	=?utf-8?B?S0lLZ29iRFZkZU5qclhtckdqVWhIbUdxVDNGNWVrZkZrSWV0VFlRWEErNlBr?=
	=?utf-8?B?N0E9PQ==?=
X-Microsoft-Antispam-Message-Info: ThuoRxPxq1VPmi7H9uq0BMD5WBG6IW4fYTVjTDE56dvmGFjCT0hT/MvnesB5BA6mUAS+QUjaKlhIRV4F4vrDZV/P3aPIY8wy93AvGFXWH5dfMZtkscRTUntdC4cR5lcJIPr+I94rK1Foo8//SjlWYWxIEDzFWN4sw0AR7aqhxccxIxse1zQhByq36g/R+PAe
X-Microsoft-Exchange-Diagnostics: 1; DB7PR04MB4106;
	6:GxhJN/sUGUShXiIK7tD3K6RTWMxUp3nF5uIbNFGL090OGNEO8v4kJch/YVERrYGKoqfViuQIkWl10BcvSD2EvKXXiFzR2k5+2CyDcn0AHaDChE/ejpTsAvHZJsgRk5j7VDh9sfqFWiitAdMoh5XEGJJ75DTTfRR1bJd4AjE4MYywvKyxShVKvK2FEKkSWevVdcVVp/KbZpqvf20qXJUuEpy/FLcgBOLOV2Mp8x6osM/Xm+w4ty/pCiDx9L+al+aOAZkgmgzqk4XxtNLPrbiGJNhTyn8a1jYTWYQTQbAPFGvt+k42BQZ1lWO20x4vtkzGETKGk35UprjUPOKNP/Qd+RDORys8vABxzLKdvtSYlF+xbYBxRV1qdbFYgkxx+nURDXR0x6gkMo43Ts896mZaY8T828spDDBa3WgM1DAh9r8xtpsFLV5mX5XiY2uwZKATJBHrA8Z64JCF+7Ohjn/I6w==;
	5:gYWvyUWqhVMb8Hxlifrgb11jBjLs/e40/nt2lJDlMuGjOvNCcpqm8YbwSsxRKatDg9sAX8lsCnAaSknWiZ9/PQI3V8E+GzwCVlbnE/SCrSctt0iTdIIgtNLGE7GHgSj0eTcee3tDdw/ALaI7BAHLrNI2nEk3KbUv01Rig+WDI0U=;
	24:fuA9pAf99BYPEzlSzb6/wrfGAF5XCPA6TglJLCcWsceEf/uw9njzAeG+uuaFUjJeVgdeSqa8uQIVW/fApCp70E7MW+K5pHII9ZwsOhFTTQA=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; DB7PR04MB4106;
	7:uWQ7K7k4muxK4yAUhMJvfmMdGhUkTL4YJAK0lxp40wYQfeJpKVQc0bL5D/35/82HfFQFWBoBUmhRAN0qxU4DT9Y24pCzQZpptVR8vLMwn3Qzawbc449eV5QgFtlQxKCecoz6/u3g2TzYQEGIXL17U3iv8zhvW0NQlMZHUIIlI+MtPIkwuGQ7C5yWT1QVm3cbDX4jrqvJobl0aZybles30gDSdCSPipIEoMAGpX8UvO5fKADm+u001YVH5ln4Sr7G
X-MS-Office365-Filtering-Correlation-Id: d115e434-9493-4ba1-dbf8-08d5cd243864
X-OriginatorOrg: here.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2018 09:42:58.9100 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d115e434-9493-4ba1-dbf8-08d5cd243864
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d4034cd-7225-4f72-b853-91feaea64919
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4106
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
X-List-Received-Date: Fri, 08 Jun 2018 22:16:16 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

On 08.06.2018 10:26, Khem Raj wrote:
>
>
> On 6/8/18 12:27 AM, Patrick Vacek wrote:
>> On 07.06.2018 19:06, Khem Raj wrote:
>>> Hi Patrick
>>>
>>> On Mon, Jun 4, 2018 at 2:01 AM, Patrick Vacek
>>> <patrick.vacek@here.com> wrote:
>>>> Hello all,
>>>>
>>>> I have a recipe (aktualizr-hsm-prov) that depends on another
>>>> (aktualizr)
>>>> to provide an executable and a config file. The former recipe includ=
es
>>>> `DEPENDS =3D "aktualizr-native"`, and my do_install() for
>>>> aktualizr-hsm-prov has a line something like this:
>>>>
>>>> aktualizr -i ${STAGING_DIR_NATIVE}${libdir}/sota.conf
>>>>
>>>> The binary executable (aktualizr) runs, which tells me that the reci=
pe
>>>> can find that. (Although to be honest, I'm not sure which version
>>>> it is
>>>> running.) However, it doesn't find the config file, and sure enough,=

>>>> ${STAGING_DIR_NATIVE}${libdir} does not have the config file I
>>>> expect. I
>>>> can see that aktualizr-native is populating its sysroot-destdir,
>>>> but it
>>>> isn't getting copied to the sysroot for aktualizr-hsm-prov.
>>>>
>>>> I see this problem in sumo and master, although previously this logi=
c
>>>> has worked just fine in morty/pyro/rocko.
>>>>
>>>> Switching to depending on aktualizr (instead of aktualizr-native) an=
d
>>>> using STAGING_DIR_HOST or STAGING_DIR_TARGET does not help, and in
>>>> fact
>>>> makes it worse, as it can't even find the aktualizr executable in
>>>> that case.
>>>>
>>>> What am I doing wrong? What changed between rocko and sumo?
>>> is aktualizr recipe installing this .conf file when building native
>>> version. If not may be
>>> add it to do_install
>>>
>>> install -D -m 0644 <path/to/sota.conf> ${D}${libdir}/sota.conf
>>
>> Hello Khem,
>>
>> I believe so. The aktualizr recipe includes the following (edited for
>> simplicity):
>>
>> BBCLASSEXTEND =3D+ "native"
>>
>> do_install_append () {
>> =C2=A0=C2=A0=C2=A0=C2=A0 install -m 0644 ${S}/config/sota.conf ${D}/${=
libdir}/sota.conf
>> }
>>
>> PACKAGES =3D+ " ${PN}-host-tools "
>>
>> FILES_${PN}-host-tools =3D " ${libdir}/sota.conf "
>>
>
> Can you check location of sota.conf in the build tree for
> aktualizr-native in directory called package/=20
Oddly, I do not see a package subdirectory inside the aktualizr-native
directory in the build tree. I do see it inside the aktualizr directory,
though, and it contains everything that I would expect. Is there some
sort of configuration of the packaging system for a native recipe that I
haven't done correctly?

For the record, here is the actual recipe:
https://github.com/advancedtelematic/meta-updater/blob/master/recipes-sot=
a/aktualizr/aktualizr_git.bb


