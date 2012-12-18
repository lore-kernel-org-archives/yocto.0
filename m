Return-Path: <wmat@alphatroop.com>
Received: from mail-ia0-f173.google.com (mail-ia0-f173.google.com
	[209.85.210.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C747FE006B4
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2012 05:18:34 -0800 (PST)
Received: by mail-ia0-f173.google.com with SMTP id w21so506756iac.18
	for <yocto@yoctoproject.org>; Tue, 18 Dec 2012 05:18:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=hnBaD3mg4cWcvqge0RvDWBRROIrCBj9iyD51fuRRUyU=;
	b=cP4fuGlbbR7/SarVEC+JZ0d1AcBmi/FNyFmcM7okos09J+/CTwEbrb5aJT+a1Gvo4o
	z6lzoC6OeNV7pXYJ5iMfVRYQZ6q9vHtn+q6MxPMRw1sW2se7QcOJU7cevsZY4gwTgfHw
	GA7LQolucFt9hx+yTm3KwJMuIagznKLXHzVx+ws17Wlaozq2o4T5ZxzZ9lHLCmi98tPJ
	4mOumuSPACCHqgOhoY2bFAV00bUA7mUTe0WxKMelZ84LblgdNyKUiEnPIm2bxSv61IwV
	IM5tILq0LhSdRmLGj3GIBQ+wCPhln1/eaeZXfbFTwn0j1BIyEY/j7QMPz4SHVmbyx4Se
	91nQ==
Received: by 10.50.6.169 with SMTP id c9mr2187946iga.24.1355836714210; Tue, 18
	Dec 2012 05:18:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.74.169 with HTTP; Tue, 18 Dec 2012 05:18:14 -0800 (PST)
X-Originating-IP: [24.246.30.132]
In-Reply-To: <42e1516f.20e80.13badfc9db3.Coremail.huanmateme@163.com>
References: <23bf4f1e.c486.13ba81d3be7.Coremail.huanmateme@163.com>
	<20121217153752.GA5124@gmail.com>
	<42e1516f.20e80.13badfc9db3.Coremail.huanmateme@163.com>
From: Bill Traynor <wmat@alphatroop.com>
Date: Tue, 18 Dec 2012 08:18:14 -0500
Message-ID: <CAGfZjq7KecT80xYinA6iiTBhZpQiwC3BiRUf=EvuZ3HDWi-duQ@mail.gmail.com>
To: Biao <huanmateme@163.com>
X-Gm-Message-State: ALoCoQng0a273M4zsEQo8norDPZgwFaGki1D48dqLdmf2CA3A/UU9U+XBgu79lwyzCNbzJmzccmm
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Where does the bitbake get the variable "TOPDIR"
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 18 Dec 2012 13:18:35 -0000
Content-Type: multipart/alternative; boundary=e89a8f646717b9554204d120557e

--e89a8f646717b9554204d120557e
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 18, 2012 at 7:28 AM, Biao <huanmateme@163.com> wrote:

>
> At 2012-12-17 23:37:52,"Eren T=FCrkay" <eren@hambedded.org> wrote:
> >On Mon, Dec 17, 2012 at 05:06:26PM +0800, Biao wrote:
> >> Greetings,
> >>
> >> I am a newbie tying to understand how bitbake works.
> >> There is one line as BBPATH =3D "${TOPDIR}" in the mybuild/conf/bblaye=
rs.conf, i would like to know where the TOPDIR is defined?
> >
> >It's defind in "lib/bb/parse/parse_py/ConfHandler.py:36". When TOPDIR is
> >not defined in any of the bitbake configuration files, it's set to
> >current working directory automatically.
> >
>
> The whole picture of how bitbake works is missing from the Manual of the =
bitbake, which typically should be(I guess) :
>
> 1. Set some environment variables like "TOPDIR, THISDIR..."
>
>
> 2. Looking for and parsing the conf/bblayers.conf.
>
> 3. Set the LAYERDIR and parsing each of the ONELAYER/conf/layer.conf
>
> 4. Locate and parsing the conf/bitbake.conf.
>
> 5. Go over of each of the .bb and setup all the global variables to get a=
 dependency tree...
>
> 6. Start the build
>
> 7....
>
>
Have a look at the Bitbake section of the Yocto Project Reference manual
(Chapter 6), as it provides a little more information.

I am trying to draw a picture like the list above,which is from the
bitbake's point of view,
>
>  some of the list is not right, since lots things are still not clear to =
me. If someone could draw such picture, it helps a lot to understand the bi=
tbake.
>
> >(...)
> >
> >def init(data):
> >    topdir =3D data.getVar('TOPDIR')
> >    if not topdir:
> >        data.setVar('TOPDIR', os.getcwd())
> >
> >(...)
> >
> >You may want to read the newly-written documentation about bitbake and
> >open embedded. I tried to explain how things fit together. I would like
> >to have your feedback.
> >
> >http://hambedded.org/blog/2012/11/24/from-bitbake-hello-world-to-an-imag=
e/
>
> I will try to give some feedback after finishing the reading.
>
> But for now, there are some silly questions:
>
> 1. There is a base_do_fetch() {}, I did not find the explanation of the k=
eyword of 'base' in the manual, do i miss something?
>
> 2. There is 'bb.note' and 'bbnote' in the code example, is it a type-mist=
ake or something else?
>
> >
> >--
> >    . 73! DE TA1AET
> >      http://linkedin.com/in/erenturkay
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--e89a8f646717b9554204d120557e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Tue, Dec 18, 2012 at 7:28 AM, Biao <span dir=3D"ltr">&lt;<a href=
=3D"mailto:huanmateme@163.com" target=3D"_blank">huanmateme@163.com</a>&gt;=
</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div style=3D"line-height:1.7;font-size:14px=
;font-family:arial"><pre><br></pre><pre>At=A0<a href=3D"tel:2012-12-17%C2%A=
023" value=3D"+12012121723" target=3D"_blank">2012-12-17=A023</a>:37:52,&qu=
ot;Eren=A0T=FCrkay&quot;=A0&lt;<a href=3D"mailto:eren@hambedded.org" target=
=3D"_blank">eren@hambedded.org</a>&gt;=A0wrote:
&gt;On=A0Mon,=A0Dec=A017,=A02012=A0at=A005:06:26PM=A0+0800,=A0Biao=A0wrote:
&gt;&gt;=A0Greetings,=A0
&gt;&gt;=A0
&gt;&gt;=A0I=A0am=A0a=A0newbie=A0tying=A0to=A0understand=A0how=A0bitbake=A0=
works.
&gt;&gt;=A0There=A0is=A0one=A0line=A0as=A0BBPATH=A0=3D=A0&quot;${TOPDIR}&qu=
ot;=A0in=A0the=A0mybuild/conf/bblayers.conf,=A0i=A0would=A0like=A0to=A0know=
=A0where=A0the=A0TOPDIR=A0is=A0defined?=A0
&gt;
&gt;It&#39;s=A0defind=A0in=A0&quot;lib/bb/parse/parse_py/ConfHandler.py:36&=
quot;.=A0When=A0TOPDIR=A0is
&gt;not=A0defined=A0in=A0any=A0of=A0the=A0bitbake=A0configuration=A0files,=
=A0it&#39;s=A0set=A0to
&gt;current=A0working=A0directory=A0automatically.
&gt;</pre><pre>The whole picture of how bitbake works is missing from the M=
anual of the bitbake, which typically should be(I guess) :</pre><pre>1. Set=
 some environment variables like &quot;TOPDIR, THISDIR...&quot;</pre><pre>

2. Looking for and parsing the conf/bblayers.conf.</pre><pre>3. Set the LAY=
ERDIR and parsing each of the ONELAYER/conf/layer.conf</pre><pre>4. Locate =
and parsing the conf/bitbake.conf.</pre><pre>5. Go over of each of the .bb =
and setup all the global variables to get a dependency tree...</pre>

<pre>6. Start the build</pre><pre>7....</pre></div></blockquote><div><br></=
div><div>Have a look at the Bitbake section of the Yocto Project Reference =
manual (Chapter 6), as it provides a little more information.=A0 <br><br>

</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div style=3D"line-height:1.7;font-siz=
e:14px;font-family:arial"><pre>I am trying to draw a picture like the list =
above,which is from the bitbake&#39;s point of view,</pre>

<pre> some of the list is not right, since lots things are still not clear =
to me. If someone could draw such picture, it helps a lot to understand the=
 bitbake.</pre><div class=3D"im"><pre>&gt;(...)
&gt;
&gt;def=A0init(data):
&gt;=A0=A0=A0=A0topdir=A0=3D=A0data.getVar(&#39;TOPDIR&#39;)
&gt;=A0=A0=A0=A0if=A0not=A0topdir:
&gt;=A0=A0=A0=A0=A0=A0=A0=A0data.setVar(&#39;TOPDIR&#39;,=A0os.getcwd())
&gt;
&gt;(...)
&gt;
&gt;You=A0may=A0want=A0to=A0read=A0the=A0newly-written=A0documentation=A0ab=
out=A0bitbake=A0and
&gt;open=A0embedded.=A0I=A0tried=A0to=A0explain=A0how=A0things=A0fit=A0toge=
ther.=A0I=A0would=A0like
&gt;to=A0have=A0your=A0feedback.
&gt;
&gt;<a href=3D"http://hambedded.org/blog/2012/11/24/from-bitbake-hello-worl=
d-to-an-image/" target=3D"_blank">http://hambedded.org/blog/2012/11/24/from=
-bitbake-hello-world-to-an-image/</a></pre></div><pre>I will try to give so=
me feedback after finishing the reading.</pre>

<pre>But for now, there are some silly questions:</pre><pre>1. There is a b=
ase_do_fetch() {}, I did not find the explanation of the keyword of &#39;ba=
se&#39; in the manual, do i miss something?</pre><pre>2. There is &#39;bb.n=
ote&#39; and &#39;bbnote&#39; in the code example, is it a type-mistake or =
something else?</pre>

<div class=3D"im"><pre>&gt;
&gt;--=A0
&gt;=A0=A0=A0=A0.=A073!=A0DE=A0TA1AET
&gt;=A0=A0=A0=A0=A0=A0<a href=3D"http://linkedin.com/in/erenturkay" target=
=3D"_blank">http://linkedin.com/in/erenturkay</a>
</pre></div></div><br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div></div>

--e89a8f646717b9554204d120557e--
