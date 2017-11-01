Return-Path: <VINEETHC@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FC0CE00CFF; Wed,  1 Nov 2017 08:02:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.73 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0073.outbound.protection.outlook.com [104.47.34.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D470CE00CCA
	for <yocto@yoctoproject.org>; Wed,  1 Nov 2017 08:02:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=/vlCOmVRb1Qpzi3qi1XqP6XZyRxApLy5VXi21x3YyPw=;
	b=CtWxgMoM6CU39D195y5tu86O/tFO+m+DkZAxWtJ9HI8yjZXe8RuxgHl/tx2/yZyHb5pR4K/uk5Jj/VQ05wzuLd6n/Z4M4y+e1c25BQ88UhDnoE0MEh+8uPGticsCFfN3vnBau64y3dmNUsJdfeubZ2LpS9ETiBgI+l9wXsxpSSU=
Received: from MWHPR0201CA0033.namprd02.prod.outlook.com (10.167.160.174) by
	CY4PR02MB3381.namprd02.prod.outlook.com (10.165.89.152) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.178.6; Wed, 1 Nov 2017 14:47:57 +0000
Received: from SN1NAM02FT052.eop-nam02.prod.protection.outlook.com
	(2a01:111:f400:7e44::205) by MWHPR0201CA0033.outlook.office365.com
	(2603:10b6:301:74::46) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.178.6 via
	Frontend Transport; Wed, 1 Nov 2017 14:47:56 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.100)
	smtp.mailfrom=xilinx.com; gmail.com; dkim=none (message not signed)
	header.d=none;gmail.com; dmarc=bestguesspass action=none
	header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
	149.199.60.100 as permitted sender) receiver=protection.outlook.com;
	client-ip=149.199.60.100; helo=xsj-pvapsmtpgw02;
Received: from xsj-pvapsmtpgw02 (149.199.60.100) by
	SN1NAM02FT052.mail.protection.outlook.com (10.152.72.146) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.178.5
	via Frontend Transport; Wed, 1 Nov 2017 14:47:55 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]:59492
	helo=xsj-pvapsmtp01) by xsj-pvapsmtpgw02 with esmtp (Exim 4.63)
	(envelope-from <vineethchowz.chowdary@xilinx.com>)
	id 1e9uJ9-0000oB-CI; Wed, 01 Nov 2017 07:47:55 -0700
Received: from [127.0.0.1] (helo=xsj-smtp-dlp2.xlnx.xilinx.com)
	by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <vineethchowz.chowdary@xilinx.com>)
	id 1e9uJ9-0005eV-9T; Wed, 01 Nov 2017 07:47:55 -0700
Received: from xsj-pvapsmtp01 (smtp3.xilinx.com [149.199.38.66])
	by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id
	vA1Elsf8015973; Wed, 1 Nov 2017 07:47:54 -0700
Received: from [172.23.231.102] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <vineethc@xilinx.com>)
	id 1e9uJ7-0005eE-O4; Wed, 01 Nov 2017 07:47:53 -0700
To: Andre McCurdy <armccurdy@gmail.com>
References: <c48d8ea1-c618-dc24-6200-f7511f0e506d@xilinx.com>
	<3d885b18-f114-fcf1-0600-0903935bd1ab@linux.intel.com>
	<CAJ86T=XGnuGPEnnKobJDrYNudEdbV0i8UKPzAFzcC7+Ob_KqEQ@mail.gmail.com>
	<DM5PR02MB2283899C6F536DA44EC707D2B95E0@DM5PR02MB2283.namprd02.prod.outlook.com>
	<CAJ86T=VUvNuZNu4GYY-aqXVMRsOWcLqg7FWdMpwhpg+-nRghxA@mail.gmail.com>
From: Vineeth Chowdary Karumanchi <vineethchowz.chowdary@xilinx.com>
Message-ID: <bcc83a49-7b9a-20be-22e0-0bdc881d6b96@xilinx.com>
Date: Wed, 1 Nov 2017 20:17:51 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAJ86T=VUvNuZNu4GYY-aqXVMRsOWcLqg7FWdMpwhpg+-nRghxA@mail.gmail.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.1.0.1062-23430.004
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.100; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(6009001)(346002)(376002)(39860400002)(2980300002)(438002)(24454002)(189002)(51914003)(199003)(106002)(478600001)(72206003)(189998001)(39060400002)(6246003)(4326008)(9786002)(966005)(6306002)(1411001)(23676003)(67846002)(54906003)(65826007)(83506002)(231993002)(50466002)(2950100002)(6916009)(64126003)(229853002)(93886005)(2906002)(77096006)(65806001)(31696002)(33646002)(63266004)(50986999)(47776003)(76176999)(54356999)(36756003)(106466001)(230700001)(356003)(8936002)(305945005)(81166006)(81156014)(575784001)(3260700006)(5660300001)(58126008)(316002)(53546010)(31686004)(65956001)(8676002)(107986001)(5001870100001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR02MB3381; H:xsj-pvapsmtpgw02;
	FPR:; SPF:Pass; PTR:xapps1.xilinx.com,unknown-60-100.xilinx.com;
	MX:1; A:1; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; SN1NAM02FT052;
	1:FesvfWIVwnCp0j8TtLzFtikSK5Lzytjfp27jaDJU5eOfyf8wiFGS+mRfeqtU8mfLarc0Wc1hWbbpN+kDFmZ57rEMnayKAYRcpHSxZUK3RVHDUOc5OU0kL4w1dUhV/xXx
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 99c1c52a-9ecf-4be9-ea14-08d5213789b7
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(8251501002)(4534020)(4602075)(2017052603199);
	SRVR:CY4PR02MB3381; 
X-Microsoft-Exchange-Diagnostics: 1; CY4PR02MB3381;
	3:Z1wID3gbyFJU9TP/d4Q9zkSFemErKV2ozDDLf/YfV9zzNJ/OFHOEgx26eg6rHnBpEZ2eF+eySHbUcBfeTOK+rp+SBsRQi34AgRs0boexD34vW4sMpLrbdIsZ7smi6d8ILAy1tC48+6ElI1icMbYHULLbjrhP5gMQoIYor0/73xCTwkRRDZD+Ysolip7R1mrV4/VWd6zkI7PJwRPlTJeDGN/4fvu3F7hpaCsmDdAFae5mRBBaOUu4C3axSpRQVjel1nW3wlTN7RHt36dWZNjGV1r/hD9UbOloeXo2bBgwx9+eADnbTAawyj2mvABLohPGz13ljYdh31oGunGvgmLltBNx2EbdCocfOmdqvi3nAM8=;
	25:JdPtKuu2/ulOi+5kr0G0WSW0Jqv02/RRc8XkKZN2mZ81G6MMp1hcRFBsjLzdoITMOUPl/ZsFGKPlrCUgYOq1XI/RSFcqgmgyflBpgz39STpfOXUkkVyhZ/SCUMXE042odZkYHILT1dKj1pJ4ReeYmQd+jzc3H5OED5YayE4t70EiXcQSncOOnIrvJMcc54Yuk5TVYbq0BEc8oBcqFgJS8CLCcEz7mvEE0f5XTlico/znMDq2H+jf4EkIpeK62DN8ZU1PmyL09V+6uICW6QedJw0hKy0yKjXOjSXnmHNQEOb0ZYaqMuZQ22QOMJgbVoVQfHguDx5w51GWQ3UGkRYw2g==
X-MS-TrafficTypeDiagnostic: CY4PR02MB3381:
X-Microsoft-Exchange-Diagnostics: 1; CY4PR02MB3381;
	31:zEJf/3Lr7vfeWhOYF2dkfw8CRQ2eXV8AwnDIXMZcijHDey/wY3ypHY2d2XOTuIT2ko42HJvhUh18LFin/vddFnCpOnxxdQ6XzPVhVtRYk8rlHJObpxsrVsQzviNQgjtgpc2A4wPcTL7jfLlavTOQ2zuUjXZvYxHAr2pVdoHCNMGkDxm8F2kKdVBzWELh/HeppWt2PJ3KOcD15WKOPWygCMopmrBJqo/tFpnVCQlluO0=;
	20:1L/UWGuWbYNEK2brcGiouRJaJXfKMVL72Gy+B4ytdrFl7McRtGA0fc96EYRTtaY6fPHD9/MT896is40vvBcW3Zu96fGvncI+nM57Km7NsAQuNzuIPHk5gdgFuUcUATueuFrEaCyVab7HZkLaJhViH70BQgkwgQSwwYwJBcmr3RX6HlFPO9zrDvvU0oojVXULbZntrjjPS+sEUFK3ANyxghP9B07CJZSXZPqsqHXP8BuRrZHa+mZ13b94CbteRctwI1ZluJMw9MH5OzlQbOBGQChWIRJ4lbs6B/j1tT1bMqYQWghNQtjyZ/k97C8uGZIwpfQ8QElJCBzC4CNONQITZCtDG1WdDZ5HfStlM4xn8flQb6AoTyxlqOuRFIeUvkv1YqwGvdeUdPAKHkFYy0U/Fb60PDG9TLy/7p2xvtPPrlnABiKTBcgWxepVlvKzvfeBwaIwd38CT7YkbJmD/NCnahkCl/5Ensbxn+4ISrJhklDBdG4+pAeP9l1POu0CT4IG
X-Exchange-Antispam-Report-Test: UriScan:;
X-Microsoft-Antispam-PRVS: <CY4PR02MB33810B5220AEAC288AD6852FB95F0@CY4PR02MB3381.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(100000703101)(100105400095)(3002001)(3231020)(10201501046)(93006095)(93004095)(6055026)(6041248)(20161123558100)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123564025)(20161123562025)(20161123560025)(20161123555025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:CY4PR02MB3381; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:CY4PR02MB3381; 
X-Microsoft-Exchange-Diagnostics: 1; CY4PR02MB3381;
	4:YgLsuZhVJyLoAaTKoANfMvdU59oTPy+MkVtZfRnWmqmna2aXNZKnfW2EcM65PQQBDh0Tk59wMZZHQj6b5RzhxsrHvUlJq8nCVKGccVJ7ckpIGd/X8b+F/Qexlb5qyYzb3Rc3S8zg0sGnu38Ab7MjCYM+Hp+CrdAc2OM0Z/s/sIB0nz8umlUSu2HVttOqzPgijZzy1orGLZj1Fuk/jQT6pTH+coOQ1sc7irA2vJehsj6+prCPwfr+KxHllre/K0vyo9NOFydf1sTi2lxHtUQZGQ==
X-Forefront-PRVS: 0478C23FE0
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtDWTRQUjAyTUIzMzgxOzIzOjFWb2dFdjMycitGS1Jla2lHTG15MVFQaWNW?=
	=?utf-8?B?SHpJSEY5S0NybHJQWTA1c1dkVm9BdFRlTmNNWWFxcWtGREFERTBldzNQamFO?=
	=?utf-8?B?U21EcHFnRkFCdC9EazVtZE5tVWhKdk1XNms0dElqZzY0bGFkbWQwUlF6UXlo?=
	=?utf-8?B?RmNkQXRUNkw4MHd3Rk96NGNVTThEbzJZcW1vL0VTM0NGWUMrN1R6QmJTdjEw?=
	=?utf-8?B?Z1U4bU81Q2loUFp0TVQrTjRxNjlpTUFRZ2ZTZXIvRG93Sldnblg5UWFkbjdT?=
	=?utf-8?B?VmJJMkVsTUlaazI5UkNidzFJYmo5WHhwc01RS05jNjBvVUJCOHkyV01hOUN2?=
	=?utf-8?B?Mm9EbVlvYXQvQThCN0ZMVEpuVnZTR281dUdGQVRtdlVGa2ROOFEwbS9MZHB6?=
	=?utf-8?B?SmhrNEt0WXpxRTRncUZ1WDBJb3hNQ2NSMHFvZzByajhJc3o2ZExrNVJ4bHJ6?=
	=?utf-8?B?R0lpNHgwckhRRWs3eUR0cUhiVUJVUGRlQWx0U1A5d3ZZVUxXTVlXTGNrTERJ?=
	=?utf-8?B?aTI5L0F3dWpzVS9ZOHNhSEM3bWRvSitaWkt6Z0ZkSC9iLzB0ekxvcXpacW9E?=
	=?utf-8?B?OVZjZ0JaSnYvSVExd3R6ZUM1R3F4SHlTZUZTejVGY2tBK2cwY1VOWEtPOVFr?=
	=?utf-8?B?bXJ0TFdSZWxNcWpoMHhEd1hLRXQzSGFwTGxaS0MrOVdxTWc2VUlleUF0QkVG?=
	=?utf-8?B?WWtEcGtJNGthT3JOY3REWUF6ZUJ3TEwvMHF1T2ZwZUFBQkFUTFVOUkp0cWRZ?=
	=?utf-8?B?UFFZZVU5OFd4QkxrOXkxVThzenozQkVVUzBjU29HYy9mWUs4bjJRcHJrd3RL?=
	=?utf-8?B?MFU2ZXV0OGRpWUxpdjk5YVR2Ykd2bC8wV0kyUDBYTjNHd2duWmdyMzZoeWJP?=
	=?utf-8?B?WDZqeUJPMVpLS1E0S0FJWnc2b0lOYW9rWEVKMUZrclRoTXoySWRSRUQ1ZktQ?=
	=?utf-8?B?T0FpUTJ0cFBrWHF6TERaVlJXeW9DRFM2clRqSURtZ3g0ZFdNZUNsb0hwN2hq?=
	=?utf-8?B?b2pYL2FRQ2d4alVFZnB2YW9YS2pidkZCWEhzZG5qcUY2U0xUeWV4Y0pURVh3?=
	=?utf-8?B?cTFCVEtLMnUzSVFVSHdDWWJmREZDMUswRVhVWnF4V3hCRVBkWHYyNTl4SXND?=
	=?utf-8?B?dHRmRFUrVUNUeTVwdHZsVEh6cWZERmRsSjFud21naVdQRUJYVkZGejF6S2pq?=
	=?utf-8?B?ekRKM3c3UmtLK1UrbHcvV0RwZ3QwQ2Q5ZG8vMUVlY1duUXptZ3B5TGI2QXB5?=
	=?utf-8?B?ZlZjZ3owZC90UEZGTThxTjQ2OFROaDNTNXBOZm9xRyswOGlpMmJmQVBLYjRj?=
	=?utf-8?B?VzlrYXE1KzNtR2FhaFM3NXFnTjJMaFdWNWpXc0MxRkdkN1psTHdZaTQ2bCtJ?=
	=?utf-8?B?U21wSXI2S3RpQjIvZWYyemwwVTh5WFJoTTVCK0prN0YxWmpLMlJqaUdCVEh1?=
	=?utf-8?B?c2xQMUtnNTdXeHhaQzI0WjNBTVZFNExJT0ZHWXR6R2g5cnZlZWppQUh5RWZl?=
	=?utf-8?B?UjNzQ1lRMjk0cUVrdkg4N1hqcklpclBBcDNjemxkQUFNM1grclpCMFhXeVNG?=
	=?utf-8?B?aW1xNkVUU1puS3NaVXZYOGhPeEZaSFlmclk3SGxHbXFVQmdKY1hHakFYY0J4?=
	=?utf-8?B?ckFtWldsL3hrRm9EOVlvNGJlbWFzRGpsL2llSWpNU1hhdmJ2M0lpR1BXWjVJ?=
	=?utf-8?B?QUx0YTlELzh5enVQamthN2hhaXFEOGZjTVdneS9UUkM5Qk9jdG0vdFRidXNI?=
	=?utf-8?B?eVR1c1FCNkIrUkFkeHdjb1NyeS9PcE1wa0R3Yk5ZZkhCeGNaYlR3WnlqamZy?=
	=?utf-8?B?RU92TGdBZ0VxeSszVW1obFFob3VLdFdUT04rS1N4QWZYNExXNlFPeE9pM2ZV?=
	=?utf-8?B?R25yaC81YVZmc1htVFBmaEFJUDFuK3dlaHFld204cWYzVUFSek56TEZ3Mk9P?=
	=?utf-8?Q?tnPfusBVRkpINvOeEOf6/sWhp7HhYk=3D?=
X-Microsoft-Exchange-Diagnostics: 1; CY4PR02MB3381;
	6:tbWJqeWna69C7phJO1EMlmzRo0nlYWVeI47Qdwsbub//1ZDLm0RYEUmrfDCWr7EhUkRtTT5dHx8ghX0EWdfAOJhTVviTq95KTcNrVKR2PEujVylOdOoXPtO3XHwZ4nBzS/8s7bMsy0JhP2H94MRiCsJGBGN8TcZhTlneb8uqM3BPR0g1pe65yJxLB9f3muZG8kJl36Dcaso0tt4rxoBlMdZrVwD41Me/t002RNHO4XU8NGKVd0ruRQWnUZ3+i3RCz8tXslTEuZ86IYCaN8Fgr+wk0/IiFUD6VBjnGkQU9YI2lC4rj5TfgEiGRRuiHIeHkgoS8QBOopVoG3kRXcApkEAdZUO1GR6XW9Fc/QIgNUo=;
	5:C9vxy5nKGPBHOh8xgNM8X6/rzdUufpQ9aIwimlZOJPtN3xRYrMETwPCPb6z72i7RBO3rnTCpFfuKYp9NCPI68VBm4KjwH0yv0icEn8hJa+dCUjDYYtF0OUdbqvrXFIrXbrSENr0nOgLXC1l49tJyiX8V5a7Cm7U28MT9OpPA1cE=;
	24:eHh8vS8RSyEWVnvKnUFLjMaeo1CIp4Mf0cLFYKoRNc29Mw48WzBtCL48ElQd3EIhttJMLdbxKixLk4zRuRLsAIOq55o6cc/VqlQdh8y1sDI=;
	7:vDHotlZbBvK/jzJWyVD/L8pVvc6ywJqi98X/sNJTVSfRriXalX9G42rPvTXXcYUuQz3OcuBDxZr2bbDuHH4nCpdSN8dmuML04FkBD0t2HFHQLuZoqE2qomrhVrMx9wPyVxoCDD3CeB2msfqm8CfBgIic/VPJrTqbT8NqZRMhdd08MCPVA4HVEjPHM4Gf7t/FcO+GmnO5FcKPeBpNOb55kDfBqgaU2sPqMirKV304J/bxd4WfA9ZYQrC/7NWUcwos
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Nov 2017 14:47:55.8367 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 99c1c52a-9ecf-4be9-ea14-08d5213789b7
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;
	Ip=[149.199.60.100]; Helo=[xsj-pvapsmtpgw02]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB3381
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Checking sstate mirror is hanging at 100%
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
X-List-Received-Date: Wed, 01 Nov 2017 15:02:09 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 11/1/2017 12:11 AM, Andre McCurdy wrote:

> The fetcher explicitly tries to avoid that by retrying each file only
> once. See retry logic in:
> 
>    http://git.openembedded.org/bitbake/commit/?id=54b1961551511948e0cbd2ac39f19b39b9cee568
> 
> However, there is a later commit which may also be related:
> 
>    http://git.openembedded.org/bitbake/commit/?id=6fa07752bbd3ac345cd8617da49a70e0b2dd565f
I didnt have this patch, presently i am on morty branch. I will check 
with master branch

Thanks for the info
Vineeth
> 
> Does the version of bitbake which you are using contain both commits?
> 

