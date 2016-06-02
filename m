Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37B22E00D0A; Thu,  2 Jun 2016 06:25:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89811E00D0F
	for <yocto@yoctoproject.org>; Thu,  2 Jun 2016 06:25:09 -0700 (PDT)
Received: by mail-io0-f182.google.com with SMTP id t40so45909702ioi.0
	for <yocto@yoctoproject.org>; Thu, 02 Jun 2016 06:25:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=B9v4D5sS0mwFLHcq3jWJFf3bPsOHwRW9mwZYkCvkPd0=;
	b=W63/hymjW5skC28k8Nc/3Q//5za+x5NP4owDW/jF+B/k8i/Ms60opaXiDlBwwl4MBO
	opBJstwH6TRed4BcgQb8w7o2GEng/ojt+TdhO2u4ltMDtQU9rdN2NuWBCesvFC5VV5e3
	WKKL+dTFZX9NySrHKWri1uZvjAl4y5utSFiB4GUaV7AOiuWXL3s4lw/ccnWJBt3x1U5P
	RE9HgxAIz19xCBaYT9EF2XPg77wHLyK2EgA75rel12qNN+fPGpHxSpxaQbMHQ/nrsdhF
	rZ8c6z7cYvtvyKXz5YSjgIdVlgLn/gTc1Tp2pYqSTtw9JbREPRmCxM0oy0WL48kvOZMJ
	Cx5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=B9v4D5sS0mwFLHcq3jWJFf3bPsOHwRW9mwZYkCvkPd0=;
	b=WFbcg/37pEfeRrp4mORwuaKoGjq+R6vnfYH1gPFjW/LXxYnjNoxBbKHl5SSHr4K/H6
	rDGdjFTY4hfQPtBJIAyVAfFEhtczM7hHAyFZguZ1qq/sD95UD0kwGEyCyCgu7ePP1Q8c
	PFDGmBhIG4qZFB467UnAit37hx0Ud4nzUkDvwASxGb4hF/qYGyEncyqvsXUOHnZZQhVp
	pDSFNwsZ7Yo0SksAwve5eV6VvnkwMNtmwlALWUvRLIxji5/WF1lNqFmlD0Ow0FGOO/bf
	8BbXZHJMBJRvkaXhHiQjFAe3ua5HBN5OIXay1HDXx1pPTiILEq0uTWrCIfVjXAtCHQF8
	rqMA==
X-Gm-Message-State: ALyK8tIKJ/P8aPfcgTxUhpTuc0mVx5zXKeXOnYxizQ+wo/EaZcKhZb5QU+iS1gZewmxWx/BztwdLCNLc8RLvjLtH
X-Received: by 10.107.138.158 with SMTP id c30mr2910266ioj.148.1464873908695; 
	Thu, 02 Jun 2016 06:25:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Thu, 2 Jun 2016 06:24:49 -0700 (PDT)
In-Reply-To: <OF6F7FAC46.19065A9E-ONC1257FC3.004116D5-C1257FC3.0041E704@esa-grimma.de>
References: <OF6F7FAC46.19065A9E-ONC1257FC3.004116D5-C1257FC3.0041E704@esa-grimma.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 2 Jun 2016 14:24:49 +0100
Message-ID: <CAJTo0LZp-Dwy29Jgn7ubLbsmqp=_wsk9nf9O6Eu+OXKyuj71aQ@mail.gmail.com>
To: S.Jaritz@esa-grimma.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to set a cmake cache variable to a spezific value?
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
X-List-Received-Date: Thu, 02 Jun 2016 13:25:28 -0000
Content-Type: multipart/alternative; boundary=001a113fe75cf7ffce05344b8858

--001a113fe75cf7ffce05344b8858
Content-Type: text/plain; charset=UTF-8

2016-05-30 12:59 GMT+01:00 <S.Jaritz@esa-grimma.de>:

> I want to build a recipe for a cmake based application. To make it run I
> need to set a cached cmake variable.
>

EXTRA_OECMAKE += "-DVARIABLE_NAME=value"

Ross

--001a113fe75cf7ffce05344b8858
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
2016-05-30 12:59 GMT+01:00  <span dir=3D"ltr">&lt;<a href=3D"mailto:S.Jarit=
z@esa-grimma.de" target=3D"_blank">S.Jaritz@esa-grimma.de</a>&gt;</span>:<b=
r><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex"><font size=3D"2" face=3D"sans-serif">I wan=
t to build a recipe for a cmake
based application. To make it run I need to set a cached cmake variable.</f=
ont>
<br></blockquote></div><br>EXTRA_OECMAKE +=3D &quot;-DVARIABLE_NAME=3Dvalue=
&quot;</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"=
>Ross</div></div>

--001a113fe75cf7ffce05344b8858--
