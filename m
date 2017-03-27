Return-Path: <ma@telensa.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B737EE00A9A; Mon, 27 Mar 2017 01:30:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f43.google.com (mail-pg0-f43.google.com [74.125.83.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5842EE00524
	for <yocto@yoctoproject.org>; Mon, 27 Mar 2017 01:30:44 -0700 (PDT)
Received: by mail-pg0-f43.google.com with SMTP id n5so25293939pgh.0
	for <yocto@yoctoproject.org>; Mon, 27 Mar 2017 01:30:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=telensa-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=5xJPgY31co6DmLNmWepq2dyBz6WBBBrT6FUlCiLnjEY=;
	b=owLu/mNAch29mgpl/hgXC599tpuobwrzJSCq/XFmHnaYpNH6E9SzsmTPceszxjJ0tq
	FxBE8ylyxsBZWF6T6COgl4mTKUJD51gy9Tt0I6OC4CTC43PATUny0fzER01DwEF6MIdI
	eV1cZIE9UByD5wAabIzJsUxXdxBjnLiWRJYTIXlVlxDBT9PrGX303gLwidrl6imDgK/9
	Ej10Igr4gOqCTXNd2dvZITgnF1lTZvKu0xO2GC/zZGqUL8rMmOjJtLJzMO1VIrCAsbDb
	TvgOHcv2M2hnqQNTkQ2vTXzkRbnmMhsAix+UHtv9kEp2rjK4kSEhH5YKp+dUQkQFfQjN
	Ujig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=5xJPgY31co6DmLNmWepq2dyBz6WBBBrT6FUlCiLnjEY=;
	b=SM7uniSTcVYi8CqsnrPbOB/INITCCjexBFW2+t8V0rzGL9bwCEWrBIaw3vVL5G/8gC
	zJocNvOY1l2DQkGwHLWfXvOsxpkbf1KLaQ9+xqN1N7a3aGbONXKi0ARpyC7Ukf16JFUF
	gd2epX0g3zVrkjneoP1R124/D7N/oH8M+6pY3X/xaHrC9N4kw7bBAQgJUKjdiey38MF5
	yvODuVlzjMUqkm6b1S+toBRcyT1cye/to1v02sr85IwboO10Bm+neGdSP+WoTHGsr3fo
	vH9/dgrEEBRLJbjHP9u7N4MZlcDOz8+oqHubtZrIQH3t0BkD3XS4JJ9yeAvqQaQtZV1A
	KxCA==
X-Gm-Message-State: AFeK/H3BwJNqzo9s7WVMwQA5suNsbv1nZys4k92SqCMauDhHceVxmL9PEjLH1DGkc9qI/s+w4cK9Q9RoFNucKdUu
X-Received: by 10.84.215.149 with SMTP id l21mr21450848pli.31.1490603444383;
	Mon, 27 Mar 2017 01:30:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.164.99 with HTTP; Mon, 27 Mar 2017 01:30:44 -0700 (PDT)
In-Reply-To: <CACfW1NpQWCVS+KrF6-mH7ELj=nKrmnvv0-1dagw260qbDQ_YsQ@mail.gmail.com>
References: <CACfW1NpQWCVS+KrF6-mH7ELj=nKrmnvv0-1dagw260qbDQ_YsQ@mail.gmail.com>
From: Miguel Aveiro <ma@telensa.com>
Date: Mon, 27 Mar 2017 09:30:44 +0100
Message-ID: <CAPZBU9ansuvSnRKcnAy=crzdUD4W3BnhUL3wdka7Andwq+1EPg@mail.gmail.com>
To: Munagala Naresh <munagala.nareshbabu@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: CPU profiling at thread level
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
X-List-Received-Date: Mon, 27 Mar 2017 08:30:46 -0000
Content-Type: multipart/alternative; boundary=f403045cd20acdcd71054bb22804

--f403045cd20acdcd71054bb22804
Content-Type: text/plain; charset=UTF-8

Hi Munagala,

You're are probably using ps and top from Busybox. You can check this
looking at the output of:
ls -l $(which ps)

If so, you can enable *procps* package and have the full version of ps and
top.

Regards,
Miguel Aveiro

On 25 March 2017 at 16:12, Munagala Naresh <munagala.nareshbabu@gmail.com>
wrote:

> Hi Team,
>
> To analyzes the CPU load consumption of a particular process, we need to
> find the thread level consumption. Default *top *and *ps *utils are not
> supporting all the parameters that are available in Linux/Android.
>
>
> Could you please suggest some alternatives which works in openembeded
> platform?
>
> --
> Regards
> Naresh Babu
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--f403045cd20acdcd71054bb22804
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Munagala,<div><br></div><div>You&#39;re are probably=C2=
=A0using ps and top from Busybox. You can check this looking at the output =
of:=C2=A0</div><div>ls -l $(which ps)</div><div><br></div><div>If so, you c=
an enable <b>procps</b>=C2=A0package and have the full version of ps and to=
p.</div><div><br></div><div>Regards,</div><div>Miguel Aveiro</div></div><di=
v class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 25 March 2017 at =
16:12, Munagala Naresh <span dir=3D"ltr">&lt;<a href=3D"mailto:munagala.nar=
eshbabu@gmail.com" target=3D"_blank">munagala.nareshbabu@gmail.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><span styl=
e=3D"color:rgb(31,73,125)">Hi Team,</span><br><br><span style=3D"font-size:=
11pt;font-family:&quot;calibri&quot;,sans-serif;color:rgb(31,73,125)">

</span><p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">To analy=
zes the CPU load consumption of a particular process, we need to find the t=
hread level consumption. Default <b>top </b>and <b>ps </b>utils are not sup=
porting all the parameters that are available in Linux/Android. <br></span>=
</p><p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><br></span>=
</p>

<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Could you pleas=
e suggest some
alternatives which works in openembeded platform?</span></p><span class=3D"=
HOEnZb"><font color=3D"#888888">

<div><br>-- <br><div class=3D"m_3443772256608569521gmail_signature">Regards=
<br>Naresh Babu=C2=A0<br><br><div><br><div><br></div></div><div style=3D"pa=
dding:0px;margin-left:0px;margin-top:0px;overflow:hidden;color:black;font-s=
ize:10px;text-align:left;line-height:130%"></div><div style=3D"padding:0px;=
margin-left:0px;margin-top:0px;overflow:hidden;color:black;font-size:10px;t=
ext-align:left;line-height:130%"></div></div>
</div></font></span></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--f403045cd20acdcd71054bb22804--
