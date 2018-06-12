Return-Path: <patrick.vacek@here.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C046BE019E5; Tue, 12 Jun 2018 02:19:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.114 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0114.outbound.protection.outlook.com [104.47.2.114])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 705F1E010F9
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 02:19:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hmcs.onmicrosoft.com; 
	s=selector1-here-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=XSQxQhmHQDztvm5f0eOeVweSe+KRS3NahFdFNG4s08g=;
	b=dZaK78Zyt4GMfuPhhRfQ+zhvXpLFvvCS9gcHNDgXuXddQT7zNO+LMbkHxAy/l7+81uG/S07hIkRyvabP58Sf2nR93FSDmvCDKtwE6/iw7nWaLwR10J+18th81uxSRjVq0uiG6xf4u7/5jLmCTQJQBPGtSa8vqjfDi2P8zuZzsBU=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=patrick.vacek@here.com; 
Received: from [192.168.1.113] (87.191.159.149) by
	AM6PR04MB4103.eurprd04.prod.outlook.com (2603:10a6:209:4d::33) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.841.14; Tue, 12 Jun 2018 08:45:35 +0000
To: Andre McCurdy <armccurdy@gmail.com>
References: <785a2b9a-d6c8-8356-d218-ecc80af2c46d@here.com>
	<CAMKF1spJvA1pP1BrwmcazY0n1QujJPU270dpL=vq9Vfuri73nA@mail.gmail.com>
	<83419d13-87b0-40a7-dfa0-b30924399405@here.com>
	<536f8a9d-c5db-6cf6-4d4e-fca749d143a0@gmail.com>
	<a7231983-76e8-4307-4eff-d206f4756b5e@here.com>
	<CAJ86T=Vu-4PURtuk3Di1n7WsvV4yoXJUR+1MTWD-M9htiMqdFA@mail.gmail.com>
From: Patrick Vacek <patrick.vacek@here.com>
Openpgp: preference=signencrypt
Autocrypt: addr=patrick.vacek@here.com; prefer-encrypt=mutual; keydata=
	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
	j64UOX5oCSfUpA==
Message-ID: <36e64815-7d1e-6a85-cb34-0fa135d6412a@here.com>
Date: Tue, 12 Jun 2018 10:45:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <CAJ86T=Vu-4PURtuk3Di1n7WsvV4yoXJUR+1MTWD-M9htiMqdFA@mail.gmail.com>
X-Originating-IP: [87.191.159.149]
X-ClientProxiedBy: CWLP265CA0147.GBRP265.PROD.OUTLOOK.COM
	(2603:10a6:401:52::15) To AM6PR04MB4103.eurprd04.prod.outlook.com
	(2603:10a6:209:4d::33)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(48565401081)(5600026)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:AM6PR04MB4103; 
X-Microsoft-Exchange-Diagnostics: 1; AM6PR04MB4103;
	3:Esf8DS8nERZ5SuyNchaShNOek3ZPJBHvEzIvLIdmLgdNTh2g2P2cXpzxPl3dBNzrrBYrwQEY+tlhugqt5IG1Fyzt9N78nu/2OxuPpOqVb6J4wvn3ONU4u9annPz6AX8ZYqLjzoH8nxVgpF05IGpizn/004wE5jIwR4Nrp0eAyddGC86CIzLg+exeN1kdS0O1G4JwLxmjrBUscPyb0VHmP1018nnwWUJLqiIEBtARSDDFmGZBriuY6dY53xYN8Ygu;
	25:qbH3MzBNW/GAo0x0QOExKACLaTitR1LtxGdOqJ2HTtj2ipyTjoMEQUycFvfvFjJsIBN5CdHuXFk2cG0DyHKyF9hssl5FjSE1uhqQ22VURJ1pRmrNNS4YUO6Fm0wKkCBdOwnKc0ZuXcwpJLcZaKw2XldPlV/Mx8wXjIgiDizyAodzwaXSywbY+BR/26cBKrP1x3TucGkPKYTIAbwZglvxc7Gsr99iKElH1pxxokovWlmlWhdcFw5XTQ8MRy/c46R/K4mXBCVLKNX6fHjfmV55690GV2LxlEInS8r2jUVizQI/vE+m4gykf+H40nbpZEnLCZK/xHYO1xeABffXnsyXNg==;
	31:5tnJ0elw3y7tibln+yRrCmmmzHOx/cAnACY0+cZL+HLEYhRC7o+jtKvgDUKhRZVryrDcgN0IWQGFtov6FZUDO43MIF1g0rM2bTdJoX4Upm6fY02dbPZqOJWASBOpA52DIaMt3PXV8Znc8gDwtNmxplyyCVeDFNAyCwWfh1yZa4tt9b7Rht8LTXgsmGh3ATPw3cOPpPR1xaInH5YDkTQRyIFwwK1+YLRs1GaqhsGIkZA=
X-MS-TrafficTypeDiagnostic: AM6PR04MB4103:
X-Microsoft-Exchange-Diagnostics: 1; AM6PR04MB4103;
	20:xQIo1DvsYcJQnwULlx/78Eq2BYd7IyGhI5vt/hiAkZ1A+YxPBSjoQR6GYhwGnjIjZyHa5EWy49sZdl7sZuizFH4y7JWoHVr3XA4D8SPe63s6yalreb46UHLNSFv5D21s0xQR55H8uz7R08BTfBQiw1i6cHMgK1lYJUP8CYCIi0vXyZN3GJCGw8l0fgAUeCjd00wjTsqDiBNhWmC26igy0opNtCcSSbdoJ0K+v5/5bCxTT5qNJU94wdHlss8xR6RjjLQQXrdv1s90c1jLJ0SSq+5HBamTraxx7EoTOn3zDeLvUCFRZRQZft5iXKGBLXFbyIKPQALA1a6+FefeL7oxbhhu3cAW7DKA71JuQHSX9vwVOjCbbFydcwGNLZjUkkaK2e/g8ZV7gt+d/PWiYGzRyRxqGkpwBUlLO8cXTJkuhhfw12QDjsCvEs/nVxGnbEgZUFlv5WnyVHyjRsNaRFo3t8KWPpRpt9SGSPbrB221e7A0TmsHac+WbJYq9lMwSGdg;
	4:VpB7BJWPutQnat9GZE+GnGc6/kJ+9yJM8IwEFTETC0xxYpfDxChWl2SBvT4Q7MhzXfgc2vpYZRbpFvgxrDuvgUpwgW1SPLr0AZFfVFzv8LTl27j2AmZmkIWEgxirp7LTtzgA2PlYF6lpKle5TmO2hbqkIhZdnwtT79kSXlwO1stM+edTKKBz+6l2nrH4Ju6mwN3bgAYFPVeriZQVkwSsbXtTtHLvnGmuycZdb0J3bnPd2GiUecFsQaxSWSqvO8MNEAZLUegPJsKwBJP1y8kpSyABEodi6k2xdzti0/R82SUvAUQ5yZu5cjQiqxcGfP7F2SZwpwoKfi02Qe1E35K39eVF/rjVrYoUWBLlCH7QRPg=
X-Microsoft-Antispam-PRVS: <AM6PR04MB41033E58A7251911FB1CB91A8D7F0@AM6PR04MB4103.eurprd04.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(87047540314649)(17755550239193);
X-MS-Exchange-SenderADCheck: 1
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(10201501046)(93006095)(93001095)(3002001)(3231254)(944501410)(52105095)(6055026)(149027)(150027)(6041310)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(20161123558120)(20161123562045)(6072148)(201708071742011)(7699016);
	SRVR:AM6PR04MB4103; BCL:0; PCL:0; RULEID:; SRVR:AM6PR04MB4103; 
X-Forefront-PRVS: 07013D7479
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(979002)(6049001)(346002)(366004)(376002)(39380400002)(396003)(39860400002)(199004)(189003)(53754006)(65806001)(105586002)(106356001)(31686004)(305945005)(956004)(93886005)(316002)(476003)(2616005)(11346002)(44832011)(446003)(486006)(54906003)(68736007)(16576012)(58126008)(65956001)(66066001)(47776003)(117156002)(229853002)(64126003)(2906002)(50466002)(8936002)(7736002)(230700001)(5660300001)(65826007)(6486002)(3846002)(6116002)(81156014)(81166006)(478600001)(53936002)(25786009)(8676002)(39060400002)(1411001)(6246003)(4326008)(97736004)(76176011)(31696002)(52116002)(77096007)(26005)(53546011)(386003)(36756003)(186003)(86362001)(2486003)(6916009)(6666003)(16526019)(52146003)(23676004)(969003)(989001)(999001)(1009001)(1019001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM6PR04MB4103; H:[192.168.1.113];
	FPR:; SPF:None; LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: here.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtBTTZQUjA0TUI0MTAzOzIzOmsyalFZR3ZUSC9EdUFKZVgwbjIvRUpBTVh1?=
	=?utf-8?B?bTEyeU9UUmdjK3hFMTR3b1VTQUlwVlRMeUNCM1RvRXk0aEdjZFNtZThiYkNJ?=
	=?utf-8?B?Z21uWmlxb1U2NzFoSS9Tbm5EaUNWcnR0MkFYZ09lTFQ4b3REQ1FTK1BNY09M?=
	=?utf-8?B?cDBENlNzRWdaYksxNXZNbU92eG1acjE3c0tzbmVsbzFrMDU0bVNFVXlON2Z6?=
	=?utf-8?B?UThmWnR4QlNkSG94T3dLYTVTVVRQaHBQVEljcTVnS3dWb2JaZ1IrTXVWSE1o?=
	=?utf-8?B?YjRBaHdIUStEQ1VMMm9tQWIzdzlIY2hOVC9zQ0lONU8wdmFQanB1a1pJbjRC?=
	=?utf-8?B?cm5kOTg1ZXlKSmpEMGwvdi9jZ1JWWDJncUNwbVhlcUt3S3I5T0lWdmQ0bEw5?=
	=?utf-8?B?azAzVGc5SmROOVBUa3BGTVd2ZTRMOGZiM1daeFdKVU1MTVdtMkNDZ21hVXdk?=
	=?utf-8?B?ZW01MXk2UkFMNTlNa3NwSE5ZR1poYWNrZ0d6K0owWHZMSGo4ZXZtdHYvZWdM?=
	=?utf-8?B?YUQ3T0RwTG9oMncxTmk1dFdONUIrNk8wVFhMb2lLb3hqK3RHRHZSWTNZZlpx?=
	=?utf-8?B?ajNsUjIvdHhRdjI3ZzR2SW9nVllHQTVKYWVpNTRGZit2bC9lcnJFcXZhR2lK?=
	=?utf-8?B?VE1aODB6c2REZmxkdjFTTDJsUXhyWTdLNFJvNFZrL2pKUTlMZHlYWGIrUzBC?=
	=?utf-8?B?NWRhTjFsZTljdGcyaFNNOXVOSHE5Z25pZEZ4M053TThsV2t1VG9IZW9jem1r?=
	=?utf-8?B?NCsxZXEyNkIzR05FWStqYlhhMWEvQjZ3aithQk9FNU1uLzNxUVJBaVoyRThy?=
	=?utf-8?B?QnZNMVh2cTFCcjVrcUhjL09kYUtON21ndnpwbWYvT1ZXeTJ6bWtoRXlMTHdN?=
	=?utf-8?B?VGdkN3BnTGNKRlkwR2pRRE1YblZ5Z0daL2Zxc2tTU0o1cjd0dGFPUGtlNzQx?=
	=?utf-8?B?dGdzelJWRnVqL25BVnRTREtwWVNST0NvbXdWK3ozMjBHdE41bzN0a1h5SVVl?=
	=?utf-8?B?S1NtbzRzay9wY1NCVWlqMzk5UU9JMDBCK3p5VnowMDh2RytFR2Eza05LK1BT?=
	=?utf-8?B?aFBTK2FXZE9WcERiY243dng2czdKRnhuRWh3R1BJWVdHSnBEeHg2UndrVnFZ?=
	=?utf-8?B?QUZQN014MmZxay9FbGVyeGd1RlliaXE1NUMxYlJXQWYrcTdUYXBYUXRUS3NY?=
	=?utf-8?B?bmZCMzF2djdvU0k5WjJocUJWdnJWNVYrWS9XMUNPc3lETEJRejIyZGdWL0Ry?=
	=?utf-8?B?U3Jjd1BseWVjOFJ4dklIRHRyVHBZQlhXMEJuL0JzNFlLUS9iUW1nblZyREsx?=
	=?utf-8?B?STZ4eUl6dGp4ZXNiS25DYlZPSGx4dG9MZXMxTFcwVkVNaXZpTmcrVjR4TVcy?=
	=?utf-8?B?QURObFVBUFNrVzc3dUN2OW0vV3lUdyt5dXl6ZW5ibkY5bzJ0cGxJNUwxZC9X?=
	=?utf-8?B?YUNNejQ4ZHEvZ3FZOHBZR3o4YkNENFViRFVVazlpb0ZWS2hKTy9yNERNRUkv?=
	=?utf-8?B?Mm13YVJhbnY2bUVWazl2NVBaL1RGNUFBWC9zdkNsb2dyWDRhOHQ3NEVJVldF?=
	=?utf-8?B?aVMvOUhWZ3R6U3JwV1lZSDhrM3dyRThGOFNlZzYxbDhxTGc5LzdzQ29mcWE0?=
	=?utf-8?B?dktCcXIzYUpVN201cjlDdmdMNTVJcGprcSsyUE1vbGxBZllDRFZCUDV0VEhQ?=
	=?utf-8?B?bDl0QWplalhHOUI0ekYxamVnNGdwTEk5cmFxNzUxOHNQTWo5UHN3OVR3d3Vo?=
	=?utf-8?B?V1dBNFU5alZyV3E4VWlZYVhkOTVjZDloUjZFbzA3N0JiTnF4MXdyaFEwT0lo?=
	=?utf-8?B?Q3pzYjRGZjdKWXN5OEFEd3VVWVZ3RnBYa3RMV01EcjYxOWlPN3FHTXVBUm9z?=
	=?utf-8?B?bEpiZ1NpYjFZcU9wM21KajlWUklsdDNUTE13d0FQSjVVWkcwRmxjZ2k2eGox?=
	=?utf-8?B?T2xVL1V5T0pqSy92aWh0R2Jod3Q1VCtSK1BmRDFMdm9CSFdhRWZwdURXRlVt?=
	=?utf-8?B?SUVNUktJK1FuR3hVL1M1cUoxRXdyYU95NDZtNkYrMjFac3BaUjU1SFQyWVBC?=
	=?utf-8?B?bXNra212NjJuMHNlTlptOUJJZytQMzBJRFBUU3phdDdJbDg0MWROMVJCU1dK?=
	=?utf-8?B?aVRuTVVQS1FiS0RDNGJHbERQYlV3ZEtFbkdpYWw4cUFNeDlhWnRWQXhvYmQx?=
	=?utf-8?B?QmZRVEpEUTFMWVRyc2pwYTlIU29VaXdBaTgxSmZ3UVBqNy9lbUlJNlhXT0g1?=
	=?utf-8?Q?Q9YdDYWxi63VmMY4Mk?=
X-Microsoft-Antispam-Message-Info: mOuJ0sfzWCnZqjiQv7dd6/nuDp/Bg1Vs59tunHfynqfZoLceAUAUHbO3a56wFe8auhQg7Fj3ok+IuiQa7q09ZlT64q/1RG6Qz9Obd4JBqSOg5dna4dH7e2g7khKebSdijRvq8boCeyc/UHyTBQUA9hXBszzOSgVi/vQ/ZfIka4tM6WUWaNJ9EkHMgHPa9wf5
X-Microsoft-Exchange-Diagnostics: 1; AM6PR04MB4103;
	6:fK17CSVd8EJyDVwgzTXbjNA3fMuyfi0SXjo4GvFB60Kca2QKfJndlLZgI2nknw7J88CyZhONxDljIohkcCSyP9dhkoMaNlj2JIuVrKOfstDIesM4RH3kk5otTOa+LrYr1MHYNni/z3PdEYEzpK8raWh27oNvGspC5POyAQqL74y4kC85AJDNCn2SbPO7ug2HQ/5bzcpJazXKmrXEiuCfAKDlGIvDcm5P+sTOKZ/MOOfhdSBpcsJIByeN19yawY681wxcUHD1vczVMD4KsE24vZXLJJtVQ/sWUQPV76PosHznBgVKT9NElfes3Yl0hWZ65yME3kTCn7eVBzenrrp0zyoPgOC8UTCLpQn2xLVrhZo5z2nBg4Lk854t8xqTuQmOPcT3S9LwKPJlr2e6pNr+SCu7iAdBGAxwOl7onO9mij2LTm+M8s8I5//6pW+rejB5rCzaZn1l21QmPlA2xBkSeg==;
	5:fKPaBHbf/wltio8NIhRAP2XalP6iQy03I/+ymNEhTw5OJwP+TwPMHunok9qlLa73p0/X/b/SYpPtr9qkHaVX3Zj4+MdGeket5Bm3inWdwTYCU3buImKVMe9HfxbWnlJGANOhrE2Tg/4o8GfbVqGxGfYXhdiwkt3jYxkPaL48Zfo=;
	24:T7fLVQRBi/dbnsaM/1yuYMfb3mejJe86slDzqolszZcTGuPL3QO38mXHSz0LwMjlxce4VG9k1fIZLqBhHxsRRRpGpNKC50ScuLEx/yzoabY=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; AM6PR04MB4103;
	7:f3fNU0UWnjKZFipWOQJoFWChfp/rQk0AJmFmk+KoB7q70nSBsGOFCV/54vBBUrXWGjkCMvvgF5tMFIxt4vMDn3BCOLuu0mC/XYcHQx937M1xDPhdbNnL/57WkwrlHF5sMIEA4PfW7IxtrSiL+oEyIRX0WZPOU/Pw7PealX7M52r6G+G48PK18E3b8G+LeUb4fOEK3GFWC08SIoMC61ZtIPt0N2L1aQe77PBSOWmVY2YvGGuGlPHeR4gj9fAfe9Be
X-MS-Office365-Filtering-Correlation-Id: eef22eae-57a4-490d-996e-08d5d040dd62
X-OriginatorOrg: here.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2018 08:45:35.0161 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: eef22eae-57a4-490d-996e-08d5d040dd62
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 6d4034cd-7225-4f72-b853-91feaea64919
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4103
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
X-List-Received-Date: Tue, 12 Jun 2018 09:19:19 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US

On 12.06.2018 00:48, Andre McCurdy wrote:
> On Fri, Jun 8, 2018 at 2:42 AM, Patrick Vacek <patrick.vacek@here.com> wrote:
>> On 08.06.2018 10:26, Khem Raj wrote:
>>> On 6/8/18 12:27 AM, Patrick Vacek wrote:
>>>> On 07.06.2018 19:06, Khem Raj wrote:
>>>>> Hi Patrick
>>>>>
>>>>> On Mon, Jun 4, 2018 at 2:01 AM, Patrick Vacek
>>>>> <patrick.vacek@here.com> wrote:
>>>>>> Hello all,
>>>>>>
>>>>>> I have a recipe (aktualizr-hsm-prov) that depends on another
>>>>>> (aktualizr)
>>>>>> to provide an executable and a config file. The former recipe includes
>>>>>> `DEPENDS = "aktualizr-native"`, and my do_install() for
>>>>>> aktualizr-hsm-prov has a line something like this:
>>>>>>
>>>>>> aktualizr -i ${STAGING_DIR_NATIVE}${libdir}/sota.conf
>>>>>>
>>>>>> The binary executable (aktualizr) runs, which tells me that the recipe
>>>>>> can find that. (Although to be honest, I'm not sure which version
>>>>>> it is
>>>>>> running.) However, it doesn't find the config file, and sure enough,
>>>>>> ${STAGING_DIR_NATIVE}${libdir} does not have the config file I
>>>>>> expect. I
>>>>>> can see that aktualizr-native is populating its sysroot-destdir,
>>>>>> but it
>>>>>> isn't getting copied to the sysroot for aktualizr-hsm-prov.
>>>>>>
>>>>>> I see this problem in sumo and master, although previously this logic
>>>>>> has worked just fine in morty/pyro/rocko.
>>>>>>
>>>>>> Switching to depending on aktualizr (instead of aktualizr-native) and
>>>>>> using STAGING_DIR_HOST or STAGING_DIR_TARGET does not help, and in
>>>>>> fact
>>>>>> makes it worse, as it can't even find the aktualizr executable in
>>>>>> that case.
>>>>>>
>>>>>> What am I doing wrong? What changed between rocko and sumo?
>>>>> is aktualizr recipe installing this .conf file when building native
>>>>> version. If not may be
>>>>> add it to do_install
>>>>>
>>>>> install -D -m 0644 <path/to/sota.conf> ${D}${libdir}/sota.conf
>>>> Hello Khem,
>>>>
>>>> I believe so. The aktualizr recipe includes the following (edited for
>>>> simplicity):
>>>>
>>>> BBCLASSEXTEND =+ "native"
>>>>
>>>> do_install_append () {
>>>>      install -m 0644 ${S}/config/sota.conf ${D}/${libdir}/sota.conf
>>>> }
>>>>
>>>> PACKAGES =+ " ${PN}-host-tools "
>>>>
>>>> FILES_${PN}-host-tools = " ${libdir}/sota.conf "
>>>>
>>> Can you check location of sota.conf in the build tree for
>>> aktualizr-native in directory called package/
>> Oddly, I do not see a package subdirectory inside the aktualizr-native
>> directory in the build tree. I do see it inside the aktualizr directory,
>> though, and it contains everything that I would expect. Is there some
>> sort of configuration of the packaging system for a native recipe that I
>> haven't done correctly?
> No, what you see is expected - there's no packaging for -native recipes.
>
> Back to the original problem, I think you should consider the
> aktualizr executable and the sota.conf file as two separate things.
> The host executable should always be provided by aktualizr-native.
> It's less clear what should provide sota.conf - it depends whether
> it's just required for building other recipes (ie like a header file)
> or whether it needs to be present in the final rootfs? If it's only
> required for building other packages, then it should be in the -dev
> package for aktualizr. If it needs to be present in the final rootfs
> then it should be in the default package for aktualizr. Either way,
> recipes which need to find sota.conf in sysroot would then depend on
> "aktualizr". Therefore recipes which need both the host executable and
> sota.conf in sysroot should depend on both aktualizr and
> aktualizr-native.

Hello Andre,

Thanks for your insight. I didn't realize that there was no packaging
for native recipes (although that makes sense now that you've explained
it). In my use case, the second recipe just needs the config file from
the first for building a package, and it looks like your advice has
solved my problem perfectly. Thank you!

Patrick

