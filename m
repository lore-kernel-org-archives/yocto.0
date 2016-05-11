Return-Path: <Michael.Baumann@vector.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACDACE00EEA; Wed, 11 May 2016 02:02:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_40,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [217.89.139.141 listed in list.dnswl.org]
	* -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
	*      [score: 0.3935]
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www;
	Wed, 11 May 2016 02:02:42 PDT
Received: from smtp1.vector.com (smtp1.vector.com [217.89.139.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F2D7E00EE3
	for <yocto@yoctoproject.org>; Wed, 11 May 2016 02:02:42 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.vector.com (Postfix) with ESMTP id 890983730C4
	for <yocto@yoctoproject.org>; Wed, 11 May 2016 10:57:38 +0200 (CEST)
X-Virus-Scanned: amavisd-new at vector.com
Received: from smtp1.vector.com ([127.0.0.1])
	by localhost (smtp1.vector.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id McQ6XG8fjFEP for <yocto@yoctoproject.org>;
	Wed, 11 May 2016 10:57:36 +0200 (CEST)
Received: from vistrex5.vi.vector.int (unknown [10.49.3.65])
	by smtp1.vector.com (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Wed, 11 May 2016 10:57:36 +0200 (CEST)
Received: from VISTREX3.vi.vector.int ([169.254.1.170]) by
	vistrex5.vi.vector.int ([10.49.3.65]) with mapi id 14.03.0279.002;
	Wed, 11 May 2016 10:57:36 +0200
From: "Baumann, Michael" <Michael.Baumann@vector.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: recipe with prefix to sourcecode path
Thread-Index: AdGrYqy8zfLDNJqFQca8Cm9eu9Ftzg==
Date: Wed, 11 May 2016 08:57:36 +0000
Message-ID: <D3B58608AFC8B244BA0ACD53B2AE6125B6E1650B@vistrex3.vi.vector.int>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.49.74.29]
x-g-data-mailsecurity-for-exchange-spamlevel: 0
x-g-data-mailsecurity-for-exchange-state: 0
x-g-data-mailsecurity-for-exchange-error: 0
x-g-data-mailsecurity-for-exchange-sender: 32
x-g-data-mailsecurity-for-exchange-server: 8959ae4b-c457-4990-be14-918c767bdf10
x-g-data-mailsecurity-for-exchange-guid: 5F1CC493-ABA9-461A-AC47-12EE072C41DC
MIME-Version: 1.0
Subject: recipe with prefix to sourcecode path
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
X-List-Received-Date: Wed, 11 May 2016 09:02:44 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="koi8-r"
Content-Transfer-Encoding: quoted-printable

Hi,

I am using CMAKE and wonder how to add a prefix to my recipe so that bitbak=
e searches in the right directory for CMakeLists.txt.
I use the SRC_URI variable to pull from my repository.=20
I think the problem is that in the top level directory no CMakeLists.txt fi=
le exists and I don't want to add one.

Is there a way to define the search path for the CMakeLists.txt?

I am unfortunately bound to this repository structure:

GitRepo
=86=80=80 ProjectA
=81=9A=9A =86=80=80 CMakeLists.txt
=81=9A=9A =86=80=80 source
=81=9A=9A =81=9A=9A =86=80=80 CMakeLists.txt
=81=9A=9A =81=9A=9A =86=80=80 CodeA
=81=9A=9A =81=9A=9A =81=9A=9A =86=80=80 A.cc
=81=9A=9A =81=9A=9A =81=9A=9A =84=80=80 A.h
=81=9A=9A =81=9A=9A =86=80=80 CodeB
=81   =81   =81   =86=80=80 B.cc
=81   =81   =81   =86=80=80 B.h
=81=9A=9A =81=9A=9A =84=80=80 main.cc
=86=80=80 ProjectB
=84=80=80 X
=84=80=80 Y
=84=80=80 Z

Regards,
Michael

