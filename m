Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE209E00C2C; Mon, 10 Jul 2017 05:47:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.172 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 501B2E00C2A
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 05:47:31 -0700 (PDT)
Received: by mail-qk0-f172.google.com with SMTP id p21so72111356qke.3
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 05:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=9jNoYSeU+EJsGK+ZQS4AxVIjc6KCHYKYLw8iTgM3wmc=;
	b=qgRSVnpiaQBCXK54/233b+jH27rj82W1bNDuYWkE6H91m02mrK6kIq4MGSvhTf33k2
	/amNo5k+/LxhY49XrWBUmb+r2fcDRQGsaoJ1lE2bGGRFly9/w7BavJaNURRu3jYSZeuT
	a1R+L03MivCLklVaJeF0UqJf4CxfQAWW64wV12kYXm7YZHJFMZ8UlgQMcaRDx/Nwrs01
	4ELDXjsQ8Fpft1McAmLNkoXVCP2YL+CPt45k0/OAnzLg1fmGMD5XW1DnARNJWV7bDs5c
	Xsnrzqqju3zc2EVqR913+bao87C2mFdr6Gk7quSrAyYyvZaWIH134y8BQtSWOqMrNGAV
	7FlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=9jNoYSeU+EJsGK+ZQS4AxVIjc6KCHYKYLw8iTgM3wmc=;
	b=Xd2quMCzRphZ/ghB1fBTiI9IMd/SqFIYhWOq1NX5lfk73c1+1it20N3r7shfsleptw
	LdsndibIPtqTIi58Ne3DgKlvAkj9gC9jgnmU2q0/7Lh7HHUwqWvX35AgfSCuowKkpVd1
	wawroNBVbhx3/GMbz6/ssLvOcbdw01xg6fAJsBKlb2huwojyGhRXs5+vgE49Y4YI1v2H
	bWOXWUS5HKRNJDO0qg96Qm4D4Ng3VD0zNkmZU7hV0U20yuEhnK3zWpRvvnz0MYLqXz9U
	FhDgaWEWbjiF3ZfmS8FWP/d1aoacbELAxN/H5lvyi/DiJw33gSMFL605giMmIOUbiZ2A
	gtrw==
X-Gm-Message-State: AIVw110vNkk0xn0bfHpS+9Cm3yIjUBbR11aXPgknBay13pdl26Q46F5H
	R4WsbgCdfRm63PUmSG4QhqB3vxx7L2jC
X-Received: by 10.55.108.68 with SMTP id h65mr3593873qkc.141.1499690851302;
	Mon, 10 Jul 2017 05:47:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.31.118 with HTTP; Mon, 10 Jul 2017 05:47:10 -0700 (PDT)
In-Reply-To: <CACgnt7-BsX1EkCnMj8T=tFqguhCNRWrrTgsG4ai3nR213SiFqA@mail.gmail.com>
References: <CACgnt7-ZUQ4FKiU4iBG9Lxym8SjWRR5GSPtmu4pULozHo_45-w@mail.gmail.com>
	<CAJTo0LZTW=+yzdSebDbKKd2QuSS91HXAPHRPcg6Z5e=WMMKOEg@mail.gmail.com>
	<CACgnt7-BsX1EkCnMj8T=tFqguhCNRWrrTgsG4ai3nR213SiFqA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 10 Jul 2017 13:47:10 +0100
Message-ID: <CAJTo0LZyvY=u_ctNYFpkS3ay11p5REti3UgLJDfOaAWyRLpZaQ@mail.gmail.com>
To: Rafael Machado <rafaelrodrigues.machado@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto build at Kali
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
X-List-Received-Date: Mon, 10 Jul 2017 12:47:33 -0000
Content-Type: multipart/alternative; boundary="001a114feeb677183b0553f5fc1d"

--001a114feeb677183b0553f5fc1d
Content-Type: text/plain; charset="UTF-8"

On 10 July 2017 at 13:38, Rafael Machado <rafaelrodrigues.machado@gmail.com>
wrote:

>     from . import _html5lib
>   File "/home/rafael/Projetos/seco/poky/bitbake/lib/bs4/builder/_html5lib.py",
> line 57, in <module>
>     class TreeBuilderForHtml5lib(html5lib.treebuilders._base.TreeBuilder):
> AttributeError: 'module' object has no attribute '_base'
>

That's the actual error.  What version of oe-core/bitbake does this BSP use?

Ross

--001a114feeb677183b0553f5fc1d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 10 July 2017 at 13:38, Rafael Machado <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:rafaelrodrigues.machado@gmail.com" target=3D"_blank">rafaelrodrigues.=
machado@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><=
div>=C2=A0 =C2=A0 from . import _html5lib</div><div>=C2=A0 File &quot;/home=
/rafael/Projetos/seco/<wbr>poky/bitbake/lib/bs4/builder/_<wbr>html5lib.py&q=
uot;, line 57, in &lt;module&gt;</div><div>=C2=A0 =C2=A0 class TreeBuilderF=
orHtml5lib(<wbr>html5lib.treebuilders._base.<wbr>TreeBuilder):</div><div>At=
tributeError: &#39;module&#39; object has no attribute &#39;_base&#39;</div=
><div></div></blockquote></div><br>That&#39;s the actual error.=C2=A0 What =
version of oe-core/bitbake does this BSP use?</div><div class=3D"gmail_extr=
a"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a114feeb677183b0553f5fc1d--
