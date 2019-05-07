Return-Path: <alexandre.osorio@eldorado.org.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78B40E00D40; Tue,  7 May 2019 10:35:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [200.148.226.10 listed in list.dnswl.org]
X-Greylist: delayed 901 seconds by postgrey-1.32 at yocto-www;
	Tue, 07 May 2019 10:35:33 PDT
Received: from smtp1.eldorado.org.br (smtp1.eldorado.org.br [200.148.226.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A80EBE00D2A
	for <yocto@yoctoproject.org>; Tue,  7 May 2019 10:35:33 -0700 (PDT)
X-AuditID: ac10c815-0ddff70000009fd6-22-5cd1be5e1c0b
Received: from serv030.corp.eldorado.org.br (Unknown_Domain [192.168.4.30])
	(using TLS with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by smtp1.eldorado.org.br (ELDORADO_SMTP) with SMTP id
	C4.55.40918.E5EB1DC5; Tue,  7 May 2019 14:20:30 -0300 (-03)
Received: from serv031.corp.eldorado.org.br (192.168.4.31) by
	serv030.corp.eldorado.org.br (192.168.4.30) with Microsoft SMTP Server
	(TLS) id 15.0.1395.4; Tue, 7 May 2019 14:20:29 -0300
Received: from serv031.corp.eldorado.org.br ([fe80::c032:7018:83d3:b1e3]) by
	serv031.corp.eldorado.org.br ([fe80::c032:7018:83d3:b1e3%14]) with mapi
	id 15.00.1395.000; Tue, 7 May 2019 14:20:29 -0300
From: Alexandre Freire da Silva Osorio <alexandre.osorio@eldorado.org.br>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Thread-Topic: Yocto for Enclustra Mars
Thread-Index: AdUE+LjeK/rKwluUR8mfwbJKNVZIHw==
Date: Tue, 7 May 2019 17:20:29 +0000
Message-ID: <855a6df966d04a059e1c33dc54b317ff@serv031.corp.eldorado.org.br>
Accept-Language: pt-BR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.10.70.81]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrGLMWRmVeSWpSXmKPExsVyYAWLnG7cvosxBteOSVlMermGzYHRo/1E
	H1sAYxSXTUpqTmZZapG+XQJXxvlZz1gKdjBWPF8/gb2BsZ+xi5GTQ0LAROLnrKvMXYxcHEIC
	K5kkmj6fZINw9jJKHPjRywLhnGKUmLFuFztIC5uAp8T1t21ALRwcIgL6En83moGEhQUUJTbs
	PcIKYosIqEm0r3/EDmHrSWx8dJAdpJxFQEVi0VxfkDCvgLfEg2VbmUBsRgFZibl/9oKVMwuI
	S9x6Mp8J4jgBiSV7zjND2KISLx//Y4WwDSS2Lt3HAmHLS5yevoUJoldHYsHuT2wQtrbEsoWv
	mSF2CUqcnPmEZQKjyCwkK2YhaZmFpGUWkpYFjCyrGEWLc0sKDPVSc1LyixJT8vXyi9L1koo2
	MQJDf43ACdEdjM9/eB1iFOBgVOLhdSi+GCPEmlhWXJl7iFGCg1lJhDfx2bkYId6UxMqq1KL8
	+KLSnNTiQ4zSHCxK4rxFz4/FCAmkJ5akZqemFqQWwWSZODilGhh1VBvCgl9qeTfLL9P5mfUv
	6DBfc9fiaf2FXurXfDtSGlWvsqk5p0w3/MepqHA87O+Li5ZTwls23vvSLXh3pW9H3PmIzY1d
	JjvsT0qdvxLU3bBqu8aa7rxQDt5LGqmqYp6dK1/fO3c64HyCEe+uxCXLuuYaeLDdSFLPO3RZ
	xEjf/On3BZE8F5RYijMSDbWYi4oTAaR+2CR5AgAA
Subject: Yocto for Enclustra Mars
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
X-List-Received-Date: Tue, 07 May 2019 17:35:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

Does anyone use Yocto to generate images for Enclustra`s Mars ZX2 board, th=
a embeds one Zilinx Zynq SoC? If so, is there a layer available anywhere?

Thanks.

Alexandre

