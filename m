Return-Path: <jliang@xilinx.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDFFEE00C71; Wed,  9 Jan 2019 22:14:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.81.55 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 932 seconds by postgrey-1.32 at yocto-www;
	Wed, 09 Jan 2019 22:14:55 PST
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-eopbgr810055.outbound.protection.outlook.com [40.107.81.55])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1089E008C6
	for <yocto@yoctoproject.org>; Wed,  9 Jan 2019 22:14:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=xilinx.onmicrosoft.com; s=selector1-xilinx-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=ZF8Vd4Q6qO5yu1Lllh1boLGOn0TqY4ESLwlWSInWZgk=;
	b=Ykufe/j+/BxctXOYhreYK/OwMeu0nCdLTBAvr1DCIzer4Gk7pqpK9ix39wBQsO6ZwPRbXDGScLcQa/FTPmaB20+fJ58mcfDMKYNCb9dxlLCWvy/D5nLWv9bq+R2NjraRUdurNJLgXH9Nqisgsdee3tT12abZiuPFLBoIB23dgHM=
Received: from BYAPR02MB4888.namprd02.prod.outlook.com (52.135.234.202) by
	BYAPR02MB4088.namprd02.prod.outlook.com (20.176.249.16) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1516.15; Thu, 10 Jan 2019 05:59:21 +0000
Received: from BYAPR02MB4888.namprd02.prod.outlook.com
	([fe80::5cb1:317e:a3ca:1399]) by
	BYAPR02MB4888.namprd02.prod.outlook.com
	([fe80::5cb1:317e:a3ca:1399%5]) with mapi id 15.20.1516.015;
	Thu, 10 Jan 2019 05:59:20 +0000
From: Jiaying Liang <jliang@xilinx.com>
To: "Pandey, Kamal" <Kamal.Pandey@ifm.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] unable to boot r5 core while using meta-openamp layer
	for r5 and a53 communication
Thread-Index: AdSoMtG6V0pxWidrSmGbehd/Xoux8wAdkZ+wAAAFX7A=
Date: Thu, 10 Jan 2019 05:59:20 +0000
Message-ID: <BYAPR02MB4888AA46849E3C0E86313EAEB0840@BYAPR02MB4888.namprd02.prod.outlook.com>
References: <b2368de96f154338ae4e4eeba8ff7790@ifm.com>
	<BYAPR02MB488884A098BA8445BAE574CDB0840@BYAPR02MB4888.namprd02.prod.outlook.com>
In-Reply-To: <BYAPR02MB488884A098BA8445BAE574CDB0840@BYAPR02MB4888.namprd02.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=jliang@xilinx.com; 
x-originating-ip: [149.199.62.133]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BYAPR02MB4088;
	6:aAUlIv3LZNT8etwPoITMqqvOJ3VepJ5Q29VzVoFXSQwQMW4iz4kgk23k7B9Fb64UzmfLOOW6rnRXn/dlRK6wx6ThrK4ClapabPF1TFoPLNcYiC7GadGmLCRKeuLFLsb/bR3u102kUdz33ukhoBbzRFPvIuPsX91FBQeshJLihYlbjDg8bSk0HcJoey0DTiNrGvgL/9QkZB/q6SUMdYNI+4LLxLDIcYhhNmW5qF/yIabtTzrrettEYb8atGlm1aYtPABNQ26+3F3GgireyiUcbBF6uMmo23vXLtSUDhtUQZo8OVKL+oy+lMqMaSMOCcEUwbKK66rOb8M2oyaQ/Fx+Xjsh25b05XNbpl7iBgAkNypuqhRiz3rD2L0tvx9vYAVbnqRnwuB/I+EwHddKKQtgbgmBLCrWtnLwAPo64W0cODpejDWYwPRHO7AxdQKxVf0Vc5cpyMVtM0G5X8GvwRUgng==;
	5:phcbNO7MDUjk4HeMJRMG6R41tIq55l2BoIdRapTkJ4U2rYKLnzHIwEZoPXrMgTWhvobQ+iOj+PzaeivF8DpnJjcoGzjkVVII0kbKqkbNpDmhZ/yTLRdD7HKCx2FSDGyMhZz2KEV5XNadWTIKTIFUrDa1fkM7wKJrVbBMMKcMWpe5j4vt2tAEgKV2FdgxFWZkPaz948DCnI8W15+2CYFdlA==;
	7:ne0U46xgQcmzwKtX0HZ6wmb2M+TRw1li+k1Jzg2gxclmKkfJvHgG9fNN8JcdbIc4pddhBJYu6mTkhroZknJxb/fFWmY6kOzwcWXvMSKEBenjqNdu71K83itZFLROYrnn2fIN9v1Rc5orS7fGdlz18g==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: a69dfec2-08c9-4e5d-ae4f-08d676c0c3c0
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(5600109)(711020)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7153060)(7193020);
	SRVR:BYAPR02MB4088; 
x-ms-traffictypediagnostic: BYAPR02MB4088:
x-microsoft-antispam-prvs: <BYAPR02MB4088BBDBC3793D5B9F9D6248B0840@BYAPR02MB4088.namprd02.prod.outlook.com>
x-forefront-prvs: 0913EA1D60
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(346002)(39860400002)(376002)(136003)(366004)(396003)(199004)(189003)(76176011)(7696005)(97736004)(316002)(110136005)(229853002)(8676002)(81156014)(81166006)(305945005)(7736002)(8936002)(446003)(68736007)(11346002)(105586002)(476003)(186003)(66066001)(2940100002)(486006)(102836004)(33656002)(6506007)(53546011)(5660300001)(74316002)(99286004)(106356001)(26005)(2906002)(71200400001)(71190400001)(55016002)(53936002)(6436002)(478600001)(93156006)(25786009)(86362001)(3846002)(9686003)(2501003)(6116002)(14454004)(256004)(6246003)(14444005);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4088;
	H:BYAPR02MB4888.namprd02.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: WBoMhjkyu/xJA73KBleLTh45baSdWh1aMvE3KpMPCauU6gPKSzQeCVmAMjTX0hU8AH0UuDNJnyBNBFazJ6j6+6mRVMZ9x327byF9T2gF4047JW3SulBfCYBFn7+Axece8m0nXgJfc00rcc4d1uTMccqrQdW3K0hSjqV952j9vY1YA2/6MlA8fCiuX052kWwoe/AdIJpnWrfnNNEpuixucs0m4L+cCXRQj9MNVf0Q8P6ukJdFLnkPBVsOnNr7d0+LSU54g01o2ndeOvPDqsbkj6uO+bnCceK7EcmlTVwWc/QzZKicZxpgumJrCSpvZC4RXWg/98XbxF/WLuF8CPXrmsPhvHbuKU1o7FaW1YMrnMwDaIICzkoOkw02rNU1DhSP1+LJaJ3bxpGiHePsAQ3oruMsgwPkHsNCVyC+zzwS4bNZpphjzx5HWtbXT2a8359WK40TrBDATAkMhoq9CKvM6g==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a69dfec2-08c9-4e5d-ae4f-08d676c0c3c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2019 05:59:20.7768 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4088
Subject: Re: unable to boot r5 core while using meta-openamp layer for r5 and a53 communication
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
X-List-Received-Date: Thu, 10 Jan 2019 06:14:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Pandey, Kamal
> Sent: Wednesday, January 09, 2019 7:50 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] unable to boot r5 core while using meta-openamp layer fo=
r
> r5 and a53 communication
>=20
> Hello,
> I am trying to run echo_test between r5 and a53 cores. I am
> following=A0Building Linux Applications Using=A0OpenAMP=A0RPMsg in Linux
> Userspace (UG1186). I built the Linux=A0a53 side image using yocto and di=
d the
> changes in device tree as per mentioned in UG1186 (userspace part page no=
.
> 39).
> Also, I updated the bootgen.bif=A0file by adding the line :
> [destination_cpu=3Dr5-0] <path to RPU firmware> I created the RPU firmwar=
e
> elf file using Xilinx SDK and it also contains the echo_test along with
> openamp and libmetal. I did not include this elf file in my yocto project=
.
> It is just mentioned in the.bif=A0file with proper path.
> While booting=A0the machine I=A0did not see=A0any logs for r5 booting as =
mention
> in ZynqMP Linux Master running on APU with RPMsg in userspace and 2 RPU
> slaves=A0 of the=A0link=A0as shown :
> Starting application...
> Try to init remoteproc resource
> Init remoteproc resource succeeded
> Waiting for events...
[Wendy] which board are you using?
I assume you generate BOOT.BIN with the bootgen.bif?
Did you use boot from SD or jtag boot?

> Also, while booting the a53 core and running echo_test-openamp,=A0I get t=
he
> following output :
> metal: info:=A0=A0=A0=A0=A0 metal_uio_dev_open: No IRQ for device 3ed4000=
0.vring.
> metal: info:=A0=A0=A0=A0=A0 metal_uio_dev_open: No IRQ for device 3ed4000=
0.vring.
> metal: info:=A0=A0=A0=A0=A0 metal_uio_dev_open: No IRQ for device 3ed8000=
0.shm.
> 1 - Send data to remote core, retrieve the echo and validate its integrit=
y ..
> Remote proc resource initialized.
>=20
> and then nothing. I had to press Ctrl+C to abort.
> Can somebody explain what am I missing and how can I boot r5 core?
[Wendy] I am not sure if R5 booted. If you have jtag, you can connect jtag =
to see if R5 is  running.
And see if it crashed.
You can also try to boot R5 from Linux.=20
You will need to place the remoteproc device node in the device tree, but r=
emove the IPI and the IPI interrupt from the remoteproc device node:

e.g.:
test_r50: zynqmp_r5_rproc@0 {
                        compatible =3D "xlnx,zynqmp-r5-remoteproc-1.0";
                        reg =3D <0x0 0xff9a0100 0 0x100>, <0x0 0xff9a0000 0=
 0x100>;
                        reg-names =3D "rpu_base", "rpu_glbl_base";
                        dma-ranges;
                        core_conf =3D "split0";
                        srams =3D <&r5_0_tcm_a &r5_0_tcm_b &ddr_fw0>;
                        pd-handle =3D <&pd_r5_0>;

                } ;

Best Regards,
Wendy

