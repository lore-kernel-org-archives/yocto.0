Return-Path: <anoojgopi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA839E00A4D; Fri, 17 Jul 2015 02:32:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (anoojgopi[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.180 listed in list.dnswl.org]
Received: from mail-lb0-f180.google.com (mail-lb0-f180.google.com
	[209.85.217.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EA46E009D2
	for <yocto@yoctoproject.org>; Fri, 17 Jul 2015 02:32:03 -0700 (PDT)
Received: by lbbzr7 with SMTP id zr7so58137382lbb.1
	for <yocto@yoctoproject.org>; Fri, 17 Jul 2015 02:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=92eO4o0rN6h7qv1sV9GyGEQWQxZGCqPVtJcQsXDLBR8=;
	b=rzZ5wlW+a5fPm5S7JuA0VujXx9b9arubU9XyW4HXx/mCDWp2Hz3Spwo8Vazns/sOnC
	Vm5F0F9rK/tNQOl/aeHksh0/ztwnQDvaMzayJYHQ28GbGxvIHjshd2Hdes4TFcl1ngLg
	Zk8jTkjKe0C5uachNnedr1KlICSNk0UNe/Jl5QcslgOvEH2H7csMEPeIxAD7PjQWZguk
	Fm0fRaZSFab8x0k7iexU42CfV0kCqq92cee83gPv5H1BQnK6AuykEGh8j8yiZbEnN+65
	vcRJWQyWHhdIltqScmb1HXzutvMzoFrLw71qIblratAKdpfi9a8hCEIrdo1kiTIJ69+c
	WLVw==
MIME-Version: 1.0
X-Received: by 10.112.29.228 with SMTP id n4mr13700580lbh.89.1437125521640;
	Fri, 17 Jul 2015 02:32:01 -0700 (PDT)
Received: by 10.25.64.4 with HTTP; Fri, 17 Jul 2015 02:32:01 -0700 (PDT)
Date: Fri, 17 Jul 2015 11:32:01 +0200
Message-ID: <CALkREYC=zehWPk5YmfDiOeaeGdLyriMF5us7kTTjn38mRWpZ+w@mail.gmail.com>
From: Anooj Gopi <anoojgopi@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: clone multiple git source repository from single recipe file
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
X-List-Received-Date: Fri, 17 Jul 2015 09:32:19 -0000
Content-Type: multipart/alternative; boundary=001a1133a3663714b0051b0edcce

--001a1133a3663714b0051b0edcce
Content-Type: text/plain; charset=UTF-8

Hello All,

How can we checkout two git repo into work directory?

In SVN we do something like below:

SRC_URI = "svn://
example.com/trunk/OneDirectory;module=SubDirectory1;protocol=http;user=theuser;pswd=thepassword
\
svn://
example.com/trunk/OneDirectory;module=SubDirectory2;protocol=http;user=theuser;pswd=thepassword
"

SRCREV_default_pn-${BPN} = "svn-rev-no"

But now I would like to clone two git repository, which of course have
different hash value to be checked-out. Is it possible to do that in yocto?

Best Regards,
Anooj Gopi

--001a1133a3663714b0051b0edcce
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div>Hello All,<br><br></div>How can w=
e checkout two git repo into work directory?<br><br></div>In SVN we do some=
thing like below:<br><br>SRC_URI =3D &quot;svn://<a href=3D"http://example.=
com/trunk/OneDirectory;module=3DSubDirectory1;protocol=3Dhttp;user=3Dtheuse=
r;pswd=3Dthepassword">example.com/trunk/OneDirectory;module=3DSubDirectory1=
;protocol=3Dhttp;user=3Dtheuser;pswd=3Dthepassword</a> \<br>svn://<a href=
=3D"http://example.com/trunk/OneDirectory;module=3DSubDirectory2;protocol=
=3Dhttp;user=3Dtheuser;pswd=3Dthepassword">example.com/trunk/OneDirectory;m=
odule=3DSubDirectory2;protocol=3Dhttp;user=3Dtheuser;pswd=3Dthepassword</a>=
&quot;<br><br>SRCREV_default_pn-${BPN} =3D &quot;svn-rev-no&quot;<br><br></=
div>But now I would like to clone two git repository, which of course have =
different hash value to be checked-out. Is it possible to do that in yocto?=
<br><br></div>Best Regards,<br></div>Anooj Gopi<br></div>

--001a1133a3663714b0051b0edcce--
