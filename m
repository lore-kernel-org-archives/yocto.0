Return-Path: <Michael.Baumann@vector.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8597AE00E43; Wed, 11 May 2016 02:17:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [217.89.139.141 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp1.vector.com (smtp1.vector.com [217.89.139.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C58AFE00E43
	for <yocto@yoctoproject.org>; Wed, 11 May 2016 02:17:56 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.vector.com (Postfix) with ESMTP id E187B3730D1
	for <yocto@yoctoproject.org>; Wed, 11 May 2016 11:17:55 +0200 (CEST)
X-Virus-Scanned: amavisd-new at vector.com
Received: from smtp1.vector.com ([127.0.0.1])
	by localhost (smtp1.vector.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SaLmeObhvX1G for <yocto@yoctoproject.org>;
	Wed, 11 May 2016 11:17:54 +0200 (CEST)
Received: from vistrex5.vi.vector.int (unknown [10.49.3.65])
	by smtp1.vector.com (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Wed, 11 May 2016 11:17:54 +0200 (CEST)
Received: from VISTREX3.vi.vector.int ([169.254.1.170]) by
	vistrex5.vi.vector.int ([10.49.3.65]) with mapi id 14.03.0279.002;
	Wed, 11 May 2016 11:17:54 +0200
From: "Baumann, Michael" <Michael.Baumann@vector.com>
To: "Baumann, Michael" <Michael.Baumann@vector.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: recipe with prefix to sourcecode path
Thread-Index: AdGrYqy8zfLDNJqFQca8Cm9eu9FtzgAAxwRw
Date: Wed, 11 May 2016 09:17:53 +0000
Message-ID: <D3B58608AFC8B244BA0ACD53B2AE6125B6E1652F@vistrex3.vi.vector.int>
References: <D3B58608AFC8B244BA0ACD53B2AE6125B6E1650B@vistrex3.vi.vector.int>
In-Reply-To: <D3B58608AFC8B244BA0ACD53B2AE6125B6E1650B@vistrex3.vi.vector.int>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.49.74.29]
x-g-data-mailsecurity-for-exchange-spamlevel: 0
x-g-data-mailsecurity-for-exchange-state: 0
x-g-data-mailsecurity-for-exchange-error: 0
x-g-data-mailsecurity-for-exchange-sender: 32
x-g-data-mailsecurity-for-exchange-server: 8959ae4b-c457-4990-be14-918c767bdf10
x-g-data-mailsecurity-for-exchange-guid: AE17A9B8-A653-4FB0-A89F-3FFE466EFD90
MIME-Version: 1.0
Subject: Re: recipe with prefix to sourcecode path
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
X-List-Received-Date: Wed, 11 May 2016 09:17:59 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

I found the solution. I added this to my recipe:

S =3D "${WORKDIR}/git/ProjectA"

Regards,
Michael

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Baumann, Michael
>Sent: Wednesday, May 11, 2016 10:58 AM
>To: yocto@yoctoproject.org
>Subject: [yocto] recipe with prefix to sourcecode path
>
>Hi,
>
>I am using CMAKE and wonder how to add a prefix to my recipe so that
>bitbake searches in the right directory for CMakeLists.txt.
>I use the SRC_URI variable to pull from my repository.
>I think the problem is that in the top level directory no CMakeLists.txt f=
ile
>exists and I don't want to add one.
>
>Is there a way to define the search path for the CMakeLists.txt?
>
>I am unfortunately bound to this repository structure:
>
>GitRepo
>=86=80=80 ProjectA
>=81=9A=9A =86=80=80 CMakeLists.txt
>=81=9A=9A =86=80=80 source
>=81=9A=9A =81=9A=9A =86=80=80 CMakeLists.txt
>=81=9A=9A =81=9A=9A =86=80=80 CodeA
>=81=9A=9A =81=9A=9A =81=9A=9A =86=80=80 A.cc
>=81=9A=9A =81=9A=9A =81=9A=9A =84=80=80 A.h
>=81=9A=9A =81=9A=9A =86=80=80 CodeB
>=81   =81   =81   =86=80=80 B.cc
>=81   =81   =81   =86=80=80 B.h
>=81=9A=9A =81=9A=9A =84=80=80 main.cc
>=86=80=80 ProjectB
>=84=80=80 X
>=84=80=80 Y
>=84=80=80 Z
>
>Regards,
>Michael
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

