Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D280E00C9E; Wed,  2 Aug 2017 04:47:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.177 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95310E00C19
	for <yocto@yoctoproject.org>; Wed,  2 Aug 2017 04:47:22 -0700 (PDT)
Received: by mail-io0-f177.google.com with SMTP id c74so19327738iod.4
	for <yocto@yoctoproject.org>; Wed, 02 Aug 2017 04:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8pqjt6VmI7kOpbMR18e0+T5KqmEYrH+mL45ZGwv5Pvg=;
	b=oAOQg0GuZHMq6Gqgp5bEv34REExV4MwLFUnbN/Cg8Mca4qR5o4YsXWzbSfpgH7HSP0
	0OUbSchO13g2y6uqWJqZHR6iCgzQ5IclblcCERkM9PGPvWncsW9RKgn1lWivC3PaTqdv
	v9lKsgKYzX/OmIDMDGg1aXtxcYOV1lIExYclCFwQz5l46DfN3ykkl+oB6tY/0Z/BupMa
	LCqaQld83X5TJEE2yyZ4n1iCUa9GwpfSAufyI4Rl0aH4GUh1PpKdoiCI2E7Gr2e70PGM
	7rUj0Qsc9o3pOctW7CqLtq+GBCr6u8Tn//n2eibXYwMBoH4lbhczCbUXDnUC9YWcBgq0
	kJ3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8pqjt6VmI7kOpbMR18e0+T5KqmEYrH+mL45ZGwv5Pvg=;
	b=hu+Mm+357ti+3jcZB80Ugnk4g2VPUxVfKJfg2jZlSFJuGYfpCNa8LPHugps56BxWL+
	4oyr4T4SvrYeJi9iKnbPpN2ZqI4VGjXVfoCRs/scHKqtDZSmzpSp+95nGv5cJtmmHir+
	vUb0s7Ul21II9yljpOFDGQEvIVDlWrIWTA+wwo1i5M8DgvejsXMrlxqD/50ClTX4mcr0
	fuTcaw+DEHT1rw+Qc0w/o85PArpk/rv6JeVDFhQGmpf/NeXyH7X6OQhcNDXqK4qz3QG9
	jGLvEULTjNZBVh4d4OlDxsf4U44+3u9aQUAd8ItpvOd1UxC1g5y1iYsCjrpovyWaaX61
	s4+Q==
X-Gm-Message-State: AIVw111dTPns3i9KcaukOaSSX9pkaF/xq5FScbYLA0cEyOblTEMQNy8m
	LdfrjAC59/20580FV1tYWzRWFTyqeuI2
X-Received: by 10.107.205.72 with SMTP id d69mr26660886iog.224.1501674441573; 
	Wed, 02 Aug 2017 04:47:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.135.234 with HTTP; Wed, 2 Aug 2017 04:47:00 -0700 (PDT)
In-Reply-To: <MWHPR01MB3293F9C5E19470A956237D8DB6B00@MWHPR01MB3293.prod.exchangelabs.com>
References: <MWHPR01MB3293BF2A96B39AEE98F18DE2B6B20@MWHPR01MB3293.prod.exchangelabs.com>
	<38c1a8ab-2ad8-f1e1-c56c-13ec8ace1dd0@gmail.com>
	<MWHPR01MB3293F9C5E19470A956237D8DB6B00@MWHPR01MB3293.prod.exchangelabs.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 2 Aug 2017 12:47:00 +0100
Message-ID: <CAJTo0LY9DvQ22ik+9kUOd64s=fbY26EA0J5Mip8BXbxM9XUNBw@mail.gmail.com>
To: Takashi Matsuzawa <tmatsuzawa@xevo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: local file update vs rebuild
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
X-List-Received-Date: Wed, 02 Aug 2017 11:47:23 -0000
Content-Type: multipart/alternative; boundary="94eb2c189baea8a0c70555c3d3a5"

--94eb2c189baea8a0c70555c3d3a5
Content-Type: text/plain; charset="UTF-8"

If you modify a recipe then anything that depends on it will be rebuilt.
So changing a file referenced in SRC_URI in a recipe will cause the image
to rebuild if you build the image.

Ross

On 2 August 2017 at 12:03, Takashi Matsuzawa <tmatsuzawa@xevo.com> wrote:

> Hello.
>
> Thank you for your comment.
>
>
> I want to double check.
>
>
> xxxx = image name
>
> yyyy = recipe within xxxx
>
>
> Then, I am not sure if doing below will rebuild yyyy from scratch.
>
>
> $ bitbake xxxx -c cleansstate
>
> $ bitbake xxxx
>
>
> Especially, I am doing things like below within my yyyy.
>
>
> SRC_URI += "file://src/*;subdir=local"
>
> I want to be sure that, if I make modification to the local files
> (referred to as file://... path within SRC_URI variable of xxxx recipe),
> the changes are reflected to the final image.
>
> (Not explicitly specifying -c cleansstate to xxxx).
>
> ------------------------------
> *From:* Khem Raj <raj.khem@gmail.com>
> *Sent:* Tuesday, August 1, 2017 3:42 AM
> *To:* Takashi Matsuzawa; yocto@yoctoproject.org
> *Subject:* Re: [yocto] local file update vs rebuild
>
>
>
> On 7/31/17 4:39 AM, Takashi Matsuzawa wrote:
> > Hello.
> > I am uncertain about do_clean behavior with local files.
> >
> >
> > Say, I have local files referred by my recipe, and I have made changes
> to the files referred.
> > (Note, there is no change in my xxxx.bb file itself.)
> >
> >
> >> SRC_URI += "file://src/*;subdir=local"
> >
> >
> > What makes those changed files reflected to the build?
> > Do I need do_cleanall?  do_cleansstate or maybe do_clean is enough?
> >
> >
> > According to the document
> >
> >
> >> do_clean
> >> do_unpack task forward (i.e. do_unpack, do_configure, do_compile,
> do_install, and do_package).
> >> if no changes have been made and the recipe is rebuilt after cleaning,
> output files are simply restored from the sstate cache.
> >
> >
> > I want to avoid doing do_cleanall often, and I would like to tell
> bitbake that my recipe needs rebuild at the same time not rebuilding others.
> > But at the same time I want to avoid building my single explicity.
> > I just want to build the image name as target.
>
> I think ccleansstate should be good.
>
> >
> >
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c189baea8a0c70555c3d3a5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If you modify a recipe then anything that depends on it wi=
ll be rebuilt.=C2=A0 So changing a file referenced in SRC_URI in a recipe w=
ill cause the image to rebuild if you build the image.<div><br></div><div>R=
oss</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On=
 2 August 2017 at 12:03, Takashi Matsuzawa <span dir=3D"ltr">&lt;<a href=3D=
"mailto:tmatsuzawa@xevo.com" target=3D"_blank">tmatsuzawa@xevo.com</a>&gt;<=
/span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"m_1976617302887911710divtagdefaultwrapper" style=3D"font-size:12=
pt;color:#000000;font-family:Calibri,Helvetica,sans-serif" dir=3D"ltr">
<p>Hello.</p>
<p>Thank you for your comment.</p>
<p><br>
</p>
<p>I want to double check.</p>
<p><br>
</p>
<p>xxxx =3D image name</p>
<p>yyyy =3D recipe within xxxx</p>
<p><br>
</p>
<p>Then, I am not sure if doing below will rebuild yyyy from scratch.</p>
<p><br>
</p>
<p>$ bitbake xxxx -c cleansstate</p>
<p>$ bitbake xxxx</p>
<p><br>
</p>
<p>Especially, I am doing things like below within my yyyy.</p>
<p><br>
</p>
<p><span style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;=
Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Seg=
oe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:13.3333=
px">SRC_URI +=3D &quot;</span><a style=3D"font-family:Calibri,Helvetica,san=
s-serif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,=
NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiS=
ymbols;font-size:13.3333px">file://src/*;subdir=3Dlocal</a><span style=3D"f=
ont-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple Color Emoji&q=
uot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,=
&quot;Android Emoji&quot;,EmojiSymbols;font-size:13.3333px">&quot;</span><b=
r style=3D"font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple C=
olor Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI S=
ymbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;font-size:13.3333px">
<br>
</p>
<p>I want to be sure that, if I make modification to the local files (refer=
red to as
<a class=3D"m_1976617302887911710OWAAutoLink">file://</a>... path within SR=
C_URI variable of xxxx recipe), the changes are reflected to the final imag=
e.</p>
<p>(Not explicitly specifying -c cleansstate to xxxx).</p>
<br>
<div style=3D"color:rgb(0,0,0)">
<div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_1976617302887911710x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"=
Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From:</b=
> Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.=
khem@gmail.com</a>&gt;<br>
<b>Sent:</b> Tuesday, August 1, 2017 3:42 AM<br>
<b>To:</b> Takashi Matsuzawa; <a href=3D"mailto:yocto@yoctoproject.org" tar=
get=3D"_blank">yocto@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] local file update vs rebuild</font>
<div>=C2=A0</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt">
<div class=3D"m_1976617302887911710PlainText"><br>
<br>
On 7/31/17 4:39 AM, Takashi Matsuzawa wrote:<br>
&gt; Hello.<br>
&gt; I am uncertain about do_clean behavior with local files.<br>
&gt; <br>
&gt; <br>
&gt; Say, I have local files referred by my recipe, and I have made changes=
 to the files referred.<br>
&gt; (Note, there is no change in my <a href=3D"http://xxxx.bb" target=3D"_=
blank">xxxx.bb</a> file itself.)<br>
&gt; <br>
&gt; <br>
&gt;&gt; SRC_URI +=3D &quot;<a>file://src/*;subdir=3Dlocal</a>&quot;<br>
&gt; <br>
&gt; <br>
&gt; What makes those changed files reflected to the build?<br>
&gt; Do I need do_cleanall? =C2=A0do_cleansstate or maybe do_clean is enoug=
h?<br>
&gt; <br>
&gt; <br>
&gt; According to the document<br>
&gt; <br>
&gt; <br>
&gt;&gt; do_clean<br>
&gt;&gt; do_unpack task forward (i.e. do_unpack, do_configure, do_compile, =
do_install, and do_package).<br>
&gt;&gt; if no changes have been made and the recipe is rebuilt after clean=
ing, output files are simply restored from the sstate cache.=C2=A0<br>
&gt; <br>
&gt; <br>
&gt; I want to avoid doing do_cleanall often, and I would like to tell bitb=
ake that my recipe needs rebuild at the same time not rebuilding others.<br=
>
&gt; But at the same time I want to avoid building my single explicity.<br>
&gt; I just want to build the image name as target.<br>
<br>
I think ccleansstate should be good.<br>
<br>
&gt; <br>
&gt; <br>
<br>
</div>
</span></font></div>
</div>
</div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--94eb2c189baea8a0c70555c3d3a5--
