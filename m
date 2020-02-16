Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.11415.1581856925873534633
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 Feb 2020 04:42:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CF1AfYAG;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: martin.jansa@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46EA8E0085D; Sun, 16 Feb 2020 04:42:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.47 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8C7FE007D4
	for <yocto@yoctoproject.org>; Sun, 16 Feb 2020 04:42:03 -0800 (PST)
Received: by mail-ed1-f47.google.com with SMTP id r18so17174130edl.1
        for <yocto@yoctoproject.org>; Sun, 16 Feb 2020 04:42:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=C/l3NjMcEPMVx7PnUFuq+F2aqoBu2NyZ/7V7kyhIqL8=;
        b=CF1AfYAGXhjmHKnny7Rdj0cMY52DD9/KRA79OjpILGtcNYqmeB14T0BcrsqLamZNxv
         uDBVapZsFjVPK7cy5K0TPER6daJnLmmQqRWeYzNWqGxAurKyh0Lh2ShzurPsu/XRVlja
         lyEFA/P2Z1IjsMchiEA1ZzkfUOsvSSFVI3ieYudRVMfs3iwP/ECaz3v2kIjg/1ir3dvp
         NU65DyO7HY7g/fT2jBbrQFQeVo099653C/0mSDNW9i6vZ7vBWOjPPTe8hUvcOW8Yh9zX
         u6I4Y8sOt8FDWO3oMXMFJWnZuGSjBxmEe6IM7kO7An1DytRuehfeBRyononMk+YXm5rO
         wAeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=C/l3NjMcEPMVx7PnUFuq+F2aqoBu2NyZ/7V7kyhIqL8=;
        b=Q4pito+Zvq99iktSyQgJx7kmZKtgzMl3C9Tp3gA76WgXCtB9x1rJEe1o51JYoBVO8I
         CaU6zRvZHbiINfzG0wLAIQB0Nw46GPyl4/mtLNoW2JGfMipyr+SVd2rR/vAD92W66IiU
         cfee/5aG6UDsOPuUT18xWCQRvbALbTuvcBSQARbwdYU4gH0rhUdB3nYU/AuNGK68q/aS
         ov/CC9Ux2nSHujgYBKrpy3UBGc71CunS/obvUNuIlLo4Tms8wj/UXyS/8j8a//ZUaUQS
         +UuVHD67v5ztF/oitCRTsMq4FvZHSOBt2R1MD2Pf0VUTBTRmp3YyCGdJJqsCEEHu4JlJ
         kT+A==
X-Gm-Message-State: APjAAAWY/jn+wqaF1AS5TmO/WLY8FsUOdVkPhkEqJC/ow0c6RLdIWZ/y
	MN9nEUOC9EMxKh7t87+F9tScRFMsAeuF2Zl+nGA=
X-Google-Smtp-Source: APXvYqz54tUs1jJldp53O6J4dqCemkOQ6ZN7PRNOBDI/zaKqyOm4IeXFfLXsTSVMy3wxyR+cHP0nHrYFlCohGapofyI=
X-Received: by 2002:a50:fd04:: with SMTP id i4mr10219921eds.311.1581856922803;
 Sun, 16 Feb 2020 04:42:02 -0800 (PST)
MIME-Version: 1.0
References: <alpine.LFD.2.21.2002150129460.2926947@localhost.localdomain>
 <61336b69-5456-3951-4b52-a6d471049612@ibeeto.com> <CA+chaQdy2=M+HeX93X1c-Ttk-1r6KtBXEFFS62Pkj19UQC_C3g@mail.gmail.com>
 <b0131c98d689481f9e2e4c1f312ca806@XBOX03.axis.com>
In-Reply-To: <b0131c98d689481f9e2e4c1f312ca806@XBOX03.axis.com>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Sun, 16 Feb 2020 13:41:50 +0100
Message-ID: <CA+chaQfFmAUvSX12og2f=9rJyO+rgAVG9=O3xLO1PYn9aaEdsw@mail.gmail.com>
Subject: Re: [yocto] does git SRC_URI really *require" a SRCREV setting?
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: Rudolf J Streif <rudolf.streif@ibeeto.com>, 
	"rpjday@crashcourse.ca" <rpjday@crashcourse.ca>, Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f82303059eb0c39b"

--000000000000f82303059eb0c39b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

FWIW: for webOS we're using "enhanced submissions" for components we own:
https://github.com/webosose/meta-webosose/blob/master/meta-webos/classes/we=
bos_enhanced_submissions.bbclass
https://github.com/webosose/meta-webosose/blob/master/meta-webos/classes/we=
bos_submissions.bbclass

which means that instead PV variables we define WEBOS_VERSION like:
WEBOS_VERSION =3D "3.0.0-3_1b978a6d3989a851561baec3ec60082052029f13"

Where "3.0.0-3" is set as always increasing PV (without having to deal with
AUTOINC/SRCPV).
"1b978a6d3989a851561baec3ec60082052029f13" is set to regular SRCREV
"3.0.0" is WEBOS_COMPONENT_VERSION which is in some cases (cmake builds
currently) checks that the value matches with the version in CMakeLists.txt
(we have
https://github.com/webosose/meta-webosose/blob/master/meta-webos/recipes-we=
bos/cmake-modules-webos/cmake-modules-webos-native.bb
with
common macros for this)
and the "3" is WEBOS_SUBMISSION.

The bbclass then validates (as do_unpack[postfuncs]) that there is
submissions/${WEBOS_SUBMISSION} tag which is annotated and that the SRCREV
points to it.

This works nicely, without having to deal with BB_SRCREV_POLICY.

On Sun, Feb 16, 2020 at 1:22 PM Peter Kjellerstedt <
peter.kjellerstedt@axis.com> wrote:

> We use tags in SRCREV for our own recipes since we have control over them
> and know that the tags won=E2=80=99t move. If one sets BB_SRCREV_POLICY =
=3D "cache",
> then bitbake will not do `git ls-remote` for the tags more than once. So =
as
> long as you have built once you can then build again without network.
> (Setting BB_SRCREV_POLICY =3D "cache" currently breaks ${AUTOREV}, but I =
sent
> patches for that the other day.)
>
>
>
> //Peter
>
>
>
> *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> *On
> Behalf Of *Martin Jansa
> *Sent:* den 15 februari 2020 18:39
> *To:* Rudolf J Streif <rudolf.streif@ibeeto.com>
> *Cc:* rpjday@crashcourse.ca; Yocto discussion list <yocto@yoctoproject.or=
g
> >
> *Subject:* Re: [yocto] does git SRC_URI really *require" a SRCREV setting=
?
>
>
>
> Both recipes should be updated to use SRCREV like any other recipe, I'll
> send patch for that.
>
>
>
> The documentation should also mention that using tag names in SRCREV (or
> tag parameter) is not recommended, because tags can be moved and bitbake
> will always use "git ls-remote" to map the tag name to actual git sha,
> which needs to upstream repo to be available (breaking the builds without
> access to the network).
>
>
>
> On Sat, Feb 15, 2020 at 6:33 PM Rudolf J Streif <rudolf.streif@ibeeto.com=
>
> wrote:
>
> The wording might need improvement but both of your examples actually do
> provide SRC_REV but in the inline form with SRC_URI (rev/tag).
>
> The documentation should probably say something like SRC_REV needs to be
> provided but it can either be done by setting the variable explicitly or =
by
> using the rev/tag option with SRC_URI.
>
> :rjs
>
> On 2/14/20 10:35 PM, rpjday@crashcourse.ca wrote:
>
>   yes, yes, more obsessive-compulsive nitpickery, but YP dev tasks
>
> manual, section 3.3.5, reads:
>
>
>
> "Another way of specifying source is from an SCM. For Git
>
> repositories, you must specify SRCREV and you should specify PV to
>
> include the revision with SRCPV."
>
>
>
>   you *must* specify SRCREV? i don't think that's true -- a couple
>
> examples from meta-oe ... here's hiredis_0.13.1.bb:
>
>
>
> SRC_URI =3D "git://github.com/redis/hiredis;protocol=3Dgit;rev=3Df58dd249=
d6ed47a7e835463c3b04722972281dbb \
>
>
>
>   and here's sshfs-fuse_2.8.bb:
>
>
>
> SRC_URI =3D "git://github.com/libfuse/sshfs;tag=3Db2fa7593586b141298e6159=
f40f521d2b0f4f894 \
>
>
>
>   neither of which specify SRCREV (clearly since they don't need to
>
> given the SRC_URI options in use).
>
>
>
> rday
>
>
>
> p.s. bitbake's git.py fetcher code makes no mention of the "rev"
>
> option in its opening docstring. just an observation if anyone wants
>
> to tweak that.
>
>
>
>
>
> --
>
> -----
>
> Rudolf J Streif
>
> CEO/CTO ibeeto
>
> +1.855.442.3386 x700
>
>
>
>

--000000000000f82303059eb0c39b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">FWIW: for webOS we&#39;re using &quot;enhanced submissions=
&quot; for components we own:<div><a href=3D"https://github.com/webosose/me=
ta-webosose/blob/master/meta-webos/classes/webos_enhanced_submissions.bbcla=
ss">https://github.com/webosose/meta-webosose/blob/master/meta-webos/classe=
s/webos_enhanced_submissions.bbclass</a><br></div><div><a href=3D"https://g=
ithub.com/webosose/meta-webosose/blob/master/meta-webos/classes/webos_submi=
ssions.bbclass">https://github.com/webosose/meta-webosose/blob/master/meta-=
webos/classes/webos_submissions.bbclass</a><br></div><div><br></div><div>wh=
ich means that instead PV variables we define WEBOS_VERSION like:</div><div=
>WEBOS_VERSION =3D &quot;3.0.0-3_1b978a6d3989a851561baec3ec60082052029f13&q=
uot;<br></div><div><br></div><div>Where &quot;3.0.0-3&quot; is set as alway=
s increasing PV (without having to deal with AUTOINC/SRCPV).</div><div>&quo=
t;1b978a6d3989a851561baec3ec60082052029f13&quot; is set to regular SRCREV</=
div><div>&quot;3.0.0&quot; is=C2=A0WEBOS_COMPONENT_VERSION which is in some=
 cases (cmake builds currently) checks that the value matches with the vers=
ion in CMakeLists.txt (we have=C2=A0<a href=3D"https://github.com/webosose/=
meta-webosose/blob/master/meta-webos/recipes-webos/cmake-modules-webos/cmak=
e-modules-webos-native.bb">https://github.com/webosose/meta-webosose/blob/m=
aster/meta-webos/recipes-webos/cmake-modules-webos/cmake-modules-webos-nati=
ve.bb</a>=C2=A0with common macros for this)</div><div>and the &quot;3&quot;=
 is=C2=A0WEBOS_SUBMISSION.</div><div><br></div><div>The bbclass then valida=
tes (as do_unpack[postfuncs]) that there is submissions/${WEBOS_SUBMISSION}=
 tag which is annotated and that the SRCREV points to it.</div><div><br></d=
iv><div>This works nicely, without having to deal with BB_SRCREV_POLICY.</d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Sun, Feb 16, 2020 at 1:22 PM Peter Kjellerstedt &lt;<a href=3D"mailto=
:peter.kjellerstedt@axis.com">peter.kjellerstedt@axis.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"SV">
<div class=3D"gmail-m_-3198336320533547692WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(148,54,52)">=
We use tags in SRCREV for our own recipes since we have control over them a=
nd know that the tags won=E2=80=99t move. If one sets BB_SRCREV_POLICY =3D =
&quot;cache&quot;, then bitbake will not
 do `git ls-remote` for the tags more than once. So as long as you have bui=
lt once you can then build again without network. (Setting BB_SRCREV_POLICY=
 =3D &quot;cache&quot; currently breaks ${AUTOREV}, but I sent patches for =
that the other day.)<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(148,54,52)">=
<u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(148,54,52)">=
//Peter<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(148,54,52)">=
<u></u>=C2=A0<u></u></span></p>
<div style=3D"border-top:none;border-right:none;border-bottom:none;border-l=
eft:1.5pt solid blue;padding:0cm 0cm 0cm 4pt">
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blan=
k">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yocto=
project.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;
<b>On Behalf Of </b>Martin Jansa<br>
<b>Sent:</b> den 15 februari 2020 18:39<br>
<b>To:</b> Rudolf J Streif &lt;<a href=3D"mailto:rudolf.streif@ibeeto.com" =
target=3D"_blank">rudolf.streif@ibeeto.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjda=
y@crashcourse.ca</a>; Yocto discussion list &lt;<a href=3D"mailto:yocto@yoc=
toproject.org" target=3D"_blank">yocto@yoctoproject.org</a>&gt;<br>
<b>Subject:</b> Re: [yocto] does git SRC_URI really *require&quot; a SRCREV=
 setting?<u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">Both recipes should be updated to use SRCREV like an=
y other recipe, I&#39;ll send patch for that.<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The documentation should also m=
ention that using tag names in SRCREV (or tag parameter) is not recommended=
, because tags can be moved and bitbake will always use &quot;git ls-remote=
&quot; to map the tag name to actual git sha,
 which needs to upstream repo to be available (breaking the builds without =
access to the network).<u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<div>
<div>
<p class=3D"MsoNormal">On Sat, Feb 15, 2020 at 6:33 PM Rudolf J Streif &lt;=
<a href=3D"mailto:rudolf.streif@ibeeto.com" target=3D"_blank">rudolf.streif=
@ibeeto.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0cm 0cm 0cm 6pt;margin-left:4=
.8pt;margin-right:0cm">
<div>
<p>The wording might need improvement but both of your examples actually do=
 provide SRC_REV but in the inline form with SRC_URI (rev/tag).<u></u><u></=
u></p>
<p>The documentation should probably say something like SRC_REV needs to be=
 provided but it can either be done by setting the variable explicitly or b=
y using the rev/tag option with SRC_URI.<u></u><u></u></p>
<p>:rjs<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">On 2/14/20 10:35 PM, <a href=3D"mailto:rpjday@crashc=
ourse.ca" target=3D"_blank">
rpjday@crashcourse.ca</a> wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"margin-top:5pt;margin-bottom:5pt">
<pre>=C2=A0 yes, yes, more obsessive-compulsive nitpickery, but YP dev task=
s<u></u><u></u></pre>
<pre>manual, section 3.3.5, reads:<u></u><u></u></pre>
<pre><u></u>=C2=A0<u></u></pre>
<pre>&quot;Another way of specifying source is from an SCM. For Git<u></u><=
u></u></pre>
<pre>repositories, you must specify SRCREV and you should specify PV to<u><=
/u><u></u></pre>
<pre>include the revision with SRCPV.&quot;<u></u><u></u></pre>
<pre><u></u>=C2=A0<u></u></pre>
<pre>=C2=A0 you *must* specify SRCREV? i don&#39;t think that&#39;s true --=
 a couple<u></u><u></u></pre>
<pre>examples from meta-oe ... here&#39;s <a href=3D"http://hiredis_0.13.1.=
bb" target=3D"_blank">hiredis_0.13.1.bb</a>:<u></u><u></u></pre>
<pre><u></u>=C2=A0<u></u></pre>
<pre>SRC_URI =3D &quot;git://<a href=3D"http://github.com/redis/hiredis;pro=
tocol=3Dgit;rev=3Df58dd249d6ed47a7e835463c3b04722972281dbb" target=3D"_blan=
k">github.com/redis/hiredis;protocol=3Dgit;rev=3Df58dd249d6ed47a7e835463c3b=
04722972281dbb</a> \<u></u><u></u></pre>
<pre><u></u>=C2=A0<u></u></pre>
<pre>=C2=A0 and here&#39;s <a href=3D"http://sshfs-fuse_2.8.bb" target=3D"_=
blank">sshfs-fuse_2.8.bb</a>:<u></u><u></u></pre>
<pre><u></u>=C2=A0<u></u></pre>
<pre>SRC_URI =3D &quot;git://<a href=3D"http://github.com/libfuse/sshfs;tag=
=3Db2fa7593586b141298e6159f40f521d2b0f4f894" target=3D"_blank">github.com/l=
ibfuse/sshfs;tag=3Db2fa7593586b141298e6159f40f521d2b0f4f894</a> \<u></u><u>=
</u></pre>
<pre><u></u>=C2=A0<u></u></pre>
<pre>=C2=A0 neither of which specify SRCREV (clearly since they don&#39;t n=
eed to<u></u><u></u></pre>
<pre>given the SRC_URI options in use).<u></u><u></u></pre>
<pre><u></u>=C2=A0<u></u></pre>
<pre>rday<u></u><u></u></pre>
<pre><u></u>=C2=A0<u></u></pre>
<pre>p.s. bitbake&#39;s git.py fetcher code makes no mention of the &quot;r=
ev&quot;<u></u><u></u></pre>
<pre>option in its opening docstring. just an observation if anyone wants<u=
></u><u></u></pre>
<pre>to tweak that.<u></u><u></u></pre>
<pre><u></u>=C2=A0<u></u></pre>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</blockquote>
<pre>-- <u></u><u></u></pre>
<pre>-----<u></u><u></u></pre>
<pre>Rudolf J Streif<u></u><u></u></pre>
<pre>CEO/CTO ibeeto<u></u><u></u></pre>
<pre>+1.855.442.3386 x700<u></u><u></u></pre>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</blockquote>
</div>
</div>
</div>
</div>

</blockquote></div>

--000000000000f82303059eb0c39b--
