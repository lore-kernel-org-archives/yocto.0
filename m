Return-Path: <house.83@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78E3DE00A08; Sun,  7 Jun 2015 02:44:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (house.83[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vn0-f45.google.com (mail-vn0-f45.google.com
	[209.85.216.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A99EE00961
	for <yocto@yoctoproject.org>; Sun,  7 Jun 2015 02:44:33 -0700 (PDT)
Received: by vnbg62 with SMTP id g62so13877352vnb.4
	for <yocto@yoctoproject.org>; Sun, 07 Jun 2015 02:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=y2keiFz0rOnOn8/52ldMUayDwImVItL8uh5zBxLmgTg=;
	b=eTnm/tUmGHMzx+8D6pOsjQVBHFVzhj4j1UnNXDam/HQb4RK+yUSD2LdAFly1ZsA4xq
	vi7Tl7gcwWkwrHDdUKQHofnzKYAniKLBH43Bwy9vzT1GFoCkgZdAK3KGW8XRah6jU39l
	sZ0OU9//E+wnvLyd9XKQ93Mt+cGabo/yZSAnbzu66cEHzu5vLMndxmGh/9jvZr64MXAt
	bJTVtINSVtUcad8YJ3uxHb6MvXO2ea5aBJXsj2CSWetC3UoXtDruZOZEJuqOm3vcdzFC
	oJdXCj4sLhAgoy8R54NMverzCQqIUUJuqNKxsDMEXCb+1+yY2xAHHx31PhHlZ7TwGPYG
	8N/A==
X-Received: by 10.52.52.114 with SMTP id s18mr21811083vdo.9.1433670272978;
	Sun, 07 Jun 2015 02:44:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.52.255.194 with HTTP; Sun, 7 Jun 2015 02:44:12 -0700 (PDT)
From: Roberto Saltini <house.83@gmail.com>
Date: Sun, 7 Jun 2015 19:44:12 +1000
Message-ID: <CAGLePYu7eyeGhC6Y9WBu1fHr+evThMx2vf_9H0YJCaLwrK+Y_w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How to search for the .bb of .bbappen file in which a variable is set?
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
X-List-Received-Date: Sun, 07 Jun 2015 09:44:37 -0000
Content-Type: multipart/alternative; boundary=089e0111d57c5895e10517ea5f5d

--089e0111d57c5895e10517ea5f5d
Content-Type: text/plain; charset=UTF-8

For example, I would like to know in which .bb of .bbappend file the
variable PREFERRED_PROVIDER_u-boot is set.



The only (dummy) way that I have figured out up to now is to use grep.



Does anyone know a better way?



Thanks.

R.

--089e0111d57c5895e10517ea5f5d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div class=3D""><p>For example, I would like to know =
in which .bb of .bbappend file the variable PREFERRED_PROVIDER_u-boot is se=
t.</p><p style=3D"min-height:8pt;padding:0px">=C2=A0</p><p>The only (dummy)=
 way that I have figured out up to now is to use grep.</p><p style=3D"min-h=
eight:8pt;padding:0px">=C2=A0</p><p>Does anyone know a better way?</p><p st=
yle=3D"min-height:8pt;padding:0px">=C2=A0</p><p>Thanks.</p></div><br clear=
=3D"all"></div>R.<br></div>

--089e0111d57c5895e10517ea5f5d--
