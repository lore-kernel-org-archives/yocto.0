Return-Path: <dl9pf@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1133E00BD2; Mon, 26 Jun 2017 06:24:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dl9pf[at]gmx.de)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.227.17.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABEFEE00BB7
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 06:24:38 -0700 (PDT)
Received: from samweis.auenland.lan ([95.89.255.109]) by mail.gmx.com
	(mrgmx102 [212.227.17.168]) with ESMTPSA (Nemesis) id
	0MIPhr-1dT3Ax21Gx-004BLZ for <yocto@yoctoproject.org>; Mon, 26 Jun 2017
	15:24:36 +0200
From: Jan-Simon =?ISO-8859-1?Q?M=F6ller?= <dl9pf@gmx.de>
To: yocto@yoctoproject.org
Date: Mon, 26 Jun 2017 15:24:35 +0200
Message-ID: <8148209.Q8pexpZ95Z@samweis.auenland.lan>
User-Agent: KMail/4.14.10 (Linux/4.12.0-rc5-jsm-1-20170612-1458; KDE/4.14.25;
	x86_64; ; )
MIME-Version: 1.0
X-Provags-ID: V03:K0:OAHQOiBN0WYjGiIRSEwq8KqmkUw3FoWqIBcqlHSvf9yuAzMDRKP
	GWYczJyjojGeeHaOAjAUmNEJYFecZCyFk+4pQ6WDhSuWMNB8kRip1ORsze/pl1SPwqD6U+L
	0zqLXlQ371AEkYUZvFYch5Ss0ocdKZ6Fo94Xmzg1u8MuUrbjS6mFwjzPdNrKiij1VSHOnWi
	ENCrOOnt0RtGNADfhq67g==
X-UI-Out-Filterresults: notjunk:1;V01:K0:l4wFI7bEFwY=:PdBN6WApj/xhN/4VuS9ona
	0d2jfj48isW9sLg0QAkPEdHF4lMIVQLE1VowLtDB970FpQyFWvxeNXRS3wirFiM8uaXeIXPPk
	9y77nhYgCMb3codU2JzcDZVyJC7MB/JRcKQwxdpz3F4GBLVU8AjwiS5veVzfzB6kb53rNCtot
	fawh1VG+LYz4xpy/TMpD6wbTpjgW8EclIjWLpzx4r9xAEDEHSbivgZQBEF0A4P+Nvi7+M3Sep
	gO8MDOEGPA0MI+4R5B7rweM0OxfrUG59CsPWLybLA9WHNajmBJVedT0kDa8afMiCs0WbV/+cC
	GJjrPZh7irsgW2tplVc1p9ED3MNrR9uZKc4+Q+MN0qSHfknR1nHPANingRgI6bW9pKTY2RtBB
	YzLgbIGE4iQk6ugPIzUNY8kKiyh0IdQ33XdDQI1i8jy2C5CUCbK6D/gLNV/33fSOmguvwXA2S
	tNf4n9ikTyzilOIQmVHN/2ukAMA4dYt1XvHQtSWnNEaZfOtzr5+oz1D0NdfDUL4t39mf4PCAU
	WHI1rnCHzVuVhQftqspIxaHLxy1J0D7CpeJsQkMwEl4+IR9fxK928k3BKpKA7hflSVBfSBomf
	pO0ZirQyCr0J9mZISBoA7eeT6IfH1BMtYOOTI9zs+tLrcxsuXwgvQ/VQQCKsx8v74+R6E4BlB
	tTG3y5qNeDxhzLVFkAKat2LUNUK53rcr6v1hya4uhtTBdXDbfWUOirV1uPlHAwjSkLXyTmxl8
	WWvQjGd2r1bT2kxrLowR4j0pLVFuWGHwzSXFJhJFq1wnAtRTzJcSwg1pGPj+DguYewXjCbdBE
	3kh6ZV5
Subject: Include meta-qt5 in an eSDK build ?
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
X-List-Received-Date: Mon, 26 Jun 2017 13:24:40 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi !
How can I build an eSDK that includes meta-qt5 ?

The examples I found use the 'traditional' sdk and=20
add the classes from meta-qt5.

But I have not seen the eSDK being used, yet.

--
Jan-Simon M=F6ller
dl9pf@gmx.de


