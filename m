Return-Path: <karim@gillani.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EE53E00B57; Sat, 28 Jul 2018 23:00:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.221.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EBD3E006EC
	for <yocto@yoctoproject.org>; Sat, 28 Jul 2018 23:00:53 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id j5-v6so9143323wrr.8
	for <yocto@yoctoproject.org>; Sat, 28 Jul 2018 23:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gillani-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=7gWcriBSpyealW+8d9wjzhBPJMU9x2HGqrRkc/pTUUA=;
	b=VDV9QcG+lyws99qat9aSDL2eXIUsfbcOTEayBdQKa8Lib9LhqftzC29Myx1Z3L3jKW
	aOdq44Gd6cPdQZmfhOcASfTw+lTIiODoiTrirWU3yc0Q3EhJyh0wEuTwsZXyGnip0sh0
	andKVnhSo5aDpT/5Sn3HTCgeMmPDZq6EkHtswYhHAmGPslmpq+HlYCa9mlkvQ0+0kRrV
	EdrXv4fHwraPmQv5r6cTQ3rK12nPWog2iE5q+P0u9XLQjE/bKYA8A4lpG6IPQfM04O0e
	WZ8N7fzSWxTUKhG/AyQpBtbZ5p27t0tO4UB4jXpLKwTioHBSq1MWNfPYRVkKLjRuB7xW
	CXnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=7gWcriBSpyealW+8d9wjzhBPJMU9x2HGqrRkc/pTUUA=;
	b=QpXCe871fiM9c0P9sFGWwcr21sTVzrACCbRBoK16emSqi/TzrV5L9qYkfyUrXO7TGu
	iNWYUPOgQdIi8fsnFTwYwqk9vW9M/+8aR+6Yxbp7W/DBogDRWZKG55nBxLJsuHxk18qy
	G8nJde3DElS1xPa7cnoKS58/AFzz6qHhGhVUQ1uGg4b+T2PPsy34Sc+Eid0LlxyLiwYA
	/xVckPBPC6MKvaA4XEjkMSlCdfdQzlBPLzZysnwDcsiALIq4o1frQT54KhWGwQ6JSrbQ
	HNtIzWxKx9SlftdCYXxjs9BkjdlFmm8fLm+RcC5xgeVh0bx8mZaLdwevBIKoz3xbyHAt
	gYIw==
X-Gm-Message-State: AOUpUlEeejHTE+rsKUtqwWZmpuptI1iJYYpc3Z8T11IA/IKRX9tluBZ1
	su5tCc+uLQMeDZfKvaWALY8J9vvghIl+Lw9zbKowEcuSXEo=
X-Google-Smtp-Source: AAOMgpdZxjhGLLN9egrrvf6QqUkCFXhocwbXQ1FIXAH8Qfmofoy0oH2W+gGwAvlgItHWpDXzb9qK4M3KVqASqolOXUg=
X-Received: by 2002:adf:e0cc:: with SMTP id
	e12-v6mr11842120wri.199.1532844051906; 
	Sat, 28 Jul 2018 23:00:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a1c:e1d4:0:0:0:0:0 with HTTP; Sat, 28 Jul 2018 23:00:51
	-0700 (PDT)
X-Originating-IP: [70.66.183.99]
In-Reply-To: <CAN3t-YCYAT417M2TMLrS=5MsMR0r2Vb6a6MU5=yUv6FzE82VzA@mail.gmail.com>
References: <CAN3t-YCYAT417M2TMLrS=5MsMR0r2Vb6a6MU5=yUv6FzE82VzA@mail.gmail.com>
From: Karim Gillani <karim@gillani.org>
Date: Sat, 28 Jul 2018 23:00:51 -0700
Message-ID: <CAN3t-YCfEv3PeTXjAOyRywuTk4=to47OcbeN=JJYYN5v2-w76Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: File copy to bootfs
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
X-List-Received-Date: Sun, 29 Jul 2018 06:00:54 -0000
Content-Type: multipart/alternative; boundary="00000000000035d98805721d1128"

--00000000000035d98805721d1128
Content-Type: text/plain; charset="UTF-8"

This commands places the file in the /boot directory but then a script used
within rootfs can't see it.

install -m 0644 ${WORKDIR}/config.txt
${DEPLOY_DIR_IMAGE}/boot/sbcconf/config.txt

The next command puts it in a place where the rootfs can access it, but I
can't access the file in the fat partition.
install -m 0644 ${WORKDIR}/config.txt ${D}/boot/sbcconf/config.txt

Any suggestions?

On 28 July 2018 at 21:47, Karim Gillani <karim@gillani.org> wrote:

> Is there an easy way to copy a couple of files to the $bootfs  (/boot
> directory)?
>
> when I copy files there, they show as if they are in /boot but they are
> not on the bootfs partition.
>
> Thanks
> Karim
>

--00000000000035d98805721d1128
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This commands places the file in the /boot directory but t=
hen a script used within rootfs can&#39;t see it.<div><br></div><div>instal=
l -m 0644 ${WORKDIR}/config.txt ${DEPLOY_DIR_IMAGE}/boot/sbcconf/config.txt=
<br></div><div><br></div><div>The next command puts it in a place where the=
 rootfs can access it, but I can&#39;t access the file in the fat partition=
.</div><div>

<span style=3D"font-size:small;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial;float:none;display:inline=
">install -m 0644 ${WORKDIR}/config.txt ${D}/boot/sbcconf/config.txt</span>

<br></div><div><br></div><div>Any suggestions?</div></div><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote">On 28 July 2018 at 21:47, Karim Gi=
llani <span dir=3D"ltr">&lt;<a href=3D"mailto:karim@gillani.org" target=3D"=
_blank">karim@gillani.org</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex"><div dir=3D"ltr">Is there an easy way to copy a couple of files to t=
he $bootfs=C2=A0 (/boot directory)?<div><br></div><div>when I copy files th=
ere, they show as if they are in /boot but they are not on the bootfs parti=
tion.</div><div><br></div><div>Thanks</div><span class=3D"HOEnZb"><font col=
or=3D"#888888"><div>Karim</div></font></span></div>
</blockquote></div><br></div>

--00000000000035d98805721d1128--
