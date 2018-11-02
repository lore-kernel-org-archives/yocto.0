Return-Path: <hliu@deeper.network>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D962DE00A0A; Fri,  2 Nov 2018 11:03:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.169 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com
	[209.85.221.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DD23E00901
	for <yocto@yoctoproject.org>; Fri,  2 Nov 2018 11:03:56 -0700 (PDT)
Received: by mail-vk1-f169.google.com with SMTP id o10-v6so617914vki.6
	for <yocto@yoctoproject.org>; Fri, 02 Nov 2018 11:03:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=deeper.network; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=uPan8ZTnijUg4x0HNrmbAuOJoWR5lbxILR5ym5rUZcM=;
	b=JOz0YCcuB0g97jLF4NopkkdKKeQDGhcByLXAJnqL9icjWJYZO8QOIf21fEmccWSGKe
	p/GL2E+itAEqm9+OMTELAvxOo3vF40TvEigIafddax+GsD3yVzAMuL2LDs+Bvnk+BDPJ
	f9RhHfKJ72pIVLdfxAILIWo8ZMoiEe0Ub0El5U2hiCavBXoRZV1miQGYU8rNkZB7IR4a
	RGxeqa4zPKjHtUQjRsQeDNMUQgqpe6+FVMABH8q0KWByU7MBEvQl3dmmC6n9Co4R6Q5v
	L6UoTlMOXbTodjDgr7XWPI2nqfS76onna6O76x3jWHVsnU7kl/NfW3DD7Ih/mIdiy0q3
	qTRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=uPan8ZTnijUg4x0HNrmbAuOJoWR5lbxILR5ym5rUZcM=;
	b=ZHy18Pi1BD+KyVvNC8gMa47mvqxpyrrtwPz4sEh+mgDX6PQdyvxerCgyrj2DuNQWv4
	5pdybp+bjXQflKiU6RZPkz59xa6IHIXaA9VTENa0oQW1Sj5lu6C0NPKyGTQHDncKYZBf
	yYWKnGVk2Njlg8j0Xq8dwDjHFYgaL1M7XBi0PP4Xk2683Vnby95fMlJ/wAYlxB9dQLfp
	nlZFrFPySmaOZ3I40lB/X5AhcJ+u+ne2oKkJO45+6qPapNJnN+AcglEuKneHqfYPllnM
	MOeYs7vA+ptuGCh2pEyQ8Eh6B5YivLZhs1cn9UgfVoahfhlhET6Onw/Qt9GAH00i2wne
	tnZg==
X-Gm-Message-State: AGRZ1gJ3cGOCnQ6U7h5oKljY+dCDiADEZcgOBHgOnnOi2U+pLmZE/5Ot
	QRSXoL/nO8cq2uFbEfO+h9johsobKX2bpYtDwLzTZQl/xlY=
X-Google-Smtp-Source: AJdET5fO7XAGgPxCuMZWfO+VsSxm1q0i5a/oRoXnnZzWax5Gd5I6VJ1yFdfB+8HzlUN55+9HcGHSaHQ+ZFE3W7KwrDc=
X-Received: by 2002:a1f:a702:: with SMTP id q2mr5398787vke.43.1541181835647;
	Fri, 02 Nov 2018 11:03:55 -0700 (PDT)
MIME-Version: 1.0
From: Hui Liu <hliu@deeper.network>
Date: Fri, 2 Nov 2018 11:03:54 -0700
Message-ID: <CAOCk6Ow+ZJEg9MofbiTpzNekesnOW4dY3g9B9Ubo3A-32AY_fg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How to avoid stripping libthread_db to enable gdb thread debugging?
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
X-List-Received-Date: Fri, 02 Nov 2018 18:03:57 -0000
Content-Type: multipart/alternative; boundary="000000000000d93ccf0579b25b1c"

--000000000000d93ccf0579b25b1c
Content-Type: text/plain; charset="UTF-8"

Hi,

I add gdb to my recipe, and found gdb can't enable thread debugging.

The warning from gdb is:

warning: Unable to find libthread_db matching inferior's thread library,
thread debugging will not be available

After some investigation, I found it is due to libthread_db is stripped:

nm lib/libthread_db.so.1
nm: lib/libthread_db.so.1: no symbols

Could you let me know how to avoid this?

-- 
Thanks,
Hui

--000000000000d93ccf0579b25b1c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi,<div><br></div><div>I=
 add gdb to my recipe, and found gdb can&#39;t enable thread debugging.</di=
v><div><br></div><div>The warning from gdb is:</div><div><br></div><div>war=
ning: Unable to find libthread_db matching inferior&#39;s thread library, t=
hread debugging will not be available<br></div><div><br></div><div>After so=
me investigation, I found it is due to libthread_db is stripped:</div><div>=
<br></div><div><div>nm lib/libthread_db.so.1</div><div>nm: lib/libthread_db=
.so.1: no symbols</div></div><div><br></div><div>Could you let me know how =
to avoid this?</div><div><div><br></div>-- <br><div dir=3D"ltr" class=3D"gm=
ail_signature"><div dir=3D"ltr">Thanks,<div>Hui</div></div></div></div></di=
v></div></div>

--000000000000d93ccf0579b25b1c--
