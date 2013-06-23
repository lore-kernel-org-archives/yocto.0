Return-Path: <insop.song@gmail.com>
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC68DE01517
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2013 16:09:16 -0700 (PDT)
Received: by mail-wg0-f51.google.com with SMTP id e11so7912744wgh.30
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2013 16:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:cc:content-type;
	bh=XES1jWSD8L/R2sZ8TTm6mOemN0pKqJ3R69KfTEDvYi8=;
	b=GhmTCZyd6unctfPu9BnJ0sXksaKIgwTslo5uX1f0s8EiI0E8ZT+SJlL+gzCPCYL5rI
	mOYdhB5tbh2ayqWD+S0GGVjo74p4QJh8WFup45SdYoMkE527Ic+OurHQ74da1btwOtOd
	0ShEEHaN4Mgkt8p36WBgkZm8CkdgfmL9mJOaZCtEhzzephTI4ldvaH0dqCFwHFqJgduA
	OAI1AOwfQazWoMfrzrLhsQMUd/MRUZvVi6rAm+tDn4DbxsDENtEP22hLPuHSkvRvl3nR
	Diva1HJcs5p6ZXl34snQcbfA49DohQwtw6yCcUeweq63Q5YKYfmClnRTzqy4gjybaSZ6
	jEEw==
X-Received: by 10.180.108.232 with SMTP id hn8mr4326911wib.54.1372028954918;
	Sun, 23 Jun 2013 16:09:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.0.227 with HTTP; Sun, 23 Jun 2013 16:08:54 -0700 (PDT)
From: Insop Song <insop.song@gmail.com>
Date: Sun, 23 Jun 2013 16:08:54 -0700
Message-ID: <CACzyEJ97cTe5x7OOqQVjkCeUa1NBv750-=y=7tSWgcaoQnEa7A@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Cc: Darren Hart <darren.hart@intel.com>, zhenhua.luo@freescale.com
Subject: How NOT to include kernel image to the rootfs?
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
X-List-Received-Date: Sun, 23 Jun 2013 23:09:17 -0000
Content-Type: multipart/alternative; boundary=e89a8f3b9c4d7ac6df04dfda62fe

--e89a8f3b9c4d7ac6df04dfda62fe
Content-Type: text/plain; charset=ISO-8859-1

Hi,

- Question
"How NOT to include kernel image to the rootfs?"

- Background
In our application, we use u-boot to load kernel and rootfs from nand flash
separately.

I don't want to include kernel image inside /boot as I don't need it over
there.
I could untar the rootfs, remove, and tar it up again, but I would like to
find a way within the yocto framework.

I was not able to find a way by looking up the recipies and googling on
this topic.

Could any one help me?

Thank you,

Insop

--e89a8f3b9c4d7ac6df04dfda62fe
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div style>- Question</div><div>&quot;Ho=
w NOT to include kernel image to the rootfs?&quot;<br></div><div><br></div>=
<div style>- Background</div><div style>In our application, we use u-boot t=
o load kernel and rootfs from nand flash separately.</div>

<div style><br></div><div style>I don&#39;t want to include kernel image in=
side /boot as I don&#39;t need it over there.</div><div style>I could untar=
 the rootfs, remove, and tar it up again, but I would like to find a way wi=
thin the yocto framework.</div>

<div style><br></div><div style>I was not able to find a way by looking up =
the recipies and googling on this topic.</div><div style><br></div><div sty=
le>Could any one help me?</div><div style><br></div><div style>Thank you,</=
div>

<div style><br></div><div style>Insop</div></div>

--e89a8f3b9c4d7ac6df04dfda62fe--
