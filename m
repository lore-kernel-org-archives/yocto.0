Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78C86E00CEF; Fri, 10 Nov 2017 10:29:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jerry.lian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA354E00CC4
	for <yocto@yoctoproject.org>; Fri, 10 Nov 2017 10:29:25 -0800 (PST)
Received: by mail-oi0-f45.google.com with SMTP id q4so7423375oic.7
	for <yocto@yoctoproject.org>; Fri, 10 Nov 2017 10:29:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cqJIVwThGqwXe9re7CYthhx1fLO1x6H91t++gZvGow8=;
	b=lxWe4uW0mo5n5YOViYEIlYcLtJ6oNl4W4Vb3ID9s9JotlpU5VmshDfBT9mZgGHkR2c
	JPkJyue3Cwp2tFnRGqem4thu6VkO+WZjygro7Cb25A9SRcba6Rg6HBpmol/WV7kdsXJ5
	xbEuEBx6i7mP8dwLjOv6kf1zggGym3Km6uzm5DsnHBjtwfzOWqJQOUTJldM/NSZ5IZKB
	Fy8u4DHfH3p1kWvGqybwJ28O6iUtho3VGulGt+yE07Vnl4nr8XHHQ7v6u/ZSrb8dLU3n
	b5GKEMtI8EhBsCkeiop0UhY2Y9dRqiR8XbhKOvCvNObE4YbE01v/Uy/MZoYjmYMOpYeG
	WaqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cqJIVwThGqwXe9re7CYthhx1fLO1x6H91t++gZvGow8=;
	b=mL3Tq/3wQuOIv2PRHJ7aSnlbgdY5IDYin7d1oO8VI45UBph1uMEAMumdzX1kLA4y0t
	pquuXuDZdsHmdC29TGcspMvN5iRIEjZfYIY8+/R52pFPUNuKUq9BAo/a6xwvjsx9k+k1
	1yDOiFEQ5vpdLI5OQv4IpX/ucQ5YNm5dQdat9AG3q7NMqE6/L7xJbSxoEh943wLZ7lPQ
	dUs4udYdsHu9hROnfe7BNQ8cDCN7mQ9xeXmQgIFWitCRCAuOV1lnC6OpjwICK9VQpoWE
	f+toxU/Lr1PhsPxSHlqq/E1xPk27KjnO3jdXspoKYxU+ZaRO3aV+xz2pxjTTyGHKZsb1
	ucxg==
X-Gm-Message-State: AJaThX6XHy8mUNq6kbQued0P/oWnD7ov8qCRi+SLz5dgTcb5YOyXBocq
	gKTh8uOx7ib3pEKQc/Em38XO/vxyp8tVHY/Ab8E=
X-Google-Smtp-Source: AGs4zMabBwnBVWr4UolpzkU6rWj8NkgCTKJFtdVF15VEl3g7w86KjqV6M7FzXeuDnoy3jeyeJtT3EAqS1t9pnHeQnt8=
X-Received: by 10.202.72.79 with SMTP id v76mr698442oia.430.1510338564627;
	Fri, 10 Nov 2017 10:29:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.113 with HTTP; Fri, 10 Nov 2017 10:29:23 -0800 (PST)
In-Reply-To: <20171109113222.3326bfcf@lsandov1-mobl2.zpn.intel.com>
References: <CAE0QtjNoY6hheGcKzzg86N+8AxOL4k8n-kTxyq1KGa660_Ut_w@mail.gmail.com>
	<CAJTo0LZ-EtWQQzAoDQv5t9UfTSrfU00zzaRk_HoVR4nm5iN98A@mail.gmail.com>
	<20171109113222.3326bfcf@lsandov1-mobl2.zpn.intel.com>
From: Jerry Lian <jerry.lian@gmail.com>
Date: Fri, 10 Nov 2017 13:29:23 -0500
Message-ID: <CAE0QtjOPNcci=MQFH1BWDQ7jaghH+bNqgxi=5Vf2NOhSw0QUHw@mail.gmail.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto documentation: no content, no PDF?
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
X-List-Received-Date: Fri, 10 Nov 2017 18:29:26 -0000
Content-Type: multipart/alternative; boundary="001a113ed1e4a2a03a055da519ac"

--001a113ed1e4a2a03a055da519ac
Content-Type: text/plain; charset="UTF-8"

It works! The PDF files are much better to read with better content.
(The HTML document on website is almost useless without the content)

Thank you guys!

On Thu, Nov 9, 2017 at 12:32 PM, Leonardo Sandoval <
leonardo.sandoval.gonzalez@linux.intel.com> wrote:

> On Wed, 8 Nov 2017 16:30:39 +0000
> "Burton, Ross" <ross.burton@intel.com> wrote:
>
> > On 8 November 2017 at 15:41, Jerry Lian <jerry.lian@gmail.com> wrote:
> >
> > > Just wondering:
> > > * As an active project, why yocto documentation does not provide a
> content
> > > (better be clickable)?
> > >
> >
> > The megamanual (Complete Documentation) doesn't have a top-level table of
> > contents as that basically exists to search globally.  The real docs
> (such
> > as Tasks Manual) have a top level table of contents.
> >
> > * Or PDF format for easy printing.
> > >
>
> Try running
>
> make pdf DOC=ref-manual
>
>
> (then drink so coffee and wait) After it, the pdf manual is there. There
> are other manuals as well, this is just an example cmd.
>
> Leo
>
> >
> > That would be massive.  The source is in git as docbook so it's fairly
> > simple to generate a PDF.
>
>
>
> >
> > Ross
>

--001a113ed1e4a2a03a055da519ac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>It works! The PDF files are much better to read =
with better content.<br></div>(The HTML document on website is almost usele=
ss without the content) <br><br></div>Thank you guys!<br></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Nov 9, 2017 at 12:3=
2 PM, Leonardo Sandoval <span dir=3D"ltr">&lt;<a href=3D"mailto:leonardo.sa=
ndoval.gonzalez@linux.intel.com" target=3D"_blank">leonardo.sandoval.gonzal=
ez@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<span class=3D"">On Wed, 8 Nov 2017 16:30:39 +0000<br>
&quot;Burton, Ross&quot; &lt;<a href=3D"mailto:ross.burton@intel.com">ross.=
burton@intel.com</a>&gt; wrote:<br>
<br>
&gt; On 8 November 2017 at 15:41, Jerry Lian &lt;<a href=3D"mailto:jerry.li=
an@gmail.com">jerry.lian@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; &gt; Just wondering:<br>
&gt; &gt; * As an active project, why yocto documentation does not provide =
a content<br>
&gt; &gt; (better be clickable)?<br>
&gt; &gt;<br>
&gt;<br>
&gt; The megamanual (Complete Documentation) doesn&#39;t have a top-level t=
able of<br>
&gt; contents as that basically exists to search globally.=C2=A0 The real d=
ocs (such<br>
&gt; as Tasks Manual) have a top level table of contents.<br>
&gt;<br>
&gt; * Or PDF format for easy printing.<br>
&gt; &gt;<br>
<br>
</span>Try running<br>
<br>
make pdf DOC=3Dref-manual<br>
<br>
<br>
(then drink so coffee and wait) After it, the pdf manual is there. There ar=
e other manuals as well, this is just an example cmd.<br>
<br>
Leo<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; That would be massive.=C2=A0 The source is in git as docbook so it&#39=
;s fairly<br>
&gt; simple to generate a PDF.<br>
<br>
<br>
<br>
&gt;<br>
&gt; Ross<br>
</div></div></blockquote></div><br></div>

--001a113ed1e4a2a03a055da519ac--
