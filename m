Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DEF48E00D32; Sun, 14 Jul 2019 23:45:21 -0700 (PDT)
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
	*      [209.85.208.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
	[209.85.208.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40304E00942
	for <yocto@yoctoproject.org>; Sun, 14 Jul 2019 23:45:21 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id m23so14927166lje.12
	for <yocto@yoctoproject.org>; Sun, 14 Jul 2019 23:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=DwQgOMluRWnRGb0N8KLPYNgZJ4CuxT8eYDCVho0/wPQ=;
	b=WnPgTOY47xzA34q9pxNnR9ZRk/gj5wHAv21j83Y+l3KVzRbVbb4b1g/gZcC3CQl0ez
	5CqZ6vpCEotlHLfMtrNz6RrRVXN5Aapv3zKEnut+H/2TLB6OQ9h40iHG4fhPvPoCpl4x
	iPiIEUsQlI0q4UdSkDWhBe4hr2CWMDYo0TGnO0S986uOAn/UN9+x3h7PkgXrjo6vXcRG
	zp+wDEDUL8N0TOkty20gyEm2Rpt1ynfM+LW+ldFLdI3Ak5gjzJZghmcq7KHXSGo2ttEQ
	6QnNVV9N9K3YnzQ21VN2XxErj0H1VjRkJDyLbFvuINwsiAkRwx5eoNgJUCkP3QpCphvc
	IlvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=DwQgOMluRWnRGb0N8KLPYNgZJ4CuxT8eYDCVho0/wPQ=;
	b=V+6ziVMpuJCK9AorBpJOLI4vYr+EnC6FiNnxN/Q3zvEQ26lMg6suILFpKoU56a/5K4
	TQB1NB28Y73VkdPMwxwp2gMQU3DWwki3F3x2hS2E2jxYuzFJGTXIAOrZK9D1jzSIwRvV
	bS9Gonj93JomSqeaUliRjsmjI3QTXPJTVhyjmQZEXG1dCvMiq7s7LDHPmbPRgKoxkZJs
	xw2stitnqrPKoUouyDJi+HgyWlVxKbE+l8RXKrEv/ryVlOVZWKtsiLbUO+wK4ZTSuFee
	bXQwRuRQZ5ZmfeELYtWwOhVHMH6IgY0NlicflIZyQxq1d9VsgymWV4LVVn9Zy6SAad+K
	RVXA==
X-Gm-Message-State: APjAAAUKuyR0lki1jtV2w3Quy2wRoFwCW3ElFgYuO85XhAHsogf8SuOB
	/fNM1nAU9lbu8FVvPVZvj5D/46NUFYXazF84r1k=
X-Google-Smtp-Source: APXvYqwoywxv9yJSjJIJdhiOT4na0ClhH7ibjltt8jI380mIgzlgxSl9+DSzmch926Vr3j3lftn7pWrxZs2G3nfOT9I=
X-Received: by 2002:a2e:98c9:: with SMTP id s9mr13255500ljj.176.1563173120434; 
	Sun, 14 Jul 2019 23:45:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWTkikzH-X=GxuJ3YgA9MBwRu0UCtnt-O0mZrbjOrELDgw@mail.gmail.com>
In-Reply-To: <CAA=hcWTkikzH-X=GxuJ3YgA9MBwRu0UCtnt-O0mZrbjOrELDgw@mail.gmail.com>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Mon, 15 Jul 2019 08:45:09 +0200
Message-ID: <CAAx3WaD0FMBZDjT8eYBBVsvcFCD-S3wRR9hiR5ifB2cAJs8y_g@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Where to add U-Boot argements bootargs and bootcmd?
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
X-List-Received-Date: Mon, 15 Jul 2019 06:45:22 -0000
Content-Type: multipart/alternative; boundary="00000000000090e931058db29ac4"

--00000000000090e931058db29ac4
Content-Type: text/plain; charset="UTF-8"

Hi,

as far as I know, there is no mechanism to add custom bootargs and/or
bootcmd to uboot via Yocto (correct me if I'm wrong). I usually patch the
upstream uboot to achieve this task.

Best regards,
Gabriele

Il giorno lun 8 lug 2019 alle ore 22:43 JH <jupiter.hce@gmail.com> ha
scritto:

> Hi,
>
> Which Yocto files and which statement can I add my own U-Boot bootargs
> and bootcmd?
>
> Thank you.
>
> - jupiter
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000090e931058db29ac4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi, <br></div><div><br></div><div>as far as I know, t=
here is no mechanism to add custom bootargs and/or bootcmd to uboot via Yoc=
to (correct me if I&#39;m wrong). I usually patch the upstream uboot to ach=
ieve this task.</div><div><br></div><div>Best regards, <br></div><div>Gabri=
ele<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">Il giorno lun 8 lug 2019 alle ore 22:43 JH &lt;<a href=3D"mail=
to:jupiter.hce@gmail.com">jupiter.hce@gmail.com</a>&gt; ha scritto:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
Which Yocto files and which statement can I add my own U-Boot bootargs<br>
and bootcmd?<br>
<br>
Thank you.<br>
<br>
- jupiter<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--00000000000090e931058db29ac4--
