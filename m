Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-vc0-f180.google.com (mail-vc0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B7D0E013DA
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 04:54:10 -0700 (PDT)
Received: by mail-vc0-f180.google.com with SMTP id gf11so6995730vcb.39
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 04:54:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=JQYXSqG2Z5hpyB+Aufl0DVcTdg4z2OlL9FER0EY4fQU=;
	b=PwOCbvNRaG7/R9htXSMM1ospZzyxKAylXB17uuahUGKy6uliflfGB4CEW8Ln15Fw/7
	o0HGRIgganfwrcuiGC3G6mBkqi8tbPCemFwkvcAhu/MIEjKW+DlHvqH97KvpKspUssQN
	OZEp4qLqxUAZURUSD6YzV60KTgDB5a480JQZ2Y4CxX5K91xXCBPCAV6wqwLlV2CO469O
	UfUz1EQ/EvSwlPeb4HHCFtu5PVFno8+1g7tNYLhmFBsCuZH/d+3aGOcP02apzXFFL4P+
	jK1wYd4VfOWu6nYpFcrXfXeZHxFQTGoQmevmUh/t4Z7aBovzhZ+hy5Cq5FkeBx9shFtj
	2BQA==
X-Gm-Message-State: ALoCoQkqMLl6p5X9e/+BlsUk9sL2jk66nCshntJw6xoeilvNh1sFD3nvlb2iIbm6o+U4n+aPokcs
X-Received: by 10.52.230.202 with SMTP id ta10mr157146vdc.41.1378986849745;
	Thu, 12 Sep 2013 04:54:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.221.49.202 with HTTP; Thu, 12 Sep 2013 04:53:49 -0700 (PDT)
In-Reply-To: <3660370.oRDG4CenKT@helios>
References: <E51394554A503C4E852F9BEE46B03E8DEFCD7F@TI-ODIN.tasernet.com>
	<3660370.oRDG4CenKT@helios>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 12 Sep 2013 13:53:49 +0200
Message-ID: <CAP71Wjz=2tpUFK=CeOWQshm4z91Yu5r-_xGUo+CeuWVaU3NcPg@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: How to customize a file coming from another recipe?
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
X-List-Received-Date: Thu, 12 Sep 2013 11:54:13 -0000
Content-Type: multipart/alternative; boundary=089e0111d92654536604e62e6571

--089e0111d92654536604e62e6571
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Sep 12, 2013 at 12:16 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> > Is the best course to create a recipe bbappend for the
> lighttpd_1.4.31.bb
> > file that is being used?  And can I just include a new file with the same
> > name in my append and will it overwrite the old one, or do I need to
> create
> > an actual patch file?
>
> So, since this config file is provided along with the original recipe, and
> is
> already mentioned in SRC_URI and installed within do_install, you only
> need to
> extend FILESEXTRAPATHS in your bbappend so that the system can pick up your
> version of the file. Outright replacing the file is the easiest way here
> rather
> than trying to patch it.
>
> So in your bbappend you would have:
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"


how about if the lighttpd.conf file needs to be fetched (git or svn)
instead added in the same repo as the recipe?

--089e0111d92654536604e62e6571
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Sep 12, 2013 at 12:16 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton=
@linux.intel.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">&gt; Is the best course to=
 create a recipe bbappend for the <a href=3D"http://lighttpd_1.4.31.bb" tar=
get=3D"_blank">lighttpd_1.4.31.bb</a><br>


&gt; file that is being used? =A0And can I just include a new file with the=
 same<br>
&gt; name in my append and will it overwrite the old one, or do I need to c=
reate<br>
&gt; an actual patch file?<br>
<br>
</div>So, since this config file is provided along with the original recipe=
, and is<br>
already mentioned in SRC_URI and installed within do_install, you only need=
 to<br>
extend FILESEXTRAPATHS in your bbappend so that the system can pick up your=
<br>
version of the file. Outright replacing the file is the easiest way here ra=
ther<br>
than trying to patch it.<br>
<br>
So in your bbappend you would have:<br>
<br>
FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;</blockquote></di=
v><br>how about if the lighttpd.conf file needs to be fetched (git or svn) =
instead added in the same repo as the recipe?=A0</div><div class=3D"gmail_e=
xtra">

<br></div><div class=3D"gmail_extra"><br></div></div>

--089e0111d92654536604e62e6571--
