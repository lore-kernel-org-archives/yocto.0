Return-Path: <manjukumar.harthikote-matha@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B81FE009CA; Tue, 16 Aug 2016 17:21:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.81 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 84924 seconds by postgrey-1.32 at yocto-www;
	Tue, 16 Aug 2016 17:21:52 PDT
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0081.outbound.protection.outlook.com [104.47.36.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BDCEE00563
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 17:21:52 -0700 (PDT)
Received: from SN1NAM02FT023.eop-nam02.prod.protection.outlook.com
	(10.152.72.52) by SN1NAM02HT184.eop-nam02.prod.protection.outlook.com
	(10.152.72.142) with Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id 15.1.567.7;
	Wed, 17 Aug 2016 00:21:51 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
	smtp.mailfrom=xilinx.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
	149.199.60.83 as permitted sender) receiver=protection.outlook.com;
	client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
	SN1NAM02FT023.mail.protection.outlook.com (10.152.72.156) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.1.577.8
	via Frontend Transport; Wed, 17 Aug 2016 00:21:50 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
	by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
	(envelope-from <manjukumar.harthikote-matha@xilinx.com>)
	id 1bZoc9-0001CH-26
	for yocto@yoctoproject.org; Tue, 16 Aug 2016 17:21:49 -0700
Received: from [127.0.0.1] (helo=xsj-smtp-dlp2.xlnx.xilinx.com)
	by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <manjukumar.harthikote-matha@xilinx.com>)
	id 1bZoc9-0002OL-IM
	for yocto@yoctoproject.org; Tue, 16 Aug 2016 17:21:49 -0700
Received: from xsj-pvapsmtp01 (mailhost.xilinx.com [149.199.38.66])
	by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id
	u7H0Lmh4031106
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 17:21:49 -0700
Received: from [172.19.74.183] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <manjukumar.harthikote-matha@xilinx.com>)
	id 1bZoc8-0002OD-Tt
	for yocto@yoctoproject.org; Tue, 16 Aug 2016 17:21:48 -0700
To: <yocto@yoctoproject.org>
From: Manjukumar Harthikote Matha <manjukumar.harthikote-matha@xilinx.com>
Message-ID: <b4774eb7-0301-a5ea-070f-093860a22d49@xilinx.com>
Date: Tue, 16 Aug 2016 17:18:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.0.0.1202-22516.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(2980300002)(438002)(189002)(199003)(64126003)(81156014)(9786002)(92566002)(36756003)(86362001)(65956001)(54356999)(87936001)(50466002)(83506001)(4001350100001)(33646002)(65806001)(110136002)(107886002)(189998001)(50986999)(558084003)(2906002)(81166006)(450100001)(7846002)(586003)(356003)(47776003)(305945005)(3480700004)(8936002)(229853001)(2351001)(8676002)(106466001)(63266004)(11100500001)(626004)(31696002)(23676002)(31686004)(77096005)(230700001)(7116002)(65826006)(107986001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:SN1NAM02HT184; H:xsj-pvapsmtpgw01;
	FPR:; SPF:Pass; PTR:unknown-60-83.xilinx.com; MX:1; A:1; LANG:en;
X-Microsoft-Exchange-Diagnostics: 1; SN1NAM02FT023;
	1:19ClRs++0t5wF9dnWgWp6TIZr9KF8/nmc98G2CrIHQfEp6woYHFqmU88s7Ygt5X9UKy2dBlvTk85lyNdO3NNUAXe+ReKUqMFHzn+NYJAvKJdpM4m8TdEnHkzOS5fzh2/f6TEJ8i5nDaqPzlMy4xk1JK5hvaWeidtBl3UAirwVQJCIHimy4tduQMRcIefcfcEGM0pn4WCPzLBLKgf0xBTqotLWzoLC0jz4jTDQSdDz+dww8AHNI/ZS7TJKMpe/mnB4oPhLrQ+3xet5bOu6S5EnBDEyFzoJDM6zq+NW6nHChsDcx3BIr3g0o8vSD9kQ4g5N6XB+f4ux8j9QPSoCgL4qYyemecqtgv8aCYwwCuf1Fd7/2BY3jgeWgiJV+jPFCyAAYE8Mw7Db5zQ4Bnc30xPFLZ3zNgBjQsv/OXo+Kdw89gZh5sFirVP2g6hKoYxxKtm+V42CRgh0bUjPig7y31smkdQe290n+R5t1K6saJR2hULoVnMfTD7tRrbEFbs3HV60fgJu8L+niLpsRhmBd+qDdLeFBpMKW585NKS0YyDZ2+YcNI+p6cU0M1j0QM+NhdW
X-MS-Office365-Filtering-Correlation-Id: 07e674db-ec1e-4779-cb3f-08d3c6347c47
X-Microsoft-Exchange-Diagnostics: 1; SN1NAM02HT184;
	2:ATMyTPRW3noB4PNvC1gBb2Iuu6qoxG1xHnOaHdXXhkIRDW8/b4nL2RfPPjYsf33IWwMg4GIIzQqnhzbdo1LHCbxHiB5fH+W1UCqF1LcVb6eZZ8ooOOYucOis8MVlv1GU0cUd6cuEEwgm/Sv+UGFc0H2NKekaOzdmcVs0g/XTxijXnJrlSG+JNLc70k3wgZGq;
	3:ZGpzZWZOPcBvBktZOeBzy+prxkbi9HZZarRc3T3K6RoeMHVYjgGXFHE2Tasm+NMmW5wUjU3rNToJKv1RWJ8SB/dHMVo6bu0FXJymnrPczsbULwlga9UJey1aEMOwUarEaKcfiq0YMQZB1kIQg5SaV8rHBNpJPt04Td5bBTBiJ6o6Xc+HkKFnN+ZO9GVotTpPtTiAkWK+WDakHleF+vic0v94lwJs9/Wy/EEqMwRJSNV14RynkhCkq+oQkE2t/qEcRUTu1ZMWfORoYe+TTWCZ9g==;
	25:vSvDiqmTeiah/ieZdGGQWiOaxa9/xj93blq5qXYlbgvJmrAc4OphwwJyk9OZWdY3zuiX4h2P6gyrVGbmT0axwFgAKm73SY2KMqN/FlZTAeePUnH4ze6qTZUpkcCoGXfgeyJh+G++dO5PRu6UBGEIidDxfEE6ifwKx0nQUb3IJGFiw7F48Kv6v0rVId4p464DaiHUpRvKi7t1E+zEvAisUXNFVF8WR3C9L0lIpebvfTRvvmjm+pUcEeeuZZXZekQQTR/A+8btqTN6Wp5kYK+quvokPEGDQ43d75qhg5BxIihrF5y70Vy4lDzv/+eZt75cwrCMyudV3mi3oHHvwN5qeqeJJ8JH/ldyqd1RgakYsTt9YVZJ6m5mYcE7VXki3vmot+wBTRqfqIBCgYWgnWY774JL/urQU/1ugG6wZqaxQfE=
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0; RULEID:(8251501002);
	SRVR:SN1NAM02HT184; 
X-Microsoft-Exchange-Diagnostics: 1; SN1NAM02HT184;
	31:onePuT20TJykX/cBMYRYxkZT2Rpqp+1+jq4qpxQ1ZIoKBgz7cP8UyohRm68+xQj8ntdYaH8aZ4dj5MT3YszTMzB8Uo5E2oJp1lllCBKouYAueQxzfYW2Tn230QqPb51xkmpF9JUcxXZrY+Lt0Op5R4usJg7z4mwiqLVlVAqj2PNAfSicAT2Ck8lu2CnmzZo9zVpbOAvtJS8n6cU0Or1BMEZU62VGj/WFKS3JjZKsFxY=;
	20:gqKSGv4aw0JEDrMa+WeVkatA9cnGwefHZAGckXL8DYhYGgUAKZbz/i2btPBBeZMZcKGbTg31MxOgMwZjOeA0YKB3dW6tonbo7uiHmWrvu1Pjc9sOSpODTlhdKDEtiViVVwS72oEyI5t9Fe5Vqty6QEZQdx4d3oDHgszlXdnTIxtfg94MyEpn02ciXWw8EutRwnGdLSxp2AnR5IMLmnPez9OVTNkhXC4JtjqluDfcQaBn+YXIg7lAzQ9ALjEgN1h6M2X2JrA9JmcDpKp0lFRw4jwlLWDdb3O46F5cYCVNdwc/nvdtIDQbSLj49gGa8JpKyBU4XMF3fa+UjT15PxHBUU8Ts42IZgXQHp6dhy5gUiOmayHYvo5himn6rtpWjDEpiDf6rEY+AsxnRviHBBYOAjn3+/xjEZQvPnQTjVvGOyYkihFmEpeuJ0bSFwmNES/k6kjlc2ouDetqgjN4zrSQ2/DeYfE7QfVECFaL5GlHuQkQQ8Td+gQQzZb9d32lBYlD
X-Microsoft-Antispam-PRVS: <23266645504d439c9364cc92255b4257@SN1NAM02HT184.eop-nam02.prod.protection.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(13015025)(13023025)(13017025)(8121501046)(5005006)(13018025)(13024025)(10201501046)(3002001)(6055026);
	SRVR:SN1NAM02HT184; BCL:0; PCL:0; RULEID:; SRVR:SN1NAM02HT184; 
X-Microsoft-Exchange-Diagnostics: 1; SN1NAM02HT184;
	4:LfLRJwqdRdkTYb3G8V2CprjjZmG8kNkB8hChVOh0WWqes2SRNA0vOntL+LR4jpTV9lJAMggx8gUcKraRCxrcLPLi++Fka/BPKNYGL2LO9IAWQiUX0jis10B7dhWmaL5afGvBlDRYxcPVZ06gF3yoT6L2gEe/C68CKjHz6gF3qerXwGj0DZfWxxdnGItmpsvcTlJFNh+uvvm1J/0OcdIXTEaWbqhKDFhHNtNvvUYzWizol4kFoJCX2PHJ06PCCxB6lw0s+Neh0+aR2Jx9mb7vH7N04U34f1k3YpVB806/p7bXFoD2Adohayy/mBMwaXd+xdzwngB3YWwuIfmWvPjh1gzwsFUUKJFVkUutwlaHrrUz9qusF9WCYGORQOULB+FdYs09LKeGkaJxpLWpJ//E4KC9WTN4uVB32A/O26DAVtnwuIDr6pTXz03VbE984WBq19D4FNzOAI9dL+Br5VwPcqvWWmgky7Q05zbSssxlHhDNrAEPFfkEtI4KZ1AmEBZK
X-Forefront-PRVS: 0037FD6480
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtTTjFOQU0wMkhUMTg0OzIzOnhDVUpuOEkwajlpY0hvLzVhSXE4WmtnMkIx?=
	=?utf-8?B?M2haK3R4S2szSnQ1VjZua3d0bHZ4cGcwekhsOUZhc0YxTTdDVEVxVUZJSzFm?=
	=?utf-8?B?UWxxOTlXWWxKdXVFWndFUU9XSTlEbW9oQlRXcEdpUVFrUktuWnJsS0IzdFhq?=
	=?utf-8?B?d2prWVNsNUl1dkIxdlRxcFFZZGpyM2tMTEtSVzNqUDdIdzUwRlF2c01iczM0?=
	=?utf-8?B?UEtldVdIdjNKWHhDdEhUaStPWGVEdHdpR2xFSlhvTHVSSXk0NTRBM0JRUysw?=
	=?utf-8?B?dmhINjNXdG9HaFJuNU1aaWdRS3owbDNuNnpWa0ZhcEhRa1RyOGdCQUo0L0dX?=
	=?utf-8?B?cUV5VlpwS3Z1OVM2cWwvcDJPUVZsRUlibW9iQmhRcGJaUUdGVDgrK3oyWG1r?=
	=?utf-8?B?dEJaalpQM1hIWXJFMFlWSTRBM2lIb2tTQ0dxMWNkZ08rWExaVTloTHZCKzg2?=
	=?utf-8?B?L2VUK1lUbys1ckt4dVJUTDJQV0FqckgxVnJaS0R3c2JXZXJnUE9aSnA5L25t?=
	=?utf-8?B?cWdodC9ZcFY5SndDMGRGVWIzNlF3aXd1T0FsMWFHTHB6dXFHUTJuUE5ZTHpH?=
	=?utf-8?B?MUdlNTl3TFFvSG1UZ0g0MDdFQXpRWVhJdytxcEZMdWRHSkJwNlRqVmFTMjZF?=
	=?utf-8?B?YzAvMkRGMXZDdWhPOVRQT1hhd0N3N2tubFh3bi9xWlNEMkF5WnVYc2hyYTF5?=
	=?utf-8?B?MmxGV1Q4MElMMGJJazl4ZjBLa0Y2VXdjOHl2MUM0NmdzQTYvWjJiVHBxcGZz?=
	=?utf-8?B?MHhTQ2xCNVY1aVhEb0QxUWNxay9zTHVheVA3TS9kbEdmZkp2eFFpMEE1a1V0?=
	=?utf-8?B?dWpTTEdPL0N6M0JvOTRxeGpRTCtETzVBbXBscmtGYUlYMXRlL2xkTVcwSG1i?=
	=?utf-8?B?WG9iZUtjMUFQbHpjRjUyUllvWUMyZTBPSkh5VmJWZngrVjgwT1FZYmloN3hv?=
	=?utf-8?B?ZVgreUpiM3M0WnZpNWZta0p4Y3lvV1VyMlBjNlZGN2tGN0EwY2tWVkkzaHpL?=
	=?utf-8?B?d0JhNHpLVDNuUGhVblI1cWJabDM0c0pLWnlicEl1VnVNbk9GaGVkdWttNlpM?=
	=?utf-8?B?NjdpK3BIS3VwZWMydVFoZWJWOWR3ZXQ3T0UvdXdzLzdRRnJSZjlhbWZWZWpI?=
	=?utf-8?B?MDBsa0hPZDd0aktGcnpSdld1WlJHd3drbDFPQ2xOUXRvYWZXYlZtLzJVVjFI?=
	=?utf-8?B?Tm15L21PZUdRSHVVVEJBMDc5eCtITjYzMFhaVEEySk9EZmpKMlJDUEtCMWdT?=
	=?utf-8?B?YitIQ054bjE2QUlTUzh4VXV0d0VhK0R1cE5ZYXBCOG5QMzhDRC9Yb2pDcW5h?=
	=?utf-8?B?SlVMSHpndG5aSnR4Q3BuMGtBY1o1T2xzdGkzb3ZzTk1SNWYvT1JQc051SVFR?=
	=?utf-8?B?NEFkcWtRNTBrNmxxWm1rR0w3Tk1DMVVrSjNobVl2bWUvQ2VLYkdoaEhZdHUy?=
	=?utf-8?B?SFFHWUUvWUltUWlZTXJhRHFoa09KMEQrYW1qeGMwdDRkNW83dXQ2RkVNQ2FB?=
	=?utf-8?B?Qkk5a0VYTnBWb05VY2c0RnZib0FBMW1sN05za0ppQklndkpCMkdsbDZKZGJI?=
	=?utf-8?B?YUEwTndIUUFlc1dGdXdsM0V1bFdLcVVab1A0QkF0UXNzUEIrZVNHVWQ1TDI3?=
	=?utf-8?B?elJLV3pkeTFRaFhDNmRiZTVyVXJBdDBKTXBmV3NnTktOTVVpRVhRMExRPT0=?=
X-Microsoft-Exchange-Diagnostics: 1; SN1NAM02HT184;
	6:h+dItfC6uPYVCyXtegJuBoKifw51NE0fye0h1Z9XW+0Kbid5KLxfB5KDHhFZDJ4aEKBjFxadHBD+CBoAWHRVPZ8FQsWKvDszTL90hixHEI7h87yLAlTgAw1S79jICTlY6KTNHayYJ/mp35oobjEOeXh/0kRR6gZLJciXmJzpuF4PK8O0dj00FjDprzy5GpjWI7f0zp/bEGJDzra33FOXGcZdXCMsdHhTVBm95e5uIm4TnjoD9XiwcRaW+MwEPw2JUjjU8DhEFwF/VxXXKnwIBJxJbl5HNUTtNrMtvkHzaX6ZK/8iIjtPLzgvdufNS8FiOftQyc48GZLnoFatO0WsAQ==;
	5:jfOsr8APFb9KIoWm9t0t8dpY/6k9+xe9pvR08LrdDlzGeOR0tC+Cw5nTNST1wez38Sqo/38odJXRIF20dUfBOfOhjW1YcjkGfKVb+KA8xVfDVOxZIfB00r4fybg5Uhvn1OM049xaq+X8tWDu/2IRUg==;
	24:VDlWBX5hyPWsxDDMgzmP+FDVBqeVhR/fDLimYE3MyHzGIThzt+ZC5WpEp2Gb7E4mObfGYRIks6VT6NXWYkNoMtuyLLYnY+ssgaQy0tX5Lcg=;
	7:4mKzVbgs/sbY0NK4SNuSq/MoARbLeWkY/L7UQx1Kuu6Wpo+QrFaKc4VULkHgl8dxwH5Yb2soRp7WoHqjBcqLessy8PtmFw8c45/9OkRlTO8d1+NU1qRHdxl2eV22yn2LaMoZ0UEy2ZQtB8bPeTU1XhI1AiEDhFVPSbYmfTKqZImOIPhreRLeEeEa/p8GauqihJy+sYCWBhxxkMDuBny+zPn/EUSqjNOtSHxIZOJ3RYaq1THwymEls+9Vr6utXU9W
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2016 00:21:50.9269 (UTC)
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;
	Ip=[149.199.60.83]; Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1NAM02HT184
Subject: Yocto Extensible SDK question
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
X-List-Received-Date: Wed, 17 Aug 2016 00:21:56 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

Is there a way to disable recipes to be excluded in eSDK?

I am facing issues while extracting an SDK, which complains about kernel 
fragments are left over in setscene

Thanks
Manju

