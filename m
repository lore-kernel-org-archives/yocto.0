Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EDB6E00903; Fri, 29 Jan 2016 12:52:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f175.google.com (mail-ig0-f175.google.com
	[209.85.213.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2780E0073D
	for <yocto@yoctoproject.org>; Fri, 29 Jan 2016 12:51:54 -0800 (PST)
Received: by mail-ig0-f175.google.com with SMTP id z14so44885374igp.0
	for <yocto@yoctoproject.org>; Fri, 29 Jan 2016 12:51:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=QCpb5Scq9XPsd4C0WEsf1YxvhluWa/ecTZbLSbsGBoU=;
	b=ciJ/+7guy13yY/n5t4yDQBcB7SpEzGS5ZqmzUPPvNHQWzzImyMvmoBZt2Pq3dJefFG
	ckol1338vnVZG+2kR3wunT2FpnI7mIaL/zSbmfmJoY4MLekkepPykHwk6XQg/qdkDcdF
	2SLxwWsSCEN8nP8R45AWBgCdtZzWnGTcHUDniFbfrgbP1iWMkWMGnokXJ37C66EgPCmb
	lTt1Ms5uJ+tDH804cSGMcZ5LITu2j3GkZNgEczYm08yi/vubSPTy1dGcAwZEm70tZxPK
	xSxyiYwnnQXwjCLMStp+Da0DqdVZ3XwV7MHRGGltPshAGI+8uxsb/Y/ezEOkOoEctGbS
	6kcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=QCpb5Scq9XPsd4C0WEsf1YxvhluWa/ecTZbLSbsGBoU=;
	b=IhJpoZSkCDtrxjcf+/NmGgT+pckHgMcXcHH+GAvJRRw81jXga9lP4X3NyOxgOTdI43
	gU/9Y303XDesgmA6ShMArOwOEZWk0DrHCgGQCSRVLQmwaaYidh4FQxt9Gcw49qXZkjq9
	PVNIN9NUkTODT2Ert3tDNiSGpSUoGL48AXH3O/KbwmUQv3+DqeaO9Wci5Fb/OGZHRQpF
	YN2kEdtrZxwNFWz4RSYlHnKinJPhcgIvgVdyb+3p7me+EwUxIZHx+sL0LCtvTohzs/kC
	Gf0RqbQ22hhWIHvNGKx+qKSr+oZJzQtFAVgPDAdOccj0XoRBn7kTBY1pSpzl20meusoo
	MAsg==
X-Gm-Message-State: AG10YOSSi6U3rI9znl6iqAyLlxktGlib6YjbMCgOcMWfFVMAlwp1H5zvLwHAWIq1mrcnu+Q4eX5mre29wsv/s5SA
X-Received: by 10.50.41.38 with SMTP id c6mr4504276igl.64.1454100713391; Fri,
	29 Jan 2016 12:51:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Fri, 29 Jan 2016 12:51:33 -0800 (PST)
In-Reply-To: <f0bdfb388a6d44448446852d1ef2a8f2@serv030.corp.eldorado.org.br>
References: <f0bdfb388a6d44448446852d1ef2a8f2@serv030.corp.eldorado.org.br>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 29 Jan 2016 20:51:33 +0000
Message-ID: <CAJTo0LbJj2MG8-mhyUYqdJVdtUAvrm_JmHm=-_oO-XN+X-NVxA@mail.gmail.com>
To: Alexandre Freire da Silva Osorio <alexandre.osorio@eldorado.org.br>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: network drivers are not installed when MACHINE qemux86-64
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
X-List-Received-Date: Fri, 29 Jan 2016 20:52:00 -0000
Content-Type: multipart/alternative; boundary=089e0117689f7d62a7052a7f34cd

--089e0117689f7d62a7052a7f34cd
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 29 January 2016 at 18:41, Alexandre Freire da Silva Osorio <
alexandre.osorio@eldorado.org.br> wrote:

> When I build a core-image-lsb image for MACHINE qemux86-64, the network
> drivers are not enabled. When building the same image for genericx86-64,
> this problem doesn=E2=80=99t occur and all the drivers are enabled.
>
>
qemux86-64 certainly ships with network drivers for the qemu machine.  What
drivers are you expecting to be present?

Ross

--089e0117689f7d62a7052a7f34cd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 29 January 2016 at 18:41, Alexandre Freire da Silva Osorio <span dir=3D"=
ltr">&lt;<a href=3D"mailto:alexandre.osorio@eldorado.org.br" target=3D"_bla=
nk">alexandre.osorio@eldorado.org.br</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><p class=3D"MsoNormal"><span lang=3D"EN-US">When I build =
a core-image-lsb image for MACHINE qemux86-64, the network drivers are not =
enabled. When building the same image for genericx86-64, this problem doesn=
=E2=80=99t occur and all the drivers are enabled.
<u></u><u></u></span></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>qemux86-64 certainly ship=
s with network drivers for the qemu machine.=C2=A0 What drivers are you exp=
ecting to be present?</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Ross</div></div>

--089e0117689f7d62a7052a7f34cd--
