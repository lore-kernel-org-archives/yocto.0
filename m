Return-Path: <aaron.biver@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F15B8E00A49; Fri, 28 Jun 2019 12:58:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (aaron.biver[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.173 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
	[209.85.208.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26381E00931
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 12:58:03 -0700 (PDT)
Received: by mail-lj1-f173.google.com with SMTP id t28so7126869lje.9
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2019 12:58:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=r8akbrhD2gQQRgmT15YrSSIRtIbI6vidg9q8lPnFRwA=;
	b=Ti2oP9KJTQx5bbZRhEntOq+CaLk70SIy2+2Qq/P/sumD3SpYOGlLHN/CQWQ6pnxshl
	adIipbl2aZs8zVuXFTt22iZPU1yLkiyutmc+7i5dfM8eQ/86o3ihMjCmiB/HeJ9bXpHJ
	lk5LoXRsu9kYgpHkm1mM1qI7XSxF0fb+MFIeyXqBuZrJZYJ72ACyUQkMV7F0GrikPds3
	oMPukevLL+eHI6TQUOLPzVmG887npss6qjrczwCDWxnPA0n4GHW4JBFMHK9dwb/bM8sZ
	MZWUykcHVykvhuY5MFhjFcQsPRcc2B9VjQ1opUIt17BpZgXQXZ4rSkCKwDHjHohIu3zN
	YD2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=r8akbrhD2gQQRgmT15YrSSIRtIbI6vidg9q8lPnFRwA=;
	b=ZzJYC2CfLWd9RSko6JAYSOwc0IM3xJNFAhWK5IsqGOWspGyZmNoi5Tf5UfV/HtNau3
	MvlsnsU1n4dPS3/5D3CziBoHO1/bWilK/DhP0GyLcX+HhB6btCwcelsPOXqCeqSGNy4b
	87zytUYozWhYfZ21YxNyqCNZWcNabfHSswlQpqf3WhsIuwT7ABl8wvKLGsUiP4tLqNh4
	JLJ4BnvzUMc1pt2QZl3bbCI7ezDE4OXi/0dH5QhtCpgNxzGde8ygF68os1lye2SVHNGc
	6+Z/DrLv3g4F+FdWltVRE+K7TVY0FN9lYggEUlh6bZXCU6g9h5jVenABP6mCWABGFGXy
	ca9g==
X-Gm-Message-State: APjAAAX4WUgyySFy8vTLHn8W1fgyuLX2zVTqb3xo2GI6BlMjI+TqkiWh
	61F8Bg318s94lJlpgkE+rjqzBEBu93hzSC8fpSDqAQ==
X-Google-Smtp-Source: APXvYqyi/afkKlWmHzaE1+D9/C3hmPNii1l0ED6+9hDptbwds39F6/UXHRArn2KHRBMGlFS23qiP9nNtk21vpkKekLc=
X-Received: by 2002:a2e:8515:: with SMTP id j21mr7290762lji.233.1561751883100; 
	Fri, 28 Jun 2019 12:58:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAMd7AX9bg5u+Wm=bWbbW7_0A06Ko6njP9OuE96+-W1PxJjugUQ@mail.gmail.com>
	<CAJTo0LaYOfqUoqwV257E60ZSZPzHBZ9pCUM6q0fckE8MLVnSeQ@mail.gmail.com>
In-Reply-To: <CAJTo0LaYOfqUoqwV257E60ZSZPzHBZ9pCUM6q0fckE8MLVnSeQ@mail.gmail.com>
From: Aaron Biver <aaron.biver@gmail.com>
Date: Fri, 28 Jun 2019 15:57:51 -0400
Message-ID: <CAMd7AX_DUwW_NkjBGAnB9YzjJ8_cYE-ftT7oc4ZCTyWmb7Pwkw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Creating a file within a recipe
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
X-List-Received-Date: Fri, 28 Jun 2019 19:58:05 -0000
Content-Type: multipart/alternative; boundary="0000000000003838f9058c67b2f0"

--0000000000003838f9058c67b2f0
Content-Type: text/plain; charset="UTF-8"

That seems to work.  Thanks!

On Fri, Jun 28, 2019 at 3:53 PM Burton, Ross <ross.burton@intel.com> wrote:

> The bash parser does have some bugs, and I think you just found one.
> Probably easier to have a template on disk in SRC_URI, and sed in the
> value you want.
>
> Ross
>
> On Fri, 28 Jun 2019 at 19:35, Aaron Biver <aaron.biver@gmail.com> wrote:
> >
> > I'd like to be able to create a file using the cat command in a recipe.
> The sub-goal is to have the file created somewhere I can actually find it:
> >
> > do_create_tebf0808() {
> > cat > tebf0808.bif <<EOF
> > all:
> > {
> >     ${LATEST_TEBF0808_FW}
> > }
> > EOF
> > }
> >
> > This fails at the "EOF" line:
> > ERROR: ParseError at ...firmware.bb:43: unparsed line: 'EOF'
>                             | ETA:  --:--:--
> >
> > Maybe sed would work better?
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000003838f9058c67b2f0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">That seems to work.=C2=A0 Thanks!<br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 28, 2019=
 at 3:53 PM Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com">ross.=
burton@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">The bash parser does have some bugs, and I think you just f=
ound one.<br>
Probably easier to have a template on disk in SRC_URI, and sed in the<br>
value you want.<br>
<br>
Ross<br>
<br>
On Fri, 28 Jun 2019 at 19:35, Aaron Biver &lt;<a href=3D"mailto:aaron.biver=
@gmail.com" target=3D"_blank">aaron.biver@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; I&#39;d like to be able to create a file using the cat command in a re=
cipe.=C2=A0 The sub-goal is to have the file created somewhere I can actual=
ly find it:<br>
&gt;<br>
&gt; do_create_tebf0808() {<br>
&gt; cat &gt; tebf0808.bif &lt;&lt;EOF<br>
&gt; all:<br>
&gt; {<br>
&gt;=C2=A0 =C2=A0 =C2=A0${LATEST_TEBF0808_FW}<br>
&gt; }<br>
&gt; EOF<br>
&gt; }<br>
&gt;<br>
&gt; This fails at the &quot;EOF&quot; line:<br>
&gt; ERROR: ParseError at ...<a href=3D"http://firmware.bb:43" rel=3D"noref=
errer" target=3D"_blank">firmware.bb:43</a>: unparsed line: &#39;EOF&#39;=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | ETA:=
=C2=A0 --:--:--<br>
&gt;<br>
&gt; Maybe sed would work better?<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>

--0000000000003838f9058c67b2f0--
