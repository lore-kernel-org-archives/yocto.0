Return-Path: <marcelo.magallon@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 161D0E00DC8; Wed,  4 May 2016 21:42:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.100.118 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 8279 seconds by postgrey-1.32 at yocto-www;
	Wed, 04 May 2016 21:41:54 PDT
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0118.outbound.protection.outlook.com [207.46.100.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBCEFE00DC4
	for <yocto@yoctoproject.org>; Wed,  4 May 2016 21:41:54 -0700 (PDT)
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=hpe.com; 
Received: from nyx.americas.hpqcorp.net (201.196.243.174) by
	DF4PR84MB0300.NAMPRD84.PROD.OUTLOOK.COM (10.162.193.26) with Microsoft
	SMTP Server (TLS) id 15.1.485.9; Thu, 5 May 2016 02:08:50 +0000
Date: Wed, 4 May 2016 20:08:42 -0600
From: "Marcelo E. Magallon" <marcelo.magallon@hpe.com>
To: <yocto@yoctoproject.org>
Message-ID: <20160505020837.GA20829@nyx.americas.hpqcorp.net>
MIME-Version: 1.0
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Originating-IP: [201.196.243.174]
X-ClientProxiedBy: SN1PR07CA0006.namprd07.prod.outlook.com (10.162.170.144) To
	DF4PR84MB0300.NAMPRD84.PROD.OUTLOOK.COM (10.162.193.26)
X-MS-Office365-Filtering-Correlation-Id: 35f82d52-f5cc-46ee-4eb9-08d3748a33a1
X-Microsoft-Exchange-Diagnostics: 1; DF4PR84MB0300;
	2:xCsrzBrTufwa73OX9akSmd5aeSR4WTINXatwHxAnARssMa1PvB1ZmVZypECjSgvzHbqI3Z2rJWq4oj3WijPUGL7sYTzKEml8HnxbxGwY323BFpGYhszdSXZp3OOKiuViGUyzKIxpWtmLnAc//gIFj3IWvG5QOhxmOPKO1Mz9+e77xUpSK59cnNcsvmY/KfVO;
	3:0XTdKZ4jCNEGc3iZoqZi4OgR4k0Plk2xKjyOGXon4goAWsfdm5+n9yK94Uwu9EqGGIj8rme9S/qukYG+rwc0stmkfXkT93AB6P6IGO0DZQEAY8cKBpuxFem4MJGp/bgv;
	25:oArN/MQWYchh8MutUdpqtJJuzTHgqjBsXa8mdGzv5H0ziiyg9rKIwDzT1wlgcrDjHsGzty0FMPa/oRpvDlfNh0f4nYi7D/HwO34NpWTZQgGJRDCMCKUWdEe8z9afnq3ORST/Hpnt8OC9lYRPHSgNWupMwNW0ptWt/3X9DSudTSOdG4yUKVjMSjr64SlTMQ7AOx40bQokePDCR0fnjXBamRtSuXgCYcgr89q5T1SjrUAg81/LOnng6mkGJuo1TJRi3uYBUzZjC10oxur4V5xZ89syUMl+NSo5+CJRi7FUzqbPyCTS2cTeV5O3xeFqpYSuYjzu9/+mGm+6rhWPAeonVlJFjm/olFDsNWjebRqQhw/h5Nzo+spPrRWhP1qoXZSLOoPw+I4BJwlsWIXMiRun3AcBnI8lv9nb/IKu8NiYFroRfTVwDGHo7eY5RUdIpcjN
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DF4PR84MB0300;
X-Microsoft-Exchange-Diagnostics: 1; DF4PR84MB0300;
	20:fZ/bkQ3gOUp9dxo3yx3NwEs9vzKx8j/q2LUmgEzaJdLsBQpE1ZSjQeZe3yNbrhzNznF9eIiUD+fQ2IOI1KPiGgUszmNrrzgegnQBloJLMo7K5sZsI2rBuHnZc9MM0kibUaens8hsH+wmQGe0faKHagx0YNtxxXaGGKmLjo6Cib6mSVjVicZsBvmNTaADXMsdDbtdMNiK6eUBunvvgtYW1KYi8TmSP9vVM6YHC4LE7euBX3ydjudj+AsCTHpPExt5jtklKZkp6quqTnLtWQG+56Ge2F3+pACNGiSKkffxiF4qkwvI3hS3YbFNA54YHkYLWg+wuzn9zIOthNWHAsftdw==;
	4:CqA+WNiytR+mfjzZyKqjo4ELuzPnJXYa0DeGlKPmDw1E6ILnXqqI38pIXcY4s3R/9EPE4B/CNGEoKMz8JShQj7JKQxyS/D9obqzkSHqoLgwFdw3z+nwyKaGr8+4hRNQaGmN4qj8AAL10Dh4+mWosew5SThOnwPCTxqpmPJG21cU1IF5w2kjQzL8OiKpTuXlBFfQPuRPM76n/Gj+FHBMmaal3Md2wPddKhdAfbNYD4oSHqOKGU5D9cmMUtAl3n1ay3jiH2VNAYNwilo5/COp9koDveqQ6LEZDQjLVSPmVXA46hVO6AqIUJhxxQDKDEAFxnDvQ/yiPworo37hr6CEJqY8PSMY+ULfJyWPgWXXjN9cmcHY0iGOA3T8BZCOmgFRbr5ITtrxes2gfJZ0DldjdNwuq5V06lQq3pbXGRI8iXy0=
X-Microsoft-Antispam-PRVS: <DF4PR84MB0300A4A06555216599D3FD65967C0@DF4PR84MB0300.NAMPRD84.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(9101531026)(9101521098)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:DF4PR84MB0300; BCL:0; PCL:0; RULEID:; SRVR:DF4PR84MB0300; 
X-Forefront-PRVS: 0933E9FD8D
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(4630300001)(6009001)(33656002)(450100001)(92566002)(42186005)(9686002)(4001350100001)(110136002)(2906002)(50466002)(189998001)(107886002)(97756001)(77096005)(50986999)(3846002)(5008740100001)(6116002)(83506001)(66066001)(81166005)(229853001)(54356999)(23726003)(1076002)(86362001)(5004730100002)(47776003)(586003)(46406003)(2351001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DF4PR84MB0300;
	H:nyx.americas.hpqcorp.net; FPR:; SPF:None; MLV:sfv; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; DF4PR84MB0300;
	23:Kv/pMo0JLkwBUB1WPFd24EijRkTSOU746UcyAdR9fq/JAh7LW3yWqC7OP4g/v5u5g+ItsNGE54QM2/vcn/3hHMGlf9Ba/wJmIMwagew/GWcX105re/Trj7oe/Wp5z7qB9fObYBIXmsa33MZetY0QR05Eb6/SCO46hfjB2GIRM3+a+rkNX6gFCj7gPKC479KedqGfoCeM33rsQdDzK5Voz1a51/Sukcm2ucIBYZWE7QrSa7RBNIHSNz9gZqnhMMIHmN4TyAbQlgu0Z8ijk4IsalDtxVeXgoKfV+ZVQmKbC6esDyep78roUFJr3BIrgY2sYT1+IN4cR6tDGv3jbXcBngNCZYIKCG8qfAlCIwsn8eSLvzQjbpAkum4RKTuJL2vRH7astjHq2+0fiqizL5Zdmmc+1USnS4fbg+u4BE3c8K3cqZjr0Esd8+0dMT0YJColLgC2mqSj0oM/cMcBIl+d95GMSo5pOip1DMtVmM6Bg68Sbdmz5aCHCGtIdmKZUb+mW4VQcBGRtXQdBwlcJVpZ5lbADzP8UwDsGV0Jq+5/7y0yG5us9dEWU0RRvyYDO0CfoJApOtyaKhM9HDrKZwk/PdncVoLUxgk7a7EcFTptuyGfmq4XWhUa983Rdsu2QOBcinjawUh+6/sJGsHyl5nMY6c1g9NGxvuKmFqtw42Rjsd/E7b04TwRky13RbdPKUPVPYo+LzsWKop57Ppi5tL8rYmrppus0kjZJNVSknFO5GkBd3xNwojHG3XE3L7yPVKQWzedBGg04z8w2C83XbYe75mVkLQlvAe3PNAbwDlEJ8eufO98l+NN2XXoUbgh84cBVEXusNBD+b55O/w8Od2wExi+ZK6B/9U8LGPtW+nV+FAoF+kg+LG2lGoTD942V8Wr
X-Microsoft-Exchange-Diagnostics: 1; DF4PR84MB0300;
	5:if5ZQDsSVRRzwlvxiO7H7NMiLuhKiIBq6dI63MXDmtIOUaP6ptD0TzkqvYs3vj1cVEtFaMLG1HKE/H/+busG20zK3LElyubEKCV+iiHS7i+8qZdi64RbsX40/Ob+0VHw/8sk8RNscWIODF2gi4QgoA==;
	24:OBeWkmn+Ft/7xLdLVBec3oaFDupgkR0ph8/iB/w9ej9v+Py51DZgM8ASuX7vFw7gvNyTLg4P1MRSEZk9qG6snIwSecYFIeOnEinFM1xlHRw=;
	7:1Zw3HoHoFiQBxnVeVlZOe2Af3gjP6c5JgkDr7xwLa9/PDdSLL1dbz0qOzSSXJc7Je7leOOYD/L3lpgZa+6sd22K222GhAaKtFY50Z+nfPQMsoq2FYLp4Dv6MGTaMi5x2ZE3AuRI/on1MyAHRUjRu05dVjDy9DVszpeyQ60Cqe7a+9gX47L/N8EzqyMR6L+r8
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: hpe.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2016 02:08:50.2077 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DF4PR84MB0300
Subject: Multiple MACHINEs in a single build?
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
X-List-Received-Date: Thu, 05 May 2016 04:42:04 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

Hi,

I suspect this is documented in a FAQ somewhere, but I'm failing to hit
the correct keywords when googling...

Is there a way to support building images for multiple MACHINEs in a
single workspace at the same time?

This works:

	$ MACHINE=qemux86 bitbake core-image-minimal
	$ MACHINE=qemux86-64 bitbake core-image-minimal

and bitbake parallelizes the build across tasks. What I'm trying to
figure out is if it's possible to run two bitbake instances with
different MACHINE values on different hosts but writing to the same
workspace (say, over NFS).

Thanks!

Marcelo

