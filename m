Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49194E0077F; Wed,  6 Apr 2016 13:14:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C543BE0048B
	for <yocto@yoctoproject.org>; Wed,  6 Apr 2016 13:14:21 -0700 (PDT)
Received: by mail-ig0-f181.google.com with SMTP id g8so52409549igr.0
	for <yocto@yoctoproject.org>; Wed, 06 Apr 2016 13:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=X09Dblz/xEhqEHmw7GzSxzd188jtxv0al33EdEm4Z1A=;
	b=fNquGYG4l1f+XrdSP+lLHBJ3n9s94LlAIEZrKsp6NG/kYmA6wB8xjlLUGqcsqIlO2g
	sY3Y2wosPL35YwzntS9uxV5UqSnq7q2o6oJOiwsR2CG2nY63Zhjtwivz4cyVZYZZO8OU
	jKc/H8m4GEKL7687EI7GbXgmn57yGXt7GUNpdLXb4JAbP+JrVpcB0r/j/xkYc8IHNQ3O
	7RNrztLPzZpZ7MaBRfZ5M1Er/txHVZwzctp8APhLR7wpATo9RWhyTn7bZHggEz25+59I
	80mO+JDDXdo+QSaEwIyOqR2q89BBpVM3RCfYMuZlycR6M19TkI+yKizJ/TEag7Z+aZ0e
	XQHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=X09Dblz/xEhqEHmw7GzSxzd188jtxv0al33EdEm4Z1A=;
	b=Z1fuAAgbrPbNNBeXwfDO0ui75Z5eskTWfDXM6mdBNF8DHkycC3Q+w0Vdb4FytzvIEo
	0W72+CqVfY9Zy8RhsWloGNQXUDVhKourKX3qFciSiDRqx1LA5X9nzbm61R8TtdVlkeUv
	rNQ+xsiSBD1JUFJJLmmS7UaPxk2LhmzqC1dXnmqCzkzfc3yP0n5lY6S63dwgnbpsOwYH
	wcBeJd62JC7+4KLCMehpDdTbVSVj5OSiCzOPLQpfXTDlulUXiR1+yVuJSAcGQsyOWysi
	oxvzEDyVtsxYJcmMBw7WC4pQ/kjVI00vBTzOQHCRs+VpfG5XtNRRFG6Hroh6T8DITd8B
	lXYQ==
X-Gm-Message-State: AD7BkJK1iD3UsBTEYQPjfFSH0yUcir8ed2wkB6aPknTr1ulRNa0s7dI76Fv/oYUffAqwRCF9A/IjNh9Sd5OxbwrP
X-Received: by 10.50.43.226 with SMTP id z2mr26011690igl.78.1459973660605;
	Wed, 06 Apr 2016 13:14:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.132.24 with HTTP; Wed, 6 Apr 2016 13:14:01 -0700 (PDT)
In-Reply-To: <CAFcFeQKU5EkgSdw-Wyy3gcF4sNTMZO4WtFjgptaFbwrgZeyhPQ@mail.gmail.com>
References: <CAFcFeQKU5EkgSdw-Wyy3gcF4sNTMZO4WtFjgptaFbwrgZeyhPQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 6 Apr 2016 21:14:01 +0100
Message-ID: <CAJTo0LZs7x8iRjfeKQOQtzYtm5-Lic4URRmN-Gt_qfJCx23vVA@mail.gmail.com>
To: Santosh Y <ysan99@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Sharing Sstate cache among different platform architectures
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
X-List-Received-Date: Wed, 06 Apr 2016 20:14:26 -0000
Content-Type: multipart/alternative; boundary=047d7bfea0f46c1b15052fd69b8c

--047d7bfea0f46c1b15052fd69b8c
Content-Type: text/plain; charset=UTF-8

On 6 April 2016 at 18:18, Santosh Y <ysan99@gmail.com> wrote:

> Can sstate cache be shared among builds for different architectures like
> x86 & PowerPC?
>
> Yes (and different host distros).

Ross

--047d7bfea0f46c1b15052fd69b8c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 6 April 2016 at 18:18, Santosh Y <span dir=3D"ltr">&lt;<a href=3D"mailto=
:ysan99@gmail.com" target=3D"_blank">ysan99@gmail.com</a>&gt;</span> wrote:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><p dir=3D"ltr">Can sstate cache be share=
d among builds for different architectures like x86 &amp; PowerPC?</p>
<p dir=3D"ltr"></p></blockquote></div>Yes (and different host distros).</di=
v><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div=
></div>

--047d7bfea0f46c1b15052fd69b8c--
