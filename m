Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC097E01408
	for <yocto@yoctoproject.org>; Tue, 15 May 2012 17:33:14 -0700 (PDT)
Received: by bkcjf20 with SMTP id jf20so209671bkc.35
	for <yocto@yoctoproject.org>; Tue, 15 May 2012 17:33:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=6TBTcGZI2t3LyfCHQrKM5BeK0WeMJBAkDgjD+C90Tf0=;
	b=LvEXBlDFTQGPzJOGO4vTEkaOP2CIucGYQbuWE/Lkg5qF5tHXuz+F0Tvc+mD06jTOXK
	kXsNX8ITQxAJIQJL3fMXTW8XBxSYtFmvGYpIiK2BUyw92m3QC0LBIwAMe+gNgeFzev3G
	tvuzK55joAV3F+e/Rdu28QW7JQaK1fHu7odSDt+4GC93TaBW9tqrgBgA6BAaMMrX0VFt
	bA3AVSiLK1vy4HfvV6u5BLE1UPQnvQAA3NJPeaMJz2ZqhTdHo9UsWMK6oINEV+2RKEcL
	cAqdfmHbzfSnLddaakNykAz5ghnqtD2laWyQSVbg2uZIkNs2g1rEMWdRvsEgX1k0mod0
	5egA==
MIME-Version: 1.0
Received: by 10.204.152.132 with SMTP id g4mr390778bkw.88.1337128393388; Tue,
	15 May 2012 17:33:13 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.205.65.134 with HTTP; Tue, 15 May 2012 17:33:13 -0700 (PDT)
In-Reply-To: <CAPhnLPAyjXju0tf=0m_+Y6EDecrA_Em1iev+zM9eSTRC7C17=w@mail.gmail.com>
References: <CA+gsK-ph__F9gNUYSnb_pN2xjLbv8zwB6Sk+J5qiKD43fZx7-w@mail.gmail.com>
	<CAPhnLPANF6KeOtgKa_L2PjV+hCg2Kb8_CFR9tPLzOA1kNNdUrQ@mail.gmail.com>
	<CA+gsK-o6DM31+ypUBtR9DqX0jhEEESOJVp8Qe9viUzGhJac0dA@mail.gmail.com>
	<CAPhnLPAyjXju0tf=0m_+Y6EDecrA_Em1iev+zM9eSTRC7C17=w@mail.gmail.com>
Date: Tue, 15 May 2012 17:33:13 -0700
X-Google-Sender-Auth: Ehz1ysU0669v55u3xamU8iT8PJc
Message-ID: <CA+gsK-pOMkiP2Jk_kN2NCk43Zomy=XpUcjEtLD-C0ch6eSZmCA@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQnC1n9Hp6byOpHFeJJQETeQkTqCWtjc/aNnqF222VyiC4J++VZ8wZpsDuHXPcYip4EqjkJT
Subject: Re: How is the list in package.manifest derived?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 16 May 2012 00:33:15 -0000
Content-Type: multipart/alternative; boundary=0015175ce024e833d804c01c7658

--0015175ce024e833d804c01c7658
Content-Type: text/plain; charset=ISO-8859-1

Related to that I have another question. If I use this recipe to create an
image

DESCRIPTION = "A small image with gcc"
IMAGE_INSTALL = "task-core-boot gcc"
LICENSE = "MIT"
inherit core-image

and call it myimage.bb

${TMPDIR}/deploy/icenses will contain a subdirectory named myimage.
However, the content of the directory is not, as I would love to have it, a
license.manifest and a package.manifest file but the MIT licensing
information.

What makes a recipe such as core-image-minimal.bb magically different from
myimage.bb so that the former includes the manifests? It does not seem to
be the content of the recipe.

:rjs

--0015175ce024e833d804c01c7658
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Related to that I have another question. If I use this recipe to create an =
image
<div><br></div><div><div>DESCRIPTION =3D &quot;A small image with gcc&quot;=
</div><div>IMAGE_INSTALL =3D &quot;task-core-boot gcc&quot;</div><div>LICEN=
SE =3D &quot;MIT&quot;</div><div>inherit core-image</div></div><div><br></d=
iv>
<div>and call it <a href=3D"http://myimage.bb">myimage.bb</a></div><div><br=
></div><div>${TMPDIR}/deploy/icenses will contain a subdirectory named myim=
age. However, the content of the directory is not, as I would love to have =
it, a license.manifest and a package.manifest file but the MIT licensing in=
formation.</div>
<div><br></div><div>What makes a recipe such as <a href=3D"http://core-imag=
e-minimal.bb">core-image-minimal.bb</a> magically different from <a href=3D=
"http://myimage.bb">myimage.bb</a> so that the former includes the manifest=
s? It does not seem to be the content of the recipe.</div>
<div><br></div><div>:rjs</div><div><br></div>

--0015175ce024e833d804c01c7658--
