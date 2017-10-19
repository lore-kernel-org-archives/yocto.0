Return-Path: <samuli.piippo@qt.io>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BCB9BE00D3A; Thu, 19 Oct 2017 03:39:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [40.107.0.127 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
	(mail-eopbgr00127.outbound.protection.outlook.com [40.107.0.127])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0AD8E00C96
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 03:39:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=qtcompany.onmicrosoft.com; s=selector1-qt-io;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=SCiYtjqu/5bzj4QoZbiElcULr7JZPKryA7OeoU/r3Mc=;
	b=nNM7Us1BsZx0VjUngjYZGjdwnRLd0FkNyyLtii4njBTMmS+HS8rzk9FUukJT3ZKQdw7He8jzUWzOnnVc/+0vVwS37AErhamqSl6bbikdz5EwdnIofMUeaxXCLTtdoWx5S9GQdOUM37KPPjmGnZFsBrdIDY0F4Paw3Z0lpJIwmss=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=samuli.piippo@qt.io; 
Received: from piippo.intra.qt (192.89.120.53) by
	DB6PR0202MB2582.eurprd02.prod.outlook.com (2603:10a6:4:1b::16) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.77.7;
	Thu, 19 Oct 2017 10:39:36 +0000
From: Samuli Piippo <samuli.piippo@qt.io>
To: yocto@yoctoproject.org
Date: Thu, 19 Oct 2017 13:39:13 +0300
Message-Id: <1508409553-7525-1-git-send-email-samuli.piippo@qt.io>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [192.89.120.53]
X-ClientProxiedBy: LO2P265CA0057.GBRP265.PROD.OUTLOOK.COM
	(2603:10a6:600:60::21) To DB6PR0202MB2582.eurprd02.prod.outlook.com
	(2603:10a6:4:1b::16)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e4686e9e-46ca-451e-a27c-08d516ddb17e
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254152)(2017052603199)(201703131423075)(201703031133081)(201702281549075);
	SRVR:DB6PR0202MB2582; 
X-Microsoft-Exchange-Diagnostics: 1; DB6PR0202MB2582;
	3:B9/PwOeKhWys+hUKhfz+zFUEYOgMNiv4PaOdmiL5gi5xqOm40TIQ1FL1ai1ux2cIVNKwBH0C4VLHLBny1ggg/VhZo89R/wsIA/U5c6fxZPJNBYQgRyUrVGNPFUPy9nQPmOir7B39bUKjQr0+JqHapz4CdxQ14y8Ex7EdqtMDhoog7gWMSsxcfK8wJwa9/5el/nOKg1RLhZHUlrbnXGRri3MB6x8/fkiN6cnMEmkfql69xPGHBUWqu1ZIXdLrNulP;
	25:ml6+jj2D9Y8DK1Y8+IemcdwFh7PLU56sl4ghyg4ZoNawV6Lqn6l1mr6hs0kz0vSRDd0+c04H6X9kVwMA4WpdC/OSesQK59X8fz9Ei0UTUAExQhhy0cJO3ZsKIDb/UKGDl+EVK2K/TvthwUA7ap/YPvJHZzwDd7w7jU7/J5+cmm4wkZThnNIsH2EHi8GBkoafWqFlwXh8LKW3SyKKrrop/QTrWPbcn9xEbbN9klluQqdcxCcocilJ1Zp9vcpW1y5OS9EgdfO0yCmXXRF6snu2mTGlDhiwFaOsUk4PYM5GebVnofUuQBacNA07/On7y8RCPOen930sjG6ZjaT1F1DJ8g==;
	31:YBF0Y89zv25/hnM12egD8k07Ia5FCFlDo1aspdQkuEEX0fBazw4t3Hp/vEB26R+E4Qazt5l9iklS893FyWfeHFj+qPeIcpnEGg6IZ3vvnGPnEmJ8Uv3otIBPbYlYFm06084ii9R7sZkVnBJ92yNtKsblhPEHoCGibSt44UKGtx1b45yScJsNq29gVtVDwAtJFlqq95rjBtYWqLeiGx7toHBXlhEt4mb8e9pDUhF0XT8=
X-MS-TrafficTypeDiagnostic: DB6PR0202MB2582:
X-Microsoft-Exchange-Diagnostics: 1; DB6PR0202MB2582;
	20:KosmVgatgegQYWPMqSBGoeu9oyzPfBdcAnsML3UXYr0BaSPRG7G6FhlQG+gCUhC7TlPfiBQw6OJXjLoBLY+6IpFcIgu7Bo1E35TI0191IrR9dJzLvNOmVrSQg3al/RQuoqPKrVjS0g8Jycb5EqDU5hkS5VHcmMWsAKuH5ZkDbXJjgaeDX/+ayXCF82exzV6olc66hqog2ylky6ay09SC4I87kbz8mgSpfMT5eP3LMTHd2ronzApawu+r+B4cwTO2tcAu4cVMSI8jQjBrAj9f5sfYvTknBYKFVxkZRbmyqxMXb0/GGNCT4vQv6GAzmipMW0VcV0EfxCN7fXh7/YatJra0Dmr4AcfN5xpSvPDTLjhsse9/YoTHXb8h0e8Wkmu16CXVlCsmcLcly4MryTKvkioeSRJ1Vzw6ffWlFrdLcBttIFyi1Xigx2OmrChNRMuvTcDS4FZVCwLcd6447c9m+A9tIHKASK+3p/Rd/MUKWdxFHDex4pbNCF99jvd2m7Oy;
	4:P7qMZml370D0aBdzX7DeahkF5o+WmJ/Q8adC23r57GyYE+RgO3pwCwX+LiCDIdLswkcTxJ7j/ABmibuBthzLbtwZEhAOEXUpHx/cOI2M68d9vsM0xdFFcojVg8PlCsVsIDzlWbCwLNhnfFNBXaRJLHCkC6xmyAiRzPEssL1tZ5mL5flqde4t/sF7Q0RMSE6iTEhrWKMExGprV3cuBH6O6q6POwdRxTUtx+IHx7aus78fKzncVfbzgYipfJx+5VEE
X-Exchange-Antispam-Report-Test: UriScan:;
X-Microsoft-Antispam-PRVS: <DB6PR0202MB2582C05EFD7C9999E78AED70E9420@DB6PR0202MB2582.eurprd02.prod.outlook.com>
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(10201501046)(100000703101)(100105400095)(93006095)(93001095)(3002001)(6041248)(20161123564025)(20161123558100)(20161123560025)(20161123562025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123555025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:DB6PR0202MB2582; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:DB6PR0202MB2582; 
X-Forefront-PRVS: 0465429B7F
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(6009001)(346002)(39830400002)(376002)(199003)(189002)(106356001)(53416004)(97736004)(8676002)(81156014)(81166006)(105586002)(50226002)(8936002)(101416001)(5003940100001)(478600001)(48376002)(50466002)(36756003)(86362001)(7736002)(6666003)(66066001)(305945005)(25786009)(69596002)(6916009)(4326008)(2906002)(47776003)(5660300001)(189998001)(16526018)(53936002)(6486002)(16586007)(68736007)(6506006)(316002)(2351001)(33646002)(2361001)(50986999)(6512007)(74482002)(6116002)(3846002)(460985005);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB6PR0202MB2582;
	H:piippo.intra.qt; FPR:; SPF:None; PTR:InfoNoRecords; A:1; MX:1;
	LANG:en; 
Received-SPF: None (protection.outlook.com: qt.io does not designate permitted
	sender hosts)
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; DB6PR0202MB2582;
	23:IIWQT33+EN1j8dKdf7FAC/7O1kOREHpa3KziiQ/?=
	=?us-ascii?Q?IreCWU3CTOPpP+rylKq7MacmUb5e+DsCSRuhMc9F6ooWhs9lzRh6MjZAyoP0?=
	=?us-ascii?Q?U0XZRG+YbJTyIWLtsLgTao8ub6ZwmU/MRsGz/mks28QCZ9/31WakxMNfyGjO?=
	=?us-ascii?Q?6Hluh9YlYq1CAvwzi/TsQw0rQo1UMRnIK0lPK1E7Rzort0JGMblCXoVn9SMY?=
	=?us-ascii?Q?hNe0LfPzVayIrb6BmBiEz2V5M41uE5Laivhu2vWQRqfjtEbyFq2M0iSPCytg?=
	=?us-ascii?Q?Cmukg8JtKzZ9s6Gzhe8lthD4MubAwZZb4cCA8neAW7nDXnn70ivoithvRcEW?=
	=?us-ascii?Q?yY+LtIVWtXa5REqm9lyU+2BQ1HmY03daVQLhbjOK0frthEh9LUJgBh8na3Wi?=
	=?us-ascii?Q?d7vouBidOTjxYB6C0JTWoNBBx2HQoSMnaV+OjilHnOTF+/C4B4I5QudjB7sT?=
	=?us-ascii?Q?/zrnDiq4TrmtZmoSRo9PPihX9fmFVW5Qti4bFbii2QffTuTuLv0sa3pAUMAL?=
	=?us-ascii?Q?Mr1S21H2dAUVxE7VpEwYkDTVoUhkw28R0X8N/GrCWPMnBOU5gDarQvE2ldtR?=
	=?us-ascii?Q?zNz4L5f4SHyE6OmLyth1uETpk41J61wX6Cpyua/dTfUkVv/Ec5ZwVgIDXQl1?=
	=?us-ascii?Q?elTE5fmvnssEeDZG/V0mr7t3OIfMNleVbzBfD4OrY1aQykwQvkamTmlQaqdS?=
	=?us-ascii?Q?/E1Y8obJXAy9YuiNQaXd9HOBlgaYgA9vKPxNPHz12dtSp/uBG6G50+uy+J9d?=
	=?us-ascii?Q?q3mukwNXvIojesAIQqi+Wnk/BoP9FTDFLbc0a/1rMi90g3O0drPqmJp4howU?=
	=?us-ascii?Q?e/FY3h7SPpYj5AveCNAfjQpeLR2TMUHCBRo++IR7Ke6oDQ8yazMz6S8hoV6s?=
	=?us-ascii?Q?M7rwZtTn06aNAKsWepJizVRfGIPN19LqU9Ho1MPZFQfLxYEUBEUgnDCEui3k?=
	=?us-ascii?Q?Cuw2zwMi6wZX42aC4J4um1/KBwDcFJBBg6Vm+k4EuqmjNXIqR9/1yNy9BaVE?=
	=?us-ascii?Q?hba8PIDXLFOk+ISYRKV+BWUj1CqxpaPY1TNYL9OynjXqDl6rGXU/bKaRthUx?=
	=?us-ascii?Q?hr4kZ2w+NI38Kxt9iM8N4FnvqsAHRjUd6uVTHsLmC+ynG2wbOSl7nINeekL0?=
	=?us-ascii?Q?+Zkagk/SHg4LUWbOtypMiKoOmxJCEqpA4Ehod6khkGZJAFV+POnWq0A=3D?=
	=?us-ascii?Q?=3D?=
X-Microsoft-Exchange-Diagnostics: 1; DB6PR0202MB2582;
	6:cKrqq0kzYdjPQTgPQdpbi1eTsZoYxY46TIVrCB6mhcQbU1GBwbiPZs9ObM5nbsIotLQ6/LoHpGQ0JP0Xj2yOK4NmIVQmX/cc2uSLVWEVVieb3AKcr/m9ml/f5E9EoBR/kKq3JZ9vwlufqqO8NBAYN7qfDt41E2gpRnpgrw5sNBAQbFnCBmrnL2zJYIQjnzSWMOU46jTJ32kaZmray2J2EE9QihXhnVewWqBAIYx7LQIq52+b43jWTRNCZ2/O2fiDohA51Vx1lmfY3Y3BiaohkGro01ThtApxa+TJOysIsESneKQpAIp4QKqA6pA6tCXETtm1ZGfXMiShVEUJDSM52g==;
	5:E8I4Hn1y3xYDxd62meq17rBg2jw0CiIZAdTGi9pqxn33DKm5SfuEgQ9c3jyFnrULhgrXh9ibOsEURADlXDAcqiSPPE4tjiKIl0ofg5JY6u9niPaohKmdxcpCMneXz9dwjVMy/G/1u1cAWGbw/vI1iwro2eAbLd6rzAQpVl18Dv0=;
	24:0rogTbnzpxVntwnHBdxh8TuFj67HfZinBq8I8wQD8Ez61jtMUwuXsBjfWtx0OQJdMLYsffnoGj1Jt1prVpGSja2yNS/s4EE+dI5grvITZJ8=;
	7:qfYt+Bs/EU9RiiDgnu9LgqcfvLq8hUPWadUMMYOQe8hjIxhJwRJkm7ypD/Eh4O9o6GCVzdrWvw/45/qjTD4AuRfbHvC2Vuh0gJQvwFcszCT80Sa+TfHp99ZrOmkKDU7IuzrO2IOztEDcOlz2OQdPHoYqhJqqfg4oV61MaUAFIL061GMDfM9sY/FDWJJdrr+tF+kCYLenszq0CSWnou+dkv8XqgxEXPO7K80tPGeXNEc=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: qt.io
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Oct 2017 10:39:36.1274 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 20d0b167-794d-448a-9d01-aaeccc1124ac
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0202MB2582
Subject: [meta-mingw][PATCH] gdb: add missing space to append line
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
X-List-Received-Date: Thu, 19 Oct 2017 10:39:40 -0000
Content-Type: text/plain

Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
---
 recipes-devtools/gdb/gdb-cross-canadian_%.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-devtools/gdb/gdb-cross-canadian_%.bbappend b/recipes-devtools/gdb/gdb-cross-canadian_%.bbappend
index 54b975a..067b614 100644
--- a/recipes-devtools/gdb/gdb-cross-canadian_%.bbappend
+++ b/recipes-devtools/gdb/gdb-cross-canadian_%.bbappend
@@ -2,6 +2,6 @@ LDFLAGS_append_sdkmingw32 = " -Wl,-static"
 EXEEXT_sdkmingw32 = ".exe"
 DEPENDS_remove_sdkmingw32 = "nativesdk-ncurses nativesdk-readline nativesdk-python"
 RDEPENDS_${PN}_remove_sdkmingw32 = "nativesdk-python-core nativesdk-python-lang nativesdk-python-re nativesdk-python-codecs nativesdk-python-netclient"
-EXTRA_OECONF_append_sdkmingw32 = "--without-curses --without-system-readline --with-python=no"
+EXTRA_OECONF_append_sdkmingw32 = " --without-curses --without-system-readline --with-python=no"
 PACKAGECONFIG_remove_sdkmingw32 = "readline"
 PACKAGECONFIG_remove_sdkmingw32 = "python"
-- 
2.7.4


