Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E58ADE00F14; Fri, 25 Sep 2015 08:00:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f175.google.com (mail-yk0-f175.google.com
	[209.85.160.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC07CE007AE
	for <yocto@yoctoproject.org>; Fri, 25 Sep 2015 08:00:48 -0700 (PDT)
Received: by ykdg206 with SMTP id g206so115618881ykd.1
	for <yocto@yoctoproject.org>; Fri, 25 Sep 2015 08:00:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=5UAalszWfOaqP0GTtkOPPeCFs73Oc8R3f8vGkbTuR2I=;
	b=suKI63Tx90nQnPncGBuXWBnV6/uX9YsxW9lr9YFXBu+Iw2TiVraUloQ0sX+z3DVkNn
	xZ7J65Tts4ffFFYiq97vBFAAoWwkda9BNLg7aC+hCjCmXJxeDq3Vq9q8dEuNI5rXL6P1
	SIhGIaoNlJzWrqRGpQ1t3dAp6Xe4gN39mBwdp/RDbhaS1yXR6vSqHCVbZWvW7CtU5WuD
	nt7LUHdX4Z1lyc/lluVyKjZFPj3MSLswtzL6ZWTdxQWV2S68loyzm12LkjotV77noMYH
	Fa9QlOgeZAN8TF6nPMJL/8sUMCto7MITkvoG6shvVg32vBx3XRp0xmce3nrJG7FoWtKS
	FXAQ==
MIME-Version: 1.0
X-Received: by 10.129.21.213 with SMTP id 204mr5289680ywv.38.1443193247486;
	Fri, 25 Sep 2015 08:00:47 -0700 (PDT)
Received: by 10.129.148.199 with HTTP; Fri, 25 Sep 2015 08:00:47 -0700 (PDT)
In-Reply-To: <loom.20150925T160727-227@post.gmane.org>
References: <55ECF934.80902@gmail.com>
	<31635424-0451-4ECF-A65E-F45B8D316B0B@gmail.com>
	<55ED3F5A.2060903@gmail.com>
	<DBXPR03MB1588505B5901171124C0CFAEE530@DBXPR03MB158.eurprd03.prod.outlook.com>
	<loom.20150925T160727-227@post.gmane.org>
Date: Fri, 25 Sep 2015 12:00:47 -0300
Message-ID: <CAF3SDA7aaz6VX577TTWYkVP1ZsZ9tSPZA6EQgh1sti5QNu-BKw@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Dave Wolaver <davewolaver@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] du giving non-integer result?
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
X-List-Received-Date: Fri, 25 Sep 2015 15:00:54 -0000
Content-Type: multipart/alternative; boundary=001a11429012dbdb700520939ce6

--001a11429012dbdb700520939ce6
Content-Type: text/plain; charset=UTF-8

Why not printf?

[geckos@csi24 ~]$ echo 1.0 | awk '{ printf("%d\n", $1); }'
1

Cheers,
- dhs

2015-09-25 11:12 GMT-03:00 Dave Wolaver <davewolaver@gmail.com>:

> Michael Fainstein <Michael.Fainstein@...> writes:
>
> >
> > I saw such behavior in 'expr' when I upgraded bash 3.1 - it started
> printing floats instead of integers.
> > You can solve it using awk's OFMT:  awk '{OFMT="%.0f";print $1}'
> >
> > Michael
> >
>
>
> This worked for me, but it needed one small tweak... Need to add +0 so
> that awk actually applies the format.
>
> You can solve it using awk's OFMT:  awk '{OFMT="%.0f";print $1+0}'
>
> Thanks Michael!
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--001a11429012dbdb700520939ce6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Why not printf?<br><br>[geckos@csi24 ~]$ echo 1.=
0 | awk &#39;{ printf(&quot;%d\n&quot;, $1); }&#39;<br>1<br><br></div>Cheer=
s,<br></div>- dhs<br></div><div class=3D"gmail_extra"><br><div class=3D"gma=
il_quote">2015-09-25 11:12 GMT-03:00 Dave Wolaver <span dir=3D"ltr">&lt;<a =
href=3D"mailto:davewolaver@gmail.com" target=3D"_blank">davewolaver@gmail.c=
om</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">Micha=
el Fainstein &lt;Michael.Fainstein@...&gt; writes:<br>
<br>
&gt;<br>
&gt; I saw such behavior in &#39;expr&#39; when I upgraded bash 3.1 - it st=
arted<br>
printing floats instead of integers.<br>
&gt; You can solve it using awk&#39;s OFMT:=C2=A0 awk &#39;{OFMT=3D&quot;%.=
0f&quot;;print $1}&#39;<br>
&gt;<br>
&gt; Michael<br>
&gt;<br>
<br>
<br>
</span>This worked for me, but it needed one small tweak... Need to add +0 =
so<br>
that awk actually applies the format.<br>
<br>
You can solve it using awk&#39;s OFMT:=C2=A0 awk &#39;{OFMT=3D&quot;%.0f&qu=
ot;;print $1+0}&#39;<br>
<br>
Thanks Michael!<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=
=3D"gmail_signature"><div style=3D"text-align:right"><i>&quot;Do or do not.=
 There is no try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b></i><br></=
div></div>
</div>

--001a11429012dbdb700520939ce6--
