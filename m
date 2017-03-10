Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EE74E009CE; Fri, 10 Mar 2017 02:47:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.181 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4D36E009A5
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 02:47:16 -0800 (PST)
Received: by mail-qk0-f181.google.com with SMTP id 1so160667181qkl.3
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 02:47:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=x+Etr6fqLp56SigePSMeUw/uh9TEMjVV9Ru6usEazo0=;
	b=e50rATCWfK3zocnhhqW58iz0j1uiFApoL10pfTdXq5z4uYz4nHLlYgU0sR8NNmsBF8
	ETLcnbsXyPrs93LhJn45TNKXgrgX/GjRKRm9eRWzTXVw3lo4WVmBvCVJs4xnrEiETsNQ
	Uw2VbNdk+/3y/46FU4cAqBOOsPkWDLKshdAYylUE7OpyvwfuBrvgA3R6anpXIwmwNGlr
	ma5XFZbiTSvCgd4HStvEuBluoXgrCdKiJkA5P8SzaE1I5MKuAs1L/l0CWdW9YYMKBTrm
	iA/f+CFmriITmN5CeB/wHaahBnn73Z9KcWfzQBpeRIOZ7/Y+0ciBtnmoMkpiXMK/EWD4
	RPYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=x+Etr6fqLp56SigePSMeUw/uh9TEMjVV9Ru6usEazo0=;
	b=E1O40PDCilSFqkrdsDNk+D0FsiIOm7m8ZYnMDLCOBnPD2Ic1tigbfwI7IPnyLKWKDw
	bGFxjvTcLiSZGlhWYIFQA5qy1hd6draPAkNWi1KUQXF2dyL90qku9FuGo5dMiJvsXGfG
	rqnT50e6fi2gdN/voCFtpFne79fhZTiU232vr86Mgq3TbBpkQdRComd909JifNifYV0z
	z8ITTF634Alv/6dZ0P9MlnNT3AIFv1AedkS5Cz/W44+Zil7xUN73sUCmDPYJ08rWo5PD
	tjWLyggcBi0D6/ALbfPUqjKOCBh0P7Ifm/iOwjeFKw8EWWqOfl37hOLSMcoRrYq4+eOe
	JcDw==
X-Gm-Message-State: AMke39nWTa0saxtp+8AmZiWMs+7grGJLwn/xBguqCJwIA3kkp3oBkyOCD4AcxXWxk9fMDx8wAPqCRos5LtS01WOS
X-Received: by 10.55.3.151 with SMTP id 145mr17978181qkd.244.1489142835861;
	Fri, 10 Mar 2017 02:47:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Fri, 10 Mar 2017 02:46:55 -0800 (PST)
In-Reply-To: <d9a0d51f-222e-0320-2e9d-57451b5a5c42@mlbassoc.com>
References: <d9a0d51f-222e-0320-2e9d-57451b5a5c42@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 10 Mar 2017 10:46:55 +0000
Message-ID: <CAJTo0LYQ=h1TdU4NBdF_vAVA+ihhNL7nBmYq9244H=4uKB-hrA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What happened to 'depexp'?
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
X-List-Received-Date: Fri, 10 Mar 2017 10:47:18 -0000
Content-Type: multipart/alternative; boundary=94eb2c0b93a0c0af9e054a5e15e3

--94eb2c0b93a0c0af9e054a5e15e3
Content-Type: text/plain; charset=UTF-8

On 10 March 2017 at 10:45, Gary Thomas <gary@mlbassoc.com> wrote:

> What happened to 'depexp'?  Is 'taskexp' supposed to be the replacement?
>

Yes.

depexp was great at leaving things out, whereas taskexp shows everything.

It's more, but it's not missing bits.

Ross

--94eb2c0b93a0c0af9e054a5e15e3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 10 March 2017 at 10:45, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div id=3D":2h7" class=3D"a3s aXjCH=
 m15ab7d37d3cdde8c">What happened to &#39;depexp&#39;?=C2=A0 Is &#39;taskex=
p&#39; supposed to be the replacement?<br></div></blockquote></div><br>Yes.=
</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">depex=
p was great at leaving things out, whereas taskexp shows everything.</div><=
div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">It&#39;s mor=
e, but it&#39;s not missing bits.</div><div class=3D"gmail_extra"><br></div=
><div class=3D"gmail_extra">Ross</div></div>

--94eb2c0b93a0c0af9e054a5e15e3--
