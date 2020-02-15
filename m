Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1900.1581788350759270952
 for <yocto@lists.yoctoproject.org>;
 Sat, 15 Feb 2020 09:39:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GhWY7PFN;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: martin.jansa@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55753E0172D; Sat, 15 Feb 2020 09:39:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.51 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59F06E0172B
	for <yocto@yoctoproject.org>; Sat, 15 Feb 2020 09:39:09 -0800 (PST)
Received: by mail-ed1-f51.google.com with SMTP id t7so3605144edr.4
        for <yocto@yoctoproject.org>; Sat, 15 Feb 2020 09:39:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nIf77KPJB5cO0YH8x/gw6F2GJz9FiHKRCDcS5X89fCE=;
        b=GhWY7PFN56BefqUFAAPw43G53iK1cVKhUNKQlPtrVXu/NQH4lND6Q18qpXyXB+HMqK
         J/qajKyq5E/LVG+76GCHKgr6Nxc0aChjnlvwHYIt9mpyfoFi6qQN+9qkQrrpRRNcT9+W
         UdZ8s5sj3wtMzgMB39qDFHiC4rPGu5TZBYQBOAHZC+GvOiFjBjYBqOxWlfeFPOb3DLUx
         WrXe2DW46AgTgaTOwU1V5tyzFP2lfpZZWUo5NA4LFqHdmh9Dyk7Pwhx3UmhEt52hF9n4
         PS0fbJNj6n99P7JYjFE+KNNfR7JuuctHVtLTvlHRQ3AJu3zbai2vOrOe4c21jaZTKQTk
         wGkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nIf77KPJB5cO0YH8x/gw6F2GJz9FiHKRCDcS5X89fCE=;
        b=AjPRQuVQJ8FQE7DqB3cb5yMnZqvowtwNND++Xel5qPeCRqNCj+EHSdjwQUK/NHNNS3
         J3myx+YVLpGbMJC/OvznWJwiojxi7B0Wpsu+jkq8RzI+J9Z2tRjQ81tps+iY4WtAFS8b
         C/bc2pkJYGVGTiERIjBslfEdhMN+pHtnBPqOuNuwbSYi0DzO/JAgcKeZnG1EAT2L1Ckj
         RcFtcldow98DnFq/4Zlu+ABMAflA1Kz7sWLaFVZ1gzEUkpz6XP0O9KHsskicI8mUihHe
         fCYhQttoS0Wteq+wEyCnWF0dLpqtUgqXbw0whLeQQbDIf7lmAhpkWFzuU1N+lS5ZrpcZ
         ZbFg==
X-Gm-Message-State: APjAAAW7+WqXwJn/rTGLprxN/D6caFlNRrOzYOnUv4ipv9/PGV09NK85
	HRaJBTOc4JpJ06odktUWQ3ZAfrC61XGxXLgOOCewSg==
X-Google-Smtp-Source: APXvYqwkBKwyjcH9ZHqZ6IKvKK2pvP3n0ToDixwDF9G0jATMFXVq1vTYQ8vJEJw63RbtvCQ+1UVBtU5RRETq5WJVk8M=
X-Received: by 2002:aa7:d145:: with SMTP id r5mr7730824edo.337.1581788348463;
 Sat, 15 Feb 2020 09:39:08 -0800 (PST)
MIME-Version: 1.0
References: <alpine.LFD.2.21.2002150129460.2926947@localhost.localdomain> <61336b69-5456-3951-4b52-a6d471049612@ibeeto.com>
In-Reply-To: <61336b69-5456-3951-4b52-a6d471049612@ibeeto.com>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Sat, 15 Feb 2020 18:38:57 +0100
Message-ID: <CA+chaQdy2=M+HeX93X1c-Ttk-1r6KtBXEFFS62Pkj19UQC_C3g@mail.gmail.com>
Subject: Re: [yocto] does git SRC_URI really *require" a SRCREV setting?
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>, Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000009ebf70059ea0cca6"

--0000000000009ebf70059ea0cca6
Content-Type: text/plain; charset="UTF-8"

Both recipes should be updated to use SRCREV like any other recipe, I'll
send patch for that.

The documentation should also mention that using tag names in SRCREV (or
tag parameter) is not recommended, because tags can be moved and bitbake
will always use "git ls-remote" to map the tag name to actual git sha,
which needs to upstream repo to be available (breaking the builds without
access to the network).

On Sat, Feb 15, 2020 at 6:33 PM Rudolf J Streif <rudolf.streif@ibeeto.com>
wrote:

> The wording might need improvement but both of your examples actually do
> provide SRC_REV but in the inline form with SRC_URI (rev/tag).
>
> The documentation should probably say something like SRC_REV needs to be
> provided but it can either be done by setting the variable explicitly or by
> using the rev/tag option with SRC_URI.
>
> :rjs
> On 2/14/20 10:35 PM, rpjday@crashcourse.ca wrote:
>
>   yes, yes, more obsessive-compulsive nitpickery, but YP dev tasks
> manual, section 3.3.5, reads:
>
> "Another way of specifying source is from an SCM. For Git
> repositories, you must specify SRCREV and you should specify PV to
> include the revision with SRCPV."
>
>   you *must* specify SRCREV? i don't think that's true -- a couple
> examples from meta-oe ... here's hiredis_0.13.1.bb:
>
> SRC_URI = "git://github.com/redis/hiredis;protocol=git;rev=f58dd249d6ed47a7e835463c3b04722972281dbb \
>
>   and here's sshfs-fuse_2.8.bb:
>
> SRC_URI = "git://github.com/libfuse/sshfs;tag=b2fa7593586b141298e6159f40f521d2b0f4f894 \
>
>   neither of which specify SRCREV (clearly since they don't need to
> given the SRC_URI options in use).
>
> rday
>
> p.s. bitbake's git.py fetcher code makes no mention of the "rev"
> option in its opening docstring. just an observation if anyone wants
> to tweak that.
>
>
>
> --
> -----
> Rudolf J Streif
> CEO/CTO ibeeto
> +1.855.442.3386 x700
>
> 
>

--0000000000009ebf70059ea0cca6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Both recipes should be updated to use SRCREV like any othe=
r recipe, I&#39;ll send patch for that.<div><br></div><div>The documentatio=
n should also mention that using tag names in SRCREV (or tag parameter) is =
not recommended, because tags can be moved and bitbake will always use &quo=
t;git ls-remote&quot; to map the tag name to actual git sha, which needs to=
 upstream repo to be available (breaking the builds without access to the n=
etwork).</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sat, Feb 15, 2020 at 6:33 PM Rudolf J Streif &lt;<a hre=
f=3D"mailto:rudolf.streif@ibeeto.com">rudolf.streif@ibeeto.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
  
    
  
  <div>
    <p>The wording might need improvement but both of your examples
      actually do provide SRC_REV but in the inline form with SRC_URI
      (rev/tag).</p>
    <p>The documentation should probably say something like SRC_REV
      needs to be provided but it can either be done by setting the
      variable explicitly or by using the rev/tag option with SRC_URI.<br>
    </p>
    <p>:rjs<br>
    </p>
    <div>On 2/14/20 10:35 PM,
      <a href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@cr=
ashcourse.ca</a> wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <pre>  yes, yes, more obsessive-compulsive nitpickery, but YP dev ta=
sks
manual, section 3.3.5, reads:

&quot;Another way of specifying source is from an SCM. For Git
repositories, you must specify SRCREV and you should specify PV to
include the revision with SRCPV.&quot;

  you *must* specify SRCREV? i don&#39;t think that&#39;s true -- a couple
examples from meta-oe ... here&#39;s <a href=3D"http://hiredis_0.13.1.bb" =
target=3D"_blank">hiredis_0.13.1.bb</a>:

SRC_URI =3D &quot;git://<a href=3D"http://github.com/redis/hiredis;protoco=
l=3Dgit;rev=3Df58dd249d6ed47a7e835463c3b04722972281dbb" target=3D"_blank">g=
ithub.com/redis/hiredis;protocol=3Dgit;rev=3Df58dd249d6ed47a7e835463c3b0472=
2972281dbb</a> \

  and here&#39;s <a href=3D"http://sshfs-fuse_2.8.bb" target=3D"_blank">ss=
hfs-fuse_2.8.bb</a>:

SRC_URI =3D &quot;git://<a href=3D"http://github.com/libfuse/sshfs;tag=3Db=
2fa7593586b141298e6159f40f521d2b0f4f894" target=3D"_blank">github.com/libfu=
se/sshfs;tag=3Db2fa7593586b141298e6159f40f521d2b0f4f894</a> \

  neither of which specify SRCREV (clearly since they don&#39;t need to
given the SRC_URI options in use).

rday

p.s. bitbake&#39;s git.py fetcher code makes no mention of the &quot;rev&q=
uot;
option in its opening docstring. just an observation if anyone wants
to tweak that.

</pre>
      <br>
      <fieldset></fieldset>
      <pre></pre>
    </blockquote>
    <pre cols=3D"72">--=20
-----
Rudolf J Streif
CEO/CTO ibeeto
+1.855.442.3386 x700</pre>
  </div>

<br>
</blockquote></div>

--0000000000009ebf70059ea0cca6--
