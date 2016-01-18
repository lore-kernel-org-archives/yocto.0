Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 306E9E00B8B; Mon, 18 Jan 2016 04:08:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4AA0E00AB9
	for <yocto@yoctoproject.org>; Mon, 18 Jan 2016 04:08:15 -0800 (PST)
Received: by mail-ig0-f171.google.com with SMTP id z14so54351681igp.0
	for <yocto@yoctoproject.org>; Mon, 18 Jan 2016 04:08:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=NUjg/xYqZgOsMThC9WoMCYWzQmnVSpKw6cELuG+BMbc=;
	b=c35gH2IWInV+KiYlOjCP2F1ThPx2sWAadj8ngWNinlWQ5CFBrZ8XxFVvrnn69zoWwu
	iirz58kY+sYtA1yjUy/1baXBjQLdFqhZzwriUhsSqsSjRJ6SpWsWj+pWpMSw+3b58Zqg
	Am1knSoN2em2GiZmHUx7Iupv+w6QuPlI/oAWJTYMXa5QTq0gbKIfCrCKMOyYVVNAkWl3
	Ag7Y8MEQvvGAfxwel2AxtVnf3cU1swxc8LEZSscJlaezzcreuztHkWvxA4VwcpF52ege
	ff5c/RMZvKfjATydERsUuiHooGux4IGZYvOiZITqKnIsMIPyO01VDL3FTUv9S9krNydn
	shzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=NUjg/xYqZgOsMThC9WoMCYWzQmnVSpKw6cELuG+BMbc=;
	b=OrkXTDb+U9KUYF+sjaJcBj7LzFgztx8TSXFtVdlCwdJR9/9EvbazVgRjk5b6c9rdSo
	618WLs4b6JeB09UmmaJv6h1vQWoFzLNtfIfDTy97ftd+l+UocLUIxxj8+e3Pe83Yq5vB
	TJ/KqFI/t7CIMRwPBeRq7avV1K4ac3zXCqif4rAn17tUpSdPXpq5y7OoWd28ecQb4Euz
	PQkUaMi8LnqjRmpcM0J9PS42FWTMZlCP8un5e6V8TU9Ot9PhLNnbDvm234X/yHTiW/af
	sVjnOA5/bRgU88O71n652tRVYijVnaO19nrz8Elh9ZqWn5uFs2maXx1yi5HgDPqDqyJS
	lAug==
X-Gm-Message-State: AG10YORUrEAnAdBVIvjqxehbkUmTlkaD64mNA+IPpTcP1hfHKSUbb61pzN9+Qsk21uqMIuIVGes6pyKtIdTb4i6D
X-Received: by 10.50.30.69 with SMTP id q5mr10725968igh.78.1453118895000; Mon,
	18 Jan 2016 04:08:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Mon, 18 Jan 2016 04:07:55 -0800 (PST)
In-Reply-To: <1452726684-30945-1-git-send-email-raj.khem@gmail.com>
References: <1452726684-30945-1-git-send-email-raj.khem@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 18 Jan 2016 12:07:55 +0000
Message-ID: <CAJTo0LaStnx+rg_Z1NXV+yNRV0Y5BxQRceZK-sYqXo0YXoTG4A@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: rburton@intel.com, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [matchbox-keyboard][PATCH] config-parser: Use matching printf format
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
X-List-Received-Date: Mon, 18 Jan 2016 12:08:21 -0000
Content-Type: multipart/alternative; boundary=047d7bdc1c0c8dac2705299a9bcc

--047d7bdc1c0c8dac2705299a9bcc
Content-Type: text/plain; charset=UTF-8

On 13 January 2016 at 23:11, Khem Raj <raj.khem@gmail.com> wrote:

> XML_GetCurrentLineNumber() returns unsigned long as clang is telling us
> here
>
> src/config-parser.c:603:6: warning: format specifies type 'int' but the
> argument has type 'XML_Size' (aka 'unsigned long') [-Wformat]
>             XML_GetCurrentLineNumber(p),
>             ^~~~~~~~~~~~~~~~~~~~~~~~~~~
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>

Merged to matchbox-keyboard 0.1 branch, thanks.

Ross

--047d7bdc1c0c8dac2705299a9bcc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 13 January 2016 at 23:11, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mail=
to:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div id=3D":8l" class=3D"a3s" styl=
e=3D"overflow:hidden">XML_GetCurrentLineNumber() returns unsigned long as c=
lang is telling us<br>
here<br>
<br>
src/config-parser.c:603:6: warning: format specifies type &#39;int&#39; but=
 the<br>
argument has type &#39;XML_Size&#39; (aka &#39;unsigned long&#39;) [-Wforma=
t]<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 XML_GetCurrentLineNumber(p),<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ^~~~~~~~~~~~~~~~~~~~~~~~~~~<br>
<br>
Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@=
gmail.com</a>&gt;</div></blockquote></div><br>Merged to matchbox-keyboard 0=
.1 branch, thanks.</div><div class=3D"gmail_extra"><br></div><div class=3D"=
gmail_extra">Ross</div></div>

--047d7bdc1c0c8dac2705299a9bcc--
