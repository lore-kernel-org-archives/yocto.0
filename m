Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB4C2E00D20; Wed, 25 Oct 2017 10:40:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f54.google.com (mail-pg0-f54.google.com [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D3EBE00CD4
	for <yocto@yoctoproject.org>; Wed, 25 Oct 2017 10:40:28 -0700 (PDT)
Received: by mail-pg0-f54.google.com with SMTP id g6so537586pgn.6
	for <yocto@yoctoproject.org>; Wed, 25 Oct 2017 10:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=yINtOTZ1BH+Psu3vW6KAzesK163wWcgFPyTzHXc84Qs=;
	b=lUaey9Ex3lpUZ8ByBYVXVHFu9RYpRT606e/qNIMxGj94nyapMk3t1jDZt+82k4RxEm
	kZeqjxgYUJcGqzU6Jv7vLxdKuObGAayC/ys+7rZg/hKj1BW7+zgPEOI//1+gOJQQe2oS
	0G6/plx/Olg0XLh83btwaCFT/6ZVIPizm9rsak6SZDxC8MF1qZFomgENpKhpEntOqUIm
	L1IaAKYHWMbX5nmZgsRn/hg3DvCS/CSJBTKhpvuZLsKQ6Ud/s8wsXvRuHIIIGhpgVOg5
	kITSS4C0GCQJZi0TrC2u7GcpuTnwsy3VKwTj3ZmUizS6ZU0ZUguFXxPgPPBhm1oBS6qy
	Bj4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=yINtOTZ1BH+Psu3vW6KAzesK163wWcgFPyTzHXc84Qs=;
	b=GYU0RR16GmsGAIp2wkQTvN/14H7x2ecJ0x6fZHOm6X7lvOV6+PlFw04OQeI6gaIEnj
	bXMDjXFqNDbrb/NSwnLObYPk/B2tlmyXmelSXBva92MEhrE1tjSEkRcUBUDostRD0oV0
	Dkm3b4CXbtrcCasLtMiOiyi29pjDGq/RIStzuqbRdakLK/16ATHBS5jmmTO9swltWRes
	vPp9iuDm4h8ErPs4diif4vVeWHyuC6bnpYPkoI2JebdfBlVatmimLRvnGzc1bJZPoWzG
	jjrfaYHBPArMeWnoCx3NzAPn7ZbFxKCc087i35Lkc+n74/bqmqKK3C3dZWcoQhsyEx7j
	mOlw==
X-Gm-Message-State: AMCzsaXSAo8OTiT/dXwYcAkU34dgZqmwwKR5/VBDK1dXTrtXSd+wnwYq
	EscWN/e0BsXmv38DAz0KzJrqcgdigiUKb6HK52Y=
X-Google-Smtp-Source: ABhQp+TzmXSttxwHHoukuoOamy4JJLV+vgCb7ufsfYH6TNYJJ8kbT2sEEuERi07xFUkTtBSWTmfo5nIt8uoGRtb61RI=
X-Received: by 10.84.151.70 with SMTP id i64mr2316144pli.114.1508953228441;
	Wed, 25 Oct 2017 10:40:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.187.66 with HTTP; Wed, 25 Oct 2017 10:39:58 -0700 (PDT)
In-Reply-To: <CAPyrkgxOa749tUa55nK+XZ9UJBcEHU718KEhN4GW+t4c70U7EQ@mail.gmail.com>
References: <CAPyrkgxOa749tUa55nK+XZ9UJBcEHU718KEhN4GW+t4c70U7EQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 25 Oct 2017 10:39:58 -0700
Message-ID: <CAMKF1sotGjCB6k0-GA-p_0436WhS=yWao2+Q7gSQTSny6Q9W5Q@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Rocko branch maintenance
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
X-List-Received-Date: Wed, 25 Oct 2017 17:40:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 25, 2017 at 1:50 AM, Paul Barker <pbarker@toganlabs.com> wrote:
> Hi all,
>
> I'd like to put myself forward as stable branch maintainer for
> meta-raspberrypi again. The plan is to maintain rocko for 12 months in
> line with the Yocto Project's current maintenance period. I'm
> currently looking after pyro and I think it's gone well over the last
> 6 months. Obviously, pyro will also continue to be maintained until
> it's around 12 months old.
>
> However, if anyone else wants to help spread the load then feel free
> to step forward and propose yourself for rocko branch maintenance.
>

you are volunteered :)
good luck

> Cheers,
>
> --
> Paul Barker
> Tog=C3=A1n Labs Ltd
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

