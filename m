Return-Path: <KZertsekel@advaoptical.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4BA9E00950; Tue, 30 Oct 2018 12:35:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [91.217.199.72 listed in list.dnswl.org]
Received: from mail2.advaoptical.com (mail2.advaoptical.com [91.217.199.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADD32E00718
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 12:35:26 -0700 (PDT)
Received: from MUC-S-EX16D.advaoptical.com ([172.20.1.28])
	by muc-vs-fsmail2.advaoptical.com (8.16.0.22/8.16.0.22) with ESMTPS id
	w9UJZM9b022267
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=FAIL); Tue, 30 Oct 2018 20:35:22 +0100
Received: from MUC-S-EX19B.advaoptical.com (172.20.1.59) by
	MUC-S-EX16D.advaoptical.com (172.20.1.28) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
	15.1.1591.10; Tue, 30 Oct 2018 20:35:22 +0100
Received: from MUC-S-EX19A.advaoptical.com (172.20.1.58) by
	MUC-S-EX19B.advaoptical.com (172.20.1.59) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.2.221.12; Tue, 30 Oct 2018 20:35:22 +0100
Received: from MUC-S-EX19A.advaoptical.com ([fe80::78d1:5dab:178d:a89c]) by
	MUC-S-EX19A.advaoptical.com ([fe80::78d1:5dab:178d:a89c%9]) with mapi
	id 15.02.0221.012; Tue, 30 Oct 2018 20:35:22 +0100
From: Kosta Zertsekel <KZertsekel@advaoptical.com>
To: Raymond Yeung <rksyeung@hotmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: How to update YP kernel image (run-time)
Thread-Index: AQHUb/eUjDRm7mG5z0uEWa2wJi8/bqU4LTyp
Date: Tue, 30 Oct 2018 19:35:21 +0000
Message-ID: <0fb8ad13bad94705a02bbbc0482357bb@advaoptical.com>
References: <mailman.4187.1540841639.2881.yocto@yoctoproject.org>,
	<CY4PR19MB1093B30D2DC8617F1A0783C5C5CC0@CY4PR19MB1093.namprd19.prod.outlook.com>
In-Reply-To: <CY4PR19MB1093B30D2DC8617F1A0783C5C5CC0@CY4PR19MB1093.namprd19.prod.outlook.com>
Accept-Language: en-IL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.20.1.231]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-10-30_11:, , signatures=0
Subject: Re: How to update YP kernel image (run-time)
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
X-List-Received-Date: Tue, 30 Oct 2018 19:35:27 -0000
Content-Language: aa
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Tuesday, 30 October 2018 4:23 Raymond Yeung wrote:
> Let's say I've a working run-time system running 2016 April release (Krog=
oth) Poky image.
> I've it installed previously from a USB thumb drive onto a much bigger SS=
D with all partitions setup.
>=A0I don't need to change the partition from here onward.
> Is there an easy way to replace it with, say 2017 Oct release (Rocko) Pok=
y image (and vice versa)?
> E.g. by replacing just one file (e.g. bzImage)?
> Or is there a script that would take care of it?
> What happens to all the existing directories, e.g. /etc, /bin etc.?

The question has no connection to a specific Yocto release at all.
If I rephrase the question it becomes "How do I upgrade my Linux system at =
all?".
Take a look at ResinOS partition scheme here:
https://www.balena.io/docs/reference/OS/overview/2.x/#image-partition-layou=
t
May be it can shed a bit of a light.

--- Kosta Z.=

