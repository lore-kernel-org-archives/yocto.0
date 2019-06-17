Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A612E00D68; Mon, 17 Jun 2019 07:29:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.51 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
	[209.85.208.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD33BE00D4C
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 07:29:22 -0700 (PDT)
Received: by mail-ed1-f51.google.com with SMTP id i11so16506049edq.0
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 07:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Sa/AJV2gLq7xEOwsWb4dCVj5sEC5uDUy940oiIlQ7Sw=;
	b=P2WbmDtFeSSdbsG5oqSQ3DQc9cDC5CkKjIBuR51kNcSdmL1bsbhz2aLVryUFIeuZ+G
	EAsHnrUXmX1W5gGQ4mp2Kmw69OHeJGzCUJzg/tm1uJz0qtTxAzF8QCYn99PjrRjTLvgI
	OkoF2/yb5efAAJ9OQP6cTK7WRwpRqQahlZLxAPcI061P3Ejvts25TCKkf2o6I5T4LJL0
	CTSTjGw7oXVYPoiRq6EFMvkshcsVhsVuZ0hCho8E3qBfpSHM8XCZMyYUhcZQqe8xbCh7
	sLO/6tvomV1WIZXy8d3ap9apU4dqjtLI2kf6TSIAfctp30mN92Q1XvJdRmVPg2lkm2UJ
	Y9aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Sa/AJV2gLq7xEOwsWb4dCVj5sEC5uDUy940oiIlQ7Sw=;
	b=QJA0bz1vZM7NEwzrZAYbpml/mWdQvNnJ8V8plUKr0mfsodEvyLJI0wPBFunfe5vKOc
	MPbFS8HASsUscWgm5Wn+GHkO3uId7+wCZQpH+92Z0T3YLJmCXzsk8X+rTYDMpAcowUPc
	E3y9YtGf/vmlY9xQ3G3hw/dlZ/OiK6dc1PWChmsYm1E0mPQIZH7n6kUXFuGLpeS5aSA0
	ftJIJhz0j2nKYJxcXsSydAynLft3bZ68n8P++2UdGr5FjWQrcMcquYMayS5l5m6BTd5W
	TPGSQNDmXiOCoMHfktYmP3L59eRHZKRVRW1vz3IKIrpLQyM99b66s01xuNCuJvEyrL1I
	gy4g==
X-Gm-Message-State: APjAAAXjx2PMdDNmexptfb2Qz/A8y5FBfJ5gTO/P2Ts0fbPdqt9+pLjk
	By1UuRYSfDbUCrBn7ct07sc0Q8m342snHUHx7lSLxrfF
X-Google-Smtp-Source: APXvYqyS5gA+iChqzuIMEijB7fkzpye6cblL7KfwkD8pb6VPjq2I0lqdzDiDDBUcr0WQVY+0ggz7LwxOKoLsAPnGYVc=
X-Received: by 2002:a05:6402:6d0:: with SMTP id
	n16mr56811217edy.168.1560781761607; 
	Mon, 17 Jun 2019 07:29:21 -0700 (PDT)
MIME-Version: 1.0
References: <trinity-1bbd10a3-ee46-4746-90c7-0b5a49a62f26-1560772981350@3c-app-gmx-bs08>
In-Reply-To: <trinity-1bbd10a3-ee46-4746-90c7-0b5a49a62f26-1560772981350@3c-app-gmx-bs08>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Mon, 17 Jun 2019 16:29:09 +0200
Message-ID: <CA+chaQc3qoGgfaCuxh15DmdNb3BuZJKEWcam6NkZX3auvOLtzA@mail.gmail.com>
To: Arno Steffens <star@gmx.li>
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 17 Jun 2019 14:29:23 -0000
Content-Type: multipart/alternative; boundary="00000000000078fc68058b85d2d0"

--00000000000078fc68058b85d2d0
Content-Type: text/plain; charset="UTF-8"

See this oe-core commit (from 2.6 Thud):

commit c88304a78e528596ca481cabe273749c286c352a
Author: Andre McCurdy <armccurdy@gmail.com>
Date:   Fri May 18 15:50:40 2018 -0700

    arch-armv7a.inc: default to Thumb2 instruction set for armv7a and above

which enabled Thumb2 by default, if you want to disable it as it was before
set ARM_INSTRUCTION_SET to "arm".

On Mon, Jun 17, 2019 at 2:03 PM Arno Steffens <star@gmx.li> wrote:

> I switched from Yocto 2.5 to 2.7 and recognised a new architetcure name.
> Instead of cortexa9hf it is now build for cortexa9t2hf? Did I do something
> wrong or what exactly does this t2 mean?
> Target system is a Zynq7020 system.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000078fc68058b85d2d0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>See this oe-core commit (from 2.6 Thud):</div><div><b=
r></div>commit c88304a78e528596ca481cabe273749c286c352a<br>Author: Andre Mc=
Curdy &lt;<a href=3D"mailto:armccurdy@gmail.com">armccurdy@gmail.com</a>&gt=
;<br>Date: =C2=A0 Fri May 18 15:50:40 2018 -0700<br><br>=C2=A0 =C2=A0 arch-=
armv7a.inc: default to Thumb2 instruction set for armv7a and above<br><div>=
<br></div><div>which enabled Thumb2 by default, if you want to disable it a=
s it was before set=C2=A0ARM_INSTRUCTION_SET to &quot;arm&quot;.</div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mo=
n, Jun 17, 2019 at 2:03 PM Arno Steffens &lt;<a href=3D"mailto:star@gmx.li"=
>star@gmx.li</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">I switched from Yocto 2.5 to 2.7 and recognised a new architetc=
ure name.<br>
Instead of cortexa9hf it is now build for cortexa9t2hf? Did I do something =
wrong or what exactly does this t2 mean?<br>
Target system is a Zynq7020 system.<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--00000000000078fc68058b85d2d0--
