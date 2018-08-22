Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F06DBE00A85; Wed, 22 Aug 2018 07:44:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86167E00566
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 07:44:18 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id q204-v6so3532418oig.9
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 07:44:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=+Gf2DSve03osmw6OJLxRDwUJvTRCTamaIyBSuCpPtqQ=;
	b=mv4uSHjzGPxj6f3+vbcP+UyT6xQqiFLlQkc8Fxmqn+6q9oa1RFrsLgsyghTExr8A3B
	9GEOp/5VG2KVbNthwZhzCq3T9yqggW1sPExW8LhO+ghjcw5OipkvFjnuAkUEOAQLC6tR
	pDDIoWIwXgaH1kWebjLlGWF2FWOz6vFxZDTV/e9E/8fQ+nSIPAJMnlOHNTLBkjaHjCMl
	Bnqv21YiR+r+keSuMV6nQpM+yBHmCNzjiNVzq4oCxlawRl8+gWn8ew/sIu2HOLXaBglS
	zlQfcT0CClpR0h7zeioq8b7B368CJvEj01vFL0ioGaMmku2JvJ6vcfKuB6e/ageynUT8
	iZ+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=+Gf2DSve03osmw6OJLxRDwUJvTRCTamaIyBSuCpPtqQ=;
	b=ZQtbBQABW6RXvm70ZhJVp/iWWcPcJ/w4p7BVdQpa2vHXFGMy4lOvYp2OVebYlM/OKp
	eiYKuT6LvXZY9klADk9h0djbP6Nwi32/P2Zd1hpI735Kdo//4SPVIMeGhMcrvD5g15ra
	tJXjw0OtE5D+07okW3XAwSkTsbv04D3MJznx9Ee/Vm4kaDbiQ1pSEYVCfciq8IWXRrd8
	Uw0pYLSaOmBNQw2Z/NkXcxTCJXV2JHYPuAQmb5AkrBPraZsPRRWDnrvRya6jbl5+YZug
	263GK4JQ3Qlf3qy4KG57SzGQ+vvv1+bB27yj+zGLgnjEtLJ0lcvTy5r6tsz6aNpMlQ1b
	xkqA==
X-Gm-Message-State: APzg51CAgkqwO6KOxJ3N3OdwrnUHiJaXMm4qY3Dm7dxnsMZv+LXiPFxG
	s6TqlYKLv9yENj/Axdi1BhIxmh/KeOmxNlqV48E=
X-Google-Smtp-Source: ANB0VdaZbaZ6qiJeN1jDKw5shZy87AjDMV73OuiEnmuYOeJpQqvAMmjvKHO1L3tY4ARCMJykzTELvk8Ig2BOrDGWtSY=
X-Received: by 2002:aca:edd8:: with SMTP id
	l207-v6mr2596179oih.65.1534949058015; 
	Wed, 22 Aug 2018 07:44:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90ed:0:0:0:0:0 with HTTP; Wed, 22 Aug 2018 07:44:17
	-0700 (PDT)
In-Reply-To: <6bdfdff49ca04924979eba1da729d7e1@AUSX13MPC104.AMER.DELL.COM>
References: <6a084eda5fcb4423a647bb998471e26d@AUSX13MPC104.AMER.DELL.COM>
	<CANNYZj8A22yL9VU0Wp3OOXwZU6yR=fQXqeWSfKykDp_kkL6ZGQ@mail.gmail.com>
	<6bdfdff49ca04924979eba1da729d7e1@AUSX13MPC104.AMER.DELL.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 22 Aug 2018 16:44:17 +0200
Message-ID: <CANNYZj-gjb+iycamFEp6y3WCAjvek9Y0rEA5bbTUavw36GhL=Q@mail.gmail.com>
To: Jack.Fewx@dell.com, seebs@seebs.net
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [pseudo] Pseudo 1.8+ xattr sqlite corruption
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
X-List-Received-Date: Wed, 22 Aug 2018 14:44:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

2018-08-22 15:58 GMT+02:00  <Jack.Fewx@dell.com>:
> I should add that the same problem exists in Poky 2.5, and top of Pseudo =
git repo.  The problem was introduced, best I can tell, was when the entire=
 Pseudo database structure was rewritten.  As a result of the major overhau=
l messing with patches is problematic to impossible.
>
> If Pseudo is not a part of Poky proper, yet is a completely integral part=
 of the build, is there a better place to field this question?

The pseudo man is Mr.Seebs :) Let's gently ping him about it.

Alex

