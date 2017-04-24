Return-Path: <jliang@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0E40E0094C; Mon, 24 Apr 2017 09:44:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.69 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1040 seconds by postgrey-1.32 at yocto-www;
	Mon, 24 Apr 2017 09:44:00 PDT
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0069.outbound.protection.outlook.com [104.47.41.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F5BBE00839;
	Mon, 24 Apr 2017 09:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=HH66l/CHiSmA61zlGFGrGG7aB6trwaaToq6ii96fMYs=;
	b=NwdpO5X23q0aVL3v4udRoIFnjDEzseI1vXpORBO7s4kqlfJn4V7V0YMLQ3MyCVR7zl0e7jBa3vJUtcQ6Uz0YpNDL7pxY5PTWYKRjwOxO+Zfgi6fDVBVYNx54mJbn+VPMiReOxmD2KgZZsdiTOx+7JwhFH0IRCHgsj1D5Bzqd3qw=
Received: from BN1PR02CA0040.namprd02.prod.outlook.com (10.141.56.40) by
	BY2PR02MB1752.namprd02.prod.outlook.com (10.163.27.150) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1047.13; Mon, 24 Apr 2017 16:12:17 +0000
Received: from SN1NAM02FT035.eop-nam02.prod.protection.outlook.com
	(2a01:111:f400:7e44::202) by BN1PR02CA0040.outlook.office365.com
	(2a01:111:e400:2a::40) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1047.13 via
	Frontend Transport; Mon, 24 Apr 2017 16:12:18 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
	smtp.mailfrom=xilinx.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
	149.199.60.83 as permitted sender) receiver=protection.outlook.com;
	client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
	SN1NAM02FT035.mail.protection.outlook.com (10.152.72.145) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.1.1019.14
	via Frontend Transport; Mon, 24 Apr 2017 16:12:17 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
	by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
	(envelope-from <wendy.liang@xilinx.com>)
	id 1d2gb2-00041c-WB; Mon, 24 Apr 2017 09:12:17 -0700
Received: from [127.0.0.1] (helo=xsj-smtp-dlp1.xlnx.xilinx.com)
	by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <wendy.liang@xilinx.com>)
	id 1d2gb2-0008JS-QA; Mon, 24 Apr 2017 09:12:16 -0700
Received: from xsj-pvapsmtp01 (mailhub.xilinx.com [149.199.38.66])
	by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id
	v3OGCGoF029195; Mon, 24 Apr 2017 09:12:16 -0700
Received: from [172.19.131.25] (helo=XSJ-PVEXCAS01.xlnx.xilinx.com)
	by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <jliang@xilinx.com>)
	id 1d2gb1-0008JH-V1; Mon, 24 Apr 2017 09:12:15 -0700
Received: from XSJ-PSEXMBX01.xlnx.xilinx.com ([fe80::c4cc:6661:8e92:58bf]) by
	XSJ-PVEXCAS01.xlnx.xilinx.com ([::1]) with mapi id 14.03.0319.002;
	Mon, 24 Apr 2017 09:12:16 -0700
From: Jiaying Liang <wendy.liang@xilinx.com>
To: "open-amp@googlegroups.com" <open-amp@googlegroups.com>,
	"meta-virtualization@yoctoproject.org"
	<meta-virtualization@yoctoproject.org>, "meta-xilinx@yoctoproject.org"
	<meta-xilinx@yoctoproject.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [open-amp] Build a Yocto image to be the guest (Dom1) in a
	system that uses Xen hypervisor and petalinux image for Dom0
Thread-Index: AQHSvNbifJfmdjyAkUC/Zs8wdCwxoKHUsRHw
Date: Mon, 24 Apr 2017 16:12:16 +0000
Message-ID: <DC2968D6352D1841BA729D8C06CC9DBB99075BD6@XSJ-PSEXMBX01.xlnx.xilinx.com>
References: <CAFL6qn6ZwbuGK5fkr3GP--6GvYaHe58t65HegD5TiVGCuGHm_g@mail.gmail.com>
In-Reply-To: <CAFL6qn6ZwbuGK5fkr3GP--6GvYaHe58t65HegD5TiVGCuGHm_g@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.19.161.113]
MIME-Version: 1.0
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.1.0.1062-23026.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(39400400002)(39410400002)(39850400002)(39860400002)(39450400003)(39840400002)(2980300002)(438002)(57704003)(53754006)(189002)(377454003)(199003)(9170700003)(55846006)(81166006)(14971765001)(6246003)(189998001)(55016002)(6306002)(236005)(54896002)(33656002)(356003)(606005)(106466001)(2501003)(2950100002)(5890100001)(2920100001)(84326002)(2900100001)(8936002)(7906003)(53546009)(3846002)(790700001)(6116002)(102836003)(50986999)(63266004)(7736002)(54356999)(76176999)(512874002)(5660300001)(2906002)(38730400002)(8676002)(2201001)(5250100002)(7696004)(229853002)(107986001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BY2PR02MB1752; H:xsj-pvapsmtpgw01;
	FPR:; SPF:Pass; MLV:sfv; MX:1; A:1; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; SN1NAM02FT035;
	1:QdzIjhn83uO5z84DQiko5PyXj42yCRDAv24NC6r2YubawJ/Bw7QnjWhurztiR7XGKSIZg2+f1J2FVcaPCUPIEIieJfStwhlgoFoF2d9E7gBegfaL8euoi2ktg/kU2DEKCWWOJXDDIaOXDwpoToHbN51nGzZCsWbulPm0gRljUdTdn8UcHI4j+dhdZ1/opbB6jv6ndZJeO5tEzDT8H1wESbxLP8WVLxNCJDd1Z6JqcSKQf37GLA+dfps6okaThVYMVf1WvdTCEEHIX6v/xn7tEz+23srW6xxLqdYeiZlmwssUY6VTjTvtRO3oIEfeJIj1o+7vHqEJZ1jNhrPry73GNetVV0sGutZsYAfjx5j69SZoV4eN2W/+MBQdeeZQr6fhY8lnCG3gKsVGa0zMwGo/sY41Q/9lT3AWQjdWg8IodtkboC3jwETD8WRp+6a9+21syaawWTnm2mpYG1bKtliqqbxSNPKeZkELap6vOn1UADvSp+Pvao1m9VB4WBfqu+ypQ99kTKfVuEJky2FJexuQJq3Lb0oi5eprShNBEh1lVSlYBtXviXipfgU2feuX9eINXZS3182b6N+COGuKpO51r9wjLx54Io4A3QdqnPOtnX8=
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9ae59c29-4674-41bd-99c0-08d48b2cadef
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(8251501002)(2017030254075)(201703131423075)(201703031133081)(201702281549075);
	SRVR:BY2PR02MB1752; 
X-Microsoft-Exchange-Diagnostics: 1; BY2PR02MB1752;
	3:Gdh8cCSdTEtJsY9VBlH+envaWBcGodpNupGxNugInqNsewhcHtp3BC1si4Bb+6MuIYbPVGJ3pw61sPpr1y/lexNBNKC5tmErbrJNkdyBGL7z5KjMeRgDYqDH+iOdOSDDEmrVKaR6ABASeg75cF7gnMK3xGshXKJ/1H4txPtrhQb/Ql+crStzqreya8Cy6VzSfETjVgV0MNKehVBKpvfzhJICWEk+F97nIzo3g4s9HaFApuVJ70WDZid9BmT8D0B+6egEat3R+uJh/bPS1V4VHB9JJhC5Tvn6LBFM8r2ZrXcRLp2bg96QoaGzr8892XxGDStSLlC/HD+yWDWFVSHsGtzJpmkSIy7GokejMGfEVR0zVNWj99h8tSpqtBX6DMDbpguyzbRh3jgJeWwrS1qZBipHuTb7zRSBQLUDI0Lrm+eKRyaO1gYXLJIs7L4xftgmBKNoCaf63TZ93S7R269YSbzEPVvfTB8kuz1G4TFnk6Fcy2f6Y3IKpq03M5sBjHHfOxezqpGyu36XC6L6Z0kY/g==
X-Microsoft-Exchange-Diagnostics: 1; BY2PR02MB1752;
	25:o/VgIG/RynfOedj4BCYKghlGU/SYCvNHQrEgytxVxIGs0K5jGY/x9ndcJEJkLLjrAue7XCpWIkKvKvoTNePPoZ6E4G1id3YT+MOUJ9c3uDyBYf6QaAb8xUauPBSSdM6cblAVtREkWPBsihFincw2ogpemQbp2bvl46MfEH9ZI1ys0VMTYVoOPoYH0RXyqFuggk6WUD0gvYm3KHy+w007CdcKZz2fgTRVkYVFPmMJWqi7KOh6QxvdPRHvorAgaa2JR+RwyPt+SwdIRp5O4U5VvaW4I2YMSsjzccLV+8l5CDSWQ9pgSKnQlPdrAba/fyqRrJB4fCU86OuRhK4PLidPw19lo7kEyDxnPb2GodRmHpVWy7xiFxjWtBpUIRDp9btyfqnsiA0nX9zL219A7Z+7GarKxBrtm1NltInS/EhyJH/yLHx8ZcS556TRCFJ5gAT7kV7fR2TPnihDz/43B/Zigw==;
	31:mF1NNhW5FzjrfWinbTaHJiqmpd6I/u+zsOcPvk4ZltdjHUs0TkrXK+vN/2eK4GsqYXsCgESwTrBzKMZuXVTR3r5fUzg3+WBJVop5ImXmbDOaU87HJ23ayEyS4B1vbLVM6ddrRlsfj4C4bMYMsieKA6SiY+l/9zbH1dzdxh2QHNwjV724QyKj2GPMhggdUjBsU2vJ2crimud64Bke9wJmFt5LevMKuKiNjQRYtFQwpHhrE0dktd9ZvJZxUahEfeD/14jM80ykgU11eX8gDHq+wg==
X-Microsoft-Exchange-Diagnostics: 1; BY2PR02MB1752;
	20:SDGr6AJn5lsAY7xw2/Z2uv3aNpJtO9B6fjVYfcmjtNw6K8nyI6iu744DZmLcWewiZJlQnxLZcBU77IXrUAV87LzRn3Q5Sbjh1yNBK5Z1eAOLH/olGRviMPzBR72h4d6jjcTBQ8hExkqarg9iN9QMxGNlMiFjCpubl88fi25Eseb6OlZ1g3EhUrAzen1V95J7vTkd4hoAksSDamrihg5+frFxvh7QIjOAa2N58gQprGUK8pjDcgT7EZFdlMTUrvTCZYINKL1oDGSRAYDR+LBlmcoBODp7TLwSZqDQaQmPomxOQenyJRvVgqHbR1P8Fzx+ax4vXrGuYOK1ZRQuNcyKYfF/n5xFoW3HImpfJurSB/E5zb+niQs7HfvMC7+1tpHSlUufOmZkE4BMLqI2K2rEBqL27X0yS6LBuJ29lT2zKfLBFmI/dh1RfWMIFGeDEs8VZBpeE7jrtMwPXfIEHGSywsnJbFy0rc77R7htxrRjItVCuYzd7jj8XIE1ZnYAASN0
X-Microsoft-Antispam-PRVS: <BY2PR02MB17529C8CE96677597AE7D68BB01F0@BY2PR02MB1752.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(215639381216008)(228788266533470)(211936372134217)(21748063052155);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040450)(601004)(2401047)(13017025)(13018025)(13024025)(13023025)(13015025)(8121501046)(5005006)(93006095)(93004095)(10201501046)(3002001)(6055026)(6041248)(201703131423075)(201702281528075)(201703061421075)(20161123564025)(20161123560025)(20161123555025)(20161123562025)(6072148);
	SRVR:BY2PR02MB1752; BCL:0; PCL:0; RULEID:; SRVR:BY2PR02MB1752; 
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; BY2PR02MB1752;
	4:fiyrvbVvCL4AaAsJR7ZzWmR6m0S+i+qi0z0dUtxFrz?=
	=?us-ascii?Q?vJ6CNxFjut3+AomjXKG5AbNOvxPbgW70ssGyyvqs39ZxjbCo+IDua39a1y43?=
	=?us-ascii?Q?62Bw/XYw/eneZy3yc2ZoyE0DVM8gYyiD+rhRgBO+WfEa75kP9F3CToCNPc37?=
	=?us-ascii?Q?U+T9cNhJFZA2K1cXbq1t50l5He9LIYj1X+UKiEZ1pUSY3lRQoPs1ntBNxnvz?=
	=?us-ascii?Q?Fsrl/YQdyz25tExUq533/J33bdmcjBAW5FLigcWAU1HoUPPzNKfrs/3tG3yX?=
	=?us-ascii?Q?P5Kerz/OR3XlpPsmfck+mEN9BiChvdBjuD/gB/yE2n0j+fbR4Mjj4r4Xoc3J?=
	=?us-ascii?Q?H+hbsX1R+41hXmaRa4cJ4l0t2AqtdXodKD4DrD829IT7XqwqDgMSEEKlq1S4?=
	=?us-ascii?Q?RVFHKPVY2Mrw8R/2hm/DW0Bq4x97RLGutF2WnZ5wT5//lkV6XcRissgCezwd?=
	=?us-ascii?Q?otzWuISD4c2ywYGRpk472JmsbGQ37S9pkrCjmHDDu4+Cbh4PdJfRWl5DpT9K?=
	=?us-ascii?Q?zbq4yaFsjR+nS8UIq6pWPcs78INAq8xoC+wnK0qNKrTwebU31loB3eKGSb9p?=
	=?us-ascii?Q?kdUl1lYlJRBnTijDweLP0ra9uFGQtb6Gy2HEtVTnhq4F264eFupVU62J7wuj?=
	=?us-ascii?Q?4u8uGB2Okq1MKTaIP1qWOXWqR5Y3KCTkyH0ZO+tQRvPCD0qz9PuV1IUpnTPv?=
	=?us-ascii?Q?MX/TBPu7qFrDEG5jhb2mnOT4L+T9slm1NOrId/h4w+INRwnP9k9Bnl5NrFvt?=
	=?us-ascii?Q?xIBfJSTzBvB5yTYBy+5Icftb5jl/LqDRvOBOEowubkekcdvdzwTI8toZuAV2?=
	=?us-ascii?Q?qU7U1Xg9H9dc8AEqZ2g2zBSiG1QLa7NKJHsM29IoaBI0QGRHGWnclZJKjoWb?=
	=?us-ascii?Q?U65oZmWurpxDNzGw/IhG1CdlLKU6pjPzAqEFHzD4QNOvVvTTBSEkDg6e74Rg?=
	=?us-ascii?Q?OBXgfVgEUKt/+NswPD92T4iOxWPcx0kLgminrZ54Wxi7N/1VaC8iV6BHPftB?=
	=?us-ascii?Q?c=3D?=
X-Forefront-PRVS: 0287BBA78D
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; BY2PR02MB1752;
	23:/INWXwrMBeRsfFJGVyXWFcHbN/njo+bmK9OY2IpOQ?=
	=?us-ascii?Q?+3NuX0Gq1Ek9ETQ7mzwfTr6nR/oeCRbBDDCvYP8dBWqe8KkrM4glbSFmeA+z?=
	=?us-ascii?Q?37DLZ4iV1uMe23eIhLa8qxPxNA9mFzSF4Y8FktTkJDoYelLlVpEv+DuIq46P?=
	=?us-ascii?Q?V/6GbY2516zGIXUQcK1B+odIVHsKbreaDL8eGHbz0f7AfjfRX5bqQ0ZFwfiU?=
	=?us-ascii?Q?3mFKtRI6jQI2pbPfpf2LzLdrnf8+GSvfulb05DNjEPsZPVER30jJeCh4UHEu?=
	=?us-ascii?Q?DuHtuzUigKsohGrj0FhB19mVNKhDqVv3rxtgCX9jZN5FiFsOCsWhpRSqMVPr?=
	=?us-ascii?Q?iAeIuz9bCJBcpuqgI8yW9gLIoXfwNs0m8JDC4HUh4mW0pTVLDizhBrKdiQeS?=
	=?us-ascii?Q?SjIF1PYSPpYYTROZRXEzjvfQr0Q2Jlo7vDI/SVJ9npznW1xQ4aGne3S8CuIH?=
	=?us-ascii?Q?Tlf1ZiiM+tD1Joz3u4g+HAlVGabAoz3VjIdzvvKjloUS0eNT2BMAvsyJwW0M?=
	=?us-ascii?Q?SE0VSZX+/crfVrhehtFhfMjNWxvHbsn6/nuwzZM7im5OPoi8XnNrC7jLd3UO?=
	=?us-ascii?Q?u8qZ4mynEwRkyr0AGBnYf3kxGcEOx/DbdkFsnP02Csuj7yhEFsqOuix07Oyp?=
	=?us-ascii?Q?plS03UJGxv3GAburH5KnUydTNPT9ERTk3qop9t6giDnDz37VmSHc5BlVu8dX?=
	=?us-ascii?Q?8RPCEbIWL5crsK/vvfp4l2qjW0RMY+kof4+kbp/2oq2ejAEAU923B6KtYE9f?=
	=?us-ascii?Q?PtfU0oolC8Sz70H1/dhMQZplUtsLmCLoYcL8dY09huUoLH2TPGpB+jAdTtmr?=
	=?us-ascii?Q?SghlhhGsPDyIqi+HDIBvIppPlw0HHhWYv8tPRy/ZnQvttWj2OCSHyA+Czq/y?=
	=?us-ascii?Q?TlmHnUFmyAbh1XPujAE1TgKQaeNH6TuNobuz0FTrOUhBjiWZeQqnNo/EJkQC?=
	=?us-ascii?Q?mkoielNzicdjWj1yV24AiFl3D8PkvEusH6PzmhjCNB3pl1bneKP5YhBiTh/c?=
	=?us-ascii?Q?DaTaVeqmRvlanBZ4fs7p404NUlPBJH/7UO9OwWKcXSSXQrJF8Bmc5GqJnKRR?=
	=?us-ascii?Q?SCXlFO87oAI07LRh5tyEJvbolW5Us5sOKNSjcEjvLK6ZJ/ojujDofPwHu56n?=
	=?us-ascii?Q?Y+CaH1Nu06HDLCGwSY3zDhVBWm+ICNzmVeP8A6e151XA5QxfAv4nDaBjN183?=
	=?us-ascii?Q?v4givHb11SxVuuh+3YaSgrIEtVSLznDZFZeDHbFEk1O/vrnqHsGeNGEKCpzv?=
	=?us-ascii?Q?Si7w4NGHgvpwW7sG7gOvTyWo6GJU0dZWNIcvbxOfZbvRJSOekpGe2qd8OapX?=
	=?us-ascii?Q?P4Rhkc1ni2qC9DJ6EbzDP6gwiTBX9hs0XSMLx8NrrpD?=
X-Microsoft-Exchange-Diagnostics: 1; BY2PR02MB1752;
	6:5kReNQmjifekzXxmwr1Y/Gw2vhxSYn3PM8sW3YR90vRhulCMCaOyJ/u1xUI00NddW3xKXZzStlFrp1Ehw8ZMsKu+ukzxPJTIAYwfUeL+ZB9l40g1MdI4frLBFuePA+kEPVgoGnoElEHIVTpHIEuMuQgGf3dcgcEe1dEi97+SNIkt/Ze7TUJ8rFV9kVLDSLIx0MyDt5OWriam9LgX+dAeHoXNS058RckUFNlDIrd4bXCgWH52UByaRRCHUjysxcw1dyf5f0AjZ6tqc2HGPfkisPbCkbd5OiBqLbqx/NOw5jlkTMrdNgTeMPkNgOX8XWw1qmrZxUfFmhGpxdp6r6bC5g1TxjfagCTFwCP5kPhBBdMO4hhnxmHEnKFt8ZtFbLxg4lpRLishtg/nstp9DuKbwXDOBnuDXhl2/ZBenSy/47uxYirnZd4WfRXQSrTdM9KA2kxR/s/SGAjiPlbu776d7S+4m86a+YLKdODu0BEmUPi4OWOuy/AO7fUneVb52QKZXN1tpyOuce4+8nNNJzNDvMw6yKqwOehkYwSMB4wHw1E=;
	5:KGMzf3b9NpsSJlA34gn0JfWQ1tNsdhiHrONwOqjd/enppmpFOUsFIN3mvyd4EixEq91ldDIMg6HnpCgliXEItjXV1o6ht0CIQlms2rkOPuYZ2YIStXHMeJKYPElGy7TW8pQl3fINBo2AjoAWb01GEA==;
	24:0XRXUSE80USyiEpldOZYGib6FkWAv0Qlj/KwP7M9iOz8aA7uJ6X2vjg0u3AsRDWIBvaShC8T+r+2WHB2UuQ+4ed9Qjr2r62z6fN9newZ1ak=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; BY2PR02MB1752;
	7:Nw78/yRw5Zhp34b9q9Z7ym23vSM2DqZydK9G1gN4r1LqmYaZqsOwaQFG2EHtIYkuPGi1gGBnF1aMYaPDcbuuWjbME9dB3XejTsL/x8k7fiOmciemVoFI6UkjCa090T06Gm5qdupDSqXeh0vWr5Q+pLiv2AxkHKNPwg9ktuXF8a/o94nRfnIq9Ln0M2BoQRPZAqt7OwfwJUZQ8o/mD+UA6c1F1xOdXBiqTkQWJBNp1g4idGYRen1sM/QIyFpg5MFZyfbt3+DL4i2BwKZ1P+wfOChbJpD2eWA22eVM6jLAnsu3huO046h9nHX/HM+1rIw6YkR4Ju+OChLvB4HVSIvVMA==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2017 16:12:17.5940 (UTC)
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;
	Ip=[149.199.60.83]; Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR02MB1752
Subject: Re: [open-amp] Build a Yocto image to be the guest (Dom1) in a system that uses Xen hypervisor and petalinux image for Dom0
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
X-List-Received-Date: Mon, 24 Apr 2017 16:44:03 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DC2968D6352D1841BA729D8C06CC9DBB99075BD6XSJPSEXMBX01xln_"

--_000_DC2968D6352D1841BA729D8C06CC9DBB99075BD6XSJPSEXMBX01xln_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SEkgUGVsbG8sDQoNCkZyb206IG9wZW4tYW1wQGdvb2dsZWdyb3Vwcy5jb20gW21haWx0bzpvcGVu
LWFtcEBnb29nbGVncm91cHMuY29tXSBPbiBCZWhhbGYgT2YgUGVsbG8gSGVyaXoNClNlbnQ6IE1v
bmRheSwgQXByaWwgMjQsIDIwMTcgMTo0NCBBTQ0KVG86IG1ldGEtdmlydHVhbGl6YXRpb25AeW9j
dG9wcm9qZWN0Lm9yZzsgbWV0YS14aWxpbnhAeW9jdG9wcm9qZWN0Lm9yZzsgeW9jdG9AeW9jdG9w
cm9qZWN0Lm9yZzsgSmlheWluZyBMaWFuZzsgb3Blbi1hbXBAZ29vZ2xlZ3JvdXBzLmNvbQ0KU3Vi
amVjdDogW29wZW4tYW1wXSBCdWlsZCBhIFlvY3RvIGltYWdlIHRvIGJlIHRoZSBndWVzdCAoRG9t
MSkgaW4gYSBzeXN0ZW0gdGhhdCB1c2VzIFhlbiBoeXBlcnZpc29yIGFuZCBwZXRhbGludXggaW1h
Z2UgZm9yIERvbTANCg0KSGkgYWxsLA0KDQpGaW5hbGx5IEkgaGF2ZSBjb21waWxlZCBhbiBpbWFn
ZSB1c2luZyBZb2N0byB0aGF0IGluY2x1ZGVzIHRoZSBtZXRhLXZpcnR1YWxpemF0aW9uIGxheWVy
IHdpdGggRElTVFJPX0ZFQVRVUkVTX2FwcGVuZCA9ICIgeGVuIiBpbiB0aGUgbG9jYWwuY29uZiBm
aWxlLiBJIHVuZGVyc3RhbmQgdGhhdCB0aGlzIG11c3QgYmUgdXNlZCB0byBidWlsZCBhbiBpbWFn
ZSB0byB3b3JrIGFzIGEgRG9tMCBpbWFnZSB3aXRoIFhlbi4gSWYgSSB3YW50IHRvIGhhdmUgYSBE
b20xIGd1ZXN0IGltYWdlLCB3b3VsZCBiZSBlbm91Z2ggdG8gY2hhbmdlIHRoaXMgRElTVFJPX0ZF
QVRVUkVTX2FwcGVuZCBpbnRvICIgeGVuLWd1ZXN0IiBpbiB0aGUgbG9jYWwuY29uZiBmaWxlPz8g
RG8gSSBuZWVkIHRvIGRvIGFueXRoaW5nIG1vcmU/DQoNCkluIHRoZSBvdGhlciBzaWRlLCBpZiBJ
IHdhbnQgdG8gaW1wbGVtZW50IGEgc3lzdGVtIHRoYXQgaXMgZGVzY3JpYmVkIGluIHRoZSB0aXR0
bGUgb2YgdGhlIG1lc3NhZ2UsIGRvIEkgbmVlZCB0byBpbmNsdWRlIHRoZSBvcGVuLWFtcCBsYXll
ciB0byB0aGUgZ3Vlc3QgaW1hZ2UgdGhhdCBJIHdhbnQgdG8gYnVpbGQgaW4gWW9jdG8/IEFuZCBo
YXMgdGhpcyBsYXllciBlbm91Z2ggc3VwcG9ydD8NCltXZW5keV0gQXMgeW91IGp1c3Qgd2FudCB0
byBoYXZlIERvbTEsIHlvdSBkb27igJl0IG5lZWQgb3Blbi1hbXAgbGF5ZXIuDQoNCkJlc3QgUmVn
YXJkcywNCldlbmR5DQoNCkxvb2tpbmcgZm9yd2FyZCB0byBhbiBhbnN3ZXIsDQpCZXN0IHJlZ2Fy
ZHMsDQpQZWxsbw0KLS0NCllvdSByZWNlaXZlZCB0aGlzIG1lc3NhZ2UgYmVjYXVzZSB5b3UgYXJl
IHN1YnNjcmliZWQgdG8gdGhlIEdvb2dsZSBHcm91cHMgIm9wZW4tYW1wIiBncm91cC4NClRvIHVu
c3Vic2NyaWJlIGZyb20gdGhpcyBncm91cCBhbmQgc3RvcCByZWNlaXZpbmcgZW1haWxzIGZyb20g
aXQsIHNlbmQgYW4gZW1haWwgdG8gb3Blbi1hbXArdW5zdWJzY3JpYmVAZ29vZ2xlZ3JvdXBzLmNv
bTxtYWlsdG86b3Blbi1hbXArdW5zdWJzY3JpYmVAZ29vZ2xlZ3JvdXBzLmNvbT4uDQpUbyBwb3N0
IHRvIHRoaXMgZ3JvdXAsIHNlbmQgZW1haWwgdG8gb3Blbi1hbXBAZ29vZ2xlZ3JvdXBzLmNvbTxt
YWlsdG86b3Blbi1hbXBAZ29vZ2xlZ3JvdXBzLmNvbT4uDQpGb3IgbW9yZSBvcHRpb25zLCB2aXNp
dCBodHRwczovL2dyb3Vwcy5nb29nbGUuY29tL2Qvb3B0b3V0Lg0KDQoNClRoaXMgZW1haWwgYW5k
IGFueSBhdHRhY2htZW50cyBhcmUgaW50ZW5kZWQgZm9yIHRoZSBzb2xlIHVzZSBvZiB0aGUgbmFt
ZWQgcmVjaXBpZW50KHMpIGFuZCBjb250YWluKHMpIGNvbmZpZGVudGlhbCBpbmZvcm1hdGlvbiB0
aGF0IG1heSBiZSBwcm9wcmlldGFyeSwgcHJpdmlsZWdlZCBvciBjb3B5cmlnaHRlZCB1bmRlciBh
cHBsaWNhYmxlIGxhdy4gSWYgeW91IGFyZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVudCwgZG8g
bm90IHJlYWQsIGNvcHksIG9yIGZvcndhcmQgdGhpcyBlbWFpbCBtZXNzYWdlIG9yIGFueSBhdHRh
Y2htZW50cy4gRGVsZXRlIHRoaXMgZW1haWwgbWVzc2FnZSBhbmQgYW55IGF0dGFjaG1lbnRzIGlt
bWVkaWF0ZWx5Lg0KDQo=

--_000_DC2968D6352D1841BA729D8C06CC9DBB99075BD6XSJPSEXMBX01xln_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
U2ltU3VuOw0KCXBhbm9zZS0xOjIgMSA2IDAgMyAxIDEgMSAxIDE7fQ0KQGZvbnQtZmFjZQ0KCXtm
b250LWZhbWlseToiQ2FtYnJpYSBNYXRoIjsNCglwYW5vc2UtMToyIDQgNSAzIDUgNCA2IDMgMiA0
O30NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6Q2FsaWJyaTsNCglwYW5vc2UtMToyIDE1IDUg
MiAyIDIgNCAzIDIgNDt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5OiJcQFNpbVN1biI7DQoJ
cGFub3NlLTE6MiAxIDYgMCAzIDEgMSAxIDEgMTt9DQovKiBTdHlsZSBEZWZpbml0aW9ucyAqLw0K
cC5Nc29Ob3JtYWwsIGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXttYXJnaW46MGluOw0K
CW1hcmdpbi1ib3R0b206LjAwMDFwdDsNCglmb250LXNpemU6MTIuMHB0Ow0KCWZvbnQtZmFtaWx5
OiJUaW1lcyBOZXcgUm9tYW4iLHNlcmlmO30NCmE6bGluaywgc3Bhbi5Nc29IeXBlcmxpbmsNCgl7
bXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCWNvbG9yOmJsdWU7DQoJdGV4dC1kZWNvcmF0aW9uOnVu
ZGVybGluZTt9DQphOnZpc2l0ZWQsIHNwYW4uTXNvSHlwZXJsaW5rRm9sbG93ZWQNCgl7bXNvLXN0
eWxlLXByaW9yaXR5Ojk5Ow0KCWNvbG9yOnB1cnBsZTsNCgl0ZXh0LWRlY29yYXRpb246dW5kZXJs
aW5lO30NCnANCgl7bXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCW1zby1tYXJnaW4tdG9wLWFsdDph
dXRvOw0KCW1hcmdpbi1yaWdodDowaW47DQoJbXNvLW1hcmdpbi1ib3R0b20tYWx0OmF1dG87DQoJ
bWFyZ2luLWxlZnQ6MGluOw0KCWZvbnQtc2l6ZToxMi4wcHQ7DQoJZm9udC1mYW1pbHk6IlRpbWVz
IE5ldyBSb21hbiIsc2VyaWY7fQ0Kc3Bhbi5FbWFpbFN0eWxlMTgNCgl7bXNvLXN0eWxlLXR5cGU6
cGVyc29uYWwtcmVwbHk7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7DQoJY29s
b3I6IzFGNDk3RDt9DQouTXNvQ2hwRGVmYXVsdA0KCXttc28tc3R5bGUtdHlwZTpleHBvcnQtb25s
eTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9DQpAcGFnZSBXb3JkU2VjdGlv
bjENCgl7c2l6ZTo4LjVpbiAxMS4waW47DQoJbWFyZ2luOjEuMGluIDEuMGluIDEuMGluIDEuMGlu
O30NCmRpdi5Xb3JkU2VjdGlvbjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9zdHlsZT48
IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlZGVmYXVsdHMgdjpleHQ9ImVkaXQiIHNw
aWRtYXg9IjEwMjYiIC8+DQo8L3htbD48IVtlbmRpZl0tLT48IS0tW2lmIGd0ZSBtc28gOV0+PHht
bD4NCjxvOnNoYXBlbGF5b3V0IHY6ZXh0PSJlZGl0Ij4NCjxvOmlkbWFwIHY6ZXh0PSJlZGl0IiBk
YXRhPSIxIiAvPg0KPC9vOnNoYXBlbGF5b3V0PjwveG1sPjwhW2VuZGlmXS0tPg0KPC9oZWFkPg0K
PGJvZHkgbGFuZz0iRU4tVVMiIGxpbms9ImJsdWUiIHZsaW5rPSJwdXJwbGUiPg0KPGRpdiBjbGFz
cz0iV29yZFNlY3Rpb24xIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250
LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtj
b2xvcjojMUY0OTdEIj5ISSBQZWxsbyw8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj48YSBuYW1lPSJfTWFpbEVuZENvbXBvc2UiPjxzcGFuIHN0eWxlPSJmb250LXNp
emU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtjb2xv
cjojMUY0OTdEIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L2E+PC9wPg0KPGRpdiBzdHlsZT0i
Ym9yZGVyOm5vbmU7Ym9yZGVyLWxlZnQ6c29saWQgYmx1ZSAxLjVwdDtwYWRkaW5nOjBpbiAwaW4g
MGluIDQuMHB0Ij4NCjxkaXY+DQo8ZGl2IHN0eWxlPSJib3JkZXI6bm9uZTtib3JkZXItdG9wOnNv
bGlkICNFMUUxRTEgMS4wcHQ7cGFkZGluZzozLjBwdCAwaW4gMGluIDBpbiI+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj48Yj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTom
cXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWYiPkZyb206PC9zcGFuPjwvYj48c3BhbiBzdHls
ZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMt
c2VyaWYiPiBvcGVuLWFtcEBnb29nbGVncm91cHMuY29tIFttYWlsdG86b3Blbi1hbXBAZ29vZ2xl
Z3JvdXBzLmNvbV0NCjxiPk9uIEJlaGFsZiBPZiA8L2I+UGVsbG8gSGVyaXo8YnI+DQo8Yj5TZW50
OjwvYj4gTW9uZGF5LCBBcHJpbCAyNCwgMjAxNyAxOjQ0IEFNPGJyPg0KPGI+VG86PC9iPiBtZXRh
LXZpcnR1YWxpemF0aW9uQHlvY3RvcHJvamVjdC5vcmc7IG1ldGEteGlsaW54QHlvY3RvcHJvamVj
dC5vcmc7IHlvY3RvQHlvY3RvcHJvamVjdC5vcmc7IEppYXlpbmcgTGlhbmc7IG9wZW4tYW1wQGdv
b2dsZWdyb3Vwcy5jb208YnI+DQo8Yj5TdWJqZWN0OjwvYj4gW29wZW4tYW1wXSBCdWlsZCBhIFlv
Y3RvIGltYWdlIHRvIGJlIHRoZSBndWVzdCAoRG9tMSkgaW4gYSBzeXN0ZW0gdGhhdCB1c2VzIFhl
biBoeXBlcnZpc29yIGFuZCBwZXRhbGludXggaW1hZ2UgZm9yIERvbTA8bzpwPjwvbzpwPjwvc3Bh
bj48L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8
L286cD48L3A+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+SGkgYWxsLDxvOnA+PC9vOnA+
PC9wPg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0K
PC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+RmluYWxseSBJIGhhdmUgY29tcGls
ZWQgYW4gaW1hZ2UgdXNpbmcgWW9jdG8gdGhhdCBpbmNsdWRlcyB0aGUgbWV0YS12aXJ0dWFsaXph
dGlvbiBsYXllciB3aXRoJm5ic3A7RElTVFJPX0ZFQVRVUkVTX2FwcGVuZCA9ICZxdW90OyB4ZW4m
cXVvdDsgaW4gdGhlIGxvY2FsLmNvbmYgZmlsZS4gSSB1bmRlcnN0YW5kIHRoYXQgdGhpcyBtdXN0
IGJlIHVzZWQgdG8gYnVpbGQgYW4gaW1hZ2UgdG8gd29yayBhcyBhIERvbTAgaW1hZ2Ugd2l0aCBY
ZW4uDQogSWYgSSB3YW50IHRvIGhhdmUgYSBEb20xIGd1ZXN0IGltYWdlLCB3b3VsZCBiZSBlbm91
Z2ggdG8gY2hhbmdlIHRoaXMgRElTVFJPX0ZFQVRVUkVTX2FwcGVuZCBpbnRvICZxdW90OyB4ZW4t
Z3Vlc3QmcXVvdDsgaW4gdGhlIGxvY2FsLmNvbmYgZmlsZT8/IERvIEkgbmVlZCB0byBkbyBhbnl0
aGluZyBtb3JlPzxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj5JbiB0aGUgb3RoZXIgc2lkZSwgaWYgSSB3YW50IHRvIGltcGxlbWVudCBhIHN5c3Rl
bSB0aGF0IGlzIGRlc2NyaWJlZCBpbiB0aGUgdGl0dGxlIG9mIHRoZSBtZXNzYWdlLCBkbyBJIG5l
ZWQgdG8gaW5jbHVkZSB0aGUgb3Blbi1hbXAgbGF5ZXIgdG8gdGhlIGd1ZXN0IGltYWdlIHRoYXQg
SSB3YW50IHRvIGJ1aWxkIGluIFlvY3RvPyBBbmQgaGFzIHRoaXMgbGF5ZXIgZW5vdWdoIHN1cHBv
cnQ/PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48Yj48aT48c3BhbiBzdHls
ZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMt
c2VyaWY7Y29sb3I6IzFGNDk3RCI+W1dlbmR5XSBBcyB5b3UganVzdCB3YW50IHRvIGhhdmUgRG9t
MSwgeW91IGRvbuKAmXQgbmVlZCBvcGVuLWFtcCBsYXllci48bzpwPjwvbzpwPjwvc3Bhbj48L2k+
PC9iPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxiPjxpPjxzcGFuIHN0eWxlPSJmb250LXNp
emU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtjb2xv
cjojMUY0OTdEIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L2k+PC9iPjwvcD4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPjxiPjxpPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFt
aWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjojMUY0OTdEIj5CZXN0IFJl
Z2FyZHMsPG86cD48L286cD48L3NwYW4+PC9pPjwvYj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48Yj48aT48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTomcXVvdDtD
YWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6IzFGNDk3RCI+V2VuZHk8L3NwYW4+PC9pPjwv
Yj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJp
JnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6IzFGNDk3RCI+PG86cD48L286cD48L3NwYW4+PC9wPg0K
PC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+
DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5Mb29raW5nIGZvcndhcmQgdG8g
YW4gYW5zd2VyLDxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+QmVzdCByZWdhcmRzLDxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+UGVsbG88bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPC9kaXY+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj4tLSA8YnI+DQpZb3UgcmVjZWl2ZWQgdGhpcyBtZXNzYWdlIGJlY2F1
c2UgeW91IGFyZSBzdWJzY3JpYmVkIHRvIHRoZSBHb29nbGUgR3JvdXBzICZxdW90O29wZW4tYW1w
JnF1b3Q7IGdyb3VwLjxicj4NClRvIHVuc3Vic2NyaWJlIGZyb20gdGhpcyBncm91cCBhbmQgc3Rv
cCByZWNlaXZpbmcgZW1haWxzIGZyb20gaXQsIHNlbmQgYW4gZW1haWwgdG8NCjxhIGhyZWY9Im1h
aWx0bzpvcGVuLWFtcCYjNDM7dW5zdWJzY3JpYmVAZ29vZ2xlZ3JvdXBzLmNvbSI+b3Blbi1hbXAm
IzQzO3Vuc3Vic2NyaWJlQGdvb2dsZWdyb3Vwcy5jb208L2E+Ljxicj4NClRvIHBvc3QgdG8gdGhp
cyBncm91cCwgc2VuZCBlbWFpbCB0byA8YSBocmVmPSJtYWlsdG86b3Blbi1hbXBAZ29vZ2xlZ3Jv
dXBzLmNvbSI+b3Blbi1hbXBAZ29vZ2xlZ3JvdXBzLmNvbTwvYT4uPGJyPg0KRm9yIG1vcmUgb3B0
aW9ucywgdmlzaXQgPGEgaHJlZj0iaHR0cHM6Ly9ncm91cHMuZ29vZ2xlLmNvbS9kL29wdG91dCI+
aHR0cHM6Ly9ncm91cHMuZ29vZ2xlLmNvbS9kL29wdG91dDwvYT4uPG86cD48L286cD48L3A+DQo8
L2Rpdj4NCjwvZGl2Pg0KPGJyPg0KPGJyPg0KVGhpcyBlbWFpbCBhbmQgYW55IGF0dGFjaG1lbnRz
IGFyZSBpbnRlbmRlZCBmb3IgdGhlIHNvbGUgdXNlIG9mIHRoZSBuYW1lZCByZWNpcGllbnQocykg
YW5kIGNvbnRhaW4ocykgY29uZmlkZW50aWFsIGluZm9ybWF0aW9uIHRoYXQgbWF5IGJlIHByb3By
aWV0YXJ5LCBwcml2aWxlZ2VkIG9yIGNvcHlyaWdodGVkIHVuZGVyIGFwcGxpY2FibGUgbGF3LiBJ
ZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50LCBkbyBub3QgcmVhZCwgY29weSwN
CiBvciBmb3J3YXJkIHRoaXMgZW1haWwgbWVzc2FnZSBvciBhbnkgYXR0YWNobWVudHMuIERlbGV0
ZSB0aGlzIGVtYWlsIG1lc3NhZ2UgYW5kIGFueSBhdHRhY2htZW50cyBpbW1lZGlhdGVseS4NCjxi
cj4NCjxicj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_DC2968D6352D1841BA729D8C06CC9DBB99075BD6XSJPSEXMBX01xln_--
