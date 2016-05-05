Return-Path: <marcelo.magallon@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A199EE00E0E; Thu,  5 May 2016 12:20:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.100.137 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0137.outbound.protection.outlook.com [207.46.100.137])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0633E00E0C
	for <yocto@yoctoproject.org>; Thu,  5 May 2016 12:20:30 -0700 (PDT)
Authentication-Results: gmail.com; dkim=none (message not signed)
	header.d=none;gmail.com; dmarc=none action=none header.from=hpe.com;
Received: from nyx.americas.hpqcorp.net (201.196.243.174) by
	CS1PR84MB0295.NAMPRD84.PROD.OUTLOOK.COM (10.162.190.26) with Microsoft
	SMTP Server (TLS) id 15.1.485.9; Thu, 5 May 2016 19:20:28 +0000
Date: Thu, 5 May 2016 13:20:20 -0600
From: "Marcelo E. Magallon" <marcelo.magallon@hpe.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160505192013.GA17781@nyx.americas.hpqcorp.net>
References: <20160505020837.GA20829@nyx.americas.hpqcorp.net>
	<6311B206-D2A3-4CC1-A034-7900EF2E6E21@gmail.com>
MIME-Version: 1.0
In-Reply-To: <6311B206-D2A3-4CC1-A034-7900EF2E6E21@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Originating-IP: [201.196.243.174]
X-ClientProxiedBy: CY1PR20CA0110.namprd20.prod.outlook.com (10.164.213.164) To
	CS1PR84MB0295.NAMPRD84.PROD.OUTLOOK.COM (10.162.190.26)
X-MS-Office365-Filtering-Correlation-Id: 33f649ac-fa81-4ae4-194b-08d3751a51b7
X-Microsoft-Exchange-Diagnostics: 1; CS1PR84MB0295;
	2:MMHLTC7GOtFRU3SM35tdhlUp1ljEpFICfz+jrcVRFCd6vMQB49A/uI8px16Y8bwR9+fGIdj/DwyowTSmdKMPkMn+uYB0MKBtZ6Eao8gJgvav2vK2kV/n5YtblVE2Z4bhZzNui2m1n6OgdGUYk5YcSuVwNG6eV/i/MYcQtxiBe/+C+cqmpPaqV6Trrkeaa+d2;
	3:P7IbbwTwYGzY2+ANR3fYdPB9vX46a9JvdyT4vgBUhVR2N3gGeALjQ+kZLGQImHYwE3b2khSgNsI0UWC1zqX7a282WaY2w25McnpL4siJx95oamVJavj/qEOg235Csz+A
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:CS1PR84MB0295;
X-Microsoft-Exchange-Diagnostics: 1; CS1PR84MB0295;
	25:RB268jCPCawwDfYe3xw2xn74kfIMowfFhBzORxDcD3H7ku6Nd1/TkZIDigEwQAlEwCxrLOqjkVNhV3XCm6dd51GWxGijvaUhEa9xO+MV0ksIF2bDetZo1afI0mwGubpapcKIkUy1PwGmDoBsNOhI9KElMc/ASgbRaNqmCrUWTEz61yxH6OYFRadt+JPrgwQuSIMybm7HKLn1W3Rm3X7QKwoZIf9RPWKbnwXfBE+VUreBdIuRUoa2Gd5jJiQaFfGMKxKnVyz38zeFKgJpuVRRoGkc5bvFL3w8hA2dhJZ6i/kN21ssIvAs8L9dzUbFtv1x9plWbZm9KrXNiVcMEdngFaVo5jm5bYZGRlTilaI0TF1a/7wceZUzK3Jad0aKKeWw2Z42FNrR00iZVOMPBxYCJq3TN1L2YrapsWM1yPC/YZfmZ1c2TKdxtNWMLg/czsr+2bqQb4Q858YUmtwrAbDVSzt1ruoZYg7xp6NvRhtNod6injcsBdI0fGtWQdGuH6vEsEz08tn7r8Ha3XpLcRH/TGlpfPFR81uC/xwD7/59nRHyYZ754TJT4b008pU39IFY1XbLTlGaHjaHBjfIvw0ZFS/j+iiyghviuGG/6+yrfY+mPq0jmNQ2We2zEUfOQfFMYo9E+zDcyosyGIPNhzsMCskXHmww0oe8qIOghUO3LPs8n6e8lXTfjoCSajT4w6PdUiGRgBS/BUO0bwdt6rvWgxdJIWR80E20EZ18JdqDzD8=
X-Microsoft-Exchange-Diagnostics: 1; CS1PR84MB0295;
	20:cYS9zgcEpKYqh7MAJB46JXqJ2N+cEJWTfJdvNEqFcEEfc4rxIlnPkXOgKuR2fPvZmb/AszYB5TPg3F1rQ+BmI3fZcQSwrWjqXAm0fHsdT+mh8UtPHvyJLGbjwM4t6CBRcAh21GPFNbnDXeU0ndBduZGJzcce462y546/ZM4zUYxtWuxQU/H6yOS8/2hyR8nwFu1VerdbHqSrEiiZpNJ1w90a1AC94FEswxJIcfu4zSgwLTcMW6O0tr2t1NS/y3eetciZNRJCBqrNSO6+kx+HZDMB4FrA9s/rYtNUw6+5Cjgvk6/i/bYT1PkpvCmI30FycBnqdyD0D7kUiPu5PeiVMw==;
	4:P5jjE/VgPVzpshtIymtWluvTdX8TOq56Oxi6ZoJqCEqydWkNXr6v5jaV5ca8EdQt0v5OSbcsHXPAjrn2w+L+NKOxZkAsIeAymLJQpwfpXf6L1w9oKbSfjAgKkNURkyZ8fE7mrnXLo44Zzp0TFyaxXUIAxZ0QdBc+AeZYj/LDPKYUSIuPheCF92F9YlEjmlgCjU9JP6bphlcGDVQwTDCgmnXfFu/VWfT2JXsh6UVKI6U3pr2a49qXvfer3rarJygZU4wIBoEg5GpRYm4LobmtyTYG5wYymHkd7QMM6MtAg5sn0FQkkbXjHkM+BzTovOQBHJsKOuB/SKtuUwPXRb/8qivqQyA6A7ZGbB+uhqeFa050+WXLpgV5LGBsjb/9YOW4xjBRURRKkBmsLzcF4POBuw==
X-Microsoft-Antispam-PRVS: <CS1PR84MB02959CD86ADC0F6539D56A48967C0@CS1PR84MB0295.NAMPRD84.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(9101521098)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:CS1PR84MB0295; BCL:0; PCL:0; RULEID:; SRVR:CS1PR84MB0295; 
X-Forefront-PRVS: 0933E9FD8D
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(4630300001)(6009001)(24454002)(586003)(86362001)(33656002)(2906002)(81166005)(92566002)(97756001)(2950100001)(1076002)(66066001)(4326007)(23726003)(9686002)(6116002)(83506001)(77096005)(42186005)(47776003)(5004730100002)(3846002)(189998001)(46406003)(110136002)(50986999)(50466002)(4001350100001)(76176999)(54356999)(5008740100001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CS1PR84MB0295;
	H:nyx.americas.hpqcorp.net; FPR:; SPF:None; MLV:sfv; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; CS1PR84MB0295;
	23:UCDkLqRAJ4A6O/lfIneVhHGh4tbL30Tfhww6wgVeBnDkDxelo4XHiQNr3O9bUK/YAATG5GbMZ+cRN+A+xIJmzKu98laAedoP6gS2jvJ2edPIZE8tbAf289rZV951VYRtOmZZQKTjwK23rnRJEOP0c8szZHAubCoKx+Ml6Vx84mYfgmHt3BOzXXEBmyz5OMg5T8k1TwcYAti0kjXV7d/RPQKPasfkQBSVKGYlDQ3ubncbQjwhg8xal4X3dA7j4tcIdUamO21xWi3gIO905ICMbOtnpn/2A4lbTTaboBILYDPTfCn5ufN+2ohAOrgNeHGvK01CbiFmeNHa9nZOqaI6EImfw5d+bYrjyPpbnlxPrgr8XxRUkM7GUhjZ68aK8hF1X7KWw6oLOuroGvkgyhVcoWM5pJ1urY0m91HJRdwlRUsO6jyjX9Bx1/PGOgDZDnw+qIBDKc7NScoRp/wSkR5BcHOM3sEetSAWwd+m5MFqeSlJo3oDcTUJQ5GiDua+llXesiVoLtKJ+Ud7j9Yf/ePcuSg+FYFEjMYL/ntMjThcI8MnPKwLTkpZ2JH0V0dIj0eUM5CEqYITNRcALpuXYI8M0ZOt+sV17jOS+XoeOnCpASQSytDvFiuBbzhLyGe1POnFo2cF0PDHUDogmArAWeURfXZLJnOZtcazuOzxT8n5JlaIvCW6UcuXvWNu/NfC010svGqxuzbhANAZr0YDzZKTw4uB+g95pRvOi8PmzDRgh09W9A/pgKb95Rafo5LInZ61dwGEPWw+GTHDrQS1esJ/TNy5B9gUbMNfwRLJ4R9fMRVEIwr+A5lcK2Fc9xphwzoxp6IRt5oIOBldGX2MbShALpug8B9eL3k34kMFIeIAebpnRyD7c77peXXceE9RUbjp
X-Microsoft-Exchange-Diagnostics: 1; CS1PR84MB0295;
	5:Y/2o294AScbuAvEOGJxvW5r68ckrOr/fupG00cSHV99Cb0LrtgP2b50J+mu0MRHbD80J/LfNL8W296AUbU1ILvBzOSXcBv2ZdjYN/Efalxvq+K5tpOm5k41A6gfUOp/+VKT6MCl5WNsNQhw83qy+Cw==;
	24:yIls9rTBeHbDxjuIuRvQpd9or7MNlq6HMS8PySH92yuv1qSNTZ3sczDAIB6bX+HZm55qkt8nC4La4Jhw2KnEngfVmUzrCmosc9nQGkP1kIY=;
	7:5/T/vEnD5YGbIg6RwxWCAMZNhzt9CJ4w/7o83hw2mlYgvBOHw1aPW/O9DcO/8CVPl0XP4VBzmHePYXVGu7CpEOqq8GWnhx2w4ooL3JUGGwoeUPRksIExYBerN/AlJzoDojsQhNGhyo6Rrl3k0L5gJARP2NHXXCIC3y55rBl0HXhPjc8jHp4lJgFYz/4yRT3J
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: hpe.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2016 19:20:28.0081 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CS1PR84MB0295
Cc: yocto@yoctoproject.org
Subject: Re: Multiple MACHINEs in a single build?
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
X-List-Received-Date: Thu, 05 May 2016 19:20:32 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

On Thu, May 05, 2016 at 06:45:36AM -0700, Khem Raj wrote:

> > This works:
> > 
> > 	$ MACHINE=qemux86 bitbake core-image-minimal
> > 	$ MACHINE=qemux86-64 bitbake core-image-minimal
> > 
> > and bitbake parallelizes the build across tasks. What I'm trying to
> > figure out is if it's possible to run two bitbake instances with
> > different MACHINE values on different hosts but writing to the same
> > workspace (say, over NFS).
> 
> Thats not possible and its by design.

Can you nudge me in the direction of some documentation for this design?

Thanks!

Marcelo

