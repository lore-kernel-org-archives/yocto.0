Return-Path: <alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68D27E00BA2; Mon,  5 Jun 2017 12:59:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [148.163.158.57 listed in list.dnswl.org]
X-Greylist: delayed 332 seconds by postgrey-1.32 at yocto-www;
	Mon, 05 Jun 2017 12:59:51 PDT
Received: from mx0b-00010702.pphosted.com (mx0b-00010702.pphosted.com
	[148.163.158.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17F83E00B21
	for <yocto@yoctoproject.org>; Mon,  5 Jun 2017 12:59:51 -0700 (PDT)
Received: from pps.filterd (m0098779.ppops.net [127.0.0.1])
	by mx0b-00010702.pphosted.com (8.16.0.20/8.16.0.20) with SMTP id
	v55JohYx028948; Mon, 5 Jun 2017 14:54:05 -0500
Received: from nam02-sn1-obe.outbound.protection.outlook.com
	(mail-sn1nam02lp0019.outbound.protection.outlook.com [216.32.180.19])
	by mx0b-00010702.pphosted.com with ESMTP id 2autx2emq4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Mon, 05 Jun 2017 14:54:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nio365.onmicrosoft.com; s=selector1-ni-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=1yqjMaQl3AAMQpJZL7FhDsa5OBPhTBZsDOGPR4UlQUA=;
	b=al13T3uTRkXvbqNQ5syTX5ZoZZcCYvgsbcggULHli+zPScpTmZgHkPh9SjOqPwCJB/oWI4oYzNizK+W+LPikLahzzPaT8GR/MAhPyrwnIEiie/BZ7ec9gLV/oBMO1JwSSYYr42/KlGOlHebvhEzKDmz6xcoZwW1C/QoeYjDDMyk=
Authentication-Results: intel.com; dkim=none (message not signed)
	header.d=none;intel.com; dmarc=none action=none header.from=ni.com;
Received: from [10.0.62.53] (130.164.62.126) by
	DM2PR0401MB1327.namprd04.prod.outlook.com (2a01:111:e400:5023::11) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1143.10;
	Mon, 5 Jun 2017 19:54:03 +0000
To: Gary Thomas <gary@mlbassoc.com>, yocto@yoctoproject.org,
	ross.burton@intel.com
References: <841bb3fb-50d1-bf93-1a14-a507239330e0@mlbassoc.com>
	<CAJTo0Lbu6vQeRHmBhns-YjWNf_bQOUcn13-AhuOQq5KuvZJgLQ@mail.gmail.com>
	<859693e4-eedd-9212-6dc3-eac70c938c71@mlbassoc.com>
	<CAJTo0LZfKRW7NRmJX10v-EDGNmpzr36KmOP8+Nhh7dTn-ejKVg@mail.gmail.com>
	<d2d7d713-963d-532b-b604-c48f27f34cf7@mlbassoc.com>
	<5ec99740-654b-922c-6f6f-05ac713af456@ni.com>
	<d4eb2cd8-ff85-f00b-37c7-f3b36ae84f09@mlbassoc.com>
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
Message-ID: <c7d0f483-1a59-4fbc-301e-bf642c7bd821@ni.com>
Date: Mon, 5 Jun 2017 14:53:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <d4eb2cd8-ff85-f00b-37c7-f3b36ae84f09@mlbassoc.com>
X-Originating-IP: [130.164.62.126]
X-ClientProxiedBy: DM3PR12CA0046.namprd12.prod.outlook.com
	(2603:10b6:0:56::14) To DM2PR0401MB1327.namprd04.prod.outlook.com
	(2a01:111:e400:5023::11)
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM2PR0401MB1327:
X-MS-Office365-Filtering-Correlation-Id: 1e44f5b0-d98a-40bb-2f73-08d4ac4c9e02
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201703131423075)(201703031133081);
	SRVR:DM2PR0401MB1327; 
X-Microsoft-Exchange-Diagnostics: 1; DM2PR0401MB1327;
	3:tXIZ/bgBfTbhnTzniB0E/2jP0ZB0OTgM+Mxhtwu/n+ChtLAjIMfDIVKjb0hC3zyOKYMlaA+e+nTtA5RU+vlZh6F5GR6ikf0Yx/Ss9lv19/R1Tt01mMlvrWC3YreTFKlMrxzScX6s4yQn99VN/FFf0WxrL2ve1OCY8suKy3y1erWFlUWIQWCZGkUrbiuf8xVw9ypUYPGQ0L2m87C27mMnJmXr1oKaac03du+f8xedR2NPfI3tHfBiHeyfmPY7INRvubhH3vhzJcLA4hWx5YfYhtq1uTwK+26O5Bs/UUWMhscVaKMcF7b/AvWaPoLmLFaWtwCzZ/gVuyKKCwcrOA5J+A==;
	25:EMyQIvuQyWHSD48hdg+RQcN3PbDek2ggr2SSnnE52Q5+3Pfzi0zEvLqCe+KizmYu1g03ZfEqHOsudDyk1AmjNemtphf2aBdi/FRwBHUqBi9bQ8QDRraB+xnzWJ+G4ndzpORmPmqnqo3CGkon5TE1xVXyAztCYN2+mo0E4Y4zni8BoYUUu27PafSTxKJxbr3NdorBYVGgVH/nt6yzNuUGAVziTJkgsgkHwLyKAE+TcakY+AY5yQPfTWI0Kt8ewr47MHdfn4bKA6+c8kciDMW1D9rsv+bEM+/7R4KGICRcRiyIEYUaF2wCQOTlC7nCgY+/FYixVAty8szR64P6wzbJwqmKI5ubiZF1pJwqKMvbRaS2/iSkQ4VXLT0LGoS0sym0MPA0TDhJGNUH5fG+hz/6QHQuGUC/z3zULT0HEQh6HFxy04J51sLl3otPiAv0qoI0BwKPwX43N/mvNeBvt8uaBKrvdvwYF+YdLrQQZgmkpM0=
X-Microsoft-Exchange-Diagnostics: 1; DM2PR0401MB1327;
	31:8bHH2Q4MBXtwJ55WiWCwi9BIKLsdgKS+dAxEXUFlwuTfAce0B3RyeowCgfaaM26UR2WcwC+TpmBq2KgoZ+2RhVFsvUyz2sJDdiY0EvuobUnm6DNCQ0tDHcLaATm+X4iVimnHR3rynG/GRmzhIdQ0jYmfGEiVU79pOHaTgRAsbEPTuZ96hLEiBlw6NfPMrbvGut21zZhiIT0vM7VljBqH2Vrbt8aeOqvGuAWhAr5OF0ufgRD162/ZfJydtbKMQCnZ;
	20:X0CkYErtJasWyctgnXTCNmsILzko87W9OFHKwK4oAvg4umQncNz03uHUyP/JPCzXmc6Q/8i9tVymXtChirU99Pj1VdUy2MqOdDTxLy04+VpHde86S02mA5E6DgMYYhqVUOd5fCp5OtbhvM+SpGZwiu/H7LkmrA2RQhiCUSKHGNodMNOQlL0bnzr37PrggVwElsU+LZzvswGnghfqTnu3FS/pJ6AcOX20VfWK8oKCKR/hykDc8wfYn9GezCz2CmhA7rjWD289ettVNwyGZJrY+nSNjwlW5pabWjkqM1GJVFSY0sDJx814m7iiS55croxk04HppuyQh+zUlMQZyOfUPkcWNjuCJS+/M3PtCguP8lq/29KJk3VP0tvvvtUJZVd7XdmDg9e8lZkNll9mNG0X0yaALSJLRmx+IjImfEyU7JLYZyi1DZ/8SBemMksKO4d3n6wa3LSKxv2ZQVVapQMUNOTatQuAYbR4m0CepbcfrdW/jdqfCJ3CR0V7DcO5ZfqVIGxX00W/w7Wfi5f1gK58CdsGMrnfqzfx/S2DI+qpXRsZCFqe1+K0+MwDBhMotMsGMaeCWaIJercl+169SNATW2diP+q4DhtkDhkVRd7atWY=
X-Microsoft-Antispam-PRVS: <DM2PR0401MB132770324ACB420BBEFE505586CA0@DM2PR0401MB1327.namprd04.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(8121501046)(5005006)(100000703101)(100105400095)(93006095)(93001095)(10201501046)(3002001)(6041248)(20161123560025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123558100)(20161123562025)(20161123564025)(20161123555025)(6072148)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:DM2PR0401MB1327; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:DM2PR0401MB1327; 
X-Microsoft-Exchange-Diagnostics: =?Windows-1252?Q?1; DM2PR0401MB1327;
	4:rAYF9DgC7oIYKj+AHVLqzJFtiesNEroCZ77g?=
	=?Windows-1252?Q?n3vH2Ljx857UMzxJyT6L2V09BqRjhov6Ln7E18oYhzu+vs/VOWYYA1oO?=
	=?Windows-1252?Q?3lgD6c18+ZAaPnHDuvBJctYTG2yZzA3bZdD8V7o3w+F0JGG0aryu/T4u?=
	=?Windows-1252?Q?Bd9LcSXSp2jqqeH/JEjYBcpyBi3PQB9ikRH3oWaBFkXurbdOqHFwqu06?=
	=?Windows-1252?Q?MvqkopAZ+7UxIL2Md9CPwPbtpLVIqgGpxs1JPUEiDrphKIOX4dFofcyp?=
	=?Windows-1252?Q?6bfMFwx45+UKUbWPFfWnbq+K1zg2U4Olnu6EXOWdVO6gpOIQw2uArh3n?=
	=?Windows-1252?Q?iaBAOdG8X2b0rKQhNxgXi6b8U/pw3BqZfGRW4DUHrpA24DoMb99qx8fb?=
	=?Windows-1252?Q?c2uRnPE//oR7SO24LdmkfbygRSXQPaKrvuIeeAFE+9ncmHIWryMQqoy9?=
	=?Windows-1252?Q?IsE50wuli2zRgc1kt9TFspuG6k5Y+xyzXmo4Q4MK/k8lqWt6OGbMimgJ?=
	=?Windows-1252?Q?jQ0lUeOeaZY46KSCG7xnYmUi+8oQKqBSTauXjsQC2LpInobPVtM62DxS?=
	=?Windows-1252?Q?pos7nJNYvcv0Fh+QYv3MRNgN3kgcYLdR4BVronwAHyNu02HUoIg5tgcw?=
	=?Windows-1252?Q?Zvw8sqpdPwh4c55kPXYBph+8A0Z4Oh11BQsusgny+Euuu6G+Ob3iYsSx?=
	=?Windows-1252?Q?qgtix/g4eTru8emUeOy2P2BqDQaJ2Gu/k2JmcB7CAneu9/2xE56n0ojl?=
	=?Windows-1252?Q?0DgZ34bllefVoFnppAVku2ooSTzd10ZE3j2AW5EgBoS8+fMXZslxNzE7?=
	=?Windows-1252?Q?oEEgzzVnqD4pydx2P2xThllXgxCNPLef8tPKfn/BL1KrU6Bnm0UfI7YO?=
	=?Windows-1252?Q?W4Kg1KFXVDPwI2vTtSGunEndz9HMRKqYUa67j5evkBwAd7HGinDtMfyn?=
	=?Windows-1252?Q?O0MNF3oxl5Lg+k5oZm9r22u7xPNcF9uBeei4vqIx0dWvtPP/PVlT7czC?=
	=?Windows-1252?Q?N1aOqDWR3ZYRgEm6iVqHuSEVWK+6XOTqVSOKwLwUY3jPQ2zNnIR7REKd?=
	=?Windows-1252?Q?X/6wJ6hlggldMSZq45WNVH/EDxt4PYuws2BUETrSdX6CP+YH1Intg364?=
	=?Windows-1252?Q?vEVgrWz8SHWOhNysSlDA/JcfGRSxk8Ci2MchrmmfXzrct6N6DtcYYDvI?=
	=?Windows-1252?Q?z+XnDQxHzGPHDTu9gjzcF/9ipt/E0oyvblgqanr+eYq2pKfI+29l?=
X-Forefront-PRVS: 0329B15C8A
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(4630300001)(6049001)(6009001)(39850400002)(39410400002)(39400400002)(39450400003)(39840400002)(377454003)(24454002)(8676002)(31696002)(189998001)(6666003)(77096006)(6486002)(3846002)(6116002)(33646002)(230700001)(86362001)(81166006)(76176999)(42186005)(2950100002)(31686004)(50986999)(54356999)(229853002)(305945005)(36756003)(7736002)(110136004)(5660300001)(38730400002)(53936002)(478600001)(6306002)(50466002)(5890100001)(6246003)(65826007)(2906002)(4001350100001)(25786009)(966005)(83506001)(65956001)(53546009)(23746002)(93886004)(47776003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM2PR0401MB1327; H:[10.0.62.53];
	FPR:; SPF:None; MLV:sfv; LANG:en; 
X-Microsoft-Exchange-Diagnostics: =?Windows-1252?Q?1; DM2PR0401MB1327;
	23:FraKxPAf4o22jlM6tcc3Lxd2eTjHAP0yJ7k?=
	=?Windows-1252?Q?EagjLqo3WcgXxUFs/H6dQFC5tZaSYWJszk9ARZt7BNmnImGmToTDUeJN?=
	=?Windows-1252?Q?AFtybiu/tgdrk4FwdrEIlU24rHZNpuAoHiu1W0/Nmyx4l+sNOtbl8EPI?=
	=?Windows-1252?Q?xqLiXibdLBbBMG9fs6BfGYNPk2vRjRiSRPc5oltJ3Ug2Qku9JAFx8DjU?=
	=?Windows-1252?Q?i2n+M9pcZB8PUdPxaMNJDQ3MKbP8rnvXY4o35UlLwk2KFRQNR1CYmXvG?=
	=?Windows-1252?Q?s94CzlQBDJCfs1L8KCBsfxd9VRfPg55ZgoQtyWm7cs4yCKn8wGoHFRbi?=
	=?Windows-1252?Q?he90f6sSh5I3hlMWwY2pYk5qxYmYu3YZtJIZevOxsQpdN30xwTvbMad6?=
	=?Windows-1252?Q?Yqc2Jcf0FGupOsP56hRR1hHwgnsUVmfvO7x8PxcJB3MqcpFRg26ANfwI?=
	=?Windows-1252?Q?AOmXFdypL499sVTdtGhub7jLTLqSIj6Z1JcieaGEDZMjXXkwFvvQTEm8?=
	=?Windows-1252?Q?n04ebjBfJ/qtLtf5FlwAljst+7q4r7A+WzD+rt8lFfXq7sJTpGD3SobT?=
	=?Windows-1252?Q?cfSiDjxrOGPwq6f/KoypfxpOlN02aZD4BTj09CqmXeHsMlbUtPzpIRgI?=
	=?Windows-1252?Q?EnmJM/Prp+L3MBs78kza6loYXBGoGJOeeznSA71yj6LjKNIZYcXW+FFN?=
	=?Windows-1252?Q?rNKEzfLuy13C3YKyvu0XTkYWB5fhCHVHDZ7C8/r/VxaCU+mU7orz5QVX?=
	=?Windows-1252?Q?RIJyqr5l+rA8XdU5lfN+mqTalHHpUkrqf3EyXEKIn6BuGqJC34OKTd4W?=
	=?Windows-1252?Q?HKpIS44qjdXnGA6dBXwinQHHyCwfqU8chq7gzSerh7YUV41oPJahGTU1?=
	=?Windows-1252?Q?2oTlAuXoeyNqqiRhB5j5foDSQ9WRBFujehJNfbXBUHnHNyc7uH+x/POi?=
	=?Windows-1252?Q?5xt8foEGoJzqjqzuWWOt6aHAq8E3YkSePaWdR4/UBrcT6QIQlRiSZ++j?=
	=?Windows-1252?Q?Q6ALxVA2UA6pdK/lk0Vq4kus3jbm3X1lQyasUVG037eZ6skPbuHk/HsP?=
	=?Windows-1252?Q?Ad7ahzszFuYp1bFUEHURxzFg82zwCtJv1+55iIJ5ICU3BJLLMPdvfesf?=
	=?Windows-1252?Q?CMza30oYiodrxmHexREcEy9aUUWbk8GdHnHBsBflz5JshmwelRJY7JJE?=
	=?Windows-1252?Q?bzC+ZD5+ES7jsyWMtoSKEsgLokx1q7NfXj+SUuHpiLzkq03RQnna31f4?=
	=?Windows-1252?Q?bg3IWxhfkszvhV66Ty68svpkFytdqDoxrcvEuvHwTR+rzM2oTTtdXiXU?=
	=?Windows-1252?Q?NYiFH/Py27g7eSoyAHBWV8ddVFHSSE7b8WSG1BEireurThY/dRuIOfL1?=
	=?Windows-1252?Q?N5sGF35EsDIVB4YmAPU/Ui6u1uQLMNNRsDQ=3D=3D?=
X-Microsoft-Exchange-Diagnostics: 1; DM2PR0401MB1327;
	6:O6MPDHzZQltli89f0fm26m/qw2mq6gnWm+O+9tab1KsaaQEqTbS2VzXmsP7BMSqg0NWbymh+P60zdYfbJeNDiBC6h68jcyuy3MIOsxrMPgsAOtPiq6evK2fZ3AtZkJfop/c+4hHKucjkbCKmWlwT5TYqXbAbGnRVhUezxWG4F2GJW3bLKRWuaOXt/ysY/U9yYXZ0WSksF/IMaMpzPXOy0GsISGAzZQ22TeidWG5rmUV1TCkRGlzZs2IEHAiXKbvpwdVaaysTONFUAsZRiRGi3IhQUWrtTci/X7B5TrxfAQ4lM6lYrsHRy1ktAhmCDsEzL3cQTnZaKAVS0yAarHcBc+HAbFNN1bYR0QCb0FDOMS6nNyWLRR0Ijscwc8bG2EHdJ9k6uZebWwtqWmXuOuYSr0I1oBcDyYErOQZ6xeLysE83PIOc5LksoQDmtUZVBPsctFDYYSD+aAB9/Rf5bsP/xw04LGUaJNThTJZgmND0rSW3hJA0DkqgPKZnk5lM/U9dydzNBksU0ZXkZDC04ei8jQ==
X-Microsoft-Exchange-Diagnostics: 1; DM2PR0401MB1327;
	5:mNJu1eYuBxuBpSf2w7FAKCmqc1VHTfHd+n3LZad3DbITR8w91rszdw7rDmtWAkyqu7NSBmK4Kqp3PbzJUY5TBE71Xb0EsBZDILnilkupsZVAveWPQjJGcjfK2h1hXPm5GPUR2DtrReesP1tqpVw2uiZ4CrnQ+CuqcBN/hlYqA0Lf3H4+TT9YD61kYT1N+NF5Qmd2XOHvgkil65NkW0NYWKAfUImVJc6zF/VxbwaGXZ9hwbS7tWbEqNl9i1LipjylyJ27tpH8rxyZoDAVpKeoj8Sb2EWJ4yR7UG1D1ABAjxyKQMy5tCu83vRjmch1KpXnNo4AOJ8o0QJTQwhelyBLnJWABn8AmPFt20v2t6ds+8NJcSGOepgTv0LfDKCjOdE4xvbRdnjeUMzgCQMw69h9mXAHBe1R/vN20ecCYumd4SZAmL9w7eYhdjDuNSBavGXLQrh5DMFjkAMsC17odPKE9d6zpu2atnVVqwSjJ3gnodWmJiVVAgfFlrB2QSTVnfnE;
	24:YDZcObExg1oMRCGYbCudgZ0HVPOpFss4gt1Himts/CPAkMC/sErHiIvsbu38GvIf/y6WBHzpE0TMfZPsfJgP1GtENyHTYhT09OCxy8GkgnA=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; DM2PR0401MB1327;
	7:VH+c6obdQVGlRhyUbp9rtyx5lJQDVfjDR1v0IOa+5PA8yNRzEdDeUL1QX3v7GkPUoIxuGK4ZVDeKDpyhOD4fpZO6YSrlqXyFpme9IjO2p2bOKfuMPkOdiuao8ApArPMZ7TD/dRe+cmApJrxn+AqdW4SHSJ4o1lPrWfM3R/XTdEQ0u4sFQzp59Dn0we+relvx6eFujLAWszEXSndBhdXboC19lR4tJ7izs8azhWKO+pxOzX+ZwY19yqC9epIenCKRB8z8yg6FnU14VuIybAy2V01JP72ujl6XEzd5vsg+2ORlqOf98MhThUjqPCGWWQ5r3zTEUnGVwwtBCS1BnJ5/3w==
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2017 19:54:03.0924 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM2PR0401MB1327
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2017-06-05_12:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy
	score=30
	priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0
	bulkscore=0
	spamscore=0 clxscore=1011 lowpriorityscore=0 impostorscore=0
	adultscore=0
	classifier=spam adjust=30 reason=mlx scancount=1
	engine=8.0.1-1703280000 definitions=main-1706050376
Subject: Re: Why can't I install eudev-hwdb
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
X-List-Received-Date: Mon, 05 Jun 2017 19:59:55 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 06/04/2017 12:30 AM, Gary Thomas wrote:
>> Which version of opkg are you using? do you have the libsolv backend
>> enabled? running opkg --version should tell you the opkg version and the
>> libsolv version, if the backend is enabled.
> 
> # opkg --version
> opkg version 0.3.4 (libsolv 0.6.27)
> 
> Built using poky:master (a3d160f9e5826140cc8d6b2ed1b38bf022443b08)
> 
>>
>> Also, could you send a verbose log of the installation? opkg install -V4
>> <pkg_name>. While you are at it, it would be helpful to attach your
>> /var/lib/opkg/status file too.
>>
> Attached.  This looks like good information - opkd thinks that eudev-hwdb
> is in a strange (to me) state of 'deinstall hold not-installed'

Indeed. The BAD_RECOMMENDATONS for eudev-hwdb directly hacks into the
status file and sets the package status to 'deinstall hold
not-installed'. That works if the opkg internal solver is being used,
but fails with libsolv. This bug is already being tracked [1].

We need to get the root issue fixed, but for now, as a workaround you
could revert 1ff3de844c78e3766c7f92ca17c308ef3c9427e1 and use the
internal solver.

Ross: I added some thoughts to a possible solution into the bugzilla ticket


[1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=11427

-- 
Cheers,

Alejandro

