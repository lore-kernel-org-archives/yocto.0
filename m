Return-Path: <KZertsekel@advaoptical.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CE93E0097C; Tue, 30 Oct 2018 12:40:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [91.217.199.72 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail2.advaoptical.com (mail2.advaoptical.com [91.217.199.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 958A1E00901
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 12:40:09 -0700 (PDT)
Received: from MUC-S-EX16C.advaoptical.com ([172.20.1.27])
	by muc-vs-fsmail2.advaoptical.com (8.16.0.22/8.16.0.22) with ESMTPS id
	w9UJe72X025250
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=FAIL); Tue, 30 Oct 2018 20:40:07 +0100
Received: from MUC-S-EX19B.advaoptical.com (172.20.1.59) by
	MUC-S-EX16C.advaoptical.com (172.20.1.27) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
	15.1.1591.10; Tue, 30 Oct 2018 20:40:07 +0100
Received: from MUC-S-EX19A.advaoptical.com (172.20.1.58) by
	MUC-S-EX19B.advaoptical.com (172.20.1.59) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.2.221.12; Tue, 30 Oct 2018 20:40:07 +0100
Received: from MUC-S-EX19A.advaoptical.com ([fe80::78d1:5dab:178d:a89c]) by
	MUC-S-EX19A.advaoptical.com ([fe80::78d1:5dab:178d:a89c%9]) with mapi
	id 15.02.0221.012; Tue, 30 Oct 2018 20:40:07 +0100
From: Kosta Zertsekel <KZertsekel@advaoptical.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>, xerofoify
	<xerofoify@gmail.com>
Thread-Topic: [yocto] Help with Nano Recipe
Thread-Index: AQHUcG8ItcSMS6/XgEeJV2oyogeYGaU4AwkAgAArhwM=
Date: Tue, 30 Oct 2018 19:40:06 +0000
Message-ID: <858eb1bd938f4e75a67834501f1f4db0@advaoptical.com>
References: <28fb384c-5521-f1d9-076e-f25c9c04b125@gmail.com>,
	<CAP71WjxiavLMpJS9mC72cOb5kBxfk7qPHB-bD8xW1AoNVZ4GkQ@mail.gmail.com>
In-Reply-To: <CAP71WjxiavLMpJS9mC72cOb5kBxfk7qPHB-bD8xW1AoNVZ4GkQ@mail.gmail.com>
Accept-Language: en-IL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.20.1.231]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-10-30_11:, , signatures=0
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Help with Nano Recipe
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
X-List-Received-Date: Tue, 30 Oct 2018 19:40:10 -0000
Content-Language: aa
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> It is very unusual to implement a recipe this way , and you should
> rely on base classes to do that for you. For reference there is a
> recipe for 'nano' in meta-oe already.
> http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-suppo=
rt/nano/nano_3.0.bb?h=3Dmaster

And if you find anything amiss in this ``nano_3.0.bb`` recipe, you should h=
ave definitely begun with ``devtool``.
For example:
https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#usin=
g-devtool-in-your-sdk-workflow

--- Kosta Z.=

