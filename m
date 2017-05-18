Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBCFBE00B47; Thu, 18 May 2017 14:37:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.41 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f41.google.com (mail-wm0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9F32E00B43
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 14:37:31 -0700 (PDT)
Received: by mail-wm0-f41.google.com with SMTP id v15so67095997wmv.1
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 14:37:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=FrFzMJ/PaOHGjbOteBEsPSYkxG5K7coxhLvu4Sv8HE8=;
	b=gvM1+SGMF3Jtj2oCemZJFc2++w9UpxD1BwpO4uU3d7BznsQLCKAQSbM4Jkvk3vl9mJ
	YYbQB0YiqtJSbeON6Lxyc8IR/fGVshPea7uFszcOZgysYx0qvlhZDREs33jZ8zsAQ2BR
	Lj2bR4e8uB5cBbHzPwDPucb4BcB1deh4fr0rLCgqQWi/71R9xeLNcoznLRmfWzJFh3i6
	xtquzJdTrYWkC+WsjJlBV+uyP57cHLx3vmMpQqBPzsOgO+ecANwPRSnqP707hcHuPDb5
	CEWnhvxwxAN7aitVzfo6M7USQ2SQYHrVkJcT1uVt4swnNHLXRaDhqJdn2pVtogJpcmvl
	EMLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=FrFzMJ/PaOHGjbOteBEsPSYkxG5K7coxhLvu4Sv8HE8=;
	b=dBj7fPCF3U7bh0a/3mV5FUZcQhtuDJL01/4vgR8Ogey5ahNHOPOPCjuFqS2guQtNf9
	jgKD31xE08fdybjJVUWX96vFkbTQHw/rAfwiQcqKg/WcagYGuWJFkJ4w29CPO8hReTi4
	v4P06XbV/NW21O5PXy7wmwB2zSB/1UxjN8oLyAmm26Uy2h4dp27ou6kntjmfzMX3K8Gz
	kF6aBpphhu/YLcRfE7dt9+1WkobhOyvJvczobHVfb3XajCzQA9JBhgv+872Oaw1yyGkK
	fpsd6ONbTZlvKWqJkXBi9JTnz+E6zewE8uQaFwgkVsQ62qVoDwwBS1qG3ZZJy7gHTX2U
	A/wA==
X-Gm-Message-State: AODbwcDwK6PnR1DfLu7upsV7O5Ni3Ognt18oZzhVGHeAVbw83+Oo7Fe9
	at/mcm3rj3Ce3AkZXMK08CgVfBYoyQ==
X-Received: by 10.28.30.145 with SMTP id e139mr15251110wme.129.1495143450345; 
	Thu, 18 May 2017 14:37:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.128.65 with HTTP; Thu, 18 May 2017 14:37:29 -0700 (PDT)
In-Reply-To: <TU4PR84MB01765722C800C08E3BCD3286EDE40@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
References: <TU4PR84MB01765722C800C08E3BCD3286EDE40@TU4PR84MB0176.NAMPRD84.PROD.OUTLOOK.COM>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Thu, 18 May 2017 16:37:29 -0500
Message-ID: <CAJdd5Gbe5trB0yjzQoLDzhSO=fYrrh+cR=NiX-QbO7Lac+034A@mail.gmail.com>
To: "Koehler, Yannick (HPN Aruba)" <yannick.koehler@hpe.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [poky/classes] [PATCH] new alternatesrc.bbclass
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
X-List-Received-Date: Thu, 18 May 2017 21:37:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 18, 2017 at 1:11 PM, Koehler, Yannick (HPN Aruba)
<yannick.koehler@hpe.com> wrote:
> In our environment, we have package that are store inside git in their ow=
n repo.  Using SRC_URI we fetch the code and build it from the git repo its=
elf and all is fine.  When developer wants to change the content of the pac=
kage, they had to clone, change, commit, push and only then they were able =
to test because yocto recipe clone/fetch from the git server only.
FWIW, our devs keep their own private bitbake layers that they add
locally to bblayers.conf. In these layers they add .bbappends that
override the SRC_URI for recipes they are interested in to point at
local repositories.

