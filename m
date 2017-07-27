Return-Path: <VINEETHC@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18167E00C80; Thu, 27 Jul 2017 05:22:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.38.45 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 16376 seconds by postgrey-1.32 at yocto-www;
	Thu, 27 Jul 2017 05:22:54 PDT
Received: from NAM02-BL2-obe.outbound.protection.outlook.com
	(mail-bl2nam02on0045.outbound.protection.outlook.com [104.47.38.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DD2CE00C61
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 05:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=lKzp2ADkQc2FvcCCYw7L6aqdaqkw99PVVf4V7t2ffZM=;
	b=fOQ4VhtjiGPrw9B7NmfJ/ecGZj8RNfZRA2fDqaZloOR/gwy4lvYitgyCwSAUDokKZDpdSrtEfMTCVazTAIDik9GmI7vk1IQDknSok5AQD1rZ3Tzk3oXcVzAMrlksqzTLp7VehxG/vuGjH17k8U8rICjnbNbgpzOkUkYH2rOHwdo=
Received: from CY1PR0201CA0016.namprd02.prod.outlook.com (10.163.30.154) by
	BY2PR0201MB1591.namprd02.prod.outlook.com (10.163.154.141) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1282.10;
	Thu, 27 Jul 2017 07:49:55 +0000
Received: from BL2NAM02FT037.eop-nam02.prod.protection.outlook.com
	(2a01:111:f400:7e46::204) by CY1PR0201CA0016.outlook.office365.com
	(2a01:111:e400:58b9::26) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1282.10 via
	Frontend Transport; Thu, 27 Jul 2017 07:49:55 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
	smtp.mailfrom=xilinx.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
	149.199.60.83 as permitted sender) receiver=protection.outlook.com;
	client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
	BL2NAM02FT037.mail.protection.outlook.com (10.152.77.11) with Microsoft
	SMTP Server (version=TLS1_0,
	cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.1.1240.9
	via Frontend Transport; Thu, 27 Jul 2017 07:49:53 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
	by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
	(envelope-from <vineethchowz.chowdary@xilinx.com>)
	id 1dadYO-0006gs-Mv; Thu, 27 Jul 2017 00:49:52 -0700
Received: from [127.0.0.1] (helo=xsj-smtp-dlp2.xlnx.xilinx.com)
	by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <vineethchowz.chowdary@xilinx.com>)
	id 1dadYO-0004Gb-Jn; Thu, 27 Jul 2017 00:49:52 -0700
Received: from xsj-pvapsmtp01 (mailhost.xilinx.com [149.199.38.66])
	by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id
	v6R7nqtw016342; Thu, 27 Jul 2017 00:49:52 -0700
Received: from [172.23.16.149] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <vineethchowz.chowdary@xilinx.com>)
	id 1dadYN-0004GY-PF; Thu, 27 Jul 2017 00:49:52 -0700
To: <yocto@yoctoproject.org>, <vineethchowdhary@gmail.com>
References: <CAKgkYTR0e5aX_eO-JTgfs4Q94YVmFd1HNAYZy60Mv4tiiFU4dQ@mail.gmail.com>
	<d8fecc11-51f2-59ff-9f59-6bbb6dd99844@embexus.com>
	<114091654.126731.1501141390266@mail.yahoo.com>
From: Vineeth Chowdary Karumanchi <vineethchowz.chowdary@xilinx.com>
Message-ID: <f4eec9d1-c11c-161d-a0b8-6ebffaeae21b@xilinx.com>
Date: Thu, 27 Jul 2017 13:19:50 +0530
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <114091654.126731.1501141390266@mail.yahoo.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.1.0.1062-23220.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(6009001)(39450400003)(39840400002)(39860400002)(39400400002)(39410400002)(39850400002)(2980300002)(438002)(377454003)(199003)(189002)(24454002)(83506001)(47776003)(81156014)(72206003)(229853002)(2950100002)(65806001)(4001350100001)(23676002)(36756003)(305945005)(626005)(77096006)(230700001)(2906002)(478600001)(63266004)(106466001)(356003)(31696002)(39060400002)(9786002)(54356999)(76176999)(8676002)(50986999)(38730400002)(189998001)(33646002)(50466002)(53546010)(31686004)(65826007)(64126003)(5660300001)(65956001)(8936002)(6246003)(81166006)(107986001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BY2PR0201MB1591;
	H:xsj-pvapsmtpgw01; FPR:; SPF:Pass; PTR:unknown-60-83.xilinx.com;
	A:1; MX:1; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BL2NAM02FT037;
	1:PiDxwWipa9mDjAtR+0dcMPKP/waTy1Z8l5AXWDqVSBiHhA/js+4CwO+k64CqF2jTigShpiwtO1SC2R+5r77sCJVdXZgF90PSgN0gTJDpy4zI8voUlOJEMSJWZSLtdjYsOb5gMIDq6QzN0mnyxWMGa/tEnC8ShZfe8RCYonDelQ+YAD6m+7dv8ELtT+IFaKfaHhkdGOJVfrTDq3sMcmGoLzOeYsFU0hEAsMpOgpomiMJgkkOLyA6BIx6Dt4bibNMM/Bo5IBPz1uxkNocbVqWZwpp1Cfh0aJa3I7eAZ01CgjjLbFRaM81lCTGOWsOoStAyg4sJUUA/wNsFWOmNBH+vKU7PhNtMSo4FDfabxr3Rx9TjL54XTxrqEVyF0TzIVG2LLRzMb70PiwpwExs0/gzt37PiqYi/+gUzk2kMu6R3qd33F4kB9ANpeHoRBqJKi4QE7ggg1FIvddZTdAX8JycTrd9op3/rkg4m+/WaldNRdpdBJZ+lqf2EcX/npmcXJV1T0T9PY4h+yz0IbKFCsGemyUQUaUgyvjxJtub4nI8jTqq7ekovxy8Y2wASXPgq9C92uCbo8gHXxMIjIuStoQsC+btIDfiK+ksq5ebPwBqTjwySo9EkrHzJmY5aT9u/Ufn/Zyte+8XjnUQoHV0KXk2x9L/Mf8FT+MThrVfMGWFVEYx03yBtYsmIdLTHF5V1CJ+hnwN5OnJzECtiK2DINKR0lbw/nXwzBgYCNf5YzDjPE134A2bnrdOJcM7q1q3C6NDG5zgGCXDsDgPjAGIJ+EYYbfZ9Wben3LJmeK5bH7DG9+3Ex89ZdVefKdEDL/X1AIeDFqjkt/qkVeHyuMm0ygnNvCeCoGMWgLYtDwNiGeIWae0=
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 376879e2-b28c-4d67-37ed-08d4d4c411f0
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(8251501002)(2017030254075)(300000503095)(300135400095)(2017052603031)(201703131423075)(201703031133081)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:BY2PR0201MB1591; 
X-Microsoft-Exchange-Diagnostics: 1; BY2PR0201MB1591;
	3:IFqqaSMmr+04v9pP6CckB0kTqLHsQsKbJrSevLG+MXgEnTk4NkETx7S7CDbMO62JznqpsbJVf+0qzT2A6NWPmK2kYcyTjSbygVzn2tfGDDmHPl2YY9wvcc+43JGRlYO/a7y5FuvTJ2WB5znPN5zqz1aL/ENQA/EsZOUesEMq048TeF1rkXOVtZVixPOhlUtkA0mKM7wN5bNDi9lFaICbGE3JVUNs069iuOXvRBL+yZ1N4hJKumnQ5A5r0FVQKxfyfgbr7RwTaPInRdJm0gOsVYhlCLvQ79kJ6bFLXs61Wdkz0laFJpJeSnaeYLKzi5V0mJtZj7V8eEZhtkq2aDcL0wA/AJHAsuxLcjVHeF/ND8mqq1dBPb/PJw6osPn4/PK9y4mOpD6onhaTm0TjDDAu+tY0qMhYgx4tC27fnuy9pE4WjnX0RkfHLT8BMYatXxl9X5nVvaSNKErNZ6S9UV9RqC+kWI7PPczmWJmHmlYoTkLUHRX/yUHM3+zRfjsqdiMkEPW4kSlK6920EAeBq3DDGUJQHSk/iuSTCJl6bKAk9bD6pzFC2EkzOCRmLFrfkttdYmM0CAYrUdnZTkeRIPG7/y1R9yAEKcfvYya372tVJiBYkaacXdXqI9090WTT0C0ZpH/VppC2HGyQtAE1vvIpp0DQv/JN1mytZxqRzq84SBl0mNmGTzfO7HnVsuKuyI2NMmp9zGSXL4+msZBEUM6jC/dsAcntrOx/0B72182KrcJm2jhCruNQjPjzmxGXtaHHzQKCSuDjk6i8dkcKDdA810Pf2K75b35g4E+42IWPh7fiVHPLmyesq/zf92o9bpZXox31+oHakbZw7uxJ2FCSq5RHZQqWk8a/qNoBlYVP0G1XlTFKf3kkeg4vVFUY9gmhp28dCG+qYvuvlLpMmgqmnu4tMKht6xl67hj3fMhATCg=
X-MS-TrafficTypeDiagnostic: BY2PR0201MB1591:
X-Microsoft-Exchange-Diagnostics: 1; BY2PR0201MB1591;
	25:nKmsfr9x3YtB/2wgEIjEfy4gzBIGvi+zcCKiAHvqtVNn1DvRB/Z7/2OCRrr+CX5b7S5p3QT3M9bXZm4PTJmBiS7K2EpZiyBuc/9/esYea/MU8gEoydm8Lg/qArqn+xyE8BvmT6YrzXgr5TSWSjdTUHnx8L0sAdnmwCDo2d38usxcXOJrcbca0HvAkwdBQw4ZNU3iyUIlrcBABu2QdWXWjRkU5F+ibxBPWWtkn+Ptv/YQIHFtVZ6O1NswHxRsCsxfYSBLzzX4wzCI0mdfYpd3NNteV/14lNbq8J9IEkIeebDD1xTHxq/1UgYZepXmZiY4RJ49FaR2O33fB050jKRRUx1D20mCz2iX+vi8tpFKbm8nJT3ww4FXaEZOu4agcSvOSuTNo91JnJ+stFuhfCDiYo6pxMp1LfcWPoWlC3iT8ux0nZjbSy8mc6vzjfjS0hS8cgIcOPJ9EUhfyfrKpVTOwxckN9FBjgQw5i8GKmp9VoDBdwIe2pRGw4oKQ1ZdV6Yawf0RpAxUlML3AVzLEwxKyIrhu8Y2KgXW21cqPowFCZ86/u+u+AH5beiMSVJPfLxFtHBMh4sodgnVWQK/wcrwopZ1Gwe/e6UkFLr/HQ+0gV9RZZsLSMcBmbCyJZUarOrZsjOEAb42wj06qeQ974vueFdP+gfbaRi4H3f6Vbd+IOsp1bBleomHIAFtNcfU5rhFepqQtiSAMLH2dfWn/AMySg6xZdXWx0E/QzaRAE8KitAHwQJIeQ4HVekLz+Z6yXrz4VIsAYvico086YsSOI1x2SS2iEPtrbMwrbWmQEWLxooilK6lcLpt9tnakwRBUjMn6DtsIgOP35mY3piExaIMQJDbpmU6R4ybGqTdGgSjiyjebh4wLe24jeahu0FNpUf4j8RU8KB5g3FGxEMuYeuqWaiMms+cHLYo7LGe4KmPIcY=
X-Microsoft-Exchange-Diagnostics: 1; BY2PR0201MB1591;
	31:6rXt43kQG/ZOg+Ay8jAacZGSSxjlNGRHNbEyJ0ckp/w8/EU1YWkkTgFufifTToUE+Arme98wDFss79GRYW/sPmcCFj7tYLhKQ6mgSQZzRm01lHXMpL7wrEbaJjUOz/032af+eFegtxczEYCMegbpITIoab1fQET4vz5qdlRCnfB4tieu+q3RiAvSiitiE/605+PovAz83kHAnzt/2SB5ABsKLUYFnOH9BsFgft1MJH/s1x0nQBPbHbI8iW7Hfz0IHd8ls/MwANYqZpny2mpar5gOMF2DjWJPcWaNXcsQWtCXmh1TlmahFJCmMiWgr0y/rey0aa4Pb8l6n7XiwjtAcmkFmhieTe3y5aCcj4/otT6p/80KWfgJZkwNGUIZn5mnEZS6RA3ILYdOCikC7/eC4ltcmZDApaq0HsKT9CZ+5Jcr8wdnnNJ7f2ZVkmA8fBWWS1g0oAShKWszhJqWbIemVDP0M4qq++D0aTThZKLagceLFsfC6H0vzlNM9STSjUI9FpltAd9xaED+wOtMt2RGeTGxISO98BlLV0H52tc2J4n5DomAOrsHOy5YrJ9JTTs7WazOF0VzDYc0pNSqqcNPKSFPr3aELXJbXIapseoRAUSmWuqbO0ofm5rCCqqhNa0fJheG9WiXFEaZtODTaTVUltzOkpbS/12lSl6S8zDu9XnrpVop5qfZk/9Xjc2lZKDl
X-Microsoft-Exchange-Diagnostics: 1; BY2PR0201MB1591;
	20:fnPUGi64JDEhObVbLuzFgjftJ3d0UQ5eq6SAMDCuZdfzd9B9wfHedONBCsSfVVg2/GANSCzi+HCDfCoELIoTqrPBGzMh5ejAKygNYFkWK17R2tVFbrQX+ayG2+oLYD0weYTvTJT5yicNFciZ2ea9qtScfKuIspVS1G9JpftD29vkz0N/1GOPnz1L+KDea/ikVdp27AEEi4QdsS9XCRlraWCpEeJJeQSao9yU3TCh8No9RYvLRsxmfkXqtp7Kh8HTCYQeJnhgTWModO60LPJ5OTbpCmWiWPtyw1LSnyZCyejFvYNjo6ZatOHmvtjwr40CrOr5l6LzaLG0HNKQJMFjvZO8TP4/ekbvxjTrU0ecoygLmbKzy+kjC2Kscnog5CHB2SJr3+O+Hw5XyLwCQKxRiGH4FOr/9FZLTKLacrh7/6o59QjYm17C+jCAJFCXrDg4W4v3n6uz1QVWI0nf33/CYNBpP5dPVvL0LEBD6ih6E967aAGflggi7UZ8PiPdl08I
X-Exchange-Antispam-Report-Test: UriScan:(788757137089);
X-Microsoft-Antispam-PRVS: <BY2PR0201MB1591CD8D3E81680E1F3016B1B9BE0@BY2PR0201MB1591.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(13016025)(5005006)(13018025)(8121501046)(3002001)(93006095)(93004095)(100000703101)(100105400095)(10201501046)(6055026)(6041248)(20161123560025)(20161123555025)(20161123558100)(20161123562025)(20161123564025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(6072148)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:BY2PR0201MB1591; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:BY2PR0201MB1591; 
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtCWTJQUjAyMDFNQjE1OTE7NDpXMitYZ3lrZWUvMVVXVnpWY0FOYzN1ZEs4?=
	=?utf-8?B?RWxJV1dUTGtDNjVOYjI3QzdBVGtJanRBcDlqNEd2YnFqKzRkSjdGU3VYbGNr?=
	=?utf-8?B?ejhXRVRJTTlGSWtkZjh5V21GUzJUTzdJVk1adlZqVVNoc1RhNlB2WUwxbGtX?=
	=?utf-8?B?VDdScmk1YlRBWFhpYXY0cDhEV3ZhejliQ1BYcDh1Q0ROTXdFSm9Oa1pWRVBR?=
	=?utf-8?B?bklpREZxdk5RYmNTckxEZGZxa3F3aWI2bHdySHU1Vmw0NXdlalN3TTJReUph?=
	=?utf-8?B?QW16TmJtb2lrWnQ4Ri80Y0tZakZFaEFHOERuZkk3QW53VVB3aVdmeWFibUR1?=
	=?utf-8?B?elZIZGZSam5teVRMeDVRbjkyYktCMUt1K2tpN1NMaEgvbFEvYjFLNXVuYmI2?=
	=?utf-8?B?VFh3QU5GNXYydk4xSVVtS203cURrMExxUUtDdXk4QkdzWWdBR2pLSEsyUksz?=
	=?utf-8?B?NG5JU01wZCtFKzB1WWJ1SEFRSUJlRk1YTUFvaWxTdk1qUkd0Nk5wVGJjT3Jv?=
	=?utf-8?B?ZXEwUzFPWEttQkJLTGFSanBMSXZXN3ljV2ZRQ2hCTC81cFN1VmNNSGg0MkU4?=
	=?utf-8?B?bjcvSzVLOW5lRmM2S1ArNVp2aXJReTJDTS9NQkpseW50TXdNeEdKM0NTR2dh?=
	=?utf-8?B?SW5OSjN2QVMyT0UxcWttNzRqeFdPVUk4THM5c1ZsTXFiM2lJQ1MraCsxT25M?=
	=?utf-8?B?aU43aXhRVUUvTVRkMFJYOVhiUFRGSVRsTzZKOFFPYVAzVGhmblZvM3NZaHVv?=
	=?utf-8?B?cFFpenpobzVocGRvV2M4WjFLb3JnUEZMaGhKcnBCVFcyOW11ell2S2FsUXNU?=
	=?utf-8?B?bzJDK2x1K3p5Q05hLzJ4TkdNNWxjS0R2WDNZU0JvRzYzNy9xeFd4QmtkdjRT?=
	=?utf-8?B?SU1pM0pUMTJuQ1ZWZFYxTkFYcTRSTHFIRnljVEZseitvWFd2VXMxdWpzYS9G?=
	=?utf-8?B?Qk9TbWNCc3V1QnJkMkhXS2V6aEVMMzM2bmRBNWt2VDI5a3UvVExkSnJwNTU3?=
	=?utf-8?B?SGZXOWpOZnRhdEJtSndGcW9ERHNycHZMV1JxU1lNN1JOSVk1b3QxT2hlZXJ6?=
	=?utf-8?B?enZDWG9MNUJwZi8xQm5QNWlRZTQvcnp6M0NkYTNyVzFLK29YYlNXQUJNRWpU?=
	=?utf-8?B?N3ljMEU2QjFqSm5NSEEvZDljNklIdk1NRkpvMDRkVlJ5SjlRcFBzcHFVTWoy?=
	=?utf-8?B?T3UvVFFtQm9jeWJOUUFLNTcyTjg3SDgvWkw4QWM4OXRuWFhZVFlFcUZiK1p0?=
	=?utf-8?B?cW84ZWJqVWw5UXFxL2VmSlBiREZqcUhGc0tRajY3VXloS3hwWlQ0eCsrTkMw?=
	=?utf-8?B?OTM1ZWhNejVVcGFJdmk1U0Y3YWN1bDVPRFlSMERpL1B4WjFFQWJSRUgvOGQy?=
	=?utf-8?B?bWZLVlpRd0FxVHEwbFZkUmlwQUxjbCtPVmk5YWxoREpsc2VaVEwyTFd4bFlO?=
	=?utf-8?B?b20xVzBlTmk0cStvTXBCOHBjRE9CLzNIbjNmWXp2cmF2c3RzZ3Jod2ZUblYy?=
	=?utf-8?B?K1VlcHV1UGgyZkpZcWRYUlloSVlCMDFTNGdoYyszQWx2TG5VWjF0MW5jempW?=
	=?utf-8?B?UFliRFd4STZxMmo2cEhoSzE5ZmNsazg4SVBNREEva2VETkduUUptRXMvWDdM?=
	=?utf-8?B?ZGZUUE15cUl3QVQvZ3FsTVNaQ2tGTmZ2MGlGcVRGSVR2Y3RjTDVXT09mQXdk?=
	=?utf-8?Q?5aGZDAKM1Qi4iQveDNA=3D?=
X-Forefront-PRVS: 03818C953D
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtCWTJQUjAyMDFNQjE1OTE7MjM6ek5GL3FjTjd6SWZlY1VJQ2doVjZwTmgv?=
	=?utf-8?B?N0d3eEJkTDh1L1NjQS8vc09HMFJBbkVYN0tiblZBQU1Pcnp2Z0tzVFRsUWJm?=
	=?utf-8?B?ZlZEM2ZyUm5GRU1JSmlYbzhlNHJCQy9VYkFjK2hiQ0N1Z0ZaOFRpMDcrRmRC?=
	=?utf-8?B?bDRiSXVKSkM2VVV4YWpDVzFxMUFuWVZVWWRFYTNBOWVteTFLQ3grSXpXd2lS?=
	=?utf-8?B?Vy9yRzhmdmNlemdSaGtvSTl4WDNzajFnTXVvTHAvT3dwem16ZWh0TVhjemk2?=
	=?utf-8?B?dkpDbndqTWdBclJLcHZWN2gvd1B4OWx6SFBLdnU1TU16azBPZE52WEVkVXpM?=
	=?utf-8?B?OGw0UVloRDVzQlFybDJtanNNcEpaT3FjZ0lTbmwyekRiSjUwWHFSTTBQNTZQ?=
	=?utf-8?B?eENGajc3QnU3Wm9RK05jZU5hVFpKamE4VGFpeW5MUEljNDNwNnB5QW9QRlMr?=
	=?utf-8?B?YUQvcEVLL2x2UE84MGQ2Q1ptNzlHNVk2YThOcElNeFdPZS9Jd25yL0c5T1dL?=
	=?utf-8?B?NHAxMWRIOGtPc0RUUElON3pmMWZMcDU4T1FTdVgxRUxvZ1lUVnpYY2U3Y2Vy?=
	=?utf-8?B?OXU5RnFsQTIzd0VyZEZsMmlrOE9GOE1FRGFSQVdiMERGR0xnOXlScmJLd29P?=
	=?utf-8?B?aGhoYUx5VXE4OWQzWXVRRndLMmw2QW5RdUxkQWkzUDRZS1ZONzNSLzlZamlz?=
	=?utf-8?B?WEtWcXVRTXNkd1RhRWdmV3ZZanV6NG03ZSs2L2dxek1vMDFQaGoyODlhcTJO?=
	=?utf-8?B?TkF5TXhqL3pnajQwZkRXMFJwOUVoakgrcjV0R3RuODN3WTl5YzhmRmF4OTcv?=
	=?utf-8?B?SmpSY1BlVVFCZ1pLZDI4VzRFMXozL0tKdmFxTW85dGtGNmlsaCtDTW1FWjRv?=
	=?utf-8?B?dG9QWTBmY0hnT0p2UXF3WkkrMHdMMDBCNkZVTk5zdmlKdHlQeUdhTDl0MHU4?=
	=?utf-8?B?WmhnMk1yaC8rYnJITFNZejZ4MS9wRTBCZG5qSGYzTFovQXVRbUpldG9vVEZh?=
	=?utf-8?B?eTJlNkpYay96aGwveGd2N2FSTGViREw2UHRUUmFtRXNvckI1MUxzVmZSV05i?=
	=?utf-8?B?QTd4T3doaUx0RXk2UVhyMm9waGRGc0IrMWQ0bDN5OEtubnFQS0ZONXJpN212?=
	=?utf-8?B?bjl0bWhKYUsyUnpEbm5rQjFhaXlodkpJaHlLcFVNTG5xSHNoMzhpRjJzMGdC?=
	=?utf-8?B?UE50eERCVExoaVVhREg5Nkg1d0dpTHpUdGVNaWFMaUdVVnNBOCtUVE0zVHZ6?=
	=?utf-8?B?WHMraXR2WUtQUm1CRXlEMXc5M1NiSGQ1d0JMdkxQeXBIZEs5WFFZOUtxMDMv?=
	=?utf-8?B?TG1HbmQrWUVVWE1UUGh1NHhsRTFMYVY4dzBmdkIwaUs1eDFZWU1RN08yM2JM?=
	=?utf-8?B?bS9oaTlycmlzTWpQUTRFc0M2NXNBS3JubUl5SFUzOGRuWnhRUVdsdWF3L0Ju?=
	=?utf-8?B?UEthRC9Gbk0zWmtOTjlXVUFHMnJGcWZsZFFaWGRBUE1qbVc0ZU1lS2lBcDlR?=
	=?utf-8?B?N2c5VS9IQmFIT3FRTEEzZmpyYTUvVkM3T1pLdCt2Y3B0Zmx3LzFDYUpCTkQ2?=
	=?utf-8?B?RHIxbHNSWUk5Sm52dGo1b04rbjZNUlU2M05YQmFqNElDQTRWaVllcFFhYWFs?=
	=?utf-8?B?cmpOQ1BZOU9yS2J5K3JQOTg4eUVXWjc1OHRqK2U2K1MyZk1XcVdYRXdjcWxw?=
	=?utf-8?B?eFhSUzV2UFBFUkpVN0x4L3pYN29yekdCSlpuTzVTSkFOMjBXa2I2ZTBXbVBz?=
	=?utf-8?Q?tooOnjmXkojXOW7TLJX1QXylbUeN9EjE+ouUTAw=3D?=
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtCWTJQUjAyMDFNQjE1OTE7NjpuZEYydG5kYWFTQTVQOHMrdThDZDdCN0JD?=
	=?utf-8?B?QkNzUlhHWTB3S2VqUTFna1d4WXR4ZUhDZjNmcWNiMGZFaXV3enRRSCswd29j?=
	=?utf-8?B?dnFZS3htSjFQWDNzNWNTaEdEbVE1MXg2cGs5bVFjangrMnhhNGptS0ppcnhY?=
	=?utf-8?B?WlU1blhNS29qVU00bitpRlkvZ2dSMTYrY3Avb0dkT2pBNWRadlpSa25LdVBa?=
	=?utf-8?B?eWMrVDZCa1pGVDRJckhsdklWd1JmZWJjMWg4RnI0dkZLRldWV215YTUrZStH?=
	=?utf-8?B?dE5oU3hGbnEyYVdHN1BpQ3Qrd1JqTTlPa0RjajNDZ3cxVXdWSUtqcVhwZFFp?=
	=?utf-8?B?M1p0VjhiSWJ0bDc5MmVwN2dzREtMUnBpQnJqYTdBakJmOXVYQkJkWFY1VTk4?=
	=?utf-8?B?QmM5UXNkeDdYb3pGdEdjd3o5czBzMFRVVmlpU09JN09zNEw3R0VqZ0pyNVQ4?=
	=?utf-8?B?bmxOalFaS1FURnhzdEFxaVloaTgyMzJOa2NVSWs1K0Y3UFJBL2swSDg4YzhU?=
	=?utf-8?B?T3FPdkR2VkpxN29NcFdlQythOVNRKy91YjhkUkZ4NjlINGREeUR4M2VEdDg1?=
	=?utf-8?B?L1kxbm5ZT0FRdlpwNjJVb0lnb01ISVRpNm1JMi9ubmZlTncvUUNDOWI4REtB?=
	=?utf-8?B?WnBQczllb0hMNDB1d1RuYUorMUF3WHI2czFjZjJOa2NSQVBvOTFQYnBsUU1Z?=
	=?utf-8?B?dVA1S0FvZkdjQmVHWEpWbTVEMWRSQ1hWUWloU2prNUs3eTZPNnVPQzNmWWlD?=
	=?utf-8?B?bGgxSTJLSzRWajlPbW56ZGVDUGNoOWNVMHBVMzJBdzBoZVBRNEtPRTl1ZkZq?=
	=?utf-8?B?SzBOR2RpbmZ6MVhzSjVkQWp1RVRPVi9SenlSNk9wdTRHNFg2b1IvWUpINS9Q?=
	=?utf-8?B?S0dCaHJpakRpYUFDRnpwU3lxQ0RmSDlGdCtJd21ybXhMRmVnK1hEUzBPazdy?=
	=?utf-8?B?YklPckZaTm9iNTcyN1RNcTRQZ081YUtRV0VvZ3J2Y3I5Vlc4Q1VSM3BiVHE5?=
	=?utf-8?B?UFpSUm5wTWpoOXN1eUpDUEpvdTBaa0xGUStldWRwK3RMM0xOSnNGWm90RDFw?=
	=?utf-8?B?cFVXTlkrMThRb2pPYWUrMWNJNEZMalJ4a0paQ3Z6RlVRT3pxdUVZam1mWVFs?=
	=?utf-8?B?V2EvSXVMOUo5Q1FNcmZYMUtGdDFERWVpV2Jwb2NBMG9wSStuR0NYdWg1cUdn?=
	=?utf-8?B?c1Z0dW54TUtyRDZ3aHhNSVdyOC9LTEdFQ2p2UkRJSjZMeHVoUHNQRWZCaFFu?=
	=?utf-8?B?VkdsRmNHWE9Bbkhac1h2ZEFTNmFIV3lrTUZmdVl0aitJOTZMam9rUVNDbDda?=
	=?utf-8?B?RXlhLzhFaUpTWHhSSmN3a2hObThmbjVseHRpV0ZjVFNlbDBSek96SXpYVmpI?=
	=?utf-8?Q?N/IRcdnhD?=
X-Microsoft-Exchange-Diagnostics: 1; BY2PR0201MB1591;
	5:CXpiEArFi81g+dbJuIPbz6bvokaobyiQzH+utzKXN8DFhmj2vVEfYKPNwlXN4JZ7orBTS0NFq2c6KzHypZZhI0ZuZnZf7aQ2AjBti9r9xv2d7ylrICJQ0SCDWB0I1MNQtPaP9NXnQYo8jjL8h/Qmk09UgENgcKtAHsj0FFn7oyP/2tNkxoCb/nnJcR9Rzf0kgny2H1MKM+6HXCFcrYNWUQB5DtmpQw2st3J8vnsZ0li5rAPttLLdPLNTcjaerFrmJ+sC269U0/2+1Y1TpmJI1+HkktW8Cye0G905E60sbxEkhIDqt0MbggJGIYBeE3U2O473wKpYDu+922Q/Fh7uJdE1dLFu02Kw6Eo4iZ0VxpR5CTxzEujPrrSvteTHqdaczhqzNFi6PcK6/oio2fTPWUJihdMBpd5lXHMTxcubwtSc8W2A6vIFL7k4bCcpOTOSWaSy8hWHc+2JXPU9vmGbjiVrXQaPQ4e7E3nOCO2pHu1TQjtOs/lSRjLaW4+RnZcX;
	24:UgKUF/FIamuBP0Qtaipw+OxznAAa+wARhdFa/qWyXTEzHlxCMKopbL67WAYIYbCDlZ5lq4vzqe5rhhkm9cQLpq4NvoRbth6evS3ShxzyR6Y=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; BY2PR0201MB1591;
	7:Pq2Cd/9ZG6ELYyre/pYkOluLJu9ArMZ+ywAX2E529wu/DimFx4u+0CGUo4eFfw7avDWmmqHEdYzF1h5nmMkDfsdj/l58yFR9C/yrqLhR8HmTRLTE7nJ7Jn5X25pKNiNHkJvp0EFF0yrENbZ7JqsFt/iMo8+pwFwmyj7K5YSVnrwa6xUEU975CBPJQgMgByit9zkmjIiYcBJ1bUV9j3eWAG5OpzWYCPGT/2ENDKK1NWd9DTWxdLAzCltxdcvG7ybCYyqzpdqf317JcuvACj5rf4VXFrgLuo72+nHMFkYVwmBXA+WJZQW/azl3wM1j10SLSzr++siQOuGRSAMtIGQuEh0hvg/McZyNFwcuv3PNKbP5wvSWQ49TkR2giKiq98ntORQZJQf9uAFr3jH92c4LKDjPvOZghs1EAtnrkTlsn/d5RjDf1W9eSxS4F0XXKPRvOezxAaQDEjkGYn/pgHGUn3IW2mX6QUWgyzr6tfImASy0jKLy4qSWo9gYfeKS3OTcgpDPYb81e8ZPPdtRnWfNydl93sEvQFXY+M12pd+hzNCV/rBLgcQi8psPNEJcpuFogNzpgHyZKdzkBatsq+zyClCKbWwuWKNZVkUgWvwutLSZP+27tokIK/a2ioqrlc+7HsOAgOYOzuduA3y4y48TuYC7+00UC6jxw4JZ7EywZgfPLjRqMFjLz0FsjBxB/Mo+N+tt1RHZJUzfuEYepv2Us/D7AnMAlK2Z/brLHFrGhgebv/FE+o6RuUPJj1beYn/svI6IVs1cQPshDT4e0Ornj71Tc1/7QPV509Z4nYhLnXE=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jul 2017 07:49:53.7279 (UTC)
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;
	Ip=[149.199.60.83]; Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR0201MB1591
Subject: Re: How do I write a yocto/bitbake recipe to replace the default vsftpd.conf file with my own filE?
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
X-List-Received-Date: Thu, 27 Jul 2017 12:22:57 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi,


On 7/27/2017 1:13 PM, Bacheh Karaji wrote:
> Ok, thanks very much  ...
>
>
> On Tuesday, July 25, 2017, 11:18:13 PM GMT+4:30, Ayoub Zaki <ayoub.zaki@embexus.com> wrote:
>
>
>
> On 24.07.2017 07:18, Mohammad Nouri wrote:
>> Hi,
>> I want to replace the default vsftpd.conf file with my own file!
>> My bitbake file looks following:
>>
>> bbexample_1.0.bb
>>        DESCRIPTION = "Configuration and extra files for TX28"
>>        LICENSE = "CLOSED"
>>        LIC_FILES_CHKSUM = ""
>>
>>        S = "${WORKDIR}"
>>
>>        SRC_URI += " \
>>            file://ld.so.conf \
>>            file://vsftpd.conf \
>>            file://nginx/nginx.conf \
>>            file://init.d/myscript.sh"
>>
>>        inherit allarch
>>
>>        do_install () {
>>            install -d ${D}${sysconfdir}
>>            install -d ${D}${sysconfdir}/nginx
>>            install -d ${D}${sysconfdir}/init.d
>>            rm -f ${D}${sysconfdir}/ld.so.conf
>>            rm -f ${D}${sysconfdir}/vsftpd.conf
>>            install -m 0755 ${WORKDIR}/ld.so.conf ${D}${sysconfdir}
>>            install -m 0755 ${WORKDIR}/vsftpd.conf ${D}${sysconfdir}
>>            install -m 0755 ${WORKDIR}/nginx/nginx.conf ${D}${sysconfdir}/nginx/
>>            install -m 0755 ${WORKDIR}/init.d/myscript.sh ${D}${sysconfdir}/init.d/
>>        }
>>
>>    But, the file could not be replaced!
>>    What is wrong?
> you should add to your recipe :
>
> FILES_${PN} += " list of files you installed"
>
On what basis we have to use FILES ?
Is it required for all prebuilt binaries/libraries/regular files ?
It works for me without FILES for a prebuilt app.

Thanks
VIneeth




