Return-Path: <priyaiitmandi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95F3BE008CE; Thu, 19 Mar 2015 02:04:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f175.google.com (mail-ig0-f175.google.com
	[209.85.213.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA83EE00832;
	Thu, 19 Mar 2015 02:04:30 -0700 (PDT)
Received: by igbud6 with SMTP id ud6so17770083igb.1;
	Thu, 19 Mar 2015 02:04:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=P4sYaDDLsHvvPYYIARKWTd8W8yvhIEF7jTRNitjIZ2M=;
	b=I48uBlc/1afvp0I/cvXVQ9EUQllV15HgqdmUdCqcrG0WzT+bd0GuwDrTaRxP15PwWB
	kQCFnkZn3vPmsSWW6K/nN1TRagOZcbFguuz/w6zmZayOzt9teGM//M9TPO9v1m/OEAuX
	OFDjbmPvwtY9e4CXBxOpSeaawbUGBZkql/bQlPx7J8GTlTphTc45loX6eqaB+PCv3JPX
	idn3puLjZ+tIkNOpaBCZRpGjBx/ktLXZ6LFK3/zCE5Qvq2r3vB6ThgAfP7FzlzBQthLF
	266R/0psiwhtEIFk9auEO+D4gKe660hCfNkNz3iYopaH2hrVio1Y3tB25RqTxv+lB4hg
	jkYg==
MIME-Version: 1.0
X-Received: by 10.107.170.33 with SMTP id t33mr120615941ioe.7.1426755869058;
	Thu, 19 Mar 2015 02:04:29 -0700 (PDT)
Sender: priyaiitmandi@gmail.com
Received: by 10.107.16.139 with HTTP; Thu, 19 Mar 2015 02:04:29 -0700 (PDT)
Date: Thu, 19 Mar 2015 14:34:29 +0530
X-Google-Sender-Auth: aJSN2inHVuV1iZla9Wgc_zBq2CA
Message-ID: <CALTPfpGcuSDbWjqqmmAn8mG0nwRg=gGJePiWLs7U9A8FSn_5DQ@mail.gmail.com>
From: Priya Agarwal <priya_agarwal@students.iitmandi.ac.in>
To: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>, 
	"yocto-builds@yoctoproject.org" <yocto-builds@yoctoproject.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Including Static Libraries from sysroot in an autotools based package
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
X-List-Received-Date: Thu, 19 Mar 2015 09:04:32 -0000
Content-Type: multipart/alternative; boundary=001a1142d85ec1adcb0511a07ceb

--001a1142d85ec1adcb0511a07ceb
Content-Type: text/plain; charset=UTF-8

Hi,

I need to link some libraries which are in sysroot into my source code.
These are usdpaa libraries.

I added DEPENDS += "usdpaa" in .bb file.
Apart from that also changed the Makefile.am of my source to include the
following:
area_LDADD = -lusdpaa_of
Then I ran aclocal, autoconf, automake --add-missing and retarred my
package.

When the package is being built from recipe, do_compile fails.
So this means that libraries are not getting linked by just doing the above
changes. What else I need to change?

I think this problem is specific to autotools based projects as when I
include the libraries during the gcc command they are easily included.

do_compile() {
    ${CC} check.c -o check -lusdpaa_of
}
link to area.bb
http://pastebin.com/Bef2C7nX

--001a1142d85ec1adcb0511a07ceb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi,<br><br></div>I need to link some libraries w=
hich are in sysroot into my source code. These are usdpaa libraries.<br><br=
></div><div>I added DEPENDS +=3D &quot;usdpaa&quot; in .bb file.<br>Apart f=
rom that also changed the Makefile.am of my source to include the following=
:<br></div><div style=3D"margin-left:40px">area_LDADD =3D -lusdpaa_of<br></=
div><div><div>Then I ran aclocal, autoconf, automake --add-missing and reta=
rred my package.<br><br></div><div>When the package is being built from rec=
ipe, do_compile fails.<br></div><div>So this means that libraries are not g=
etting linked by just doing the above changes. What else I need to change?<=
br><br>I think this problem is specific to autotools based projects as when=
 I include the libraries during the gcc command they are easily included.<b=
r><div style=3D"margin-left:40px"><br>do_compile() {<br>=C2=A0=C2=A0=C2=A0 =
${CC} check.c -o check -lusdpaa_of<br>}<br></div>link to <a href=3D"http://=
area.bb">area.bb</a><br><a href=3D"http://pastebin.com/Bef2C7nX">http://pas=
tebin.com/Bef2C7nX</a><br><br><br></div></div></div>

--001a1142d85ec1adcb0511a07ceb--
