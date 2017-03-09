Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44533E0093F; Thu,  9 Mar 2017 06:30:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.170 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.170 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f170.google.com (mail-ua0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4FFCE008D0
	for <yocto@yoctoproject.org>; Thu,  9 Mar 2017 06:29:57 -0800 (PST)
Received: by mail-ua0-f170.google.com with SMTP id q7so66722509uaf.2
	for <yocto@yoctoproject.org>; Thu, 09 Mar 2017 06:29:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=FMJjLnhx82i1dIHzlmweeIDi7jq3+1e5cTGCH3CLWNI=;
	b=HV3N4TmR0Bb5SchYwTfQ9xNYLhefI4zZCEWDgXRNdgjC6moSWb9vzxQEPeNslftTHI
	syvF94qjkJG6XXHztHafkrzOm3LGMaV5GSlrSeDsnn03ntSHFYo6ZmCW/LToftMaBhtj
	0dgj24LhU73ABKmSFvmjFBEXHCCEUK6EN9bDauLcWU5JInPldiPyccnJWQu52TYWrR06
	94ef0DhVzZHTqGuoT8C7zpYzfxSJ13Lmjyf8HHGUostbGYdY+KAmPPlv/AUcrKJU3rt8
	ubPopI13WqbD7vrG6KbZCkitSXYY2U8xw6b6+jdyllArQUs0QajvVRD/vaCV/BCzoKe5
	3+fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=FMJjLnhx82i1dIHzlmweeIDi7jq3+1e5cTGCH3CLWNI=;
	b=ofLcMnuXCruDgzn8LQZXJY171n50f2iGw9KxXWVbHiX6g6MOu+9WQcOOe9hQokW4uk
	xFe50FdqBpinfMqgA/tEcOKnbhbDCbg5jj7x1Vk/UPNazlYX2uLEjyKtkitp3QLa4Paf
	Deib6J9vszlMV6sVEA2ulI1gnCHNI9HdMXk7FtU+hbdpxh1Kv3Fcqtxja8RbahP960A0
	J3l4nZqXS15GGbtgBJlFxft5/mRh0M9H2GWCQ1RDhzGXOb+8uYeUSt/qJU7TiFpqInBo
	VeeIhYPa8CNsz6z8ibV5gz2lMCGnY1pvEihp4ke55Dbf86Jqz8wocyZze5tOlYgjPq0Z
	L2Bw==
X-Gm-Message-State: AMke39kIxvrxN7MWECS6LOard9pMSDNS31dqIpNtY1JBY6KYqETXp3HnvRI+bIp2N/6hu+awlCLlEJea7ON3zA==
X-Received: by 10.176.75.196 with SMTP id b4mr6274295uag.69.1489069795295;
	Thu, 09 Mar 2017 06:29:55 -0800 (PST)
MIME-Version: 1.0
References: <3A90C4317711354D832A265F7C4DF966021BF28939@vistrex4.vi.vector.int>
In-Reply-To: <3A90C4317711354D832A265F7C4DF966021BF28939@vistrex4.vi.vector.int>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 09 Mar 2017 14:29:44 +0000
Message-ID: <CAMKF1spvkP-K1OcXGO_o57T_LjqOyW8SyNBHpyHGnNR7k4g-Rg@mail.gmail.com>
To: "Waldvogel, Sebastian" <Sebastian.Waldvogel@vector.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Source Code provision without full git repository history
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
X-List-Received-Date: Thu, 09 Mar 2017 14:30:02 -0000
Content-Type: multipart/alternative; boundary=f403045e1f6e321029054a4d1436

--f403045e1f6e321029054a4d1436
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 9, 2017 at 5:02 AM Waldvogel, Sebastian <
Sebastian.Waldvogel@vector.com> wrote:

> Hello,
>
>
>
> I am searching for a way in Yocto/BitBake to extract the source codes of
> the software applications developed by my company for delivery to our
> customers.
>
> The source codes shall be delivered as archive containing only the source
> files without the whole git repository history.
>
>
>
> Setup is that we have own Yocto layers/recipes referencing the company
> internal git repository (SRC_URI=3D=E2=80=9Dgit://git.company.url=E2=80=
=9D) and the concrete
> SRCREV to be used. Basic idea was to use the option
> BB_GENERATE_MIRROR_TARBALLS =3D "1" which generates an archive file with =
the
> application source code. Unfortunately the generated tarball contains the
> full bare cloned git repository with full history and not only the source
> files of the concrete SRCREV.
>
>
>
> As alternative I tried to use the archiver class
> <http://www.yoctoproject.org/docs/2.0.1/dev-manual/dev-manual.html#provid=
ing-the-source-code>.
> The generated tarballs contains the concrete source files but in addition
> the full git repository with history is contained too.
>

I am not sure if it is intended to keep SCM history though you might want
to file a bug

>
>
> Does anyone has an idea how to extract the concrete source files without
> git repository and history?
>
>
>
> Thank you very much for your help
>
> Sebastian Waldvogel
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

--f403045e1f6e321029054a4d1436
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote"><div>On Thu, Mar 9, 2017 at 5:02 AM Wal=
dvogel, Sebastian &lt;<a href=3D"mailto:Sebastian.Waldvogel@vector.com">Seb=
astian.Waldvogel@vector.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple" class=3D"gmail_msg">
<div class=3D"m_951676337911188163WordSection1 gmail_msg">
<p class=3D"MsoNormal gmail_msg">Hello,<u class=3D"gmail_msg"></u><u class=
=3D"gmail_msg"></u></p>
<p class=3D"MsoNormal gmail_msg"><u class=3D"gmail_msg"></u>=C2=A0<u class=
=3D"gmail_msg"></u></p>
<p class=3D"MsoNormal gmail_msg">I am searching for a way in Yocto/BitBake =
to extract the source codes of the software applications developed by my co=
mpany for delivery to our customers.<u class=3D"gmail_msg"></u><u class=3D"=
gmail_msg"></u></p>
<p class=3D"MsoNormal gmail_msg">The source codes shall be delivered as arc=
hive containing only the source files without the whole git repository hist=
ory.<u class=3D"gmail_msg"></u><u class=3D"gmail_msg"></u></p>
<p class=3D"MsoNormal gmail_msg"><u class=3D"gmail_msg"></u>=C2=A0<u class=
=3D"gmail_msg"></u></p>
<p class=3D"MsoNormal gmail_msg">Setup is that we have own Yocto layers/rec=
ipes referencing the company internal git repository (SRC_URI=3D=E2=80=9Dgi=
t://git.company.url=E2=80=9D) and the concrete SRCREV to be used. Basic ide=
a was to use the option BB_GENERATE_MIRROR_TARBALLS =3D &quot;1&quot; which
 generates an archive file with the application source code. Unfortunately =
the generated tarball contains the full bare cloned git repository with ful=
l history and not only the source files of the concrete SRCREV.
<u class=3D"gmail_msg"></u><u class=3D"gmail_msg"></u></p>
<p class=3D"MsoNormal gmail_msg"><u class=3D"gmail_msg"></u>=C2=A0<u class=
=3D"gmail_msg"></u></p>
<p class=3D"MsoNormal gmail_msg">As alternative I tried to use the <a href=
=3D"http://www.yoctoproject.org/docs/2.0.1/dev-manual/dev-manual.html#provi=
ding-the-source-code" class=3D"gmail_msg" target=3D"_blank">
archiver class</a>. The generated tarballs contains the concrete source fil=
es but in addition the full git repository with history is contained too.</=
p></div></div></blockquote><div><br></div><div>I am not sure if it is inten=
ded to keep SCM history though you might want to file a bug</div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex"><div lang=3D"EN-US" link=3D"blue" vlink=3D"purple" cla=
ss=3D"gmail_msg"><div class=3D"m_951676337911188163WordSection1 gmail_msg">=
<p class=3D"MsoNormal gmail_msg"></p></div></div></blockquote><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><div lang=3D"EN-US" link=3D"blue" vlink=3D"purple" class=
=3D"gmail_msg"><div class=3D"m_951676337911188163WordSection1 gmail_msg"><p=
 class=3D"MsoNormal gmail_msg">=C2=A0<u class=3D"gmail_msg"></u></p>
<p class=3D"MsoNormal gmail_msg">Does anyone has an idea how to extract the=
 concrete source files without git repository and history?<u class=3D"gmail=
_msg"></u><u class=3D"gmail_msg"></u></p>
<p class=3D"MsoNormal gmail_msg"><u class=3D"gmail_msg"></u>=C2=A0<u class=
=3D"gmail_msg"></u></p>
<p class=3D"MsoNormal gmail_msg">Thank you very much for your help<u class=
=3D"gmail_msg"></u><u class=3D"gmail_msg"></u></p>
<p class=3D"MsoNormal gmail_msg">Sebastian Waldvogel<u class=3D"gmail_msg">=
</u><u class=3D"gmail_msg"></u></p>
<p class=3D"MsoNormal gmail_msg"><u class=3D"gmail_msg"></u>=C2=A0<u class=
=3D"gmail_msg"></u></p>
<p class=3D"MsoNormal gmail_msg"><u class=3D"gmail_msg"></u>=C2=A0<u class=
=3D"gmail_msg"></u></p>
</div>
</div>

--<br class=3D"gmail_msg">
_______________________________________________<br class=3D"gmail_msg">
yocto mailing list<br class=3D"gmail_msg">
<a href=3D"mailto:yocto@yoctoproject.org" class=3D"gmail_msg" target=3D"_bl=
ank">yocto@yoctoproject.org</a><br class=3D"gmail_msg">
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" class=3D"gmail_msg" target=3D"_blank">https://lists.yoctoproject.org/list=
info/yocto</a><br class=3D"gmail_msg">
</blockquote></div></div>

--f403045e1f6e321029054a4d1436--
