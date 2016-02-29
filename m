Return-Path: <giordon.holtsberg.stark@cern.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D71CBE008EE; Mon, 29 Feb 2016 12:40:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.55.234.93 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1116 seconds by postgrey-1.32 at yocto-www;
	Mon, 29 Feb 2016 12:40:25 PST
Received: from emea01-db3-obe.outbound.protection.outlook.com
	(mail-db3on0093.outbound.protection.outlook.com [157.55.234.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9885E007DC
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 12:40:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cern.onmicrosoft.com; 
	s=selector1-cern-ch;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=rfpPT4B0ydOqvS47f9GmAXdy8a1hWbiFiafD/ZkIv/s=;
	b=fbM2bpPpRpr/iQj9Drf4UwO1T54pvd2YaFfnO9L0/dsP11zRRQIKDK5iMOb3/gKxWT6VbWIwFtVwRE3a7vkOY4xEX0Hs5oJ0NLASnP4XydbADBNAG2DPNajnTnK+xOC6qeVfb9YnJEDlXhQaa4kNm13IMVUPTJ9ko50doexj+bU=
Received: from DB5PR06CA0019.eurprd06.prod.outlook.com (10.162.165.29) by
	DB5PR06MB1319.eurprd06.prod.outlook.com (10.162.222.17) with Microsoft
	SMTP Server (TLS) id 15.1.415.20; Mon, 29 Feb 2016 20:05:57 +0000
Received: from AM1FFO11FD053.protection.gbl (2a01:111:f400:7e00::171) by
	DB5PR06CA0019.outlook.office365.com (2a01:111:e400:52c2::29) with
	Microsoft SMTP Server (TLS) id 15.1.415.20 via Frontend Transport;
	Mon, 29 Feb 2016 20:05:57 +0000
Authentication-Results: spf=pass (sender IP is 188.184.36.50)
	smtp.mailfrom=cern.ch; yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=cern.ch;
Received-SPF: Pass (protection.outlook.com: domain of cern.ch designates
	188.184.36.50 as permitted sender) receiver=protection.outlook.com;
	client-ip=188.184.36.50; helo=CERNMX11.cern.ch;
Received: from CERNMX11.cern.ch (188.184.36.50) by
	AM1FFO11FD053.mail.protection.outlook.com (10.174.65.72) with Microsoft
	SMTP Server (TLS) id 15.1.422.5 via Frontend Transport;
	Mon, 29 Feb 2016 20:05:57 +0000
Received: from cernfe06.cern.ch (188.184.36.49) by cernmxgwlb4.cern.ch
	(188.184.36.50) with Microsoft SMTP Server (TLS) id 14.3.158.1;
	Mon, 29 Feb 2016 21:05:55 +0100
Received: from mail-io0-f178.google.com (209.85.223.178) by smtp.cern.ch
	(188.184.36.52) with Microsoft SMTP Server (TLS) id 14.3.174.1;
	Mon, 29 Feb 2016 21:05:55 +0100
Received: by mail-io0-f178.google.com with SMTP id 9so195304511iom.1
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 12:05:55 -0800 (PST)
X-Gm-Message-State: AG10YOTpR6FofWzDLClF570kQUr9KuIXGlYrMxwiiH1g+ad0a0Sbyf3ZysSgSi3W3BfXfRclYRWQye6WqunOLw==
X-Received: by 10.107.34.9 with SMTP id i9mr20847842ioi.166.1456776353845;
	Mon, 29 Feb 2016 12:05:53 -0800 (PST)
MIME-Version: 1.0
References: <2956615.y8hyrZheM7@peggleto-mobl.ger.corp.intel.com>
	<3845777.DZXZ3IeRVd@peggleto-mobl.ger.corp.intel.com>
	<D2F9DB3A.7513C%belen.barros.pena@intel.com>
	<3422071.a5vtJpgWht@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <3422071.a5vtJpgWht@peggleto-mobl.ger.corp.intel.com>
From: Giordon Stark <gstark@cern.ch>
Date: Mon, 29 Feb 2016 20:05:44 +0000
X-Gmail-Original-Message-ID: <CAFzUWGnCD1m3jmbgyNqhhM0QeeO1mGnGuk7qy=F329r1zLoTqA@mail.gmail.com>
Message-ID: <CAFzUWGnCD1m3jmbgyNqhhM0QeeO1mGnGuk7qy=F329r1zLoTqA@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "Barros Pena, Belen"
	<belen.barros.pena@intel.com>
X-Originating-IP: [209.85.223.178]
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CPI:188.184.36.50; IPV:NLI; CTRY:CH; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(2980300002)(53754006)(189002)(24454002)(199003)(377454003)(479174004)(106466001)(5001770100001)(59536001)(586003)(1096002)(66066001)(189998001)(5008740100001)(4326007)(93886004)(87936001)(450100001)(1220700001)(3846002)(4001450100002)(98316002)(81156008)(6806005)(2950100001)(93516999)(512874002)(61726006)(74482002)(5004730100002)(19580405001)(19580395003)(4001430100002)(11100500001)(61266001)(6116002)(54356999)(76176999)(19617315012)(2906002)(92566002)(107886002)(50986999)(15975445007)(55446002)(84326002)(42186005)(63696999)(5001970100001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB5PR06MB1319; H:CERNMX11.cern.ch;
	FPR:; SPF:Pass; MLV:sfv; MX:1; A:1; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; AM1FFO11FD053;
	1:AYThqdIHm0ffCPMaXHCYa9sQKwbTnPKF4OfqiZ1NtM2KZcIkEO+x3Bxi7uALxD5WwdDHhsPxSn4GxVHf9XQ6viUf/uKZfIHRTSBURbUwQhso6uXKq7DhShDWGj5797QaM1HSvp5aRydDCPLfp4iWGu3JUhFrFvcCSl7K6BVDuviwCDtpC8CnfAc0J7UyZ86v572MeNV9WrxBgTT0zrac5KEJHpuvUQblx5gOiUOUw3zwk6vRqtwdQqGSJALIXgOZfVkBMcwQznGzKG55RqXe7w8KQm5cDxDYjFLAT5sMNdrUk7U4NsqvUL3Zf8hQ6OTsEjVh1tmTN0p2imkYshBAMDaKocBQ6wwQ20rseSsucsZRXccq+bN8i69Rzc2mnnUXv/8MeN8STntDvGh8Tb7ZAIQju02pMelzRTTZnLi0QyXJubJIdtnqZYxz0A6rkCAe6ALyummQAZZdlsBOtC2gdw==
X-Microsoft-Exchange-Diagnostics: 1; DB5PR06MB1319;
	2:3ffuS2kwr1SuQ8RkjEBL9gHHxRhhC0h5KzMF7QqofLwDmc/clJyWpOUztkKyMnFElyDdtexmVxlpGbx1lAiX555ABLANLs9bsq00jW1KLh988SGL3jxN4ixd5Y6cBAqeRzzs+D3JGrgmfSBPeKlRKw==;
	3:TcJvog1ZrkEoJ4XB42qdYWJRkaf9wG64CKyI3WK5dy2N/8ivg2griXYmM/KDwgx8zYI5yvSpdvOI0hKEJcKN7vYyNyxYR0TYkPN7KTNuZrSY4aquV9TeEqZOGnPiSm0KbCb3qEBKN+Hln0vuFfGYOE55vzy/HH+Pnr2XY/2e3PfrAGme9Vgh4TvgbP+oI0FXuGpC/Ic0iN2A5NC8Fl3hWw==;
	25:eiooF5A945+/q+p2r4w1YimRC4do0QLklXYzuEvCovx/3rTAj2dSkxXOauxs7SiF5kHE5i2IWd9TWi0d55F5bHxUL/OmCF6S06KeZatZqOksKWRtJ9vXuB89+xbPPzFr8GW+iKZ66JFqSNkzeX/+Y7XyeQ+tgEz9flD2Tm5l2mL6mXqwygM5GRhuTghgzmpBBQMGbijsoJWdO2CHDwMypKOqS3dPdx7B/OSK7S50wysJJCzmYbjddnxuLY17l9mJ0Gz/WK9Ey3r7P94PCzvQH8HpYMV5kSit1wc1whFOugdMsSEUSTCyAwJCbZNPNmH4vakpMnDpVNGZEXie9LojSw==
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0; RULEID:(8251501001);
	SRVR:DB5PR06MB1319; 
X-MS-Office365-Filtering-Correlation-Id: db85e5a8-6c3f-4039-3573-08d34143bcca
X-Microsoft-Exchange-Diagnostics: 1; DB5PR06MB1319;
	20:6oXhHB0zv8bzQ4jBN/Hk5/cVuqdsyTfG7kVGH5eWWl5cHKt9jmKZ5W0btMljfKuEUHNuS/gP2Vx3v3WlBaIPmaXcqx1IY0SIDBPvLhUubzB6kxFOOgc8FZNtJCaGV5gkz1GtjwPxXirY9u+TY5gK/HgZAgCgKDao8fWo18R1lkWVSrZkmUrL/9eiTBfRIDOjrvaUMi2cUyBvMT4kvZyetmW/NP2l2DDHqOyYOv7Df2KacD+6cVbbG42epiJGJ9JRzIUUqn8W2CcCH7FJ+8J4B2UzUhU9HvGFRLJxiorbKxxbWsrNNZgqvu/TsjZTSXI3syFpW9K+jh/TYlEn01F68Mv3O0CptS/Jss1gNRM+XbUzoK8nefnHFsRA8p6D+GvHe6c4tkmjD7edVET24zibxFajKi1hgE93m1K6hm2MpvBz0sIPcZVT2cn983FJ7nk22s6i3cej39HGF+w/6Og46Mhf0Sr1hFEGfaDbCTdRzHs+5zoZu6jpu2hg60jTnhAO;
	4:bHj5ET1DyUZdLf41DdfNZTHk9o07mTp9hHumfPkkveI7dBPVmF4CpXONPvTdATDdePZwJXHYXd7gu+/s9iwK4JsxSar88XMQhUczZImmkgMJcIdlzpH7oJiJW5jjEnurB3oNpLaYIbgOu+VBu8VAj19WE/IIrytElcX7dgVO+ZRbYEHpRHjFKlGT8hS8SI8s1MDwNH9zyRU+JAbvL6fRW66EHlJTSh/Tuvh4XqxZSOdjEAFqdiHdrbflhBvkAtsGiXdyQtulRx+QeUfscI/JfKsTOel1k9kqdkAz7MRK9yqj0sVsEr6mHaFExuCc8REZRwBLBB8vPIIbPIoUv2WLRJofsIZXXBujUw4FtvdKXL78GihUh63ojHLAoukvM2EzaUxd6mRsqaAayLy3YzdlsShaM+NVj4Rw2yEks73mQ41Z+pKX2GACCzzkIvT2DpTY
X-Microsoft-Antispam-PRVS: <DB5PR06MB1319598D246F7977E28A79BBB2BA0@DB5PR06MB1319.eurprd06.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(13016025)(8121501046)(13018025)(13024025)(13023025)(5005006)(3002001)(10201501046);
	SRVR:DB5PR06MB1319; BCL:0; PCL:0; RULEID:; SRVR:DB5PR06MB1319; 
X-Forefront-PRVS: 0867F4F1AA
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; DB5PR06MB1319;
	23:+mAJZgAv0f27CNAyXcgaQGSdYwhvokrlmJwm2+OHE?=
	=?us-ascii?Q?RkiykVrDOUWoPl9YhyMBR0HnFn8wdyWdBVRHFWqxa7QlMSmTO834hCcflzJJ?=
	=?us-ascii?Q?O+gIFdZUpf980KMWiUBjORSUGXPEbb2k3TxP0BrTtFo/vFohe7jgeh30eoYx?=
	=?us-ascii?Q?j7W2gf2GuyVAM9KwBMSvk6/HIXz9R/eposuDH3RRxFKEFpLrVljeb0i+1uy0?=
	=?us-ascii?Q?NdsXfh0NgG/O7QaGj1RyokkAvPrImWQ3rgFpQoh5zBSimE/l1xD9aaIdivXA?=
	=?us-ascii?Q?9Ks1w/+kd2qU6l9J35CTl6DhFrRZ7IDF9lpRHYGR5fS0dbTtjMymvYFGabdt?=
	=?us-ascii?Q?HbH8qSyKb7gXcCkw34L5gm9YxK9wqjFYMILNaV7i9E48YMWgmTXeLbnPDRkL?=
	=?us-ascii?Q?rRklJ7ytP8pTPQCbGc+pqtSyaqI/nBHHOIEo1vC/SSVLvuFxVifESg+Cqq6L?=
	=?us-ascii?Q?36MVevjBKuv+lsOkginihf6hJUnlRezpFO4HTq4Gbd8qqCHklBOtHcJECW4K?=
	=?us-ascii?Q?8Nr7UhTj4XkCfP4xr3eJZXFZJe4zAVofdFgrFWWaaQjAMHqbZNTzVmV5RQ0z?=
	=?us-ascii?Q?5QgWa/9HQbv2zJX+0Ofr/vJ7JJIi5DnejtaQ+15knzYIu4VY2NXIHhrsYffr?=
	=?us-ascii?Q?5c8R0zoI6AWhbQyW24LKXn+P473DfKY4Ky0DG5DH3zkWpo+No792NTQyfK8Q?=
	=?us-ascii?Q?K0MyTckaH1FTHrBzQ9Aag62v8UB/i6H2IbgnB/nx8jhlstDEt7EgZUbcGreN?=
	=?us-ascii?Q?VABsWMFVMLBFHNmy8vSQv8gvJbXh4HG7pITsYZUkw7S1fR0co/MCCdUWCpwQ?=
	=?us-ascii?Q?Q0VM7v1Bs/Wnh+HH0djPZ9+R+qxHWkbHxBTia6ecyrLumcn5dpDSSKcLsJnz?=
	=?us-ascii?Q?4l51kuJyuNyjUFcB09lNPUSbmLybKi88w+sLuqjxWVuFpoo/3GfofjVvPJUm?=
	=?us-ascii?Q?jCc3UqSCp1nrqGy5KJ3RaZRdp286JUoNHk0zdTyJ2FK3BKSrpK9e2f2mzDe1?=
	=?us-ascii?Q?qyL3ETXne3UX/CyS1VOo2HlhkYykZ/+dQj7+WinEjKpctQ5SDQImZ55cbdvL?=
	=?us-ascii?Q?FVBNrTsMJT3K68e/QMELAkw1iCuN0GxSEtmYoB/tAlyQ8ivYQ//1n9nGnERD?=
	=?us-ascii?Q?EhnUoBNuT2OITQzY3S+7S+x0JYuVcjpuTBHA48rHPNa2FvcYV/Rx6IJaXUnS?=
	=?us-ascii?Q?ICcqPR+RUEdRaZxk5Rca+9v2jihTTvrcNmedSQw4DWcicqjMJupFLY1QDacQ?=
	=?us-ascii?Q?AQW/QrE3p/c57eb4Yzuu2mX+dBqLk4Hu694t1P65W1wo9OYRN6OAaUMuZr/N?=
	=?us-ascii?Q?0Ex0tloPqFFSbfQ181LssQdUffCWSi3khTnbyRT2Wm/?=
X-Microsoft-Exchange-Diagnostics: 1; DB5PR06MB1319;
	5:rdT+1fDVrbdsNiNQzfa07QYkBsbS5LNOcKHJXePc5ZoaLbgKy45Q+xMWZkcfAFnzUv+rY/MuK0HX4IqrO9FRjsgrOh2qvMpJ/wbC4UJlRHbwKQRmPg7TQtQlm5iNIDDP7HtREZWBK3xPdzp6574p6Q==;
	24:s3oEEIkJ5/Z+CMrQ1mJjRqcGbgNWtARb7ldi5ZRN//YyE6R7oMvxEmshT4eM8LYvNnuYxyUw4BqQ0JF7wSgMO/TXhN3SW12uJ4MecsPN8Zg=
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: cern.ch
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Feb 2016 20:05:57.2858 (UTC)
X-MS-Exchange-CrossTenant-Id: c80d3499-4a40-4a8c-986e-abce017d6b19
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=c80d3499-4a40-4a8c-986e-abce017d6b19;
	Ip=[188.184.36.50]; Helo=[CERNMX11.cern.ch]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR06MB1319
X-Mailman-Approved-At: Wed, 02 Mar 2016 08:00:41 -0800
Cc: yocto@yoctoproject.org, Gary Thomas <gary@mlbassoc.com>
Subject: Re: [Openembedded-architecture] Standalone image writer
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
X-List-Received-Date: Mon, 29 Feb 2016 20:40:28 -0000
Content-Type: multipart/alternative; boundary="001a1140ed50169a82052cee2df7"

--001a1140ed50169a82052cee2df7
Content-Type: text/plain; charset="UTF-8"

Hi all,

In a similar problem -- I find that the boot.bin file does not work out of
the box when I copy the files over to the SDCard to boot on a Xilinx board.
I end up having to open the SDK and generate a BOOT image myself using the
other files that were generated (u-boot, devicetree) with the SDK's
FSBL.elf. Is this a known problem or would a centralized solution for
creating the image solve this?

Giordon

On Mon, Feb 29, 2016 at 1:53 PM Paul Eggleton <paul.eggleton@linux.intel.com>
wrote:

> On Mon, 29 Feb 2016 11:27:15 Barros Pena, Belen wrote:
> > On 29/02/2016 08:12, "yocto-bounces@yoctoproject.org on behalf of Paul
> > Eggleton" <yocto-bounces@yoctoproject.org on behalf of
> > paul.eggleton@linux.intel.com> wrote:
> > >There isn't a frontend UI for wic that I am aware of though - as I
> > >mentioned earlier image-writer has no support for it, it's just doing a
> > >straight dd to the device.
> >
> > We would really like to add support for wic at some point.
> >
> > https://bugzilla.yoctoproject.org/show_bug.cgi?id=8769
>
> True, but that's a slightly different usage of wic - i.e. preparing the
> formatted image, which we should support. However, writing a formatted
> image
> to an SD card / USB stick isn't something you could practically do from a
> web-
> based application I don't think - not without help from a local
> application at
> any rate.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1140ed50169a82052cee2df7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>In a similar problem -- I find =
that the boot.bin file does not work out of the box when I copy the files o=
ver to the SDCard to boot on a Xilinx board. I end up having to open the SD=
K and generate a BOOT image myself using the other files that were generate=
d (u-boot, devicetree) with the SDK&#39;s FSBL.elf. Is this a known problem=
 or would a centralized solution for creating the image solve this?</div><d=
iv><br></div><div>Giordon</div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr">On Mon, Feb 29, 2016 at 1:53 PM Paul Eggleton &lt;<a href=3D"mail=
to:paul.eggleton@linux.intel.com">paul.eggleton@linux.intel.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex">On Mon, 29 Feb 2016 11:27:15 Ba=
rros Pena, Belen wrote:<br>
&gt; On 29/02/2016 08:12, &quot;<a href=3D"mailto:yocto-bounces@yoctoprojec=
t.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a> on behalf of Pa=
ul<br>
&gt; Eggleton&quot; &lt;<a href=3D"mailto:yocto-bounces@yoctoproject.org" t=
arget=3D"_blank">yocto-bounces@yoctoproject.org</a> on behalf of<br>
&gt; <a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">pau=
l.eggleton@linux.intel.com</a>&gt; wrote:<br>
&gt; &gt;There isn&#39;t a frontend UI for wic that I am aware of though - =
as I<br>
&gt; &gt;mentioned earlier image-writer has no support for it, it&#39;s jus=
t doing a<br>
&gt; &gt;straight dd to the device.<br>
&gt;<br>
&gt; We would really like to add support for wic at some point.<br>
&gt;<br>
&gt; <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8769" r=
el=3D"noreferrer" target=3D"_blank">https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D8769</a><br>
<br>
True, but that&#39;s a slightly different usage of wic - i.e. preparing the=
<br>
formatted image, which we should support. However, writing a formatted imag=
e<br>
to an SD card / USB stick isn&#39;t something you could practically do from=
 a web-<br>
based application I don&#39;t think - not without help from a local applica=
tion at<br>
any rate.<br>
<br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--001a1140ed50169a82052cee2df7--
