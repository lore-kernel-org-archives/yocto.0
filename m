Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CBAAEE00D50; Tue, 10 Apr 2018 23:19:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vincent.prince.fr[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3427E00D4A
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2018 23:19:50 -0700 (PDT)
Received: by mail-it0-f50.google.com with SMTP id t192-v6so16915665itc.1
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2018 23:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3Dvqe2itTxmFhdKw5cwKFpRnJIN1i+0yQ+0Vpn+7XCs=;
	b=rp42FEIcfHcVTu3yYdLiNiivMwJqKOn54DMxdzBbFsrQKpE99mGdpFkvOUQ8hEhDUR
	sM4Q08u+sNjxNV8zD97nyo3VJHXhXeFD7tQ0pZFiVj0ZwTxZXER4Sk9YZHqrYNUs9PZ1
	zpRORJix5cudU32hI2c1zdA6I4QFCQ//T0BkuNXFlQXnwYXPvnKCPyvfQeOZMksAQ0WS
	60DktHHGMCSNXdODw4H96uZII1F6aCpo6NvioqV2qlypwsQiRWYqSQRnsLZLjA7p9o/k
	+MJR/XaZ7HQkvg7f6WoSUoedV3Dh2/0AC8Sv/8TT1sRI2/BwQOkNhztiVuqHDl9m1Hkx
	5F7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3Dvqe2itTxmFhdKw5cwKFpRnJIN1i+0yQ+0Vpn+7XCs=;
	b=OLR0qhZmeFSu6RVPa4edkEU8tiSd9N0f7u0InOtGJm/87Q4ULTQN4hAg3vx6dFkgN5
	dtpMP45GRS0up98VO9o4eCqZjakZ7oRiq2EcWw1C/lvTyp9weM/dqyP9SXoDqvEyCwiR
	TYfnaPGQE73CMjh6WVaUeTGnQz/flg5sjnnbB4mKJpTxRHMRnvPk8H+MRrefaEqVdTVp
	Jec17cQlFjVXkfqSX7jqdVhpAJI/SpaJWzMOon4aKqkO5U59FUhuR+g3CCNUQWuBHi2N
	PqN5Fao52ARNlPS8vG/nzuuqO//bWR17WF/YlHtFug1NCKGflhC1lULjh1eixoKCiUnh
	3j2A==
X-Gm-Message-State: ALQs6tCPdBv3LgfnzamY+gNhAMuGpw1qd0AZ+0wmkuXX7l0tgnakdTDW
	Wnbu1rUhR4UaxhV4dzrzpe16mC83KcJVE/SdeUw=
X-Google-Smtp-Source: AIpwx487HXNun0hZv/M0idgONTvWY1dOinXxnt/+uOtrc6rEAzFYGCus4m1arOxPv0kiCl4ZkvP+DZ/x57kdc1JYjmE=
X-Received: by 2002:a24:2b48:: with SMTP id
	h69-v6mr2631962ita.30.1523427589643; 
	Tue, 10 Apr 2018 23:19:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.2.176.144 with HTTP; Tue, 10 Apr 2018 23:19:29 -0700 (PDT)
In-Reply-To: <trinity-1101ecc5-fcf9-4690-9f44-4ba6adb37022-1523269030673@3c-app-gmx-bs79>
References: <trinity-1101ecc5-fcf9-4690-9f44-4ba6adb37022-1523269030673@3c-app-gmx-bs79>
From: Vincent Prince <vincent.prince.fr@gmail.com>
Date: Wed, 11 Apr 2018 08:19:29 +0200
Message-ID: <CAB2nKc9rz_0q3+R8VM-rqKiGzipEWibdJy=oRUkCu__Kjz+pJQ@mail.gmail.com>
To: Arno Steffens <epsi@gmx.de>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Update a recipe to use newer sources
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
X-List-Received-Date: Wed, 11 Apr 2018 06:19:51 -0000
Content-Type: multipart/alternative; boundary="00000000000052612005698ca05b"

--00000000000052612005698ca05b
Content-Type: text/plain; charset="UTF-8"

Hi Arno,

You can find pretty much everything in mega manual
https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#extendpoky

Yocto uses layers to override recipes, so there's nothing wrong to use
newer version in yours.

Regards,
Vincent

2018-04-09 12:17 GMT+02:00 Arno Steffens <epsi@gmx.de>:

> Can you please help me?
> For one or 2 packages I need newer sources than available via yocto. Is
> there a guide what and how I have to modify (or better copy, modify and
> add???) a recipe where the only change is a newer source code release? I am
> aware that this can create trouble, but sometimes I need a bugfix that it
> is only in recent versions available.
> Thank you
> Arno
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000052612005698ca05b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Arno,=C2=A0<div><br></div><div>You can find pretty much=
 everything in mega manual=C2=A0<a href=3D"https://www.yoctoproject.org/doc=
s/current/mega-manual/mega-manual.html#extendpoky">https://www.yoctoproject=
.org/docs/current/mega-manual/mega-manual.html#extendpoky</a>=C2=A0</div><d=
iv>Yocto uses layers to override recipes, so there&#39;s nothing wrong to u=
se newer version in yours.=C2=A0</div><div><br></div><div>Regards,</div><di=
v>Vincent</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">2018-04-09 12:17 GMT+02:00 Arno Steffens <span dir=3D"ltr">&lt;<a href=
=3D"mailto:epsi@gmx.de" target=3D"_blank">epsi@gmx.de</a>&gt;</span>:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex">Can you please help me?<br>
For one or 2 packages I need newer sources than available via yocto. Is the=
re a guide what and how I have to modify (or better copy, modify and add???=
) a recipe where the only change is a newer source code release? I am aware=
 that this can create trouble, but sometimes I need a bugfix that it is onl=
y in recent versions available.<br>
Thank you<br>
<span class=3D"HOEnZb"><font color=3D"#888888">Arno<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--00000000000052612005698ca05b--
