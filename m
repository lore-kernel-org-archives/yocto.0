Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9468E00AB9; Mon, 20 Aug 2018 06:49:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.81 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 22598 seconds by postgrey-1.32 at yocto-www;
	Mon, 20 Aug 2018 06:49:09 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0081.outbound.protection.outlook.com [104.47.2.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D595E00848
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 06:49:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector1-TopicProducts-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=G0P6rCfuYbfVi7tnyhtvPdjwQ7Ldy8bhUaXj3yVRT7c=;
	b=dqMdKNxDLnZPXAnuMryoLxpSnuWSZf/4aLbX2aU8dACp2p+jmrZqhtsYXUW2AnE/NX703BqVpycG6uSY3rL5XUPJF51b3JRd3oBVOCau9vE27UYXuZk3E8nAJdYkixKeJ5lL3lmxkYCT2ICEo66gk5Y/okT8awPvTyJ2CV0SHzs=
Received: from AM5PR0202CA0014.eurprd02.prod.outlook.com
	(2603:10a6:203:69::24) by DB6PR0201MB2262.eurprd02.prod.outlook.com
	(2603:10a6:4:32::9) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1059.22;
	Mon, 20 Aug 2018 07:17:25 +0000
Received: from HE1EUR01FT041.eop-EUR01.prod.protection.outlook.com
	(2a01:111:f400:7e1f::207) by AM5PR0202CA0014.outlook.office365.com
	(2603:10a6:203:69::24) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1059.20 via
	Frontend Transport; Mon, 20 Aug 2018 07:17:25 +0000
Authentication-Results: spf=pass (sender IP is 13.81.10.179)
	smtp.mailfrom=topicproducts.com; yoctoproject.org;
	dkim=fail (signature did
	not verify) header.d=topicbv.onmicrosoft.com; yoctoproject.org;
	dmarc=none action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
	designates 13.81.10.179 as permitted sender)
	receiver=protection.outlook.com; 
	client-ip=13.81.10.179; helo=westeu1-emailsignatures-cloud.codetwo.com; 
Received: from westeu1-emailsignatures-cloud.codetwo.com (13.81.10.179) by
	HE1EUR01FT041.mail.protection.outlook.com (10.152.1.3) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.20.1080.9 via Frontend Transport; Mon, 20 Aug 2018 07:17:24 +0000
Received: from EUR03-AM5-obe.outbound.protection.outlook.com (213.199.154.116)
	by westeu1-emailsignatures-cloud.codetwo.com with CodeTwo SMTP
	Server (TLS) via SMTP; Mon, 20 Aug 2018 07:17:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=topicbv.onmicrosoft.com; s=selector1-TopicProducts-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=G0P6rCfuYbfVi7tnyhtvPdjwQ7Ldy8bhUaXj3yVRT7c=;
	b=jNqTF5O+Bt/Pe/VLDrFN11evmXEkH9+4cijmufH8FILlyYkkxW70WHLD9bvg3PqypTH+Fkl+SYbAlNMGkk4HNg5AO+Ai508IxMNFl4YKbRrJRwGzcCXB/eAdw2z4RyuOiX1kiMxR/66vM47/418rH4nQ9OqH/8BDhuynS9Ogo70=
Authentication-Results-Original: spf=none (sender IP is )
	smtp.mailfrom=mike.looijmans@topicproducts.com; 
Received: from [192.168.80.121] (37.74.225.130) by
	AM0PR02MB4083.eurprd02.prod.outlook.com (2603:10a6:208:da::17) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1059.24; Mon, 20 Aug 2018 07:17:21 +0000
To: <yocto@yoctoproject.org>
References: <1534692130-10623-1-git-send-email-mohamad.noor.alim.hussin@intel.com>
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <55c55bb2-94f5-75e2-c1e4-0ee58026c5a0@topic.nl>
Date: Mon, 20 Aug 2018 09:17:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1534692130-10623-1-git-send-email-mohamad.noor.alim.hussin@intel.com>
X-Originating-IP: [37.74.225.130]
X-ClientProxiedBy: DB6PR07CA0165.eurprd07.prod.outlook.com
	(2603:10a6:6:43::19) To AM0PR02MB4083.eurprd02.prod.outlook.com
	(2603:10a6:208:da::17)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bdb9ac05-9cf5-4348-1f2f-08d6066cfa8b
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989137)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:AM0PR02MB4083; 
X-Microsoft-Exchange-Diagnostics-untrusted: 1; AM0PR02MB4083;
	3:0BaCBkk9lIh87ECWdgSHQSDDCWviXfEPUm4QaaXDdbs0MdK13D/5e0/XZASgrW0WAzsq4H6YW3EOg3jTZ2kD2hP+T237j80uMMg48uiryXyJEEnkDtUap/ASIdtnQho/ULsm+IjFt73Uw64avJyTsCi95YzETJiJdUMolYV3CKCApnAeyRlaew+RTorG3Zh6FP/WFwrNAWYv3CdHz+qaGQNVJ9sl2uRlOeJK9L8UlGgwH4j3TagZhopPRyEuGtdQ;
	25:bjuAltpQOPlN3/Dq2GH5WwLtWX65MvPbGkzciz0z+LG/4yuULXO9/Clf1NoYAQcGTRU9CyrY8MZCmvvtzGa5mKax3qdrk+rjx+Xk0DBaIzb1sQwj6iI40D19dqKqCo2s7HSQ2o87HAcxFl6NQHdwJ4yp9MBly9TvX78T4tBZ4a9omC6tEF4fUuG0LGxYO40uPsr/SLFZVCLOlTGj9ei38N1wg5WEiJTzySzTt/I5rFO7oZKuvUAryOdLiCmW04fMKG1hQhF3wJHmPVsI0JdiVe+7+JCRX0zXtJ0/pBBOoafxT6Wt6k4Qe6xy2DjavwthK7zZFTSwSdOKD0w+SSe0lA==;
	31:y9pnwdTUworvsQHHcZUXzOE821a47OGw1GsZC+RtDlBmw0xj8qwuhhkB7aPeyXI6vQwgH+IKi6yyaHa+sX9a4EqSIf6Gn8dZ67gJn3c7jfqHZxsGPO642RJsjDGfvgm2ce/iv//cZmHs5W/15E25GpAv8JqNTcy0NfeWPzYFthlt0vFVzTDpnLE3eAET8fi3bbcnPKf5c67GVJTAGAGr6i4LzJ94T1AyyU7I+rDtNOQ=
X-MS-TrafficTypeDiagnostic: AM0PR02MB4083:|DB6PR0201MB2262:
X-Microsoft-Exchange-Diagnostics-untrusted: 1; AM0PR02MB4083;
	20:79H4Nx26kA8N5F9/VunGv4wnESVij0N+/0+WSl9fReBrnk13B5pOv4ie+Z2G6TXaPhleeYQrTAyW4GKzJORQlqB7j4XqgikOxmHf8fC67/uBGbaoROo6Wfj/jXhwB6tactDlzlmeL3CME/xNWem90kCNZ+LT07siCu2KGqpn5xk=;
	4:skgqjk2dmDYMwago7uHstuCW8I/W62OhOjIgewiVCLD8BKJfhi/X0xyBDqWiGJgESU0Quya0xbLXGBXPIZckrupRuUPhiydbEJPJrkY6BT4RBnu+yBF1zqKSQmtcY39PFjJjEwAakQJNeHO/In+gDnNm3a9WDZWXRIvssyQTD4ruUXXELc5k+DwYtZ8ACOYA2SAy/YdrsSKKvWro27aW2VvIF8/pDP3RNMvPt0u+RdoSB/a5RB57eIbKPl/Ns+rIZSBvdL8aGjUeSNeoi41dWQ5d1LR6tULSokOa1ITM+5rDjhFLaT3hp0gpCOwTt4yB
X-Microsoft-Antispam-PRVS: <DB6PR0201MB22620E4F625ABD6E911362BA96320@DB6PR0201MB2262.eurprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(228905959029699);
	UriScan:(228905959029699); 
X-MS-Exchange-SenderADCheck: 1
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(93006095)(3231311)(944501410)(52105095)(10201501046)(3002001)(149027)(150027)(6041310)(20161123560045)(20161123564045)(20161123562045)(20161123558120)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(201708071742011)(7699016);
	SRVR:AM0PR02MB4083; BCL:0; PCL:0; RULEID:; SRVR:AM0PR02MB4083;
	BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(3231311)(944501410)(52105095)(10201501046)(93006095)(93004095)(3002001)(149027)(150027)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123564045)(20161123562045)(20161123558120)(201708071742011)(7699016);
	SRVR:DB6PR0201MB2262; BCL:0; PCL:0; RULEID:;
	SRVR:DB6PR0201MB2262; 
X-Forefront-PRVS: 0770F75EA9
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
	SFS:(10009020)(6049001)(376002)(136003)(346002)(39830400003)(396003)(366004)(189003)(199004)(53936002)(229853002)(5660300001)(6486002)(8936002)(68736007)(2361001)(105586002)(2351001)(106356001)(6916009)(65826007)(36756003)(2906002)(478600001)(64126003)(31686004)(42882007)(74482002)(476003)(2616005)(956004)(67846002)(11346002)(446003)(23676004)(65956001)(2486003)(25786009)(186003)(52146003)(52116002)(36916002)(65806001)(66066001)(7736002)(47776003)(76176011)(77096007)(305945005)(50466002)(6246003)(8676002)(81166006)(230700001)(486006)(81156014)(97736004)(44832011)(316002)(31696002)(14444005)(6116002)(16576012)(386003)(53546011)(26005)(58126008)(16526019)(117156002)(3846002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR02MB4083; H:[192.168.80.121];
	FPR:; SPF:None; LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: topicproducts.com does not
	designate permitted sender hosts)
X-Microsoft-Exchange-Diagnostics-untrusted: =?utf-8?B?MTtBTTBQUjAyTUI0MDgzOzIzOm51WUdCWkxmNkFGZFdHVElNQzFSVWtoMGRi?=
	=?utf-8?B?T1Z3YS9aWVZWU0x6NkhpSXJmdXc3QWZqcVpWOWxycFIzcE5hWVk0NFR3S2sr?=
	=?utf-8?B?dzFQNTRjU0hhQzB3b0w3MmRKYWZOdnNLV3A3Z3NNcHNYOW15YzFZK0NocDZh?=
	=?utf-8?B?Tnd2ZFV4R1dNNHRLc0g0TktZbnFRMC9zWXZmaTZwUzhHckhHZGY1V2NRMlBJ?=
	=?utf-8?B?alZKdXdyRHJRUzZBcWd6MU8yM2NSYUxPNzNWSXFVMER1cVlqLzFLYncrT3N2?=
	=?utf-8?B?aS9lSTQwdXlwWlRJQlBPTHZqbkZmaUlib3kyRzVuTVdJaXFXY1hyMHI2bkFj?=
	=?utf-8?B?cE9JZm9mT29ubEtjc3BoZ1VoQ21zSHdJclI0b25lWFB6a05tOWh4akp5ejVk?=
	=?utf-8?B?YUVFaGtITzdSb2htM1ljMCtRVE9YWlh4ODZlRm9HeWgybWRtMTg1RVVuYlJw?=
	=?utf-8?B?c1grNDlWZXpMdTdDOUI1cWJhSFBsY0p3S1dKN1lEbmZEMTFCL1J6Wk9hNUZT?=
	=?utf-8?B?eFpNaG1rOXZRSGkwSVRYaVRFeTJkWmNFTmNQbEI1aXdjdE8wZHV5c0lwNWFP?=
	=?utf-8?B?UWpacUs4ZkRoL2lGWHk1SVhZL2RHNTZBbzVVTitpSmtVcWoyK1BvL09IbWo1?=
	=?utf-8?B?cG5nTlNTOVorbnFFSWpSYlBlMG9mcnllbjdwUkM5YkRocU5qMGF3WFhRM09y?=
	=?utf-8?B?VGVvYjlrMk9IbmVlYmVZNzh1NU5zVFM1Wm03V3M2QS9qc0xWT1NHSXpGbWVs?=
	=?utf-8?B?RkhoTTlzU1FxYmlRS0hQUEdzTlE1Nks3NWJXVFZKTXRXR3dMbnEyMGl3VnVj?=
	=?utf-8?B?dGxvMDlhUFlJaTlSZXN2VkZUcTFLNGltUGI5UkVjWStnbEh3M21ibmw0cExa?=
	=?utf-8?B?NUhaUzYrVE9XQnVRQ1BwY1FXanRPYVd0cW4yL29TWUxuTDNQVksvQU1MaStp?=
	=?utf-8?B?U2tDb2xKQzVCb2hOaTQvVkZPVWtheW5Gd0dWYjV1MThRc2cwYVcwTVhzUFhu?=
	=?utf-8?B?Vzg4YjJRZEgwS0MzNWZDN0svYXpCRzJiVlBZeTd6dHVxckhnK01qTXhIRHI4?=
	=?utf-8?B?RTBaZ0U5aHhTMkNiM1k1WjdxZ1ZwcWpaYjZaZFZNMDRTc2RuMnpCTWF4ZW4v?=
	=?utf-8?B?WEkweXJNdTFVQjJuUHNBSXcyVEV0NzZ6T29MUzVhSUgyK0o5Sk0xN2dKdlh4?=
	=?utf-8?B?bXB5ZEZZYU43T0FWRWlqRlFiczY5QXFFMkkySllMWE9RS2VEOXlzaU1MQzFJ?=
	=?utf-8?B?UTN0S1NmczIzQkRxbWhXaHdMc1BOVE5LU3BqY1lNNEtmN1M2aWNkU0FMeFVl?=
	=?utf-8?B?UUwrZThTSzlycFUwOGJjRXgybzdkcEEwZlg0TFBlcEpUK2QzVHgyMWNBcy9S?=
	=?utf-8?B?TEU5b0NOMEZuZnBXdjdWNi9KbDlQL3BZZ2puRFJJZzZVOEdEVTcrS3hxTjdk?=
	=?utf-8?B?ejVVUEg0SFVMclNwaTB3TDZoaFZKS2orUkozd1B0TitpTHJUWStqWlMvOXdI?=
	=?utf-8?B?MVRjbS8rUFpTTjVpYnI0WXhzRytDWEsyZnZyY1BUOEx4eWNZZEhmUENkT2U3?=
	=?utf-8?B?Mi96ZVJLdHUwS0Rqdk9KMEVuWU8yRHRMSVNWMXA4b1NFWGpLOFVibGpsTElD?=
	=?utf-8?B?Q3NPbkFmTmpkdVlSQTZycjY2cXZnanRJa1VNc0RGUGRMbjI0aVY0V1hacDRF?=
	=?utf-8?B?QVM1Y3d5NitrdkNidG5OZXp2b29VQlUzTk1uWGxwTURqNlVlLzFCWXFmTi95?=
	=?utf-8?B?bW9abndpRVRGbkllM2xNU2xMa3JZam1OZDB6OXhJSTQ3a1NnSWhLQ1llWXlE?=
	=?utf-8?B?RnVZbWJXS2d3Vm5MaCtxMGZpUHJPQ01vNXJOM0J5bkF4ZWx3b1R6QnNGS1Ix?=
	=?utf-8?B?R2piYlRUWE1Cd0czbXU0WHg3MnlwK2sxUHRzWUpXTUU4S3FHeHVyVGREVTVF?=
	=?utf-8?B?SHNSYndyQkFlcFo3QUg1NTVYSEVMcmp1bGpDZm9Jd0Zla1RXRUFHckhNdncv?=
	=?utf-8?B?T1BCeS80Y1lkZ0h5eU10dzRxN0ZVYjkveTZDUEZzTGUweVJNQnZOSVQvMGh5?=
	=?utf-8?Q?xcy6drM/q7eriO1GlNCk5m5+M?=
X-Microsoft-Antispam-Message-Info-Original: kO6ZUQASYVasVk3FTAwHQoA9gjQwGz9RDEjYOVF91bmCTOUJQqBhTBIsz2bjHttQwmPl19cnRgUwA5RUOux5S0WoEBTXGFNl0rq04RdkYqPx568uVACUocS3nTOcB9VC25sAfqssMsWsJRx47gJQLtXehsnxPmwct2SLI5EaRqQWRSufFekx/LmtN2FC3FzJu64GVyI8AfQ5SqDeGNYGD49P6mOT4jwBtPm6gIUqLVCp4XGv/bqQrVd3UFBuEEDQKy/KXBUQXC5NgZVjl1pVlnmze9KzXp79MoPo7c11ek8FuZhzqa8qoJdmL5V2zWah8RKbzbvBPQcgqnBvZt5FtuGJxe/HRFRTyjk01U3OseI=
X-Microsoft-Exchange-Diagnostics-untrusted: 1; AM0PR02MB4083;
	6:y3Kk55QTRGK8f5EvrrVe+dV3YeAO8lqOIGMwmzkUcS8FXwZk43kIJ6Aiu6dXAZhNCho2d3QvLz3J2Seb7M+P7AKDILfk1sUI27CyWRPj/wtxR1Zgl5FHXl20Z97qmF2G6AGnuftGu69ubmoffo4Q+LrA+pjC1kCdFMh+FWzSG1EjHtOqt2lYomtxgKKjwSw802HldV2UNX4rnUEPPOTtATuhKGw5mFTK+nLGxTJn3cKF616QRMlJiBQgea+S4MYLFXzpxeLA8S7lbUTBMQ5vtzJ7SR2sJ4hZBTeTLSGJG8nNriWCT3hb/CK3ePegCdEcLKuQZOhp/9KEN7r7XVz+7S1suqmFcUT284AokvwL9+eBNxoDuled1GITnuX3rCw7/0X4OH/HTJ+QVJHQAaTex/NRJJ9VrsXT4gjDQRsiqD4PLov3sL4GRRrUOfhCtIvnFUlfQjriaFyP9v1nGPj5rw==;
	5:k8obJJTc85UGJ+LNs61hRId4uu7sktNsapd0Zuf5BL/71XHXO7bVIFglZDRF3Gpun1P2hbw5ZvS1BuwZqgZ2zQGZKnS3HKK7VyvcZORMjKxLfHLcmXtAZ8YbQXAbjGg6K5MDIxAg2j03b3lApjnuQvaVFz9zsnQgN1JIyYA8Qrw=;
	7:1s93xIFmeG3Pnmki1JLHvoklyWTYhhw5wIGz6VMgS79DdY11771K60kYYFYn1aVYC3GkvsfaLaASGK+zzuX0pJyPy3I4jrFqrUFGaT6WRQH3ddefqtrm3+yfL+4XnN8xEwEaNTR11EqItlQyDZB1LFfDjHNg65lgAk7NqGaxzDYVWy797Um1cZs3eogUQcBKHkvcHTf0UG7W28DuVNC5EUundIcuQ4wuyC8vczSFgtwbLcVT2oNRfnrIaibDheHz
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR02MB4083
X-CodeTwo-MessageID: 20180820071722.a8426d55-01dd-4316-90a5-c2f79401a51a@westeu1-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: HE1EUR01FT041.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:13.81.10.179; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(39830400003)(396003)(136003)(376002)(346002)(2980300002)(438002)(189003)(199004)(76176011)(2906002)(58126008)(229853002)(65826007)(25786009)(2351001)(6486002)(31686004)(6916009)(47776003)(106466001)(117156002)(16576012)(6246003)(7596002)(305945005)(8936002)(106002)(7736002)(7636002)(3846002)(44832011)(6116002)(246002)(64126003)(8676002)(230700001)(67846002)(65956001)(77096007)(65806001)(356003)(14444005)(26005)(36756003)(186003)(16526019)(50466002)(316002)(53546011)(386003)(31696002)(478600001)(5660300001)(11346002)(23676004)(486006)(42882007)(2616005)(2486003)(36916002)(336012)(126002)(956004)(446003)(476003)(74482002)(66066001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0201MB2262;
	H:westeu1-emailsignatures-cloud.codetwo.com; FPR:; SPF:Pass;
	LANG:en; PTR:westeu1-emailsignatures-cloud.codetwo.com; MX:1;
	A:1; 
X-Microsoft-Exchange-Diagnostics: 1; HE1EUR01FT041;
	1:sH7IND4BsW+IbNqvffRjvaO4TV69TKLCFyYFltm6SjSzJebgLZ4TT62L4tydmeMCOLMviBKW8fBwrPzOYAq1ZbuL0bEXX6C9nBqPU0nHeOv/Tu1PaC5cbB2ai3dvaw6g
X-MS-Office365-Filtering-Correlation-Id-Prvs: 17c84754-b6c6-4e4d-4851-08d6066cf88e
X-Microsoft-Antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989137)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(5600074)(710020)(711020)(2017052603328)(7153060)(7193020);
	SRVR:DB6PR0201MB2262; 
X-Microsoft-Exchange-Diagnostics: 1; DB6PR0201MB2262;
	3:dsQ1X2VB1SaOHC5kITZCXX12IN/jMuKWuvueArTpuAP3M6/5XyNT9MTJ1RmIEAEtK/f1TGIr3819oXlJcbmwFvYJc5KZ8vvFNTaRDVM483OIQyeZJ332w3MDocW9GDg1PTohvFPvFrFnAOntytSxNgScAQgKGFCP/l0xVCAWhZFqdk12NcZfMZmwcw+Yn0NYgOQDhKa+g77TBI5q/XYDchLUXaI3z53Ic7jngvxhcjFg/3AiqoMRnYNyDUjFCT9xB9YANgHr91wFyJ3GXy/kP4MfnVvY6j27lU5iu1UF0Ah83b5CcXz7AkWgtPOJOMFhaPy50xdZcFhXuMX2Q3zL4NNoHvqzC3z+tgYBdyVaxH4=;
	25:EM9f4qLrlPzzeEuzTZkBKib0r3EqtfIqrsCa6jmRMia0uUFySlZeliXEriZzIgCB4vWh92KTjHM67vR9sWfa0U4E3nVyVVUtolcgAtwcqMzxgsslSn/CvPwv0qUTJLSEOwVZ3LasFbEgjseZeBnFA9OiHIRjYgqqgEVSvUsX4PstcKlu7EoLL7p5LHSn5Q0h8tPIZc+NaloKOWPph9sMDXuu3HniHCziHWnvkw5iPCdkis58Nqv4oBb+IGBNt3zxlI3/a8v1/44yj9P5BAUgdbAz2SohByBShpncnITqFuG1P3IedKT8/xRzrorZxe2+2f28lRqn+mYIScxK95HUDQ==
X-Microsoft-Exchange-Diagnostics: 1; DB6PR0201MB2262;
	31:lhiaTUh4hCO8ENySt4savWy2jPqKMwJUUcFvbAPwPjE0hSLB1c+Lsaq2ZYHmNet5m6+S9qdmAxrxXaoRK5rPRmfmc00TkJhla4W4MockcAIJpINCxO8RzS4t0Mpo2mIGb/uOo0xyvL20Y8ddt8GRZKJdhB14YnU0rQfkCHMtYhKzkxLBRsHjXCqbwTwyJZi74Jq+yCs2mAlDBWNSaDMQGVpulxgu4Zz8FwaQ+Y2mNew=;
	20:QRbJNKe/sZlHv19fL8qtE7o0nWwzrixY3quMm/49zOK6RVAv63esw1wU8tuB4etOlTaKvXTxH8aUanblySWuKZWktUiITMuD1LW/YuGsZSxZltvNe59YvwWtYoGC2fR2X1zKrurKhQgXFpccEeaaDlfYSVfFSXny+DuaCc3jB/o=;
	4:Kg6kam7UBWsPKZ+SHoHnZKko9EnQAHq+CyCcMTbZmk/7xoH94mcwsA90yRPdHSr1hOsT5cdeyuHjaCFUTyMm85a9CGt/cjRS/TvUibumAR3zS3/tBROIkzFygHAVQVMXkJCwYT7O7Yc4CipV6MLxMF+xtU1ArGaXUoJPSNpnNxKo4amkWY4l5JGyERJaXLikqsb72JDvlWd24c/tz1AuXmNWQHStZz801CckphckWU1XyqwBZnpuN6BR0nExhq0QX4DLtEOXq6coSis9kJNZQaI64Q6h3zRBO2regxlYvjtVyu2ekdDTWCAdgaNXUcEL
X-Forefront-PRVS: 0770F75EA9
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtEQjZQUjAyMDFNQjIyNjI7MjM6dVR6V0lYQmJGOGxta3A1b21FWGNLYTQ4?=
	=?utf-8?B?aEcwNHRxSDF3Y3F4cDdNanIyeWdwQkxsMWdKL1ZxSExGTTN4dlFOMm82c3lY?=
	=?utf-8?B?N2toZ2p5UHlvU1d2dENia1kzRmtWNm5CRzQvVmdsa2UvQWZlSGtvSFNUZURz?=
	=?utf-8?B?dlFTYzJUMnowb1JMTlpneGNUMUhXSUVQMU5xUkVxY3VZcE5FS1RUOGs0WUs1?=
	=?utf-8?B?TkZwcjdGR3ZwR3dTMThsZVMxRElKWDFyZ1RjUVRyVWQ4cy8wNEdUZUdCL2N3?=
	=?utf-8?B?c2FiS0NzSEdNdWhDUU1ZTHdPS2YzcDF2MnB2T3I1OXlMYkRQbVR2d0M2dnQv?=
	=?utf-8?B?a1ZhNytwSVpnRXd6aFVzczZudUh1WStTcjVVRkp4d3lVYzZxM3RWaWxVdDFl?=
	=?utf-8?B?M1Z1TG04amdqT014ekJzY1o3T2daTzNjaFEzaUhpbG1CSy8vWUQ1c2RMVldE?=
	=?utf-8?B?VWZsUTU4dmNQUXBNMmFVcUNYdGlKOGhkRUN5MHFOS1gzay8xUzRObEZsS0JS?=
	=?utf-8?B?cjNjWEJlY09OMHFSM1piUmgrcWlSY3R2MkVaWWE2bG1qWGdnTGhRaTBpZ045?=
	=?utf-8?B?cTNQNXFqU2xnUU9IRnhwbmdMU0locG1iQm92L1BIbkU4T29ZcU9vczJneEdi?=
	=?utf-8?B?dnoreHY2aGxRT00xMmkzNHhUcEZGSDk0VklqMG05bkFmU2FZYzlzdm1LT2xi?=
	=?utf-8?B?a1c0QmRjY05FZWJRQ2puTXRLYnNvNWVXTzB1allQanQ3N2pKS0swV3dyeFVF?=
	=?utf-8?B?RWhPTm5pbkNXWU9zak4yckZmNHZLSWIzc1JWWDIvSGswdGdaVXRrb0tKdHVL?=
	=?utf-8?B?T1B6SVlMWng0Q2cySjJZOGlzVGRZZ2NaMk9vYllTa1dZSW8rUzFzYmx5SEUr?=
	=?utf-8?B?YlV2Z05Xbnk3M1hTbERxWHpOaXJkS2F2allJQUhBNUxzSmFFRVZiUUNscW04?=
	=?utf-8?B?eFFJeUFUMCtZMkpmeXhPbHNiand2VTNSWERuOEdjcW5GL0VJQ3Yvejh6SFJR?=
	=?utf-8?B?SjJlMW12Y21QY1ZEVjJBVmhWNUliM05KRXBTY2pwVVp4cENBMmdzb2doRCtn?=
	=?utf-8?B?Y3RVVXhQSDU2SmV1enJMVTVoYXpMTDZWaEE4YnE3YjdOSE5LVlM0cWY4enVi?=
	=?utf-8?B?M3NVMVNHUVRaWExwaDJLejkyR2hRbXRDUm91R2M4YVFVcGZvLzhIQTU2dS9S?=
	=?utf-8?B?VmtGbEQ4NXM5RUJxU0tlak50azNRWGRNSU9aN1NsN2NpUW1jemVUS0xuSmdp?=
	=?utf-8?B?UjdsRVU4eHpFUXF2dVVlMDVWL0JlZFlVczdzUUZwZC9Cb0NBa3Y2QnpIMCs2?=
	=?utf-8?B?S0szbWkxOXZuRDhzVktyWGtQd01WMDhIaHc5Wmw0S3NsT3FqbnBtMG5ZZ0hW?=
	=?utf-8?B?eHZpU3dzaEFuanZ5cGpzdytDUURMVGZ3dm8vMWVDRjQwOGN1emM1bXV6YXA4?=
	=?utf-8?B?UHBTY0FZcXRwSmFRVDR6R2Q3Kyswak9KTHVZazhWdTEyR3htMVlESEJUd2FD?=
	=?utf-8?B?Y243SnhnQjYxRmE2UVIrL0hySmErY3Z4cStSekR0dkkwQ3MrL1JuamlscWl5?=
	=?utf-8?B?YXIzT2U5VjR0RXZMR2FBYThUeitKYS8rc3lXTkl6Nm0xTGMxS0k4Yy8yaU51?=
	=?utf-8?B?anZCMnVadzhkVTdLTkhGaG1wZjhnL2tCMlpObVdGTWlQbHJIc2xxYnU4cnE5?=
	=?utf-8?B?WnZxS3g4QXRqbTRqVlhEemF3Y2htNE5lTnBTM2pDRXprRXlxMXQ1dDAxL2pH?=
	=?utf-8?B?UHhydytwYlRac2tRM0VuTUljb2hmdDZxQ1lad3RBblVaWVZveFg2Y3NDa2tU?=
	=?utf-8?B?RlhtWWNZYzRBSVFYTW1JdzFVVHRNcG4xSHpXdHdMME9xa1RBSjY2c3hjYzE5?=
	=?utf-8?B?Z3NDUndBd1dGSGwvblBZbElTS0hicXVTVFMvck95aURzNXlKd2MxMm43VUFG?=
	=?utf-8?B?ZisyL1drTmYva0kwYUQvNXFQNmM1bWdlcGZrTWVzOFVmallFRGF4c1J5c2tX?=
	=?utf-8?Q?68CYVG+i?=
X-Microsoft-Antispam-Message-Info: 15mWbb/iBLlVWhdJf6by0Q6cqaw4AB+oHTdF8MT5XFM9Y+ETbifpQtZUXesqDUkbEjRyaHbvvQdJwlpuNbskIRRokYle6h3kmKqxYTGI0O7iStT1TvrCZddJ+SlRJ9c/51F8+W4vwlE2BQbCFFdVu8hhGFP1dQO0Gmto42WKv94fcxrgh4LCHLpYN13KbOBQKpkwuQpRF5pab+L9EhT4mDT/YQ1tUnxbByD8RbmnBLB5A4zdvFVmRz/q6zxyiMLLIXPoNg9uKeam47dk7Vb8CDAGkwbE+0PoS/fzUowpOIe+uwtTKjIhoq9qajykP7TKrr0Dxvqslppby4MKsCVL4btjPloJWvJCpc3VpwHQHNw=
X-Microsoft-Exchange-Diagnostics: 1; DB6PR0201MB2262;
	6:fzat6ziQFdeXQYBmf2Ddi/xhC0zMu68SPgX1OjTC4eUMieQHip2IVSV4G58udRIp6OQuBuxN/ZIoFkKxcFgXcBf04wcXFgC4OhJl+OA/gYO6GJl7kzy6Od6CwMMOEOAB8gMdjA3kkxEdPezHnQ8bZ1k99ROu8uxShHrrld3wuGmCzDBR3EkRF5fG2UhruUGD/lcJFl1ZENfnBnkusRykosewEEgShITYj1ggJHeFAe+A79opwz0xpIzFOBLxf7+R+L7o0yU1Q75Ct5vMmM+oCBJVb5jhArLAdow8DTaPwEDNie6Z+aPcOw0qzdJ/BDew8Iywf9SLDOwKRaYEpH6iaUJF6taUZMCkkqM8CdesXsQuhWVEOovS8pr2HZJtyqswl53MovtvTminSa2hGx+XKzzedl3gwUZ4P0qIPj24cogY/vTudpvrN0c0qL4CGgYtzS25c/zU59MvyszUVr6UuQ==;
	5:fk7hLfMtbEF+p2Zvkbwp3Qv3aA8tBXrG2nyJ4NVcTKjRXDtFsSsshaC7spnGFpb54kCbPTGQ4l7pKUh/1SeDOEWqVWNyZW2lWRl29IqyjUK2nKCqCvN7FtCf/A12UMJrDf2xPJg+2SG3pGMlBWRDMOFcHzFwhcPYLxCixpyK3KM=;
	7:rTxM7iro41oJCMcXmDo2uVuquyXqgxvFp4VVIGQd1464g9F3Snhvg8LxZCP+9d1uNRRIRoxVaqditlmToK1EmYsGFMFZk5MQR1dOCH0xZ9swliXAhX3j7KncjKVqDa0Tj4xU8crtbI10ciyZyOsMyAjiz5h2qI0UVkGRQydWS4DMcWvk3vtxAmn8YffjX7kRJCYCMqKjURVb3xF7iz/A2wcBCM11fQ3LvEXZ2WjN338odXMg8YWEvTMobxWHlqa0
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2018 07:17:24.7909 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bdb9ac05-9cf5-4348-1f2f-08d6066cfa8b
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3; Ip=[13.81.10.179];
	Helo=[westeu1-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0201MB2262
Subject: Re: [PATCH] runtime: add BSP test case for usb storage
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
X-List-Received-Date: Mon, 20 Aug 2018 13:49:12 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

I would not write to flash media in this test. It's pointless, if you can read 
the the device, it means that you can already send commands and data to it, 
and reading will thus test data going in both directions already. Writing to 
the media will just wear it out, and if there's a problem unmounting it, it 
may lead to a corrupted filesystem and yield unpredictable future results.


On 19-08-18 17:22, mohamad.noor.alim.hussin@intel.com wrote:
> From: Mohamad Noor Alim Hussin <mohamad.noor.alim.hussin@intel.com>
> 
> Contain test cases to test mount/unmount the usb stick on target
> platform such as minnowboard and beaglebone. The test assume that
> the usb storage device such as usb thumb drive was plugged into
> the target device otherwise the test for would failed. It also test
> to read and write from usb thumb drive. Usb test cases start with
> mount the usb thumb drive then write and read from it. Lastly, it
> will unmount it. If the usb thumb drive unable to mount due to corrupt
> of partition or not exists, then the mount test will failed and the
> following test would skip.
> 
> This test need to enable flag 'HARDWARE_TEST = "1"' on conf/local.conf
> file in order to run on target device. This test should be skip on qemu.
> 
> Signed-off-by: Mohamad Noor Alim Hussin <mohamad.noor.alim.hussin@intel.com>
> ---
>   meta/lib/oeqa/runtime/cases/usb.py | 54 ++++++++++++++++++++++++++++++++++++++
>   1 file changed, 54 insertions(+)
>   create mode 100644 meta/lib/oeqa/runtime/cases/usb.py
> 
> diff --git a/meta/lib/oeqa/runtime/cases/usb.py b/meta/lib/oeqa/runtime/cases/usb.py
> new file mode 100644
> index 0000000..3e17645
> --- /dev/null
> +++ b/meta/lib/oeqa/runtime/cases/usb.py
> @@ -0,0 +1,54 @@
> +from oeqa.runtime.case import OERuntimeTestCase
> +from oeqa.core.decorator.depends import OETestDepends
> +from oeqa.core.decorator.oeid import OETestID
> +from oeqa.core.decorator.data import skipIfNotDataVar
> +
> +class USBTest(OERuntimeTestCase):
> +    @classmethod
> +    def setUpClass(cls):
> +        cls.hw_test_path = '~/test'
> +        cls.usb_path = os.path.join(cls.hw_test_path, 'stick')
> +        cls.usb_file = os.path.join(cls.usb_path, 'hello_stick')
> +        src = os.path.join(cls.tc.runtime_files_dir, 'bsp-test-helper')
> +        cls.tc.target.run('mkdir -p %s' % (cls.usb_path))
> +        cls.tc.target.copyTo(src, '/usr/bin')
> +
> +    @classmethod
> +    def tearDownClass(cls):
> +        cls.tc.target.run('rm -rf %s' % (cls.hw_test_path))
> +
> +    @skipIfNotDataVar('HARDWARE_TEST','1',
> +            'Usb test only run on platform. It will skip on qemu.')
> +    @OETestID(216)
> +    def test_usb_mount(self):
> +        command = ('bsp-test-helper --mount pendrive %s' % (self.usb_path))
> +        status, output = self.target.run(command)
> +        msg = ('Unable to mount USB stick. '
> +                'Status and output:%s and %s.' % (status, output))
> +        self.assertEqual(status, 0, msg = msg)
> +
> +    @OETestID(217)
> +    @OETestDepends(['usb.USBTest.test_usb_write_file'])
> +    def test_usb_read_file(self):
> +        command = ('cat %s' % (self.usb_file))
> +        status, output = self.target.run(command)
> +        msg = ('Unable to read file from USB stick. '
> +                'Status and output:%s and %s.' % (status, output))
> +        self.assertEqual(status, 0, msg = msg)
> +
> +    @OETestDepends(['usb.USBTest.test_usb_mount'])
> +    @OETestID(219)
> +    def test_usb_write_file(self):
> +        command = ('echo hello_world > %s' % (self.usb_file))
> +        status, output = self.target.run(command)
> +        msg = ('Status and  output:%s and %s.' % (status, output))
> +        self.assertEqual(status, 0, msg = msg)
> +
> +    @OETestDepends(['usb.USBTest.test_usb_mount'])
> +    @OETestID(218)
> +    def test_usb_unmount(self):
> +        command = ('bsp-test-helper --umount %s' % (self.usb_path))
> +        status, output = self.target.run(command)
> +        msg = ('Unable to unmount USB stick. '
> +                'Status and output:%s and %s.' % (status, output))
> +        self.assertEqual(status, 0, msg = msg)
> 


