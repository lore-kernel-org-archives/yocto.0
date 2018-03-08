Return-Path: <marcelo.magallon@hpe.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD1E8E00E6A; Thu,  8 Mar 2018 14:16:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [15.233.16.89 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 350 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 Mar 2018 14:16:37 PST
Received: from g2t1383g.austin.hpe.com (g2t1383g.austin.hpe.com [15.233.16.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A385EE00DC2
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2018 14:16:37 -0800 (PST)
Received: from g9t5008.houston.hpe.com (g9t5008.houston.hpe.com [15.241.48.72])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by g2t1383g.austin.hpe.com (Postfix) with ESMTPS id 1B3FE2556
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2018 22:10:47 +0000 (UTC)
Received: from G1W8108.americas.hpqcorp.net (g1w8108.austin.hp.com
	[16.193.72.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g9t5008.houston.hpe.com (Postfix) with ESMTPS id E970282;
	Thu,  8 Mar 2018 22:10:45 +0000 (UTC)
Received: from G4W9122.americas.hpqcorp.net (2002:10d2:1511::10d2:1511) by
	G1W8108.americas.hpqcorp.net (2002:10c1:483c::10c1:483c) with Microsoft
	SMTP Server (TLS) id 15.0.1178.4; Thu, 8 Mar 2018 22:10:45 +0000
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (15.241.52.10) by
	G4W9122.americas.hpqcorp.net (16.210.21.17) with Microsoft SMTP
	Server (TLS)
	id 15.0.1178.4 via Frontend Transport; Thu, 8 Mar 2018 22:10:45 +0000
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=marcelo.magallon@hpe.com; 
Received: from localhost (181.194.90.116) by
	DF4PR8401MB0331.NAMPRD84.PROD.OUTLOOK.COM (2a01:111:e400:7605::9) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.548.13;
	Thu, 8 Mar 2018 22:10:44 +0000
Date: Thu, 8 Mar 2018 16:10:38 -0600
From: "Marcelo E. Magallon" <marcelo.magallon@hpe.com>
To: Mark Hatle <mark.hatle@windriver.com>
Message-ID: <20180308221034.2pazjzabwcfe6h6a@nyx.americas.hpqcorp.net>
References: <OF21316994.A2EBE251-ON88257F6C.007FC931-88257F6C.007FFBBB@selinc.com>
	<CAMKF1sqwf11WhEAtCtRf+VrqR=BVCegRCVsnc2MeaUK7ReoH3A@mail.gmail.com>
	<OFFA897E48.32A2821D-ON88257F6C.00833AFA-88257F6D.00012E40@selinc.com>
	<20180308210028.kbrkh57pxhzbfj4i@nyx.americas.hpqcorp.net>
	<4e5155da-e5fa-e19e-969f-bed685faa3e8@windriver.com>
MIME-Version: 1.0
In-Reply-To: <4e5155da-e5fa-e19e-969f-bed685faa3e8@windriver.com>
User-Agent: NeoMutt/20171215
X-Originating-IP: [181.194.90.116]
X-ClientProxiedBy: MW2PR2101CA0026.namprd21.prod.outlook.com
	(2603:10b6:302:1::39) To DF4PR8401MB0331.NAMPRD84.PROD.OUTLOOK.COM
	(2a01:111:e400:7605::9)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 63557812-0bbd-476c-9d37-08d585417046
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(8989060)(48565401081)(5600026)(4604075)(4534165)(4627221)(201703031133081)(201702281549075)(8990040)(2017052603328)(7153060)(7193020);
	SRVR:DF4PR8401MB0331; 
X-Microsoft-Exchange-Diagnostics: 1; DF4PR8401MB0331;
	3:VSGlsEZaJktsWnYvI7Ryws2KOlB3gFlJFyouSlHjE7xIfMDGJgDxrynj/6WBK4f1H4QXHHH8RfJSV3qtwTwBQAr5iGqNK9QCU364UHZkQmm9L5VnonkAaex0DJmLC0SoLMuRuLbNEKiO2bhL6aAn9tFGmzb/tz6gjFFCo8VIbyPQklSB/3cBmKuXPfvUEReV4ZzxRrEDMve0VdZgi3rQArIR6p551kfBWxr+Kyq1WcQ1eq4r4aub2QWRntfb3CeL;
	25:FIo36BdvFpzjN4zeAkILdKopoXzcjRO+Fg084oz+sTNm0LWXjfSD/f9xN59B6heSs/Q7zM+XL+PXsOtE0iPLwHfHiNSB1DSH+kiOdG/FCE0jQaY7nq5hpdn2e6Io0k+MYF70Tq7mtkEdLFO4nTFy0PS8Ufh/W98svJrhyWamxRSai6JcQjfGwfoG1tyR6K1QT5uf3QEzW79PjBaQo2Qwu66TucZly4bKDjFjYB+rGXNQCsDqTQI7An17bMJmPkkAbCbNoNKPHBSJHkLd/DpsEyTaboXljS9uDHoz+SXyBIuHaD+lZTcI+LARBFkd1BvzwQlpulFZWSW6QQjMl7L6OA==;
	31:QrGlbJFufm6kNFOCqJj91O01eIHB4F0FCGZ4h9XfDaoL85x7JACsDwELs5Bt0n/8fp4cKISQzpzgpHz1Mnxhmx4g6hybYRv39mtWm5aVXrVHPM1spcU++OqseUg3AJ14erTkDXQVuHo4FyTVImSgH0etq716VDsJwZj5g9noH2abQRUfT1zZ0YvFOphErAsc3ZLoYomhQWjEpGeHHOPsuLwwBW/g5SFFrkY/4SLUHl4=
X-MS-TrafficTypeDiagnostic: DF4PR8401MB0331:
X-Microsoft-Exchange-Diagnostics: 1; DF4PR8401MB0331;
	20:pxyzxkkts1Iz9UcmMg+4u5Y+COHg2y7xigjYwmMc6Uz+KihN6UTPEMNDc2INL43L7aYAjUc46NQhIciFppMiuUxpUI8mwdGpkI6j8cB9CpzVAxaaXLCUl3/9a62QH2FfGD1j+zaiJbeAHsFpgKZj+i1jqOQyuM7j/HAufKBb4/pa93oeaR9mW0sc8jby/3YjbL5nvNVCJHZmyWPyCbtiSwFDqj5SpQOouqpXKwVI7z+RMHhw5QJ8PiII81IWf24bxXCDfuIb0KZ8jlee94w8MBaeES/fWzy1239cSLWmM3iWG5Tw7s2soRcBbwl7Yr9nPOt+9CxgSzmNc27q0ocGeVhfxzloAd+SYzKdDq68yuVqt4a6MlvXP8DqrldLtt5Lm9/xMPCoZ1DfWO97kqR7UaEHwbPxyHUVPDyuDo1R9WC2GoDcE6Z2hMSYQi/YEcidicbjVr685iYuwZvDTkV1J1pWlXvcrYBF/dHdkbm+RlgX80OOQHxIp8MJiN5AAhlQ;
	4:iqkXgRPDdW4VrnlgMfv76Xo41d5RFooKRx+ae81wfI5hvrZvkdkm2pfn2eZQyGoV5k3JqtzZRBe5SedKZVH8BUd8YPum3Ax174AVOLS3GV7SZw9sGS2Ivq0xHDNGmKQyv2wCezknI2gjnFyMXQoY6Wwe8B+HenGfXI8CwJ5b+R2+bLhi9BB3rS1WafeO77fqBAV6VnxzrTjgx/WAEBOqB9oIm+YSmqkOovd+b0ukpKCiPbRoy9Ag2Tt7CiUDO3OiEH09l7kJ9tCxsiP77pjTtQ==
X-Microsoft-Antispam-PRVS: <DF4PR8401MB0331F854AD4498706810611396DF0@DF4PR8401MB0331.NAMPRD84.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040501)(2401047)(8121501046)(5005006)(93006095)(93001095)(3231220)(944501244)(52105095)(3002001)(10201501046)(6055026)(6041288)(20161123564045)(20161123560045)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(6072148)(201708071742011);
	SRVR:DF4PR8401MB0331; BCL:0; PCL:0; RULEID:;
	SRVR:DF4PR8401MB0331; 
X-Forefront-PRVS: 060503E79B
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(6069001)(396003)(346002)(39860400002)(39380400002)(376002)(366004)(199004)(189003)(51444003)(478600001)(23726003)(3846002)(6116002)(67846002)(93886005)(16526019)(2906002)(1076002)(186003)(316002)(229853002)(386003)(33896004)(26005)(66066001)(59450400001)(68736007)(52116002)(76176011)(50466002)(47776003)(6496006)(97736004)(81156014)(16586007)(8676002)(4326008)(9686003)(86362001)(6916009)(6246003)(8936002)(6486002)(76506005)(6666003)(2950100002)(106356001)(7736002)(305945005)(105586002)(53936002)(5660300001)(81166006)(58126008)(25786009);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DF4PR8401MB0331; H:localhost;
	FPR:; SPF:None; PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
Received-SPF: None (protection.outlook.com: hpe.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; DF4PR8401MB0331;
	23:CHnMxzIHKp4aS18QSgpvOSCTr6QjXr1cP+1D2AQ?=
	=?us-ascii?Q?jJoYqsCVqpJccvFv8vEl+ky75JLQfGF1a/EQkL7exvGMN8z556BZV1cq908I?=
	=?us-ascii?Q?GO9mvi0qTug7P6XXusxF+73PmW7HNyQOTVwy4DIbaniZz0lutcxdbUM84b8H?=
	=?us-ascii?Q?hHmi8FtnXBM53t76DR3mj+81dHCBPun/nV0I2p/dP5dyoYa9aD9euhp5QIjM?=
	=?us-ascii?Q?gzSC32x4BOnOI/wLh9IRz2oaTNQutA6/esXAr5xoueanNnGnuOcgbpHlG4h2?=
	=?us-ascii?Q?eTR+jXDXH8nuCuPMm+LzNX3XtdQ0qNm8srHjLGtZg2kGcMIOwfkXFDkpubxd?=
	=?us-ascii?Q?QlArsMN5x+wlb2PoC/LWSshV3LiUCZZZlMp6hr3f48w25BwyeHCpGqaqI2nE?=
	=?us-ascii?Q?YfH1/g4gNFADvPwgaakAJOjhdN3kZ1lHogT8TuEsbqEL5zP6Tdf5zq1Jl7ip?=
	=?us-ascii?Q?AbXoQOTETxPP+qnmuUkRne0IZwl0JwuhFdjcCxlN9UfGzsUDL3srVqT2qltS?=
	=?us-ascii?Q?6ygSpx/hcpiTSgpcUuWGK+nLsVhKmL3sYtTXQcJdW9siR02rvrfQQVEQEbUh?=
	=?us-ascii?Q?LbSCdqnyc8uJ5grkE5WXGtXgVTFbqi/DuhhMSmmKB4DNG/2uy6UmB9N4bfr5?=
	=?us-ascii?Q?zYBHoF9L06E+CatwOYYqzH6/NEOEppjBdYNoP0TZocRFO2mMuA4SNZchP1CD?=
	=?us-ascii?Q?e2QYE7ZdUbypDUVV7l/VdBgEwrRnvpyRdrojIx48LpsNbU5zfjTwgUwrjl9G?=
	=?us-ascii?Q?WUx8P53i0oVXT9Koxi1GfSwxACfk7GGTvOjKYsatu+KzfiEQH07nYIsR57xM?=
	=?us-ascii?Q?m1antHYlMw5JQnU09Y/+Hq5QatyEmVk1WXQCDBlMd679TmGWnXd3Ekzrw5c1?=
	=?us-ascii?Q?Qj5d9GD2cS+3ohqbS8bEm9gWxAx/mSexY7PVZ7OBVjR6C7a6gVrLH5Fe2zVT?=
	=?us-ascii?Q?nnSssh1wXG15tkfLY0IYKEnOt0lf1J1mENSzNashyQ/megnjJukyXRNHB2xR?=
	=?us-ascii?Q?g8SrfzG6Cgy4ioj2v1hC2iaFn+V8M5SU97hPy5fs4IF3PMhPH5LuC+Hrz2z7?=
	=?us-ascii?Q?UI3bSCWjCNVX09jBTrc8tKFdA1WW2Fby84sAmgCuFKb3Veh4cn5KYYf6Z6KS?=
	=?us-ascii?Q?WCGb6ZQa6rJYj7/LJWB4f6eH4WB8LjQTdEuz9yA0k3ONqLbaoahmMKJlKTWi?=
	=?us-ascii?Q?5d+VjtYcyDV4wrfiOcJl0N8SUMNt6tU4Vx5HevOxwjh44ZQxPRlNumYp2Rxp?=
	=?us-ascii?Q?q9JPKg0nTkNNbOgBMiAukeo5mvDpC+CNmwaIg3iYf?=
X-Microsoft-Antispam-Message-Info: 2S8K3mk/z6T6xpxlMaW/TieinBoBMmYvyxK8LwxnJhRMDSxhS5l+vegilDtfkDP6ECmkDsuI0LI4ExzePHBM/rYKgkhV3gXfL7WDd9wXvn8J/mDRlEF3FVVNyPkVwtUvjN+X8+IMEPABFRq/HXuwlsjFubyAY8kK8RJmgYSyQ9APo2PDoDZeEtfIW9rGfSw4
X-Microsoft-Exchange-Diagnostics: 1; DF4PR8401MB0331;
	6:jbDZtsRkWqkTXv624xMhM0f37P6gfbNEVNgFMiid6MkNEhoyYKAV0AbeYT0Q315poxWrQhmypztEWQA2C1p0dUwYJEJ7MOizMPXQbL/dpIXgTg1kkryeheC+k9ZxJZlDvLu5HwmhxZsMEsLNoaPfaIxKZVTMfzM2r4t+OEvJ/FHCdK4vnp903xOeoL4y3CJXnFO7QSMgnjPvXZ+oa2kolqMJUaJbNS8IPALYpmoKcFPC3ZnWFjRa840OA23fCsvrTnOLV/35Lg6T5LA8VhFNNgiNxdCUG5AGnImxhzsloCL49nBlH9T84HrHMaXzDjoC/H/Vwzfn1PFmK4K+FvSFXlh8f6Vp3k+DG7tepXpBvfI=;
	5:Pu4ucEQw4eRsKSWYAzuWJ+rpxPWAVkBR4PZu5zAzh7Ioo+DRxizwkw0kRFUasXEp6fVZvE30l9Cr/JEhh2SoZwXlP6hZqAyuT+o2xk2biQcUZNGXLyGhKzMAD9/oRzEd4D5ny2/58ge7RvcgsFvF7Y90fipn8wEfvw2+fqERmt0=;
	24:iDnwlOqQ6tKWK8BQfEuocI+S+9MYXjv39mHv1Qn8gQOovMARlCR2J5Reyf8tl/hAvGXpX92U6rpgT5xDTDFzQtUCZzaU7hTunSe8bJZZ9Q8=;
	7:3p0rbAZi7XW5t26x48U/wEQKqm+G4/7R7Wph2GBMcUonua+jAnSlSOcUZd6WsVo/Gak5u0o6u8y73yFVU5TRPsUv0vFg4Uvay9hWbowcHFFigDAwWBbrWleg2FSRY5Rm454YS7aujpWr6VSbpUAgMxE8pK4MRiUq/EKqc07Rlexx6WBdLZHOP8vPntRKhLzzDvnWsPWHof7Y4XvXsjSISex+/NihP4wgtvFehE5S9e6RfW1mkYSBQ43GqeHZms4b
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2018 22:10:44.1150 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 63557812-0bbd-476c-9d37-08d585417046
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DF4PR8401MB0331
X-OriginatorOrg: hpe.com
Cc: yocto@yoctoproject.org
Subject: Re: btrfs-tools Requires libgcc_s.so.1
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
X-List-Received-Date: Thu, 08 Mar 2018 22:16:39 -0000
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline

On Thu, Mar 08, 2018 at 03:16:44PM -0600, Mark Hatle wrote:

>RDEPENDS are automatically promoted to DEPENDS (build-time).  I would normally
>expect libgcc_s.so.1 to be present via the typical default depends.  Does your
>recipe have an INHIBIT_DEFAULT_DEPENDS (I think that is it?) defined?  If so,
>you would need to manually add all build dependencies then.

INHIBIT_DEFAULT_DEPS.

No, it doesn't, but that's a good hint.

>An executable or library with a stated library dependency (soname) will
>automatically get an RDEPENDS.  The only time you should have to do an
>RDEPENDS_${PN} of a library is when that library is 'dlopened'.  (This is the
>case for things like pam modules.)

This is also the case in this situation.

glibc has this bit of code in pthread_cancel_init:

	  handle = __libc_dlopen_mode (LIBGCC_S_SO, RTLD_NOW | __RTLD_DLOPEN);
	
	  if (handle == NULL
	      || (resume = __libc_dlsym (handle, "_Unwind_Resume")) == NULL
	      || (personality = __libc_dlsym (handle, "__gcc_personality_v0")) == NULL
	      || (forcedunwind = __libc_dlsym (handle, "_Unwind_ForcedUnwind"))
		 == NULL
	      || (getcfa = __libc_dlsym (handle, "_Unwind_GetCFA")) == NULL
	#ifdef ARCH_CANCEL_INIT
	      || ARCH_CANCEL_INIT (handle)
	#endif
	      )
	    __libc_fatal (LIBGCC_S_SO " must be installed for pthread_cancel to work\n");

it's dlopen()ing libgcc_s.so.1 in order to get thread 
cancellation to work via exception unwinding.

In my case, libgcc_s.so.1 is installed in the image before adding 
the RDEPENDS.

What doesn't make sense to me is why in both the OP's and my 
case, adding RDEPENDS_${PN} += "libgcc" is fixing anything. As 
you said, this is promoted to a DEPENDS, so libgcc is available 
at compile time, but that shouldn't change anything that I can 
see.

Thanks for looking at this,

Marcelo

