Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA4E6E00DE6; Tue, 10 Jul 2018 11:50:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f176.google.com (mail-pf0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B3D2E009AC
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 11:50:41 -0700 (PDT)
Received: by mail-pf0-f176.google.com with SMTP id y8-v6so16688507pfm.10
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 11:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=GdfBs8J6FdJ/SS8t9CDN0dAUsdX98h5J5ePDB0QgViE=;
	b=T/4JWf2niqOCEa9oLZMUYh/ULka5CQOi5DY4aMRgGSPAAZR1xuGfBT6QC+h6CJ6WRW
	zzUFtyIKxYXllQP+aRW1LuQpDs/EMA0NDdMNSwBgQZKPHUCGBlhyFq3EU1gyUC6sWtco
	UcmJnfsCM64kffjUIlG5KTmXzgZCGRSBEVKcONLdVBGf4agcaPpdvw6ijk17ejJEGqu4
	tvlOt97JpkalPfS2YULGqyFVwxr9PKBXiuo/l9r8B6gL30kKwlnV7BN8IIqnjWlIWksX
	BosKvity3L3vTUPp71HjxegNjpaqhCK4p1TAigIwimZeUDdEenO4KIafH/Sc34U4DEXi
	RjcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=GdfBs8J6FdJ/SS8t9CDN0dAUsdX98h5J5ePDB0QgViE=;
	b=bKCFYWGlPMO11+e7Y5glDvUy7z22F5+XoSKY8F7Q9xSyR/39hPkWtncO8GvGmaqJ5F
	54JnSehodPYG7CKyTOdiUowkYQSzJL8oxVstKrxumTc+IJq5dSkAmDeI8xMcc1rASRh/
	jpYU6aRPbmG+5dY8TWO0IqRZgHp4srZyYCkib0LmTqiyGYvjZaD6aOuqxPVDpNRHxo9k
	LljZR+nmpV9bSuEuY6DKzlYj5eyO+uR7vtW8L/q0nhUA2KKAlOTbT5s/+iP0MWgPxvG1
	nUkUyKNAERYrF8aFXrOKm9YEy4cX9fd96AQt/FH6hOHuhA/EPLwmeQ9uFUrRAotqHIVe
	rivw==
X-Gm-Message-State: APt69E0wr0jE9bQqmvvN8S+LCyT/TPIkxoCZZXhebVU7pzXdoPlaLJre
	Zy3gSJm0Q4vAkyugNcAsY0hMqvgFJACbxO2ocThRBw==
X-Google-Smtp-Source: AAOMgpd2J9WPeBRY51bcOMWdaQc54nrakTyWzbKgliVqfB9zpSoAAHUcfkHKtkakSbE4taLeWeWkBk0seBWN/wXepks=
X-Received: by 2002:a62:2605:: with SMTP id
	m5-v6mr26951283pfm.223.1531248640858; 
	Tue, 10 Jul 2018 11:50:40 -0700 (PDT)
MIME-Version: 1.0
From: Michael Habibi <mikehabibi@gmail.com>
Date: Tue, 10 Jul 2018 13:50:29 -0500
Message-ID: <CAOsp8o-2V=xNk4aEB9HfV9j=aHdW=bgyOqcCg13QJqQ2APSOHA@mail.gmail.com>
To: Yocto <yocto@yoctoproject.org>
Subject: Hook for layer-only actions?
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
X-List-Received-Date: Tue, 10 Jul 2018 18:50:41 -0000
Content-Type: multipart/alternative; boundary="0000000000004d1d0f0570a99b67"

--0000000000004d1d0f0570a99b67
Content-Type: text/plain; charset="UTF-8"

I was wondering if there is a way I can apply a global modification to all
recipes in a layer? For instance, we have our own layer for our changes
that sit on top of the base Yocto/OE layers.

What if, hypothetically, I wanted to insert a do_package_qa action
globally, for everything in our layer. Is there a way to codify that,
beyond actually adding this to every recipe in our layer?

--0000000000004d1d0f0570a99b67
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I was wondering if there is a way I can apply a global mod=
ification to all recipes in a layer? For instance, we have our own layer fo=
r our changes that sit on top of the base Yocto/OE layers.<div><br></div><d=
iv>What if, hypothetically, I wanted to insert a do_package_qa action globa=
lly, for everything in our layer. Is there a way to codify that, beyond act=
ually adding this to every recipe in our layer?</div></div>

--0000000000004d1d0f0570a99b67--
