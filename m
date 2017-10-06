Return-Path: <alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96D7FE00CA2; Fri,  6 Oct 2017 10:30:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.163.158.57 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 930 seconds by postgrey-1.32 at yocto-www;
	Fri, 06 Oct 2017 10:30:10 PDT
Received: from mx0b-00010702.pphosted.com (mx0b-00010702.pphosted.com
	[148.163.158.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5703E00C35
	for <yocto@yoctoproject.org>; Fri,  6 Oct 2017 10:30:10 -0700 (PDT)
Received: from pps.filterd (m0098779.ppops.net [127.0.0.1])
	by mx0b-00010702.pphosted.com (8.16.0.21/8.16.0.21) with SMTP id
	v96HBIVo019194; Fri, 6 Oct 2017 12:14:38 -0500
Received: from nam01-by2-obe.outbound.protection.outlook.com
	(mail-by2nam01lp0178.outbound.protection.outlook.com
	[216.32.181.178])
	by mx0b-00010702.pphosted.com with ESMTP id 2de6hxbdum-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Fri, 06 Oct 2017 12:14:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nio365.onmicrosoft.com; s=selector1-ni-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=TIeFBNbXkaWeBUxafGOWP6EL8CNuDv8hLM6lsx27iTo=;
	b=BwcTx/PHi5kvJVLnsn81KU8tANZKwDhpRZl/m9YJENP7g8+lBVekJjh5SdQ6XbUU8hccDgxtgla2YySnqN5tLyErXIn2tzi3O5MQtLFvbo/Rp+7OW0RmeQODCxMjWbnMxiWVObgvhI4MIdQVTmWJDvsAc7IPiIHZm5ILVC14iSc=
Received: from [10.0.62.35] (130.164.62.108) by
	BN3PR0401MB1313.namprd04.prod.outlook.com (10.161.208.11) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.7; Fri, 6 Oct 2017 17:14:34 +0000
To: opkg-devel@googlegroups.com, Jeffrey Pautler <jeffrey.pautler@ni.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <DM2PR0401MB12950A2DEEDA65AD88CDD7F096700@DM2PR0401MB1295.namprd04.prod.outlook.com>
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
Message-ID: <f53d26e7-9dd7-5e6e-6642-d5beba5f00a7@ni.com>
Date: Fri, 6 Oct 2017 12:14:30 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <DM2PR0401MB12950A2DEEDA65AD88CDD7F096700@DM2PR0401MB1295.namprd04.prod.outlook.com>
X-Originating-IP: [130.164.62.108]
X-ClientProxiedBy: DM5PR06CA0051.namprd06.prod.outlook.com (10.168.110.141) To
	BN3PR0401MB1313.namprd04.prod.outlook.com (10.161.208.11)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3717daf4-345d-404e-d3ef-08d50cddb78e
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254152)(2017052603199)(201703131423075)(201703031133081)(201702281549075);
	SRVR:BN3PR0401MB1313; 
X-Microsoft-Exchange-Diagnostics: 1; BN3PR0401MB1313;
	3:JINVgVFA/tvWlrkcjTG8lkrOjlfR0ydhI6InSlcV+Gx6ExRmbmpQKZrouI2R2MQxPqdaa3Ji55lsjFPzPWzyEBcUf2ZOSp7YJ0remM1YP5RFdwO50LTf3J2O8nEFksp7C4ltoos71NZadeU7XK41BEYbEuWSNMcPxrxlfkdzC6BnNDKuGLsnqlEm5b1Ph62+QjYnJmIdZ3Q+HOSIllHTFs4j0kERocZZkwbZd+ck2BmDWvRLv3CEcwMBS5iAEybm;
	25:TU1SZEIuG98C0F8aR6wVujwUxDufd+JAk3gR3jA3io7To+dtDLZL5WbwC4QHkXXLYPXRXjUFQdz+zUVzZesIvaRQCg7zUt9qOUdt6T1chfOmXlCdzxw/MZ1o2YWD+dlUWNcFXHIgaFO7EG1TFccJ5JXRaMzWiUG+Hz9is1iGXmyUxQGgpEdsgbQ/ww7t1V8PlcJ6tFH5Ytmj0Dq+bzVe2RF5Ns9lcDCdKtwdm1h+eq4IM3FeZM5dm6BbSjV9YLCktJxKUYTPUTdDnmKSaUksX39KKQHS6u1OJyMslrDdZcAGxupQICjZtRPLXQnV+v/FV7+UkD5wvFBHR+5K3zFpvQ==;
	31:TLHFGPO65d9K2Zwe00lTPGxEDfGRnCl9H2B8mwV8kVSpl2yJxnvLmnJc0qWjvwcHOQuyfyoRFJfOG8vgJCPMTmGaQC/Lkup6Wz7FEfmbvIdi32Vp3mc0ChmxdYKOyStGjp6dZ3G+/ohXvqwvbj4qktCu/SzxCsukKshbkETsEh0qiOLXQvDT019hKV5iaChTYbLe8UkBxeZBb8BrU+ghc8xQYXqhTIX1I2fn6OavFSE=
X-MS-TrafficTypeDiagnostic: BN3PR0401MB1313:
X-Microsoft-Exchange-Diagnostics: 1; BN3PR0401MB1313;
	20:cZUyLvXTb0Jj8MTFkKtWRI3NWeUCMzcIZLp5ebhSoEoowNiOdAz1AF2fWOmKJZ7Hrcf122Xbfxlj8ZdzuDvMgc5bp8VZBcOcqhiN9AhG8QTK1Q5+rvjxZw378SJ+54cY8YqUbZRN9A1jsIrsK8uP/kUSvyjJVIcBVnMJAqqwrqggyinq+bj8mbGPvSSH2j6JZmQuk1OPHYdF9SQDWd2lIEUn8C3CEfq9NebNf9FtwXs49CXcbCTstov4zK9IRGl4LGbUUvknFRk5ASWnRuVbPHva+iZdYBKIHZmawAxrP2OuB/tLrhpaLcLq5zQC3AGDnADPMKVUBD/r459MujlvC7ebLwm3NwLQq98OFmxfPPnGjswShGFTVF+Xi8HG2b+Jp/AC+QRMWUpLZuYA1IXnlgS+lzev47JwI1bvN6c3OGdGBrDjSXpDmiVlvJRXITW5DLeF0H93IFKX7ukQbAaJWgAmvmjfRpKyhNgQJh3/4BChKzh7FDNcrX9gJWxGTLvKTA8G+WE9OWr5qQQqyQUoRncADKXpVIZYPpsI+1lW2GEFtUd8AHO6SMGMrxdJezEBkCRWmyy02kDcvSM0cMab8cXGKOHIZrzf3WtY0jOrh1U=
X-Exchange-Antispam-Report-Test: UriScan:(215639381216008)(10436049006162)(228788266533470)(211936372134217)(145744241990776);
X-Microsoft-Antispam-PRVS: <BN3PR0401MB1313A144B11BD5934B47664586710@BN3PR0401MB1313.namprd04.prod.outlook.com>
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(8121501046)(5005006)(10201501046)(93006095)(93001095)(100000703101)(100105400095)(3002001)(920507026)(6041248)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123555025)(20161123558100)(20161123560025)(20161123564025)(20161123562025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:BN3PR0401MB1313; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:BN3PR0401MB1313; 
X-Microsoft-Exchange-Diagnostics: 1; BN3PR0401MB1313;
	4:szluvVwFlFgn1gPrEizDCpbM263a08Eu5zw25SoctYe1jXmNQe6uRY7AM+Gg+9VMC0ytK84XR0TujUjEBXS3dheUz6dPrgOCAeiP08Jw8rtIrfkI/N2Zr67V3ubzARCU7gNCtCgLLHZgt0HaIr4QwP++OVpSyHGzAct7tOiMwDNWpPF3/3bsNEkXnOIXzFxD5M9ft9DIiBXAXfSUtEZSTT6xh3pKe0YCFqzO4/BO8mHTnjXkpJRSsgHtgw2EiZkFhA+zE5J0VyQDG9ctIztJp7ihBTkVd+QhUzg5VMD+AfXTbI0qPWyYkE2jh1tuISo9oX/tZwM0kZkGmv5W75uHjwsDQYQHhzaQWZ4MRrcZ3CuGugEpdWCp0jZd4kw/1mJzyeWgfWQgcozO9/OviwURv2gQsYZ3cz5zMcjoBkF6jk9SrnqrLq1vzYlNHTaS55ID
X-Forefront-PRVS: 0452022BE1
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(6009001)(6049001)(376002)(346002)(199003)(50944005)(288314003)(377454003)(24454002)(189002)(68736007)(6306002)(34040400001)(76176999)(8936002)(105586002)(6116002)(101416001)(3846002)(54356999)(33646002)(106356001)(53936002)(2501003)(66066001)(25786009)(65956001)(65806001)(53546010)(47776003)(575784001)(16576012)(50466002)(23676002)(2906002)(7736002)(110136005)(316002)(31686004)(305945005)(86362001)(6486002)(6246003)(77096006)(2870700001)(90366009)(58126008)(36756003)(229853002)(31696002)(97736004)(478600001)(65826007)(64126003)(83506001)(8676002)(16526018)(50986999)(5660300001)(81156014)(2950100002)(966005)(189998001)(81166006)(6666003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR0401MB1313; H:[10.0.62.35];
	FPR:; SPF:None; PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
Received-SPF: None (protection.outlook.com: ni.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtCTjNQUjA0MDFNQjEzMTM7MjM6d2ZndTRWSUwvT0wwNGgxbFlkRHphY3Rp?=
	=?utf-8?B?K1pEWGs2QSswL0hTc3lCZTM3WUxLaXVkSXBqNTdoMTFiTnh0TGFWZGFVMmVI?=
	=?utf-8?B?SUJyUTFRYVpvSHRITDY5aThsbk1saGxnNlEyR2cwR0E5QnhJNER3NnZFOENB?=
	=?utf-8?B?QXVvMUFTV1kzN2I1eWtUQm44OUl2eSszeTIxUHNTbTA5L3RhbWVnbWFZZW4y?=
	=?utf-8?B?eTFFTzVvVTRVaTRHMHF3NGFFa3Q3NncxaUo2ZmwxR1BDSjc1OXFEV3RsUTRm?=
	=?utf-8?B?SWtmMGdocmE1c0dIZ1BWU3lDU3Bpeml3UGRoc1UwdGMwQm9yTk9KMVZPR0Q1?=
	=?utf-8?B?MGN5L2E1NTdsRW4wSzNUUVJjK2hCeDM4alFOMTRqaXpPVjRrQWU5YmhGZGtN?=
	=?utf-8?B?THhTa2xERnp1TWN0bUdJaWE3MXRMUERSNU9VbVBQYzdBKzFBKzF5YWZvQng1?=
	=?utf-8?B?Vk44cXByVmM5WC92K0J4cUhqcU0wc2lEVVZuWFVoVHNiWmtoRHlUNjlJK1dY?=
	=?utf-8?B?QkVOcHppNlRRa2x1eUtkTGY2VDZxb1pTUks3S2R5emFvZCsxQnV5L1l5VHNr?=
	=?utf-8?B?aFpZTlhEdEJVc1ZqTDdvNm0wMTY1L0lpNkNLaHBLNTI0MXVnclR2YTBLRXR2?=
	=?utf-8?B?bitnRldxV3doOTF3ZlAxQWNWRVhLQjZpNXoxbFc2SlllSG9uc2pudForbE1F?=
	=?utf-8?B?MytldnVqVFAzdndGV0R6WW1JaHhVNDluRFMwYW1nZ2VLSklJZXdyZ1lkUmth?=
	=?utf-8?B?Q1grc2tOTFd0Z1pJRWhvSVFyanUyRDN2WXFRcWd0TmR2VFIwZWc2enowL0lJ?=
	=?utf-8?B?cWMxTjJrT0FSYmZoaHJ2ODB2MHZmd0xHYm9UeXJqTUVOREZpM1FrK1BYSFJN?=
	=?utf-8?B?WCszVGFHUERpbDRPZHA4aEFwNjdpUzhVZ2RQaDU5REx0RlRTQ1NJZmx3WjE3?=
	=?utf-8?B?ZUMwM1RJS3J4Y2V0VDAvUlFrdDlCYTJyZVlIbU14K0srSXVsMTNIMVc0b2to?=
	=?utf-8?B?NHNCS2VRd29MY3Z3VDZYSytNdjlHV0hNaEkzYjFiR0hkc3FnL1BTK25uMTk1?=
	=?utf-8?B?dUFrcXBzWjBSU1Z0SzBiU3VNLzgycThTR204WWZwU1pzNURndE9TNWFKSkQx?=
	=?utf-8?B?cUNwREZXV1BFY3RVTVJnNjdZVzdkWXlKc0FqNXNNejBRVlh4QVRXT1VsaUZT?=
	=?utf-8?B?M1NvWXRWZ1RYOTNUOWhHbld1eFFPMWZhdGdQMWhlTGtKaHRVRmMyUDh0NjdN?=
	=?utf-8?B?SSs0dzIyM2djSHAxdThzU2RCcTRjNzhiN2xaakt5bnEvMGM3aWJEUmEzR0pm?=
	=?utf-8?B?TXpmMmMzVjhPN2pHL0kya0tnU2FuSnEyY25qMm9UU3drV3NENkY1L25UVHNJ?=
	=?utf-8?B?QWdnYmplZ2UxeG54a3lSam4ybEpGZnNEU0dzd3VaUHlqR0JkRk5oUlhRYzZR?=
	=?utf-8?B?ZFpqbEQ1eG9iK01KRlhIR3R1QmxlaitOa3UwVWdaRXdDOUswY2pRTFN4ekN1?=
	=?utf-8?B?ZmFSQ0F0TVh5akNSY3RaN0JjVkNiNTRDU055Z0hXZWo4V0s5Zlc5Nk9nQ3B4?=
	=?utf-8?B?VWVrUHovYUgvckM4RytCTHRMdGRLQjRQYTg4dFVxNFlVeGNMLzg4RUJPNWpN?=
	=?utf-8?B?ZHJGZG9Oem1FcmEzeE1BamRpMUI0VG1yUHNJU3pQdy9TUjFKUnpGZHQ3c2JI?=
	=?utf-8?B?OGc3djkzODk2eTZodWlod0NPM2xWS3BPek9vczJVL0o5RWpyNmQ4Ny83dnN1?=
	=?utf-8?B?R2lQb3FDSlBtMDRNU0JaN2lOZ2pqZU1FYlc2azRiOGloZnNxdldkK29xaEc1?=
	=?utf-8?B?OUlxdGlMdnVtRDZIWWttU1paVG0ydkp3VThiWUVhOThNZ05FeWhPQUd6ZG4z?=
	=?utf-8?B?REY0UlpLM2Vxa3FUcmZ2elFIN0psWmdPUTR3QVRlNTA4S1RNQThJU1FmQktv?=
	=?utf-8?B?OUNCUHg0bnV3WENOck9lSWVqaDVJRlJ6VTA0aUgxS0RLR3RVM0t0U0l6NEVk?=
	=?utf-8?B?TVppMUZSZElDVTV5dTZ6bTNBTzVGbHI3cXIzb0VnPT0=?=
X-Microsoft-Exchange-Diagnostics: 1; BN3PR0401MB1313;
	6:HRTFWhnu57Q9CrOp9Gd/ee9MiTwKHgwv2ybiBw5MSF5vXsHR+gINX13Ty6etoTIDvoeZKY9VJGZ8lELxEJkws78zd7+tzf7Cmqy7tkkJcTnuF8LKXiyUCOPWaxGm8TDT0XzAUymQURwUlws+FTJbFUlQPe7wnfZUg1/Wa65GDeqhM1T27hXvrK7+915ORwc2EG+ZSEc4PJ/hgyuZbp/cwV6iUB8IaKDJ/+3nWHX4R+m9SVNAD+S2muAuHnAr9dvnqiq12tzO0kF/TnYXcsMdLMlK7xJ7p9zibBjR+fqwjb9PrwmT692ZJIGFpCwjf/WsY0CkwWjHZDHt/hmNENjywA==;
	5:k6ndNWoCoSOZjB3BmFaX+MNkmaIEG1ut0esZ5r4SzaaFoix6hSOdIDaIcIeSLBW3Hi+nTfMmfLJ1QtgAkwwVSzxArLJ1RI8er9gLR5VVFriXeQq9/vl1xjKEcFZ+bfPH0rQ8egRQN06cH+vGxbUJIg==;
	24:ymvW2iDezBTuUdXUXhLkcXTN/IE+nnO+J1FbFI0XvR8gwnQSef7R2k3w8vtOhrBC+J16Nc++5/Jm/1tbzEXEUu3j1f7bElLNJjdnf0Bu2/E=;
	7:+00o9XU2FfTg4hcSNrYjccSUJb0/0+/2NpDnEu4MwaFInbd9XGXUdFrz3lr/9kUDgM5cA+cLCpenfY+SyFmlAs5001J6JgnG0MTRoXCV94Op39xT57oAYDMT9JvrAhqxxcyFX2pNeh4Jo48o60NZoXY7pBUxIVk5to5JW6LtvXNFP3bHZazCaXi7LhFfM90uAezBgfbEn92pMAWiTIJdT0VdSwAL9hqjBqk8VlBxS04=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2017 17:14:34.6408 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0401MB1313
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2017-10-06_04:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy
	score=30
	priorityscore=1501 malwarescore=0 suspectscore=2 phishscore=0
	bulkscore=0
	spamscore=0 clxscore=1011 lowpriorityscore=0 impostorscore=0
	adultscore=0
	classifier=spam adjust=30 reason=mlx scancount=1
	engine=8.0.1-1707230000 definitions=main-1710060238
Subject: Re: [opkg-devel] [opkg-utils PATCH] opkg.py: Remove reformatting of description field
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
X-List-Received-Date: Fri, 06 Oct 2017 17:30:11 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Agreed, opkg-make-index spould not be formatting control files. 
Description should be treated as any other field.

merged

On 10/05/2017 09:05 AM, Jeffrey Pautler wrote:
> The Debian Policy Manual describes the format of the description field.
> 
> This includes information about how lines might be wrapped by programs
> 
> displaying this information, how to mark lines to not be wrapped, how
> 
> to mark a line as blank, and how leading spaces on a multi-line
> 
> description might be deleted.
> 
> By reformatting the description field in opkg.py, we are breaking many
> 
> of these behaviors and taking control of formatting away from the
> 
> author of the control file. Instead, we should simply copy the
> 
> description field with no reformatting.
> 
> Signed-off-by: Jeffrey Pautler <jeffrey.pautler@ni.com>
> 
> ---
> 
> opkg.py | 8 ++------
> 
> 1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/opkg.py b/opkg.py
> 
> index 9131755..c0cdcd5 100644
> 
> --- a/opkg.py
> 
> +++ b/opkg.py
> 
> @@ -230,7 +230,7 @@ class Package(object):
> 
>                   name = lineparts.group(1).lower()
> 
>                   value = lineparts.group(2)
> 
>                   while 1:
> 
> -                    line = control.readline()
> 
> +                    line = control.readline().rstrip()
> 
>                       if not line: break
> 
>                       if line[0] != ' ': break
> 
>                       value = value + '\n' + line
> 
> @@ -480,11 +480,7 @@ class Package(object):
> 
>           if self.installed_size: out = out + "InstalledSize: %d\n" % 
> int(self.installed_size)
> 
>           if self.filename: out = out + "Filename: %s\n" % (self.filename)
> 
>           if self.source: out = out + "Source: %s\n" % (self.source)
> 
> -        if self.description:
> 
> -            printable_description = 
> textwrap.dedent(self.description).strip()
> 
> -            summary = printable_description.split('\n', 1)[0]
> 
> -            printable_description = printable_description.split('\n', 
> 1)[-1].strip()
> 
> -            out = out + "Description: %s\n%s\n" % (summary, 
> textwrap.fill(printable_description, width=74, initial_indent=' ', 
> subsequent_indent=' '))
> 
> +        if self.description: out = out + "Description: %s\n" % 
> (self.description)
> 
>           if self.oe: out = out + "OE: %s\n" % (self.oe)
> 
>           if self.homepage: out = out + "HomePage: %s\n" % (self.homepage)
> 
>           if self.license: out = out + "License: %s\n" % (self.license)
> 
> -- 
> 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google 
> Groups "opkg-devel" group.
> To unsubscribe from this group and stop receiving emails from it, send 
> an email to opkg-devel+unsubscribe@googlegroups.com 
> <mailto:opkg-devel+unsubscribe@googlegroups.com>.
> For more options, visit https://groups.google.com/d/optout 
> <https://urldefense.proofpoint.com/v2/url?u=https-3A__groups.google.com_d_optout&d=DwMFaQ&c=I_0YwoKy7z5LMTVdyO6YCiE2uzI1jjZZuIPelcSjixA&r=wNcrL2akRn6jfxhHaKavUrJB_C9JAMXtynjLd8ZzgXQ&m=SjrJd3411AwLD4Dn6cj5fJxIrZ4Fet4b54t4bmitpWM&s=boq46c76IPvFqTwi4dlGOI7VtCn4aV7kqsCa_BXdMI0&e=>.

-- 
Cheers,

Alejandro

