Return-Path: <marwen.brikcha@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79672E00B45; Tue, 16 Oct 2018 05:59:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marwen.brikcha[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.50 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
	[209.85.166.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2145E00A10
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 05:59:43 -0700 (PDT)
Received: by mail-io1-f50.google.com with SMTP id z16-v6so16462246iol.6
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 05:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=S1isQ+zgL3Uih0LJR5dJmvOYUcjLLNC9ZeZCBwLc0gQ=;
	b=eHIyYlPp8iGofqZxi6sq92OsVoNZbbJngAIbDciJriLnzy/7loD7BA7PSg9+noq1wh
	iqF7AWXmw2WlptxVfloE7RDrieydolzbPP6in+XeunpeuoNP1J6tdBiO8iTNUsabiPtt
	vpVzoLqkmq0uwD9mZvjplR69MtLFIQbJ/WfSITkpR5SuCCG4OQwvl+wN560ElUD1gucX
	BpZnavCn1tzdXwVWTF7gbpro+IkS2/x3cFgKcHAe8asMUMB5WIYDPhUeEzkdN9qJjh5L
	+vcorLt/CQQTGJgpSIDbcFjlopfg/u+Gb5vA9hMSDjDdgkOzAJn+6mF2sKjjM6UKTUcD
	mpnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=S1isQ+zgL3Uih0LJR5dJmvOYUcjLLNC9ZeZCBwLc0gQ=;
	b=hU5RGl6btBce8mXdlqsnnU6pl1lL+IM8MTwu8n+/V2zsAjrd9In3jSBw+My6OJCK5d
	6zNdVKFpRnP0+i3fjENrLcwsudxkjqfzaQ7QN2zRNPRLjKhDhLpVby3nbQsZk8hBTNxc
	7xYfEgibCA0OBYpYJBVv/cSGFQK5xAonB/NXeJ5ogtDnPUkIasYu7e/tgKYxbCvbyDMi
	wYtrGYnFgXIwlJ4G5sBqqkUJV8u0ggdEOdVJ19j9J4E1PGN+XqKoBOZkcCB78kWG4E4W
	7vVg/Tn+aXtbL9IQ3g/r2AsYJ0c0zmQXj/uritWt6u76xM2nMvcdImNEwknMbS3sW+z9
	YyqQ==
X-Gm-Message-State: ABuFfohyDR774yWbc5vURGdyOea6k2xljurP/vDNCLPAKynVfdHZCv/w
	VJHjkN5nrYB8rZhPmV4t6n3VbLRLPmzfRDxhy9Y=
X-Google-Smtp-Source: ACcGV6247QwPKi/zX4bDNtFwYl1Ei50edS3oS0PALP/0/j/ATIgRu2UW92SxOucnPrTUlJqyUspTcoY6sN0fjQHLde4=
X-Received: by 2002:a6b:8e14:: with SMTP id
	q20-v6mr14065812iod.169.1539694783158; 
	Tue, 16 Oct 2018 05:59:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAFjmEbDYvLenPW1D4=x+HxOmC4JUiJ4495xCbYzp6BZkxbAzwA@mail.gmail.com>
	<CAJTo0LZPS49=UK5E_1AJZa7tW7frxv8E4NRHMXRca3iW-e=asQ@mail.gmail.com>
In-Reply-To: <CAJTo0LZPS49=UK5E_1AJZa7tW7frxv8E4NRHMXRca3iW-e=asQ@mail.gmail.com>
From: Marwen BRIKCHA <marwen.brikcha@gmail.com>
Date: Tue, 16 Oct 2018 14:59:32 +0200
Message-ID: <CAFjmEbC2Vpe7wa+_ys0MmKFRkoWk2wgP1PE8rhTmJx6ev5EenA@mail.gmail.com>
To: ross.burton@intel.com
Cc: yocto@yoctoproject.org
Subject: Re: Yocto Poky 2.4.1 - Remove python3 from build
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
X-List-Received-Date: Tue, 16 Oct 2018 12:59:44 -0000
Content-Type: multipart/alternative; boundary="0000000000009cf2a3057858200c"

--0000000000009cf2a3057858200c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Ross,

I've set in my receipe opencv_3.%.bappend
PACKAGECONFIG =3D "eigen jpeg png tiff v4l libv4l gstreamer"
EXTRA_OECMAKE_append =3D " \
                  -DBUILD_PYTHON_SUPPORT=3DOFF \
                  -DBUILD_opencv_python3=3DOFF \
                 "
But alway opencv build python 3 dependencies in my images.
It's weird.

*$> bitbake -e opencv | grep "PACKAGECONFIG", I got :*
PACKAGECONFIG=3D" eigen jpeg png tiff v4l libv4l gstreamer"
and some other log that show -DBUILD_PYTHON_SUPPORT=3DOFF
-DBUILD_opencv_python3=3DOFF

Any help ?

Br,
Marwen



Le mar. 16 oct. 2018, =C3=A0 13 h 21, Burton, Ross <ross.burton@intel.com> =
a
=C3=A9crit :

> Disable the 'python3' PACKAGECONFIG in the opencv recipe.
>
>
> https://www.yoctoproject.org/docs/2.5.1/ref-manual/ref-manual.html#var-PA=
CKAGECONFIG
>
> Ross
> On Tue, 16 Oct 2018 at 11:17, Marwen BRIKCHA <marwen.brikcha@gmail.com>
> wrote:
> >
> > Hello,
> >
> > I'm using Yocto Poky 2.4.1 and bitbake version 1.6.0 to build a xilinx
> embedded linux for zcu102 board.
> >
> > I've integrated OpenCV libraries on my image.
> >
> > So, I want to remove python3 from image build .
> >
> > Can you help me here on how to do that ?
> >
> > ----
> > Best regards,
> > Marwen
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000009cf2a3057858200c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr">Hello Ross,<div><br></div><div>I&#39;ve set in m=
y receipe opencv_3.%.bappend</div><div><div>PACKAGECONFIG =3D &quot;eigen j=
peg png tiff v4l libv4l gstreamer&quot;</div></div><div><div>EXTRA_OECMAKE_=
append =3D &quot; \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 -DBUILD_PYTHON_SUPPORT=3DOFF \<br></div><div>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -DBUILD_opencv_python3=
=3DOFF \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0&quot;</div></div><div>But alway opencv build python 3 dependencies i=
n my images.</div><div>It&#39;s weird.</div><div><br></div><div><i>$&gt;=C2=
=A0bitbake -e opencv | grep &quot;PACKAGECONFIG&quot;, I got :</i></div><di=
v>PACKAGECONFIG=3D&quot;

eigen jpeg png tiff v4l libv4l gstreamer&quot;=C2=A0<br></div><div>and some=
 other log that show=C2=A0-DBUILD_PYTHON_SUPPORT=3DOFF=C2=A0 =C2=A0 =C2=A0 =
-DBUILD_opencv_python3=3DOFF</div><div><br></div><div>Any help ?</div><div>=
<br></div><div>Br,</div><div>Marwen</div><div><br></div><div><br></div></di=
v></div></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr">Le mar. 16 oct. 2018, =C3=A0 13 h 21, Burton, Ross &lt;<a href=3D"mail=
to:ross.burton@intel.com">ross.burton@intel.com</a>&gt; a =C3=A9crit=C2=A0:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">Disable the &#39;python3&#39; PACK=
AGECONFIG in the opencv recipe.<br>
<br>
<a href=3D"https://www.yoctoproject.org/docs/2.5.1/ref-manual/ref-manual.ht=
ml#var-PACKAGECONFIG" rel=3D"noreferrer" target=3D"_blank">https://www.yoct=
oproject.org/docs/2.5.1/ref-manual/ref-manual.html#var-PACKAGECONFIG</a><br=
>
<br>
Ross<br>
On Tue, 16 Oct 2018 at 11:17, Marwen BRIKCHA &lt;<a href=3D"mailto:marwen.b=
rikcha@gmail.com" target=3D"_blank">marwen.brikcha@gmail.com</a>&gt; wrote:=
<br>
&gt;<br>
&gt; Hello,<br>
&gt;<br>
&gt; I&#39;m using Yocto Poky 2.4.1 and bitbake version 1.6.0 to build a xi=
linx embedded linux for zcu102 board.<br>
&gt;<br>
&gt; I&#39;ve integrated OpenCV libraries on my image.<br>
&gt;<br>
&gt; So, I want to remove python3 from image build .<br>
&gt;<br>
&gt; Can you help me here on how to do that ?<br>
&gt;<br>
&gt; ----<br>
&gt; Best regards,<br>
&gt; Marwen<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>

--0000000000009cf2a3057858200c--
