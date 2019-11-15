Return-Path: <deepteriar@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E243E00E5E; Fri, 15 Nov 2019 03:30:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (deepteriar[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.47 listed in list.dnswl.org]
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com
	[209.85.166.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7FBFE00DEE
	for <yocto@yoctoproject.org>; Fri, 15 Nov 2019 03:29:59 -0800 (PST)
Received: by mail-io1-f47.google.com with SMTP id j13so10099741ioe.0
	for <yocto@yoctoproject.org>; Fri, 15 Nov 2019 03:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=GeBlaCJUhX9HSbmsLVDnX5wbw2/W9ZIdt4r0QGuKjq4=;
	b=lB7qDR0lZ2fx2/Vl64JksnyYlyHiBIayqSZz7znma9sGeXjxRKMlKLigEvH6+HkELJ
	A4jgpBMgVjCdtmZgBhhlysv2ExRjHWa8TEbSdJtMmXnlVyrUEHGNldisE0XdZk+140gf
	bwAHRF6Fknpiz8t/CKAGIiXjmFobDqcikCXLkNJ955QSku4jeGXv03CvWu3eWtyziNRc
	0sndLiwygbhTkPFBR+56cxMGsA/8dzp9U32MNhZJkKY2qFRzxIQmtm6mtauNCfjeLjTf
	C96NPKh3XqKIYBjDr7iwrxxJg73RrDV8uPyzBFEksQqo0UQFpb8OXtRoz6wFhtjHgJaL
	01QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=GeBlaCJUhX9HSbmsLVDnX5wbw2/W9ZIdt4r0QGuKjq4=;
	b=OLdHv4xOgFHP2eWQdu7GqtAGRAOoi/c9Q71Fuk5NWjWSqD1gU0X+7ocqD+FcbsSW6E
	nySpIq3hXhCIsgC1OtrwFMdBXpcZ5zWfr0YbLyY0lk1EqPanEYiRu3FkjJXrlMHhNIJ1
	RyP+qcMfwa/fJEOjzhIimxD2H4ZU40SVMATiEJfaA0+NVnt2akmkQ1ZpygvufwiVs/7D
	uEY+Gs9Cag8b0za0MSho4qPK0sfcIT3h+OapipF9F04MpoZC09RcXnXCevtVDeL7emuZ
	ys45SGYx4gHaZhO5GdEbEMMgN8FsUFW/OTCXLp51y8ho8FxPVC6yLH7vgUMDTbCDrMW0
	C6JA==
X-Gm-Message-State: APjAAAWrzSJomUg9VtxbPCK79nZTiUfzvwsnyyIr67Tk9TprRw4a1gu8
	xVhGLll3mRmBPw5vRLu8swDGnTbaLV9YfFcz4+oLw+UU
X-Google-Smtp-Source: APXvYqwddZN33zQjb1kEDEg4VL+RwnwT8mYm9dD2j4LOlIZ+XlgSG9X1tlVYTrW6GQmhFd05Q7V9pOPxW/LRPtCRT7Y=
X-Received: by 2002:a05:6638:9:: with SMTP id z9mr170186jao.35.1573817398932; 
	Fri, 15 Nov 2019 03:29:58 -0800 (PST)
MIME-Version: 1.0
From: Deepika Teriar <deepteriar@gmail.com>
Date: Fri, 15 Nov 2019 12:29:47 +0100
Message-ID: <CAM_pFj-xRKHu6YsDRgi0e6RiPZU6rWbhpnS0MCTkk6JS4cJ5ig@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Adding a custom environment variable
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
X-List-Received-Date: Fri, 15 Nov 2019 11:30:00 -0000
Content-Type: multipart/alternative; boundary="000000000000013bab059760ebfe"

--000000000000013bab059760ebfe
Content-Type: text/plain; charset="UTF-8"

Hi,

I have a module called unit-tests.
I want to create an environment variable so that at compile time I can
select whether to add or remove the module from build.

Thanks
Deepika

--000000000000013bab059760ebfe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,<div dir=3D"auto"><br></div><div dir=3D"auto">I have a=
 module called unit-tests.</div><div dir=3D"auto">I want to create an envir=
onment variable so that at compile time I can select whether to add or remo=
ve the module from build.</div><div dir=3D"auto"><br></div><div dir=3D"auto=
">Thanks</div><div dir=3D"auto">Deepika</div></div>

--000000000000013bab059760ebfe--
