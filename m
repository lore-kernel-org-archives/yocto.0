Return-Path: <MANJUKUM@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A7DEE00972; Tue,  2 May 2017 11:43:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.56 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0056.outbound.protection.outlook.com [104.47.34.56])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8983E00852;
	Tue,  2 May 2017 11:43:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=4VRrUerTsztC6CEN2EG1t1SLtG7Y40Dkdof5xn/DKrg=;
	b=cXsSAdjLiIMijF1eEfUU0jliFwGY78LS6/UjtkVVhnfAjioy30MicRno8NQ3q+8jlDTRDbZ5U571urDfVrrVvlE0clAAol5MxTZjqzRMBzgtioQkB4E2PClIUhxBbIhKjnqWb7IYf1PCShjBhuSkI5G5EKEq8DbM3BGviI15hpw=
Received: from MWHPR02CA0032.namprd02.prod.outlook.com (10.164.133.21) by
	DM2PR0201MB0960.namprd02.prod.outlook.com (10.160.216.28) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1061.12; Tue, 2 May 2017 18:28:32 +0000
Received: from CY1NAM02FT030.eop-nam02.prod.protection.outlook.com
	(2a01:111:f400:7e45::206) by MWHPR02CA0032.outlook.office365.com
	(2603:10b6:301:60::21) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1061.12 via
	Frontend Transport; Tue, 2 May 2017 18:28:31 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.100)
	smtp.mailfrom=xilinx.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
	149.199.60.100 as permitted sender) receiver=protection.outlook.com;
	client-ip=149.199.60.100; helo=xsj-pvapsmtpgw02;
Received: from xsj-pvapsmtpgw02 (149.199.60.100) by
	CY1NAM02FT030.mail.protection.outlook.com (10.152.75.163) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.1.1019.14
	via Frontend Transport; Tue, 2 May 2017 18:28:30 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]:59407
	helo=xsj-pvapsmtp01) by xsj-pvapsmtpgw02 with esmtp (Exim 4.63)
	(envelope-from <manjukumar.harthikote-matha@xilinx.com>)
	id 1d5cXG-0003Io-2d; Tue, 02 May 2017 11:28:30 -0700
Received: from [127.0.0.1] (helo=xsj-smtp-dlp2.xlnx.xilinx.com)
	by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <manjukumar.harthikote-matha@xilinx.com>)
	id 1d5cXF-00042G-Ur; Tue, 02 May 2017 11:28:29 -0700
Received: from xsj-pvapsmtp01 (xsj-smtp.xilinx.com [149.199.38.66])
	by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id
	v42ISTnI010541; Tue, 2 May 2017 11:28:29 -0700
Received: from [172.19.131.25] (helo=XSJ-PVEXCAS01.xlnx.xilinx.com)
	by xsj-pvapsmtp01 with esmtp (Exim 4.63)
	(envelope-from <MANJUKUM@xilinx.com>)
	id 1d5cXF-000429-6i; Tue, 02 May 2017 11:28:29 -0700
Received: from XSJ-PSEXMBX01.xlnx.xilinx.com ([fe80::c4cc:6661:8e92:58bf]) by
	XSJ-PVEXCAS01.xlnx.xilinx.com ([::1]) with mapi id 14.03.0319.002;
	Tue, 2 May 2017 11:28:29 -0700
From: Manjukumar Harthikote Matha <manjukumar.harthikote-matha@xilinx.com>
To: Nathan Rossi <nathan@nathanrossi.com>
Thread-Topic: [meta-xilinx] xen-image-minimal testing
Thread-Index: AQHSww4GXS87O4FCTEeyBnjPsHocPaHhOMOAgAAIA1CAAH/+AP//nI6Q
Date: Tue, 2 May 2017 18:28:29 +0000
Message-ID: <14EB1FFCA0C8D24A8B04EDEC1EA78C2458A8E08C@XSJ-PSEXMBX01.xlnx.xilinx.com>
References: <CAFL6qn5czUYrKRLPxhZbj7EEAgMu_dFr89WNsDBaYxVWKppM_w@mail.gmail.com>
	<b383700f-54c5-7ff1-92a7-89916c413f1a@gmail.com>
	<14EB1FFCA0C8D24A8B04EDEC1EA78C2458A8CB02@XSJ-PSEXMBX01.xlnx.xilinx.com>
	<CA+aJhH0VpaJsXyBMMN5XYVmOAu0BsUk87ep-WdC8bmiSBJ_A3g@mail.gmail.com>
In-Reply-To: <CA+aJhH0VpaJsXyBMMN5XYVmOAu0BsUk87ep-WdC8bmiSBJ_A3g@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.19.0.12]
MIME-Version: 1.0
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.1.0.1062-23044.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.100; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(6009001)(39410400002)(39450400003)(39400400002)(39860400002)(39850400002)(39840400002)(2980300002)(438002)(13464003)(377454003)(199003)(189002)(53754006)(24454002)(52314003)(9170700003)(5890100001)(93886004)(356003)(110136004)(54906002)(6306002)(5250100002)(55016002)(81166006)(38730400002)(54356999)(5660300001)(8676002)(7736002)(76176999)(53546009)(305945005)(50466002)(230783001)(966004)(4326008)(63266004)(6246003)(50986999)(33656002)(6116002)(478600001)(47776003)(189998001)(3846002)(575784001)(106466001)(55846006)(23676002)(2906002)(7696004)(39060400002)(8936002)(102836003)(6916009)(2920100001)(2950100002)(2900100001)(229853002)(107986001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM2PR0201MB0960;
	H:xsj-pvapsmtpgw02; FPR:; SPF:Pass; MLV:ovrnspm; A:1; MX:1;
	PTR:unknown-60-100.xilinx.com,xapps1.xilinx.com; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; CY1NAM02FT030;
	1:ix1Pyh3j6n9L/NpCCwAQfv8jbvHyNzzSX6+eG1MNP1ITbjEF9zNJTUWJJ2x6QPchhiqLAHzA9aoJoQ7VnnYEXq9K1f3wV0YMt3LIDanaUAOljdCjaMT554kOA5BxafoH4+lTbmLkCM/c/zD2FE1t3eQw7DbmLCNWLduTgZ9y7L/zaVJiWi1zfF8Z5MNvXAhKI+4ppXrTQgYReH8O2NjSYgXNjU+YbDy/wCISdLvTNYuOGNw9VrB1KE3YEpU14HxlvXyJKbjyv0fN5scsunC/ZNJXtHSj3cpG5tQnXqK16Sy3l9C1dDcwRCxJqo7PGCYZZjZd3SIGRjZwDAMuiNmvJmWb7q63W0VhCwjGY6x20gXf2XcgfjVs911JYul2zttJr6gc3bTpMBow3bThJBsiBg2Wayy/VU9BHDVUt4Lte+7L30faRP9NaX+G6rBgAnoauQd5FxSyzas7PoUNCuMLiBvSHsqejGyVqeyJzAtwz7DomRWrzm/fe4evVYjdv/4cS3g27wTZ6zSyH/1IjzrLo5+h5uUTYs+L5VFkbIUdNo1R/cr61NH6wIZwJtjznc0Omoiv1L2kVJIRT1KhIYTZsSxdGQIDDVK8nd0LPMSOulU=
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3c4eab50-e468-49e7-b18e-08d491890908
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(8251501002)(2017030254075)(201703131423075)(201703031133081);
	SRVR:DM2PR0201MB0960; 
X-Microsoft-Exchange-Diagnostics: 1; DM2PR0201MB0960;
	3:vIt9KtzMh38BN4AqYYXbzmPKMi/E52BKEvhwnWAJU7ADH1YJUzqQNQE2V45ylNlmgcY/M5j9E3CRHjFAGBA6AaP9PpGAP31iRQiJ05NoAt6QeOH8GEpycS3Q3kZIWN1vfVctuAowRGLyYTY60emmznqWIK/hf/7LHGWQBIYwPwwMYoSB4Ue/OmSIl+Mj305tgNw5va5Xiy4wOnrA6MazH9bcR2sWZewKCHyB5yn5N33lQY+EWgnVyHszTORMYO9o4Sj5Ju/JfFlQy7plN5ALLCBrcxzEIUaP6H0zwK2u4ty5VfiDWRdESCarak3oe/8Q+PXdMNKAuxhanluWZ17dwYnB9B16O8T2ImQjD8SU/Tca/Jlo2MzYMa6dTalCX7Vjb1HADJxZFaI4fMlTZpGA9suFc8eVzpwuCEI7h7eGPKLSrMaMN+auvJ4ZeaByd1Z0NatZ+i8Xp6+zDOPc59Y46ojE+83TYiy3Lkgnv/hsGZyWvolf6+yyrW8IMyKpm4dN
X-Microsoft-Exchange-Diagnostics: 1; DM2PR0201MB0960;
	25:q9oRiLkdhWt3op6U6QSnENYxDyujNvpLubxlr0UIt6j5lAKZYGGPtsLBbV7Vsi6fW7nEmEB4uCk6mrWAUnIWh92irr9eOsEu3A6GyVyvpvlj3zK74KZA/wRMOeKWtQx2aZU1HHAGInt+nbjyLtyAMHTV1sVgfFodR5LddPszC0c+EptySBhz0qVev+g1ueIObfy5hEEVMoTJP9YnGk3sdMtu8e1WSAacyx1rLZQ3ixm9kVEy0pkIYMOgGE0ZD1KMVaccpoOMRHX2O+liFasNYOVpYDU21Qz/fGoTvuw0GPF+JppMyR+dmAeTmLy/NzmCbCHvDVI2QWzm8w1IQfHg4vtiAAht2eanvNsrjDthEhg1UQdpLJfyJsVVndjzesgXPyvA8zepvQr1IQPQiVp1pubx3s9biSVLgchWy0Db5J4qHKHH7HZgzZuzVDaWSZ6XfIcZ/pvaKSUq/Y8hMzVaKw==;
	31:rbb2sYi9oMQCn0JF4j6UDQxte/HowWsPZPiMrAwKt1bJiWYDFMPt4FRAqwfxzPpfEXm5GKt2eam0G8iKdpQJmWJ7CipDd7VcBtTJRCrttQArhmIiC1GMk8R6RK7e/dv3pEEl2clT48aLWyOCxHPJpULrkXnmSIcRrVGAOiKpGtRAv8ZLnP6plIfqn3BS0Yzdpa42QEWFIqEtiMZYApNrThIFUwaiqZ4FV7gHWlCOPp5tc6JNZlYHLa89+x4EfJ0mhgmNzzqL+xglT9bTTvB1bA==
X-Microsoft-Exchange-Diagnostics: 1; DM2PR0201MB0960;
	20:mKmKkWHFcWQQRpPedgWOycvFVo5Hr1r86DZqd02S6YJ8RvKAARxd6cELqJLx2/YN87pEfwSPKaoCWYFrA5NyW6u53+/kt8mrc2I4ckRDiT83b3PDcgZk+WqnwSu0BQqdYsBxdNhC1YVNfwhPtBdY/BwpUuQI9XMQ6X6XST1AVB1bKx24llxITvi94IOQrIa8QlKDTrt564noANCAteV1ftileZfv1oBGgwTIpb7IgouaS/HzTRccLWfKZBOb+C+WOK9XX6Eq9RMSVrSpZRJWHSO9b7WmZ02v/NclpSkXXO9fEx7Xjpe3v3v2X2nSpjY/EfBM5B7nDkmcJajYejmNSnUl+4Xo1wS4jciRnRtf6cB5IcXIA7H/mJ6quiQemS/pEjVPL4Uetf5qQxhOwWCJ7/4/x1x7lpy1I2XzvDCRnr1+gm4qIe3rdkXI3U0UvKfgCV8T9aZVVwp/UXm5pJneM8Til4S7Jyibl/AowXc0zjc7b69K5JY8z1Od5zi/ST+g
X-Microsoft-Antispam-PRVS: <DM2PR0201MB096077B814AB109B2B9572C6B9170@DM2PR0201MB0960.namprd02.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(166708455590820)(192813158149592);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040450)(601004)(2401047)(13018025)(13023025)(13024025)(8121501046)(5005006)(13015025)(13017025)(93006095)(93004095)(10201501046)(3002001)(6055026)(6041248)(20161123560025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123564025)(20161123558100)(20161123555025)(20161123562025)(6072148);
	SRVR:DM2PR0201MB0960; BCL:0; PCL:0; RULEID:;
	SRVR:DM2PR0201MB0960; 
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtETTJQUjAyMDFNQjA5NjA7NDpsZ3Y2d3ZRYzhFN2QxNEtrMTltQlV0dW93?=
	=?utf-8?B?NzltR2FFblE4VUVDK1djWm11T1J4S2NtMWNhVEFFNWVVNURSVXU2UEEwVXA2?=
	=?utf-8?B?Q0RrSmViYjB4bjFJdjJWV2RZTHA0cmdGUTVGQ0cwanhLelpGVk1JT05NeEZ6?=
	=?utf-8?B?T01HeUhVVFhPUXJ6dzFtTURmS2RqQXdneis4bUVJWGNYeFpMY0xGSFNEUTFn?=
	=?utf-8?B?N0wrNHFOdlZVbzRFbnpBdEprSDRYbUszOHZHRUwrY01GR09xZ3ljYWF2MmdV?=
	=?utf-8?B?dS9uZy80TEVtR0xGTVpPWDhpZk1hU2FoYm5GRlZiUXQ5ODJyWjdoNjR0MkNO?=
	=?utf-8?B?eStIbk1mdFZYcUtvOC9CVU1PT2dZMUJOalB5eldHdFBudXIzWUFLSEVhT0FV?=
	=?utf-8?B?Vm40cGpVOUd3c0dFWkVyQjAzVUxMRzdZSEN4c0Z4cktmZTVURG9oVk8yUFlT?=
	=?utf-8?B?a01PM3ZJR042RlREWVlraUZFN0RIcFRmWnZIMnpJYUZkMjdicFdyRitkTWY0?=
	=?utf-8?B?MVdzUWVtR0ZhaWIrOElTUUs4TEcydVJSMnNUTlpIUnBCNzQ2czE2Y3VuK2VZ?=
	=?utf-8?B?bEF6a3hUd1RTR3RGWnF2RnVLczExTFhuenZ3b2V5bldUN0pYZTJ0aWZ5QTZt?=
	=?utf-8?B?MmNEVWNScWdRMUxuVytFMWZZQ1JBOWRpRmNBaDdNOGl2TTR0cmxhNGtZMU5D?=
	=?utf-8?B?NHlySDZmNWRWUXpOU0w4K2FtbjlYOXdOMlFOV2VhMk13NVc1eWF1ZnBkeWNi?=
	=?utf-8?B?VUV6Rnl0M2RrZE83NDhuVG5kYTJYZXd0clJuazl5V3NvM2pBYVJKK1BEZy9l?=
	=?utf-8?B?U0ZsbXpveThSc29jbXVrcWVhSnI5eWVBNmVreWtHVktWVHVLaENYQ3BZcVll?=
	=?utf-8?B?bzltOWFld0dpNm9ibnJvZWlTSG5KY2pRMUVuRTFIU3RDOVJVWm80cG5uN0F5?=
	=?utf-8?B?YjJqdU1IRjlaMjRaRHVDR0ZUMjhpeGg2UHQyTVZ6YWx1NDJOdkIvVHk3T1Ax?=
	=?utf-8?B?eEpRdzJ1OWhIL2RJVnkvaGM2V2FFdHJOSzFvRHlUa0l5VGVmVmQ1aEJVcUt5?=
	=?utf-8?B?K2pxTCtaNW1sSVRBakR4VW53eEUzRURETlowSzV4SFJrc2xxVjQ4RVRGZGFR?=
	=?utf-8?B?bDBCem5jc212NGdjN21QdzNjWmd1RlFINjV6b1ZCVXJLdnk1YlMxWUNKeHJJ?=
	=?utf-8?B?eDZuUW9GeG5sdDR6NUNzZGxmc1dUaGtSTDM1ZTUrM0I5YXVoSVpKeWwvQWIr?=
	=?utf-8?B?OURnbjdGcWNqYVNiM0Z2U3pydy8wa1dvaGRyZExwTHJqQzJZdTFzNmU2MmVM?=
	=?utf-8?Q?6jx1r0NyCWy/cU4KEFGfSj8r4UjOxrh1E=3D?=
X-Forefront-PRVS: 02951C14DC
X-Microsoft-Exchange-Diagnostics: =?utf-8?B?MTtETTJQUjAyMDFNQjA5NjA7MjM6Q3BVTVl1UnhEMk5iTlV4Z1JJQjVmVnp5?=
	=?utf-8?B?TmpCZ3VSK3BmSDhCM2VwcjhMOWhNdWRacUNXNUJkWTczeFBhRVQ2THBLcVEr?=
	=?utf-8?B?ckw4MGJ1Y0NRbUswbE1GNU96K0pRMmVOL1JMYkpWTU9kUlplNFkxamZSdXow?=
	=?utf-8?B?dUU5UlBRbFdvMVg3ZzRZcUppRzZIdGdDaTJIbmMrVVVMOVBVdmoySE9yU0Zy?=
	=?utf-8?B?OXZ4Z0NONHRIZ3pPWW1qVHdjSDBEbG9yTUExU3hybFdWY2l2cGVLektHMVNU?=
	=?utf-8?B?UFFEbjE4K0VGZDFHeGJKbXVtZGdDQkRlb3JERVRtcGZCQWNsWTBwV1lNNWJp?=
	=?utf-8?B?YUl1SVRTVE9oOGxIOHgveVZqSjYxRnk4N2tOeURvNUMwMlZmWSt2cFRjczlm?=
	=?utf-8?B?NTZ6WDBRMWxmU0JDdDVVMlZMTnYzVjY4dHR1aG1DR1hTSGJKRDBPRWRoUCs3?=
	=?utf-8?B?WGRic0I3TXhiUStBSkxvR0I0VnRzZDRGN2dZUlg2V3hnZG5LK28xRlpEcGhh?=
	=?utf-8?B?ZTdWMVZHK0J2d21SYTFSbDNhVGx0QzBaYmhxMXFlNEdHT2g4bStFQmIwbkZH?=
	=?utf-8?B?S3dQNEphWWFCY1U3VGxGMGNuanN6WVNFaDhnOFJMMnNTVXRnVjVYTDVGcXlS?=
	=?utf-8?B?b1paS2NIVktVam1zRnNkZHI5Y3Jpak9JV0hMaHZUeEEzTU54SVdYYnM4anhE?=
	=?utf-8?B?UXpCMVAwV2lsaTBmeDUyUURHcU11Szl6NDRVUnVrdzZYRnVCdWxOZkdLOHFp?=
	=?utf-8?B?SzBRNitrc3lGZjZqWThSUitZaGhzODFUbVM1dXVSYXJjTUtZRjJRa1RPTVlB?=
	=?utf-8?B?dDBDVktFVVVzUHZneHQ4alorZk1RZ0djVndiVlhncWV0ZFViSGVaYjFKV0RW?=
	=?utf-8?B?a3pZaitNN3owaDZzZEp2eGNnTzBqWkk2cXR3dDlZUEhGVkFLRnUvcW9nSFBs?=
	=?utf-8?B?K05ZV0MyUnRueHRBcEE1Q3VvMDRPQTJ6dmtKNGY5ZCtscGVleXM2OW5jOEpm?=
	=?utf-8?B?b2U0SWF5YVhUbEdRTkdTaGYvRE5GMXdyeEs4UHF4azNCZ29PQ0hpTU9hRWlR?=
	=?utf-8?B?VmVZZHA0REV4NUs1RmNJRTMzNVh5M2kyQjMrKytkWmdSdnB4N1N3bU1xOWNk?=
	=?utf-8?B?cjFmYXR0M1U3UXZzV0wwZUZrT0FHSElabmdKVU84bm1CTnBsVytRSFQ3aW5E?=
	=?utf-8?B?YVppUEFvTDJJdTIrczFERmNzTUFGRG9Jb1ROOXFPaEtnZHZTcjZBcHdNN3A5?=
	=?utf-8?B?RU9NUXFNZGpXdEdJaTd1TXJOa01vcGt5cFhpQW1IeTlOY1dhZlh5aERQVXZR?=
	=?utf-8?B?Y3h1YWVPMUdHU0pzQzRuUlJrWDFZUWttN0ZGZ3FoVlZqelpOSnJFZGlLWGZl?=
	=?utf-8?B?TUw0cEVGcnNZbEQvZmdUNDZoRkwyQTRBYytXUmdqVWRGRW1YTFhpMGE3M2V2?=
	=?utf-8?B?TVlabjB2QXFzUXdjZHY3MW9NWDBiZG9jeXlQTWVhNGpvSjc2RlY3eUgwVUVw?=
	=?utf-8?B?ZUlBZzVhN2lrUVNIeHdlaFkzYmE0Vk1hRFRSNDVFRjJFN1NJMTdzNXlUVitv?=
	=?utf-8?B?QmJnazNKbTdqTk1ueEUySlNMOEpxTDAyQkR4Qm1Nb05nWmpGMzduVlpJR2VD?=
	=?utf-8?B?MnFNSmlYUXRJSG83eko2bnNDaS8wK0Mra2RjRzlzZ3RqRlhWQlJHS2k5dnBp?=
	=?utf-8?B?R0J2Z1REVGM3QVNVOWpEeWZhWDc2dUEvSTVYdHdDMVF3MHI0Mlc0K1E4TW03?=
	=?utf-8?B?L2FRSDQzUjZGcU1lMWNSZm9UNXNYTDdGRHdvTitvWEoxQjM2Vi9zN0NGRFJL?=
	=?utf-8?B?eDZlYlN3VFFpbUMzcFYxUC93OWZ3cSt2Yll2U1JCNXlPM3hKa0J4WElPbXBF?=
	=?utf-8?B?T3huTTFibTBtNnZJN3N6N29PeWtibm5LZHdyV1VOZ21xam1CMFhkcXl1REw2?=
	=?utf-8?B?dm1nTnVGQ2x0SUh4c3JaaHZMU05ybm1hcm5ibmJtc3FRVFVUU1dYUUxvMTVr?=
	=?utf-8?B?QmtQK1g1Z01qbjBtbDVtMXE0VkFMcGwyNHFwRnBhSnBDUGlMSm5PYjlFNm1W?=
	=?utf-8?Q?cfx124=3D?=
X-Microsoft-Exchange-Diagnostics: 1; DM2PR0201MB0960;
	6:I4DQ7IZolLmBzGiN2AFl/H46bHOq+GpFtNjXf6SLCmIEDhC/VQu4IWmUrc3LC+GGPINNNUsG3O7PZjmCUAh9ZQ6KCCD6aKpBS09YjgitZPE8/81HAkE/+GL6ouwq0kUDoQRjA539hFoG/CBqIDxtsR5u5zgYYFjjbZ8MDhGRifdIENGyhGOGoGXCfLlj5LCQdxQA2k8rrtC4FlZp+ZKRCySOzCGfz2lft/Bz4JtLCSxoA3Qya44F0UB9QvFpXhPnQ6INSbz0j7vuWSBHo14eTl1fgohpknAVB4IE0THixk4mcQrnBQubruZAsxYrfobghuFyCyZpcSRU7mA8YPPa/q5358WluZLL0P1B9gX8IzZ9x63EkjxN8jdFHgZmMTmTQiJLsSdUNA1/fuMdzdkZdlIxS+DZuCxmYyA/fBK8LGrZ5f+MLyUOf44nJHNKJut7ZVjrtwxGpp6oQHXLa3YBT/Cf7WvqHMPZi/aEGxCGl5Sw/d3FV499pDDqq1YRLCb8wYHDfCq5aDHfE2ZS8mnuucfn8Ef6UsPycsboz/ymSNQ=;
	5:tWMrY1Zn7n9oQoI0BNthb5JEZLFwXmcmj5oQtzAAr72N7KUH8eGN4RMRllCmphUXv4BzU5hfk149kK5QpIpalk1gPt4YSw4tMRnQdjYsR3qj+L7OWkvVpXbKYtt9Oy9cRr3J8SJlRsRuV0IVQMT19w==;
	24:pkaTcyF4HvaN8WmV21EgGSxEh00ydn/hlS/6cXbCOqh4u4LePLj8o9EZHwp3YhL/DYGIP2Ssja2e2/jyVGzfRYag4Q5IzMiNmUzSfgPstqk=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; DM2PR0201MB0960;
	7:vj7hc8ksR/EVR9jV0EAFprFWXOVWugnicvnTdl2TAa5b4Kibg1QXTef5LLTbjDImI9LNt7piLOgmhBRB6RepJgMqZURFA9Yxi0ao2MC5dxjc8utyXmUEPrTIX1NYDuyiXM/FuZ8DlUvNHLsnOzjS4ZLd2C7hMRyjHNr8Vx0/5fRzgwU1s0eD64trCxzYx19uVxrHuSlvZRys/rCnL8nAs1lzwrFEaN3GzeJYH75LSiJ8FRiQUjRLZTyWKl8MBBbzGehYaOsrUZEuQOb5aj7J+LeeUUL7+T6xbcU7pJwr9Yx1Dt7NodG4SRMIn9KuqQPeHkyTbN2jHRFV73glSv20VA==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2017 18:28:30.9506 (UTC)
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c;
	Ip=[149.199.60.100]; Helo=[xsj-pvapsmtpgw02]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM2PR0201MB0960
Cc: "meta-virtualization@yoctoproject.org"
	<meta-virtualization@yoctoproject.org>,
	Pello Heriz <pello.heriz@alumni.mondragon.edu>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"meta-xilinx@yoctoproject.org" <meta-xilinx@yoctoproject.org>,
	Jason Wu <jason.wu.misc@gmail.com>, "meta-xilinx-request@yoctoproject.org"
	<meta-xilinx-request@yoctoproject.org>
Subject: Re: [meta-xilinx] xen-image-minimal testing
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
X-List-Received-Date: Tue, 02 May 2017 18:43:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmF0aGFuIFJvc3NpIFtt
YWlsdG86bmF0aGFuQG5hdGhhbnJvc3NpLmNvbV0NCj4gU2VudDogVHVlc2RheSwgTWF5IDAyLCAy
MDE3IDEwOjIzIEFNDQo+IFRvOiBNYW5qdWt1bWFyIEhhcnRoaWtvdGUgTWF0aGEgPE1BTkpVS1VN
QHhpbGlueC5jb20+DQo+IENjOiBKYXNvbiBXdSA8amFzb24ud3UubWlzY0BnbWFpbC5jb20+OyBQ
ZWxsbyBIZXJpeg0KPiA8cGVsbG8uaGVyaXpAYWx1bW5pLm1vbmRyYWdvbi5lZHU+OyBtZXRhLXhp
bGlueEB5b2N0b3Byb2plY3Qub3JnOyBtZXRhLXhpbGlueC0NCj4gcmVxdWVzdEB5b2N0b3Byb2pl
Y3Qub3JnOyBtZXRhLXZpcnR1YWxpemF0aW9uQHlvY3RvcHJvamVjdC5vcmc7DQo+IHlvY3RvQHlv
Y3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogUmU6IFttZXRhLXhpbGlueF0geGVuLWltYWdlLW1p
bmltYWwgdGVzdGluZw0KPg0KPiBPbiAzIE1heSAyMDE3IGF0IDAyOjQ3LCBNYW5qdWt1bWFyIEhh
cnRoaWtvdGUgTWF0aGEgPG1hbmp1a3VtYXIuaGFydGhpa290ZS0NCj4gbWF0aGFAeGlsaW54LmNv
bT4gd3JvdGU6DQo+ID4NCj4gPg0KPiA+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+
PiBGcm9tOiBtZXRhLXhpbGlueC1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmcgW21haWx0bzptZXRh
LXhpbGlueC0NCj4gPj4gYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnXSBPbiBCZWhhbGYgT2YgSmFz
b24gV3UNCj4gPj4gU2VudDogVHVlc2RheSwgTWF5IDAyLCAyMDE3IDI6MTYgQU0NCj4gPj4gVG86
IFBlbGxvIEhlcml6IDxwZWxsby5oZXJpekBhbHVtbmkubW9uZHJhZ29uLmVkdT47IG1ldGEtDQo+
ID4+IHhpbGlueEB5b2N0b3Byb2plY3Qub3JnOyBtZXRhLXhpbGlueC1yZXF1ZXN0QHlvY3RvcHJv
amVjdC5vcmc7IG1ldGEtDQo+ID4+IHZpcnR1YWxpemF0aW9uQHlvY3RvcHJvamVjdC5vcmc7IHlv
Y3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gPj4gU3ViamVjdDogUmU6IFttZXRhLXhpbGlueF0geGVu
LWltYWdlLW1pbmltYWwgdGVzdGluZw0KPiA+Pg0KPiA+Pg0KPiA+Pg0KPiA+PiBPbiAyLzA1LzIw
MTcgNDozMyBQTSwgUGVsbG8gSGVyaXogd3JvdGU6DQo+ID4+ID4gSGkgYWxsLA0KPiA+PiA+DQo+
ID4+ID4gSSBoYXZlIGJ1aWx0IGFuIGltYWdlIHVzaW5nICJ4ZW4taW1hZ2UtbWluaW1hbCIgY29t
bWFuZCB3aXRoIFlvY3RvDQo+ID4+ID4gYW5kIEkgd291bGQgd2FudCB0byBrbm93IGhvdyBjYW4g
SSB0ZXN0IGlmIHhlbiBmdW5jdGlvbmFsaXRpZXMgYXJlDQo+ID4+ID4gY29ycmVjdCBvciBub3Qg
d2l0aCBaeW5xIE1QU29DIFFFTVUuIEhvdyBjYW4gSSBkbyB0aGlzPw0KPiA+PiBodHRwOi8vd3d3
Lndpa2kueGlsaW54LmNvbS9CdWlsZGluZyt0aGUrWGVuK0h5cGVydmlzb3Ird2l0aCtQZXRhTGlu
dXgNCj4gPj4gKzIwMTYuNCsNCj4gPj4gYW5kK25ld2VyDQo+ID4+DQo+ID4+IGhhdmUgbG9vayBh
dCB0aGUgIlRGVFAgQm9vdGluZyBYZW4gYW5kIERvbTAgMjAxNi40IiBzZWN0aW9uIGFuZCBob3Bl
IHRoYXQNCj4gaGVscHMuDQo+ID4+DQo+ID4+ID4NCj4gPj4gPiBBbnl3YXksIEkgaGF2ZSBzZWVu
IHRoYXQgc29tZXRpbWVzIGluIHRoZSBRRU1VIHRlcm1pbmFsIGFwcGVhcnMgdGhlDQo+ID4+ID4g
bmV4dCBtZXNzYWdlIHdoZW4gdGhlIG1lbnRpb25lZCBpbWFnZSBpcyBsYXVuY2hlZCBieSAicnVu
cWVtdSB6Y3UxMDIiLg0KPiA+PiA+DQo+ID4+ID4gSU5JVDogSWQgIlgwIiByZXNwYXduaW5nIHRv
byBmYXN0OiBkaXNhYmxlZCBmb3IgNSBtaW51dGVzDQo+ID4+ID4NCj4gPj4gPiBXaGF0J3MgdGhl
IG1lYW5pbmcgb2YgdGhlIG1lc3NhZ2U/IElzIGl0IGNyaXRpY2FsPw0KPiA+PiBJdCBpcyBub3Qg
Y3JpdGljYWwgaWYgeW91IGRvbid0IG5lZWQgaXQuIFRoZSByZWFzb24geW91IGFyZSBnZXR0aW5n
DQo+ID4+IHRoaXMgZXJyb3IgbWVzc2FnZSBpcyBiZWNhdXNlIHRoZSB5b3VyIGluaXR0YWIgdHJ5
aW5nIHNwYXduIGEgY29uc29sZQ0KPiA+PiB3aGVuIHRoZSBkZXZpY2Ugbm9kZSAoZS5nLiBodmMw
KSBmb3IgSWQgIlgwIiBkb2VzIG5vdCBleGlzdHMuDQo+ID4+DQo+ID4NCj4gPiBJcyB0aGVyZSBh
IHdheSB0byBzdG9wIGluaXR0YWIgZnJvbSBkb2luZyB0aGlzPw0KPiA+IFRyaWVkIGZldyBvcHRp
b25zIGZvciBpbml0aWFiLCBmb3IgZXg6IHVzaW5nICJvbmNlIiBpbnN0ZWFkIG9mICJzcGF3biIN
Cj4gPg0KPiA+IEFueSBvdGhlciBnb29kIGlkZWFzIG9uIGhvdyB3ZSBjYW4gZGlzYWJsZSBpdD8g
T3Igd2hhdCBpcyBhIGJldHRlcg0KPiA+IGFwcHJvYWNoIHRvIHJlc29sdmUgdGhpcyBpc3N1ZSBk
dXJpbmcgcnVudGltZQ0KPg0KPiBDaGFuZ2UgdGhlIHN5c3Zpbml0LWluaXR0YWIgYmJhcHBlbmQg
aW4gbWV0YS12aXJ0dWFsaXphdGlvbiB1c2Ugc3RhcnRfZ2V0dHkgaW5zdGVhZA0KPiBvZiBqdXN0
IGdldHR5LCBzdGFydF9nZXR0eSBkb2VzIGEgJ3Rlc3QgLWMnIGJlZm9yZSBzdGFydGluZyBnZXR0
eSBvbiB0aGUgZGV2aWNlLiBUaGlzIGlzDQo+IGhvdyBzeXN2aW5pdC1pbml0dGFiIGhhbmRsZXMg
U0VSSUFMX0NPTlNPTEVTLiBBbHRlcm5hdGl2ZWx5IHRoZSBtZXRhLXZpcnR1YWxpemF0aW9uDQo+
IGJiYXBwZW5kIGNvdWxkIGp1c3QgZXhwYW5kIFNFUklBTF9DT05TT0xFUy4NCj4NClNvbWV0aGlu
ZyBsaWtlIHRoaXM/DQpodHRwczovL2dpdGh1Yi5jb20vWGlsaW54L21ldGEtdmlydHVhbGl6YXRp
b24vY29tbWl0LzYxMDg4NzQ5NWMwMWYwYjE3ZGI2MDg0ZTE0MjZjYzU1YTNmODA2ZWENCg0KV2Ug
c3RpbGwgc2VlIGluaXRhYiBsb29raW5nIGZvciBjb25zb2xlIGV2ZW4gYWZ0ZXIgdGhpcyBjaGFu
Z2UNCg0KVGhhbmtzDQpNYW5qdQ0KDQoNCj4gUmVnYXJkcywNCj4gTmF0aGFuDQoNCg0KVGhpcyBl
bWFpbCBhbmQgYW55IGF0dGFjaG1lbnRzIGFyZSBpbnRlbmRlZCBmb3IgdGhlIHNvbGUgdXNlIG9m
IHRoZSBuYW1lZCByZWNpcGllbnQocykgYW5kIGNvbnRhaW4ocykgY29uZmlkZW50aWFsIGluZm9y
bWF0aW9uIHRoYXQgbWF5IGJlIHByb3ByaWV0YXJ5LCBwcml2aWxlZ2VkIG9yIGNvcHlyaWdodGVk
IHVuZGVyIGFwcGxpY2FibGUgbGF3LiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQgcmVjaXBp
ZW50LCBkbyBub3QgcmVhZCwgY29weSwgb3IgZm9yd2FyZCB0aGlzIGVtYWlsIG1lc3NhZ2Ugb3Ig
YW55IGF0dGFjaG1lbnRzLiBEZWxldGUgdGhpcyBlbWFpbCBtZXNzYWdlIGFuZCBhbnkgYXR0YWNo
bWVudHMgaW1tZWRpYXRlbHkuDQoNCg==

