Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CB99E00CE5; Fri,  2 Oct 2015 11:11:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	MALFORMED_FREEMAIL, 
	MISSING_HEADERS,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	*  1.0 MISSING_HEADERS Missing To: header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.180 listed in list.dnswl.org]
	* 0.0 MALFORMED_FREEMAIL Bad headers on message from free email service
Received: from mail-yk0-f180.google.com (mail-yk0-f180.google.com
	[209.85.160.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C98EE0086D
	for <yocto@yoctoproject.org>; Fri,  2 Oct 2015 11:11:51 -0700 (PDT)
Received: by ykft14 with SMTP id t14so118395132ykf.0
	for <yocto@yoctoproject.org>; Fri, 02 Oct 2015 11:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:cc
	:content-type; bh=uMPrJ3hvr4e/+aMfeTWBWM6xR4CYftttqjHNNWbsl10=;
	b=JbCwVXqu/unbf3mpUx8HMb3sOInhu4YyBRfIrvmizMn1nak3c7iF0fCk5wyNXN34Z5
	NseCmNARSbiTANota3cMtgVoiKvLbWutSRGE0fbzgT0WZtx5XMEykejyjPFYlaz+uiYR
	imAniRDYZheemzk9YYgTho3ByG15e7dTmDpe1d6/pKuUR2tLJkZ5pNnEUihDk3mbV16M
	PhGJcytcp+c6cTy9ygknfqlxhk9+zhpn/Fe/blc/KglM229EFYg/p4vH29D1IJzMnukF
	7r1WWthE+PuOddjK0b4f6BK/I1KU8qpVBHbqi30LTSKkFX0cDsZw50fBgGVsKxGK+w0C
	IQgA==
MIME-Version: 1.0
X-Received: by 10.170.87.84 with SMTP id e81mr14468727yka.34.1443809511205;
	Fri, 02 Oct 2015 11:11:51 -0700 (PDT)
Received: by 10.129.148.199 with HTTP; Fri, 2 Oct 2015 11:11:51 -0700 (PDT)
In-Reply-To: <CAF3SDA6J4E=1_T2jDS+0-ajtcJYqWFL2aKE_+Ly6LEfdChHdhw@mail.gmail.com>
References: <1443801396017.79471@seescan.com>
	<CABcZANkg=UpD8pgB7B8vSj=pfveyE6WaDz1F+VMu76VSERa8Jg@mail.gmail.com>
	<CAF3SDA6J4E=1_T2jDS+0-ajtcJYqWFL2aKE_+Ly6LEfdChHdhw@mail.gmail.com>
Date: Fri, 2 Oct 2015 15:11:51 -0300
Message-ID: <CAF3SDA5BFz2bZ3k0x6y67n4C-FnEr7CU-3ZD89fMJk-TPqD-wQ@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FILESEXTRAPATHS_prepend fails for systemd
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
X-List-Received-Date: Fri, 02 Oct 2015 18:11:58 -0000
Content-Type: multipart/alternative; boundary=001a113a70de09f7e0052123199a

--001a113a70de09f7e0052123199a
Content-Type: text/plain; charset=UTF-8

But this will only work if journald.conf are the same in all systemd
versions (since you use a _%.bbappend). A better solution would be append
install task with a copy from your custom journald.conf to install folder,
something like:

do_install_append() {
    cp ${S}/myjournald.conf ${D}/propper/path/to/journald.conf
}


Cheers,

2015-10-02 14:26 GMT-03:00 Daniel. <danielhilst@gmail.com>:

> You can solve this by editing the original journal.conf, creating a
> patch with modifications and adding it to your .bbappend
>
> 2015-10-02 13:44 GMT-03:00 Christopher Larson <clarson@kergoth.com>:
> >
> > On Fri, Oct 2, 2015 at 8:58 AM, Fred Ollinger <Fred.Ollinger@seescan.com
> >
> > wrote:
> >>
> >> I'm trying to change my /etc/systemd/journald.conf file.
> >
> >
> > recipetool appendfile sounds like exactly what you want here.
> > --
> > Christopher Larson
> > clarson at kergoth dot com
> > Founder - BitBake, OpenEmbedded, OpenZaurus
> > Maintainer - Tslib
> > Senior Software Engineer, Mentor Graphics
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>
>
>
> --
> "Do or do not. There is no try"
>   Yoda Master
>



-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--001a113a70de09f7e0052123199a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>But this will only work if journald.conf ar=
e the same in all systemd versions (since you use a _%.bbappend). A better =
solution would be append install task with a copy from your custom journald=
.conf to install folder, something like:<br><br></div>do_install_append() {=
<br></div>=C2=A0=C2=A0=C2=A0 cp ${S}/myjournald.conf ${D}/propper/path/to/j=
ournald.conf<br>}<br><br><br></div>Cheers,<br></div><div class=3D"gmail_ext=
ra"><br><div class=3D"gmail_quote">2015-10-02 14:26 GMT-03:00 Daniel. <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:danielhilst@gmail.com" target=3D"_blank"=
>danielhilst@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Yo=
u can solve this by editing the original journal.conf, creating a<br>
patch with modifications and adding it to your .bbappend<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
2015-10-02 13:44 GMT-03:00 Christopher Larson &lt;<a href=3D"mailto:clarson=
@kergoth.com">clarson@kergoth.com</a>&gt;:<br>
&gt;<br>
&gt; On Fri, Oct 2, 2015 at 8:58 AM, Fred Ollinger &lt;<a href=3D"mailto:Fr=
ed.Ollinger@seescan.com">Fred.Ollinger@seescan.com</a>&gt;<br>
&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; I&#39;m trying to change my /etc/systemd/journald.conf file.<br>
&gt;<br>
&gt;<br>
&gt; recipetool appendfile sounds like exactly what you want here.<br>
&gt; --<br>
&gt; Christopher Larson<br>
&gt; clarson at kergoth dot com<br>
&gt; Founder - BitBake, OpenEmbedded, OpenZaurus<br>
&gt; Maintainer - Tslib<br>
&gt; Senior Software Engineer, Mentor Graphics<br>
&gt;<br>
</div></div><div class=3D"HOEnZb"><div class=3D"h5">&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
&gt;<br>
<br>
<br>
<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
&quot;Do or do not. There is no try&quot;<br>
=C2=A0 Yoda Master<br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br><div clas=
s=3D"gmail_signature"><div style=3D"text-align:right"><i>&quot;Do or do not=
. There is no try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b></i><br><=
/div></div>
</div>

--001a113a70de09f7e0052123199a--
