Return-Path: <Thomas.Thorne@net2edge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D794E008FF; Wed, 12 Jul 2017 13:31:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [40.107.2.127 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 28666 seconds by postgrey-1.32 at yocto-www;
	Wed, 12 Jul 2017 13:30:54 PDT
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
	(mail-eopbgr20127.outbound.protection.outlook.com [40.107.2.127])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF9BEE0084A
	for <yocto@yoctoproject.org>; Wed, 12 Jul 2017 13:30:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=transitionnetworks.onmicrosoft.com; s=selector1-net2edge-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=ifuawsKfXzIgOAr0TRiMvg5mWWM9rxBvVBMyjy3xFLM=;
	b=rHH4aqs7fHBKwVpRwagCaaFS3JkCMVHgj5xN83++vKTHR0/AmYqhfS0YLPDch6vhI3CA0w5eSHDpOkPoHvrVz3LeL0LGmD/V97KuMFaBCfPYL3P3en1UdHxLEKa1zHWY7wc/bMaX21VWDlJ7VJYosVnW/YQjeclKyTIrQlXd0Nc=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=Net2Edge.com;
Received: from [172.16.20.67] (81.128.174.58) by
	AM5PR0701MB1875.eurprd07.prod.outlook.com (2603:10a6:203:1d::24) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1261.4;
	Wed, 12 Jul 2017 11:00:31 +0000
To: yocto@yoctoproject.org
From: "Thomas A. F. Thorne MEng AUS MIET" <Thomas.Thorne@Net2Edge.com>
Organization: Net2Edge Limited
Message-ID: <cfdc15ad-f56a-bbd3-80fb-266413b00322@Net2Edge.com>
Date: Wed, 12 Jul 2017 12:00:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
X-Originating-IP: [81.128.174.58]
X-ClientProxiedBy: DB6PR0902CA0003.eurprd09.prod.outlook.com
	(2603:10a6:6:2::16) To AM5PR0701MB1875.eurprd07.prod.outlook.com
	(2603:10a6:203:1d::24)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cbd70f7b-6508-40aa-7cab-08d4c91536dd
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(300000503095)(300135400095)(201703131423075)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:AM5PR0701MB1875; 
X-Microsoft-Exchange-Diagnostics: 1; AM5PR0701MB1875;
	3:LeudZeTc/JI9IvkuCpVfzi29vEAsY9TtYsYyt2VSdpeHUUM7vBvn6eQrMCcos9FfctNSJeec7HOy2DCQ/a2ccvf0qOap7jZIZ6qN1GsZyNn2R3UBPsldVQvXjapeSHGoUp/F46ZMvn83cWzCCpZQSCu1yJlFnUFYkLlQgGJelrzuBqaYRaYoMpuP3/47tdNsUKxdEZp2oW0O2M8XsERiQM0UjCTHFrKlJB0OYeRm6kJUtlf91Y6HQCv9NdBZAhnVMtPstnwpcCJqsvjPmqQbrYUPXOPdC/Q9zEMintXmvr8hSplwmw1WU/mWgo/X8E5pTn+IF/3QeCeXzYJ+zQaubrGpC3FSJZk1eWXK29FkgsltEOUNlM6vgbAL6d7jn1geLdm91jDmLflrESJZecWgMokG/osxQ9l6sP7k0LYkhuF/TrhO9MFjpNZ8iEWw7bmXtQa9cCP5FWjy6SEpluQZT0TPNUb+nZQowBriKcJsfSzPSqDtvviCTvoZd6z0HDOcWnI8lpjnpWhCMSnM49GseC/yUx0qxkxIXGw31G0a8nYeklJg/SkWjXsaYP7uD1ts+6t0ZMk8TBqUA6shccxGUIHDKoRxxyfMyEErgG6n5d32TfNYUZshBiRaHf+ebEz6635xzISvLBsREojcAlKKWPTvoTD0mz6NHDTG51LjaDOif3Oe0868XTrBJz3JsrifwpCyXfBlEPsrNNGWkGcAVQ==
X-MS-TrafficTypeDiagnostic: AM5PR0701MB1875:
X-Microsoft-Exchange-Diagnostics: 1; AM5PR0701MB1875;
	25:FRdX6s3UItlPITMGuQeWgdnM11QFw4x8O4ywlSX3yEl8sjswZ3okrVJDcvmElTc0iNf/XyRunSHZ1HU7hYy2FJ+VI4AWwFxpXJLYbMlR3W2wnAUJ0vcyJyGmIDTcWb7HBEqrCt3mrIn2q+MQwg5xoc7tiY9QZILLJbt3W+OJ7Upx4yIJxClmyBwufXi1xhKUKjhRkIpn2/UXrTk662hjj+Yx/vr47Q3SmMFBBRUQH+8Q4qqOX+7dzuIgrFSGd8w9L2bSkIVHLIj49fP4Y2iTRDvd1oVdknIgW1+TXTH5n4x0yRg9KhCgGJoBOrWE7w9CkQyFWM575fGr2o7ok+VJwCO0bVJYIzZ5tMarAiSrTClQn7UbfZR5Fitbyjw9oJXqdproqaDW8baQ1dK9ERKrd9wBUayZVtELWFLC5gSvDx9p+3HZW0kyQVZhjMAdOFFet277wOUW+qAdc2r5f2OW07IdKOhh0tEQAEYa6GB6/9o8LYier4w9WnKYKP5YUm7hL+duQ+b/DaNFQJPpIS3sAOtxWkpyRLJdH4wpK07Dfess2YaaltnI+AJ+E3Yu7z8bAjTXIk6Mq66oQ4TVAM7fFiA/m15JaXmGMnlAfqgia+lb2Q0ymv9XSmGaopg8dcYs1cFDG/6TYA/KnmcOP0NSw+V2OrGObRwRanAzFM6mF2qQL0o21tQs3r3TymxTPQXrTaDTwp4g4wg3uvyTuKstzef3+ujbEFrHRL4kacffoOzgqv6rMyhxqN7hB91bufv6jlYBXytCIN2OkDqYIv0dMDs0bGhSCJIvWS42FYkiPkJY7LkhKK8l0MB+QHsDKjjuzhP2bBQuiB/4pUhhycadL2ipnUwDw1klDBH9qT9OZa7Q2k0Xr6jUinqT2byed+CfN1VfM7ycehJ7oDW8FKE/IiI19aYYH0PaoLUfownDZIA=
X-Microsoft-Exchange-Diagnostics: 1; AM5PR0701MB1875;
	31:bZNQ99vNelGWDSTe/+MuqBYugEvUCYlIofdN7vcpm09S1YqSKGkvruWO/mP945pTzNgDz3G96Eoz5+0X5xmwtRU+jpvn5LnebVKLLbw6Q2Y/GWJm63M5PHswtNdcx8vgX/jell1WoYhbZ6tDPhC2g/gLQfmiUhqv7/sRxEO25SC2i3Z68i1v5ItIqNoFMCuLMVP1pDFmAICVOQFPIfoq124o52Fq4sD1nQGamVrjzc3NPv7oOxhocmCQBbRGdam5R2SSzWL4CjgBm1HXU2Alo8dhJVs1VnAGG3kgJJi+F+lNcaUgQ5tqogBv+Z67dWZeLCqScKpzIz3q3llMeY63RmmMS5U55FMcb9TOPO5r2i+epacWB7o1XbmKkqoNuu0ZHgydV8kTJJeSm+2fOi6xj/d/MYcr10rhXk5B0bagIq92HOWzdPPTNd0M6x63+QeFDBGJJP0f6r7S/05ydm0v4j1XtQWpzyglZc7syCyXpwsB3kWDkvG91dSUBY4OKt9un2YCpYJxHGPkhbQf96b5YFs95h/BIpN/KV5gQsqAsENSJlodWvteiADKOkkkiY0l3elNGCIAQdOpFrq2iuhxi/rKAacXXRkrsDjoNMQsTtVPleCLf9hxza1HGJIB0a7ul7wtv67i0kBsOMnlww4SjTRBuuv0NcQFTGVhFBtXi3A0WVgCAKC5P7sYWxzgp/gNkUtxr/3c2qX1KbP+4nhbBkFlfn/DCKly0HeuWwCyWak=;
	20:IHs/p2UK6djVxeoGwL/YskHo7Isa8HAZPbEOek58D3gIaT2wP1CzPvucH2TIFqW9NZXYCKKfLncQzhwGheHseg8LyhAK1gKDECdMjheW8R3PpiLG8orZ8WKHhQpcxM95HvgKmOcXoSavPm6D+DJXLUV0913DnSZSkz6hD7qHoJo=
X-Exchange-Antispam-Report-Test: UriScan:(158342451672863)(133145235818549)(236129657087228)(90097320859284)(48057245064654)(247924648384137);
X-Microsoft-Antispam-PRVS: <AM5PR0701MB18759DB39496A6518FA5241BD3AF0@AM5PR0701MB1875.eurprd07.prod.outlook.com>
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(2017060910075)(5005006)(8121501046)(10201501046)(3002001)(93006095)(93001095)(100000703101)(100105400095)(6041248)(20161123560025)(20161123558100)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123562025)(20161123555025)(20161123564025)(2016111802025)(6043046)(6072148)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:AM5PR0701MB1875; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:AM5PR0701MB1875; 
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; AM5PR0701MB1875;
	4:gEA+wLyhzzWcFcaXYyrCpCXZ4p5RGzD1RGB5IRu6?=
	=?us-ascii?Q?X+uGzSIUuia1y5pwoknxG6n1K89B7YJTu+LxdHWs1YxoI15hNIUPcL4riVpA?=
	=?us-ascii?Q?L2ahtEDXiKYWefVOygdDBvg3vO85wdRUe81qx8Fjea79G/NgT0yzMXzwL0N5?=
	=?us-ascii?Q?VRuazGcMXhFP7gX5JpVs/JbEFgWJNWzgzw+dr1IRrR71K7vsPgOkhckm3UnX?=
	=?us-ascii?Q?8ptw0iErtvNyNFU/iBKLCR10hMHWycnut4bUd51CgwoaXlFuj2Dgh7Ksm70I?=
	=?us-ascii?Q?2QndJLkLLnvmuL/hLS8SgWefX3XExEoFqk9K2EEYTIXWO5ClshqmL0ODyC1m?=
	=?us-ascii?Q?x/U7Sw4KdbScn+eAxvhvTMkV9+InF/SB8PWsfS3HYkBHJ9MhRddfTnWk9fZt?=
	=?us-ascii?Q?0QeByLSkL5PNNkGXNvjKLt4pBtiz0z7D5DHbnH0LzzLIOKTN4NgvrvnH7iok?=
	=?us-ascii?Q?6tsTWSpNBC77dcD5rwB6jbzFFzfTOyX05DxqXA1IqdymOrncekD5NjkNUhX2?=
	=?us-ascii?Q?tauJRyDAS6PmuSZKqFbburY+G6zxm7hY0IJL9Fx0kNQidra29LqXak+hDZ9d?=
	=?us-ascii?Q?dYZ7aP40duiNMw+1FJDKnx7DBbGoBRGqn/Ek3g4mocihL+O5fkYYQqxuI9lp?=
	=?us-ascii?Q?ByFbOLeZ6xtjSH+ERup46Yr/tueQl8pvdwIv/U2HCq+UEAnDKEDQLTYXMeKh?=
	=?us-ascii?Q?qSAW/eRnVMz/m4zkT8XfOrcL0l6EyqOp4aK6/s6oED6I127N3JX5BkS2RcEL?=
	=?us-ascii?Q?6ANglFFN5qVszuKAetACJlC1zRy+8B8WJtw+7syqsdlNFN6/SB3yc1/kPP9U?=
	=?us-ascii?Q?VAxKkxch5j7L+o05ZD4jY40KQXxObI9IrgfNXM03gp3rLc6VUCw8zQfwycqD?=
	=?us-ascii?Q?HJRi6PQBakPKgr1p9Q6mPEw5zUMwmFb7lGKKVMeOBz2ZYrSnrDjDRW9jI/Av?=
	=?us-ascii?Q?i6KEoPu7ICYNO8RFS9Qq7OKXgVNHyQ4fUgAoTh3T/iXaRbv/0s6YcS4SCJOZ?=
	=?us-ascii?Q?DPk1gCF7/fhzohqzOZNQyeF04M0wn7nl760H2Xf+BgU3UoCmj2Z6m/5wOPzJ?=
	=?us-ascii?Q?8k8CdKFf4V5C7qCHG8Yj2cRLXlktVfuruf2Qd+0/ccHjzSw1VZO7Gru2RuPc?=
	=?us-ascii?Q?AQD3y+EF8qHTZ0YJ7wD9A/eotPle1ZyWgiI3SMm1XJy0Ue3O/bOqncF3wDzF?=
	=?us-ascii?Q?6u+rN0b6yfUYoYuRqNHwUjB4EgF4do87+qH14EiNiCqwepXIw/x6dai5zE3S?=
	=?us-ascii?Q?zHmLMSwx5fG5hrpwaypKbDhusR5bJ4hC59L4wV0xxKgkyd08n2uPFSjkI1Gi?=
	=?us-ascii?Q?7ggWnS1kXe06XhrdaXUFnFoRPYkoIdtUow2KWGfHr5Huz2PRHFIJnu7nmer3?=
	=?us-ascii?Q?POUS6jjVnitkJlKNOgt3TdDCmsK2+4y1IlIlPdcyK/FS2RXWM7dorb57SgMC?=
	=?us-ascii?Q?KrN3nrBIlNbDPAZM4YtELjB016PEUQc=3D?=
X-Forefront-PRVS: 036614DD9C
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(7370300001)(4630300001)(6049001)(39450400003)(39830400002)(39400400002)(39410400002)(252514010)(54896002)(6306002)(50986999)(5660300001)(64126003)(72206003)(478600001)(966005)(110136004)(38730400002)(53936002)(3450700001)(6666003)(33646002)(6916009)(65826007)(236005)(53386004)(4001350100001)(54356999)(2906002)(42186005)(189998001)(6486002)(77096006)(36756003)(43066003)(66066001)(2351001)(2361001)(5890100001)(65806001)(25786009)(65956001)(31696002)(81166006)(568964002)(84326002)(83506001)(8676002)(6116002)(606006)(3846002)(21480400002)(86362001)(7350300001)(7736002)(24704002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM5PR0701MB1875; H:[172.16.20.67];
	FPR:; SPF:None; MLV:sfv; LANG:en; 
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; AM5PR0701MB1875;
	23:Kb3Ez9qiUf0kU1pBKyOkaqHRKFm9qWJTmlg+mBl?=
	=?us-ascii?Q?GfE4hcTXGaS1mzv9u2Cf2AvLX6jrCniXq3odlZg+1gU1Cp4KD090kWNz+2VG?=
	=?us-ascii?Q?XJwbvs0K74aXp7QTsaSaP5r30VVZfH0wTL5UEvVvEGiI7Gy3T6icQmf9Y/SK?=
	=?us-ascii?Q?/XmHcNBWTTaFbkLkS9z/U6V3o327oO5d8ZVAaMfurRSatvZhFV/b83gW+c3J?=
	=?us-ascii?Q?WK2jtfTjqNjy+9B04jmWUAC8g/o1Bo9eym6FvWYUH6nWKcjfcdNRSo4ryVDZ?=
	=?us-ascii?Q?zd1+vUZp6VvbOrclku+3FACQP6CyfT35vYxHcoLfI3GQfU9SErXR3fquqrA+?=
	=?us-ascii?Q?j6EQfF/dSxEe4AdzGgoOS2G0BnlHKJ0yAvS4/lpfI/m8B+1CzUZwJEzU5BFH?=
	=?us-ascii?Q?UxzWvGFF/YGNr3NfOA0S4QryDOEAhbmADpEQxDe9Xh/n0xQM+taScXxRTBwM?=
	=?us-ascii?Q?qqscVL3gkzjlOGXsMNbwBxIALpEse8I9jds40J+ldf2ywTkoObOjxa3GZIJh?=
	=?us-ascii?Q?O21A8qm0PnVvTx3qIEhp7RDkVtcKBHCBAtCSqGIRQKAjmCeCg1/p//jxdZD1?=
	=?us-ascii?Q?b+1jixYmmIKNBfF9UMRruVJ1Rmj7t5PO7AKSsEU0YLfDWBf7KIAY/fRfJG2B?=
	=?us-ascii?Q?4zyatgRvNAIl86s6mBFSy5mvBVkpgZ+ia3nI7kDBbrMe8dAIdrWt9CZL3wUR?=
	=?us-ascii?Q?4Eall7v96x0yHNo2Fj6k0cxcKeftcmHw0zJAqG0Dxda6kb4ZSMkz6PmJAgeY?=
	=?us-ascii?Q?nANApZFv6IEx0rO3tFmroLXMQIMRt78oZnjd1bJmu7oUp6re5IQG8ChtckIJ?=
	=?us-ascii?Q?i6b8VF999x5+KZSqMVK28xjvN1UYttRmV5vDiSzqnioDGutuTET0Oj6RInbY?=
	=?us-ascii?Q?lqxhmi5JIYIsmtjvNNiVB5X920/bMcLsBWOIuyoTA3GQgKQnmYa4p4hitC3C?=
	=?us-ascii?Q?SjpWTH9afn7uxMzOXjdHKkhn2TgIKjDMYl07N/xrvvPxh7PumWmHXeFwIOqE?=
	=?us-ascii?Q?gWd4YrRVjhemQOKg/Q7VktFyRlYwmNDMpzLbb8f1zjAKA9VALLFdhOD/nbwr?=
	=?us-ascii?Q?+hS7Xs1cLs1laYc/QxSU6woXX/k1X1xMJj09ZNaBOBV7jnxvyPAMu4Kx1X1R?=
	=?us-ascii?Q?Vz7nSr+sd0rakEgBDytrmGv4PYL2d8emaPR45CGo2O/gCf+8HmjjhsUW3LIY?=
	=?us-ascii?Q?9F8nT15iJDH0rwB7kYC3HA+X6WbMbHDoGnQrls8FC7ylzuNMR3UMZY2uCSGU?=
	=?us-ascii?Q?IB3RigenUTRD2/ejxa2ufppDnHe9RBWtJBS8ptl677CyzD5dBkgf6ePX4F5l?=
	=?us-ascii?Q?K6pGdzx0MmKBRNjdQEEBGl5oK15s9UKU76BphlvGOpW6BS30RRvjZUTJ4kKf?=
	=?us-ascii?Q?KTJnOJalLHMsCnoRXu0DcuO6kiDs=3D?=
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; AM5PR0701MB1875;
	6:iHn2WLiFsxeSKRJvChMtakOl5Z9KaiolRvQJjP20?=
	=?us-ascii?Q?umqNSC5GIWGa6FAiMU42WgMvkNPf3on+n9OJndvxHtJKR88QBuwfra+Hpv3u?=
	=?us-ascii?Q?tjOt60F12Kw/WF0rK0B+5wsf2FkiavnSBxlGquj+wpchXJKogylRDoZBzmxA?=
	=?us-ascii?Q?au8IuwbEt/m9EzpIva5JGcxzmatAf7ZGddRpAKjm927pWIbJSMPVq+t/nVqA?=
	=?us-ascii?Q?asZ9waN6wDbpnqtczG0Vc+9soDerWokCxwLrb1nRmNVKrgpS3gh+HDh0w4EZ?=
	=?us-ascii?Q?uXSDddwmaVvnLxJjEJ3XhvBMjkZxNicBtvyFC34555ldrRs3x/wAmzvwYZfx?=
	=?us-ascii?Q?5xBKHoXrF6NqMp9/ZkTI+RZmVod8iqW+Jx4sR8DgsAON+1ERAptl+EB9YkTW?=
	=?us-ascii?Q?mTHHq1t/KO/0Jv4MhMkxNnmeHhB7E2PkvTUHA1Nxyysw01YYM48k7Q+ptXLj?=
	=?us-ascii?Q?PHxnHtfxtUGhS8mPZVHt0iLuheUFFpy4vjHodujBzveFyH2z2IqtNLAqTQZj?=
	=?us-ascii?Q?efNaRz8sCo8fc75kqATOvJl5IvwcewgXrmRnQU0zQJVIiDD1N0fQC3t/wcqy?=
	=?us-ascii?Q?oJH3LsiJ19hc+nZBdc4y0UyuHMwKV+PqZN2eZz2SQO0zOYZBIu3v0/PBxTMv?=
	=?us-ascii?Q?ZhFbc9iSNUk+4bOYznPHWRAgrO0rY6hKkH4Dzq9bulQBIqwZAcjgyzvPL7uQ?=
	=?us-ascii?Q?XQvE08bLiPNqzo1EMAlZ6CNPKzfn5uAv1nAHS7MEw/mtJcgYNZ5qJkSdvMpt?=
	=?us-ascii?Q?4qdovnyo1yByQ35ZOAFT6tuXR3CN3PVbLQeYF09K736aOR0pmkukcJRMz7Va?=
	=?us-ascii?Q?O+K4mkPD7mEgzngH86ycceRb3L6EV0nrAtrj31nHIEWKdEidu6zIXr54Zu+b?=
	=?us-ascii?Q?FzPuOA0wgrG4fuyqPXxdtfk/Jz56aEnS9eswIg684S9r+vXB6aLMY4bzFVDh?=
	=?us-ascii?Q?eI27t/xkEEKIIMm8jCAAxLjri8OAFodFn9JEpov8T+bZGuQpXL/q2q+kFfXa?=
	=?us-ascii?Q?bhY=3D?=
X-Microsoft-Exchange-Diagnostics: 1; AM5PR0701MB1875;
	5:UzZDm0+p6RsjsC1w2/MaVGp5QG++4m976I67l2ifW2j4O8cy0LuPTF6fX2fi1EqigBvLoGw6BEYUZR/aXM5e4rSKmntpZtGoUzwYe1gEBdfRQvpDFckIz2MXhl5aAARUqRvpywpm4dj42RUAtpVty/0VdA6DHu2Z7zxJDH2pxkSdv2rJ/opXFJWufSSxcbdTCsQ9XW8DEMPBiXyjO5IuiiB+75f2NMaNnOu/Gwr4quYf1rM9hUtqu90SkM5iVPCdr5bviabl7leIgFqfMVe5giz2TI7xM+bGb0zci+Q+ikKvWjdxFV8SKUGOJmghXCljT9gelyoVrUlGeIakFj6y6ps4V5B9Bok6QBHxzv9oAxoT6CjYFCOFLvel0L81IXrXF6b7CgupGI5Io8bWcqsNZa+D9LnrNsfXN8m0EuHA5X8s+nLW6wbZwpAuFbWxSjtZxZuh1dV12CUxZo6LCbovVUZTiNDMXbnswSE+A9vXy2XUNZb6YeXfjdzoB/DrXmJm;
	24:j6cplj0ObuGqL0nfVZwuzh7buZvX4ySQBcAFFNw9aMSoXQjFC3sLPApaS24onE22HmuYZXRj+Nmym3XdesTkKlYXdIbSrSfNXaVQ9XAX7Kk=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; AM5PR0701MB1875;
	7:/JImkvhNh5YWAQZ3yihIIuaEdwtt1BMZoD+aP364F8EUfr4og1XirIiBBFdxUvMxf/7vhPXpbx3ODVAqPIrDjglFt7+PRe7mUndCcbSto62NEB0mmeuu3jYOvxsLS+XrMupn5f0IDA/aeNETsm8LZCsDRdWXEAyqAGA4CzHyB2wGg3gOvhaXg76hDwIhi0dIDOuxcbv+9favmQP9H8vflqcnz/apWHoMxXgwYnNvNNMtY3PTaf1QqmMFuClFZXVe8nG+kDgm2Z56TfEWie25T7j3+eDx1vgfVmoojrnT5KtHnAZ5MIk97c257UVmRMPIzoUXsvxy7keyCgzHEPOzdYcKAd50T9XmwPwJ4Pk6bE3MY2f/QiOtmFDde1F/okdmLzJooDjM8c1vosBEm0LiuLsPOiWEqWrGaVJmheJiQuAFhfZ9FPRhRYA3v1+FxVL120ed6vk/I0QkV4RFG0Mnz+U5AiSFVmHFxtqVsZOvTGEBgpXi6XH0X/RIldtkcJRpMe4y+N+hw7eV2O1v1FrAXh/YFNIIJLr8ypj8weTOpcdnOGtFwsKM3K0FNhT+/xb4G20FgN0qMZfLtyb7U17XF+RPVeXNIYYdgusQEiboMISYJS8K3hYa7GJO1x9rwr4iB4PgHkKuKCr/h0hYXjm7Hg8jb0W1ZiMn3nKz7EsJeSDOfoR34HphKWajx0Xu84Tu0z9aQJPRIYfGIVJsVtlvtLvLC9HvLiLSESmoeWdEjZEZW3Dst5b1c7wA4qH+jUlgtS0/mhiHIT9qP/Glzlq+Zucyq8g2EAxDX+ZLkhRFayI=
X-OriginatorOrg: net2edge.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2017 11:00:31.6501 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0701MB1875
Subject: Help With TEMPLATECONF & Automated Continuous Integration (CI)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Thomas.Thorne@Net2Edge.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 12 Jul 2017 20:31:04 -0000
X-Groupsio-MsgNum: 37011
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="CqAQRRvK8hLFWkNBBC5fKJnvgWUJkHJVB"

--CqAQRRvK8hLFWkNBBC5fKJnvgWUJkHJVB
Content-Type: multipart/mixed; boundary="QaxmnktFnxKSxJpRAgWugcOx25kci7Fgq";
 protected-headers="v1"
From: "Thomas A. F. Thorne MEng AUS MIET" <Thomas.Thorne@Net2Edge.com>
Reply-To: Thomas.Thorne@Net2Edge.com
To: yocto@yoctoproject.org
Message-ID: <cfdc15ad-f56a-bbd3-80fb-266413b00322@Net2Edge.com>
Subject: Help With TEMPLATECONF & Automated Continuous Integration (CI)

--QaxmnktFnxKSxJpRAgWugcOx25kci7Fgq
Content-Type: multipart/alternative;
 boundary="------------AA102D29E8883F3627DDB42B"
Content-Language: en-GB

--------------AA102D29E8883F3627DDB42B
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Good morning,

I am trying to setup an automate Jenkins CI server to build an image.=20
To do this I need to automate the process of setting up the Yocto work
area completely.  As part of this process I am trying to eliminate the
use of or automate the production of local.conf and bblayers.conf
files.  It is working out how to deal with the selection of layers to
include that I am having difficulty with right now.=20

_TEMPLATECONF_
In the documentation I have found a reference to the .templateconf file
which can be edited to set the TEMPLATECONF variable to point at a set
of templates for the local.conf and bblayers.conf files.  I suppose I
could somehow overwrite any existing .templateconf file with my own
version copied from somewhere but that seems a little messy when all the
other files are checked out of source control and manipulated only via
bitbake.  I wonder if a TEMPLATECONF environment variable would be
picked up as that would feel a little tidier to me, I shall experiment
after lunch.=20

_What I Have Working_
The top level work area is formed using the Gerrit Repo tool.  This
gives me the basic set of core layers and my proprietary layer
(imaginatively named meta-net2edge).  Jenkins is able to operate repo as
it can other SCM options.=20

I think I have eliminated the need to a hand crafted local.conf file
already.  I have a proprietary Yocto Board Support Package (BSP) a
costume Image Class and a set of packagegroups added to image using
IMAGE_INSTALL.  With the target MACHINE set using an environment
variable on the call to `source oe-init-build-env` there is no need to
hand craft the local.conf.=20

_General Questions_
I also feel like I may have missed some documentation or instruction
that discusses going from prototyping in local.conf and bblayers.conf to
a more formal production system that minimises their use.  The
documentation for creating BSPs is good.  The documentation for creating
distributions and feature packages is a little weak in places.  Maybe I
am wrongly expecting structure where Yocto tries to be flexible.=20
Am I just overcomplicating things by trying to minimise the work any one
user or machine needs to do besides checking out the work area with repo?=
=20
How do other people perform CI or continuous delivery for their Yocto
targets?

Any help or advice would be most gratefully received.=20

Regards,

--=20
Thomas A. F. Thorne MEng. AUS MIET
*Software Engineer*

*NET2EDGE*

Tel: +44 3450 130 030 <tel:+443450130030>
Email: Thomas.Thorne@Net2Edge.com <mailto:Thomas.Thorne@Net2Edge.com>
Web: http://www.Net2Edge.com/ <http://www.Net2Edge.com>

Net2Edge Limited is a company registered in England & Wales (Company No.
2438435, VAT No. GB 537553821) Kulite House, Stroudley Road, Basingstoke
RG24 8UG. This email transmission is confidential and intended solely
for the person or organisation to whom it is addressed (i.e. the Yocto
public community mailgroupin this case). If you are not the intended
recipient, you must not copy, distribute or disseminate the information,
or take any action in reliance of it. Any views expressed in this
message are those of the individual sender, except where the sender
specifically states them to be the views of any organisation or
employer. If you have received this message in error, do not open any
attachment but please notify the sender (above) and delete this message
from your system. Please rely on your own virus check. Although all
outbound mail is checked for viruses, no responsibility is taken by the
sender for any damage rising out of any bug or virus infection.


--------------AA102D29E8883F3627DDB42B
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>Good morning,</p>
    <p>I am trying to setup an automate Jenkins CI server to build an
      image.=C2=A0 To do this I need to automate the process of setting u=
p
      the Yocto work area completely.=C2=A0 As part of this process I am
      trying to eliminate the use of or automate the production of
      local.conf and bblayers.conf files.=C2=A0 It is working out how to =
deal
      with the selection of layers to include that I am having
      difficulty with right now.=C2=A0 <br>
    </p>
    <p><u>TEMPLATECONF</u><br>
      In the documentation I have found a reference to the .templateconf
      file which can be edited to set the TEMPLATECONF variable to point
      at a set of templates for the local.conf and bblayers.conf files.=C2=
=A0
      I suppose I could somehow overwrite any existing .templateconf
      file with my own version copied from somewhere but that seems a
      little messy when all the other files are checked out of source
      control and manipulated only via bitbake.=C2=A0 I wonder if a
      TEMPLATECONF environment variable would be picked up as that would
      feel a little tidier to me, I shall experiment after lunch.=C2=A0 <=
br>
    </p>
    <p><u>What I Have Working</u><br>
      The top level work area is formed using the Gerrit Repo tool.=C2=A0=

      This gives me the basic set of core layers and my proprietary
      layer (imaginatively named meta-net2edge).=C2=A0 Jenkins is able to=

      operate repo as it can other SCM options.=C2=A0 <br>
    </p>
    <p>I think I have eliminated the need to a hand crafted local.conf
      file already.=C2=A0 I have a proprietary Yocto Board Support Packag=
e
      (BSP) a costume Image Class and a set of packagegroups added to
      image using IMAGE_INSTALL.=C2=A0 With the target MACHINE set using =
an
      environment variable on the call to `source oe-init-build-env`
      there is no need to hand craft the local.conf.=C2=A0 <br>
    </p>
    <p><u>General Questions</u><br>
      I also feel like I may have missed some documentation or
      instruction that discusses going from prototyping in local.conf
      and bblayers.conf to a more formal production system that
      minimises their use.=C2=A0 The documentation for creating BSPs is
      good.=C2=A0 The documentation for creating distributions and featur=
e
      packages is a little weak in places.=C2=A0 Maybe I am wrongly expec=
ting
      structure where Yocto tries to be flexible.=C2=A0 <br>
      Am I just overcomplicating things by trying to minimise the work
      any one user or machine needs to do besides checking out the work
      area with repo?=C2=A0 <br>
      How do other people perform CI or continuous delivery for their
      Yocto targets? <br>
    </p>
    <p>Any help or advice would be most gratefully received.=C2=A0 <br>
    </p>
    <p>Regards,<br>
    </p>
    <div class=3D"moz-signature">-- <br>
      Thomas A. F. Thorne MEng. AUS MIET<br>
      <b>Software Engineer</b><br>
      <br>
      <b>NET2EDGE</b><br>
      <br>
      Tel: <a href=3D"tel:+443450130030">+44 3450 130 030</a><br>
      Email: <a href=3D"mailto:Thomas.Thorne@Net2Edge.com">Thomas.Thorne@=
Net2Edge.com</a><br>
      Web: <a href=3D"http://www.Net2Edge.com">http://www.Net2Edge.com/</=
a><br>
      <br>
      <p><small>Net2Edge Limited is a company registered in England
          &amp; Wales (Company No. 2438435, VAT No. GB 537553821) Kulite
          House, Stroudley Road, Basingstoke RG24 8UG. This email
          transmission is confidential and intended solely for the
          person or organisation to whom it is addressed (i.e. the Yocto
          public community mailgroupin this case). If you are not the
          intended recipient, you must not copy, distribute or
          disseminate the information, or take any action in reliance of
          it. Any views expressed in this message are those of the
          individual sender, except where the sender specifically states
          them to be the views of any organisation or employer. If you
          have received this message in error, do not open any
          attachment but please notify the sender (above) and delete
          this message from your system. Please rely on your own virus
          check. Although all outbound mail is checked for viruses, no
          responsibility is taken by the sender for any damage rising
          out of any bug or virus infection.</small></p>
    </div>
  </body>
</html>

--------------AA102D29E8883F3627DDB42B--

--QaxmnktFnxKSxJpRAgWugcOx25kci7Fgq--

--CqAQRRvK8hLFWkNBBC5fKJnvgWUJkHJVB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJZZgFJAAoJEPXLKKkUazGAmjAIAJpg0pISeHe3JUN5LmsyJZKu
GKMeDdyYt79I1tPI/1RYefC9JOk1vltMF78gnw1v+oRERPnwkYYmtygq9u6cmi26
elB9a8SfQVE4DmTeEElHKfowLUhoyu9x7WiSl70IeLnZ5bW4eFE3NKOkkMyJlO80
RbmYRdbyFWNTWjebSUrHSRgas0szQrdQpi7iILn/1xx4HzP3haHjow4OEFARfAXV
YWKKmUFhB8q/6EppL+jKThZCsElMmjisY0qTCzrkEU0cfjS1Lajb8QwvLRS7nk7Q
a9Udrj8p1KM/uHZRZttlQj+IX6Ni4cFJhFi+203pKb+JwyLHlkgvatN9fCu6teA=
=oI4d
-----END PGP SIGNATURE-----

--CqAQRRvK8hLFWkNBBC5fKJnvgWUJkHJVB--
