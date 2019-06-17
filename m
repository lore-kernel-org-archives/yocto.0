Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23E2BE00D6E; Mon, 17 Jun 2019 07:19:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
	[209.85.208.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60646E00D64
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 07:19:35 -0700 (PDT)
Received: by mail-lj1-f177.google.com with SMTP id v24so9450025ljg.13
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 07:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=4Xn+zUssbKHl5+nIjn2ocN5kJKHShz+hiBBA8+GLk+Y=;
	b=ZDrBOsqyo+lbKujiVkpnpGIf5SnFKiRDG5Q6iKYKxsEPPHoEbgENt4Lmwb2pvPC9Wt
	jDVz/R7Olf6acUFzcIgOzza/2ubXjoNxDJO8AR+v5aiaiIYgXyjxawpkHPA5XrlTwGQm
	UD8/MwMO3AASNnfYopR2GUZXABs8GJVQpOXGeNU+gyCoe15p3wxtixWhSZQBBHYvZs7P
	3tRXybdRDSQrssMU2IdoIZK+def2ri+02C9yuKSb2TRzyot0/UL3OxqUy7a60YFYVX0U
	mZZnesJamBIMgVNUSKg0rEvVx84xesoN3h+F3jTMYf/2JbdO3phj4KK718F6ELxhgmxW
	D2Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=4Xn+zUssbKHl5+nIjn2ocN5kJKHShz+hiBBA8+GLk+Y=;
	b=I6wgKc/JL1oX7wLhztLBosrRHHiqtno5PMgKhFefMLAxyFWN111ELaxeeF/ucZ7aTZ
	i1FTCVeumfNF8V1TgTXzPmqyF8jjLt1BoBdS2FdtoEnqESYUH+LL01HOeHhBh9g9qk1X
	TTiI3I969NvxjuCjubsCYOYzxgkJjsCBkl32PDjU2O/ebKDGr71exerNuerlGNh2ARER
	96AQ/AiqftRVMGiHk47fFdOxlSd2aM+hwn+w+WCqJDrde6f3Wt4wdNfeTyYmIvkbE+yt
	IV0oBKpYmU/oRI8UbIAMMkiV72fQR8wEMLDtyQYWExV6y92pl0R0rFZpoyiH0NuQKVS7
	qihA==
X-Gm-Message-State: APjAAAXSHUQa7a/7YB6MVYlN6Y13RSZoeFWRUDrmYj7jSg33aAPTn7pX
	3Y/MfOH/nAWQ+zTLL6PNZNTzxQm3W2qJDnI83bkvow==
X-Google-Smtp-Source: APXvYqxkzjPQ1ao5UkG+QpR927sN8aznfUjZ8NmX6FjoMQ3GWIh8yXNe419oXSjQVxxMyOPViSbuk/ZZzsvJZGCvqLE=
X-Received: by 2002:a2e:8945:: with SMTP id b5mr19297374ljk.93.1560781174286; 
	Mon, 17 Jun 2019 07:19:34 -0700 (PDT)
MIME-Version: 1.0
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Mon, 17 Jun 2019 16:19:23 +0200
Message-ID: <CAAx3WaCUb18Yf6Qp33qQCu9O3s-qpa75uoSm+sKv89jR0FbZmQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Running Yocto inside Docker
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
X-List-Received-Date: Mon, 17 Jun 2019 14:19:36 -0000
Content-Type: multipart/alternative; boundary="000000000000772f8c058b85afb7"

--000000000000772f8c058b85afb7
Content-Type: text/plain; charset="UTF-8"

Hi all,

does anyone have a guide on how to setup Yocto to run inside docker? Right
now I managed to trigger the build from GitLab, but I'm facing an issue
related to ssh keys (some recipes from my meta layer are hosted on a
privare repository). Probably this is not the best mailing list to ask this
kind of question, but it may worth a try.

Thank you,
Gabriele

--000000000000772f8c058b85afb7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>does anyone have a g=
uide on how to setup Yocto to run inside docker? Right now I managed to tri=
gger the build from GitLab, but I&#39;m facing an issue related to ssh keys=
 (some recipes from my meta layer are hosted on a privare repository). Prob=
ably this is not the best mailing list to ask this kind of question, but it=
 may worth a try.</div><div><br></div><div>Thank you, <br></div><div>Gabrie=
le<br></div></div>

--000000000000772f8c058b85afb7--
