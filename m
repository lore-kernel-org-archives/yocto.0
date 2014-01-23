Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-lb0-f172.google.com (mail-lb0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7331DE00857
	for <yocto@yoctoproject.org>; Thu, 23 Jan 2014 15:46:15 -0800 (PST)
Received: by mail-lb0-f172.google.com with SMTP id c11so2053181lbj.3
	for <yocto@yoctoproject.org>; Thu, 23 Jan 2014 15:46:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=PbY8RfFZclG7q6shlASGSANlm/qXPxcSqBkyoYmJan0=;
	b=bCTXAuHqiTob0Bx522/MzI8xoCdvVMhBgqYMcdUyaYJYQlLkI2Tqbv6nhR5xV1esTW
	SWlt2Vqc7gvS19voTYxCjssshaZc/XJTIe2b7+u5hMh5MgGgcVzR3I8DAu6SL61J6TaZ
	2yEXxKT7Q0s4/vt7cT9yDPOJDztNTHzi7tgtk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=PbY8RfFZclG7q6shlASGSANlm/qXPxcSqBkyoYmJan0=;
	b=XjW3FjTYuP7DR9QDPjay7QYohSjlLmtP4VkYHwl597Yi4Cz8Zpz/nGPos1P8/lbHU7
	wnR3hZA4O1bvqMNlSEOX8B65SAQh+9+sY3li+rMOA2pNTnAYpnVHQidbe8pBm8rz1xID
	F3jpCtg0Up1hUjOWDyWNKogTzhF2c/vJh02QGJcWlcP4W5uH8rL5dTkU4VI8sFzPxihb
	oqT1LjC684TioHmLLYP0too8w79GpbVeWZNn1wm5cx1T9uCqrkowelPHhJmczrHUzfUd
	iwiGVadkqyhBVU+njvO7Ld7nEErxjtoGzQ/Tl4I89+e6fxhK1dpdQqF8LGhUf/dNIy1v
	IuLA==
X-Gm-Message-State: ALoCoQnim30t85RK0R/4+2QjhQI//CbLQIV6VdgyQ9svZcXSrpw+8g2cQyZIm2+0Po2D8ovBCr2m
MIME-Version: 1.0
X-Received: by 10.152.28.73 with SMTP id z9mr6864971lag.29.1390520773891; Thu,
	23 Jan 2014 15:46:13 -0800 (PST)
Received: by 10.112.9.230 with HTTP; Thu, 23 Jan 2014 15:46:13 -0800 (PST)
In-Reply-To: <52E19565.4080306@reliableembeddedsystems.com>
References: <52E19565.4080306@reliableembeddedsystems.com>
Date: Thu, 23 Jan 2014 15:46:13 -0800
Message-ID: <CA+gsK-rXdtS2Kis3Baf34YpK3QTHNCMMWnqUaTCGLYzD6vxpqQ@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Robert Berger <gmane@reliableembeddedsystems.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: fetcher from gitpod
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
X-List-Received-Date: Thu, 23 Jan 2014 23:46:18 -0000
Content-Type: multipart/alternative; boundary=089e0158c026c7e55204f0abd89b

--089e0158c026c7e55204f0abd89b
Content-Type: text/plain; charset=ISO-8859-1

Hi Robert,

Did you try something like

SRC_URI = "git://gp@gitpod:linux-stable.git"

The git fetcher supports authentication with a username, if that is your
concern.

Regards,
Rudi


On Thu, Jan 23, 2014 at 2:19 PM, Robert Berger <
gmane@reliableembeddedsystems.com> wrote:

> Hi,
>
> I would like to fetch some get repos (currently u-boot and kernel) from
> a local git caching server[1]. This means if something changed on
> git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git
> since the last invocations it updates the changes, if nothing changed it
> provides the repo locally.
>
> After setting up the right ssh keys not to ask for a password it works
> like this:
>
> git clone gp@gitpod:linux-stable.git
> Cloning into 'linux-stable'...
> fetching from
> git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git
> remote: Counting objects: 3572381, done.
> remote: Compressing objects: 100% (574164/574164), done.
> Receiving objects: 100% (3572381/3572381), 752.89 MiB | 11.53 MiB/s, done.
> remote: Total 3572381 (delta 3008721), reused 3531934 (delta 2968274)
> Resolving deltas: 100% (3008721/3008721), done.
>
> Should this somehow already work with existing fetchers, or do I need to
> hack together my own fetcher?
>
> Regards,
>
> Robert
>
> [1] https://github.com/sitaramc/gitpod..."The problem is never how to
> get new, innovative thoughts into your mind, but how to get old ones
> out." -- Dee Hock
>
> My public pgp key is available,at:
> http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e0158c026c7e55204f0abd89b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Robert,<div><br></div><div>Did you try something like</=
div><div><br></div><div>SRC_URI =3D &quot;git://<span style=3D"font-family:=
arial,sans-serif;font-size:13.333333969116211px">gp@gitpod:linux-stable.git=
&quot;</span></div>
<div><span style=3D"font-family:arial,sans-serif;font-size:13.3333339691162=
11px"><br></span></div><div><span style=3D"font-family:arial,sans-serif;fon=
t-size:13.333333969116211px">The git fetcher supports authentication with a=
 username, if that is your concern.</span></div>
<div><span style=3D"font-family:arial,sans-serif;font-size:13.3333339691162=
11px"><br></span></div><div><span style=3D"font-family:arial,sans-serif;fon=
t-size:13.333333969116211px">Regards,</span></div><div><span style=3D"font-=
family:arial,sans-serif;font-size:13.333333969116211px">Rudi</span></div>
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu, Jan 2=
3, 2014 at 2:19 PM, Robert Berger <span dir=3D"ltr">&lt;<a href=3D"mailto:g=
mane@reliableembeddedsystems.com" target=3D"_blank">gmane@reliableembeddeds=
ystems.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi,<br>
<br>
I would like to fetch some get repos (currently u-boot and kernel) from<br>
a local git caching server[1]. This means if something changed on<br>
git://<a href=3D"http://git.kernel.org/pub/scm/linux/kernel/git/stable/linu=
x-stable.git" target=3D"_blank">git.kernel.org/pub/scm/linux/kernel/git/sta=
ble/linux-stable.git</a><br>
since the last invocations it updates the changes, if nothing changed it<br=
>
provides the repo locally.<br>
<br>
After setting up the right ssh keys not to ask for a password it works<br>
like this:<br>
<br>
git clone gp@gitpod:linux-stable.git<br>
Cloning into &#39;linux-stable&#39;...<br>
fetching from<br>
git://<a href=3D"http://git.kernel.org/pub/scm/linux/kernel/git/stable/linu=
x-stable.git" target=3D"_blank">git.kernel.org/pub/scm/linux/kernel/git/sta=
ble/linux-stable.git</a><br>
remote: Counting objects: 3572381, done.<br>
remote: Compressing objects: 100% (574164/574164), done.<br>
Receiving objects: 100% (3572381/3572381), 752.89 MiB | 11.53 MiB/s, done.<=
br>
remote: Total 3572381 (delta 3008721), reused 3531934 (delta 2968274)<br>
Resolving deltas: 100% (3008721/3008721), done.<br>
<br>
Should this somehow already work with existing fetchers, or do I need to<br=
>
hack together my own fetcher?<br>
<br>
Regards,<br>
<br>
Robert<br>
<br>
[1] <a href=3D"https://github.com/sitaramc/gitpod.." target=3D"_blank">http=
s://github.com/sitaramc/gitpod..</a>.&quot;The problem is never how to<br>
get new, innovative thoughts into your mind, but how to get old ones<br>
out.&quot; -- Dee Hock<br>
<br>
My public pgp key is available,at:<br>
<a href=3D"http://pgp.mit.edu:11371/pks/lookup?op=3Dget&amp;search=3D0x9032=
0BF1" target=3D"_blank">http://pgp.mit.edu:11371/pks/lookup?op=3Dget&amp;se=
arch=3D0x90320BF1</a><br>
<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br><br clear=3D"all"><div><br></div><div dir=3D"ltr"><d=
iv><font face=3D"garamond, serif"><span style=3D"border-collapse:collapse;c=
olor:rgb(102,102,102);font-family:arial,sans-serif;font-size:13px"><br></sp=
an></font></div>
</div>
</div></div>

--089e0158c026c7e55204f0abd89b--
