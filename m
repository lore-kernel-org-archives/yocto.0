Return-Path: <pawan.b@elpisitsolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 195B6E00D42; Sun, 30 Jun 2019 22:18:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MIME_HTML_ONLY, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [74.208.4.196 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
Received: from mout.perfora.net (mout.perfora.net [74.208.4.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F4D2E00BAD
	for <yocto@yoctoproject.org>; Sun, 30 Jun 2019 22:18:13 -0700 (PDT)
Received: from oxuslxaltgw00.schlund.de ([10.72.76.56]) by mrelay.perfora.net
	(mreueus001 [74.208.5.2]) with ESMTPSA (Nemesis) id
	0Lwpjy-1ialoH37Si-016SIx; Mon, 01 Jul 2019 07:18:09 +0200
Date: Mon, 1 Jul 2019 01:18:09 -0400 (EDT)
From: Pawan Badganchi <pawan.b@elpisitsolutions.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>,
	ChenQi <Qi.Chen@windriver.com>
Message-ID: <1551414335.754087.1561958289026@email.ionos.com>
In-Reply-To: <CAGAf8LxjwgmuH=uNU43x6=YkPzhpj5kjaR1Rd_mLcoyH3QVofA@mail.gmail.com>
References: <980292376.238401.1561633028960@email.ionos.com>
	<5239a45d-0756-6c85-9b2d-218b34d9168c@windriver.com>
	<CAGAf8LxjwgmuH=uNU43x6=YkPzhpj5kjaR1Rd_mLcoyH3QVofA@mail.gmail.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.4-Rev58
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K1:JMSk8kS0lERcYG+4wZd6kTtFbltrReSUpSQh0XoUJOFfcxZe3SG
	oZsNOwUwwYNKHXJwKGYpxH8dUCzDQhDCMRqoHJLH8vx9Hh1v+vKAYFeJ1ZOiHXsytNG/zpV
	qJZ81wdOIFH460GuRNNEWrqyKsRKUiZ3qPQGrnibZPTbJRqgPvj4NOV9Je4mP9NpNg5TCnt
	JI7Ok+O3g0a7q8QiMnr4g==
X-UI-Out-Filterresults: notjunk:1;V03:K0:WgSvDw7iGd4=:wibyI3DvWB2zLfxBj/ndCf
	qk/yU8UTayCyw7YI4Ah99b/ZXHNF8vqfCm8UyQ/NGu2SMXqHSoojKwQYhtduxQn3LZjEsdckx
	oAvyDzq2Qb6HvU8YfOaAzppIEgOOoBUr2A2lgZstmGGHRJq9Kf6XtNMH0YWHC2wsovUr0EN2r
	E/4GfPioL+RLxuVtApb1JVnKN3ZxRVCXjxltfoU7ukKVAnzTwkGoDK+Rs4WS7C81Ak2v+HvP1
	gq8y6kxbPYlnrETi2RNuFwAjXNofSX1z9VEjdLbrQio1JohGgFWLxXCTuEp9K3t4RmMgR7APM
	4WPzClB/94l52o6j2f2rOhegXHmVyLDvF7R4IeX+QjBEzzY0D5qFdSla2ITccLD2Bkwn4W3xZ
	HyotkzIwwqYYFl3xuP2CbHBExUscrhnAkO03oJaM91awj9JKHld1M+WO1TCuSIyn7KRvGiDCQ
	i4mOs5hgG6pktIPqeiaZTDI3xFimHFRtKfSIajuEPx1ewNl4ffa31X6zINdJxRE5EEhoM2nzM
	o5JxVz82B6taaPdEKhhmf3w8BsfvRVgRJwFlEiQ5SnFL1fnfBC5Xc11F9VrW5wYRQmkbxnm+a
	D7JD6EwGHGu9LcQ3H1jFLcBJ+/PATIvT3Z+xL1phfnMzOYY4CXsXrNYem8OpEmYJd+knhXl1I
	yKcJQt4X77X9VH6W+P+d8GiatIl2+DZ6129Y6Q/sGuwHnxVh4nzSq1HgK8OffIG2egi9b80lB
	eetdvb/tQQcN6D9kGsormYHijIGaxqKjA829t4xPBJle6yYxLNBUX2VD+Rw84sRl+Q4UQ2zIQ
	OVnG0dK
X-Mailman-Approved-At: Mon, 08 Jul 2019 02:27:29 -0700
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-builds] Yocto build Issue
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Pawan Badganchi <pawan.b@elpisitsolutions.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 01 Jul 2019 05:18:15 -0000
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html><head>
    <meta charset=3D"UTF-8">
</head><body><p>Thanks for response.I will check with this command.<br></p>=
<p><br></p><blockquote type=3D"cite">On June 28, 2019 at 9:45 AM Zoran Stoj=
savljevic &#60;<a href=3D"mailto:zoran.stojsavljevic@gmail.com">zoran.stojs=
avljevic@gmail.com</a>&#62; wrote:<br><br><br>Some hints again...<blockquot=
e type=3D"cite">I am adding IMAGE_INSTALL_append =3D &#34;kernel-modules&#3=
4; in local.conf.<br>When i build with bitbake core-image-minimal command t=
his kernel<br>module is loading.while i build with bitbake atmel-qt5-demo-i=
mage<br>command kernel module is not loading.<br>Please tell us what is the=
 issue.</blockquote><br>Here is what local.conf I am using as included mini=
mal kernel source<br>tree (also with systemd included). Please, try to expe=
riment with it!<br><a href=3D"https://github.com/ZoranStojsavljevic/bbb-yoc=
to/blob/master/bbb-releases/bbb-warrior/local.conf_full" rel=3D"noopener" t=
arget=3D"_blank">https://github.com/ZoranStojsavljevic/bbb-yocto/blob/maste=
r/bbb-releases/bbb-warrior/local.conf_full</a>.<br><br>I use to compile the=
 YOCTO Warrior minimal system for BBB the following command:<br>bitbake -k =
core-image-minimal<br><br>Hope this helps!<br><br>Best Regards,<br>Zoran<br=
><br><br>On Fri, Jun 28, 2019 at 11:41 AM ChenQi &#60;<a href=3D"mailto:Qi.=
Chen@windriver.com">Qi.Chen@windriver.com</a>&#62; wrote:<br>&#62;<blockquo=
te type=3D"cite">Forward to this yocto mailing list.<br>When you have probl=
ems regarding yocto, use this mailing list.</blockquote><blockquote type=3D=
"cite">Regards,<br>Chen Qi</blockquote><blockquote type=3D"cite">On 06/27/2=
019 06:57 PM, Pawan Badganchi wrote:</blockquote><blockquote type=3D"cite">=
Hello sir,</blockquote><blockquote type=3D"cite">I am adding IMAGE_INSTALL_=
append =3D &#34;kernel-modules&#34; in local.conf.When i build with bitbake=
 core-image-minimal command this kernel module is loading.while i build wit=
h bitbake atmel-qt5-demo-image command kernel module is not loading.</block=
quote><blockquote type=3D"cite">Please tell us what is the issue.</blockquo=
te><blockquote type=3D"cite">Thanks &#38; Regards,</blockquote><blockquote =
type=3D"cite">Pawan</blockquote>&#62;<br>&#62;<br>&#62;<blockquote type=3D"=
cite">--<br>_______________________________________________<br>yocto mailin=
g list<br><a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a><br><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noo=
pener" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br></blockquote></blockquote></body></html>
=20

