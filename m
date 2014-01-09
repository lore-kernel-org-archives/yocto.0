Return-Path: <katutxakurra@gmail.com>
Received: from mail-ie0-f196.google.com (mail-ie0-f196.google.com
	[209.85.223.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53590E007ED
	for <yocto@yoctoproject.org>; Thu,  9 Jan 2014 11:08:34 -0800 (PST)
Received: by mail-ie0-f196.google.com with SMTP id e14so1428225iej.3
	for <yocto@yoctoproject.org>; Thu, 09 Jan 2014 11:08:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=XzoploUGTYLR97hbZcaqEsTSUb3Np/h/Kh2kQc0cFxU=;
	b=rJp7m09GoerwJyz0y2fTXYIWwpdFp53veIMaCH98/zD5m7Xb4n9ieqmKv62GKnPBDv
	egHP7snnaXuspKJBbXXJFsdOPmn7B5YRxVYEYdmoNkHkYf+6kOjqz5p4KnuwFckpOxPn
	73/9fPEhE5sr1tIskOt2TI+XWiXYDizzr1FYqxHaT2HZo0XN9Q3iVsMmlEuDS1Suk4VX
	+04A0BPF6XONcGoW8kLNQyAjKrd1sKnn+ewgY6XgXdeKcmt9h/I1TkZQeb0jnPkGXs+m
	JJ95OHPQFrEeiHikw+O5GRVlTyJXcOmpQHw6a1dSMPOsHmPgrywcq2TollsFfl7+ev13
	nrAw==
MIME-Version: 1.0
X-Received: by 10.50.225.67 with SMTP id ri3mr489406igc.16.1389294123217; Thu,
	09 Jan 2014 11:02:03 -0800 (PST)
Received: by 10.50.231.161 with HTTP; Thu, 9 Jan 2014 11:02:03 -0800 (PST)
Date: Thu, 9 Jan 2014 19:02:03 +0000
Message-ID: <CAM1ZcoXaj-ohT8bMn90D10FzT7cRt-Yt=e_DjHs=Q69LPKHgWw@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: package various recipes
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
X-List-Received-Date: Thu, 09 Jan 2014 19:08:35 -0000
Content-Type: multipart/alternative; boundary=001a1132edfeb41aa904ef8e3e03

--001a1132edfeb41aa904ef8e3e03
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I have a few recipes one.bb, two.bb, three.bb that I bitbake to get ipk
packages. I would like to create a recipe all.bb that creates a single
all.ipk package that will install one, two and three binaries files in the
system. How can I do that?

Thanks,
Katu

--001a1132edfeb41aa904ef8e3e03
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br><br></div><div>I have a few recipes <a href=3D=
"http://one.bb">one.bb</a>, <a href=3D"http://two.bb">two.bb</a>, <a href=
=3D"http://three.bb">three.bb</a> that I bitbake to get ipk packages. I wou=
ld like to create a recipe <a href=3D"http://all.bb">all.bb</a> that create=
s a single all.ipk package that will install one, two and three binaries fi=
les in the system. How can I do that?<br>
<br></div><div>Thanks,<br></div><div>Katu<br></div></div>

--001a1132edfeb41aa904ef8e3e03--
