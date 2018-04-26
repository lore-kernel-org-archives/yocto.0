Return-Path: <Nishina.Pervin@nestgroup.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0B6DE00BC3; Wed, 25 Apr 2018 23:54:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.101.133 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from IND01-BO1-obe.outbound.protection.outlook.com
	(mail-bo1ind01on0133.outbound.protection.outlook.com
	[104.47.101.133])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30960E00B9C
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 23:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=NESTGROUP.onmicrosoft.com; s=selector1-nestgroup-net;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=uNaHWDKYgdgH/sSptS6l11NkVs9c1H4t1Kf7S8bCXAU=;
	b=T+7yi1ChBR9uuWMOG+0cIDI5XhhlUdvNNKnVt5nKSQV7M48uOl7ipHngc/Nr4oQGrvOFbLYaQ8ECJFk/tHpH25lffxb0og5tEeBsw1LmqBxLt0KRK8ijOpmsrf9yRdvYi4y5igfPDNRFVF3uAT2icW3fOV9XZwNQe97xXsitLBw=
Received: from BM1PR01CA0021.INDPRD01.PROD.OUTLOOK.COM
	(2a01:111:e400:5a49::28) by MA1PR0101MB2023.INDPRD01.PROD.OUTLOOK.COM
	(2603:1096:a00:30::17) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.696.13;
	Thu, 26 Apr 2018 06:54:40 +0000
Received: from MA1IND01FT010.eop-IND01.prod.protection.outlook.com
	(2a01:111:f400:7ea4::208) by BM1PR01CA0021.outlook.office365.com
	(2a01:111:e400:5a49::28) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.696.13 via
	Frontend Transport; Thu, 26 Apr 2018 06:54:39 +0000
Authentication-Results: spf=pass (sender IP is 220.227.133.133)
	smtp.mailfrom=nestgroup.net; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=nestgroup.net;
Received-SPF: Pass (protection.outlook.com: domain of nestgroup.net designates
	220.227.133.133 as permitted sender)
	receiver=protection.outlook.com; 
	client-ip=220.227.133.133; helo=mxchn-out1.nestgroup.net;
Received: from mxchn-out1.nestgroup.net (220.227.133.133) by
	MA1IND01FT010.mail.protection.outlook.com (10.152.200.146) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.696.11 via
	Frontend Transport; Thu, 26 Apr 2018 06:54:39 +0000
Received: from [10.4.0.135] (port=11129 helo=webmail.nestgroup.net)
	by mxchn-out1.nestgroup.net with esmtps
	(TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256) (Exim 4.82_1-5b7a7c0-XX)
	(envelope-from <Nishina.Pervin@nestgroup.net>) id 1fBanb-0005ub-3B
	for yocto@yoctoproject.org; Thu, 26 Apr 2018 12:24:35 +0530
Received: from MBCHN01.chn.nestgroup.net ([169.254.2.109]) by
	CHNFE2.chn.nestgroup.net ([::1]) with mapi id 14.03.0319.002;
	Thu, 26 Apr 2018 12:24:35 +0530
From: "Nishina A. Pervin" <Nishina.Pervin@nestgroup.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Configuring speed of SD card read
Thread-Index: AdPdK28yEEmQ/Y1FQaiNCJ6dLG30rg==
Date: Thu, 26 Apr 2018 06:54:35 +0000
Message-ID: <E3DACD6AA0B26143AF16244886B5278E1FE92E8E@MBCHN01.chn.nestgroup.net>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.18.0.177]
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:220.227.133.133; IPV:CAL; CTRY:IN; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(396003)(39850400004)(39380400002)(376002)(346002)(2980300002)(438002)(189003)(199004)(3846002)(26005)(1730700003)(6116002)(77096007)(55846006)(356003)(5640700003)(246002)(790700001)(7736002)(105606002)(7636002)(71366001)(7596002)(106002)(8676002)(26826003)(59450400001)(102836004)(84326002)(478600001)(186003)(72206003)(7696005)(16586007)(426003)(9326002)(5660300001)(86362001)(8936002)(316002)(2920100001)(486006)(55016002)(336012)(126002)(476003)(6306002)(2351001)(6916009)(260700001)(54896002)(33656002)(2906002)(106466001)(2900100001)(5890100001)(2501003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:MA1PR0101MB2023;
	H:mxchn-out1.nestgroup.net; FPR:; SPF:Pass; LANG:en;
	PTR:mxchn-out1.nestgroup.net; MX:1; A:1; 
X-Microsoft-Exchange-Diagnostics: 1; MA1IND01FT010;
	1:bM/nLx1DHTAPcQ+swwBQSfw4w8tup24l29etETHIqaQhvyiUipPHFmGalB1i/4bctmpbpQNd/5W4Ehk1+hqiyDDDc5pXwbn5H2lYvcEaJ3Y8fs4BdjLp+FehuGOaf+Ug
X-MS-PublicTrafficType: Email
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(5600026)(4608076)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);
	SRVR:MA1PR0101MB2023; 
X-Microsoft-Exchange-Diagnostics: 1; MA1PR0101MB2023;
	3:C6lXJgd8JIzOgHrBkocZEHXaY11NxcEoXb8UMKrlRP81APb//2GMvdBroKHmYLN3z+UcZt8IyApnylVPV6J4V5GaB3c4sCvyiT57zNKEhH3Try3rcsoz6h92uJ50+3T7KhJQIpthVZS3POhtU9eit0T7biuxQyuNvi1yKK1bDpsyzuZnhSiOLv0J+lM/PJuBh4DmwrWkltwyC/PZAzt62UQMD2AgWzK5u8RFNs3FxzHAPA8J56Gef0jqWH162shsgDPesWHFLR/XGg8mXU4PSzkaf/ipXjwp2juvTYHJe1TgfJogF4NT7fQf5zdNb2XXaxTu3huuxh9J6U566qidDRX7j7+6oNtBfwli0kThZng=;
	25:lzfy8wp6yWyeq9RyYeHz4TazWYKb/BmRn7I/tdu1EHUN++VjJOirg1tvxYUgyHWDKNCFp94rLUgT4AizUvify4zpT3uLEeSzB4Kf4T+aienLPHjoBh17FkOctHu4cBD0ceopwP55VNMyfFTyuZSKbAeM3dXPhaaPSr/D70DEws1vx4FSH6osgTmSLjc7YIBuBw7QjXLB2mfsVuP1RC4okOcPVE5n9YuJYKZA6kTMEDybtoinyRt+cJ3wrvDeFj1ZcrYT2xYFw3igC7JeBon7IY24dMLyWguAFaZAaWpIVSh4DtVAA1eOaZdUGO9kuyLkrEoU+Mh0uR6l7EPcN8W3hQ==
X-MS-TrafficTypeDiagnostic: MA1PR0101MB2023:
X-Microsoft-Exchange-Diagnostics: 1; MA1PR0101MB2023;
	31:oH/BvWqs+t/tbf8hyeWGb1IFEReKrF1vuG2nmg/NKAEgueADEUkAVDeuK51ac/O43cm55S0aLjmTwEdCZsbSEaYbxG6dPS5q6qowV/xIdZ7iYGVGsPmpxhhZ3JQ/s9qnHyi8z//LqQXDacWXnYXaO0rhjgTrMAeTakmEsWL32V/xYcDAOiTyv65hw3u2t/3EJ3Homw6SBWsLXXVS1f5PKvjnk7P1iRz+/3Btgh5CWLg=;
	20:Ivpzr3IN3KFcSUX7gtzkQuWm6F+FqyD9qzzMfSB2NOITzjW4DbtcqkNcgNPwLnoTdm5B5tOHQ74UUiipbaT/976YECzzqTXkB+r4vVfXwXEcB8K7vWVuN3AxJDQZX10CdyVOv4QVCWgOEHn5q8HV0Aig7YwvF+X3UFMiNJNX38xLiW1PEQGn9sU9g/MHqWR+4VY9kFNgOovSB5xC+LeouJhcdfw6+pM2aF4AKNUPGgvnxovyO3rxSwrrIHhwwpAzB8FT+dXIwqkn43M6qxOuhgyfDod/Qaa7pZtdgFek9MYFqr9IAi06fs5aXXwIVChnMtN2gfrIf3tyXEb21wLRXEwqPu2bJXWC6EY5emRHU6HZQdqrospSr6dY780eso87PxL9FuFlonNqpJOi4M7rLxqxlfTktLEkuH9DbSrndX42irORtc8P/PjaAf/Z9UPgqVQcNU3Uvgj2/wBX1btKWyT2drv259+/JotLhQvwCACAYYhpgihIuIcEVWoJTFcr
X-Microsoft-Antispam-PRVS: <MA1PR0101MB2023C0E74965071A534D95A99A8E0@MA1PR0101MB2023.INDPRD01.PROD.OUTLOOK.COM>
X-Exchange-Antispam-Report-Test: UriScan:(28532068793085)(21748063052155);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(8121501046)(5005006)(93006095)(93004095)(3231232)(944501410)(52105095)(10201501046)(3002001)(6041310)(20161123558120)(20161123564045)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(6072148)(201708071742011);
	SRVR:MA1PR0101MB2023; BCL:0; PCL:0; RULEID:;
	SRVR:MA1PR0101MB2023; 
X-Microsoft-Exchange-Diagnostics: 1; MA1PR0101MB2023;
	4:IQ8I6oKzmFglD6RjfQ1o0u2JOggRIARtkznuXRs0+J0ELBjbKYkWUEj1YXRtJnD7vmrwC1gKZRNsl88N4bMx/e18wHqOpBaVeRzZS/mVXCM7+qJfUOsCeoE3GBTj2MY71roBcKXeCL1lnkKfwMTPvfn3Kd9Err77aAM9pmt074ZJQUDLL1eJSiHZINTFFvduGiK/odOFANR+oq1yCFb8+gXbs2dDxkWJUkAE359qFYdUwVXuLDLZAdhuDTCY4adgVoA/k/Wpicm/cGI3g6SNtwq8XWW4Qm4GT7m1yr7nTAk28ecu7jhNvjkPWOvM9MceqkVpODe6qJio4bgR6TLNT5vvN9LgQRXS0j8PeUtX5GQ=
X-Forefront-PRVS: 0654257CF5
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; MA1PR0101MB2023;
	23:YP4uyOCSQNXMj8fXlO5b3mZCBN4HdvOw3zcWD+r?=
	=?us-ascii?Q?55A3mUwxESraL1PUV0QYhZh+5qoPS6NEdxol5R6ZNRvgzJdSDp6VyOTDXaB1?=
	=?us-ascii?Q?SUf3tGDFuOhkeMr1QEC32B9DKry9VFmYgL4HMLnk6O/5pD5Ajnd7dlSZiuM1?=
	=?us-ascii?Q?Ij6g0P8Iz7ssFC96E4aAdrU2WLvYUQKY9MX8YILFoV6WkPP/6YXnPvtPXiHl?=
	=?us-ascii?Q?CLsSTZ1H4644nvSDIr/iUEHbj86CnqBBi1xxOdP+nZCA2E96e60dQGzke8vh?=
	=?us-ascii?Q?SAsUJT+eWxR7p6JOhFj1nPhkJLJQLygmygl4lcDCRlEJSLgrgNs2JCUbOgxn?=
	=?us-ascii?Q?wtYWvN8NsMJmqhgRCj4cY2W0ua9HirclSaOIKqSL0salcaSgRQil3pVpH8pw?=
	=?us-ascii?Q?rjoh5ovTZeS9m4VkxA58l9sz1D/rYk2garhQznV9ioD8FCzbbU8k2FDTR7R7?=
	=?us-ascii?Q?HtJzW+36GBwMUcGbzrWUfoD2eAgatJ6iZoRT88qnQ3i57OdEI7z5qzmZ7Km9?=
	=?us-ascii?Q?GP8+YX2BQtA7z9oy67/mr5Xl9FQ1eno53znUu2wVwXXAvSGRzvtsZ9e0p2ac?=
	=?us-ascii?Q?WPNdU/UCcILrubd3Ha7o3LZP1ZqQmkNb/H9LxVTyIH8aJsa8DboJ7DQ1/NUW?=
	=?us-ascii?Q?b7YAR5OXhQXuboNwSWGlhNP7hGQuPIqvyWexWgXvIHBaAE6MAUL5waLOb/jB?=
	=?us-ascii?Q?jAxJluASCaSyxKSFTlqr/s63fnOXT+9bITm4abcF5mdIKm+d+9alH8HARh3Q?=
	=?us-ascii?Q?tnB0U/88ZeWciOOjyuwRlt+GE3/rKPzkXwisHT9DmD4Jyx5T1Z/pgV120dEr?=
	=?us-ascii?Q?zDXOIFmYGOtBp4lf9vE3JNjEZR21FfC8P5x4M7d608zp7GKDcztfrBFQ3m0r?=
	=?us-ascii?Q?FYRTAgg1XkkrvV3aoCWYmB0gce4voP6vIdnboXOzN45dpicDCqSrn8r16zW4?=
	=?us-ascii?Q?gBsM58jwDnj6yR8fSBLWjy7HNuV+VzwpgX5DqRSnPyGzOjbddHY8+hRi1Ah5?=
	=?us-ascii?Q?UnyL1i7s0O3N1dyGoFBeHo5yDwHHJiQspJaPq71Daa6icLoJ/9lid18QLpSm?=
	=?us-ascii?Q?zBC0YzSozAmjUGxWhvMqWHqEMrC1H9w4fvO8uwA/W7HSyX1aOlZvnHrQlqad?=
	=?us-ascii?Q?o0bZYcAM0Th0junYjWV7dfP/nc9KbOFyEaOmKuskzcknF+HLZ1gpYs0B0GGY?=
	=?us-ascii?Q?A+lNG2Fv8ENUQzqD5XTZG1lm0Or1BoXrjd+5RPOB/ZrlTzdqiXZCfK/LRC9E?=
	=?us-ascii?Q?oGdxHqlItx4CI6uqFA7YciY6vNnLqCmkzexSRCGQeSpncES8y5di7uPy+Ad/?=
	=?us-ascii?Q?RYA=3D=3D?=
X-Microsoft-Antispam-Message-Info: f/wJ8x3Z3DPsUXzUVyORiqMWChLYnX3wZH3dlmH6/UPH2OrS9D6tAZH3yNb8q2q8x5I17UGptNo47Bx2BffdsIVIepOTRX573n6u5f4YeVJgQAuXSwLaMSqjFa9fDf0JrYuhE8B7AK413LFtraX/Fqpi24Ps1VINA2zNEfSKGeAvNhKLTscC3nWJr7E3ynRg
X-Microsoft-Exchange-Diagnostics: 1; MA1PR0101MB2023;
	6:bUNCMLv2laZHDVhcbP0hG5y73tGEBui8lFLCkDSS2204xbxj7kVWESBLSK7gG7HVEZ6nB1xq/TyDtwzTr8EPtTMJXqFVi4JSoma9J9OqrJTgZ5sMeQ9qAXM6VIOIRl1ikIOuuR5DdizB3GHrvef5VwqrcJHYdOMA8eHJQHPSkVVH1UU43xQ24tgFZY9GaT89FduOV1yA5d78TVPRd/+S7GvDh1nz0K6bm5xG/IMPKMKQeLdLQ9HfU7mc9hgmkBLQrrzKjriM7r9Khgz3b1kG9b2eh6tvw9NKp2IIMRdJ6NURYnzxe3cxbqGsv6LXbLSuN/YfPEwlskdWyxiSZfWnrIi9LiEfXw+zvagE+EA8zZ/yu5QYY20dYf6KxZH6WKkpATVhL0BLyaHZ4BMhPZgdIWuyy72jlnDS0+QPEVSHps0nVAZTUdPw1Y6MdMGTWLcRS2+1EFE+RUNUasy35D6UbA==;
	5:O+yoXHl6QMc8IcHBaj39kpGTSHbCI0BKTlLZh79uQsWFd1etaH0D06pU9J7yeyyFp2IjlnLo31dV4aKxpWuwegYQzXU52nEeI1xwoBnttV2Rs9uDw2G9+uB5aOTjH9j8quZRw2U5TPOF/UxhZRtSHFEjZiilm04QOHR+3TpBIMg=;
	24:4WUsLiz418euhTqhVLV6y2kojEKvjCwg2ivwDfgKVKwKJ6ITiEPR2of/a8F7JTk3PcuAaqoWXfJvnkwKVSwK5cmP5VzjGcR5r74C75p0uNw=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; MA1PR0101MB2023;
	7:D4vcV1miI938MY8UKSFDI9qeW4qATSMNf6etCX8WYjMY1BP6eGEGuo/9IhNCemE5YvviWUcGS4AR0BIQo9UKchOo9ceIxHnbC4I81w3T4RTl5J2/LV/MOnrXkqurOACJs/clpOovHdAtECnIf+HEr66PggGl1pjzytKwsHcP4y7lL+OJjHsR/MxikjekU+hfFtYwCYw/dRwbtwVhXHpvox7YlLBIQQ/rjlpCR7oz0MIt864/JKqxgAmGUBJ7RFpU
X-MS-Office365-Filtering-Correlation-Id: 71fe4b51-9452-48a8-4638-08d5ab4294da
X-OriginatorOrg: nestgroup.net
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2018 06:54:39.4598 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 71fe4b51-9452-48a8-4638-08d5ab4294da
X-MS-Exchange-CrossTenant-Id: 413238b0-a7ed-471d-b1a9-615aa47d504c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=413238b0-a7ed-471d-b1a9-615aa47d504c;
	Ip=[220.227.133.133]; Helo=[mxchn-out1.nestgroup.net]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR0101MB2023
Subject: Configuring speed of SD card read
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
X-List-Received-Date: Thu, 26 Apr 2018 06:54:47 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E3DACD6AA0B26143AF16244886B5278E1FE92E8EMBCHN01chnnestg_"

--_000_E3DACD6AA0B26143AF16244886B5278E1FE92E8EMBCHN01chnnestg_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi


I am using yocto  Krogoth  build  for imx6q Sabreauto board.

What is the rate at which data is read from SD card? Can we configure it fo=
r higher speed from Uboot or Kernel

Awaiting your favorable reply

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

--_000_E3DACD6AA0B26143AF16244886B5278E1FE92E8EMBCHN01chnnestg_
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
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
<p class=3D"MsoNormal">Hi<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am using yocto&nbsp; Krogoth&nbsp; build&nbsp; for=
 imx6q Sabreauto board.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What is the rate at which data is read from SD card?=
 Can we configure it for higher speed from Uboot or Kernel<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Awaiting your favorable reply<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Nishina<o:p></o:p></p>
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

--_000_E3DACD6AA0B26143AF16244886B5278E1FE92E8EMBCHN01chnnestg_--
