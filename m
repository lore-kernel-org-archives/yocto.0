Return-Path: <mkelly@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ABBE6E00AE0; Thu,  6 Apr 2017 15:06:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.45 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0045.outbound.protection.outlook.com [104.47.41.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 447FEE00ACE
	for <yocto@yoctoproject.org>; Thu,  6 Apr 2017 15:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=u4UtdhGJCUa2faBZDY5bRBsi5b+h8+fzPGaymfUs3EU=;
	b=r01aW0rMonv9K6au5yODTcCT9MrfxmDd0/nUx4kAlmvbAXbnaMn2dSWPpgrb2ak4yQ96LiBlII7h0NgurhnHjcIx2J3zrsYCgRD957qYxgQm+CzRplIQuL4A32IfWyoEjfjRKabaHvhLW+QaFuZTMNjm4B5WDaNmVzrbkCXzhe0=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=xevo.com; 
Received: from [10.0.1.79] (65.122.179.226) by
	BN6PR01MB2675.prod.exchangelabs.com (10.172.195.13) with Microsoft SMTP
	Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1005.10; Thu, 6 Apr 2017 22:06:38 +0000
To: <yocto@yoctoproject.org>
References: <be363dd0-156f-4e7a-2513-325b644b3325@xevo.com>
From: Martin Kelly <mkelly@xevo.com>
Message-ID: <17dcfae9-b13d-d5c8-a4aa-7aeb0f2ec845@xevo.com>
Date: Thu, 6 Apr 2017 15:11:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <be363dd0-156f-4e7a-2513-325b644b3325@xevo.com>
X-Originating-IP: [65.122.179.226]
X-ClientProxiedBy: CY1PR0801CA0067.namprd08.prod.outlook.com (10.166.203.35)
	To BN6PR01MB2675.prod.exchangelabs.com (10.172.195.13)
X-MS-Office365-Filtering-Correlation-Id: 19132910-51ff-4226-a677-08d47d3932bc
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201703131423075)(201703031133081);
	SRVR:BN6PR01MB2675; 
X-Microsoft-Exchange-Diagnostics: 1; BN6PR01MB2675;
	3:DgCNC3/5UY5d8cHkEwf5bEuaALS0ChBheiPBgI3dNa5WLxbVCbYxuT2QMpT6lYJs97VJGKlHTalpVAKEl1kxexbFFhkmmHwFIzTp7qxqK61yy5SyvKuJFeAJgh/FrINBVIAeXGFhUBhXcJyMHo17VPkL9RaPGJ3uEiB2/6vbDw+l31vq5RPsrxpOf6WDV4de6pe0r4eeMhiqSlSYgz5dMwNXzXzhXQrp54EMOXjkwUSG5l+BGedxB9F0d6q+bM1LZ7aUwdcMmMokny97VUo3621MCEMxUADD0x6usyGH2OiIY79Vuv2FR+8ZIXaOBY5IAG1NoEfqfORLnF7zT0OjVA==;
	25:ow6f4HYw2l1DH8RRQzvlzVaLwHEZAAwFHJqkQ6Dd015GOvEoyHPRg+/X/XMqjHrzqn7jHhPHTjOasH5sL7kmGTMFsdSZgCD191sDoS50BLr4NElUwtCKrZBGMrKriVJ0dEs/tsWxA8lsp2uEHpFzp+iF2yLauWXGCYhVnkj6wtSjYtgnPvaTKUyHjH/2G4KT9SPKDQzkzZJVB+EK86Ly4OvUL24mfupmholJfdOvIVP2n3hR+KgJJjagCap5eHFSl4nu7fUnh79gcABo4in1G26FqmTERWxEfxLEWwkqb8G94I1EfOwgC9pMRK/B/nROqL4+KJvk0DslftHyK87HudeCizlB8vRyD/D2jj0yCzruz9Xh9WKw2hfYtSPpwgPXMMgjXdwnj/aUsCKtHN1QH3l7qg8EoTc1uG9gzDUKD+pBpzG6Ngzm10qsP37dPfHGsk6cendRjIhOMYhH0N+IbA==
X-Microsoft-Exchange-Diagnostics: 1; BN6PR01MB2675;
	31:HaSzAEjWYJjXUEw2FPzhJbZ+R5a4D7EgWd4FNbFsbP3boJ/THNL4CkEGXRZx6Sg8KL8GXR7rHJ+dLUNmGJ06QAh9rXgtojuv2oKnpTgA/QKHeFweuLVL8JmG50bGxgjAuuq2HM4g3Sq6Jyv5rq/O0VENTi+02SgL1wbI43v7CK3sLVGEIOeUCBSTEfqm9QaE4Ivt/+kTIzJ6gMmhJmBt45pauZuYTrYOxurqtyFjSoabMmJtp2uxcbackjnBq3ZFp1SF3S6OkzOEoP5A6+RYLy2PLO8nnWb9sSU/XFa+Tfk=;
	20:HIug+eChkksHPRIsbuHEnAsv4zmb1R2tiV4TXAtk69uCK/HaBPG1sOM3zhKGfgz5xQdrhKpEUkLET1LkH2mFYhpc6ryCoDrU1uaVjk13VEbBMnmaHhYk742btcrXkKoUwzJ5mZ0EAptK2TI4nsLZcGTbbaNKW1Rw6SCAvOqKp7YS/6TTsNWrmy4ci8Zj+0lJrq/WHkQlHzZwZneRuAaZIJZPLPpQxbN0OPHqJAQOR/n7A406VUisUiIWoyCQuqSgoUBWtHlOKgquBw21TEs8M+b1wRZ368Otlhy9BCMTyBknUGe9mFVXtzGStwdedy1v5PLBTeN5nclWZOtmIdDbVQ==
X-Microsoft-Antispam-PRVS: <BN6PR01MB2675FB04B81E2CB426AAE5B3AB0D0@BN6PR01MB2675.prod.exchangelabs.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040450)(2401047)(8121501046)(5005006)(3002001)(93006095)(93001095)(10201501046)(6041248)(201703131423075)(201702281528075)(201703061421075)(20161123562025)(20161123564025)(20161123555025)(20161123560025)(6072148);
	SRVR:BN6PR01MB2675; BCL:0; PCL:0; RULEID:; SRVR:BN6PR01MB2675; 
X-Microsoft-Exchange-Diagnostics: 1; BN6PR01MB2675;
	4:c5dnFM1/hc64BA5OxhE0OZqlPHV6W9oyxT6a0LrwKqCLDILnBnAs7z8fCfaFdPluBEm1biLUH7e6WlBmKrELbLgMZHA5mmbytCyYl1OkXS4BDo0XLsnSzVfqBFOJHp37iVpFuV1UjlZwKpG6+Bu4+E4h77FBYckFEV7Z2HnnYGhKT1oZGGNpAF3oLFr0632hxvmbG98Qvtoq8jJqmsfU4RtbXXdwYcVDKzLSWTzro/Sjs95WlhJQNoQ/8rW1xLZDmDu6nBDyg3O7/5UwSywz6D1nHYS9o4RZvAn+ueqFtViq3eoGtpmygyZNe7agCA4ONlx352pfwtBk3gi4LGZIBB2BSFmb2bA0VDkR9lESFG/Ag3fBwX4iMix0HbI6j8cd5++vUqSQVyDeJ9Xf1h4KFIfxE0yjhW0YbxReJlp+A8VDexccu5KlglYUcc34V0FCBiZgls9TmebHClphf/QZ6umiXYJ3XAV4xLYFLd1ca0CZ9FOjsaGOXCncAV9HOQ05EgakQqoanj1ozq2JpLbrt4RX5yB1IQn+l5tq62H9lcBVasdNBruIRe/VMpN2hGfciYmxOs/V6aTBllsps1EL0RxM2qo/3gx6rpS9b2uVSXzpBVd5xPF+8z3S+csBVeSh+n5BaBV+v7O7dpkpac1CSekNWdUXwwkU0Gas1L19dqESRkFXs8Z1PVuueL8CrMKW+fTuU9rI7pJEIIz61ockVg==
X-Forefront-PRVS: 02698DF457
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10009020)(4630300001)(6009001)(6049001)(39410400002)(39400400002)(39830400002)(39450400003)(24454002)(377454003)(2351001)(42186005)(64126003)(31686004)(31696002)(86362001)(36756003)(50466002)(33646002)(23746002)(3846002)(6116002)(81166006)(8676002)(230700001)(6666003)(6916009)(2950100002)(229853002)(53936002)(6306002)(50986999)(966004)(4001350100001)(110136004)(2906002)(53376002)(189998001)(38730400002)(83506001)(53366004)(90366009)(6486002)(77096006)(25786009)(7736002)(53546009)(5660300001)(54356999)(305945005)(66066001)(47776003)(76176999)(10090945008);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR01MB2675; H:[10.0.1.79];
	FPR:; SPF:None; MLV:sfv; LANG:en; 
X-Microsoft-Exchange-Diagnostics: =?Windows-1252?Q?1; BN6PR01MB2675;
	23:sAr9wMjHyCXPZbK6c5KSExmsKqqL3kvP/V1ks?=
	=?Windows-1252?Q?vp4R5AzuoxPTEk9BEpxn6kIYe5MzYTG+9rn5b946anmpVFRlJpnz19jl?=
	=?Windows-1252?Q?4xe8bg7GHwKqkJziTgRX0IHiZOS9rHurCBSowLR9w0nkVfcKU69kX7Vn?=
	=?Windows-1252?Q?g5/xzxLOkgdlx335E05S8BKKA0VjYU3ZvmPzUClbwu52I/bVb0z0ATmH?=
	=?Windows-1252?Q?7zfYpVUVxbC9nHgBQcUZ+5EYW4rOerOdPp5XeT34D2zxUMLPVEGMV+JL?=
	=?Windows-1252?Q?zF/gXM1JhYn65anKuTpEXyuqwQm6R5pOQVm+wek3jpQqDx6cAZdKF3Vu?=
	=?Windows-1252?Q?kjWXBTxZtPxWKbgcAcTc5D6aBckbdJkY9bFdCc/uKtgtFGLN2PYW2tpj?=
	=?Windows-1252?Q?hVZvTSgOaARNyEOE9Uh8a51gFk2+QeiWOqVcb1lJnOlsGZ5yCqybUXa4?=
	=?Windows-1252?Q?/0FsVrCmxbA0igotkQ+CMSz+E3oiHF+c5o5I8khJiW/vQdhajxEqniXe?=
	=?Windows-1252?Q?WMgVYkO8GyG+cFpUq7Ts26V+Hwnb0/5L3xgCPkITW1bs81IgJQWYVwiL?=
	=?Windows-1252?Q?6S9vTJE5kHcOgbTcpQqIeil4dx+jvuSyOxn0h227yEM7X+pv6bwQ9p31?=
	=?Windows-1252?Q?fBwU1VslEddQyZzf7sCk36hQq0tFUbGt8+In4ypHj8m1Xsj8c+Llz/G1?=
	=?Windows-1252?Q?rtRU5UDiSRhcXq8A5WXQn/pbwXpaer0lPHe4FaLEPLaZEe2TeuPP9KWP?=
	=?Windows-1252?Q?f1BVwITRzxJDdPeRAcxeuL4eHEWC9Zp8bIaY7x1IR7VUj/KrYBGZJnQ/?=
	=?Windows-1252?Q?s/j+s9CcPPRfXpmWG8UYUn0nvkDgwTmGjBBp3g1U8UY7ArRov2kEzDZX?=
	=?Windows-1252?Q?u8IyEi21F2a2BjjvmIPU0UpG6x4hSbxfodGgfZPClsWBsODfPdLLmKRB?=
	=?Windows-1252?Q?WIaxECJCWMHPkJGf/snTCg5I9C7PvPMq5zGcyO+uBWnQa+yfJcZkDTYu?=
	=?Windows-1252?Q?a9UTs10XEMvco1EEm55ubZ5CkjCuMAQZCqhjioNhnEXBYprKjvcXGEgd?=
	=?Windows-1252?Q?hNnRxkA5FJU90CfrZg9dFDGdqFXKAWfTMu/Evq7vMOU9D/KkLH1ePq4q?=
	=?Windows-1252?Q?EHgY5/R0Fi4/yYBPTIBCd9Ux1KxgKnO5Cv4klTYeqRfD/rYEAmJ77xl4?=
	=?Windows-1252?Q?pZzUNHULA/KC2uf2aMuRVI414OYxBtR58pHzXx5WJa6zGge6B2zYToXS?=
	=?Windows-1252?Q?k36dCeACvHzJyz9pW4YNi2/8aJrMExlZE98EfjLUWXcW41SfmNXxAfX0?=
	=?Windows-1252?Q?7cbPlKlxg75LDHQ2aOEuTPoAL0iaHNYaamZ1t0mUCg1OGHB9TnNXUHbk?=
	=?Windows-1252?Q?7IJR7hXSaxnpCEarDaprAHYbHyRBShCVg=3D=3D?=
X-Microsoft-Exchange-Diagnostics: 1; BN6PR01MB2675;
	6:tmbie1qomANTkguHGlNc6SnAkzLXpEX3fWx0uz87QE0EUdPvbD2rNZdCTz4tX+iulugh+hXi8MEmnwYQ+egDtJ2Mc6IIFiFFf2nvjWGu51NK/HOrC3tWbjjZ4b1ovo5ffKVHzF1cpZRpLeEEPes5g2iheQ8fwKkeU9PKfDtifWp5ucTyeiDMg8XxuVGaynHZcc2plDwkYt7SYviIVNtdVMYG8lC0/Spi+8T0dR7lq8jRmYuOcBMIS6Hg8JHpN3N48ItIwLTf0munE9Co/6o9G/+Sfk5ZPFR7e32iyUbOcsipz1LeO8zx7fhuiXILEsojYrNZlyLM73/ZIg4mZ2knWWBo9KDbGaufD+i6fRybqs+WLzjZ1VOoAb55tHE6xmyZxmu84leBoaBn8E7w1F8jJw==;
	5:ahf9+ugCiMjOOFhXxRTSRLWIsmksTdevTmF5lPI1rvq6nihDIyRyvYLTeQsMJwY/gxs8I25jbNSq1oQWA8tPGsXEqUPueyWHCjF7hwXKw0osEVywvXUSN4wu+8vJ3D1hoNY4Hl4OQHfifkafdE9gAw==;
	24:lh4Mo1s/q9BU08VXqKwJ1UU5BEdzOyL6a8jNFgbrmD2+hP+pDEIik3CWRz1RLzTiCJN0gm2y8uWbZj/hmYUOabk8dT8oNTV0cEN1qFciG80=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; BN6PR01MB2675;
	7:r4XfRx7qhrOn36a81bWFcl9MIwECXR7SeP8AVN1xOTBLPfqrPpLSDFBEbWTMm+rKS5SH/e598i/ExC2BGRYNuIV2F8/9+xT3TgByEBLWiEl0RnzT+rmCMGAvSC1OjTVq5b0KZ7mq7WmnU1aj8m80iDU+PbmjgUapYa8kBYFM/8/zctztdJvzuivWJimbTPL0OHAsHn5lKjZr9neJdWBeh4/FXLn9z0bZZ2vJ8rv3W8cuZZP5BbCF4TRNnH7KY/VU5Qn9PXJZp8d3rRPr9WyhgcBLK6aWhnOzp/ky81v1+C3QkWAeehOrXeB5NTUEHbjFGvXLwjMG6ZPQH641hFOwmQ==
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2017 22:06:38.1412 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR01MB2675
Subject: Re: runqemu - "Could not initialize SDL(No available video device) - exiting"
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
X-List-Received-Date: Thu, 06 Apr 2017 22:06:44 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

I found the source of the issue (SDL must be compiled with X11 support) 
and sent a patch to OE-core to fix it:

https://patchwork.openembedded.org/series/6211

On 04/04/2017 03:41 PM, Martin Kelly wrote:
> [This sender failed our fraud detection checks and may not be who they
> appear to be. Learn about spoofing at http://aka.ms/LearnAboutSpoofing]
>
> Hi,
>
> I'm hitting an error on runqemu when I try to build an SDK and image on
> one machine and run it on another, even when the build machine and
> qemu-running machine match very closely (both running Debian Jessie on
> Intel 64-bit hardware). Specifically, I get this error:
>
> Could not initialize SDL(No available video device) - exiting
>
> Interestingly, I don't get this when I do runqemu on the same machine
> that built the image and SDK (in fact, it works on either machine, as
> long as the image/SDK never leave the machine). Now, if I manually copy
> and paste the runqemu command, but just use the Debian-provided qemu
> instead of the one from the SDK, then again everything works fine. Note
> also that libSDL-1.2.so.0 is installed on both systems. At this point
> I'm pretty stumped.
>
> Google says that, in the past, this occurred because of X11 ABI issues:
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=5040
>
> However, the x11-native version I'm building through 1.6.3, and Debian
> Jessie provides 1.6.2, so I would guess the ABI is OK between those two
> versions. In addition, the fact that it works on the same machine that
> built the SDK and image is strange.
>
> Any ideas what might be wrong?
>
> Thanks,
> Martin
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

