Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EDC1E00F8A; Wed, 30 Sep 2015 04:08:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f169.google.com (mail-yk0-f169.google.com
	[209.85.160.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1E89E00EEB
	for <yocto@yoctoproject.org>; Wed, 30 Sep 2015 04:08:53 -0700 (PDT)
Received: by ykdg206 with SMTP id g206so35967149ykd.1
	for <yocto@yoctoproject.org>; Wed, 30 Sep 2015 04:08:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Xc4DUjDaEXKrnOy4i2PobqLXl2pyZw+PaWUC8NNHwEQ=;
	b=FEVpgfP0bk8Z5Yq/K+b7PfLqCoKwUWRbyRcMc3Zki8lidLJdKIuZZyxyK6dCOChJkf
	AlwlteShAi5x8AXfeIpTpl5XnFxDlX5chZ7ubz1aAIhgF6wS1lP90svfm2AJiRxlAg7v
	UDDIiXTD5jJ/G2nlc0DWb+O6WTq7wPhTQW7MsQv3R8a5tkxd2xXVu7qu7ArlZdjwFKfA
	oK5PEkCHr9JhCtgFzx3+pfQu7pEdPBpBub65rqUQNO8WZc4yEXaVasqALA2I6+uuS0SG
	dVg5jjpp75nUCuUvQPgxnYRMOlFuL+KjyZ6UAj/GDb3tgnL/SnSHZDqFZjeSfqQSG6Z6
	zqHw==
MIME-Version: 1.0
X-Received: by 10.31.162.197 with SMTP id l188mr2549193vke.20.1443611332726;
	Wed, 30 Sep 2015 04:08:52 -0700 (PDT)
Received: by 10.31.179.207 with HTTP; Wed, 30 Sep 2015 04:08:52 -0700 (PDT)
In-Reply-To: <CAMKF1sqc8WG3RvwVuw8nxK1HNSJ5MCxVjN4x_Ep42z3sE3FifA@mail.gmail.com>
References: <CALLyC8TWtMz2dnMUF47PjhgGHrjuH8zmv61GGBn4GR26V2uTxg@mail.gmail.com>
	<CAMKF1sqc8WG3RvwVuw8nxK1HNSJ5MCxVjN4x_Ep42z3sE3FifA@mail.gmail.com>
Date: Wed, 30 Sep 2015 16:38:52 +0530
Message-ID: <CALLyC8SVL+Yj1qHQrnPg+8bux5A=xh6qm1DOoFLhK_VvWBgtFw@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How can i invoke a "particular recipe(.bb)" while building "image recipe(.bb)" without modifying the "image recipe(.bb)" . i only wanted to change "particular recipe(.bb)"
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
X-List-Received-Date: Wed, 30 Sep 2015 11:08:56 -0000
Content-Type: multipart/alternative; boundary=001a11433898ae59a40520f4f438

--001a11433898ae59a40520f4f438
Content-Type: text/plain; charset=UTF-8

Hi , thanks you for replying,
but i don't want to make changes to "image" recipe. i only wanted to make
changes to "x" recipe that should be invoked when i do bitbake <image
recipe>.
what variable i can put in "x" recipe so that it invokes when is do
<bitbake image recipe>

Thanks and Regards
    Vivek

On Wed, Sep 30, 2015 at 3:43 PM, Khem Raj <raj.khem@gmail.com> wrote:

> On Wed, Sep 30, 2015 at 2:05 AM, Vivek Per <pervivek@gmail.com> wrote:
> > hi,
> >    i want to create a "x" recipe that should automatically get invoke
> when
> > "image" recipe( that produces image) is built. How can i modify the "x"
> > recipe that should be invoked while building image recipe.
> >
> > I don't want to do any modifications to the image recipe, i only wanted
> to
> > do changes in "x" recipe.
> > Can any one help on this . thanks in advance
>
> add one of output package its producing ( ipk)  to IMAGE_INSTALL
> inside the image recipe.
>
> >
> > Thanks and regards
> > vivek
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--001a11433898ae59a40520f4f438
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi , thanks you for replying,<div>but i don&#39;t want to =
make changes to &quot;image&quot; recipe. i only wanted to make changes to =
&quot;x&quot; recipe that should be invoked when i do bitbake &lt;image rec=
ipe&gt;.</div><div>what variable i can put in &quot;x&quot; recipe so that =
it invokes when is do &lt;bitbake image recipe&gt;</div><div><br></div><div=
>Thanks and Regards</div><div>=C2=A0 =C2=A0 Vivek</div></div><div class=3D"=
gmail_extra"><br><div class=3D"gmail_quote">On Wed, Sep 30, 2015 at 3:43 PM=
, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" targ=
et=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><span class=3D"">On Wed, Sep 30, 2015 at 2:05 AM, Vivek Per &=
lt;<a href=3D"mailto:pervivek@gmail.com">pervivek@gmail.com</a>&gt; wrote:<=
br>
&gt; hi,<br>
&gt;=C2=A0 =C2=A0 i want to create a &quot;x&quot; recipe that should autom=
atically get invoke when<br>
&gt; &quot;image&quot; recipe( that produces image) is built. How can i mod=
ify the &quot;x&quot;<br>
&gt; recipe that should be invoked while building image recipe.<br>
&gt;<br>
&gt; I don&#39;t want to do any modifications to the image recipe, i only w=
anted to<br>
&gt; do changes in &quot;x&quot; recipe.<br>
&gt; Can any one help on this . thanks in advance<br>
<br>
</span>add one of output package its producing ( ipk)=C2=A0 to IMAGE_INSTAL=
L<br>
inside the image recipe.<br>
<br>
&gt;<br>
&gt; Thanks and regards<br>
&gt; vivek<br>
<span class=3D"HOEnZb"><font color=3D"#888888">&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
&gt;<br>
</font></span></blockquote></div><br></div>

--001a11433898ae59a40520f4f438--
