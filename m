Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9596E00C89; Mon, 25 Sep 2017 11:56:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.42 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7583E009F5
	for <yocto@yoctoproject.org>; Mon, 25 Sep 2017 11:56:00 -0700 (PDT)
Received: by mail-it0-f42.google.com with SMTP id d192so231384itd.1
	for <yocto@yoctoproject.org>; Mon, 25 Sep 2017 11:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=HhHkbo0wSFA1w+nsnfRi+IeDZfW/38ENr/1lYcHDOiA=;
	b=EZDXoA9R2msLPjkqLLXyhcS/yiwbJX/JKLaNZEisCJbOUsL0dcnXn5t92ta2Gg8I13
	jdjQpD8r733Cxm4LLo1hvfntzBLrxBIWj8r0v5g+3LUdD/VeCsdlZsz+0Z3eiKnQcxIT
	GKbudYw14G8S+TRKI0RYk3VPmqY6XALpWOPb+SbPUpGVjBkIOv9mO3GPKgjN0BzhS14w
	AtHvzaqKjYxxNQuxPiGrq78CQX5CoX8f6NHHmmk+kTp2hUSu8ru7+RBIuk4BupRUPQur
	J7HYsa9tMXy6oco+LpJBDfWKAoerDnRUknr5rsX24j9eoMMH03rfTg0aH5eg7Upv9v7p
	2f9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=HhHkbo0wSFA1w+nsnfRi+IeDZfW/38ENr/1lYcHDOiA=;
	b=tuNeAtltya68lWwxgFIQF4sL59beA9SWeCmOrOvjuayqCbCEnXCrqT5FXYOtimEC47
	FhlMnsL9PytvOCuv+C5MVJkckHfl0xmCwRyUyGdKpZfZ8bNx6j9ALEYDJh9XKAofTaFr
	iTvRit+WjUVp0fXE64d0/e3wFZ4kY66k6rdYCsWA1ikk9Ja2xf7yO9USvJ56iJLZOh82
	SoorA05DZ70DNIZCEIz0N02AYOMLdCa4JTqFCCYW1vKy1HhNOiyODSsS8tgJXMJLXe5b
	NW7DFiwatbcGgrCWhCadkqEZt0yv0aRrXKDjxQ6id9g7lZehIRaT4jAS/BcK0GlxzufT
	lqrA==
X-Gm-Message-State: AHPjjUgseW7NkFhrlrvTd3PpP5DeqvbM5Psqjyeq2DEgernMkKPLs6Mp
	oNc89J/IYP6K3sKRs53+7s3noRpLyqj2MyRKi/eLvA==
X-Google-Smtp-Source: AOwi7QD75ACNUqKaLqjZCBZuUYqWv7Huy5M7+8DnR9djlKi88ET3yzZ9LEEJqbXOfiTx7StHlPWCKt91QrquPoZfWj0=
X-Received: by 10.36.181.73 with SMTP id j9mr1976172iti.6.1506365760323; Mon,
	25 Sep 2017 11:56:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.19.68 with HTTP; Mon, 25 Sep 2017 11:55:39 -0700 (PDT)
In-Reply-To: <CAFQ+Dij+yJFtAyMnAQ_-3T5HJRzf0V9ZcxiSe1S59ZHQz1-gSg@mail.gmail.com>
References: <CAFQ+Dij+yJFtAyMnAQ_-3T5HJRzf0V9ZcxiSe1S59ZHQz1-gSg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 25 Sep 2017 19:55:39 +0100
Message-ID: <CAJTo0La=g2tyQu1Uac6213PPwb+XE+hCvL+S7YD3YbJ86DU3ng@mail.gmail.com>
To: Marco <cavallini.koan@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Unclear sstate-cache dir permissions
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
X-List-Received-Date: Mon, 25 Sep 2017 18:56:02 -0000
Content-Type: multipart/alternative; boundary="f403045d9e420c0355055a081c65"

--f403045d9e420c0355055a081c65
Content-Type: text/plain; charset="UTF-8"

I'm guessing one of the users has a different umask to the other, so is
writing directories with mode 755 instead of 775.

Ross

On 25 September 2017 at 19:41, Marco <cavallini.koan@gmail.com> wrote:

> Hello,
> I am trying to share a sstate-cache between two (or more) users in a
> shared directory.
> Although I set the directory owner, group and permissions I face to a
> weird condition that I don't understand.
> Particularly why some directories don't have the group write
> permisisons that drive me to a buld failure for mambers of the group.
>
> I wonder if I am doing something wrong or I have an unexpected issue.
>
>
> koan@kmobile:sstate-cache$ ll
> totale 1028
> drwxrwxr-x   2 koan devgroup 4096 set 14 15:32 00
> drwxrwxr-x   2 koan devgroup 4096 set 14 14:37 01
> ...
> drwxr-xr-x   2 koan devgroup 4096 set 14 15:31 1d
> drwxrwxr-x   2 koan devgroup 4096 set 14 15:31 1e
> ...
> drwxr-xr-x   2 koan devgroup 4096 set 14 15:32 27
> drwxrwxr-x   2 koan devgroup 4096 set 14 15:32 28
> ...
> etc...
>
>
> Any help would be greatly appreciated.
>
> Thank you
> --
> Marco 'mckoan'
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--f403045d9e420c0355055a081c65
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m guessing one of the users has a different umask to=
 the other, so is writing directories with mode 755 instead of 775.<div><br=
></div><div>Ross</div></div><div class=3D"gmail_extra"><br><div class=3D"gm=
ail_quote">On 25 September 2017 at 19:41, Marco <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:cavallini.koan@gmail.com" target=3D"_blank">cavallini.koan@gma=
il.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hello,<br>
I am trying to share a sstate-cache between two (or more) users in a<br>
shared directory.<br>
Although I set the directory owner, group and permissions I face to a<br>
weird condition that I don&#39;t understand.<br>
Particularly why some directories don&#39;t have the group write<br>
permisisons that drive me to a buld failure for mambers of the group.<br>
<br>
I wonder if I am doing something wrong or I have an unexpected issue.<br>
<br>
<br>
koan@kmobile:sstate-cache$ ll<br>
totale 1028<br>
drwxrwxr-x=C2=A0 =C2=A02 koan devgroup 4096 set 14 15:32 00<br>
drwxrwxr-x=C2=A0 =C2=A02 koan devgroup 4096 set 14 14:37 01<br>
...<br>
drwxr-xr-x=C2=A0 =C2=A02 koan devgroup 4096 set 14 15:31 1d<br>
drwxrwxr-x=C2=A0 =C2=A02 koan devgroup 4096 set 14 15:31 1e<br>
...<br>
drwxr-xr-x=C2=A0 =C2=A02 koan devgroup 4096 set 14 15:32 27<br>
drwxrwxr-x=C2=A0 =C2=A02 koan devgroup 4096 set 14 15:32 28<br>
...<br>
etc...<br>
<br>
<br>
Any help would be greatly appreciated.<br>
<br>
Thank you<br>
--<br>
Marco &#39;mckoan&#39;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--f403045d9e420c0355055a081c65--
