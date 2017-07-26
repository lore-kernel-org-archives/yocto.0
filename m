Return-Path: <f_l_k@t-online.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4731AE00BEC; Wed, 26 Jul 2017 08:48:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [194.25.134.82 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [194.25.134.82 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailout05.t-online.de (mailout05.t-online.de [194.25.134.82])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1353E00BAF
	for <yocto@yoctoproject.org>; Wed, 26 Jul 2017 08:48:45 -0700 (PDT)
Received: from fwd40.aul.t-online.de (fwd40.aul.t-online.de [172.20.26.139])
	by mailout05.t-online.de (Postfix) with SMTP id B1587422017E
	for <yocto@yoctoproject.org>; Wed, 26 Jul 2017 17:48:43 +0200 (CEST)
Received: from genericx86-64.Speedport_W_724V_01011603_05_032
	(EGWWfEZbwhr22AlW4VM8Q6P-U8TMawADqZc8GoChn3F8CBGtcZnQs8OKYaL+MifZty@[84.146.40.121])
	by fwd40.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1daOY7-4VmzGy0; Wed, 26 Jul 2017 17:48:35 +0200
Date: Wed, 26 Jul 2017 17:48:31 +0200
From: Markus Volk <f_l_k@t-online.de>
To: yocto@yoctoproject.org
Message-Id: <20170726174831.508d9a1e159141570a927549@t-online.de>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-poky-linux-gnu)
Mime-Version: 1.0
X-ID: EGWWfEZbwhr22AlW4VM8Q6P-U8TMawADqZc8GoChn3F8CBGtcZnQs8OKYaL+MifZty
X-TOI-MSGID: 04fdfc3f-b362-4989-81b5-5083400f567d
Subject: cogl-1.0-dev
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
X-List-Received-Date: Wed, 26 Jul 2017 15:48:47 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,

I build myself an image (x86_64) for my NUC. Because i=B4m including all de=
v packages i encountered the following problem while switching from pyro to=
 the recent poky master

do_rootfs crashes with an error message because cogl-1.0-dev wants to insta=
ll package cogl-1.0. Cogl-1.0 is empty and has therefore not been created.

I tried to fix this with a line in cogl-1.0_%.bbappend

ALLOW_EMPTY_${PN} =3D "1"

next error ... cogl-1.0-dev is missing the package libcogl20

At this point i=B4ve simply overwritten the files variables in my bbappend =
like this

FILES_${PN} =3D "*"
FILES_${PN}-examples =3D "$ {bindir} / * $ {datadir} / cogl / examples-data=
 / *"
FILES_libcogl =3D ""
FILES_libcogl-gles2 =3D ""
FILES_libcogl-pango =3D ""

FILES_libcogl-path =3D ""

The problem is gone, but i guess this would not be a proper solution for th=
e project. I=B4m pretty sure, i saw those cogl errors in the do_rootfs log =
in pyro also, but log_check didn=B4t care about that so far

Markus
--=20
Markus Volk <f_l_k@t-online.de>

