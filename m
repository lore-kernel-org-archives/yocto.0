Return-Path: <satya.2891@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97D4EE00924; Thu,  2 Mar 2017 08:14:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (satya.2891[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f41.google.com (mail-lf0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02044E0049D
	for <yocto@yoctoproject.org>; Thu,  2 Mar 2017 08:14:19 -0800 (PST)
Received: by mail-lf0-f41.google.com with SMTP id y193so35889210lfd.3
	for <yocto@yoctoproject.org>; Thu, 02 Mar 2017 08:14:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=OJZA8QXyMRcj2yOGpX6WfhuHfX7gaqZYDRggihsY0pw=;
	b=Dal4y495mmMFL3UGaTO7eL56qPPW39bt8r06H+hIW70Cpw5gjg5/m/rTMEOYOQ8w3F
	uaa+6sjWZQ0qyi6bqLbLqZ0UtKHVssMNSVSbweTSXphP23f6kpCKX5MUbSHqLVxiaxHn
	9nM423qWjd9QE9p2YN7mEU+sPIWr3BI9DwSPTt2Ouh3HZktNdTt/eP4vBdPkjv3DziPn
	A7ayOfkfusZYG9JOTBwnHxRCKf9E7sl7qx8KAt1s0VUW9YjTFe35f2PQiB0r9Y9gMRpx
	ecj9jAImUSkvySb91b9lPtjfwe37iKQd1IDQT1VLwdh7YuOORiqwLQfmGuON66Q+8org
	kgag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=OJZA8QXyMRcj2yOGpX6WfhuHfX7gaqZYDRggihsY0pw=;
	b=oanEzqDGiZN/YaDqtTqXJVeQxtbs5kZlT3z52/3gMOP4xURHaaEsePRXlDWF6CCiET
	QPVjmHDfVttWl3DT5WZc88RHo4r1EWtD/82tktd4u/fRsQ9zIJae4hk/rQ2xZH0+d6lq
	T5CVX4j9IehFrFQtoZVtikC90j3U1n9pry1zFcYsWuD60E//ebBL6H7nSsEv9c4Sddt8
	lTmBXFeST4vnlQV/Vn0l6UtUN/Ht4IgoW/8+k2VclmpAp37TOYN6acHlsu5foOaDq2eO
	CJV86BUIjuHFfE+wziKJEZHqyA8ct+DjzTr+6CH3WFnKQBKQOeW2GMMqaNZYAUvGgniB
	duZg==
X-Gm-Message-State: AMke39mWU2JytXUv5PM5HVRBSeMPrZfE1/AG3N7KWSsvgRlaXedMfXCgiokrzI0w8o873AWUOung2UVWlPDeRw==
X-Received: by 10.46.15.9 with SMTP id 9mr5353424ljp.108.1488471257572; Thu,
	02 Mar 2017 08:14:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.228.14 with HTTP; Thu, 2 Mar 2017 08:14:17 -0800 (PST)
In-Reply-To: <1488469685.28256.36.camel@linux.intel.com>
References: <CAF1M0z6zfKC8QZsmfyCrf_zoSdzomeNa9SciPdGgaZpR+X3Tqw@mail.gmail.com>
	<1488469685.28256.36.camel@linux.intel.com>
From: SatyaNarayana Sampangi <satya.2891@gmail.com>
Date: Thu, 2 Mar 2017 21:44:17 +0530
Message-ID: <CAF1M0z5VQxpnDurb7aW3DynL22-PnXo=MGMrvtaZ7ExsTMjK7g@mail.gmail.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: Devtool: Script Not found
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
X-List-Received-Date: Thu, 02 Mar 2017 16:14:22 -0000
Content-Type: multipart/alternative; boundary=f4030436012c90eca50549c1b826

--f4030436012c90eca50549c1b826
Content-Type: text/plain; charset=UTF-8

Thanks Leonardo Sandoval and Ross,

I am using beagle bone black, for which meta-ti layer and poky versions
compatible is daisy 1.6 as mention in the official website of yocto. If I
upgrade the poky to the latest version, then compatibity will be lost. Pls
help me out here.

Thanks & Regards,
satya

On Thu, Mar 2, 2017 at 9:18 PM, Leonardo Sandoval <
leonardo.sandoval.gonzalez@linux.intel.com> wrote:

> On Thu, 2017-03-02 at 19:56 +0530, SatyaNarayana Sampangi wrote:
> > Hi Paul,
> >
> >
> > I am not finding the devtool script under the
> > /${HOME}/yocto/poky/scripts, so I copied that script from the website
> > and changed the permissions.
> >
> >
> > I did sourcing also,
> >
> >
> when you said 'sourcing' you mean you prepare the environment with the
> oe-init-build-env? Looks to me that you are missing this step.
>
>
> > but when I run the script, I am getting
> >
> >
> >
> >
> > devtool
> > Traceback (most recent call last):
> >   File "/home/satya/yoctoBSP/poky/scripts/devtool", line 38, in
> > <module>
> >     from devtool import DevtoolError, setup_tinfoil
> > ImportError: No module named 'devtool'
> >
> >
> > Can you pls help me here. whereI am going wrong.
> >
> >
> > Thanks in Advance,
> >
> >
> > Regards,
> > Satya
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>
>

--f4030436012c90eca50549c1b826
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Leonardo Sandoval and Ross,<div><br></div><div>I am=
 using beagle bone black, for which meta-ti layer and poky versions compati=
ble is daisy 1.6 as mention in the official website of yocto. If I upgrade =
the poky to the latest version, then compatibity will be lost. Pls help me =
out here.</div><div><br></div><div>Thanks &amp; Regards,</div><div>satya</d=
iv></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, =
Mar 2, 2017 at 9:18 PM, Leonardo Sandoval <span dir=3D"ltr">&lt;<a href=3D"=
mailto:leonardo.sandoval.gonzalez@linux.intel.com" target=3D"_blank">leonar=
do.sandoval.gonzalez@linux.intel.com</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><span class=3D"">On Thu, 2017-03-02 at 19:56 +0530, Satya=
Narayana Sampangi wrote:<br>
&gt; Hi Paul,<br>
&gt;<br>
&gt;<br>
&gt; I am not finding the devtool script under the<br>
&gt; /${HOME}/yocto/poky/scripts, so I copied that script from the website<=
br>
&gt; and changed the permissions.<br>
&gt;<br>
&gt;<br>
&gt; I did sourcing also,<br>
&gt;<br>
&gt;<br>
</span>when you said &#39;sourcing&#39; you mean you prepare the environmen=
t with the<br>
oe-init-build-env? Looks to me that you are missing this step.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
&gt; but when I run the script, I am getting<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; devtool<br>
&gt; Traceback (most recent call last):<br>
&gt;=C2=A0 =C2=A0File &quot;/home/satya/yoctoBSP/poky/<wbr>scripts/devtool&=
quot;, line 38, in<br>
&gt; &lt;module&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0from devtool import DevtoolError, setup_tinfoil<br>
&gt; ImportError: No module named &#39;devtool&#39;<br>
&gt;<br>
&gt;<br>
&gt; Can you pls help me here. whereI am going wrong.<br>
&gt;<br>
&gt;<br>
&gt; Thanks in Advance,<br>
&gt;<br>
&gt;<br>
&gt; Regards,<br>
&gt; Satya<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
<br>
<br>
</font></span></blockquote></div><br></div>

--f4030436012c90eca50549c1b826--
