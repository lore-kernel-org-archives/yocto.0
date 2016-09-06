Return-Path: <f_l_k@t-online.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EE4AE00F68; Tue,  6 Sep 2016 05:09:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [194.25.134.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailout08.t-online.de (mailout08.t-online.de [194.25.134.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1C48E00D07
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2016 05:09:16 -0700 (PDT)
Received: from fwd10.aul.t-online.de (fwd10.aul.t-online.de [172.20.26.152])
	by mailout08.t-online.de (Postfix) with SMTP id C7F9C41DAE1C
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2016 14:09:12 +0200 (CEST)
Received: from [192.168.2.113]
	(Tz4+EMZJohgWnvN+6hXv+TeMUI0lR7513ETlfdP-x7mgNDY1Qr-X1dZ5vobSAx5w9v@[84.188.177.208])
	by fwd10.t-online.de with (TLSv1:ECDHE-RSA-AES256-SHA encrypted)
	esmtp id 1bhFBc-0CivJY0; Tue, 6 Sep 2016 14:09:08 +0200
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Markus Volk <f_l_k@t-online.de>
In-Reply-To: <4CC0AD41-6C9A-4A21-9854-C201DC44D582@t-online.de>
Date: Tue, 6 Sep 2016 14:09:08 +0200
Message-Id: <B1C45373-B0A8-41E3-AEF2-09D5DB3A8FB7@t-online.de>
References: <4CC0AD41-6C9A-4A21-9854-C201DC44D582@t-online.de>
To: Yocto discussion list <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.3124)
X-ID: Tz4+EMZJohgWnvN+6hXv+TeMUI0lR7513ETlfdP-x7mgNDY1Qr-X1dZ5vobSAx5w9v
X-TOI-MSGID: 665e57b6-b3a7-4615-9261-eceb98b97cb1
Subject: Re: infinite build loop
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
X-List-Received-Date: Tue, 06 Sep 2016 12:09:19 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

it already has been fixed =E2=80=A6 thank you

> Am 06.09.2016 um 10:52 schrieb Markus Volk <f_l_k@t-online.de>:
>=20
> With latest changes in the master tree i=C2=B4m getting infinite build =
loops at task do_package for recipes that  contain a line like this in =
do_install:
>=20
> echo "whatever"              > ${D}/whatever=20
>=20
> can anyone confirm this ?
>=20
> regards
> Markus
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


