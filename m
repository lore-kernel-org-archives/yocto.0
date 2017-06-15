Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8618E00B9E; Thu, 15 Jun 2017 12:33:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f170.google.com (mail-qt0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3012E00B99
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 12:33:58 -0700 (PDT)
Received: by mail-qt0-f170.google.com with SMTP id u19so34107819qta.3
	for <yocto@yoctoproject.org>; Thu, 15 Jun 2017 12:33:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=za8dI/UPgj2MYExlv/F+Z7ZVubWS9Mvjd3Igjmd164k=;
	b=bboD53kAs5PUy6gB9zDbbKanff8H7MUfWcyvqXxpSzi84OslbH5BRfqYi3BoJtxyho
	L4euorzIaEA537qcsry8USRymwihPjdz4SVTblujwFwYpQnyD8BcpS/p7yQJENO+cA64
	JJgGXQ7VjP7bH2Tb/92GlJoS3Lcsnn7k2EII8j5ZpHzy2+lKFrykk/+KyCoTvYZMr+lg
	w3NWvqWXII5cKRFx/14SgouRlRqzypVXsQOW1pg4nDVDnwqsle9IDTdrUKdFk8aOa9XC
	NAjyJCqXB5t9w9z46jVzg+/Xj8Ly0aG9DVDivLauk3tbCpnjTQJ+MS1vrEhEqPEGliE5
	YjYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=za8dI/UPgj2MYExlv/F+Z7ZVubWS9Mvjd3Igjmd164k=;
	b=mo06+xCT0VeyJsbNGeer8KZU5vv/wXmwiVFgH7dLQ0df+XN6sI8f1DYm2FSCPYnMfy
	0z2tEZ+1gKbTaxAhW4XMSEt9skjIGMMEBpxakq7WJndUww62qT+tQ6Z/4cwNRl9S9MXh
	TYmA+jUauibn/jLtYzoVGHIuIuPSjqUCd9Tgq8ITolLdaNrmWlz14fJDLOHzwtEVE9xC
	rWi2IhiRQ87mvwQgzk0Q6m/YAMjVuDVJcuJTX4EB/uwCKF3/bAb0ZOc/93oXl6tMTYt1
	18d2T8M0Kgb0nbFy+bxnOPzeY87DaKfCLjq/QVabZyFIs7ulDdhbMq8/OcpOHIEVobfp
	80hQ==
X-Gm-Message-State: AKS2vOzcac2GLPpYG0gEZIyM2PqbnkkuGpPXLytXNl78PPnKc+L4JQba
	WHPFwnOWRdoUeYv5r2eOWo771q8Dyrx2
X-Received: by 10.237.52.33 with SMTP id w30mr8160462qtd.139.1497555237614;
	Thu, 15 Jun 2017 12:33:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.35.103 with HTTP; Thu, 15 Jun 2017 12:33:37 -0700 (PDT)
In-Reply-To: <75eaa4ef-ddd4-198e-4299-a5cad9ed570c@Net2Edge.com>
References: <75eaa4ef-ddd4-198e-4299-a5cad9ed570c@Net2Edge.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 15 Jun 2017 20:33:37 +0100
Message-ID: <CAJTo0LZjhRyL4gzOyK4OKUpTpCarUPmv8TjVQ5485hG-6R=1qw@mail.gmail.com>
To: Thomas.Thorne@net2edge.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Using A Proprietary Closed License Inside A Layer & Its Recipes
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
X-List-Received-Date: Thu, 15 Jun 2017 19:33:59 -0000
Content-Type: multipart/alternative; boundary="001a114dc03ef84a0f055204bf1d"

--001a114dc03ef84a0f055204bf1d
Content-Type: text/plain; charset="UTF-8"

On 15 June 2017 at 15:52, Thomas A. F. Thorne MEng AUS MIET <
Thomas.Thorne@net2edge.com> wrote:

> Is it only possible to use the special
> LICENSE = "CLOSED"
> license for licenses not already placed in the main license directory?
>

Yes, there's special-case logic for 'CLOSED'.  Can you not just use that
for your internal pieces?  It's special-cased in a few places.

Ross

--001a114dc03ef84a0f055204bf1d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 15 June 2017 at 15:52, Thomas A. F. Thorne MEng AUS MIET <span dir=3D"lt=
r">&lt;<a href=3D"mailto:Thomas.Thorne@net2edge.com" target=3D"_blank">Thom=
as.Thorne@net2edge.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><div id=3D":39z" class=3D"a3s aXjCH m15cad382b1ba8505">Is it only possi=
ble to use the special<br>
LICENSE =3D &quot;CLOSED&quot;<br>
license for licenses not already placed in the main license directory?<br><=
/div></blockquote></div><br>Yes, there&#39;s special-case logic for &#39;CL=
OSED&#39;.=C2=A0 Can you not just use that for your internal pieces?=C2=A0 =
It&#39;s special-cased in a few places.</div><div class=3D"gmail_extra"><br=
></div><div class=3D"gmail_extra">Ross</div></div>

--001a114dc03ef84a0f055204bf1d--
