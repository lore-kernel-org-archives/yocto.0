Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-wg0-f45.google.com (mail-wg0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D06A5E005B3
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 01:59:07 -0700 (PDT)
Received: by mail-wg0-f45.google.com with SMTP id j13so260469wgh.24
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 01:59:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type:x-gm-message-state;
	bh=aouB1AfH1xZmKSejl5EOhnJCXsSl+mS3nxgHNWESuDg=;
	b=L77M4HznkD84zKQdkF49zMpr3QUlsszirBPWHHllJ9HRg56hZEV7+0uvsPFuqEk41I
	8L5lE33y04Nty0up8gTbpCOh0jr6TtZAnNiSjDCCGCbsw0v8l9coM6gEGNioygtTs4RY
	PRSHnLmGDrwSTvoWZjT0RmvRc2fmTpTA9Vy+MtAfIlYyNu/JHxnj8v033Z/PHPAIKQUt
	sntjUU/ZIQy0HVJrQwfrM0EVKj0ExlcQEzWR3wxau+L3zJjkgJd1f+SvVUWkLecR7g9C
	jMzti7emP5tcNvQI+9ye0kvbHJGJdR3yGufzTM6T0u78uy9gVT650DfWLzUdE+VfOly0
	0UBg==
X-Received: by 10.180.189.68 with SMTP id gg4mr741160wic.27.1371200346808;
	Fri, 14 Jun 2013 01:59:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.180.83.1 with HTTP; Fri, 14 Jun 2013 01:58:45 -0700 (PDT)
In-Reply-To: <CAOT3miJv+tGHkA=BAPb2x4oXdnYV2QR7-ff8nHxC4b-2PRDMew@mail.gmail.com>
References: <CAOT3miJ_akhKUidZi-0NsA-h7bMtOSrFm+BxGadopC-4qDb1gw@mail.gmail.com>
	<CA+YB3rZELOm4yvYoFeR7==W-Kzi=Xye3hN3XKcV+wJBHXXwuWQ@mail.gmail.com>
	<CAOT3miLe3ZF3ZggpvMfZ=jbH+zjww_UBBJ0vN3F2R_o2_Mq9zA@mail.gmail.com>
	<CAOT3miJv+tGHkA=BAPb2x4oXdnYV2QR7-ff8nHxC4b-2PRDMew@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Fri, 14 Jun 2013 10:58:45 +0200
Message-ID: <CAP71WjzuWLRG0+_i9vbGWmVAVj_--t9SxWGEdr=nZuCWXLFRdA@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQkLcIo51H8xS9PGa9H5Q+gm6lP7p9YaJUebmX7zM4Ee045KQdFPhlJB/lc78u0wWd2f7AP4
Subject: Re: Compliance program questions
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
X-List-Received-Date: Fri, 14 Jun 2013 08:59:09 -0000
Content-Type: multipart/alternative; boundary=001a11c3530096750504df197504

--001a11c3530096750504df197504
Content-Type: text/plain; charset=ISO-8859-1

Hi there,



>
>
> Jeff,
>
> On Thu, Apr 25, 2013 at 7:52 PM, Jeff Osier-Mixon <jefro@jefro.net> wrote:
> > Hi Nicolas, thanks for asking these questions. We are in the process
> > of revising the documentation and application forms for that program,
> > so your questions come at a very good time.
>
> thanks a lot for your quick answer, and I am glad that it's right on time!
>

trying to revive this thread, and check if there is any update on the
revised documentation/forms.

Also, i have an additional question. It is not clear from the 'registration
form' whether or not a commercial project can be (or not) registered as
Yocto Project Compatible. I am talking here about a commercial project that
includes non-free s/w (isolated in proper layers) allthough:
 - all changes to oe-core, bitbake, meta-oe, ... are contributed back
 - all processes/recommendations are followed properly (distro policies
isolated, README, ...)

Can such a project be 'branded' as Yocto?

I was initially under the impression that non free (and commercial) s/w was
prohibited, but then I noticed Enea Linux which does seem to be commercial
(i don't know if it included non free, though).

Looking at the registration form again, it seems that "all" it might take
is to be a Yocto Project member.

is that correct?



>
> >
> > I have a few answers:
> >
> > On Thu, Apr 25, 2013 at 8:36 AM, Nicolas Dechesne <ndec13@gmail.com>
> wrote:
> >> Hi there,
> >>
> >> I have a couple of questions regarding the compliance program. If
> >> there is a better place for asking such questions, please let me know.
> >>
> >> I have studied the Yocto compliance documentation, [1] on the website,
> >> and I have the following questions:
> >>
> >>  - is there any 'practical' guide with "do's and don'ts" to help make
> >> a sucessful Yocto Project Compatible registration?
> >
> > We don't have a guide like this, but I can create one. I'm guessing
> > you are looking for guidance on how to answer individual questions as
> > well as how one answer affects the others, is that correct?
>
> Yes my questions below are clearly good target for such a 'compliance'
> tutorial.
>
> >
> >>  - i understand that while the project should build with the OE core
> >> toolchain, it is not required to use the OE core toolchain 'by
> >> default', so we should be able to provide our own modified/customized
> >> toolchain in our layers, is my understanding correct?
> >
> > Yes - the project needs to be able to build with the standard
> > toolchain, but you can provide your own as well.
>
> ok.
>
> >
> >>  - it is recommended, but not mandatory not use the Yocto kernel, so
> >> we can use any mainline version in our BSP layers, right?
> >
> > I believe this is the case, but I'll need to research & get back to you.
>
> at least meta-arago seems to provide a couple of kernel, so i expect
> it should be ok, but worth checking.
>
> >
> >>  - is it tolerated to change the versions of some components from
> >> OE-core or meta-oe? Not just add patches through .bbappend, but
> >> actually use an older or a more recent version of components, let's
> >> say Gstreamer for example?
> >
> > I don't think we require specific versions of any packages, but again
> > I'll have to research first.
>
> that question is currently the most important for me, so please let me
> know. again, just to avoid any confusion, we would need to downgrade
> several recipes to older versions. the idea would be to import such
> recipes from OE tree history if they ever existed, or create them from
> scratch, if needed.
>
> >
> >>  - can we included new recipes for software programs not already
> >> included in oe-core or meta-oe in our layers, or do we have to
> >> contribute them back into oe-core or meta-oe before registration?
> >
> > Yes, you can include new recipes (and packages).
>
> ok.
>
> >
> >>  - the Yocto project compatible registration is made against a
> >> specific version of Yocto. What happens when a new Yocto version is
> >> released? Should we go through the registration process again?
> >
> > That is a question we have discussed quite a lot. The plan of record
> > is for YP Compatible products/projects to resubmit the form after
> > testing with the new version. However, that does create a problem if
> > someone has, for example, a dozen YP Compatible products. Plus, what
> > happens with point releases? These issues are under discussion & I'll
> > report back as soon as I have clear answers.
>
> ok, thanks again. looking forward for your next set of answers.
>

--001a11c3530096750504df197504
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi there,<div><br></div><div><div class=3D"gmail_extra"><b=
r><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,2=
04);border-left-style:solid;padding-left:1ex">

<br>
<br>
<br>
Jeff,<br>
<br>
On Thu, Apr 25, 2013 at 7:52 PM, Jeff Osier-Mixon &lt;<a href=3D"mailto:jef=
ro@jefro.net">jefro@jefro.net</a>&gt; wrote:<br>
&gt; Hi Nicolas, thanks for asking these questions. We are in the process<b=
r>
&gt; of revising the documentation and application forms for that program,<=
br>
&gt; so your questions come at a very good time.<br>
<br>
thanks a lot for your quick answer, and I am glad that it&#39;s right on ti=
me!<br></blockquote><div><br></div><div>trying to revive this thread, and c=
heck if there is any update on the revised documentation/forms.</div><div>

<br></div><div style>Also, i have an additional question. It is not clear f=
rom the &#39;registration form&#39; whether or not a commercial project can=
 be (or not) registered as Yocto Project Compatible. I am talking here abou=
t a commercial project that includes non-free s/w (isolated in proper layer=
s) allthough:=A0</div>

<div style>=A0- all changes to oe-core, bitbake, meta-oe, ... are contribut=
ed back</div><div style>=A0- all processes/recommendations are followed pro=
perly (distro policies isolated, README, ...)</div><div style><br></div><di=
v style>

Can such a project be &#39;branded&#39; as Yocto?=A0</div><div style><br></=
div><div style>I was initially under the impression that non free (and comm=
ercial) s/w was prohibited, but then I noticed Enea Linux which does seem t=
o be commercial (i don&#39;t know if it included non free, though).</div>

<div style><br></div><div style>Looking at the registration form again, it =
seems that &quot;all&quot; it might take is to be a Yocto Project member.=
=A0</div><div style><br></div><div style>is that correct?</div><div style>
=A0</div>
<div>=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-=
left-style:solid;padding-left:1ex">
<br>
&gt;<br>
&gt; I have a few answers:<br>
&gt;<br>
&gt; On Thu, Apr 25, 2013 at 8:36 AM, Nicolas Dechesne &lt;<a href=3D"mailt=
o:ndec13@gmail.com">ndec13@gmail.com</a>&gt; wrote:<br>
&gt;&gt; Hi there,<br>
&gt;&gt;<br>
&gt;&gt; I have a couple of questions regarding the compliance program. If<=
br>
&gt;&gt; there is a better place for asking such questions, please let me k=
now.<br>
&gt;&gt;<br>
&gt;&gt; I have studied the Yocto compliance documentation, [1] on the webs=
ite,<br>
&gt;&gt; and I have the following questions:<br>
&gt;&gt;<br>
&gt;&gt; =A0- is there any &#39;practical&#39; guide with &quot;do&#39;s an=
d don&#39;ts&quot; to help make<br>
&gt;&gt; a sucessful Yocto Project Compatible registration?<br>
&gt;<br>
&gt; We don&#39;t have a guide like this, but I can create one. I&#39;m gue=
ssing<br>
&gt; you are looking for guidance on how to answer individual questions as<=
br>
&gt; well as how one answer affects the others, is that correct?<br>
<br>
Yes my questions below are clearly good target for such a &#39;compliance&#=
39; tutorial.<br>
<br>
&gt;<br>
&gt;&gt; =A0- i understand that while the project should build with the OE =
core<br>
&gt;&gt; toolchain, it is not required to use the OE core toolchain &#39;by=
<br>
&gt;&gt; default&#39;, so we should be able to provide our own modified/cus=
tomized<br>
&gt;&gt; toolchain in our layers, is my understanding correct?<br>
&gt;<br>
&gt; Yes - the project needs to be able to build with the standard<br>
&gt; toolchain, but you can provide your own as well.<br>
<br>
ok.<br>
<br>
&gt;<br>
&gt;&gt; =A0- it is recommended, but not mandatory not use the Yocto kernel=
, so<br>
&gt;&gt; we can use any mainline version in our BSP layers, right?<br>
&gt;<br>
&gt; I believe this is the case, but I&#39;ll need to research &amp; get ba=
ck to you.<br>
<br>
at least meta-arago seems to provide a couple of kernel, so i expect<br>
it should be ok, but worth checking.<br>
<div class=3D"im"><br>
&gt;<br>
&gt;&gt; =A0- is it tolerated to change the versions of some components fro=
m<br>
&gt;&gt; OE-core or meta-oe? Not just add patches through .bbappend, but<br=
>
&gt;&gt; actually use an older or a more recent version of components, let&=
#39;s<br>
&gt;&gt; say Gstreamer for example?<br>
&gt;<br>
</div>&gt; I don&#39;t think we require specific versions of any packages, =
but again<br>
&gt; I&#39;ll have to research first.<br>
<br>
that question is currently the most important for me, so please let me<br>
know. again, just to avoid any confusion, we would need to downgrade<br>
several recipes to older versions. the idea would be to import such<br>
recipes from OE tree history if they ever existed, or create them from<br>
scratch, if needed.<br>
<br>
&gt;<br>
&gt;&gt; =A0- can we included new recipes for software programs not already=
<br>
&gt;&gt; included in oe-core or meta-oe in our layers, or do we have to<br>
&gt;&gt; contribute them back into oe-core or meta-oe before registration?<=
br>
&gt;<br>
&gt; Yes, you can include new recipes (and packages).<br>
<br>
ok.<br>
<br>
&gt;<br>
&gt;&gt; =A0- the Yocto project compatible registration is made against a<b=
r>
&gt;&gt; specific version of Yocto. What happens when a new Yocto version i=
s<br>
&gt;&gt; released? Should we go through the registration process again?<br>
&gt;<br>
&gt; That is a question we have discussed quite a lot. The plan of record<b=
r>
&gt; is for YP Compatible products/projects to resubmit the form after<br>
&gt; testing with the new version. However, that does create a problem if<b=
r>
&gt; someone has, for example, a dozen YP Compatible products. Plus, what<b=
r>
&gt; happens with point releases? These issues are under discussion &amp; I=
&#39;ll<br>
&gt; report back as soon as I have clear answers.<br>
<br>
ok, thanks again. looking forward for your next set of answers.<br>
</blockquote></div><br></div></div></div>

--001a11c3530096750504df197504--
