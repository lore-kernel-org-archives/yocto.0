Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5778E00D59; Mon, 17 Jun 2019 10:33:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F520E008F2
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 10:33:14 -0700 (PDT)
Received: by mail-qt1-f172.google.com with SMTP id w17so5300536qto.10
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 10:33:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Nq+AyuPVUcHypW4nM3zLAq4iz4jmFEYdv9cyut/B19U=;
	b=C6YHXXXoxi7ILB8DgJei2wZEP/LqDbkYL+v7k4to3YnM7RwVbsmFgSx1Fs2KZRdZs2
	YIyk7BMW3UL9vppjU/LDwFS2xsAFqHhdfQZ4av9yEB18dPDwtkNSSVPFuci1fwJ6mND+
	EsCRe/020NdLFzrT9kkpwAClSFEINyhXdyoLThwmL0+opeIZ44lva5RkzjQshwB3sxbC
	KJuaXCGDsLbWIUIKskKSHa7nTBpUvhkKe9vmjgSigmRODE7ahtA0ZlzsoVrJ37GnPXcV
	erW9Z1wTM03AQZWzBMs0lWdcnKHEoqsILzs2U2shD7iz8U2VqZrEtSduPAyIRSXEbLlm
	gaHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Nq+AyuPVUcHypW4nM3zLAq4iz4jmFEYdv9cyut/B19U=;
	b=P/OszRClYhEu32SB6qqU0gyzdfk0C/EZyuOnqXHo4/Y8lvmleWBQFJaDr6hGemQn0K
	qHCT8wNhpbIpSPZt6c6ZeQc6/izzkKHBameA4Tw2gpfpgpv0LedeWVNZI6yMysF6PpCY
	6izNE04wU5oLGk+VjEFR6v3UPsKjcl7+b4VqTIkBOIx7XB2eDCot4KTTqFf/e7fqHtf4
	a3cvcBkpnErltv2pMnitFFF2H+0u5yRovTn/I5lt+iy3yGuVJW+yQgbxUfzghnkyGJur
	hRBAzRdZh9ePWzTMmxedIX77qoYbnQLmgWkGA91rW3fPMbMse5lk1z9VcQyuJQmUHqIK
	M/6Q==
X-Gm-Message-State: APjAAAVsQh2iZ6oQMWjlGbvKuqCakYyHj76RiYqO4kvSxvNamB1PMarR
	sCBdzRRWudMAHBxczAT/X+ivrVXcix3iZhOzVeA=
X-Google-Smtp-Source: APXvYqzEeb1RO5CFyd1vPTpZKFyRzxBLfQqbUlKpQA1QNEKVtekHxzEW20qOrjdHg1Od6vYgkOOBvpdzsOP1hjGDdLo=
X-Received: by 2002:ac8:42d4:: with SMTP id g20mr95504311qtm.78.1560792792693; 
	Mon, 17 Jun 2019 10:33:12 -0700 (PDT)
MIME-Version: 1.0
References: <trinity-1bbd10a3-ee46-4746-90c7-0b5a49a62f26-1560772981350@3c-app-gmx-bs08>
	<CA+chaQc3qoGgfaCuxh15DmdNb3BuZJKEWcam6NkZX3auvOLtzA@mail.gmail.com>
In-Reply-To: <CA+chaQc3qoGgfaCuxh15DmdNb3BuZJKEWcam6NkZX3auvOLtzA@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 17 Jun 2019 19:33:01 +0200
Message-ID: <CAGAf8Ly9zs=oCrwRu1HvJJgnrAusKwut44grK3OmoQ_z774-Ug@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Arno Steffens <star@gmx.li>, Yocto Project <yocto@yoctoproject.org>
Subject: Re: cortexa9t2hf instead of cortexa9hf
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
X-List-Received-Date: Mon, 17 Jun 2019 17:33:14 -0000
Content-Type: text/plain; charset="UTF-8"

> Because of that I copied Alex and Ross to CC: into email, so they
> should unveil this mystery (I would prefer "armv7" to stay in bitbake
> 1.42, since A8 and A9 belongs to armv7, A15 belongs to armv8 (IIRC).

Sorry, my bad. A15 still belongs to armv7. And now I see/understand
why you removed "armv7". Well... Time Will Tell if this is a good
decision! ;-)

Zoran
_______

On Mon, Jun 17, 2019 at 4:29 PM Martin Jansa <martin.jansa@gmail.com> wrote:
>
> See this oe-core commit (from 2.6 Thud):
>
> commit c88304a78e528596ca481cabe273749c286c352a
> Author: Andre McCurdy <armccurdy@gmail.com>
> Date:   Fri May 18 15:50:40 2018 -0700
>
>     arch-armv7a.inc: default to Thumb2 instruction set for armv7a and above
>
> which enabled Thumb2 by default, if you want to disable it as it was before set ARM_INSTRUCTION_SET to "arm".
>
> On Mon, Jun 17, 2019 at 2:03 PM Arno Steffens <star@gmx.li> wrote:
>>
>> I switched from Yocto 2.5 to 2.7 and recognised a new architetcure name.
>> Instead of cortexa9hf it is now build for cortexa9t2hf? Did I do something wrong or what exactly does this t2 mean?
>> Target system is a Zynq7020 system.
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

