Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDA9BE00A3C; Mon,  1 Jun 2015 05:22:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qc0-f178.google.com (mail-qc0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43878E009A3
	for <yocto@yoctoproject.org>; Mon,  1 Jun 2015 05:22:24 -0700 (PDT)
Received: by qcej9 with SMTP id j9so3510707qce.1
	for <yocto@yoctoproject.org>; Mon, 01 Jun 2015 05:22:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=BbsLUj0PJekT4paTcVaX5PoyHCuhiQjk5B9JV9cMuT4=;
	b=TXPBViN4Gybe3p/ndAR93PpeQswnj1LrK3IBKWGEpbhrp2JOW5Wom/aUyBp/Quror5
	gr8jD/ospGNE3utemB0V/R9Nq+zuK2RS7Jkc7jp8k3YO6W6zTpNw6TBRhgMbCJSjukVy
	J/zNvAylN31Ktwb4yEv+S1K7siHu2APK6+Co6c7snki0yBq/AnbNcZOGNuUSKmZGu9gj
	61u/m+Un1Lo+FxbfQziLXLuW1AD2SyTXwMQWN7GBQ9RSo9sMQP0zkvhLCM0krOMeYyg4
	6Fd7cO/SEMj1Qnv6xByihEdEDZofwXIdGEgHLJpTjwya86RFIyjn//vsqZshp9Fyw8sM
	xcmw==
X-Gm-Message-State: ALoCoQmnI4X2v4IndgumYbPVwnH1C9tz0rC/weVvBWgERiGLjUcpYthG5OW5gnAeMcOFIlXgPnuM
X-Received: by 10.140.133.199 with SMTP id 190mr24296995qhf.17.1433161343960; 
	Mon, 01 Jun 2015 05:22:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Mon, 1 Jun 2015 05:22:03 -0700 (PDT)
In-Reply-To: <CAK5mtexC81Yi9C2YA6O4SuKZ=vQ6wk8=cUYNZ8mYOQ4uAoZ+qw@mail.gmail.com>
References: <CAK5mteyg4FSKmzrDoMmvx+-fwJEhybHCa+MA9bokQuJt5m-H_Q@mail.gmail.com>
	<CAJTo0LYmV418_39HBjj+VoYs1O8qHQCwOWfd9YdotSwcGdHvsw@mail.gmail.com>
	<CAK5mtexC81Yi9C2YA6O4SuKZ=vQ6wk8=cUYNZ8mYOQ4uAoZ+qw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 1 Jun 2015 13:22:03 +0100
Message-ID: <CAJTo0LZqH+u5fNKF_vVVuyw7kaXRMdLteNai1UCPz2-UEpbXxw@mail.gmail.com>
To: Victor Rodriguez <vm.rod25@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: build hello_world.c in yocto
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
X-List-Received-Date: Mon, 01 Jun 2015 12:22:27 -0000
Content-Type: multipart/alternative; boundary=001a11353390d020c9051773e075

--001a11353390d020c9051773e075
Content-Type: text/plain; charset=UTF-8

On 1 June 2015 at 13:08, Victor Rodriguez <vm.rod25@gmail.com> wrote:

> EXTRA_IMAGE_FEATURES = "debug-tweaks dev-pkgs"
>

As the documentation says (
http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#ref-features-image),
dev-pkgs is just the headers and library links for the packages you've
installed.  No tools come with that.

Ross

--001a11353390d020c9051773e075
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 1 June 2015 at 13:08, Victor Rodriguez <span dir=3D"ltr">&lt;<a href=3D"=
mailto:vm.rod25@gmail.com" target=3D"_blank">vm.rod25@gmail.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left=
-style:solid;padding-left:1ex"><div id=3D":qh" class=3D"" style=3D"overflow=
:hidden">EXTRA_IMAGE_FEATURES =3D &quot;debug-tweaks dev-pkgs&quot;<br></di=
v></blockquote></div><br>As the documentation says (<a href=3D"http://www.y=
octoproject.org/docs/1.8/ref-manual/ref-manual.html#ref-features-image">htt=
p://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#ref-features-i=
mage</a>), dev-pkgs is just the headers and library links for the packages =
you&#39;ve installed.=C2=A0 No tools come with that.</div><div class=3D"gma=
il_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a11353390d020c9051773e075--
