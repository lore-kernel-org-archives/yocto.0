Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A62D7E00C5C; Wed, 31 Jul 2019 09:16:38 -0700 (PDT)
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
	*      [209.85.217.66 listed in list.dnswl.org]
Received: from mail-vs1-f66.google.com (mail-vs1-f66.google.com
	[209.85.217.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28DFBE008E3
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2019 09:16:37 -0700 (PDT)
Received: by mail-vs1-f66.google.com with SMTP id m23so46573269vso.1
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2019 09:16:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=usFPam1ZUZBQmuSJCkRl2fFvLuJT444NTa+jRN+HvP4=;
	b=EHTVz6IeT0bFyADZbYshq+pjivShEbCDovFGLGDUn8qSwPiFw7aUOd7bZmlPXwW+S3
	afmQoFiznkrc1Mw0Pjzj6NQWc8EiMAEvHvS0P1Et/kpApuVhyJqaqDzXFh8k0k+SStWM
	xUvHUXdFZCZaunTpruTKcpOmoP+D62NJ1u24iNhMML5ofzhLWXfPGuVf5r+pjlSrPPyh
	I3ctMmO6XCUi0YXda1KpOzbcHmzpcv5iyovky7eAqN9HsLFPFdlRtr7oiMiZz/PF5CPG
	sBzhHsKkfVBUnTLdKOvXjGcPgSXbjbaKKsQiAEAcD9NO+JIfLZNX+7bkPYF5xqELmBpo
	vHSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=usFPam1ZUZBQmuSJCkRl2fFvLuJT444NTa+jRN+HvP4=;
	b=HLd/TsfGUXPrys4wr6MRfmopQBFF5REAPAU8IImLVsy0wh+HYi+DS+mhSwLYjjD0hY
	wZuFYdmk50l20WuEPDEB+/9rvEIh9ETep2LSGWb9tIguFMgxnmRoUCkCq3Khy0GBrJDf
	NB+sR6oIbMB4tlNaWIUg/G7UW3otMjo45CdPjDzMlJOtXeHdq2nTY+YnT5mEa+e0SYbw
	3Cz6tLGcfxiIjrvFwLU6E7W4DcYJzkOfkwi6CNITJzuYwjGwT3y5JnvylclLqdWWzmOO
	YQSRBp0P48ADD2Swu9rR7AuAitRujk2MF79ZD3VplIIdlgCPNrvDNrt8caaHC+TQ7uy/
	TRPA==
X-Gm-Message-State: APjAAAXusu9t7qD27YXZGj/re3Cz4Q9vyJd4v5QFs1K8CB/PVDbP3phW
	uClVaMbP3HQ7UXCAcDXBvlz9q4rncxxAR9FZI/pm1amk
X-Google-Smtp-Source: APXvYqwyHGTDl5m07VbcdYyBULDxZyyLvHXEylPk+UKVIyqklODpBor3opWIE5ThKhCeuZneWMAw1D0QxcumyBUt7nQ=
X-Received: by 2002:a05:6102:db:: with SMTP id
	u27mr10068029vsp.83.1564589797486; 
	Wed, 31 Jul 2019 09:16:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190513162531.45297-1-alex.kanavin@gmail.com>
	<CANNYZj8MvEUjB-w+JjBRtbTnjw=B--L36+nXOVDAjzf+suxtcw@mail.gmail.com>
	<c545bc49-effe-629d-213c-55d52adcf5c8@dynamicdevices.co.uk>
	<CANNYZj8jy+r9k3WhgpbkzOBKtGoUdiM2PD5Sng_8GgiQ3Z_7sQ@mail.gmail.com>
	<ada9f29d-a922-d7db-a62f-a41ec5ac7cc4@dynamicdevices.co.uk>
In-Reply-To: <ada9f29d-a922-d7db-a62f-a41ec5ac7cc4@dynamicdevices.co.uk>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 31 Jul 2019 18:16:26 +0200
Message-ID: <CANNYZj8Ti7+KC5_zLpS8jL3SNvqe8_jGN5eY40FZ1stSxN0oJg@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-mono][PATCH] mono-5.xx: fix an issue with too long paths in doltlibtool
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
X-List-Received-Date: Wed, 31 Jul 2019 16:16:38 -0000
Content-Type: multipart/alternative; boundary="00000000000019323e058efc73e5"

--00000000000019323e058efc73e5
Content-Type: text/plain; charset="UTF-8"

Awesome, thanks!

Alex

On Wed, 31 Jul 2019 at 17:04, Alex J Lennon <ajlennon@dynamicdevices.co.uk>
wrote:

>
> On 18/06/2019 11:58, Alexander Kanavin wrote:
> > Ping #2!
> >
> > Alex
>
>
> Apologies for the long delay! The patch is in finally...
>
>
>

--00000000000019323e058efc73e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Awesome, thanks! <br></div><div><br></div><div>Alex<b=
r></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Wed, 31 Jul 2019 at 17:04, Alex J Lennon &lt;<a href=3D"mailto:a=
jlennon@dynamicdevices.co.uk">ajlennon@dynamicdevices.co.uk</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
On 18/06/2019 11:58, Alexander Kanavin wrote:<br>
&gt; Ping #2!<br>
&gt;<br>
&gt; Alex<br>
<br>
<br>
Apologies for the long delay! The patch is in finally...<br>
<br>
<br>
</blockquote></div>

--00000000000019323e058efc73e5--
