Return-Path: <house.83@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C4D7E00A08; Sun,  7 Jun 2015 02:50:16 -0700 (PDT)
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
	*      [209.85.216.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vn0-f48.google.com (mail-vn0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B34DE00961
	for <yocto@yoctoproject.org>; Sun,  7 Jun 2015 02:50:13 -0700 (PDT)
Received: by vnbg129 with SMTP id g129so13844352vnb.11
	for <yocto@yoctoproject.org>; Sun, 07 Jun 2015 02:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=h/KckIltYpSZsRR0sy9ndeLwijgnnPwivLhOUQHJjbY=;
	b=MH630oObZl4Q0wmTcTPRc+IhzLgDOWODfjIxnJawd2Lz7cwE00dQfkZoYXBVuUfFhH
	9vsKN/DWSXbMDQJllkDe0YwRbqr/LQ95U2VI1SQGpTYGEUCaAQl7g6vP8cudYEy2Fi13
	mgUVz9vXQvh96hzMaK5LEoS7/Knrp7qCpgbrpGl8aBcTnx9dhWZZKOgdcvE+QhsOm2kK
	fTV8NuxbolEqE6qZ5z+ucTDpIN0liP9R02aD3qGKnILcjErj3ynsZJU7VuN5/AebBp3+
	okae6Sq04nD+MQ/BYiQiVvo0uAyspwBskmVkL9XNOad8F5PB0vMrCKKgAqMZkBNgu6Tw
	WGNg==
X-Received: by 10.52.129.100 with SMTP id nv4mr21091099vdb.43.1433670612639;
	Sun, 07 Jun 2015 02:50:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.52.255.194 with HTTP; Sun, 7 Jun 2015 02:49:52 -0700 (PDT)
From: Roberto Saltini <house.83@gmail.com>
Date: Sun, 7 Jun 2015 19:49:52 +1000
Message-ID: <CAGLePYs7OGHzbn9TUg0qj7PMEMF-DGkWzrDGdnD__OOA7uWiGA@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: How to list all of the .bb and .bbappend files used to build a specific package with bitbake?
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
X-List-Received-Date: Sun, 07 Jun 2015 09:50:16 -0000
Content-Type: multipart/alternative; boundary=bcaec52bece19766870517ea73f4

--bcaec52bece19766870517ea73f4
Content-Type: text/plain; charset=UTF-8

Let's consider the package "virtual/kernel". I would like to know which .bb
and .bbappend files are involved in building this package.

I know that I can get the package name through:

bitbake -e virtual/kernel | grep ^BP=

This command gives me the name of the package used to build virtual/kernel
that in my case is linux-fslc-4.0+gitAUTOINC+19ebefd40a. However, I do not
know how to get the list of .bb and .bbappend files (with their location
included) used to build the linux-fslc-4.0+gitAUTOINC+19ebefd40a package.


-- 
R.

--bcaec52bece19766870517ea73f4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D""><p>Let&#39;s consider the package=20
&quot;virtual/kernel&quot;. I would like to know which .bb and .bbappend fi=
les are
 involved in building this package.</p><p>I know that I can get the package=
 name through:</p><blockquote class=3D"">
<p>bitbake -e virtual/kernel | grep ^BP=3D</p>
</blockquote><p>This command gives me the name of the package used to build=
 virtual/kernel that in my case is <code>linux-fslc-4.0+gitAUTOINC+19ebefd4=
0a</code>. However, I do not know how to get the list of .bb and .bbappend =
files (with their location included) used to build the <code>linux-fslc-4.0=
+gitAUTOINC+19ebefd40a</code> package.</p></div><br clear=3D"all"><br>-- <b=
r><div class=3D"gmail_signature"><div dir=3D"ltr">R.<br></div></div>
</div>

--bcaec52bece19766870517ea73f4--
