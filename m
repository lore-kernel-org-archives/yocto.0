Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81670E007C2; Fri, 14 Nov 2014 10:52:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edwingate8[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.174 listed in list.dnswl.org]
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 335C3E005B7
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 10:52:17 -0800 (PST)
Received: by mail-ig0-f174.google.com with SMTP id hn18so209016igb.7
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 10:52:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=lqSCX5oZtHqbbDvpVPb8AcsKW9o3o1bLswOQz7N0ugY=;
	b=vKU0/FsXl683muiXNUeQZEs1zmARF9B1lgZuNmW5nt8gkjiLkx714OdHtHRet5ca8j
	QDXeFN9R1FOuyBKZY15fwELT7TFtSQltPfmxQ3HIL4Hdk0DTtsfKtPBSJnmptBPQUjkN
	Ku3w/rsx1/ggARK/l40tCnhEhzlwI3hDsxnh1FL2HzO29Uuuvcqk6TvXe+3Xb2r+86Fp
	90bl09jw6p2V7ZjMM5D6AXDJuSNepsvFXb38ZKwDzlu2Z207EDKoSMyOKLejJt7qDUXZ
	M+hkeEZ4kyyuen6/X0KIyZrhTp5teHoivrmrNS0bFfUNB8ChbL/PL830Po0pi0tm0awP
	8fcA==
MIME-Version: 1.0
X-Received: by 10.107.7.91 with SMTP id 88mr4094449ioh.70.1415991137146; Fri,
	14 Nov 2014 10:52:17 -0800 (PST)
Received: by 10.50.155.170 with HTTP; Fri, 14 Nov 2014 10:52:17 -0800 (PST)
In-Reply-To: <mailman.24730.1415986771.26702.yocto@yoctoproject.org>
References: <mailman.24730.1415986771.26702.yocto@yoctoproject.org>
Date: Fri, 14 Nov 2014 10:52:17 -0800
Message-ID: <CAGMdoF=11b8CypTagV29DCo=4bvRBjp0=SifXAEwLbgUK9197Q@mail.gmail.com>
From: Edward Wingate <edwingate8@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: yocto Digest, Vol 50, Issue 54
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
X-List-Received-Date: Fri, 14 Nov 2014 18:52:28 -0000
Content-Type: multipart/alternative; boundary=001a113eba28bc1dc20507d62008

--001a113eba28bc1dc20507d62008
Content-Type: text/plain; charset=UTF-8

On Fri, Nov 14, 2014 at 9:39 AM, <yocto-request@yoctoproject.org> wrote:

> From: Gary Thomas <gary@mlbassoc.com>
>
> On 2014-11-14 10:10, Edward Wingate wrote:
> >
> > The ramdisk image ballooned to 22MB though.  It's expected, but due to

> flash size constraints, Python may not be an option in this case.
>
> You can always just bring in the packages you need (python-modules is a
> pretty heavy hammer!)  Python is split into ~90 separate packages, each
> with a [small] set of modules/functionality.
>
>
I would really like to try this. How do I find out what the various python
packages are and what's in each package?  I tried
http://layers.openembedded.org/layerindex/branch/master/recipes/, but don't
find what I'm looking for (right now, Python's built-in logging and codecs
modules).

I also can't find where the python-modules recipe is located.  I thought
that might give me a clue as to what all the modules are and where they
are.  I would think python-modules would be located in or
poky/meta/recipes-devtools/python or meta-openembedded/meta-python where it
seems all the other python stuff are, but it's not there that I can see.
Where is python-core defined, for that matter?  I can't find that anywhere
either.  All references to python-core and python-modules are in the
build/tmp directory, but I don't see the source definition.

--001a113eba28bc1dc20507d62008
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On F=
ri, Nov 14, 2014 at 9:39 AM,  <span dir=3D"ltr">&lt;<a href=3D"mailto:yocto=
-request@yoctoproject.org" target=3D"_blank">yocto-request@yoctoproject.org=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>From: Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.c=
om</a>&gt;<br>
<br>
On 2014-11-14 10:10, Edward Wingate wrote:<br>
&gt;<br>
&gt; The ramdisk image ballooned to 22MB though.=C2=A0 It&#39;s expected, b=
ut due to</blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"> &g=
t; flash size constraints, Python may not be an option in this case.<br>
<br>
You can always just bring in the packages you need (python-modules is a<br>
pretty heavy hammer!)=C2=A0 Python is split into ~90 separate packages, eac=
h<br>
with a [small] set of modules/functionality.<br>
<br></blockquote></div><br></div><div class=3D"gmail_extra">I would really =
like to try this. How do I find out what the various python packages are an=
d what&#39;s in each package?=C2=A0 I tried <a href=3D"http://layers.openem=
bedded.org/layerindex/branch/master/recipes/">http://layers.openembedded.or=
g/layerindex/branch/master/recipes/</a>, but don&#39;t find what I&#39;m lo=
oking for (right now, Python&#39;s built-in logging and codecs modules).=C2=
=A0 <br><br></div><div class=3D"gmail_extra">I also can&#39;t find where th=
e python-modules recipe is located.=C2=A0 I thought that might give me a cl=
ue as to what all the modules are and where they are.=C2=A0 I would think p=
ython-modules would be located in or poky/meta/recipes-devtools/python or m=
eta-openembedded/meta-python where it seems all the other python stuff are,=
 but it&#39;s not there that I can see.=C2=A0 Where is python-core defined,=
 for that matter?=C2=A0 I can&#39;t find that anywhere either.=C2=A0 All re=
ferences to python-core and python-modules are in the build/tmp directory, =
but I don&#39;t see the source definition.<br><br></div></div>

--001a113eba28bc1dc20507d62008--
