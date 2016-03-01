Return-Path: <alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42235E00CD3; Tue,  1 Mar 2016 16:32:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.100.134 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 5579 seconds by postgrey-1.32 at yocto-www;
	Tue, 01 Mar 2016 16:31:56 PST
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0134.outbound.protection.outlook.com [207.46.100.134])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 708CBE00CC8
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 16:31:56 -0800 (PST)
Authentication-Results: deserted.net; dkim=none (message not signed)
	header.d=none; deserted.net; dmarc=none action=none header.from=ni.com; 
Received: from [10.2.33.36] (130.164.62.82) by
	BY2PR04MB845.namprd04.prod.outlook.com (10.242.38.140) with Microsoft
	SMTP Server (TLS) id 15.1.415.20; Tue, 1 Mar 2016 22:58:55 +0000
Message-ID: <56D61E9D.5020607@ni.com>
Date: Tue, 1 Mar 2016 16:58:37 -0600
From: Alejandro del Castillo <alejandro.delcastillo@ni.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>, <Xin.Ouyang@windriver.com>, <flihp@twobit.us>
References: <1455921936-24140-1-git-send-email-alejandro.delcastillo@ni.com>
In-Reply-To: <1455921936-24140-1-git-send-email-alejandro.delcastillo@ni.com>
X-Originating-IP: [130.164.62.82]
X-ClientProxiedBy: SN1PR07CA0028.namprd07.prod.outlook.com (25.162.170.166) To
	BY2PR04MB845.namprd04.prod.outlook.com (10.242.38.140)
X-Microsoft-Exchange-Diagnostics: 1; BY2PR04MB845;
	2:Ol32+I6Ldz6PsUudS6MpcbA0id6pSWLIKJ2UxgvxxaxbnCAmUiidE5LKZA7dv3Wxtv/kRu+iONI3wJSvfoX9gbhuaW1pOJgAA3hOOZyncpkQwz7+cahDNPani0EBn/dR2/sdaam/vfV0BESazSxN2w==;
	3:pq3+NpD/2920nYFmwk/70IHAKbyNpZb+zU6TSx+gwHtS6dS4tAUyeSCI4xNt32Aln0ZdVDtYMx5XCRHyO3tFpS4UuNaTJN5aqSM/NauB0O+unV0wT3IVRG7bEyqiUw4W;
	25:gJ07N/e3dtFfcu1pu9jqfhqkQC2FNnm3FY0nY6Bb+5e0F84yEjul1MRBoBNKChBwRDccnqR6X8ex/+oV9BMVadCmQjjSH4emgLXLg53zT1vEIGGg2BnQK8U5BmyISWpD19pk7k7AdZUNF42tIAvx2f7lS5SEkzNJQsof5cJr+cUcsQ5FskiNEILCCSZMlp7hzKy+Z2gJd4CeUvtH2/hCTWCO7Q0B68RykwuBSzRN7DenuhIcA2B8r7Di73NIqXpZyLdVn8bdvXdsdkpktY5inEXwDX41mrLuNZnT3mMeeCTOIY1yklcOmXkS5hnLy9sWPJh0GV3ccZq0OAMwxrWcPQ==
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY2PR04MB845;
X-MS-Office365-Filtering-Correlation-Id: 3d5e049a-b1be-4107-7826-08d342251125
X-Microsoft-Exchange-Diagnostics: 1; BY2PR04MB845;
	20:V0FgI1hqH86/GD12M0bN2Nr3GDZzMhBauVHCBx8tZ82cEl+h3SVcPI0S/o9M+TzOdPXMi2wLJdH8F2UZ9h/i7Sy4UCa4ny3Mm5hPCFsKevM8S2zkzzbbseWsBCCgT3qqn3yZ1xDDi37Yujm0Yz238zQvIVTvOmwgW53ku051pgCr5pfpA2BCFB7mNMGgBOSfTdVQqn3ELzNfi42DnjgHe4Fiek+mF77qGv8QOzNOX2yzRYtKRYQTCRorKktyakLJ/1biv0vkTUDA+umZy8023speeHiSV7zdTK/rG1Ctj+uFzpW5sCrduocXk1oPRKuOOiRjor+97eBjxRokj6OnQT/wmKc8kWW7AUpoSlHkGdGb4ExMaaSsKWuw/Nh5C+LicCgkdwua0vWPZfi+xhMKkaHQjDIKVVldOGo2XVyDo/o70KyuNwxsjkIb9JhzgPkrsRd//JSeKA9mGzoxNpeBAfKhDeQ69b2Ky3JxLwh9QvFP9mUQYgSTdd8L+jVbCv/NlwjGfUnnMW219i3n+CKrrIQZ4rxzswPVb0IaVO9mdfiPD5+yrAdvQ8j+zMHZtQo+mWEB42ylAnBiVG8hVs7AOIuXH37YUf6jMgSDmi5ateY=
X-Microsoft-Antispam-PRVS: <BY2PR04MB8452EF7BD8F47149AF1828886BB0@BY2PR04MB845.namprd04.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046);
	SRVR:BY2PR04MB845; BCL:0; PCL:0; RULEID:; SRVR:BY2PR04MB845; 
X-Microsoft-Exchange-Diagnostics: 1; BY2PR04MB845;
	4:flvgo7EA0I+WC0t49yeJoNLJrextARcJXWsx+s4BqvU/NJ+HWoEohduRwX/JJYaXRrApfXQXJ6X7e3RKz1LORYw3ZcDoluVd1NZtZSVAQQDqM47RXRBjOR72pYIXfggK8lEE0ZGg25BJxCTlRF5yZflE+wRdjqao3Gl8vfxV+Lj1cCVsncpBVn0UyvLbtTuzCWbd6GQlGUU8OEf4lpeDnt1yeJ9pTcHsAsdbIa6I5AMx8VpfcPEbJXxGASyO4h0Jk0ZGen0IT+i3hMC1QgRj+gWNdXrAEBRp5R0ZQ6UUo6yvK+BYGIBJ46L3p7fCyu7UxFMcKnKKGB1cdXzHUJ0KD7dwa83tUvZor0qf4eS1SNi0VnVaLCipMUi4GSInE/Uy
X-Forefront-PRVS: 086831DFB4
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(4630300001)(6009001)(6049001)(57704003)(479174004)(377454003)(24454002)(23746002)(5004730100002)(47776003)(2201001)(80316001)(42186005)(19580405001)(19580395003)(83506001)(50986999)(76176999)(66066001)(92566002)(5001770100001)(54356999)(50466002)(87266999)(2950100001)(3846002)(2906002)(122386002)(1096002)(64126003)(6116002)(33656002)(4326007)(77096005)(189998001)(86362001)(59896002)(40100003)(36756003)(230700001)(5008740100001)(586003)(87976001)(5001960100004)(81156009);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BY2PR04MB845; H:[10.2.33.36];
	FPR:; SPF:None; MLV:sfv; LANG:en; 
X-Microsoft-Exchange-Diagnostics: =?Windows-1252?Q?1; BY2PR04MB845;
	23:9eiuxgVLmQqbIXm1LaCL6PMMrWaQrWeUHQPb/0?=
	=?Windows-1252?Q?WUc9IWl3ncgvmQU1o2TTRfirvtpabHKAvIt6xJM4wPF0ZuOoT7o83o+F?=
	=?Windows-1252?Q?n+nrlSjGanVi0+taUmsh+vEuKLLPeo03lFSzUCTGwEaD3bz8Tip4KQZ4?=
	=?Windows-1252?Q?KPHBV0YgoYvv6qEjC0iYLE5AIQ3BY+DqM1WDrxiOBpgKAGzOljzvw+Jk?=
	=?Windows-1252?Q?5A6dlc5qzjP8vM+fgHIFNqnP8uLyKboq4nXLsYy2kFvHrwk0/NZRYTIe?=
	=?Windows-1252?Q?mUY3Bc+0QxnOklzglkPcqOxA8NuK06TVSkEso82AwkDswI8BgRAy5p24?=
	=?Windows-1252?Q?ieMuHxeX+7fyM6AaiZ2COoDQ3UZaUquL42y/Ie240qKKLVNQlMrg/KD/?=
	=?Windows-1252?Q?cEHVUb+DEp6Gx2TQHrWfRgXiIEH9EoIMCxWe948Mi3MfVC1oVePZ5rIl?=
	=?Windows-1252?Q?eXLx1Isoxol5FwCS7MH1yAUSqGOJqvHYsC50H7fq91ItfwmRZoXK90ww?=
	=?Windows-1252?Q?7q/m+AiICdtcTskH554Lx08Rvjp1L6sW6L4mxAvNnmiEkw+jUfsFC0KU?=
	=?Windows-1252?Q?1vyLGZBLIlec2iypjc7AhQftJ5n+GAHtAgh6xLQ5RNiN9gsLo+qYEGk5?=
	=?Windows-1252?Q?m6O1eaZReuZ5iza2P5Sa6v1XImNsoAtbRHoXBkU9+Hcu5a3nWI9pxfim?=
	=?Windows-1252?Q?UPHI0vDqoHoO2VzEgFCjJ/LY54acmku3TwSz23eQC8NpOfokV/WMWAJe?=
	=?Windows-1252?Q?eyLXiMheU9LNhrW318noVUThsaw7DTRbL/73lKcZwliWtPcPSYotuCjJ?=
	=?Windows-1252?Q?c5uv12BdsYCrDwORLefVYoV4XBUawWc1xAGmdepRqRzzuKZw1RygRanI?=
	=?Windows-1252?Q?OHg+UWLOhsBh3ok5J4LatGJEhGIPZiJypttwPiglpMdjmSqlH7xSLtXl?=
	=?Windows-1252?Q?ruCahRnENNs8vRNwBUmoN3A6kAudU2HD/CHE/IMXwaWuxWaMkrVdp7gb?=
	=?Windows-1252?Q?DZAL5xv1znpRFx42IjbFg5XQ0G3GfQZQTzJYZv+6uSmPOYkDVJNBFr2P?=
	=?Windows-1252?Q?Cz7YTwXTzMt6dVTzcCojm4CyS3z4irW/EapK9dImHgEIcL0yoXxNUYO3?=
	=?Windows-1252?Q?ELMW6M84siHw6bxvGVJMuBjv4UBgbbgw2MQe4+BPPZHAyQSv4UYboFy3?=
	=?Windows-1252?Q?GYTYwQ6djI+pC6+m+0xjNXKhiPxx2bMHje8xLyrmcPluRETfzZkIIefJ?=
	=?Windows-1252?Q?kWdutoDbPQMs303+M0jL9ZqRxmbiQyViWH+bo=3D?=
X-Microsoft-Exchange-Diagnostics: 1; BY2PR04MB845;
	5:XaHpQi8uc9w3xFwP3+wk+ie3L2S12k0nS5LtZfj8gFr9uMN5mhsz/r9jN723qD1TURx00VrmWToiN/zazwN+WRwWxHnHe+CtxVkOvgOfnnIGWgjSCbm+Fj9At1FREeWZE3RLj+Lo3BSfBb0a1TyPCw==;
	24:o6FG/BalD2TopxayNTAUCr1J1OkyxJOP8lKjx9kovyu3D7Qs1LsPAJd6Ger5q8darHa1Mzsw/oTHGBBytI0nesMqcX+0ugV4RP2LChTTB7w=
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2016 22:58:55.4982 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR04MB845
Subject: Re: [meta-selinux][PATCH] busybox: explicitly set temporary shell scripts to be executable
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
X-List-Received-Date: Wed, 02 Mar 2016 00:32:01 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

I first started looking at busybox postinst (modified on meta-selinux) since I
am getting errors during "opkg upgrade buysbox". The errors that I am getting
are of the form:

update-alternatives: Error: not linking /bin/gunzip to
/usr/lib/busybox/bin/gunzip since /bin/gunzip exists and is not a link

Which only happen for utilities that don't have any alternative installed after
removing busybox, hence no symlink. Utilities that do have an alternative
installed are correctly processed, for example:

update-alternatives: Linking /usr/bin/ar to /usr/bin/x86_64-nilrt-linux-ar

The root problem is that meta-selinux on commit
521ca9c9cf370840e9f8c808a7955aa5da7c356e replaced the temporary symlink creation
on postinst with sh wrappers, which breaks update-alternatives when it tries to
update symlinks (which are now sh wrappers).

Is there a reason why the postinst needs to be different on the selinux version
of busybox? If the postinst is just creating temporary symlinks which will go
away once the update-alternatives block later on the script runs, do we need the
sh wrappers?


On 02/19/2016 04:45 PM, Alejandro del Castillo wrote:
> During an on target upgrade, the postinst script is creating scripts
> that call buysbox, to avoid missing commands errors. However, the
> scripts permissions are not set explicitly, relying on the mask.
> 
> Signed-off-by: Alejandro del Castillo <alejandro.delcastillo@ni.com>
> ---
>  recipes-core/busybox/busybox_%.bbappend | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/recipes-core/busybox/busybox_%.bbappend b/recipes-core/busybox/busybox_%.bbappend
> index b4935b2..2e806af 100644
> --- a/recipes-core/busybox/busybox_%.bbappend
> +++ b/recipes-core/busybox/busybox_%.bbappend
> @@ -78,6 +78,7 @@ pkg_postinst_${PN} () {
>  						# we can use busybox here because even if we are using splitted busybox
>  						# we've made a symlink from /bin/busybox to /bin/busybox.nosuid.
>  						busybox echo "#!/bin/busybox$suffix" > $link
> +                                                /bin/busybox.nosuid chmod 755 $link
>  					fi
>  				done < /etc/busybox.links$suffix
>  			fi
> 

-- 
Cheers,

Alejandro

