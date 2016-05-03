Return-Path: <mtl1nuxd3v@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B571CE006C7; Tue,  3 May 2016 08:19:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mtl1nuxd3v[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.170 listed in list.dnswl.org]
Received: from mail-yw0-f170.google.com (mail-yw0-f170.google.com
	[209.85.161.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63297E00566
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 08:18:57 -0700 (PDT)
Received: by mail-yw0-f170.google.com with SMTP id g133so21333366ywb.2
	for <yocto@yoctoproject.org>; Tue, 03 May 2016 08:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=3PQapsvUKx9/vVmWzA3oisMNedff2VejW7wSZZO5oGM=;
	b=Q5AWsCtE/FLBCausxew2EAK4n3rnnb+CvGDx+23sP7n8OC8LvVJv0hNwcgqcKFZSBp
	JfWgxPovVXLmId9h/OdVMRNRCy9oYszmYBmAJs1ybrL5smN5J4zOpStW7VtQo6vlyTeP
	kPgRiorTWnlrzVqMDtwIqws9VqrH8DR8Y3Bfw9zmm6pNoVGTHF+haASq55bmHkfu1wVi
	AKhZ5PgV4g1esuQ8Ryp1QjgXW98hA4108HUJL1C01p2MLLW86HbYNqhTAlkJQhIs1QoA
	0GQ5LL31kzJOUqmSqi7o8MBLYH4OaOPi5G94+z/Qxpg7EH+7wQinBs5XddW1miqNHvgm
	eiNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=3PQapsvUKx9/vVmWzA3oisMNedff2VejW7wSZZO5oGM=;
	b=N1ZoRbLOPocwpn0pNy+pBCCYkwyHk3vy07UxBbTBEc+4nmqDZJVItRX7kjf89siBoe
	oNtLE+O1VxNp3n8E9uCHeMWzyqEdz4H2zyzqNPfV7R2liFRshZ/bfgdkwSu+JlRWUxk2
	ZGDnr2D+d0l1pEV/OUkaXcSMCHS8aq6TaWjQ+uRxG/yyQlcV/GaBfiQ8l/xPqTLPh2bS
	8D6U0ok8y1uW/byBBnG0MuS0wCEyRJf/2O2P87/hgh99brmqb86q+NeLlWYeFNGMpvSE
	CLEpqG2oYadlo8OmamaN5mrKLoE7qaGVuv8dvKdo8kIaLR7HsuvHXqTbJcOmnyS8c9Pg
	JecA==
X-Gm-Message-State: AOPr4FWI+YNVRJ3LJ+5s7VPPBL+deFgHbChHd5WCOsrOJ51CCZBkYMc214cvtz+i1IBg9Y3sueckkzq6LGjvBA==
MIME-Version: 1.0
X-Received: by 10.13.240.65 with SMTP id z62mr1484533ywe.314.1462288736519;
	Tue, 03 May 2016 08:18:56 -0700 (PDT)
Received: by 10.37.36.82 with HTTP; Tue, 3 May 2016 08:18:56 -0700 (PDT)
Date: Tue, 3 May 2016 16:18:56 +0100
Message-ID: <CALf_N3bfJ5etAAVs5JAF7mX=HQ60BQ9P02ragzdk4y1JGv5KCA@mail.gmail.com>
From: Mark T <mtl1nuxd3v@gmail.com>
To: yocto@yoctoproject.org
Subject: What version of Jethro do we get with - git clone -b jethro git://git.yoctoproject.org/poky.git ?
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
X-List-Received-Date: Tue, 03 May 2016 15:19:00 -0000
Content-Type: multipart/alternative; boundary=94eb2c034e60b315500531f1a06a

--94eb2c034e60b315500531f1a06a
Content-Type: text/plain; charset=UTF-8

Hi,

When we started working with Yocto we cloned via -

git clone -b jethro git://git.yoctoproject.org/poky.git  mydir/
cd mydir
git clone git://git.yoctoproject.org/meta-intel -b jethro

If we do the same a month or so later do we get the same version ?  we
suspect not the distro version has changed.

Is there a way we can clone the same version all the time ?

Secondly, what should be considered a stable version to clone ?

Thanks,
Mark

--94eb2c034e60b315500531f1a06a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi,<br><br></div>When we started working wi=
th Yocto we cloned via -<br><br>git clone -b jethro git://<a href=3D"http:/=
/git.yoctoproject.org/poky.git">git.yoctoproject.org/poky.git</a>=C2=A0 myd=
ir/<br>cd mydir<br>git clone git://<a href=3D"http://git.yoctoproject.org/m=
eta-intel">git.yoctoproject.org/meta-intel</a> -b jethro<br><br></div>If we=
 do the same a month or so later do we get the same version ?=C2=A0 we susp=
ect not the distro version has changed.<br><br></div>Is there a way we can =
clone the same version all the time ?<br><div><div><br></div><div>Secondly,=
 what should be considered a stable version to clone ?<br><br></div><div>Th=
anks,<br></div><div>Mark<br></div></div></div>

--94eb2c034e60b315500531f1a06a--
