Return-Path: <mail@pramode.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F43FE01AC0; Mon, 14 May 2018 04:50:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_WEB autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable
	web server *      [117.201.11.80 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 251D1E00DCE
	for <yocto@yoctoproject.org>; Mon, 14 May 2018 04:50:00 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id c203-v6so10355136oib.7
	for <yocto@yoctoproject.org>; Mon, 14 May 2018 04:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pramode-net.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=HJvlA2xj69wh8w6hxpQX0LMIp6a0/FIamVki14bsfmw=;
	b=xUX8CfifRL+m4bdnipnH0jGdn7X9EHrXXt2LQ9vwRbzYaYktqGErOUA2Yd3MRtoMuH
	ogzq6rZxtQf4SnntGg1O5sAj0lVnpcPyswCEhYQPIw21MCgck70FYC0dKT3e8qlxfgNl
	1H4GJZPfGDJRcxuAeHrDx0+VJnEKo39fAuLZmJEWHm3bXOAqQx/JIzXtzA/SR8ZRJL3I
	aQTJtJCAU45TWNVgmGvF4LtfH//2+F4pRYACyJ4UTl22tIhWPMfAbesldXg33t2Dguiv
	bD6Z3vNQ5Sya3NJj2+GhKHBHNLJxUbWLt4kJkl7OsNdGUJ6HnA2PbBJao15dyKPxocr2
	0MRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=HJvlA2xj69wh8w6hxpQX0LMIp6a0/FIamVki14bsfmw=;
	b=VmYlHU7yYt1glytGaBdjk3EoVCzqgcp9tHF96jWdMsPf+/JB5H+5E2lb5qUIHOBlva
	NhQw2OaG4VeSxm8Q2zFV5H7P2heLfkW/l28+mgvz/VgkZc2ckrQ2ho1r29Nxbn9gt2pS
	mNfZVFvD3SvwZHz9oDOFZBgvebht/TkHM+nlnr5kdZrujsjT+TfK3lXWMrxVtjYPSDM+
	IzmxXU05ekL2VFUa1HADljhxgfPLy5py26S/ujlYqNb3htUXfoubH1avvHSY4m/9JnJ0
	4THKXRZdMkWWb4vb8Lp14jjcuGTsvBxi7+ow6NAywslItfxBxwpje+3AV/thaklQ204V
	7uoQ==
X-Gm-Message-State: ALKqPwfxl0FCmXu93zLFje1kBR/qJ/YjljZlKNworScKjHuMsXKD3Q2U
	B1Ka7+k5+qyblp8vY7oeUoldzzltoMMjsKEqZlpSYQ==
X-Google-Smtp-Source: AB8JxZr83qSjqrxFWZqfY7VKw3IHg98P6O7ytvT7tr7kUXPix/XtlOCK6q4itwfaqB2ZFYW/kqMTO0Ygeb30X3uqDTU=
X-Received: by 2002:aca:fc48:: with SMTP id
	a69-v6mr6735069oii.256.1526298600018; 
	Mon, 14 May 2018 04:50:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.201.25.17 with HTTP; Mon, 14 May 2018 04:49:59 -0700 (PDT)
X-Originating-IP: [117.201.11.80]
In-Reply-To: <fdde3f6c-8c50-82f8-0e29-579dc25a808c@windriver.com>
References: <CANyNnouoBdqyaxT4rcad9HnDBfmuQ_Gj5eSrVYwUJFNCoAfgrQ@mail.gmail.com>
	<fdde3f6c-8c50-82f8-0e29-579dc25a808c@windriver.com>
From: "Pramode C.E" <mail@pramode.net>
Date: Mon, 14 May 2018 17:19:59 +0530
Message-ID: <CANyNnovf_6YX7=0ZfRXKGgeTyE8P7mdYsOd4zdrVdA3wRFL1Xw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Problem with Extensible SDK update
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
X-List-Received-Date: Mon, 14 May 2018 11:50:01 -0000
Content-Type: multipart/alternative; boundary="000000000000e02f14056c291577"

--000000000000e02f14056c291577
Content-Type: text/plain; charset="UTF-8"

Thanks for pointing out this problem. I've sent out a patch to fix this
> problem. It's under review now.
>
>   git://git.pokylinux.org/poky-contrib ChenQi/devtool-sdk-update
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=ChenQi/devtool-sdk-update
>
>
>
Thank you very much!

regards,
pramode

--000000000000e02f14056c291577
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te"><br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div bgcolor=3D"#FFFFFF" text=3D"#00=
0000"><div class=3D"m_-1750997644269204979moz-cite-prefix">
      Thanks for pointing out this problem. I&#39;ve sent out a patch to fi=
x
      this problem. It&#39;s under review now.<span class=3D""><br>
      <br>
      <pre>  git://<a href=3D"http://git.pokylinux.org/poky-contrib" target=
=3D"_blank">git.pokylinux.org/poky-<wbr>contrib</a> ChenQi/devtool-sdk-upda=
te
  <a class=3D"m_-1750997644269204979moz-txt-link-freetext" href=3D"http://g=
it.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3DChenQi/devtool-sdk-update" =
target=3D"_blank">http://git.pokylinux.org/cgit.<wbr>cgi/poky-contrib/log/?=
h=3D<wbr>ChenQi/devtool-sdk-update</a></pre>
      <br></span></div></div></blockquote><div><br></div><div>Thank you ver=
y much!</div></div><div class=3D"gmail_quote"><br></div><div class=3D"gmail=
_quote">regards,</div><div class=3D"gmail_quote">pramode<br></div></div></d=
iv>

--000000000000e02f14056c291577--
