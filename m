Return-Path: <californialsullivan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 437A4E00871; Mon, 22 Sep 2014 17:27:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (californialsullivan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2C19E0086E
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 17:27:50 -0700 (PDT)
Received: by mail-oi0-f48.google.com with SMTP id e131so3899035oig.7
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 17:27:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=8RMjY51TduEakTIo7YUmEgl1m30h+u85EQ6fbILmnI4=;
	b=ddj8SLZbr0WzkHA7SWRI816zu7Wq81L4Ru0y0AJLRYi90eQFYpmEzSGDoous+6txCf
	eYYphDA7TsWBG6VHOiKAdwNVQzJ8un7JHX7Yyr73Zj+wF/XY7fc+my5oNnPT7C6zl50M
	IWVDg7c7xZPxgIFo2iNZwde3O3mB4QR4fwPR19w/trKN9E5yHMrKR43IBY4D61Ep+UeR
	uF5Q9t7e/bqjVLX8cS00nriLbUQ+9v1p+5zY0ZdAe7CO8mNVNdGgEuhsaFGL1IStCgs0
	MVNN8cygse87ROXVEs1AgWwoJQQPjlZiqrAft73YBVoyZS74LgjHnkVySWMifmVdMgNV
	0mwg==
MIME-Version: 1.0
X-Received: by 10.60.141.35 with SMTP id rl3mr22363931oeb.43.1411432069402;
	Mon, 22 Sep 2014 17:27:49 -0700 (PDT)
Received: by 10.76.157.229 with HTTP; Mon, 22 Sep 2014 17:27:49 -0700 (PDT)
In-Reply-To: <1411424619-12779-1-git-send-email-elizabeth.flanagan@intel.com>
References: <1411424619-12779-1-git-send-email-elizabeth.flanagan@intel.com>
Date: Mon, 22 Sep 2014 17:27:49 -0700
Message-ID: <CAMP9K8-F5dYs9kcfuAcLqFpfbrncdS6Gu-W19v-xPsU0q-dAEw@mail.gmail.com>
From: California Sullivan <californialsullivan@gmail.com>
To: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [AUTOBUILDER PATCH] Initial commit of Yocto Autobuilder Dev Docs
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
X-List-Received-Date: Tue, 23 Sep 2014 00:27:57 -0000
Content-Type: multipart/alternative; boundary=047d7b339dbb1f176c0503b0a30c

--047d7b339dbb1f176c0503b0a30c
Content-Type: text/plain; charset=UTF-8

Signed-off-by: California Sullivan <california.l.sullivan@intel.com>

On Mon, Sep 22, 2014 at 3:23 PM, Elizabeth Flanagan <
elizabeth.flanagan@intel.com> wrote:

> The first pass of the yocto-autobuilder developer document is available at:
>
>
> http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/log/?h=eflanagan/docs
>
> The document still has some TODOs and missing spots, but at 23 pages long
> it's
> reached the point where the community should find it somewhat useful.
>
> Development is occuring for the time being on Google Docs at:
>
>
> https://docs.google.com/document/d/1VeShmhDnqN27HXMX5emgmHFoK8Cu9SzVYilmGjtMTtI
>
> Elizabeth Flanagan (1):
>   Initial Commit of Documentation
>
>  docs/YoctoAutobuilderDevelopersDocument.html |   1 +
>  docs/images/image00.png                      | Bin 0 -> 67622 bytes
>  2 files changed, 1 insertion(+)
>  create mode 100644 docs/YoctoAutobuilderDevelopersDocument.html
>  create mode 100644 docs/images/image00.png
>
> --
> 1.9.0
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7b339dbb1f176c0503b0a30c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Signed-off-by: California Sullivan &lt;<a href=3D"mailto:c=
alifornia.l.sullivan@intel.com">california.l.sullivan@intel.com</a>&gt;<br>=
</div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Sep=
 22, 2014 at 3:23 PM, Elizabeth Flanagan <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:elizabeth.flanagan@intel.com" target=3D"_blank">elizabeth.flanagan@in=
tel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">The first p=
ass of the yocto-autobuilder developer document is available at:<br>
<br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder/log/=
?h=3Deflanagan/docs" target=3D"_blank">http://git.yoctoproject.org/cgit/cgi=
t.cgi/yocto-autobuilder/log/?h=3Deflanagan/docs</a><br>
<br>
The document still has some TODOs and missing spots, but at 23 pages long i=
t&#39;s<br>
reached the point where the community should find it somewhat useful.<br>
<br>
Development is occuring for the time being on Google Docs at:<br>
<br>
<a href=3D"https://docs.google.com/document/d/1VeShmhDnqN27HXMX5emgmHFoK8Cu=
9SzVYilmGjtMTtI" target=3D"_blank">https://docs.google.com/document/d/1VeSh=
mhDnqN27HXMX5emgmHFoK8Cu9SzVYilmGjtMTtI</a><br>
<br>
Elizabeth Flanagan (1):<br>
=C2=A0 Initial Commit of Documentation<br>
<br>
=C2=A0docs/YoctoAutobuilderDevelopersDocument.html |=C2=A0 =C2=A01 +<br>
=C2=A0docs/images/image00.png=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | Bin 0 -&gt; 67622 bytes<br>
=C2=A02 files changed, 1 insertion(+)<br>
=C2=A0create mode 100644 docs/YoctoAutobuilderDevelopersDocument.html<br>
=C2=A0create mode 100644 docs/images/image00.png<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
1.9.0<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--047d7b339dbb1f176c0503b0a30c--
