Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52AD8E0098A; Fri, 28 Jun 2019 02:25:24 -0700 (PDT)
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
	*      [209.85.208.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com
	[209.85.208.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C85EE008CA
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 02:25:22 -0700 (PDT)
Received: by mail-lj1-f176.google.com with SMTP id k18so5251112ljc.11
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 02:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=YN7dnPORUm3CwoDtn0cP+fbD69Lbd2Iyma1Hu+iFytc=;
	b=uNp7ZAWQrFPRfswzZyLSK8Uy2uKecpN9d3mdW22YKh744hr4XBvRCX0yXokj2GuHxY
	xA4/KfG3JPFX57xlOsP09B8e5EaKhWmD3jWwzXmIK50klnoJNgPosCAq836Akw6uvVpd
	eKnQTJ/D1wwy+f2k8A1IRvof3DjpbCTvHYSdjySs5+fBNx5OehkwFKgBCvHmF3qQxV8u
	PwD+rF16B98j5Kl5NBGN2o5HAExPa/ewVKrYyKjzd/DqqZM2r1v7IoXXNSxMHcMqe9If
	Hk93eNWeF7IwL5cCPXmrOzaD8zDGTYb5dacuFDMDl3Kb99qVqCPO16eQxgSZjRkhuXv2
	rHnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=YN7dnPORUm3CwoDtn0cP+fbD69Lbd2Iyma1Hu+iFytc=;
	b=OxQ/l1U6H3yxAqq4mm35wWhx8d5I+MJJm+8/khL/TqAVjxmk2eXbSkO3kjGVLyXfCB
	inqZo/NIPwoR5QyAskwp0pVnV2tozED/aXiyWaWQjSNlXx762FhrFS7D/Zzla0iMUmQH
	Uy5jvpb9htEKzK/fQGkZ3OdHumLalYZUKO7NcUNyk5OilKEbbYa8RiH1DnriGj5R3d6e
	wQhP/O3rdx7OEsFwQtYVW0CcQQF9Rdo3wu+eAh6JTGmY7Rm+fJSTWpcKLIYNdjt0UAOK
	JGeuprE1p8yQD0Acx3AqgvK29VXh1ISJJiP5Na+Ston1S1unrpP5BihYMmVYupYDKeg6
	GZnA==
X-Gm-Message-State: APjAAAVI70iQyxxLcZlRXaaW1bY6i54AS8S1EQntLvMoGH6H9Q1Zii/9
	yWy0YOgA4wnwt11ou5RV2phPGMWB9NSwx/olbSop1Q==
X-Google-Smtp-Source: APXvYqxuXq/fu8yEZ3nNrEgIiyIdigJTeN1xh46vczQYVK3p7z3/PdtOorB/iVFLBS2bIlhRF6tHiWKsU6vPw6vLMOs=
X-Received: by 2002:a2e:2c14:: with SMTP id s20mr5517380ljs.54.1561713921893; 
	Fri, 28 Jun 2019 02:25:21 -0700 (PDT)
MIME-Version: 1.0
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Fri, 28 Jun 2019 11:25:10 +0200
Message-ID: <CAAx3WaCCs+z5ctCrmM25YHh84S2L9y+E85KnuDvKNNFqe304Uw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Getting a package PV from another
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
X-List-Received-Date: Fri, 28 Jun 2019 09:25:24 -0000
Content-Type: multipart/alternative; boundary="0000000000008e2913058c5edb83"

--0000000000008e2913058c5edb83
Content-Type: text/plain; charset="UTF-8"

Hi all,

is there a way to get a specific package version from another?

Best regards,
Gabriele

--0000000000008e2913058c5edb83
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div>Hi all,</div><div><br></div><div>is there a way to get a specific package version from another? <br></div><div><br></div><div>Best regards,</div><div>Gabriele<br></div></div>

--0000000000008e2913058c5edb83--
