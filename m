Return-Path: <alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31A9CE009A0; Fri,  2 Jun 2017 13:35:42 -0700 (PDT)
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
	*      [148.163.156.75 listed in list.dnswl.org]
X-Greylist: delayed 1534 seconds by postgrey-1.32 at yocto-www;
	Fri, 02 Jun 2017 13:35:38 PDT
Received: from mx0b-00010702.pphosted.com (mx0a-00010702.pphosted.com
	[148.163.156.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8ECBE0082A
	for <yocto@yoctoproject.org>; Fri,  2 Jun 2017 13:35:38 -0700 (PDT)
Received: from pps.filterd (m0098780.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.16.0.20/8.16.0.20) with SMTP id
	v52K66Je004004; Fri, 2 Jun 2017 15:09:51 -0500
Received: from nam02-sn1-obe.outbound.protection.outlook.com
	(mail-sn1nam02lp0015.outbound.protection.outlook.com [216.32.180.15])
	by mx0a-00010702.pphosted.com with ESMTP id 2atx0kut0b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Fri, 02 Jun 2017 15:09:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nio365.onmicrosoft.com; s=selector1-ni-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=Rvj1qRH7cqnLVy//nXyi7WNeT7acjQrTLT5RWUtP9DY=;
	b=WmVBrhlQeS2gOpETnHhp0MIbMDEgF12MbSnmW0JmNq9jQI0JHlSf4QoZmFmsrUaYkX2Ax/BPer1mmciU02rtBIkJUHLHs/PFgjo+xumr66nf0TvLU/XYyh08K8zvZfnwhayTxZlDyJ+p6SY5Fcq9PZgeecUlXL30aC3QBffPfnQ=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=ni.com; 
Received: from [10.0.62.53] (130.164.62.126) by
	DM2PR0401MB1328.namprd04.prod.outlook.com (2a01:111:e400:5022::14) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1143.10;
	Fri, 2 Jun 2017 20:09:49 +0000
To: Gary Thomas <gary@mlbassoc.com>, yocto@yoctoproject.org
References: <841bb3fb-50d1-bf93-1a14-a507239330e0@mlbassoc.com>
	<CAJTo0Lbu6vQeRHmBhns-YjWNf_bQOUcn13-AhuOQq5KuvZJgLQ@mail.gmail.com>
	<859693e4-eedd-9212-6dc3-eac70c938c71@mlbassoc.com>
	<CAJTo0LZfKRW7NRmJX10v-EDGNmpzr36KmOP8+Nhh7dTn-ejKVg@mail.gmail.com>
	<d2d7d713-963d-532b-b604-c48f27f34cf7@mlbassoc.com>
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
Message-ID: <5ec99740-654b-922c-6f6f-05ac713af456@ni.com>
Date: Fri, 2 Jun 2017 15:09:46 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <d2d7d713-963d-532b-b604-c48f27f34cf7@mlbassoc.com>
X-Originating-IP: [130.164.62.126]
X-ClientProxiedBy: DM5PR1101CA0019.namprd11.prod.outlook.com
	(2603:10b6:4:4c::29) To DM2PR0401MB1328.namprd04.prod.outlook.com
	(2a01:111:e400:5022::14)
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM2PR0401MB1328:
X-MS-Office365-Filtering-Correlation-Id: ddc6e473-ec6f-4b79-1d99-08d4a9f352a7
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201703131423075)(201703031133081);
	SRVR:DM2PR0401MB1328; 
X-Microsoft-Exchange-Diagnostics: 1; DM2PR0401MB1328;
	3:vexYmh5LPBMUwYk58ol7sdg5iUz8gCBaL3hxKHRDyy0/Q1GAKwt7PQToW089ZYSzSGqMZ8zDzO3IXa+nPCqSIq+2PQK5oI2/HOtOJNL9Ss5kK117tAqaY00+3RvRP6VRqxu7WFy6ykfqGgDy8LCvtU6Ym5Dhfk6SApARwXCq9T8kD1RTtB2bAAUCPKZaOYtYbOpRMmf5bp0cDHkbgJiDDE4/D8+4QLHYtJoT0XTgEXfDXITpoA8x5RIII7rgD4Aj1ctogWFHU2aa9AEnpsCtF5amES9hf/y4ZvEmCZIu6zqGg9rI0h1+hNdjEQ/MrKQap9S9gVwCagGKn42a0tIqvg==;
	25:GN/lAqaeDdccnh/gvUjXXh7OYJomrpN6qmyg6QqDzf5jXrwlyiIwzhluURBv9Ehv1DgBAW83Q6lXaYci+oskap5ySSOuT+nT51KdBeI5HMBQylgSeG4dgFsGNSvyGdnIRhm/9yBO13SKMSeMWxLTq04WpgTXYpi0WKyJ0/VK0h7i9E9VwGzD1VKXFRH3sdVMY20l9R0rQnBP1F/h0uugcB0rWgJdS668sKuzJyg8CdHY/XctJ77LqqMM4zw3WXQNKUDRMn1v0Ov3oWyfTIfy9IzGRmHne9tysSfvg4N13z1Cb7fxVikwDbN2S6hFM7yxlXvPBPbkKrYVIQuU9nREzvckCy4RaGg0dhA0FHDLwxyAw1TAPPRnwi+kLrwZb2OTakq8jvvWtm/+4croZWSu7sUdHexeJkNr/B7HFJvtvPezh1IJDo4N/hfDf0vmda1OEPBY/X0h3sybz4NU3iRokdXJBACZ5CnnoBd3lnMT1B4=
X-Microsoft-Exchange-Diagnostics: 1; DM2PR0401MB1328;
	31:eQOEdWNhNlOXCMqOJakQc5gsKHV2yGjKEpo1Loe/L9P7Eliy4GVylcKdW+A4Dj50j3pzWnrvd3yYrtOzKP00YDnD1j6nQ90wSF7cMFvfVgnyv4vqorWFgnuzHvcZR7EqSqCvD5N+0lJc/ZveQg3D9V06/xOGOkzQZr9FjYL5uizjdBJgvOe3niFdWAfULrct8zt0YPGTgeP04CsWcEqkJhyR4pSM2bu9moJ7tf0T4vYAiv1SDDMlAeAshOWWKsGBvVp8k86cx53nFIXK/eOeGw==;
	20:iodlmfAY30QkuZpNnluUJBoCjpKdiHu1TfEcJpCPzz7G1c+ha5v/6w7OpvFvcP/kbntsJAfYC6OodN54btfdI33KaJCj8j5pShmgyuYuHEUnfjRKAeglwZZm4EeZOOc9/ncsGvxsHRs4nzmpkVf/bxmrA++oUR6z/4IeYzEJY/g71kyyvl8suF+W3w5PvyLfJRndkrIUh8SQi7i6oSWKcboOj+q6phl4PPEnRMI9sHKChNXKa1TNvJIzYfH5M/W44CGNLboWatCpm4LcCFGw/CyiEi/R+lhsXxXrBi4y5GzpdZW6L+Mqe88RYDe9r/AYP0UYxaqI2J5WhBYMpgM8uVMB4/xgWNhAe9NAj37SVmah6r7Swpg3x7KExNW0NOxrHzrHwNRc69jVe2u93d8YYfhD+x+jpRE8joL+PFD/n/Z1otHzCRWPgh1D90V+rAMxfZIk0cbVEJqITY0bDUvOOwab52/YzpSLsq+kDEsbjue0bsYPO8A6BfEGcm4NcNUpT0hCDW6NxDrZoOpc6kMLlL9oRxxTJDdi/nxUF8jYbqmkKZ2eHACztn7uXUaNOmMyiRrZUxI2I63BuBpzYnFjEF61ipXy22Er8IZ7kQ4FAiY=
X-Microsoft-Antispam-PRVS: <DM2PR0401MB132869C96DFACD3E2CCD343986F70@DM2PR0401MB1328.namprd04.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(601004)(2401047)(5005006)(8121501046)(10201501046)(93006095)(93001095)(100000703101)(100105400095)(3002001)(6041248)(20161123562025)(20161123555025)(20161123560025)(20161123558100)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123564025)(6072148)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:DM2PR0401MB1328; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:DM2PR0401MB1328; 
X-Microsoft-Exchange-Diagnostics: =?Windows-1252?Q?1; DM2PR0401MB1328;
	4:dqm8gksptnSj0zhZufWBm4Q5f8962JAMt0gB?=
	=?Windows-1252?Q?IoTP5DPPX2Add6PjVlCiiVcc8vs8L3ckmf+hO2AvH1mcyP4QocXh31A/?=
	=?Windows-1252?Q?AuVPgQMrByntDOAxgFKuVGuA6b8Jax5yq/ENL7Zy7bYFiHBrJ7FLtl0w?=
	=?Windows-1252?Q?MVrjKyTK0fuPkmj85QQqSOUYaAjlkGz9I6fp4KhlUq4/N3SGeuPlN119?=
	=?Windows-1252?Q?wHqdojj4aDUtqxposQsvuiJOayS0ZLIRqLSjoClpwggNHAQTdppWivMW?=
	=?Windows-1252?Q?TybmOW8XY6x59wX6W5o1Nib/0MfWowo95UOliBxBl3dS84f+uzgpV/Hw?=
	=?Windows-1252?Q?QzdEKzaYcesfBzIptjXIWaf91dmjS7Kd4XJssfU3gGLATCAgCuWhsShz?=
	=?Windows-1252?Q?JOHV1JCa2BKuugHrRyNJGqFrCpMFMQ4+Z6d4Di//n22QbQTsR1PuBqdI?=
	=?Windows-1252?Q?66b0tSNb0BVYeyNxbs7k93QP7pPRJIyu+VPUsU4ipTYLBI4s3yn4TqNK?=
	=?Windows-1252?Q?PRU+JUwX9on72tR7X35zXmCAJKK8+K6fzAag9OVnSLh7lbX47Wl0vO9/?=
	=?Windows-1252?Q?aoq2k3wIOKT33fbDQfmEY9o6V8U64hrx6FUEk+KTD7BMJmXIVEQS1aoe?=
	=?Windows-1252?Q?m2q+wLRjeG2qsBZfYgZywrMuVZZku5BxdUDk9l+Bv+ndvBGJ6IW7JAGX?=
	=?Windows-1252?Q?pAdmtXKKrNlDD8YM4UAaA5lLJUl+gLV/9f+oaw3aYyVc8+hG/D+x2JRI?=
	=?Windows-1252?Q?eU6IOuQf5rL4+PHUqwtNNXpyv34EzgnOE7IjN38osmgQoreCvZBFat8n?=
	=?Windows-1252?Q?8/fgpv9rPFiq25jnOh8nBvAuTlwz9hszyrqky2xBgex1Q/JI2MRa3IX9?=
	=?Windows-1252?Q?kdK1UgpM9UnbcIdhlXhOYxk2iB4w2urwU+lq6sJXMywJiDCExEHOUSRa?=
	=?Windows-1252?Q?I1egtfD6upWC9+fS73E566sHFaZ51oxXG15oDTNeoWNcBr7+8TAhTHbn?=
	=?Windows-1252?Q?tRUQgwDlb0Y2ufOr3J/nn8rHs5jUM7w0nxelTnZpHpkNhBVJKIpJavPi?=
	=?Windows-1252?Q?EQstM2I+9FpGPZ4SR9DGeN1AF6x22iK2ea2UgQR7bLNFRftvwHII3KWR?=
	=?Windows-1252?Q?hukBEZ4sYiF4HP/cUlI8bzd18/GuHPYTYcfA9Rv0zgeBawcSRk66o75+?=
	=?Windows-1252?Q?R+MvkUzPEzh7kFLLWda7QjAF+B4y/XKNuGBCEqCLz6JRFpjmuAV8?=
X-Forefront-PRVS: 03264AEA72
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(4630300001)(6009001)(6049001)(39410400002)(39840400002)(39850400002)(39400400002)(39450400003)(377454003)(377424004)(51914003)(24454002)(2950100002)(229853002)(66066001)(23746002)(65826007)(50466002)(33646002)(305945005)(8676002)(81166006)(5660300001)(3846002)(6116002)(53546009)(230700001)(31696002)(83506001)(6246003)(93886004)(53936002)(110136004)(38730400002)(36756003)(25786009)(2906002)(50986999)(6486002)(77096006)(189998001)(76176999)(54356999)(47776003)(5890100001)(6666003)(478600001)(86362001)(31686004)(42186005)(4001350100001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM2PR0401MB1328; H:[10.0.62.53];
	FPR:; SPF:None; MLV:sfv; LANG:en; 
X-Microsoft-Exchange-Diagnostics: =?Windows-1252?Q?1; DM2PR0401MB1328;
	23:tMZtZ1u/Bx2oc0ja2avNvg66ZOzONsSNomW?=
	=?Windows-1252?Q?8J2HYFJWVxr1CTOC6w3K3ERNJcJ1EY8GMf5106cCBTh3V1GK20II4vph?=
	=?Windows-1252?Q?167V4eM0S4sjinDTNPKABsPByqR44eTlhh+Pw0vclhd768/ho+Or7Ehz?=
	=?Windows-1252?Q?0UnsOGeFuB9qWeNd00c8ERNpssQ/5eS1+sk/AWUFKRTe3ShwZVEdxNWN?=
	=?Windows-1252?Q?mY0WofXfI2BLe0qwvPnQyQYAwgzENmeBIfS3z3hwgnky3t3xe30ADG08?=
	=?Windows-1252?Q?3PU5Gc3Mh059OCFQoth1hmbOpwoiUaYHjhfJ36I4XrfBUV53GPsFelcI?=
	=?Windows-1252?Q?zJQLPtqdg0LqSavEdikpTDANqp075UlIiRU+coit3Gfj3b4srzIIqCOX?=
	=?Windows-1252?Q?B2xfxWwdHypv8HqgIADvJy9ZftGeeXY2+HV+CMYBeuOfWAd+Xoy4LDLy?=
	=?Windows-1252?Q?oR7gLHrjHEPi0kC+wl0blMg6PcJTrfpST2SaRqFVzEQJrL9+z5dpLx7F?=
	=?Windows-1252?Q?B7F0awNsMtnb8HEZetmV/HxqL1nHj+dcGwc5L587IVEwcKmSRhvo80yv?=
	=?Windows-1252?Q?iQ+YpW5y5FBJdA+P+whiL1HVJi4L14wVyNwM2+sy7Xl82Io/L4eVMwLA?=
	=?Windows-1252?Q?tY1cs14BSmYSxdJY9loNp2OvQjY1dhU6ojEpn4T8LLZnmAxEam8gJUCd?=
	=?Windows-1252?Q?2T+SVnLju6RCJ3EK6befw5VtqJyWu/NVL/KKzzSSmM4D6mio3heIa44J?=
	=?Windows-1252?Q?ogtenFXBk7U4IomnzniqBIWkLb8mmLEIRh/QjaZw2zyBsfoAxg6sj7mI?=
	=?Windows-1252?Q?wOSPyaEnJFcyyV/TSb488WxPT9qGbeSTSdCQTl78BMyhLJ6Rzf205e7j?=
	=?Windows-1252?Q?EA2iVmG0P6L2zUcZTKQGvbuGajqywm4LROcP81KFxQxfEBUyzj7WMVgE?=
	=?Windows-1252?Q?AhZDcwGlra8B7qaq5BcrZ4MESgIqgblvcTxX5Nz96gayFeZ2TNtoF8At?=
	=?Windows-1252?Q?4PkaJC4p4w3ndShOnBklrtNe0Mo0s25dhI3ZwL0+XygF8mMTV/T2QXag?=
	=?Windows-1252?Q?RuguEMIF2UASiw472suaLOV3Fd+5VMSRbDCtOs94hwFcH7EpY4Oo2atB?=
	=?Windows-1252?Q?KprnNhV3/lq0nmiKwYZP0trPtP9xCXy2OlbataDEpUnL+YgYtdEhldl2?=
	=?Windows-1252?Q?5clqKtcfxvh/zF6i9bdtp3+R2YRbvjrYrKZqFJfVTxl2VLHOrAbx1F/A?=
	=?Windows-1252?Q?D9zrGUfNj+4KOpZsSYMXN+s/N0L5vO5gp4psWufQsVEzwm22savZBt5E?=
	=?Windows-1252?Q?MVo95dv14vhylWJfSfmOf5LRLRSLlaA+SB5TSOeXQHh48uARPEO8DK+h?=
	=?Windows-1252?Q?wZB6pe6Gw9BPYHfq24hr8HviOyKdl7qferg=3D=3D?=
X-Microsoft-Exchange-Diagnostics: 1; DM2PR0401MB1328;
	6:ypnhBuArEt+cFPKdKIFbf2Pbm65D2dO5vZKH60b89W6kDuINXHioMI3xb73VKxIWTwbEToYmz43kD6nDJp9u1gH5NtR1lf/FEZzCD9RMUtzcsiM+BbpdS+luV6iyOx/FTcyehA9cARFjns18r0JjBvai8Guug7cAatt74ujljQg+zEoelNVqqbHXn2n0bANWhFfNvsQdOIU2LXrJQTAGTzbM9EN3SOCJxRzLctUDbDd8+dSY6h/ReBN5K44al0roIrX3CDR1hCE8cTpkaY0xBylsOKw8OtAYFMi822g/8eDoK7ZhgTSp60L40zB7IuMrvIpIXQ/Us/VrM8E8paUvQ44u/eq1kw9fApMt9I/HRNX2uULPbi6to5OTwK/Agt0VtRwo/c8fO7VxhCFeM85SRjf3ZdBQhYpHN8BQWIogm3BtQ2CuPVTpaqLqpKCt04fD4OmQdEuGLyj6uxROM45ewXMKOAKG8U7lQ5+vfowR1M8zwIluYsJd81YpfIgDEjpQAE2N23WvHFyfJRPH6wkS2A==
X-Microsoft-Exchange-Diagnostics: 1; DM2PR0401MB1328;
	5:0Gh0oBGxaEj/h+ite+Nsw0WML3nCXt/LdF/2FRKRSDatedEr4HI7Ql1MaBglaqfS2LRbV9BKBwCHgRZ90QWFTfOQS0myVqta9GD5XPyAKjAKJZBISKi/EhsH+BCJZNYRmVft5UzqObwjWdi2MZOhn8d1FzK+B7Aj2iyYQowh0+lymOlprdTv+xHZP8z8q1z2JXJcGhfiP7YQb9osveJpEW6htz95Lj6D8PsHkKT65miZJCmt0T2/7/s+cGFybFPV1aMdLHcXNEiCNU9ANMHED4g1REYMxcmSY06ctO9/41djA2lv4Q/QMlLIVEGKL4NNpw1jb1W8wD378LDdGAdLl9x84YHfyeKizkodVPSW66veMkcPh6juCbFSZ6gVnrdLD8rnz6kEG0Pz8lfUUtaedpdjlkySkGoMLn8JiNGmH75F8Ad/zaZbqbgwKEpmohy3ye+9lL4JE6cmgJrm6wQ2RJ6pG9UtYMGAGAQjBmBwCJUJhtmhpUJ1zDx3aJPJxp7J;
	24:9MVxBPFoEU+u8KQRaPUrQ64+c/hdGIJRYZzMQLMnLlXPVOXfBkmdgJOtNogCu9/MgvnyMQ3MX7wRO0KonLPxoFL+/Ae9Jdp7WXT1N3rnczo=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; DM2PR0401MB1328;
	7:n1uUD5j3CQ/FvOQOvzPCBu0ti70UKn1XvMwFaNcJz3nfmjOBJ0J+N73xPo2aDS3E7YzkwWDYTOhwYktAFCwxu8yhwK6MI2h0x76GBT4F97yMn6VEWVqVnVgn2IttHkD089lUbpOZzdHpKiCzQKUVYvCCX5xYqM3azbEDsEnrYEfMxNKo4hXolC2gDpb7IOY21FGzOJu6jUmxATyiRetoMeaXNsCZeqnkXFs0BJjx5Lo4N19DYhcLZpOcPgSuLDLXIOiUwETV4uC5gHB4N5rJacPwm8Sa0kU/tb4834ImZjT1phN6vJ2sWNSnD4vbk3SnBJv/YeftHkC6Dpghk01y7w==
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2017 20:09:49.3663 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM2PR0401MB1328
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2017-06-02_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy
	score=30
	priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0
	bulkscore=0
	spamscore=0 clxscore=1011 lowpriorityscore=0 impostorscore=0
	adultscore=0
	classifier=spam adjust=30 reason=mlx scancount=1
	engine=8.0.1-1703280000 definitions=main-1706020358
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
X-List-Received-Date: Fri, 02 Jun 2017 20:35:42 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 06/01/2017 09:52 AM, Gary Thomas wrote:
> On 2017-06-01 15:46, Burton, Ross wrote:
>>
>> On 1 June 2017 at 14:38, Gary Thomas <gary@mlbassoc.com
>> <mailto:gary@mlbassoc.com>> wrote:
>>
>>     Thanks for the suggestion.  Sadly, still no go.
>>
>>
>> No idea then.  CCing Alejandro...
> 
> Very interesting - I'm building two different system images for this
> target and I tried to apply the BAD_RECOMMENDS to only one of them.
> The target images (pure result of bitbake) did the right thing, one
> image had eudev-hwdb and the other did not.  The image without eudev-hwdb
> seems to be never able to install it using opkg install/upgrade, but
> only if the package would need to be downloaded from the IPK server.
> I copied the appropriate IPK package to that image manually and opkg
> happily installed it from the direct file.

Interesting...

Which version of opkg are you using? do you have the libsolv backend
enabled? running opkg --version should tell you the opkg version and the
libsolv version, if the backend is enabled.

Also, could you send a verbose log of the installation? opkg install -V4
<pkg_name>. While you are at it, it would be helpful to attach your
/var/lib/opkg/status file too.

-- 
Cheers,

Alejandro

