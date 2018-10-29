Return-Path: <zoleelikesdebian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C076AE009AA; Mon, 29 Oct 2018 06:28:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoleelikesdebian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.47 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
	[209.85.208.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE885E00826
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 06:28:11 -0700 (PDT)
Received: by mail-ed1-f47.google.com with SMTP id t10-v6so7258650eds.12
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 06:28:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=XS9c5KmeFEhg5fdR0/m0THcau1KgZl3xz3dzmuM8kEY=;
	b=M5BqhgUbc5IHBqFLJE6xHSmBVlhfcx71ygBMrqMaHmObnQfdd+s2nvqGV733dV6cEy
	aIteVhTx57HJhJsqGYYC4QlgMCabzlfmWAKD2nsbnNdAZUUzkl6cdUPIXXQMvb1rGDcl
	mLm86BQ3itbpgBN5ZkRHOWYFI5rPt5Hac0cZyFNMvgynufoTdpqtDrr63L7pr+5KaAfo
	7sJWV6teqCE/JY5w7JvojJFEix2jrc4O7TltHRhLzVAVJl8cYNRzbbLuB6Yyz9dHrGzg
	acY4CHigVe+caePk5xVWGDssLqaYEv0NBahcAtRENI5Z3x71u2wckHUM501Wcov/hj/J
	2l1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=XS9c5KmeFEhg5fdR0/m0THcau1KgZl3xz3dzmuM8kEY=;
	b=XUu6VtbTNJXeoVYBRBq/mOIo1HBSV6fCUNsSvJAN4K5apqknPM0KnEnLNUP+bCyK1f
	eIxnRz2350pTxi5usGYBjxL1fgXvXm2G0JFeDIBWgMoEHsffwZH42kKclNC5NFm5DtxJ
	RoMZIQqqgFVqVwigbRUrs59T0eRqcWaZrWFCFfd6p0Z6TZyt7RsKIyiulhJBFi3pqddV
	/TGfpVGDcq7JTrHlI6ic+edlxI751yyNxzzlXk7ZuRtMO+5RbbCLq5vM7IieYbxxmWV6
	XVqPx4BSDvclnTtmpA9bFGXom/a/21hPVaD9BWhqvyVAZdRXwioauIu447Is6D1OrNNs
	kLtw==
X-Gm-Message-State: AGRZ1gIRKVF0LSXTVEmMDwq6beCOTMXWRKM7ETv3hjYHkEBTo69ad/Ph
	PQsBlk6qNWiouLY49LXwTwDoANlPJn4HrjjXxfevyTl2ig==
X-Google-Smtp-Source: AJdET5f4O/hoFDnjR0XA9l3v/SjBfmdOsdraOtHEhnxMRAOM2YT9npg1nNBsgc1A0aFrXcvFO52JcSU9jzIHgZM/L/g=
X-Received: by 2002:a50:ee91:: with SMTP id
	f17-v6mr13666427edr.136.1540819690474; 
	Mon, 29 Oct 2018 06:28:10 -0700 (PDT)
MIME-Version: 1.0
From: Zolee K <zoleelikesdebian@gmail.com>
Date: Mon, 29 Oct 2018 14:27:59 +0100
Message-ID: <CAK4Yt2nqnLp8PgtVHn+sktegHP31C2s4wgxp9NQuh4-navWLKA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: adding own shell script to the image
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
X-List-Received-Date: Mon, 29 Oct 2018 13:28:13 -0000
Content-Type: multipart/alternative; boundary="000000000000504e7a05795e0a8f"

--000000000000504e7a05795e0a8f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi All,

I'm struggling with this:

The error message:

/home/..../recipes-z/testing/testing.bb: Unable to get checksum for testing
SRC_URI entry testscript: *file could not be found*
Which I don't understand, since the file is definitaly there:-(
Could you please help me out with this?

#############################################
this is my test folder:

testing/
=E2=94=9C=E2=94=80=E2=94=80 file
=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 testscript
=E2=94=94=E2=94=80=E2=94=80 testing.bb
#############################################
cat testing/testing.bb
DESCRIPTION =3D "test script"
LICENSE =3D "Z"
SRC_URI =3D "file://testscript"
SRC_URI[md5sum] =3D "e51375ed8c617ea7a6ac39b81c757e39"
do_install() {
    install -d ${D}${bindir}
    install -m 0770 testscript ${D}${bindir}
}
###############################################
cat testing/file/testscript
#!/bin/sh
echo "hello world"

--000000000000504e7a05795e0a8f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi All,</div><div><br></div><div>I&#=
39;m struggling with this:</div><div><br></div><div>The error message:<br><=
br>/home/..../recipes-z/testing/<a href=3D"http://testing.bb">testing.bb</a=
>: Unable to get checksum for testing SRC_URI entry testscript: <b>file cou=
ld not be found</b></div><div>Which I don&#39;t understand, since the file =
is definitaly there:-(</div><div>Could you please help me out with this?<b>=
<br></b></div><div><b></b></div><div><br><font size=3D"1">#################=
############################<br>this is my test folder:<br><br>testing/<br>=
=E2=94=9C=E2=94=80=E2=94=80 file<br>=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=
=80=E2=94=80 testscript<br>=E2=94=94=E2=94=80=E2=94=80 <a href=3D"http://te=
sting.bb">testing.bb</a><br>#############################################<b=
r>cat testing/<a href=3D"http://testing.bb">testing.bb</a><br>DESCRIPTION =
=3D &quot;test script&quot;<br>LICENSE =3D &quot;Z&quot;<br>SRC_URI =3D &qu=
ot;file://testscript&quot;<br>SRC_URI[md5sum] =3D &quot;e51375ed8c617ea7a6a=
c39b81c757e39&quot;<br>do_install() {<br>=C2=A0=C2=A0=C2=A0 install -d ${D}=
${bindir}<br>=C2=A0=C2=A0=C2=A0 install -m 0770 testscript ${D}${bindir}<br=
>}<br>###############################################<br>cat testing/file/t=
estscript<br>#!/bin/sh<br>echo &quot;hello world&quot;</font><br></div></di=
v></div>

--000000000000504e7a05795e0a8f--
