Return-Path: <sai.pavan.boddu@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1637E00CFC; Wed, 20 Jul 2016 13:31:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.49 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 4603 seconds by postgrey-1.32 at yocto-www;
	Wed, 20 Jul 2016 13:31:25 PDT
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0049.outbound.protection.outlook.com [104.47.36.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40197E00C15
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 13:31:25 -0700 (PDT)
Received: from SN1NAM02FT026.eop-nam02.prod.protection.outlook.com
	(10.152.72.52) by SN1NAM02HT116.eop-nam02.prod.protection.outlook.com
	(10.152.73.60) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.539.16;
	Wed, 20 Jul 2016 18:59:22 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
	smtp.mailfrom=xilinx.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
	149.199.60.83 as permitted sender) receiver=protection.outlook.com;
	client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
	SN1NAM02FT026.mail.protection.outlook.com (10.152.72.97) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.1.539.16
	via Frontend Transport; Wed, 20 Jul 2016 18:59:21 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
	by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
	(envelope-from <sai.pavan.boddu@xilinx.com>) id 1bPwiC-0000qX-JJ
	for yocto@yoctoproject.org; Wed, 20 Jul 2016 11:59:16 -0700
Received: from [127.0.0.1] (helo=xsj-smtp-dlp2.xlnx.xilinx.com)
	by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <sai.pavan.boddu@xilinx.com>) id 1bPwiG-00037l-Se
	for yocto@yoctoproject.org; Wed, 20 Jul 2016 11:59:20 -0700
Received: from xsj-pvapsmtp01 (mailhost.xilinx.com [149.199.38.66])
	by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id
	u6KIxK6E003274
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 11:59:20 -0700
Received: from [172.22.159.25] (helo=XAP-PVEXCAS01.xlnx.xilinx.com)
	by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <saipava@xilinx.com>) id 1bPwiF-00037L-Tg
	for yocto@yoctoproject.org; Wed, 20 Jul 2016 11:59:20 -0700
Received: from XAP-PVEXMBX02.xlnx.xilinx.com ([fe80::6c95:7dae:8014:5ca1]) by
	XAP-PVEXCAS01.xlnx.xilinx.com ([::1]) with mapi id 14.03.0248.002;
	Thu, 21 Jul 2016 02:59:18 +0800
From: Sai Pavan Boddu <sai.pavan.boddu@xilinx.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: 'recipetool newappend' usage
Thread-Index: AdHiuNDGOYFZ9P5lTuqafNy/rVHpoQ==
Date: Wed, 20 Jul 2016 18:59:17 +0000
Message-ID: <xci3gs6qm1dvhia4lpbttw5i.1469041081036@email.android.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.0.0.1202-22462.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(2980300002)(438002)(199003)(189002)(356003)(2900100001)(586003)(102836003)(84326002)(92566002)(5250100002)(2501003)(63266004)(33646002)(19580405001)(19580395003)(11100500001)(450100001)(4546004)(5640700001)(81156014)(5890100001)(86362001)(2906002)(1730700003)(81166006)(8936002)(87936001)(229853001)(16236675004)(9686002)(512874002)(106466001)(2351001)(8676002)(95246002)(54356999)(50986999)(189998001)(63666004)(107886002)(110136002)(7846002)(51650200001)(107986001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:SN1NAM02HT116; H:xsj-pvapsmtpgw01;
	FPR:; SPF:Pass; PTR:unknown-60-83.xilinx.com; A:1; MX:1; LANG:en;
X-MS-Office365-Filtering-Correlation-Id: eb60f211-8d23-4e35-807b-08d3b0cff5f0
X-Microsoft-Exchange-Diagnostics: 1; SN1NAM02HT116;
	2:IK4mBYS75Y2tb9vGatc3zg99SnnIVafuq8vmshJ/lDOBJJBGmvqTrAhpDW99YUEyM6fN7AZbzvvBaRRrrDe6H3whMKbGWDJ3a3UMfeO9KVGxAmDV+4eeDxnDEgpghUQ5C+hgtN5seTGjb8bApoqaLk3QK8RwI9PgDBrMhwUICbLHmTHQjtw6UqCo9QPFto6q;
	3:1GhY3M7DB8gMBQurv53DzGULKz3c9ivKxNhsH5QDPqxirT5RhKSlZ0r1M/INRk0j9dh5vGRU20Hcc0hE0q0Q/G5O7udhYCFgB0/brb4WbMqbi2ad7G/Dziwb3WCokfj8VW9jfpS481bmWAe8I+PeGWIJyAzVZ2hc/Q0HXUPRYiI1OW9UyTrY/7ae1wsLG0B6dWucOmbB0JApxj/edyWc9TX2X6lDVkf5UU2QP/GEoXLgTAOzmEoXnUcWPmx1AUhdP/0jwh9jcXH4mn5AGNqQEg==
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0; RULEID:(8251501002);
	SRVR:SN1NAM02HT116; 
X-Microsoft-Exchange-Diagnostics: 1; SN1NAM02HT116;
	25:azFftcUU1zS+MU390AilJZZ1GyMZ1dzORRUmfKyNXJfVwoYkrzNAZqoba4J2PVBS7pU8z+M2Tf/Lp6GcEUmgDUWxrKM7lUeDdmfQxbbDUkwPAwJ1W8xlVvqgrQff3qk2wGlHarLsd7W27O+Lf69T1vexXwu+Fb972BjZpSVkFPnRkihXAWd5mx1MQrxqJUgo/N/DgtJKJUayGfbIpIXT3tZqfQLqsxKGivmFT+35pyo1wwR3FLSvFY/MwqFr7WDtIvOKUn1pvs2UcKRdQtBk6h4VMMEn2PQ206NEUAWuxof1ZPCTnvHu5/dPEzfV5ZLgCrv87uTpPplLEbBtwGtFpce+jveoRw5JWB8SSZ3LsYerLcQBq2xckWhe60k9vlVvkXIcomaKChOV+niDHA/utSrlKRuWcJstGnHG4YdgnvYouTaBA/FywgYilTSnOPwBSJitzwRpHB3xV2MtKS98PO/FXSA2GOLFNJPWGRqUsk4nurAFCpzKkwPpcQSzT6+PpPDm31S/Dm87Ye+G7FnoSMxFcTyj0JKrQluUyBnrKctYczzLI2GrX8Eixzyo5eu5xdl2VX92hKLxq0DfdjKtF84JDRGbLwXVxZcye1l+hlQfa0SBf5hop6+AO+3MGBhPFb6kT2Zu7yTrxZg8goRgfRZv2i73BPgMnILB6/AvrSFOo4Q+9b0JGSJXvx5RqdrU8bKr4K2uoLejmEVieVytH9qaHAYQD3Z5sOkZcnN4LkQ4Q3l+FbQwSoTD1cQHImDko5Bbau8syk+iDblqoSWMbWrDKNoTUV00ocMqZamcD6Z4iV0/D31crctYlbvO+baSxdSOIUjFjGGTQcQcHcLds/bzTD806BNN5X98va0KtgV7cufw3BUlO4UyeKtTzsflSS05RUPIw642jqub7mpaVQ+qqF3XOB+zec26iQQwp18=
X-Microsoft-Exchange-Diagnostics: 1; SN1NAM02HT116;
	31:n65zEziHMsh3thtQSNUt8N1nHg/5ZsBu7FR7yjzVDO0TtZtHONaZpheHEq5X5rUNk5AX4+TtreBLAnoHL81ozgcprXZ39mfc/DtV5hGuRj76jrpK/2Tq12oCC3cpJO6qZfUS5I6qzLm13oenStKkw2K9EJ1A/67hej9GRSkwfONkpoNZkiQihUAW2IH/Rh50p1uyxw1AFh/DLG53R52O8w==;
	20:0gn6PhHvPkxnJ5Fk8TqTvbOIaD6CVGQfRg7jSndz6q8Dxq/jn2zd6BDt6BTWwI6NaWBxDfNh53RB3U01lA14XmwZNmrn1EPHIK/85bKqKl5F8mTGZC9np8LocmifQc2azD74z8vEC+5xPSGZu9TAehw+m/qjGGG87qYyXAjQp60AOjhcn3Iq0mqmUKnH3+KoFCvFJup6AdzvSfj5FmNiqH5slHkkKs8jTpX0kFKl2PuC3kQyr3h1XT0gFDFy45zrSiL81zefy7vU/PwO2qvHC1WStCzzop+maUFgwYbe0cu0cuwF27jWkWAwUjMpp7C7zVklXd89+EpiN7ZnB+80G/WH4slE1sa11nwqCXQV6kFw9O1HOEwCNSVAWqOzeTgOsgH3z9c/IoWR+Qwti5r3QHkqpsDaKudOtNPOkZHdTd9mvn+IqtQP0h/a/fL7ALbiXp8Uoab/7EJv4HzTc+H3xrbpp6E3YB6sSSUwVjUGed2c/WA78DZ3H3kNi9R3RVpx
X-Microsoft-Antispam-PRVS: <958a7a16e86344638262e03d490ee7d2@SN1NAM02HT116.eop-nam02.prod.protection.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(192813158149592);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(13015025)(13017025)(13018025)(13024025)(13023025)(3002001)(10201501046)(6055026);
	SRVR:SN1NAM02HT116; BCL:0; PCL:0; RULEID:; SRVR:SN1NAM02HT116; 
X-Microsoft-Exchange-Diagnostics: 1; SN1NAM02HT116;
	4:YiZLLo4XtJBl3+4FVHzAfQbfCFJQ9/9sDUH4SjAKRkQ5mt5dPPHsEZEiX2nYDqSOJJHS1kJRC598jrhe8CNcZxuEKkDyO6dXyZDqPbeNpngHezIVHpDkxqi6+6YdjgkCNGoQhPze9GG9IAkupLLvDv+YqPrqdAL4sr61Dm68BSXIF8Xixl/k9TpL0Q/PnJdQSE/xkPQoy1parsxgIHkzdi4f55IPCS7JTU+jsY8HfL2Et9j673zqctiB10ztysyhH2UP8LnAdvAwEpvqxz3tj82IjeHnWwmnQbghZMZCWpfDdIiQjXOBapc8DvusnuedV7a9nTU6/N7X38JpuXPg/W3pPElr4OKlw0hjQ7AxO3mLw9nNf8pz1pmxGTwWoIFAbD4Pf1jFHDQWI/FqEBDZm+pP22LYr/ZU0n1h589dzC5Z2StmeCCtNL29aGXUDElKl+Xe8OQplPuBzd0eyhHm0Mrq+E3FoO9pn4WnaDmKlqZ1UeAGoQdZ7E3Bb3mQ5ZeCA+KHCvCr8kqGQfBAYP1Gsg==
X-Forefront-PRVS: 000947967F
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; SN1NAM02HT116;
	23:o2AkorSS2NhhNxGPPmRORXwOI230C5i0tZLqtbILa?=
	=?us-ascii?Q?pguo5j+pYmxstOP6INJL+UZhyIWIQIBqVqlwlBLmkgiOf2mitbWwCK/GK1gZ?=
	=?us-ascii?Q?YLHhOrpeohveLkhccvZy4tFZ3XF0ZeT5bkSmCQInitPmEv1RjlvpwzZbZjQY?=
	=?us-ascii?Q?9HFc1/8sMvYEqXztUBDHAAdisw/X1kcIqXxk3CwYHhZeRELcbcnkSWnKF0sv?=
	=?us-ascii?Q?o+F7f1FKqzO6AqrBk0+5wRtRKEIpORQrcg/sxwf+pwCtWucDL3sBH4+TVHQB?=
	=?us-ascii?Q?2iOKh7M0gt6Ab+Ofx0w/PiM4iSSBbC7UUhbEhTRmA3/AY4o0dnVCoLVFa8l5?=
	=?us-ascii?Q?YQF7PPrZkSWB5Fq0YdjFxKEGGvdjw/2AN31RgCPDnq2fUlD0808XZaGIb2eX?=
	=?us-ascii?Q?S6dSaMMOR3hn1wB5ZqkDVXG0Ui23JLLVaOgv8EhkljcGKe8dYqj4p19w9wtm?=
	=?us-ascii?Q?WRaTGOJiv0nRWe3clNQA8hHuueO837LifRbGQbP2nc6xyxaZeOWWBF+jqxV7?=
	=?us-ascii?Q?kdzN221Sgqn/8ZaEHyBGXN4z+Lbeon8ffKp+CqWlKWQgM+cAHmCNxT4TIM+s?=
	=?us-ascii?Q?yHcSzMS70c7SU8oLCWNd7Ztro/Z0X7C4AR3WZ6csgtz+WtMDgttKjRtkaaeL?=
	=?us-ascii?Q?6Xf8M3KY5eh8DKkv0fpANtoBCwEXnrP/ppHf0E6BdCBvkCPDhtHO+Wn/aXZ8?=
	=?us-ascii?Q?lodJk0UPvHcrfZkVKV9ltF58gIoWoPxPhaynFo9fB8FuSw3zA2ByTxFjoenA?=
	=?us-ascii?Q?V9ArkFV+PUxl3/RyNGdiwgXBoAIoz0PdATZ8pZZR20Isn6CXygPDgG3iTkdV?=
	=?us-ascii?Q?NRdCxByyQa79pv0TD/05+sWvakYQURNjoD408XtvjT1IuDuG1/WEHQr3orXB?=
	=?us-ascii?Q?s0yzDWQf5kKPfVrO+a3q9YM12ckGO5DJY/uSm2HGDPFvoc8QEWzzwftun3DN?=
	=?us-ascii?Q?TeY7DNVx/5foFP2K2RmXzA7sWtPOw+jD5os1vf3YxBMPLlt8FNzqtpZFPg48?=
	=?us-ascii?Q?rh5foF7+FWlvWM4h+Tack5C1xrxClVscpJBc309TOsWXraY/BuwNkYgHcX7L?=
	=?us-ascii?Q?hPJqZrmYGeoRRfcwpiQAZzCrIYorKbG9N4t9eG1fcTENuJ3zc5jhtToXHhzw?=
	=?us-ascii?Q?iXGLsYc/SIwJGWrwB5D5loQRNp6KHqnpxfn205v9RxI2fU2CUqpagKUaqV1z?=
	=?us-ascii?Q?iA+PEBB3yaTci0=3D?=
X-Microsoft-Exchange-Diagnostics: 1; SN1NAM02HT116;
	6:bFvC+3KB5wHF9K3qwwI5x84uNkOEJ2VZqBlG9OWjbmfdhJOQ752a6Yhf80OdYMGgjYvZZB84Fex3xJsV66cXN0EqtzhbuUeXUnac7+HlVe8lbRBpMQa5OYtX9cKQM2Yy/QXbdhQl/xrGgYlnrDmPUgVuo+xe4GRuVhNi0fi5/caH1LlgTP++KUgsEFQ68P5y/9xHwGN/r97N9DQAet/z0aSQwETSlBnXI5r7EEGyJtjZGChshbONC3AXhnEDN+dxu7NNFdvof8JN4WFnlWZyIFTQ43W7iBHkEZk3iVzf7PiVJcAFli3d4dARt8GZktxHkvovgrgMIFxJb0oHN3Gq2w==;
	5:ygGtMpp3u+rgqdJLye7550nSLK4Z1Qieb0jFMkFFQ/dFKfT/l58EDBQWuYCxXKCJl+/NQ16O7i2P6hc+QE1trtbQhADJpvKGcfohhf8+2HKM4IqcLzHaSakJpzt4yTENZIpE8U0pMFHLs0h6NNhyeg==;
	24:nBXWK/O0WJu1lzk+uyBbqV70FjDGTNkicp3eCfbnZ/TvH7FSZ0LW9BSp7lERQXr2GB28nTs6IT3ZVIGDxa4R1EzEnEw6PV8KIgamcWf3QM4=;
	7:tBfgBETyWam6Y4tfiUHtJGYQjq9fLM6ijzlHHR7wC1QbiR/rZIPOMMbYK6/6g/xWVXqWV/vzvvq2vO+Rjlgo4NQKH+E+i+zJ7Iyjec1cvVZqb1otCx42Njuuyqdl9q7zsAaTCWgxWOYlJwV8BmmBaMHUjzwgp2BA8AazOldyESqxTH2UUtfwStAQecvqPhHjoGXCBBQg+7/DjKiraeakDCNwBSRnChgvqOZvzulCB56fSTj99PG8fvH13+18mCOv
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jul 2016 18:59:21.7145 (UTC)
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;
	Ip=[149.199.60.83]; Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1NAM02HT116
X-Mailman-Approved-At: Thu, 21 Jul 2016 07:15:19 -0700
Subject: 'recipetool newappend' usage
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
X-List-Received-Date: Wed, 20 Jul 2016 20:31:28 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_xci3gs6qm1dvhia4lpbttw5i1469041081036emailandroidcom_"

--_000_xci3gs6qm1dvhia4lpbttw5i1469041081036emailandroidcom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgdGhlcmUsDQoNCkkgYW0gdXNpbmcgcmVjaXBldG9vbCBmb3IgY3JlYXRpbmcgYmJhcHBlbmQg
ZmlsZXMgZm9yIGZldyBleGlzdGluZyByZWNpcGVzLiBJIGFtIG5vdCBmaW5kaW5nIGEgZ29vZCB3
YXkgZ2V0IHRoZSBiYmFwcGVuZCBmaWxlIHBhdGggZnJvbSBhIGxheWVyLg0KDQpCdXQgSSBvYnNl
cnZlciB0aGF0LCB3aGVuIEkgdXNlICJyZWNpcGV0b29sIG5ld2FwcGVuZCIgc3BlY2lmeWluZyBy
ZWNpcGVzIHdoaWNoIGFyZSBhbHJlYWR5IGhhcyBiYmFwcGVuZHMgaW4gYSBsYXllciwgSSdtIG5v
dCB3YXJuZWQgb3Igc2hvd24gYW4gZXJyb3IuIEluc3RlYWQgaXQgYWx3YXlzIHJldHVybnMgdGhl
IGZ1bGwgYmJhcHBlbmQgcGF0aC4NCg0KRXg6DQoNClJ1biB0aGUgYmVsb3cgY29tbWFuZCB0d2lj
ZSwgZXZlbiB0aG91Z2ggZmlsZSBleGlzdHMgYWxyZWFkeSBhZnRlciB0cmlhbDEsIGl0IGRvZXNu
J3QgZXJyb3Igb3V0LCBBbmQgZXZlbiBkb2Vzbid0IG92ZXJ3cml0ZQ0KDQpyZWNpcGV0b29sIG5l
d2FwcGVuZCBtZXRhLXNvbWV0aGluZyBsaW51eC14bG54DQoNClNvIHNoYWxsIEkgdGFrZSB0aGlz
IGFzIGEgZmVhdHVyZSwgdG8gZmluZC1vdXQgdGhlIGJiYXBwZW5kIHBhdGhzIGluIHRoZSBsYXll
ciA/IG9yIGl0cyB0aGVyZSBhbnkgZ29vZCB3YXkgPw0KDQpSZWdhcmRzLA0KDQpCLiBTYWkgcGF2
YW4NCg0KDQpUaGlzIGVtYWlsIGFuZCBhbnkgYXR0YWNobWVudHMgYXJlIGludGVuZGVkIGZvciB0
aGUgc29sZSB1c2Ugb2YgdGhlIG5hbWVkIHJlY2lwaWVudChzKSBhbmQgY29udGFpbihzKSBjb25m
aWRlbnRpYWwgaW5mb3JtYXRpb24gdGhhdCBtYXkgYmUgcHJvcHJpZXRhcnksIHByaXZpbGVnZWQg
b3IgY29weXJpZ2h0ZWQgdW5kZXIgYXBwbGljYWJsZSBsYXcuIElmIHlvdSBhcmUgbm90IHRoZSBp
bnRlbmRlZCByZWNpcGllbnQsIGRvIG5vdCByZWFkLCBjb3B5LCBvciBmb3J3YXJkIHRoaXMgZW1h
aWwgbWVzc2FnZSBvciBhbnkgYXR0YWNobWVudHMuIERlbGV0ZSB0aGlzIGVtYWlsIG1lc3NhZ2Ug
YW5kIGFueSBhdHRhY2htZW50cyBpbW1lZGlhdGVseS4NCg0K

--_000_xci3gs6qm1dvhia4lpbttw5i1469041081036emailandroidcom_
Content-Type: text/html; charset="utf-8"
Content-ID: <80E41198A9F4C14486069AE9016A8FB1@exchange.xilinx.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5Pg0KPHAgZGlyPSJsdHIi
PkhpIHRoZXJlLDwvcD4NCjxwIGRpcj0ibHRyIj5JIGFtIHVzaW5nIHJlY2lwZXRvb2wgZm9yIGNy
ZWF0aW5nIGJiYXBwZW5kIGZpbGVzIGZvciBmZXcgZXhpc3RpbmcgcmVjaXBlcy4gSSBhbSBub3Qg
ZmluZGluZyBhIGdvb2Qgd2F5IGdldCB0aGUgYmJhcHBlbmQgZmlsZSBwYXRoIGZyb20gYSBsYXll
ci48L3A+DQo8cCBkaXI9Imx0ciI+QnV0IEkgb2JzZXJ2ZXIgdGhhdCwgd2hlbiBJIHVzZSAmcXVv
dDtyZWNpcGV0b29sIG5ld2FwcGVuZCZxdW90OyBzcGVjaWZ5aW5nIHJlY2lwZXMgd2hpY2ggYXJl
IGFscmVhZHkgaGFzIGJiYXBwZW5kcyBpbiBhIGxheWVyLCBJJ20gbm90IHdhcm5lZCBvciBzaG93
biBhbiBlcnJvci4gSW5zdGVhZCBpdCBhbHdheXMgcmV0dXJucyB0aGUgZnVsbCBiYmFwcGVuZCBw
YXRoLjwvcD4NCjxwIGRpcj0ibHRyIj5FeDo8L3A+DQo8cCBkaXI9Imx0ciI+UnVuIHRoZSBiZWxv
dyBjb21tYW5kIHR3aWNlLCBldmVuIHRob3VnaCBmaWxlIGV4aXN0cyBhbHJlYWR5IGFmdGVyIHRy
aWFsMSwgaXQgZG9lc24ndCBlcnJvciBvdXQsIEFuZCBldmVuIGRvZXNuJ3Qgb3ZlcndyaXRlPC9w
Pg0KPHAgZGlyPSJsdHIiPnJlY2lwZXRvb2wgbmV3YXBwZW5kIG1ldGEtc29tZXRoaW5nIGxpbnV4
LXhsbng8L3A+DQo8cCBkaXI9Imx0ciI+U28gc2hhbGwgSSB0YWtlIHRoaXMgYXMgYSBmZWF0dXJl
LCB0byBmaW5kLW91dCB0aGUgYmJhcHBlbmQgcGF0aHMgaW4gdGhlIGxheWVyID8gb3IgaXRzIHRo
ZXJlIGFueSBnb29kIHdheSA/PC9wPg0KPHAgZGlyPSJsdHIiPlJlZ2FyZHMsPC9wPg0KPHAgZGly
PSJsdHIiPkIuIFNhaSBwYXZhbjwvcD4NCjxicj4NCjxicj4NClRoaXMgZW1haWwgYW5kIGFueSBh
dHRhY2htZW50cyBhcmUgaW50ZW5kZWQgZm9yIHRoZSBzb2xlIHVzZSBvZiB0aGUgbmFtZWQgcmVj
aXBpZW50KHMpIGFuZCBjb250YWluKHMpIGNvbmZpZGVudGlhbCBpbmZvcm1hdGlvbiB0aGF0IG1h
eSBiZSBwcm9wcmlldGFyeSwgcHJpdmlsZWdlZCBvciBjb3B5cmlnaHRlZCB1bmRlciBhcHBsaWNh
YmxlIGxhdy4gSWYgeW91IGFyZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVudCwgZG8gbm90IHJl
YWQsIGNvcHksDQogb3IgZm9yd2FyZCB0aGlzIGVtYWlsIG1lc3NhZ2Ugb3IgYW55IGF0dGFjaG1l
bnRzLiBEZWxldGUgdGhpcyBlbWFpbCBtZXNzYWdlIGFuZCBhbnkgYXR0YWNobWVudHMgaW1tZWRp
YXRlbHkuDQo8YnI+DQo8YnI+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_xci3gs6qm1dvhia4lpbttw5i1469041081036emailandroidcom_--
