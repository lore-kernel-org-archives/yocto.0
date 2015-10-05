Return-Path: <pervivek@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31B6CE00AEE; Sun,  4 Oct 2015 21:56:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pervivek[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-vk0-f44.google.com (mail-vk0-f44.google.com
	[209.85.213.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10A87E007C3
	for <yocto@yoctoproject.org>; Sun,  4 Oct 2015 21:56:31 -0700 (PDT)
Received: by vkat63 with SMTP id t63so89226158vka.1
	for <yocto@yoctoproject.org>; Sun, 04 Oct 2015 21:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=GvyiSTq7pEAZKISQsoB3hm/9FMSYS5TOwoihEsVZwFw=;
	b=03Xn3sCNPGV5Tv7IGObhsBrRU0RnkSKMNlKqdEPMgMP1StPXBYQw3GgMAl2+P4Q9A6
	OPDk+BavYzUgZRA+2gFfuw4seN6JmlsGZ9AxvtPIjPtDsUFTG5Dgc8yRvX3V/RNF6hTf
	DmsoERlXW9im1TJRF1G1wsMEcNXJ5iFEG/mhxidT9M5mHtTzr6xHeo2aODLdVz9y1iOx
	OmIze/kS5OF+8RgjT7w6R49td7NrkU5eaMzvbvSF4NJrGit3n+gb2I2HKGMW/Y1bXeLh
	v4UbCAJ9rbfzvP3rSG6vazFr44fX3WZebrXfCL87wV0c2ypW5SZ6/Ix5jtEpbNLVC08X
	2GOw==
MIME-Version: 1.0
X-Received: by 10.31.107.26 with SMTP id g26mr18780390vkc.6.1444020990960;
	Sun, 04 Oct 2015 21:56:30 -0700 (PDT)
Received: by 10.31.179.207 with HTTP; Sun, 4 Oct 2015 21:56:30 -0700 (PDT)
In-Reply-To: <560BE5FC.5030702@mlbassoc.com>
References: <CALLyC8TWtMz2dnMUF47PjhgGHrjuH8zmv61GGBn4GR26V2uTxg@mail.gmail.com>
	<CAMKF1sqc8WG3RvwVuw8nxK1HNSJ5MCxVjN4x_Ep42z3sE3FifA@mail.gmail.com>
	<CALLyC8SVL+Yj1qHQrnPg+8bux5A=xh6qm1DOoFLhK_VvWBgtFw@mail.gmail.com>
	<560BE5FC.5030702@mlbassoc.com>
Date: Mon, 5 Oct 2015 10:26:30 +0530
Message-ID: <CALLyC8REon-MXJstn3d=K0=owMopM4rBwPDe=0A+66G4F_Ga3A@mail.gmail.com>
From: Vivek Per <pervivek@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>, yocto@yoctoproject.org, 
	Khem Raj <raj.khem@gmail.com>
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
X-List-Received-Date: Mon, 05 Oct 2015 04:56:35 -0000
Content-Type: multipart/alternative; boundary=001a1147830c36ea930521545688

--001a1147830c36ea930521545688
Content-Type: text/plain; charset=UTF-8

Thanks you very much for your precious time. I got it now.

thanks and regards
       vivek

On Wed, Sep 30, 2015 at 7:09 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2015-09-30 05:08, Vivek Per wrote:
>
>> Hi , thanks you for replying,
>> but i don't want to make changes to "image" recipe. i only wanted to make
>> changes to "x" recipe that should be invoked when i do bitbake <image
>> recipe>.
>> what variable i can put in "x" recipe so that it invokes when is do
>> <bitbake image recipe>
>>
>
> You can't - what you are asking for is "image" to depend on "x" (i.e.
> include it) and the
> only way to do that is relative to "image", not "x".
>
> You can do this non-invasively, e.g. in local.conf:
>   IMAGE_INSTALL_append_pn-image = " x"
>
> On Wed, Sep 30, 2015 at 3:43 PM, Khem Raj <raj.khem@gmail.com <mailto:
>> raj.khem@gmail.com>> wrote:
>>
>>     On Wed, Sep 30, 2015 at 2:05 AM, Vivek Per <pervivek@gmail.com
>> <mailto:pervivek@gmail.com>> wrote:
>>     > hi,
>>     >    i want to create a "x" recipe that should automatically get
>> invoke when
>>     > "image" recipe( that produces image) is built. How can i modify the
>> "x"
>>     > recipe that should be invoked while building image recipe.
>>     >
>>     > I don't want to do any modifications to the image recipe, i only
>> wanted to
>>     > do changes in "x" recipe.
>>     > Can any one help on this . thanks in advance
>>
>>     add one of output package its producing ( ipk)  to IMAGE_INSTALL
>>     inside the image recipe.
>>
>>     >
>>     > Thanks and regards
>>     > vivek
>>     >
>>     > --
>>     > _______________________________________________
>>     > yocto mailing list
>>     >yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>     >https://lists.yoctoproject.org/listinfo/yocto
>>     >
>>
>>
>>
>>
>>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1147830c36ea930521545688
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks you very much for your precious time. I got it now.=
<div><br></div><div>thanks and regards</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0vivek</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quot=
e">On Wed, Sep 30, 2015 at 7:09 PM, Gary Thomas <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On 2015-0=
9-30 05:08, Vivek Per wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi , thanks you for replying,<br>
but i don&#39;t want to make changes to &quot;image&quot; recipe. i only wa=
nted to make changes to &quot;x&quot; recipe that should be invoked when i =
do bitbake &lt;image recipe&gt;.<br>
what variable i can put in &quot;x&quot; recipe so that it invokes when is =
do &lt;bitbake image recipe&gt;<br>
</blockquote>
<br></span>
You can&#39;t - what you are asking for is &quot;image&quot; to depend on &=
quot;x&quot; (i.e. include it) and the<br>
only way to do that is relative to &quot;image&quot;, not &quot;x&quot;.<br=
>
<br>
You can do this non-invasively, e.g. in local.conf:<br>
=C2=A0 IMAGE_INSTALL_append_pn-image =3D &quot; x&quot;<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Wed, Sep 30, 2015 at 3:43 PM, Khem Raj &lt;<a href=3D"mailto:raj.khem@gm=
ail.com" target=3D"_blank">raj.khem@gmail.com</a> &lt;mailto:<a href=3D"mai=
lto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;&gt; wr=
ote:<span class=3D""><br>
<br>
=C2=A0 =C2=A0 On Wed, Sep 30, 2015 at 2:05 AM, Vivek Per &lt;<a href=3D"mai=
lto:pervivek@gmail.com" target=3D"_blank">pervivek@gmail.com</a> &lt;mailto=
:<a href=3D"mailto:pervivek@gmail.com" target=3D"_blank">pervivek@gmail.com=
</a>&gt;&gt; wrote:<br>
=C2=A0 =C2=A0 &gt; hi,<br>
=C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 i want to create a &quot;x&quot; recipe tha=
t should automatically get invoke when<br>
=C2=A0 =C2=A0 &gt; &quot;image&quot; recipe( that produces image) is built.=
 How can i modify the &quot;x&quot;<br>
=C2=A0 =C2=A0 &gt; recipe that should be invoked while building image recip=
e.<br>
=C2=A0 =C2=A0 &gt;<br>
=C2=A0 =C2=A0 &gt; I don&#39;t want to do any modifications to the image re=
cipe, i only wanted to<br>
=C2=A0 =C2=A0 &gt; do changes in &quot;x&quot; recipe.<br>
=C2=A0 =C2=A0 &gt; Can any one help on this . thanks in advance<br>
<br>
=C2=A0 =C2=A0 add one of output package its producing ( ipk)=C2=A0 to IMAGE=
_INSTALL<br>
=C2=A0 =C2=A0 inside the image recipe.<br>
<br>
=C2=A0 =C2=A0 &gt;<br>
=C2=A0 =C2=A0 &gt; Thanks and regards<br>
=C2=A0 =C2=A0 &gt; vivek<br>
=C2=A0 =C2=A0 &gt;<br>
=C2=A0 =C2=A0 &gt; --<br>
=C2=A0 =C2=A0 &gt; _______________________________________________<br>
=C2=A0 =C2=A0 &gt; yocto mailing list<br></span>
=C2=A0 =C2=A0 &gt;<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blan=
k">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproje=
ct.org" target=3D"_blank">yocto@yoctoproject.org</a>&gt;<br>
=C2=A0 =C2=A0 &gt;<a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listin=
fo/yocto</a><br>
=C2=A0 =C2=A0 &gt;<br>
<br>
<br>
<br>
<br><span class=3D"HOEnZb"><font color=3D"#888888">
</font></span></blockquote><span class=3D"HOEnZb"><font color=3D"#888888">
<br>
-- <br>
------------------------------------------------------------<br>
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 Consulting for the<br>
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world<br>
------------------------------------------------------------</font></span><=
div class=3D"HOEnZb"><div class=3D"h5"><br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div>

--001a1147830c36ea930521545688--
