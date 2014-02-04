Return-Path: <ashish.dalela@gmail.com>
Received: from mail-yk0-f176.google.com (mail-yk0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E7D2E0030B
	for <yocto@yoctoproject.org>; Tue,  4 Feb 2014 02:04:42 -0800 (PST)
Received: by mail-yk0-f176.google.com with SMTP id 131so20615588ykp.7
	for <yocto@yoctoproject.org>; Tue, 04 Feb 2014 02:04:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=f8XQMbsvSNVDE+Jw1aP9q8LE0m+hShksecft8VMZDiA=;
	b=eJZdwyGAa3lCnglbBNDDJoQfTZKAkX5fm+lPad1i1FL0BbTNuHd0fO/isxkxjh7Bci
	5UfJOoKYbxrnU4+tMduNV6OT+AyWPGF0uMO0Nf8x3I9Kla9PsXiFaYm3p9wYn3SM5reB
	jh/3elLKjng8lGc4geXUnvgvwW1BWtbmuCpCk/DCIsN4RiDPXGCHBLaU8DYdd8wMeYrz
	W2pL4IH1tHnX1xJxoviJ12D4jWrc9Uda+UU02CwAxtrTL9QzhrJ6qJk/8ibcnVWTmdnZ
	uCN5dp4NfRWh8mVlk+4RP2x8bIwgMTIMdwq8N5F80xmMflIdwIlZ0M0GcdSit/aCH3IO
	J0RQ==
MIME-Version: 1.0
X-Received: by 10.236.131.19 with SMTP id l19mr38353606yhi.0.1391508281268;
	Tue, 04 Feb 2014 02:04:41 -0800 (PST)
Received: by 10.170.169.66 with HTTP; Tue, 4 Feb 2014 02:04:41 -0800 (PST)
In-Reply-To: <8095968.iRV8g0aUl9@peggleto-mobl5.ger.corp.intel.com>
References: <CABhkJRd8K90o9_oiaTQ82uvGzoxBhC_qgK15k+XyTKLmVDoc_g@mail.gmail.com>
	<8095968.iRV8g0aUl9@peggleto-mobl5.ger.corp.intel.com>
Date: Tue, 4 Feb 2014 15:34:41 +0530
Message-ID: <CABhkJRdz8hn9oWHmW1Dj6d=Ze56PydOqarmmjF+HPbQd4YcDXA@mail.gmail.com>
From: Ashish Dalela <ashish.dalela@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Python recipe question
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
X-List-Received-Date: Tue, 04 Feb 2014 10:04:42 -0000
Content-Type: multipart/alternative; boundary=20cf3010e96dce9fa704f191c42c

--20cf3010e96dce9fa704f191c42c
Content-Type: text/plain; charset=ISO-8859-1

Thanks Paul for the quick response. I will try your suggestions.

-Ashish


On Tue, Feb 4, 2014 at 3:30 PM, Paul Eggleton <paul.eggleton@linux.intel.com
> wrote:

> Hi Ashish,
>
> On Tuesday 04 February 2014 14:50:29 Ashish Dalela wrote:
> > I notice that many  python standard modules (e.g. cgi.py) are not getting
> > packaged with the core-image-basic. I can't find a specific package that
> > includes this although I can see the file being a part of the source
> > archive. Any suggestion on how I can include all standard libraries?
>
> Our python recipe splits out a number of modules into their own separate
> packages; cgi.py is in a package called "python-netserver". You can find
> which
> package standard modules are in by looking in
> tmp/work/<arch>/python/<version>/packages-split/ , or alternatively you can
> include the "python-modules" package in your image to get all of them
> installed.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--20cf3010e96dce9fa704f191c42c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Paul for the quick response. I will try your sugges=
tions.<div><br></div><div>-Ashish</div></div><div class=3D"gmail_extra"><br=
><br><div class=3D"gmail_quote">On Tue, Feb 4, 2014 at 3:30 PM, Paul Egglet=
on <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" t=
arget=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi Ashish,<br>
<div><div class=3D"h5"><br>
On Tuesday 04 February 2014 14:50:29 Ashish Dalela wrote:<br>
&gt; I notice that many =A0python standard modules (e.g. cgi.py) are not ge=
tting<br>
&gt; packaged with the core-image-basic. I can&#39;t find a specific packag=
e that<br>
&gt; includes this although I can see the file being a part of the source<b=
r>
&gt; archive. Any suggestion on how I can include all standard libraries?<b=
r>
<br>
</div></div>Our python recipe splits out a number of modules into their own=
 separate<br>
packages; cgi.py is in a package called &quot;python-netserver&quot;. You c=
an find which<br>
package standard modules are in by looking in<br>
tmp/work/&lt;arch&gt;/python/&lt;version&gt;/packages-split/ , or alternati=
vely you can<br>
include the &quot;python-modules&quot; package in your image to get all of =
them<br>
installed.<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--20cf3010e96dce9fa704f191c42c--
