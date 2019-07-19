Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63A17E00BAA; Thu, 18 Jul 2019 22:58:13 -0700 (PDT)
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
	*      [209.85.208.182 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com
	[209.85.208.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBBF6E00A96
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 22:58:11 -0700 (PDT)
Received: by mail-lj1-f182.google.com with SMTP id p17so29634377ljg.1
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 22:58:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=DrDFhDlVDGz++xnNx+KUfbKQc/43+xHHwKYc1kLDSA0=;
	b=H/dJEAIn0lynasHhYUr/VBEPhodV/5RoCrYllYuEvwF+Cq7dCYoqsAaLZdIcsYNzo0
	dSRn0fZKzvsKA7vvyXTCfMmpDW3wM2qTUx4cBUJqcpx/dRJkjVvqNx36oK0VmqMLXPCj
	jkZZuf5n5GyaoJUR04a1JF2JGAvZgNyRiRISldGFu2M83GqH4XYuHHML6ewyKxAkAn/J
	WLRBAuvDeprn2NdKAIybgZP5XAv9g3eXS7Eub0Csf4zPXl+CpEcubZcta9Yp3Y7rKkml
	n5lgYZlM9EgKXkU1rZG5NP252Hvte7jp2evBhFSgR2fMrCmQ8pKwZRjNEZWZNkY3sTgz
	Igiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=DrDFhDlVDGz++xnNx+KUfbKQc/43+xHHwKYc1kLDSA0=;
	b=kCMJzateyBXCAq1ybnwdOOhfaBbLu2SMHms/4rBen/F5PR+z5TzZjU31c6uAWtdnDa
	+/m1yj6dikWX2TfpxM41f/j97Xrp3LTejB6cZKQZkC9e6pMgd8yWfUy3pFIaxTpvfSmk
	0lmcynVMgGbHwA/Wvqid9dg+T/ReRo5z6q0Fsocik5TUx4cOy7dX6K9r4iSbEWqjpdA1
	OGgAL9tEcQ7rQRFe0KCxaHpAAXmeAm5ObZZ1eqEq2YDU/PArfR67L/5xelILiCxy6LAT
	FjzKHMwl/QLOUTJpSL274AhyNhiYwWtP+bRF7VC3mhMOUp8DBABuQh/amvR/IBj1TgK0
	PU5A==
X-Gm-Message-State: APjAAAWGsi62aJtq+nRj0fa7phUbNOgLvZJS2FWwgtLOzifV4q0/E/Fg
	LgHbHyY+IJSmls+A0rDP1dZDYfHLMjvunUBGVlM=
X-Google-Smtp-Source: APXvYqxV58ern38AagL4xHwYuh5ZaECJoRq45JcSCzpEFKPAR9Up8gzqp7wctaeu+GIzjHYkFSBCQ4BG/EoM45RNhWQ=
X-Received: by 2002:a2e:98c9:: with SMTP id s9mr870430ljj.176.1563515890806;
	Thu, 18 Jul 2019 22:58:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAF_dkJDbqR8yPWRYX_2wT+Pk1+cuNcntWizg3hhZnA_vVVwnaA@mail.gmail.com>
In-Reply-To: <CAF_dkJDbqR8yPWRYX_2wT+Pk1+cuNcntWizg3hhZnA_vVVwnaA@mail.gmail.com>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Fri, 19 Jul 2019 07:57:59 +0200
Message-ID: <CAAx3WaDTteqencYsxrb+1a_TgR8cazNUJ7-3VX9VxeePQkmRoQ@mail.gmail.com>
To: Patrick Doyle <wpdster@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to specify a different kernel for an image
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
X-List-Received-Date: Fri, 19 Jul 2019 05:58:13 -0000
Content-Type: multipart/alternative; boundary="00000000000045b2dd058e02694d"

--00000000000045b2dd058e02694d
Content-Type: text/plain; charset="UTF-8"

Hi,

you could define two machines, where the manufacturing one is just an
overlay of the production one. If the two kernels differs only for their
config, you can specify different defconfig based on machine. If you need a
completely different kernel, just specify
PREFERRED_PROVIDER_virtual/kernel in manufacturing overlay

Best regards,
Gabriele

Il giorno gio 18 lug 2019 alle ore 23:27 Patrick Doyle <wpdster@gmail.com>
ha scritto:

> Hello All,
> I have a situation where I need to build an image for my machine with
> a different kernel than is specified by
> PREFERRED_PROVIDER_virtual/kernel.  But I also need to build the
> default kernel.  This is for a "manufacturing" image which will
> include the full production image, and then some (and, possibly,
> without some).  The kernel configuration needs to be different for the
> manufacturing image.
>
> What is the recommended mechanism to override the value of
> PREFERRED_PROVIDE_virtual/kernel in my manufacturing-image.bb recipe?
>
> --wpd
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000045b2dd058e02694d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi, <br></div><div><br></div><div>you could define tw=
o machines, where the manufacturing one is just an overlay of the productio=
n one. If the two kernels differs only for their config, you can specify di=
fferent defconfig based on machine. If you need a completely different kern=
el, just specify=C2=A0 PREFERRED_PROVIDER_virtual/kernel in manufacturing o=
verlay</div><div><br></div><div>Best regards, <br></div><div>Gabriele<br></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">Il giorno gio 18 lug 2019 alle ore 23:27 Patrick Doyle &lt;<a href=3D"m=
ailto:wpdster@gmail.com">wpdster@gmail.com</a>&gt; ha scritto:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">Hello All,<br>
I have a situation where I need to build an image for my machine with<br>
a different kernel than is specified by<br>
PREFERRED_PROVIDER_virtual/kernel.=C2=A0 But I also need to build the<br>
default kernel.=C2=A0 This is for a &quot;manufacturing&quot; image which w=
ill<br>
include the full production image, and then some (and, possibly,<br>
without some).=C2=A0 The kernel configuration needs to be different for the=
<br>
manufacturing image.<br>
<br>
What is the recommended mechanism to override the value of<br>
PREFERRED_PROVIDE_virtual/kernel in my <a href=3D"http://manufacturing-imag=
e.bb" rel=3D"noreferrer" target=3D"_blank">manufacturing-image.bb</a> recip=
e?<br>
<br>
--wpd<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--00000000000045b2dd058e02694d--
