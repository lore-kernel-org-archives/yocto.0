Return-Path: <satya.2891@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7661DE00812; Mon, 29 May 2017 07:49:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (satya.2891[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D11C5E007AA
	for <yocto@yoctoproject.org>; Mon, 29 May 2017 07:48:59 -0700 (PDT)
Received: by mail-pg0-f68.google.com with SMTP id s62so6731187pgc.0
	for <yocto@yoctoproject.org>; Mon, 29 May 2017 07:48:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+oQn+iCBZncXv8Wc7JboNG2iNmrvdhZTKveRkVde35c=;
	b=CjKNMgiBTCiQrmP+HvrtG4eLM7E20cn3KD833M/StUO40J3JWYCH5QAF0GnL8HS9wC
	xy7tICkXfC31z4QXtJac2/zcR20dcdy4FPJGpdm9Hxix6Hdbjay/ciqycPXx1E/kfipq
	5vm53puyPFJsuvBy62JKCK4Y0lgMT+/CawMEcCXzNajtS7U81eAsyhd/6swooMRgvkc+
	jYpzOXXk5p2wKuod2k6JREd93F4CwHp8H1F5RsDr3zNflwTFgc6RlaWmWw2HvIbs26jh
	SGG8UMs9zv1w3YkaqhBJMxFtE6XQSP55lhTCtYafV4t9QUH9HPnHUopnCqepD4sHAGjF
	FhYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+oQn+iCBZncXv8Wc7JboNG2iNmrvdhZTKveRkVde35c=;
	b=pNGEBLeKZRELvSCW0kiajHWw+9/8ZrnIZevopIB7YO5azaCfYltUgJ/I5QQE3wCtAt
	5O/zzXqdD1rxBTa5t9YNQ/lmuSKCxlHQ54K3+y4N5dutukjqygQ8JgT5BZNUkpWva6qZ
	gpHchtuXvk0r9wDpPeKAx0li+bxrQ6uykipNfJBktJa3STwwyX8tBMmEy309w58H+FTi
	zke9BYvkxTOzkm1vFgLOs6Q9YBgR6qn8xBm1rfNyuWll6srvPvOu6uDeal3kk5S3s2ZZ
	lpjeJdYe87yHqbjNovuKaG3wVxJj4yobYZYOu5rx0+k3DT8b3ibm1DWhC9hWeFJT7CcF
	9mEQ==
X-Gm-Message-State: AODbwcBGJrqFdNES8+FC78xmOaEgqKnvqTfeizH9y61gekArorlO8gma
	gcP2xaDwTbV3gu8o87oZI3mEJrWfTQ==
X-Received: by 10.99.117.11 with SMTP id q11mr19659795pgc.179.1496069339339;
	Mon, 29 May 2017 07:48:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.138.41 with HTTP; Mon, 29 May 2017 07:48:58 -0700 (PDT)
Received: by 10.100.138.41 with HTTP; Mon, 29 May 2017 07:48:58 -0700 (PDT)
In-Reply-To: <1496069746.26945.36.camel@linux.intel.com>
References: <CAF1M0z6165RSuqw1u6Lo6C3GNM25hPmB0Datt8jYFG6c5NG9QQ@mail.gmail.com>
	<1496069746.26945.36.camel@linux.intel.com>
From: Satya Sampangi <satya.2891@gmail.com>
Date: Mon, 29 May 2017 20:18:58 +0530
Message-ID: <CAF1M0z4-gkUfg+zCXdx6fd7TO-9j1+80D3Y3rDbwNgsXW6WMgQ@mail.gmail.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: qtcreator failed to open
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
X-List-Received-Date: Mon, 29 May 2017 14:49:00 -0000
Content-Type: multipart/alternative; boundary="f403045cd1a887e2b30550aac9ab"

--f403045cd1a887e2b30550aac9ab
Content-Type: text/plain; charset="UTF-8"

Ok, will do that.

On 29-May-2017 8:17 PM, "Leonardo Sandoval" <
leonardo.sandoval.gonzalez@linux.intel.com> wrote:

> On Sun, 2017-05-28 at 19:46 +0530, Satya Sampangi wrote:
> > Dear All,
> >
> >
> > I am trying to install qt5, everything went fine, but I stuck in the
> > stage when I run
> >
> >
> > qtcreator
> >
> >
> > from the terminal, I am getting error as shown in the attachment.
> >
>
> better to use text log than images. Either paste the last lines from the
> error log or use copy&paste to a pastebin link and post it.
>
> >
> > Any help here?
> >
> >
> > Thanks in Advance,
> >
> >
> > Regards,
> > satya
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>
>

--f403045cd1a887e2b30550aac9ab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Ok, will do that.=C2=A0</div><div class=3D"gmail_extra"><=
br><div class=3D"gmail_quote">On 29-May-2017 8:17 PM, &quot;Leonardo Sandov=
al&quot; &lt;<a href=3D"mailto:leonardo.sandoval.gonzalez@linux.intel.com">=
leonardo.sandoval.gonzalez@linux.intel.com</a>&gt; wrote:<br type=3D"attrib=
ution"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">On Sun, 2017-05-28 at 19:46 +0530, Sa=
tya Sampangi wrote:<br>
&gt; Dear All,<br>
&gt;<br>
&gt;<br>
&gt; I am trying to install qt5, everything went fine, but I stuck in the<b=
r>
&gt; stage when I run<br>
&gt;<br>
&gt;<br>
&gt; qtcreator<br>
&gt;<br>
&gt;<br>
&gt; from the terminal, I am getting error as shown in the attachment.<br>
&gt;<br>
<br>
better to use text log than images. Either paste the last lines from the<br=
>
error log or use copy&amp;paste to a pastebin link and post it.<br>
<br>
&gt;<br>
&gt; Any help here?<br>
&gt;<br>
&gt;<br>
&gt; Thanks in Advance,<br>
&gt;<br>
&gt;<br>
&gt; Regards,<br>
&gt; satya<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
<br>
<br>
</blockquote></div></div>

--f403045cd1a887e2b30550aac9ab--
