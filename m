Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E990E00C89; Tue, 15 Aug 2017 16:40:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EA31E00A39
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 16:40:11 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id f11so21692136oic.0
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 16:40:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=X5Gtzii6mOdYDZt9k1QYcOtF9Ly6ZRU+e+L5CYH28P0=;
	b=FianCmEdX8/Ehx3a3hgssSBUiSLWWB2ZHhkLxGJhj2ES2oZ+h7lFtEomRfKKyG5k4c
	VmIW1TIsSMzpcLUTz5w5ntyqsh1JFyRJjDLMfiff31wfpDC5C6hodHemfwmc1q9mBnCO
	ZE6HpGk4jYfMWpZjfBW1Ccw2DchLHxgpiK7lq2vSOYkauy8GqD2UNaN1j3t0vu8wKyRf
	xRagrFBjV1AYMvHyqBN263vJzLZyG9AHjYiGSVV2GgiD+dojU2htnR4/HNfeTrcWj1Lv
	Ggi+tLB14FOYh+6ZIom2188/mHhRUkDaMBhFvIOmz4FuQODnM0z2KAAGBllR15Sd2DBH
	XzDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=X5Gtzii6mOdYDZt9k1QYcOtF9Ly6ZRU+e+L5CYH28P0=;
	b=hmcJvjN60phgZkTzaqjZVNC5WfMUPR2ddMgpOM0IrK5hLteL02im+SleWJhzEuuhxa
	HXBETpzFabfkvROY9GTPUHI95YSxVRu9Hjliol/0Goqxjh69V/jozjNn00h4VTS5XDli
	y9yMxJTQChG2qZYkaK+fS/rJh/ZoV4XIbwJLwKeAZK6Q/fF0X3GYxXP6eANWmXC9n2gx
	95vSKYfobXSe83vaV9DIWP2IiGj5lr1bFzEt7r/nBN54anrcEkM3O25hMPCYBOR9NZZT
	GIqbz5AccMlyDTgjF3Ffj/lkMiRYe8itEt+ISPdYIrshbhtcT+YN+m/F3yotbM8/QfRJ
	+nug==
X-Gm-Message-State: AHYfb5jj3e6UvkHN6eynKAI0aLGoWDZX4OfIIcyGjsQIWb+icG1ba/Mu
	tgXApxH67sFwBEjbvOPFl3wsRGQi5w==
X-Received: by 10.202.177.133 with SMTP id a127mr31031465oif.70.1502840411392; 
	Tue, 15 Aug 2017 16:40:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.44.5 with HTTP; Tue, 15 Aug 2017 16:40:10 -0700 (PDT)
Received: by 10.74.44.5 with HTTP; Tue, 15 Aug 2017 16:40:10 -0700 (PDT)
In-Reply-To: <CA+chaQe_1GVYdmCwqQ-gSUZZ=_xcN5RR=ORuzZiUxTyj3tU8uQ@mail.gmail.com>
References: <39341581-7086-955e-d678-fa771e5941da@gmail.com>
	<1502725740.28941.13.camel@linux.intel.com>
	<CABcZANkw2EPzROT6WFkqzL+OoJtnXBu_HWJVevKg07RrmGOLfw@mail.gmail.com>
	<299105a1-2bf6-a89f-d1f1-e35bd2d458c1@gmail.com>
	<1502806378.28941.32.camel@linux.intel.com>
	<CA+chaQe_1GVYdmCwqQ-gSUZZ=_xcN5RR=ORuzZiUxTyj3tU8uQ@mail.gmail.com>
From: Riko Ho <antonius.riko@gmail.com>
Date: Wed, 16 Aug 2017 07:40:10 +0800
Message-ID: <CAByQQ_qNcKpj5RYXX0EVtzLfqki0CW-FwSN-tAhvEYybKo24ug@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: layer.conf on openembedded-core ?
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
X-List-Received-Date: Tue, 15 Aug 2017 23:40:13 -0000
Content-Type: multipart/alternative; boundary="001a113cd3f0e00fab0556d34c7e"

--001a113cd3f0e00fab0556d34c7e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I see, so I must use all layers within the same branch.
Could you tell me where I can download those layers in the sma branch?
I didn't see the branch when I clone the layers.

Regards,
On Aug 15, 2017 10:11 PM, "Martin Jansa" <martin.jansa@gmail.com> wrote:

> But it's related to it, in this thread he added oe-core/meta in master
> branch to BBLAYERS in poky build (already including poky/meta) from pyro
> branch.
>
> That's why he is seeing 3 strange issues reported in couple threads
> already (and this is also 3rd time someone telling him that he shouldn't
> include oe-core meta twice and to use the same branch across all layers).
>
> On Tue, Aug 15, 2017 at 4:12 PM, Leonardo Sandoval <
> leonardo.sandoval.gonzalez@linux.intel.com> wrote:
>
>> On Tue, 2017-08-15 at 09:09 +0800, Riko wrote:
>> > Dear Team Yocto Members,
>> >
>> > I continue compiling, and got :
>> >
>> > ERROR: /home/bianchi/poky/openembedded-core/meta/recipes-core/images/
>> build-appliance-image_15.0.0.bb: No IMAGE_CMD defined for IMAGE_FSTYPES
>> entry 'wic.vmdk' - possibly invalid type name or missing support class
>> > ERROR: Failed to parse
>> > recipe: /home/bianchi/poky/openembedded-core/meta/recipes-core/images/
>> build-appliance-image_15.0.0.bb
>> >
>>
>> would be better if you start another thread with this issue. BTW, I just
>> built a build-appliance without any change at local.conf and all went
>> fine so you may have included something that you are not referring to
>> (IMAGE_FILES?)
>>
>>
>>
>> > How can I fix it ?
>> >
>> > regards,
>> >
>> > Riko
>> >
>> >
>> >
>> > On 14/08/17 23:56, Christopher Larson wrote:
>> >
>> > > The openembedded-core root isn=E2=80=99t a layer, openembedded-core/=
meta is.
>> > >
>> > > On Mon, Aug 14, 2017 at 8:49 AM, Leonardo Sandoval
>> > > <leonardo.sandoval.gonzalez@linux.intel.com> wrote:
>> > >         On Mon, 2017-08-14 at 15:11 +0800, Riko wrote:
>> > >         > Dear Yocto Members,
>> > >         >
>> > >         > How can I find this file ?
>> > >
>> > >
>> > >         this is a pretty general question. are you running bitbake
>> > >         from the
>> > >         build directory? double check your conf/bblayers.conf and
>> > >         make sure
>> > >         paths there are pointing correctly.
>> > >
>> > >
>> > >         >
>> > >         > =3D=3D
>> > >         >
>> > >         > ERROR: Unable to parse
>> > >         > /home/bianchi/poky/openembedded-core/conf/layer.conf:
>> > >         [Errno 2] file
>> > >         > /home/bianchi/poky/openembedded-core/conf/layer.conf not
>> > >         found
>> > >         >
>> > >         >
>> > >         > Thanks,
>> > >         >
>> > >         > Riko
>> > >         >
>> > >
>> > >
>> > >         --
>> > >         _______________________________________________
>> > >         yocto mailing list
>> > >         yocto@yoctoproject.org
>> > >         https://lists.yoctoproject.org/listinfo/yocto
>> > >
>> > >
>> > >
>> > >
>> > >
>> > > --
>> > > Christopher Larson
>> > > kergoth at gmail dot com
>> > > Founder - BitBake, OpenEmbedded, OpenZaurus
>> > > Senior Software Engineer, Mentor Graphics
>> >
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>

--001a113cd3f0e00fab0556d34c7e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p>I see, so I must use all layers within the same branch.<br>
Could you tell me where I can download those layers in the sma branch?<br>
I didn&#39;t see the branch when I clone the layers.</p>
<p>Regards,</p>
<div class=3D"gmail_quote">On Aug 15, 2017 10:11 PM, &quot;Martin Jansa&quo=
t; &lt;<a href=3D"mailto:martin.jansa@gmail.com">martin.jansa@gmail.com</a>=
&gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr">But it&#39;s related to it, in this thread he added oe-core/meta i=
n master branch to BBLAYERS in poky build (already including poky/meta) fro=
m pyro branch.<div><br></div><div>That&#39;s why he is seeing 3 strange iss=
ues reported in couple threads already (and this is also 3rd time someone t=
elling him that he shouldn&#39;t include oe-core meta twice and to use the =
same branch across all layers).</div></div><div class=3D"gmail_extra"><br><=
div class=3D"gmail_quote">On Tue, Aug 15, 2017 at 4:12 PM, Leonardo Sandova=
l <span dir=3D"ltr">&lt;<a href=3D"mailto:leonardo.sandoval.gonzalez@linux.=
intel.com" target=3D"_blank">leonardo.sandoval.gonzalez@<wbr>linux.intel.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Tue, 2017-08-1=
5 at 09:09 +0800, Riko wrote:<br>
&gt; Dear Team Yocto Members,<br>
&gt;<br>
&gt; I continue compiling, and got :<br>
&gt;<br>
&gt; ERROR: /home/bianchi/poky/openembedde<wbr>d-core/meta/recipes-core/<wb=
r>images/<a href=3D"http://build-appliance-image_15.0.0.bb" rel=3D"noreferr=
er" target=3D"_blank">build-appliance-image_<wbr>15.0.0.bb</a>: No IMAGE_CM=
D defined for IMAGE_FSTYPES entry &#39;wic.vmdk&#39; - possibly invalid typ=
e name or missing support class<br>
&gt; ERROR: Failed to parse<br>
&gt; recipe: /home/bianchi/poky/openembedde<wbr>d-core/meta/recipes-core/<w=
br>images/<a href=3D"http://build-appliance-image_15.0.0.bb" rel=3D"norefer=
rer" target=3D"_blank">build-appliance-image_<wbr>15.0.0.bb</a><br>
&gt;<br>
<br>
would be better if you start another thread with this issue. BTW, I just<br=
>
built a build-appliance without any change at local.conf and all went<br>
fine so you may have included something that you are not referring to<br>
(IMAGE_FILES?)<br>
<br>
<br>
<br>
&gt; How can I fix it ?<br>
&gt;<br>
&gt; regards,<br>
&gt;<br>
&gt; Riko<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On 14/08/17 23:56, Christopher Larson wrote:<br>
&gt;<br>
&gt; &gt; The openembedded-core root isn=E2=80=99t a layer, openembedded-co=
re/meta is.<br>
&gt; &gt;<br>
&gt; &gt; On Mon, Aug 14, 2017 at 8:49 AM, Leonardo Sandoval<br>
&gt; &gt; &lt;<a href=3D"mailto:leonardo.sandoval.gonzalez@linux.intel.com"=
 target=3D"_blank">leonardo.sandoval.gonzalez@li<wbr>nux.intel.com</a>&gt; =
wrote:<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0On Mon, 2017-08-14 at 15:11 +080=
0, Riko wrote:<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Dear Yocto Members,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; How can I find this file ?<=
br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0this is a pretty general questio=
n. are you running bitbake<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0from the<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0build directory? double check yo=
ur conf/bblayers.conf and<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0make sure<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0paths there are pointing correct=
ly.<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; =3D=3D<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; ERROR: Unable to parse<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; /home/bianchi/poky/openembe=
dde<wbr>d-core/conf/layer.conf:<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[Errno 2] file<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; /home/bianchi/poky/openembe=
dde<wbr>d-core/conf/layer.conf not<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0found<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Thanks,<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt; Riko<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0--<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_____________________________<wb=
r>__________________<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0yocto mailing list<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"mailto:yocto@yoctopro=
ject.org" target=3D"_blank">yocto@yoctoproject.org</a><br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"https://lists.yoctopr=
oject.org/listinfo/yocto" rel=3D"noreferrer" target=3D"_blank">https://list=
s.yoctoproject.or<wbr>g/listinfo/yocto</a><br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; Christopher Larson<br>
&gt; &gt; kergoth at gmail dot com<br>
&gt; &gt; Founder - BitBake, OpenEmbedded, OpenZaurus<br>
&gt; &gt; Senior Software Engineer, Mentor Graphics<br>
&gt;<br>
<span class=3D"m_-1740914328032069729HOEnZb"><font color=3D"#888888"><br>
<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>
</blockquote></div>

--001a113cd3f0e00fab0556d34c7e--
