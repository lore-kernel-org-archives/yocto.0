Return-Path: <f_l_k@t-online.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 821EFE00C7B; Mon, 21 Aug 2017 04:24:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [194.25.134.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailout10.t-online.de (mailout10.t-online.de [194.25.134.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3ED3E00B01
	for <yocto@yoctoproject.org>; Mon, 21 Aug 2017 04:24:14 -0700 (PDT)
Received: from fwd40.aul.t-online.de (fwd40.aul.t-online.de [172.20.26.139])
	by mailout10.t-online.de (Postfix) with SMTP id 1B3AA41C8E74
	for <yocto@yoctoproject.org>; Mon, 21 Aug 2017 13:24:13 +0200 (CEST)
Received: from genericx86-64
	(bH-hCrZf8h4KqehvP9My4BHZ6gbN9bFIIsniyui0THWzL+sNXZg6U7xzR-5aMspghG@[84.146.40.121])
	by fwd40.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1djkoR-4F582S0; Mon, 21 Aug 2017 13:24:07 +0200
Date: Mon, 21 Aug 2017 13:24:02 +0200
From: Markus Volk <f_l_k@t-online.de>
To: yocto@yoctoproject.org
Message-Id: <20170821132402.9804f121f9badfe2b36da1d9@t-online.de>
In-Reply-To: <20170817100003.d378a00de6788f3d9e36724d@t-online.de>
References: <20170817100003.d378a00de6788f3d9e36724d@t-online.de>
X-Mailer: Sylpheed 3.6.0 (GTK+ 2.24.31; x86_64-poky-linux-gnu)
Mime-Version: 1.0
X-ID: bH-hCrZf8h4KqehvP9My4BHZ6gbN9bFIIsniyui0THWzL+sNXZg6U7xzR-5aMspghG
X-TOI-MSGID: bbf804e8-bc0b-4a4f-ab1b-e7b7c7b3ab61
Subject: Re: some issues with current poky master
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
X-List-Received-Date: Mon, 21 Aug 2017 11:24:15 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable


> it is working then, unless the .deb is removed from download directory. M=
aybe i=B4m missing something inside the .bb ?
>=20

Unpacking .deb packages can be done by including

do_unpack[depends] +=3D "xz-native:do_populate_sysroot \=20
		       tar-native:do_populate_sysroot \
		       binutils-native:do_populate_sysroot \
"

I don=B4t know for sure if all of those are needed, but i wanted to be safe

--=20
Markus Volk <f_l_k@t-online.de>

