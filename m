Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1238EE00920; Mon, 19 Aug 2019 02:45:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.41 listed in list.dnswl.org]
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com
	[209.85.222.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B65BE008F2
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2019 02:45:14 -0700 (PDT)
Received: by mail-ua1-f41.google.com with SMTP id j21so435241uap.2
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2019 02:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ZQJZphtiE5oCvNjzDqo5Jn9yHmNr/D9tXwihaqIZDwM=;
	b=vWGEWlHRZ4yYH/zuvS12JcSLiSlZuKP+TAFEoIPyfah5zuuSNzje3iMKvw9zdW3RFT
	tmDiG6A/79MAxTJBC08hGBF3PLUvdQMwgZrNwORCpNtCLzz53S/uSmwHmoFyRy15vbj9
	RN1iBQeGFkDjGDhSoWY15lnF82JfO/yyX2xrxynGOwlo7by5gWKcp1H4oXhv3jEbF/2f
	WyupXx9OLn4gASSFQxXD5GaR8a4GGDflMMNN/fHYdIGaINlKM7IMCJvIhxR9nD/D+beL
	A4+QWXEXZ9ttkZQfqWTf6cRHDyxLkncKox+RGF3Sczlb4pBngfvufLlCLF4wXnVigUNj
	E45A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ZQJZphtiE5oCvNjzDqo5Jn9yHmNr/D9tXwihaqIZDwM=;
	b=HzIDQ9yJMRBklRn7qk+uXF9iW9jviUuM54tLhTpyY0ZXtII11jJsDnWWAZfut85nUd
	ggkg6AHen6aNz/761QhRGkI9Lxy3g901ITMZVIPD1jF3DdpeQuj3ahoAyGaIuLyg0IVh
	W0G6d10Btu+bsLEy5DlLCkpLNYvssK9cz270NlzkIWDaMkZjCfZSPgv9H8CGKFAulCQx
	D03DYsOYXb8Q05qAoj9lw0GWYbfDr5Rk0hTGIqCcPzpLMj0aaVM6eMxPu826kpUtqa/w
	i5PgCfGon4XKChSUpdzkovPHKioc+Wb29Tx3citceem0Md/HtnWbxOqokF9AZJe6bie0
	PC3g==
X-Gm-Message-State: APjAAAWtwXYZCB+9xnNPzW2fl7nbVHgSXZtTLtEy3uIei5l9VkmVZhrx
	RpIztZPnQZQlXZGhZlcwEbJdGPe3l7Xub8k7UB8=
X-Google-Smtp-Source: APXvYqwYiOkIklccQACrm0fsPom+3ejCABbvZgiD5iiq5XTV3pOsYB8a4rL0ivk5l0FmW369JxNpde9JJsYKFyjDzVE=
X-Received: by 2002:ab0:30ae:: with SMTP id b14mr11796727uam.22.1566207913921; 
	Mon, 19 Aug 2019 02:45:13 -0700 (PDT)
MIME-Version: 1.0
References: <8d19660badcf4d2582319413d9b3f86f@DE36S004EXC61.wp.corpintra.net>
In-Reply-To: <8d19660badcf4d2582319413d9b3f86f@DE36S004EXC61.wp.corpintra.net>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 19 Aug 2019 11:45:02 +0200
Message-ID: <CANNYZj-tX4saPL-Oh8tGSmYUC4ZGtUtKybYMFQ8s-UJ_maPz7Q@mail.gmail.com>
To: julia.ghelych-khani@daimler.com
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Ticket Purchasing Yocto Conference in Lyon
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
X-List-Received-Date: Mon, 19 Aug 2019 09:45:15 -0000
X-Groupsio-MsgNum: 46321
Content-Type: multipart/related; boundary="0000000000005abb9705907532a1"

--0000000000005abb9705907532a1
Content-Type: multipart/alternative; boundary="0000000000005abb9605907532a0"

--0000000000005abb9605907532a0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 19 Aug 2019 at 11:38, <julia.ghelych-khani@daimler.com> wrote:

> some of our colleagues would like to join the yocto after the linux
> embedded. Unfortuntely I can=E2=80=99t find any website or link where a t=
icket
> purchasing is possible. Is it possible to receive any information on the
> purchasing process and when it will start?
>

It is right here:
https://events.linuxfoundation.org/events/embedded-linux-conference-europe-=
2019/program/co-located-events/

There is a link that lets you modify an existing registration by adding
'extras' to it, and yocto summit is one such. You need a registration code
for the original conference that came with the confirmation email.

Alex

--0000000000005abb9605907532a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, 19 Aug 2019 at 11:38, &lt;<a href=
=3D"mailto:julia.ghelych-khani@daimler.com">julia.ghelych-khani@daimler.com=
</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_4183177649523902363WordSection1">some of our colleagu=
es would like to join the yocto after the linux embedded. Unfortuntely I ca=
n=E2=80=99t find any website or link where a ticket purchasing is possible.=
 Is it possible to receive any information on the purchasing process and wh=
en
 it will start?=20
</div></div></blockquote><div><br></div><div>It is right here: <a href=3D"h=
ttps://events.linuxfoundation.org/events/embedded-linux-conference-europe-2=
019/program/co-located-events/">https://events.linuxfoundation.org/events/e=
mbedded-linux-conference-europe-2019/program/co-located-events/</a></div><d=
iv><br></div><div>There is a link that lets you modify an existing registra=
tion by adding &#39;extras&#39; to it, and yocto summit is one such. You ne=
ed a registration code for the original conference that came with the confi=
rmation email.</div><div><br></div><div>Alex<br> </div></div></div>

--0000000000005abb9605907532a0--

--0000000000005abb9705907532a1
Content-Type: image/png; name="image001.png"
Content-Disposition: inline; filename="image001.png"
Content-Transfer-Encoding: base64
Content-ID: <16ca942c3294cff311>
X-Attachment-Id: 16ca942c3294cff311

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
hOlIIduVAAAAAElFTkSuQmCC

--0000000000005abb9705907532a1--
