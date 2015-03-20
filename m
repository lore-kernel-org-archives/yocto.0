Return-Path: <priyaiitmandi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C0CDBE00858; Thu, 19 Mar 2015 20:37:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f179.google.com (mail-ie0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCFEAE00777;
	Thu, 19 Mar 2015 20:37:10 -0700 (PDT)
Received: by iecvj10 with SMTP id vj10so83645792iec.0;
	Thu, 19 Mar 2015 20:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=LtsPkTUH6vKp4esZIEPHLct+rnsWYNcCVuwSLbZn7VQ=;
	b=Vl6OZYXoysHxdmlHEQ6dxriZGQF8QyuaiFZ/OztGy7xpI0ATwPZ9G+G5yvXDR/sFOW
	xLOnyYydsseKldtiI67PFLVnp4RMkMXDEcBjF7abZ7faDdJvtHzhJ27L7+PwfwKYJt3S
	rdm+0w6xR/kc2q3TOrE0bxN+4YXup6c563RZQ4auyZKdT3nbDewkhYBEVYLhLpo/PPPf
	ZMEH7ya3rmp57yXhV9m746V+L/mUwP6WI3XkHHiFpk+nQnzdqmUQjwGpk/WXl79ZzIu8
	rQChgoQQm2EWJBpjx165DoWw8rIFfrunY5Imr+OR/DwUVu1fIOa3cTF9fdUR1EyichKF
	gPpQ==
MIME-Version: 1.0
X-Received: by 10.43.69.68 with SMTP id yb4mr1417840icb.96.1426822629849; Thu,
	19 Mar 2015 20:37:09 -0700 (PDT)
Sender: priyaiitmandi@gmail.com
Received: by 10.107.16.139 with HTTP; Thu, 19 Mar 2015 20:37:09 -0700 (PDT)
In-Reply-To: <4A18F97D-CBE3-4D8E-9242-7A0774D2DD4B@gmail.com>
References: <CALTPfpGcuSDbWjqqmmAn8mG0nwRg=gGJePiWLs7U9A8FSn_5DQ@mail.gmail.com>
	<CALTPfpEioQubDTeBdE6yoVff1_hVu4G7LDqx3On1uGraQTHi1g@mail.gmail.com>
	<4A18F97D-CBE3-4D8E-9242-7A0774D2DD4B@gmail.com>
Date: Fri, 20 Mar 2015 09:07:09 +0530
X-Google-Sender-Auth: LeXRr4Q78tYT-iI0lQoRfcM7kPA
Message-ID: <CALTPfpFd+jVRtCEnkf0HK9LfjXwu3wYxtpStXWGwtE_8chbZFg@mail.gmail.com>
From: Priya Agarwal <priya_agarwal@students.iitmandi.ac.in>
To: Khem Raj <raj.khem@gmail.com>
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto-builds@yoctoproject.org" <yocto-builds@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-freescale] Including Static Libraries from sysroot in an autotools based package
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
X-List-Received-Date: Fri, 20 Mar 2015 03:37:15 -0000
Content-Type: multipart/alternative; boundary=bcaec51b1be902822a0511b0084a

--bcaec51b1be902822a0511b0084a
Content-Type: text/plain; charset=UTF-8

I have edited the Makefile.am as well in this way:

squid_LDADD += -lusdpaa_of

Then I just retarred squid code and build it again.

And The libraries are shown in the compile command as well, when I see the
log.do_compile generated during the build.
Check Line number 403 in this pastebin link. (ctrl+F 'usdpaa_of' could show
where all it occurs). http://pastebin.com/LpaymTQa
So how is it possible they are not actually linked.
I even checked the OVERRIDE variable in bitbake.conf which is set
correctly.
I really need to link this library. :/

On Fri, Mar 20, 2015 at 8:43 AM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Mar 19, 2015, at 2:07 AM, Priya Agarwal <
> priya_agarwal@students.iitmandi.ac.in> wrote:
>
> Hi,
>
> I need to link some libraries which are in sysroot into my source code.
> These are usdpaa libraries.
>
> I added DEPENDS += "usdpaa" in .bb file.
> Apart from that also changed the Makefile.am of my source to include the
> following:
> area_LDADD = -lusdpaa_of
> Then I ran aclocal, autoconf, automake --add-missing and retarred my
> package.
>
> When the package is being built from recipe, do_compile fails. It shows
> "undefined reference to" error.
> So this means that libraries are not getting linked by just doing the
> above changes. What else I need to change?
>
>
> I think you need to specify them in Makefile.am using LDADD since it is
> using auto tools. Please take a look at Automake documentation
> http://www.gnu.org/software/automake/manual/html_node/Linking.html
> might be helpful.
>
>
> I think this problem is specific to autotools based projects as when I
> include the libraries during the gcc command they are easily included.
>
> do_compile() {
>     ${CC} check.c -o check -lusdpaa_of
> }
> link to area.bb
> http://pastebin.com/Bef2C7nX
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> --
> _______________________________________________
> meta-freescale mailing list
> meta-freescale@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/meta-freescale
>
>

--bcaec51b1be902822a0511b0084a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div>I have edited the Makef=
ile.am as well in this way:<br><br></div>squid_LDADD +=3D -lusdpaa_of<br><b=
r></div>Then I just retarred squid code and build it again.<br><br>And The =
libraries are shown in the compile command as well, when I see the log.do_c=
ompile generated during the build.<br></div>Check Line number 403 in this p=
astebin link. (ctrl+F &#39;usdpaa_of&#39; could show where all it occurs). =
<a href=3D"http://pastebin.com/LpaymTQa">http://pastebin.com/LpaymTQa</a><b=
r></div>So how is it possible they are not actually linked.<br></div>I even=
 checked the OVERRIDE variable in bitbake.conf which is set correctly. <br>=
</div>I really need to link this library. :/<br></div></div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">On Fri, Mar 20, 2015 at 8:43 AM,=
 Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" targe=
t=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div style=3D"word-wrap:break-word"><br><div><span class=3D""=
><blockquote type=3D"cite"><div>On Mar 19, 2015, at 2:07 AM, Priya Agarwal =
&lt;<a href=3D"mailto:priya_agarwal@students.iitmandi.ac.in" target=3D"_bla=
nk">priya_agarwal@students.iitmandi.ac.in</a>&gt; wrote:</div><br><div><div=
 dir=3D"ltr"><div><div>Hi,<br><br></div>I need to link some libraries which=
 are in sysroot into my source code. These are usdpaa libraries.<br><br></d=
iv><div>I added DEPENDS +=3D &quot;usdpaa&quot; in .bb file.<br>Apart from =
that also changed the Makefile.am of my source to include the following:<br=
></div><div style=3D"margin-left:40px">area_LDADD =3D -lusdpaa_of<br></div>=
<div>Then I ran aclocal, autoconf, automake --add-missing and retarred my p=
ackage.<br><br></div><div>When the package is being built from recipe, do_c=
ompile fails. It shows &quot;undefined reference to&quot; error.<br></div>S=
o this means that libraries are not getting linked by just doing the above =
changes. What else I need to change?<br></div></div></blockquote><div><br><=
/div></span><div>I think you need to specify them in Makefile.am using LDAD=
D since it is using auto tools. Please take a look at Automake documentatio=
n</div><div><a href=3D"http://www.gnu.org/software/automake/manual/html_nod=
e/Linking.html" target=3D"_blank">http://www.gnu.org/software/automake/manu=
al/html_node/Linking.html</a></div><div>might be helpful.</div><br><blockqu=
ote type=3D"cite"><div><span class=3D""><div dir=3D"ltr"><br>I
 think this problem is specific to autotools based projects as when I=20
include the libraries during the gcc command they are easily included.<br><=
div style=3D"margin-left:40px"><br>do_compile() {<br>=C2=A0=C2=A0=C2=A0 ${C=
C} check.c -o check -lusdpaa_of<br>}<br></div>link to <a href=3D"http://are=
a.bb/" target=3D"_blank">area.bb</a><br><a href=3D"http://pastebin.com/Bef2=
C7nX" target=3D"_blank">http://pastebin.com/Bef2C7nX</a></div></span><span =
class=3D"HOEnZb"><font color=3D"#888888">
-- <br>_______________________________________________<br>yocto mailing lis=
t<br><a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo/yoct=
o" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br><=
/font></span></div></blockquote></div><br></div><br>--<br>
_______________________________________________<br>
meta-freescale mailing list<br>
<a href=3D"mailto:meta-freescale@yoctoproject.org">meta-freescale@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/meta-freescale" target=
=3D"_blank">https://lists.yoctoproject.org/listinfo/meta-freescale</a><br>
<br></blockquote></div><br></div>

--bcaec51b1be902822a0511b0084a--
