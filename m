Return-Path: <alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45C14E006AD; Tue, 15 Mar 2016 12:45:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.141 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 882 seconds by postgrey-1.32 at yocto-www;
	Tue, 15 Mar 2016 12:45:23 PDT
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0141.outbound.protection.outlook.com [65.55.169.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE082E0048B
	for <yocto@yoctoproject.org>; Tue, 15 Mar 2016 12:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nio365.onmicrosoft.com; s=selector1-ni-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=vl7LNWydFObV6NtWjD9dFX3L7/m2ejoL4UIfhu/JxVk=;
	b=aHIvJDFsIczauwSfJBDU/BPNcHJfZbRVE8HJAZFrzvkAveUaKn632OTvWvS7n9J7sSuR0RcGNm31d0c8e0y/djRsQfbjDNG0Fn2isM8AYApDvmWdezK2qzZYS8nbFlpfR5rmSUWrnL/gDJ4l+75HcJ2j4zFKasYpdJHZISnWlg8=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=ni.com; 
Received: from [10.2.106.105] (130.164.62.224) by
	BLUPR04MB837.namprd04.prod.outlook.com (10.255.188.11) with Microsoft
	SMTP Server (TLS) id 15.1.427.16; Tue, 15 Mar 2016 19:30:38 +0000
To: Philip Balister <philip@balister.org>, Yocto Project
	<yocto@yoctoproject.org>
References: <56E74644.3090800@balister.org>
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
Message-ID: <56E862DC.4040102@ni.com>
Date: Tue, 15 Mar 2016 14:30:36 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <56E74644.3090800@balister.org>
X-Originating-IP: [130.164.62.224]
X-ClientProxiedBy: BLUPR08CA0049.namprd08.prod.outlook.com (10.141.200.29) To
	BLUPR04MB837.namprd04.prod.outlook.com (10.255.188.11)
X-MS-Office365-Filtering-Correlation-Id: 31a90537-e9e7-491c-fa84-08d34d084a5a
X-Microsoft-Exchange-Diagnostics: 1; BLUPR04MB837;
	2:a/wnk1cu1CMdSqN8hpHUx2HleuSE6vIshaAZwBwZH8Z7tW5qE1IzD0L3GxU4ly9jf2LxXuEauSw5WXN5/C09vTinfjsECSg3M6ULd+wrQ7hqIBub/S3GPU1hIItGS7pgEWPYMgaywTdWhQilnuwF0xpEIYyiSVBqlTjl4J7owMaQuv/ku5v3fQUQuxz5XAS3;
	3:E5/fuVHemQVA8nr9E3H9UlHCB3Yf/3hO/ji4HZ24at/0/x5VJ/T6dUWfdBTYxSGKogRSDXuoXimteMhMYX/hLt5EmAXS+PdKC8y1T8+XfGwrq7FCX4v/TV2yTLNIHX4n;
	25:dMfexTLKHRjSC7acJ97x3mMotJ6yLHpVpfHsEkZD39G6d/ynUIlfRU7BFGPc+PByABuCbZzE+49C4l7p5N8Fovu1WGsM7pZYUpL0vkF52xQvNnlimy397omjU8S2YlkLuYsFHHxQoMvxFdmHogx7n2JAgFlfT8ldlHOtLTQkKlbLuqau9zNPkioVnbhHg4FccbGs9NZ0Uiy1ECMSXjYUbRkFwNeICpHFadr/zeQsiMDTlS784hvbwXp9YDj8LuwEu/PvdmheHBgvHrtmTAOUbsLuY/I/12pXp+0iV7Z67N+xv+x3A/8W21+FEie1lqKSZt0LE0FVI8JCEejhdbgB1Q==
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BLUPR04MB837;
X-Microsoft-Exchange-Diagnostics: 1; BLUPR04MB837;
	20:P75Fmk82JuSczmy8gk0iAOLRu+OaKv/A8RqR30F7S2wvtzzwechpyYq9cGPQmL+pL53o0P6a++WktDsn24Z51NYJ6tln536bimHT/xGhsgXPyRU+2yEQSs88jc37Io6avHcgG91+WGA4hKD9jdrHqyjm7s+h7mbZoCY8rU5G8vHUno590zW0EbSNJd9RGfsUeCF/Ke/X/ixJim2qkNqSyLKRS755lpA6fIW1dsz8j1B963SuI+5KcmlLo1huYdLtsfPXOfvphfZwAbp0kliAY/c51QeQpfTNBCo/x5i3eUCx7SDH1+/N9zEH27hEcOkTy2qLecVKsYHJwBjtwh5v0mE/wByuZllsZqRstZnSwPp2NTkQEWMqYOFi7jGB5CE5OcuOiG0XDwtaBKwZmcDEfx1R45alw//k7hA9Kz39eRySCicqD6R9cBi2pfSlm3W5ZCgmBIsKHKa5jvuLoqU/Ak9Mv7zi8Oyn5fzxlWUDc9GHFMGBVHEfxfzPkINI05wP4xInrlRRcJTk6E7nXQsu9GVRqUto8HdWw9pywqMuOlryH/z4yRl/mv+P52DMQn/7qsh9ZysrnnhgaFDQF1pkejJ+ohTA8QdY+rxbyISz9Sg=
X-Microsoft-Antispam-PRVS: <BLUPR04MB83748988F6867A2FF3B44F986890@BLUPR04MB837.namprd04.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:BLUPR04MB837; BCL:0; PCL:0; RULEID:; SRVR:BLUPR04MB837; 
X-Microsoft-Exchange-Diagnostics: 1; BLUPR04MB837;
	4:o84GI2yHlXa8e/ESSQW/99WqVTfcj/DCYw2g2I1i+DBrsdY7aOa2yajp081ql7YzdI0EDbg2/lWjLgsK22IEBqRzFbMLBIH0BkvyzKaF9OxcRaJWxVytAl90YlzKw2cKCEBogu6MYj5xtePt9a/OSqMydAST0wNNIM8Re7zEG/4SMac0OWZq+zGsVaTUtllSIQ9DGoACal5LgEXh3BcTy7mEBiVFzcQkBqiJf9Rhz7eoDR3n4zoAeAs3Q+l37sZBjhHxc6w2w750ebDWvzb2mUnfydaT5xV6jPSqMB0om13OPMY/shBxN+DdnINUp6510gm2MxgIgPUrxRNONL4LdpQTBg4JH8wdc6H5bywH6ersuUoeRTWPh7KijIxTLX0/
X-Forefront-PRVS: 08828D20BC
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(4630300001)(6009001)(6049001)(13624006)(479174004)(24454002)(52604005)(377454003)(4001350100001)(47776003)(92566002)(65806001)(77096005)(64126003)(189998001)(1720100001)(65956001)(5008740100001)(66066001)(5001770100001)(50466002)(65816999)(15395725005)(2950100001)(50986999)(42186005)(54356999)(76176999)(5004730100002)(107886002)(15975445007)(33656002)(19580395003)(586003)(230700001)(80316001)(81166005)(86362001)(2906002)(23746002)(3846002)(1096002)(36756003)(6116002)(83506001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BLUPR04MB837; H:[10.2.106.105];
	FPR:; SPF:None; MLV:sfv; LANG:en; 
X-Microsoft-Exchange-Diagnostics: =?Windows-1252?Q?1; BLUPR04MB837;
	23:k/s91xqcS2F+0Ua2V2n+3KEijhEU2tLWp67XKf?=
	=?Windows-1252?Q?E/9UmeNs4Ci3Qe38hh+Xi8SdYCsodAo6hpINonXa8/joY2XkmklakgyF?=
	=?Windows-1252?Q?xH3cEFvG3oBMkJa/W7dbz8mH7AIWhpj76j/4/wzQxLk05oB+CJ0ilHUS?=
	=?Windows-1252?Q?FsVBmapf0H46vtSGpvyBPtChxhj3toLF1KmK3WIC0NAUt0bNhPpbceys?=
	=?Windows-1252?Q?lfowSj94H+Zd/ufuHyn6DZ5r+v6I962Bg38UypICcw1Yf9BaOZ5BadlR?=
	=?Windows-1252?Q?2ksm+CZjkUravXh5xJivTLLrs0csnGmrn1If+MdbMN526YNionw4uv9S?=
	=?Windows-1252?Q?XywLQx1u4VtOFkwkfi63N1V5j8Rta7lMYbod9WFOMmSRZGCDSZv7qlXv?=
	=?Windows-1252?Q?hXjJyRERBX3xL3nmXRYtM6L3icILLWc3Vmt+zRJAyqDLq/mAUJ6lzuOa?=
	=?Windows-1252?Q?pC68mHBNgQ31TQdTfbeicmVnm/hh+vgbFelHCGoEWZn4qaL/OaNj5jdn?=
	=?Windows-1252?Q?+wUOk/VK7pGYuKCNPKGwzl3BsO8csam8slaGI8xXnYut+m+z9Op5srjP?=
	=?Windows-1252?Q?8aw8zgcFj1ndqpQBc64mak538Q+leOBlx+3Q1BOclaUJzOjrStipXHT4?=
	=?Windows-1252?Q?Tj52J/81bvuP/CIOPHvxTRoK9L+zqZqScY+mN5YGFfGS/g1HLeOqGitv?=
	=?Windows-1252?Q?A6Td0YujdHsbKBP7dZAIsDivky8baUob+pHTvohOc+cwjjzEecEo9gdl?=
	=?Windows-1252?Q?/bfrxpVK/qNCuQVEnM9k7ZHCX0NfZvPvvR68Nz0K+9zHopG+8jKltHUE?=
	=?Windows-1252?Q?PFlz6GeNeBsHFAqhYRDehSVhq/D90uLncE5ZCPDSIx5WWd8Bor6B1zz0?=
	=?Windows-1252?Q?+8A7YUwKsu2B3b5dOkaRY5DxOrg4OjQRkwa55HYAvDn+GT34Rf+uQK+4?=
	=?Windows-1252?Q?NQXLuVdak9MxBjEtEOk7cMhycRUNIzxIHRVdqM0ENOCgnK4N0k71r2cq?=
	=?Windows-1252?Q?nkOvtp2E9teRQrUsKfLBfXv+JLAlG3Fy5li39D2EIKyQR5usA9vZm4M7?=
	=?Windows-1252?Q?xavHSHp/XAI/DFN4Mws4ZlPS8eVhzhiXgrb1tsMX8uwalPb7wooQ8a/P?=
	=?Windows-1252?Q?EOBTaj4DSlfVqN7NZ/gja3obJptqeoBFUUQbnkQns58NT+CfUv+VgfT4?=
	=?Windows-1252?Q?H8pdCJpLuk4JjGVnUi0TQrS5ph/aZo28bd9JkEeqoDnUtoz04A3SuDEV?=
	=?Windows-1252?Q?hpaY1StytTDCC71OLW9hcNCLM6Mt0k52J++84=3D?=
X-Microsoft-Exchange-Diagnostics: 1; BLUPR04MB837;
	5:8UexHyGUgPre6MgS1E9bNtbcCeV6FOmcNtpxkrlBo1nA9566SDuv9L61yYAu9VgrZtUSaEqRDthj/z592UCzsjVq2NHbdbJL0Amgw52HZ8YE1J4r5jn62ie14/bVe7NH7F9tw+DK/W5kxtPKDAcQww==;
	24:SvsrpsbX6tuuFggsWW0LMVUUJl8ERQuD/PU3GsFNC6Q1D4ULc0EYZ8/bqM+EFsMamEhkU0V37Wi8WJSxxX2cerm5nW+0F+r98Le2Y3eDJYA=
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2016 19:30:38.9581 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLUPR04MB837
Subject: Re: [OE-core] OpenEmbedded Developer meeting April 8 after ELC/Yocto Project developer day
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
X-List-Received-Date: Tue, 15 Mar 2016 19:45:30 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

Hey Phil,

I am not going to make it this time to ELC...but I did see that the
meta-debian guys are presenting again...please troll them for me! =)

On 03/14/2016 06:16 PM, Philip Balister wrote:
> Yes, I am nagging.
> 
> On the Friday after ELC in San Diego (Yocto Project Dev Day is
> Thursday), we will have a developer meeting near the conference venue
> Jefro has arranged for a room at the Marriot next to the conference
> venue, sponsored by the Yocto Project.
> 
> OpenEmbedded would like to thank the Yocto Project for sponsoring the
> room. If you would like to sponsor a future meeting, let me know. Also,
> we can accept tax deductible contributions via Software in the Public
> Interest (http://spi-inc.org/).
> 
> http://openembedded.org/wiki/OEDAM_2016
> 
> At these meetings we try to follow an agenda we develop before hand on
> the wiki page. I've created a rough agenda by posting notes from the
> meeting in Dublin. Everyone, please go over the notes and add remarks
> for completed items.
> 
> Please add your name to the attendee list on the wiki. You'll need an
> account, I should get an email when you sign up, but nag me if it isn't
> approved quickly. I've seen some issues with the emails from the wiki.
> 
> You can also bring up issues at the meeting. We only have one day
> scheduled for the meeting, so a little pre-planning helps keep us on time.
> 
> Everyone involved in the project is welcome to attend, no how
> knowledgeable in the overall OpenEmbedded project We like to hear from
> people from many different use cases.
> 
> Thanks for reading and we are looking forward to meeting new people!
> 
> Philip
> 

-- 
Cheers,

Alejandro

