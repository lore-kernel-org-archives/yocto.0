Return-Path: <ulfwin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EA20E00906; Fri, 12 Dec 2014 07:19:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ulfwin[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f42.google.com (mail-la0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 820B1E0084D
	for <yocto@yoctoproject.org>; Fri, 12 Dec 2014 07:19:41 -0800 (PST)
Received: by mail-la0-f42.google.com with SMTP id gd6so6356801lab.15
	for <yocto@yoctoproject.org>; Fri, 12 Dec 2014 07:19:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=0RTi+WxSp7VbFKZ0VzU2OtsHT3Y2emXReKgeTP0CiUQ=;
	b=H6v4YuH42ValD6zh93FIVOg65ya5X0uKvCcNBOQQndD2yo2Wfu7LMjg0Mjkv+pNqa7
	KQBjcaFz9nAqBKZV8kvAaYT/XoPKn8S+YBj0L+cL2nKzPSrdO31Lsnt9zfj1XZhK/5VE
	ZEJIUQb7lJSYEHHUVO46kFRkwxAQ9EWUilMghUIyHM/cAuXGGggzFVV5am/v7XMLX/rI
	rkt4bbtB7S+jHBAHB+6H09ML/RFTanNvO3iUVTrNzHf3Lr+beiFEq0DwV2z193p03/uL
	OSLyspMJtHKwBukZ6dWQfnI6ujzWYIQj4z/iv+siQHybCae/MqqnX7nQLJnyvk0EGJze
	PhYQ==
MIME-Version: 1.0
X-Received: by 10.152.45.41 with SMTP id j9mr16215073lam.59.1418397580028;
	Fri, 12 Dec 2014 07:19:40 -0800 (PST)
Received: by 10.25.42.131 with HTTP; Fri, 12 Dec 2014 07:19:39 -0800 (PST)
In-Reply-To: <1426837.Z6YLN2FboT@peggleto-mobl5.ger.corp.intel.com>
References: <CAP9QVgA8bD6oro2rxut4sceWr7qXjD4A5QGWz4BU6UXGCWZvEg@mail.gmail.com>
	<1426837.Z6YLN2FboT@peggleto-mobl5.ger.corp.intel.com>
Date: Fri, 12 Dec 2014 16:19:39 +0100
Message-ID: <CAP9QVgCfKRgn5O8=miJL1KzRkWh5xP1kEE9H8uLFgFVEB+uOaQ@mail.gmail.com>
From: Ulf Winberg <ulfwin@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Using anonymous python function to define variables
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
X-List-Received-Date: Fri, 12 Dec 2014 15:19:45 -0000
Content-Type: multipart/alternative; boundary=001a11c29bcae87329050a066bd7

--001a11c29bcae87329050a066bd7
Content-Type: text/plain; charset=UTF-8

Thanks! Using python as a function with return value solved it.

When bb.parse.SkipPackage is used, there seems to be no warning when
building. Does the text I wrote end up in a log somewhere?

I was testing the SOMEVAR example you give. Am I right to assume that the
overrides only works for gobal variables, already defined elsewhere? I was
not able to define one myself and use the overrides.

Cheers,
Ulf

On Mon, Dec 8, 2014 at 10:41 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:
>
> Hi Ulf,
>
> On Sunday 07 December 2014 12:22:06 Ulf Winberg wrote:
> > I'm struggling with trying to dynamically set a file name, to be used
> with
> > "require". See code below:
> >
> > python () {
> >        TA = d.getVar('TARGET_ARCH', True)
> >        if TA == "arm":
> >                javaPkg = "oracle-jse-ejre-arm-vfp-hflt-client-headless"
> >        elif TA == "i586":
> >                javaPkg = "oracle-jse-jre-i586"
> >        elif TA == "x86_64":
> >                javaPkg = "oracle-jse-jre-x86-64"
> >        else:
> >                raise Exception("Target architecture '%s' is not supported
> > by the meta-oracle-java layer" %TA)
> >        d.setVar('JAVA_PKG', javaPkg)
> > }
> >
> > require ${JAVA_PKG}.inc
> >
> > The python function executes properly (if I print javaPkg, it shows up
> > correctly) but the "JAVA_PKG" variable does not become available for
> > "require". From what I can read in section 3.4.4 in this link
> > <
> http://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manua
> > l.html>, it seems to me it should work. Could someone please explain to
> me
> > why it doesn't?
>
> I'm pretty sure this is because anonymous functions don't get executed
> until
> finalize() is called, which is towards the end of parsing; the "require"
> statement must be handled immediately. Try this instead:
>
> ---------------- snip ----------------
>
> def get_java_package(d):
>     TA = d.getVar('TARGET_ARCH', True)
>     if TA == "arm":
>         javaPkg = "oracle-jse-ejre-arm-vfp-hflt-client-headless"
>     elif TA == "i586":
>         javaPkg = "oracle-jse-jre-i586"
>     elif TA == "x86_64":
>         javaPkg = "oracle-jse-jre-x86-64"
>     else:
>         raise bb.parse.SkipPackage("Target architecture '%s' is not
> supported
> by the meta-oracle-java layer" % TA)
>     return javaPkg
>
> JAVA_PKG = "${@get_java_package(d)}"
>
> require ${JAVA_PKG}.inc
>
> ---------------- snip ----------------
>
> The question is though, do you really need a separate inc file for each
> architecture? You can use overrides for this sort of thing e.g.:
>
> ---------------- snip ----------------
>
> SOMEVAR = "default value"
> SOMEVAR_arm = "value if arm"
> SOMEVAR_x86-64 = "value if x86-64"
>
> ---------------- snip ----------------
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--001a11c29bcae87329050a066bd7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks! Using python as a function with return value =
solved it. <br><br></div>When bb.parse.SkipPackage is used, there seems to =
be no warning when building. Does the text I wrote end up in a log somewher=
e?<br><div><div><br>I was testing the SOMEVAR example you give. Am I right =
to assume that the overrides only works for gobal variables, already define=
d elsewhere? I was not able to define one myself and use the overrides.<br>=
<br>Cheers,<br>Ulf<br></div></div></div><div class=3D"gmail_extra"><br><div=
 class=3D"gmail_quote">On Mon, Dec 8, 2014 at 10:41 AM, Paul Eggleton <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D=
"_blank">paul.eggleton@linux.intel.com</a>&gt;</span> wrote:<blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">Hi Ulf,<br>
<span class=3D""><br>
On Sunday 07 December 2014 12:22:06 Ulf Winberg wrote:<br>
&gt; I&#39;m struggling with trying to dynamically set a file name, to be u=
sed with<br>
&gt; &quot;require&quot;. See code below:<br>
&gt;<br>
&gt; python () {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 TA =3D d.getVar(&#39;TARGET_ARCH&#39;, True=
)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 if TA =3D=3D &quot;arm&quot;:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 javaPkg =3D &qu=
ot;oracle-jse-ejre-arm-vfp-hflt-client-headless&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 elif TA =3D=3D &quot;i586&quot;:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 javaPkg =3D &qu=
ot;oracle-jse-jre-i586&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 elif TA =3D=3D &quot;x86_64&quot;:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 javaPkg =3D &qu=
ot;oracle-jse-jre-x86-64&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 raise Exception=
(&quot;Target architecture &#39;%s&#39; is not supported<br>
&gt; by the meta-oracle-java layer&quot; %TA)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 d.setVar(&#39;JAVA_PKG&#39;, javaPkg)<br>
&gt; }<br>
&gt;<br>
&gt; require ${JAVA_PKG}.inc<br>
&gt;<br>
&gt; The python function executes properly (if I print javaPkg, it shows up=
<br>
&gt; correctly) but the &quot;JAVA_PKG&quot; variable does not become avail=
able for<br>
&gt; &quot;require&quot;. From what I can read in section 3.4.4 in this lin=
k<br>
</span>&gt; &lt;<a href=3D"http://www.yoctoproject.org/docs/1.6/bitbake-use=
r-manual/bitbake-user-manua" target=3D"_blank">http://www.yoctoproject.org/=
docs/1.6/bitbake-user-manual/bitbake-user-manua</a><br>
&gt; l.html&gt;, it seems to me it should work. Could someone please explai=
n to me<br>
&gt; why it doesn&#39;t?<br>
<br>
I&#39;m pretty sure this is because anonymous functions don&#39;t get execu=
ted until<br>
finalize() is called, which is towards the end of parsing; the &quot;requir=
e&quot;<br>
statement must be handled immediately. Try this instead:<br>
<br>
---------------- snip ----------------<br>
<br>
def get_java_package(d):<br>
<span class=3D"">=C2=A0 =C2=A0 TA =3D d.getVar(&#39;TARGET_ARCH&#39;, True)=
<br>
=C2=A0 =C2=A0 if TA =3D=3D &quot;arm&quot;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 javaPkg =3D &quot;oracle-jse-ejre-arm-vfp-hflt-=
client-headless&quot;<br>
=C2=A0 =C2=A0 elif TA =3D=3D &quot;i586&quot;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 javaPkg =3D &quot;oracle-jse-jre-i586&quot;<br>
=C2=A0 =C2=A0 elif TA =3D=3D &quot;x86_64&quot;:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 javaPkg =3D &quot;oracle-jse-jre-x86-64&quot;<b=
r>
=C2=A0 =C2=A0 else:<br>
</span>=C2=A0 =C2=A0 =C2=A0 =C2=A0 raise bb.parse.SkipPackage(&quot;Target =
architecture &#39;%s&#39; is not supported<br>
<span class=3D"">by the meta-oracle-java layer&quot; % TA)<br>
</span>=C2=A0 =C2=A0 return javaPkg<br>
<br>
JAVA_PKG =3D &quot;${@get_java_package(d)}&quot;<br>
<br>
require ${JAVA_PKG}.inc<br>
<br>
---------------- snip ----------------<br>
<br>
The question is though, do you really need a separate inc file for each<br>
architecture? You can use overrides for this sort of thing e.g.:<br>
<br>
---------------- snip ----------------<br>
<br>
SOMEVAR =3D &quot;default value&quot;<br>
SOMEVAR_arm =3D &quot;value if arm&quot;<br>
SOMEVAR_x86-64 =3D &quot;value if x86-64&quot;<br>
<br>
---------------- snip ----------------<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div></div>

--001a11c29bcae87329050a066bd7--
