Return-Path: <Nishina.Pervin@nestgroup.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70FC1E009F4; Tue, 24 Apr 2018 00:25:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.100.133 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 915 seconds by postgrey-1.32 at yocto-www;
	Tue, 24 Apr 2018 00:25:10 PDT
Received: from IND01-MA1-obe.outbound.protection.outlook.com
	(mail-ma1ind01on0133.outbound.protection.outlook.com
	[104.47.100.133])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17168E009BC
	for <yocto@yoctoproject.org>; Tue, 24 Apr 2018 00:25:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=NESTGROUP.onmicrosoft.com; s=selector1-nestgroup-net;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=/66VFu/qnAGgOkhGyxeSsusSgCrVbtQ1lYw6xcmPZVE=;
	b=AeLp+jJ4bP11dXnptk4qKiEam4Pfi5azgF1undAydwZ3HaNi8l+sqHt6qvQhjq+qQ+1Frs+r/Fmzo1hChWRBfXasESVMJnX7hlMlmxqkp9/GZCraKmC6Av3pL3UuX4g3OH4vl4v9N3Lt4rW+gVfCrapc+zEAcIOr/rnwnrHjtac=
Received: from PN1PR0101CA0063.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c00:d::25)
	by BM1PR0101MB1793.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:22::8)
	with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.696.13;
	Tue, 24 Apr 2018 07:09:53 +0000
Received: from MA1IND01FT003.eop-IND01.prod.protection.outlook.com
	(2a01:111:f400:7ea4::201) by PN1PR0101CA0063.outlook.office365.com
	(2603:1096:c00:d::25) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.696.13 via
	Frontend Transport; Tue, 24 Apr 2018 07:09:53 +0000
Authentication-Results: spf=fail (sender IP is 220.227.133.133)
	smtp.mailfrom=nestgroup.net; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=nestgroup.net;
Received-SPF: Fail (protection.outlook.com: domain of nestgroup.net does not
	designate 220.227.133.133 as permitted sender)
	receiver=protection.outlook.com; client-ip=220.227.133.133;
	helo=mxchn-out1.nestgroup.net;
Received: from mxchn-out1.nestgroup.net (220.227.133.133) by
	MA1IND01FT003.mail.protection.outlook.com (10.152.200.70) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.696.11 via Frontend Transport; Tue, 24 Apr 2018 07:09:52 +0000
Received: from [10.4.0.132] (port=32094 helo=webmail.nestgroup.net)
	by mxchn-out1.nestgroup.net with esmtps (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.82_1-5b7a7c0-XX)
	(envelope-from <Nishina.Pervin@nestgroup.net>) id 1fAs5E-0006zf-3D
	for yocto@yoctoproject.org; Tue, 24 Apr 2018 12:39:48 +0530
Received: from MBCHN01.chn.nestgroup.net ([169.254.2.109]) by
	CHNCAHT1.chn.nestgroup.net ([10.4.0.134]) with mapi id 14.03.0319.002;
	Tue, 24 Apr 2018 12:39:48 +0530
From: "Nishina A. Pervin" <Nishina.Pervin@nestgroup.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Error during Importing pexpect
Thread-Index: AdPbmsBe7Z2vkZs0RaqXJJU+eEQeXA==
Date: Tue, 24 Apr 2018 07:09:48 +0000
Message-ID: <E3DACD6AA0B26143AF16244886B5278E1FE92BBF@MBCHN01.chn.nestgroup.net>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.18.0.177]
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:220.227.133.133; IPV:CAL; CTRY:IN; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(39380400002)(39850400004)(346002)(396003)(376002)(2980300002)(1109001)(339900001)(53474002)(189003)(199004)(486006)(9326002)(7696005)(59450400001)(7736002)(5890100001)(26005)(8936002)(102836004)(77096007)(33656002)(2501003)(55846006)(7636002)(7596002)(186003)(6916009)(16586007)(356003)(71366001)(336012)(54896002)(6306002)(5640700003)(3846002)(6116002)(2906002)(478600001)(55016002)(790700001)(72206003)(476003)(1730700003)(14454004)(8676002)(85426001)(84326002)(5660300001)(2351001)(105606002)(106466001)(2920100001)(2900100001)(3480700004)(126002)(86362001)(426003)(316002)(260700001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BM1PR0101MB1793;
	H:mxchn-out1.nestgroup.net; FPR:; SPF:Pass; LANG:en; MLV:ovrnspm;
	MX:1; A:1; PTR:mxchn-out1.nestgroup.net; 
X-Microsoft-Exchange-Diagnostics: 1; MA1IND01FT003;
	1:tHpxX1tTJDZbMXzg31q8saoFZG74eKIcNlwDZZHIpWLxa2aMQWIqqsMhc0ECtnQSg/sVT+zxWXEQoaUbYA+/Ph7vcmC1zhgkm6zHFffJVGFATqJ+u79i1qv9KOz5HkpF
X-MS-PublicTrafficType: Email
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:BM1PR0101MB1793; 
X-Microsoft-Exchange-Diagnostics: 1; BM1PR0101MB1793;
	3:zY2YMreU7fHdi9TFul/P8nlYMVqK7PdbxKJ+lqPGdiEluGwzyOGcBn/Fz3UvYxi8atJc03LnjLSTAPA2czT25XwJe8wnn5FaM65O7Wh/KWilGzXhQR1YrsLrB8R/vthFoCI4JabCUyTi1tKf6rcx5S218NxXqLsGPuy73mQ5X0sFNR0Mfto191/B9v9sjuPx3rPXOhEl1Ulrg+PQ/9J8NZTCU28mRzu/XASq+BbBnOovvjCw1A572RTctCYwA5TMefYyNH0P+YHFSXs2D8u3v1x1rqFh6tHcBYfTl9+A/EFAjCA+EpaXfvODzaLBlGabSRPRVQRY4TkPPm5RlP3WpgiCBL+EOTDXDlm605A4t1A=;
	25:Z9NyRWsnvVrU2zx9BfCfyWSnZqS2VWMgGAq2SV9TqDTPDYJJcRsFOgpa85aFwXblcBqQsT/+UNbsOXK+fipUHZ074zWC3vEKC9osAz+cpeM0rOZp0amOF16PHxhoS5yxRMZAA8Sm5StXxZ6W6pw+lolltZ8VcKpaLr8yd/YPtjipGlLJaW1CbRAyY/NDHYztYvKUFwuRymKE1R7j1G/ZPfBGml+rZSTBzIIo2DLVX4GQqCBdX1XkvjuHyzekbVfyMFM7VzUc1cKZU+r9jkyRDllt1ixe23+VJFC4rls9Kc7e66zY07HIDT+/4WNg8F6u6P/3wNLM/B5HphiCLh5tSQ==
X-MS-TrafficTypeDiagnostic: BM1PR0101MB1793:
X-Microsoft-Exchange-Diagnostics: 1; BM1PR0101MB1793;
	31:kvrblzPHD4E0Dyho99z4RBpJ7ZsEq9ekfCJgfG0TKWr7EobCka1yI6PPESgFoi5Bho31N6gm0IfXExiIjf1eNHrQAa1AeLS0Re9rJ/9Jg9u/+SqqHpNVq5vvKuPbSs0spI9ZBG/PBCHdDXHZ2d7rEsM3U+SS4nM6aysn64w4R+VSuM94lfhwM8I9+C1Css/s84nPbOBpQptVKP/UGQhVCkD5B5VYx9mrHbJzK0gfOI0=;
	20:7AtwfM5SST7vqb6mS8/jw8L6nSrD1/ov9uv5cIfkQ3s7HuTJemyK8ibaD12/eemMupC+t7ONZUTI1JnTxs8Z3DE6L34d0fY9uPY6tZhiMkSCa27jUu7Lzpa+dyXZjqHzfBPq3fZU92G7YvJosMwKE37G3tlrJWusZL8PGFSGxQLm/OPl7+l/4qxO8pBMo6ni+MRAzsr5OGGrei/mhQLLcipThZp1/TuUq3M5I909rHNOfTrxamKnFUPNSRZrLxRWHF3vxGQuwOtmz6kNlwZ4mjdWM21l3x22lc7HgI2GRdV/yV9t0FtvG8UWmZEHkdpvvugLihpqmKjs6USAhYHNLRJxGdM3eJVcCliMgNeWn2B7M3aD5SP6lpmtGCPLBMwA0gTx+MyTW7vJ+S5JjdUEPr5zGpw2mnZYZUppKSpIxk61Md5p95d8c7Jr4IUY0JDHRb5/fIUhL+6BWyPLf5JkChhQ9rLn2P26GDzuBULmNrjj53tlt/+rGZFex9ilHOS/
X-Microsoft-Antispam-PRVS: <BM1PR0101MB17931E253606B06DB74FB48C9A880@BM1PR0101MB1793.INDPRD01.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test: UriScan:(28532068793085)(21748063052155);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(10201501046)(3002001)(93006095)(93001095)(3231232)(944501410)(52105095)(6041310)(20161123558120)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(20161123562045)(6072148)(201708071742011);
	SRVR:BM1PR0101MB1793; BCL:0; PCL:0; RULEID:;
	SRVR:BM1PR0101MB1793; 
X-Microsoft-Exchange-Diagnostics: 1; BM1PR0101MB1793;
	4:8JReg5DbkN4Rsb7faM1qz6sJPUH+pRPNeXqUYa3hOJ1UJWE+4Vi196VgHhL5R9UduG+wezJ2a5uynvEO3payfv5dux3IYD5BpA6SyW5wUERmb56UX60SCPhkwY4RrJvc5ZTa9Un6Ta6+5gSOlbLK/7oZi64GgDWaNtUdg+6qxZQAtCmbZhCFVjs2mLFU+jS142Kxbu3bRs29+paikbdc8AUN0LiRyN1Yf3OK6Uxz7bGAnsc6ygnREjYVlgkI/PNxn0HCuhtKKsprpF4aQefHLaa/emezvLHKdGxDnW4agpgIaPP4xlw5Vh7YAcOvh/gTf2qWOXnQYoe616rZSrOwFXEcfWaa1aTy/HSMH1X4oa4=
X-Forefront-PRVS: 0652EA5565
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; BM1PR0101MB1793;
	23:M9Qk0S/gK4urPpvkehyOYvqVyAC/rrKwmMRDCzT?=
	=?us-ascii?Q?Vbqq0R2+SKOEpXljpZjsZ5txY9zL4vmitx34egtjOBBBZCzHzmUjDuHSH/B5?=
	=?us-ascii?Q?PrwZJfwhfQ6tk7a4mT2sACNmzLmf9s94WWhBDH8XCoQ+fA2DLRhMfCU+T35t?=
	=?us-ascii?Q?ON4j7OXvVWiS8Bhkl2VxHLHUzSOD4njqSiBU3y8TnvSes7SWfkzAYsKREvGU?=
	=?us-ascii?Q?sL7Q58lIBO9jPVe103Ypbckz4rTmlKEcgEU5KMiwY8jab2QxrYpZlG/uCW9u?=
	=?us-ascii?Q?imZmqnhOTYvJq64e1NkV97/blTmNBhw4tTCasinIppd7yhH8K8wXQZCjnvOH?=
	=?us-ascii?Q?sDfvWP7P1eNdus5o7/yiL+aeXNUoPUJ6i8pPv2xnXngrFdIlbIc7gxVoI4Xc?=
	=?us-ascii?Q?uX9FHc4j8c4QU9d0cbkfpR6lZIRCrplZqK7cgy06yqF1FlVFCRdyQr5O0YR2?=
	=?us-ascii?Q?hC+xybBlyfE8S22IEgztFoWVqDAS5WpZ8zIHI92Bw0TkMo+89tARlY9pmmyY?=
	=?us-ascii?Q?lUsf7n0QamFez9yXVDahwaJdWJtHWPRb7QO0eCA2OS5uKguzcSH/J+Q5WSbb?=
	=?us-ascii?Q?1rp+XBMA1LGtX4PYlijnUS8+vOr65s2nqzW+9+H0FclJ1FHAdJ+NK7DMwIvA?=
	=?us-ascii?Q?82vDE52hz0RYvmlW8Mzrt/3J7e3iWHQnQK/INye5pmUuwXBK1qqvdKxGonJE?=
	=?us-ascii?Q?HKfoDo1jBKVOAgo02ZrJy/O3sy8Sv/RQJDYQioyUmVr/qocTQfI01IVLlvbz?=
	=?us-ascii?Q?DrkKVLJx46DK27CwVnbi8kpKwgSz1QulPQh9qHPB1sF3drF4QstT00tvYrwD?=
	=?us-ascii?Q?aFl9g92uGdA9kYwIXSQ2Vm0oxe7ALURfzJmBND9YV2gKG7tQagf7k6WlB8Sd?=
	=?us-ascii?Q?cJKppHLCxu44VIZYIjcNaBjJyLOYyV0PRN4uVL0OfsX5CAxM1Tbt+rYFGX7a?=
	=?us-ascii?Q?H4Bzea/quFQCC5J86VdKesgQM+bFVsO/XLUek5xwmo76BPtbl/1NVA3vvv1u?=
	=?us-ascii?Q?YJkGflnTh8xdtAHRRurYfLdj7zhlS2ZFmzFMm/DYnH6onP7jO5ieFVENbTYP?=
	=?us-ascii?Q?nRx2Y2/v6LAiHCIARzCLZ07VL3h9IAm/ARfvfdTZMNI0tTcf4uIWZ4f0Bt3Z?=
	=?us-ascii?Q?yzueObhlSgmgeOlQwvovDLiM9W1vlnlWs7ouVELXhjsxzwkBLXkasWZgzOGA?=
	=?us-ascii?Q?/lCMC9TMj0wL0/j4JmZgkNdZhcMPF1/JDvakgxCCNYQhSTb2B2kILuwFBAhM?=
	=?us-ascii?Q?1VIzHFSVOzhSauw2f+YfiQm8pt6oPJmoNwr7VXLnCSDbUUE394DKzfyMDp4X?=
	=?us-ascii?Q?5A/YkxUapxKL4+l5QJ/MmeTnVV70gQkAwMDNYg/oPr1Szq7jo3kYvemiRm5f?=
	=?us-ascii?Q?r5BTZig=3D=3D?=
X-Microsoft-Antispam-Message-Info: JygQCgCRgINcvJRhPrBT5NsAOD9YKTKKnNE+id4B5c31kgNxidKMYVDzUNBU4aJss9a78z2cgLs6keU6o3OA/1886BjDyG58jJK6LM8sCbNtlnVMyhJvU5AqAuVD3N38tRtgPClf9fqrQRuAtdRbnc5kpJuPQG8J4NkUP80wX+5vjI8pgll0fZ6eGpAZT0g3
X-Microsoft-Exchange-Diagnostics: 1; BM1PR0101MB1793;
	6:WaNcPzrhKldNYPA1e/HE8i2NjiyCw59gYGQWP/3WaP94J6vcJg/p1HbkVWbgHeG/FGq5/tobZniqr6IgVu+gUE4NsO3lEPrwAi2ah6SsWMslOOVMX1j+XaCjhDM6tHYVsuAx6DzZ6g6YBSBCm8jG40rF+cei24kwkdpeoWGzY8HT7Bn9pAb1mDX/F4sh2nES/OX/b+RrG3MXozwawl40QcLluK8zzYOqRW5QAFHGtD9W9DVxWbPmVYNhAMSrcjtuBK43L5LPXI7wi+YNRP4NkLjCn1XkTCeFDR5aN4QWEPpf9IKWxOpsosgIZUQm5yfpJ5hyH8Cm96OGH0IVtGNNRXN1vukGlM3Im2v/tQ8i5+0OUWuM8YwtVdUsRDw/2KbR7wsy7Q69aUy5Fcg87VEPYSVLgJ6kjv4ZvbI7nRtChpVRaNk43m60jukZTfuAv0RfQv9ydJT4J14YXtTrCriitQ==;
	5:jj8pts3bEDSycno1n55Q4wg3AZ+cnmYcJbB64pSIzWwSlBZcLlbxWzFmzV5z+TwxwNAVE6iqLznQTcuWA6HjdS6VkcA/8SUqDRWznPoNUtHqcW+EEpc6D/nRvlzHjTSjPfC0ZIeZUg19wZTMRq7pBbmM2RY42wyZm18DQwedbtc=;
	24:ifBve5K1FVnzdH9yFV8PQ0Ciw8clkW+v15WqCOV04x/3VdrOl593J+J+l3cvP35HF9yo0JMMf9K65KIdGj3TgxoksfrSi60xF2QhAY0PK5Q=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; BM1PR0101MB1793;
	7:qrYp+MME/8MPtcECw8cTvDGI2ykqcUYFJ28naFPKcqUSrs9fXm9Kc971MtaDNREMVSuQRBtPMDPi/wam+dcMDnskEVc9tVtdUDyl+KO8BufzqgzjcJXzgzvxIvqxLSGRQxzA3zAyLJVFr1hM4bIqMoeUg/uI82yXqRknzsIWqMmY/RtNj/odOGxy5Uou/3ulXMBBWmbBCJGriu+dkR8XfI9u3NIU5l+WPQTISAgvENQG2U7Uxo7aiTiC0BjklyD/
X-MS-Office365-Filtering-Correlation-Id: 0c3e8fee-48bd-421f-0f3a-08d5a9b26025
X-OriginatorOrg: nestgroup.net
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2018 07:09:52.3544 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c3e8fee-48bd-421f-0f3a-08d5a9b26025
X-MS-Exchange-CrossTenant-Id: 413238b0-a7ed-471d-b1a9-615aa47d504c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=413238b0-a7ed-471d-b1a9-615aa47d504c;
	Ip=[220.227.133.133]; Helo=[mxchn-out1.nestgroup.net]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BM1PR0101MB1793
Subject: Error during Importing pexpect
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
X-List-Received-Date: Tue, 24 Apr 2018 07:25:13 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E3DACD6AA0B26143AF16244886B5278E1FE92BBFMBCHN01chnnestg_"

--_000_E3DACD6AA0B26143AF16244886B5278E1FE92BBFMBCHN01chnnestg_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Hi,

When I am trying to import pexpect to make my program interactive in Krogot=
h branch of Yocto build for imx6qsabreauto board, i am getting the followin=
g error: Please help me to resolve the issue.

root@imx6qsabreauto:/usr/bin# ./SensorTag.py B0:B4:48:BF:17:05
Traceback (most recent call last):
  File "./SensorTag.py", line 3, in <module>
    import pexpect
  File "/usr/bin/pexpect.py", line 41, in <module>
    Currently pexpect is intended for UNIX operating systems."""
ImportError: No module named pty
A critical module was not found. Probably this OS does not support it.
Currently pexpect is intended for UNIX operating systems.
root@imx6qsabreauto:/usr/bin#

Please help me to resolve the issue.

Regards,
Nishina
________________________________

Confidentiality Statement / Disclaimer : This message and any attachments i=
s intended for the sole use of the intended recipient. It may contain confi=
dential information. Any unauthorized use, dissemination or modification is=
 strictly prohibited. If you are not the intended recipient, please notify =
the sender immediately then delete it from all your systems, and do not cop=
y, use or print. Internet communications are not secure and it is the respo=
nsibility of the recipient to make sure that it is virus/malicious code exe=
mpt.

The company/sender cannot be responsible for any unauthorized alterations o=
r modifications made to the contents. If you require any form of confirmati=
on of the contents, please contact the company/sender. The company/sender i=
s not liable for any errors or omissions in the content of this message.

________________________________

--_000_E3DACD6AA0B26143AF16244886B5278E1FE92BBFMBCHN01chnnestg_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hi,<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">When I am trying to im=
port pexpect to make my program interactive in Krogoth branch of Yocto buil=
d for imx6qsabreauto board, i am getting the following error: Please help m=
e to resolve the issue.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">root@imx6qsabreauto:/u=
sr/bin# ./SensorTag.py B0:B4:48:BF:17:05<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Traceback (most recent=
 call last):<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp; File &quot;./Se=
nsorTag.py&quot;, line 3, in &lt;module&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; imp=
ort pexpect<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp; File &quot;/usr=
/bin/pexpect.py&quot;, line 41, in &lt;module&gt;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp; Cur=
rently pexpect is intended for UNIX operating systems.&quot;&quot;&quot;<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">ImportError: No module=
 named pty<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">A critical module was =
not found. Probably this OS does not support it.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Currently pexpect is i=
ntended for UNIX operating systems.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">root@imx6qsabreauto:/u=
sr/bin#<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Please help me to reso=
lve the issue.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Regards,<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Nishina<o:p></o:p></sp=
an></p>
</div>
<style>P {margin:0cm;margin-bottom:.0001pt:}</style>
<hr>
<p><span style=3D"font-size:10pt;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot; "><b>Confidentiality Statement / Disclaimer</b> : This message a=
nd any attachments is intended for the sole use of the intended recipient. =
It may contain confidential information. Any unauthorized
 use, dissemination or modification is strictly prohibited. If you are not =
the intended recipient, please notify the sender immediately then delete it=
 from all your systems, and do not copy, use or print. Internet communicati=
ons are not secure and it is the
 responsibility of the recipient to make sure that it is virus/malicious co=
de exempt.
<br>
<br>
The company/sender cannot be responsible for any unauthorized alterations o=
r modifications made to the contents. If you require any form of confirmati=
on of the contents, please contact the company/sender. The company/sender i=
s not liable for any errors or omissions
 in the content of this message.</span> <br clear=3D"none">
</p>
<hr>
</body>
</html>

--_000_E3DACD6AA0B26143AF16244886B5278E1FE92BBFMBCHN01chnnestg_--
