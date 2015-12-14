Return-Path: <David.Schulz@theqtcompany.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13F5DE009BF; Mon, 14 Dec 2015 03:40:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_05, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.112.120 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0102]
X-Greylist: delayed 7203 seconds by postgrey-1.32 at yocto-www;
	Mon, 14 Dec 2015 03:40:26 PST
Received: from emea01-am1-obe.outbound.protection.outlook.com
	(mail-am1on0120.outbound.protection.outlook.com [157.56.112.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C1F2E0078A
	for <yocto@yoctoproject.org>; Mon, 14 Dec 2015 03:40:26 -0800 (PST)
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=David.Schulz@theqtcompany.com; 
Received: from [10.9.78.28] (62.220.2.194) by
	HE1PR02MB1227.eurprd02.prod.outlook.com (10.163.174.13) with Microsoft
	SMTP Server (TLS) id 15.1.355.16; Mon, 14 Dec 2015 09:08:12 +0000
From: David Schulz <david.schulz@digia.com>
To: <yocto@yoctoproject.org>
Message-ID: <566E86F2.8040706@digia.com>
Date: Mon, 14 Dec 2015 10:08:02 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.4.0
MIME-Version: 1.0
X-Originating-IP: [62.220.2.194]
X-ClientProxiedBy: AM2PR03CA0008.eurprd03.prod.outlook.com (25.160.207.18) To
	HE1PR02MB1227.eurprd02.prod.outlook.com (25.163.174.13)
X-Microsoft-Exchange-Diagnostics: 1; HE1PR02MB1227;
	2:jIe+K2PfnjxpvDRWHWhEEJCjtX9lC5kk91LxBZ8VAqj+mEPLS+UrqZD6SuiWJ5NNOfjRePlSXdUeHs4fhHbowDw9teVRFMNq1x21HvYFUSGPhGnTkjJkjrc8epyuhVTVZjyqZAczjjFyj+C0VZ5s+g==;
	3:tRcovEicTH2hV2Zrvya1J8Y4aU4CL6uiMouwCdEfv9q82udN3tVhKE9UBSP11vAcRgWBRuml6FBt3/eZaY0m3y04Cc90xlSjllVzsaq9T8Vvck/68oCeXJ+tDBd8l3RS;
	25:CP8XMzudJ4RAsIdo6LuBzvzUorbWvlkyUDU0Q+WVW/EYYUfLAQ5/pXuonfKO4egNuu7JZC4UqI2T10MQXlvXvS71uzkMDnyIpAv7qr2Z9hMkqBYJ2fZ3I9Y94z0fU4wz9FYwhOvuMVZjKi4Z/NzeUdkcesd1dBKwcPtewSaNvP8fXNBqdALqck3acfRbnawAeM5cdQI+xvbGz/KuVnAKLWu3kJ61NzIxOalZCHdfvCcq2sa0jnZbDGGpjGoHRO0uwXOEBSxtslr7ljA8I3Y6Rg==
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:HE1PR02MB1227;
X-Microsoft-Exchange-Diagnostics: 1; HE1PR02MB1227;
	20:ynUeif2sV5DIHwxdL6JjmEd4+H01wlYp1oQCkGyibVLqurNJD4X5XaHXkOEngVBHhES2+HCfz2SyRG7QS9oeq0pldotoRSMUb2Eu4SwbtVys+LncrZVh9014d25lPV0/IIbggtZcqpe2ozXnjVNvZ0iG3hn86SYog2HTy+RIEtdqm3RBBIVBLB3s7h58dQb8zXFWRpDmnBifMcKpvx6NiaPZZrcTdEAojoPNIE+d+SgcHBsu0ek8JNhEIdAEAgvXFDw4JiKBz1BRrRjjwDkEBQXne9RoyHPJqyVUqrvQZHYS4W1hALyaZZL0+JMG59c1m6DlhiWm6asyHH0jMFrduGrA2yulvuRpTMSmbMpzFE9WOXl1gylcaKMBqdp/63WdVKVYESqjIJYB9fAXWBpfA0th+T1W0/rxhWffTwMG4H8yrsaoSt1yv2T5pr+3F7iz2+DtI8psNKEvkPckKZXpmUVUlyqqrV7is2IKKUXFpyj3zOh97S321K7DHAj60hAf;
	4:+3IWiNLVV3U0dLg/cv1Bf7c/goYh9GWbEuOfbt9jmd14LX+XLRQiHLy6F0ABV/uGuPnZSgjbE9lkf98a0DWzvHdiex/Nn2ETJlh8YCh9hWerNwIgEtmBQ/tSFq1euyXdWplVuQBtX2lU9wPhn9zFq1E2Lw/MSCFltq3fcdbzXiERhYpNo/oVjs6fGIdRvmFamtOq3L9FLJ2/MGDX5Rft7BPOgiNDOqj493r32eB7RyLAW4j77E6q0QWUh6s8Yx+LsEW73L1JmjjtnYPgYqARBKPt7TMn47/vSOF/w54RwmE4fdKL2BDg8naC4vPtvzalUSdyXGI6x/vKqVNCobGYHPm5zrrjPcKGVPfID2eCqSOQkxWVJz+tP9p1ABP5Eu6+
X-Microsoft-Antispam-PRVS: <HE1PR02MB12272A4FACB5FF9A8605F850E5ED0@HE1PR02MB1227.eurprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(520078)(8121501046)(3002001)(10201501046);
	SRVR:HE1PR02MB1227; BCL:0; PCL:0; RULEID:; SRVR:HE1PR02MB1227; 
X-Forefront-PRVS: 0790FB1F33
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(6009001)(6049001)(199003)(189002)(110136002)(97736004)(47776003)(36756003)(450100001)(92566002)(66066001)(230700001)(87266999)(64126003)(54356999)(77096005)(87976001)(65956001)(1096002)(586003)(6116002)(3846002)(65806001)(122386002)(558084003)(40100003)(106356001)(50466002)(65816999)(5008740100001)(50986999)(4001350100001)(33656002)(5001960100002)(105586002)(189998001)(83506001)(81156007)(229853001)(42186005)(2351001)(80316001)(101416001)(59896002)(5004730100002)(23676002)(107886002)(42882005);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1PR02MB1227; H:[10.9.78.28];
	FPR:; SPF:None; PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
Received-SPF: None (protection.outlook.com: theqtcompany.com does not
	designate permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtIRTFQUjAyTUIxMjI3OzIzOitJT3VZUmFTNG9MY1VBWTBLK0dOWTdGcERT?=
	=?utf-8?B?Rll3WTRVMVJtRi9lVFBRdFlhL3dHbGVXZTQxMVU4cjNKcXhKdzZQMmRjMVVy?=
	=?utf-8?B?UGpLa08yb2Y4NHA5Ri9EZHM3TWtwUDMyWEFnR2xZUHhkRjJwSlRUZVRpZGk0?=
	=?utf-8?B?eFBydVNaakVMRmJvOElXc1pETjF1K01zZkFZWUNvdmtrRGI1ZEJmTW9QWlYr?=
	=?utf-8?B?Zmw1L0lmTDA0Q1BiSFlrd3MvKzQyR0Y2K0w4eFhmRzFlSWxaa253dlZRRlg3?=
	=?utf-8?B?aEwwTmdML3JtZloyWU5LNVJLMjlzUWRXejZCbUNNVWQ5OEgrNWZhTWlBYXFI?=
	=?utf-8?B?SWd3cE03bDI5UlFvTDBMNW9pbXVIRUw4dlhuN0tYSkRCWnduVE0rMnhGQmpi?=
	=?utf-8?B?M1ZZdFJ1T3VsOXMvRzgzbjJSODh4YmdibXE5K0gyalBWYmNQYTlaY0dMR2oy?=
	=?utf-8?B?Ymp4ak82NVdody9uMzUrRWxnT1Vobkp6OEVFSnk4R1hiSUhkMGpVc0twTXJL?=
	=?utf-8?B?MEJCOWJHdVYvenBKa0Z2STJUUXMwUm1VMjE3R2E0ZEZmVVJvaVp0T1BMQm1y?=
	=?utf-8?B?enY0aHV0K2FyZlV3V2tSd1NQWkVTSzRaNk55TjBiYXJBNVl0cmR3OHhHbkdW?=
	=?utf-8?B?NzFiL2dZYU9aR3I3a2x5U0RDTDVpcHl0R29YN1Y1Tjh0WXVwNUNVOTQ3VjBD?=
	=?utf-8?B?ODdIZ3c2YUVWTytrb21MOTlWZjFFRVFPRFVQZ2xWTXpGbUlrdEN4KzByT2Er?=
	=?utf-8?B?cjhCaHc3dU1NaTJDMFBhSEtPK0RSNUNmUFYvd1ZqcGhYODB0VTlIZEtEN0V2?=
	=?utf-8?B?aTJ6L0gzeFVlelJCS3NqNzhLSm5UR2lUR3FDS1NEc2JESm51NXlwNm93dFZB?=
	=?utf-8?B?VHpvYmZpRnVpeU1uMHJ4M29XdWhZSkxIZ3l6T3Q5Q0JRUThtNDBBc2NUV0hx?=
	=?utf-8?B?dEQvV1FhZ2NNQ2xqcEFUUkRzVGF1NTR0WUd6Y2tkOW00QndSUXlOS0lBWmxD?=
	=?utf-8?B?K3Z3TTRIcStJeGw5QWUzYUdhRk50R1dLWnIyYmhkbElKRmtaSFRBK1hONklh?=
	=?utf-8?B?VGxoY2NURVAzMmZqcUkwM2luYkViczVLbXM2NkFTZHZ0ZWk5ZGpMdUd5RG1M?=
	=?utf-8?B?ek5JdXFEK25sZnZ5WHpUdmlGaVB4Y3ZvMEpGRHdhbDdvWTBnRjc3VXpzOVNn?=
	=?utf-8?B?Z2o4NDNXRVNrZlNJSHVKaGlhYk1qaituSW9LQUE5cmZxQS9zWDZCOTgyRVVF?=
	=?utf-8?B?YTR6RDR2WGNIQ2xXdVJCTkQrVSt2R1pTSEVvU0VMNG11VTZYcmV6R2lVL3M4?=
	=?utf-8?B?b0JBNVMyTzVrTEt3Qk05WHVYSXAxUVptNm5yLzFjdjBqOERzek91aE1kK3Bn?=
	=?utf-8?B?YjVqK3BiZFdMbE9qeDNaTTE2R2plZ3praVBKYWE3dUpxRkFxY1VTYXk0TEFS?=
	=?utf-8?B?MGVnYVFyWUhoMHRybUZHSnprTVVuTStocC9Rdk9yVUFFcHFqM1pxLy9BL0Za?=
	=?utf-8?B?NG9ZbXpUUlNHbHZ6a0NBQ1BIL0RON3BwZ09Jcyt5OUtDZ3ZzS3ZxYkd6ejRC?=
	=?utf-8?B?T1MwdEJNdDdjczAyZ0xRY2tKWGYweTRvSjNYUEYwVGM1RmU1Z0dmdWxaNVhG?=
	=?utf-8?B?dDdXanpWaHJZdCt3akQ1UFVxUTZLSndLcFp4ZU43N3E1ZkhoVk02dFFBPT0=?=
X-Microsoft-Exchange-Diagnostics: 1; HE1PR02MB1227;
	5:p+Rj6qQYzw0elgvgWo2/yR0IVyOl75ajSW0duO27olmzksat/4PWKhiVx4R7N7NAaX1BmADFDBUEnZnRpY0gfoLEXQCqcTCEF2NZVgxzcA6VhHUCXzm5NP9Iha/lpHErG+4azNxYqUorsKQOfh+Y6A==;
	24:f9CoiWxPW0oIQ2h2s8e+BAfnXN7DR8qQreAOdzYCPYRQMi6z6x6Ww+Qe3c9P/mU0dYEn2d9OeOpEVrIzkSD15cn0Kr7NgMIeuVuGHfhxKjQ=
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: digia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2015 09:08:12.3938 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR02MB1227
Subject: [meta-mingw] fido branch
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
X-List-Received-Date: Mon, 14 Dec 2015 11:40:31 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

is anyone capable of creating a fido branch of the meta-mingw layer that 
works again the fido branch of poky, or knows who could create such a 
branch?
I've tried to contact the layer maintainer, but he seems busy.

Best Regards
David Schulz

