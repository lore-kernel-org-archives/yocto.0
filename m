Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18840E008F5; Sun, 26 Oct 2014 15:00:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qc0-f181.google.com (mail-qc0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D22DDE0084A
	for <yocto@yoctoproject.org>; Sun, 26 Oct 2014 14:59:59 -0700 (PDT)
Received: by mail-qc0-f181.google.com with SMTP id w7so416000qcr.12
	for <yocto@yoctoproject.org>; Sun, 26 Oct 2014 14:59:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=mKbABwN4+QNFn2HUcFyznH2cEjFtxDxbE8DY+qpxVsU=;
	b=lzMsht7X0VHRIQR2YrXKwJOyE1nkOtDcWrz8QSlB+pZam0nv0VMRxjrAerEWChb1W7
	kC8DI6Je/c7HBmajVprNot2FyL8KkDd6oQQCbNlf0WKaemxhb4LeRzmSqQqDSliJF123
	Mj6a5nQqpSKvkEWfQnVMX3N7hzfdp3cs45SwIbeAhRIIDWXJglGPX6GC3WKE3M0g+iHC
	Gvk/xqKR9p3roFYpfwe3DArbuTHIppHr2bx8ij3J6jj4KLLG4ymP+JiYDnN0R0As8wbB
	GwPRpDjZMjgrBrk4itVg6NmglxSoVV5i66di4XbufPQzhsgGfa3Bx0x1w29F0y74c/bU
	sXiA==
X-Gm-Message-State: ALoCoQnqWm+uQNwzxs4fNRKw+Y/eKlOcjRdfWntPjCy22ynSimhPEKtSpoOWO8rcU/2SkzhhqYu7
X-Received: by 10.140.94.246 with SMTP id g109mr3854864qge.77.1414360799075;
	Sun, 26 Oct 2014 14:59:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.92.179 with HTTP; Sun, 26 Oct 2014 14:59:38 -0700 (PDT)
In-Reply-To: <CAELZnSmhcswJLt8VWyWRLCKPtaEONz_KhqyC5TnwaSeDR1xXLA@mail.gmail.com>
References: <CAELZnSmhcswJLt8VWyWRLCKPtaEONz_KhqyC5TnwaSeDR1xXLA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sun, 26 Oct 2014 21:59:38 +0000
Message-ID: <CAJTo0LZiW0nCx0b5aCj1QHf-BRssL8=jH03vfazNgYtGGoq12g@mail.gmail.com>
To: Denis Laroche <dlaroche7@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bash tab completion not working
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
X-List-Received-Date: Sun, 26 Oct 2014 22:00:11 -0000
Content-Type: multipart/alternative; boundary=001a113a81d6038b9f05065a8961

--001a113a81d6038b9f05065a8961
Content-Type: text/plain; charset=UTF-8

On 26 October 2014 21:41, Denis Laroche <dlaroche7@gmail.com> wrote:

> I also added the layer to the build/conf/bblayers.conf file. Alas,
> after rebuilding bash it still doesn't have a dependency on readline
> and tab completion still doesn't work.
>
> Would someone have a suggestion?
>

Did you check the configure log to verify that bash was actually enabling
readline, and if not then it hopefully says why.

Ross

--001a113a81d6038b9f05065a8961
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 26 October 2014 21:41, Denis Laroche <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:dlaroche7@gmail.com" target=3D"_blank">dlaroche7@gmail.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div id=3D":3j" class=3D"a3s" =
style=3D"overflow:hidden">I also added the layer to the build/conf/bblayers=
.conf file. Alas,<br>
after rebuilding bash it still doesn&#39;t have a dependency on readline<br=
>
and tab completion still doesn&#39;t work.<br>
<br>
Would someone have a suggestion?<br></div></blockquote></div><br>Did you ch=
eck the configure log to verify that bash was actually enabling readline, a=
nd if not then it hopefully says why.</div><div class=3D"gmail_extra"><br><=
/div><div class=3D"gmail_extra">Ross</div></div>

--001a113a81d6038b9f05065a8961--
