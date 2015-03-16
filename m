Return-Path: <errordeveloper@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F3C1E008EC; Mon, 16 Mar 2015 14:19:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (errordeveloper[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f44.google.com (mail-la0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF9F5E008DC
	for <yocto@yoctoproject.org>; Mon, 16 Mar 2015 14:18:56 -0700 (PDT)
Received: by lagg8 with SMTP id g8so51366010lag.1
	for <yocto@yoctoproject.org>; Mon, 16 Mar 2015 14:18:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=sq2sorMNHhyAZA1K4d4SRCA0LgqLnXSmf2jAw/4jAZY=;
	b=TClfVo0/GKLNycoIW5/v4841PZjAyQokXVukZFndx4c6bB5rqVFo5G4HvWE2wWq8pT
	KOQLp3mkBEcRTYWixXqedMOG4sYab8LL5zwpQMmXhUGEZy4UGL/F8eb9nDSGu3k7+gFd
	3srdnE5v5wYfZv6w5vYXqI8e7nA0gecAE2dUYeGO9UC9bsTUJojiOaRJ4vCtoXgkSy0q
	qcNnavKu0G1t14CeNP1diJqPXnJWa9Q7QQK7Py7bDmhjNFVOr9/JwfPAXFqvQE2++qR2
	8xk2Pjmc5M2nIly1x7skra3RLSK+aWpgr4VJE/GJQNL7GgqBxDRWNLIXejxtN6WP0Bhv
	SYTw==
MIME-Version: 1.0
X-Received: by 10.152.179.172 with SMTP id dh12mr30423591lac.23.1426540734302; 
	Mon, 16 Mar 2015 14:18:54 -0700 (PDT)
Received: by 10.114.69.100 with HTTP; Mon, 16 Mar 2015 14:18:54 -0700 (PDT)
In-Reply-To: <1394149336.17904.28.camel@kihei.inmotion.gotdns.com>
References: <1394149336.17904.28.camel@kihei.inmotion.gotdns.com>
Date: Mon, 16 Mar 2015 21:18:54 +0000
Message-ID: <CAPhDKbG8LNO9uU=ZNZwyoSUF6zHVhGAw1pRAPipWueNGgTPKTg@mail.gmail.com>
From: Ilya Dmitrichenko <errordeveloper@gmail.com>
To: Darcy Watkins <darcy.watkins@inmotiontechnology.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Yocto Python Issue
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
X-List-Received-Date: Mon, 16 Mar 2015 21:19:01 -0000
Content-Type: multipart/alternative; boundary=001a11349770b9d48e05116e65c2

--001a11349770b9d48e05116e65c2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Darcy,

Thank you for this post, it just saved me more hours of headache. I was
struggling to understand the purpose of `EXTRANATIVEPATH`, and
`pythonnative.bbclass` with `perlnative.bbclass`. Well, there are a few
other things when grep `EXTRANATIVEPATH` for, but I think I am happy to
hear the reason for this to exist, which your post and Richard Purdie's
commit message [1] are starting to explain.

[1]:
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=3D5157c85776bb8bd7=
315ef42e6e622aae27ebc79e

If anyone has more to say on the motivation for these things to exist,
please do let us know. To me this seemed like a terrible hack of sorts at
first, now I can (sort of) see the some reason for it.

Cheers,
=E2=80=94
Ilya Dmitrichenko

On 6 March 2014 at 23:42, Darcy Watkins <
darcy.watkins@inmotiontechnology.com> wrote:

> Hi,
>
> This is followup to...
>
> https://lists.yoctoproject.org/pipermail/yocto/2014-February/018209.html
>
> ...for others dealing with 'cross-python' like issues.
>
> This is the python equivalent to cross compiling.  I found a number of
> resources related to python cross-compiling and even a pycon talk where
> the presenter covers the hurdles involved to get distutil to =E2=80=9Ccro=
ss=E2=80=9D
> build as well.
>
> http://stackoverflow.com/questions/19120938/cross-compiling-python-2-7-4
> http://www.droboports.com/app-repository/python-2-7-5
> http://www.youtube.com/watch?v=3Dnhr-YErfW8k
> http://randomsplat.com/id5-cross-compiling-python-for-embedded-linux.html
>
> Fortunately the Yocto/OpenEmbedded folk have these sorted out - you just
> have to look in the right place.
>
> My resolution was to ensure that the correct native python is used.
> There is the host's native python that is used to run the tools of the
> build system (including 'bitbake' itself).
>
> Then there is a python-native that gets symlinked as 'nativepython' into
> the native sysroot.  This 'nativepython' is setup sort of as a
> crosscompiler python if you want to compile .py to .pyo/.pyc and put the
> compiled files on your target.
>
> Finally, there is the python that runs on the target system.
>
> ---
>
> My headache was due to using the host's native python (actually ADT
> bundled python on CentOS) when I needed to use 'nativepython'.  With a
> small amount of shoehorn work, I was readily able to get make rules and
> recipes to swig wrap some libraries as python extensions and to build
> using nativepython.
>
> There are a couple of variables you have to ensure get passed/exported
> through your make to be available to 'nativepython' to point it to the
> right sysroot locations of your target.
>
> BUILD_SYS=3D${BUILD_SYS}
> HOST_SYS=3D${HOST_SYS}
> STAGING_LIBDIR=3D${STAGING_LIBDIR}
> STAGING_INCDIR=3D${STAGING_INCDIR}
>
> If you are using swig-native, you also need to use "-I" to get your
> target sysroot include directories to it as well.
>
>
> --
>
> Regards,
>
> Darcy
>
> ---
>
> Darcy Watkins
> Senior Software Developer
> In Motion Technology, Inc.
> 350-625 Agnes St. New Westminster, BC
> Canada, V3M 5Y4
> [P1]
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11349770b9d48e05116e65c2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Darcy,<br><br><div class=3D"gmail_extra">Thank you for thi=
s post, it just saved me more hours of headache. I was struggling to unders=
tand the purpose of `EXTRANATIVEPATH`, and `pythonnative.bbclass` with `per=
lnative.bbclass`. Well, there are a few other things when grep `EXTRANATIVE=
PATH` for, but I think I am happy to hear the reason for this to exist, whi=
ch your post and Richard Purdie&#39;s commit message [1] are starting to ex=
plain.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"=
>[1]:=C2=A0<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit=
/?h=3D5157c85776bb8bd7315ef42e6e622aae27ebc79e">http://git.yoctoproject.org=
/cgit/cgit.cgi/poky/commit/?h=3D5157c85776bb8bd7315ef42e6e622aae27ebc79e</a=
></div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">If a=
nyone has more to say on the motivation for these things to exist, please d=
o let us know. To me this seemed like a terrible hack of sorts at first, no=
w I can (sort of) see the some reason for it.</div><div class=3D"gmail_extr=
a"><br></div><div class=3D"gmail_extra">Cheers,<br clear=3D"all"><div><div =
class=3D"gmail_signature">=E2=80=94 <br>Ilya Dmitrichenko </div></div>
<br><div class=3D"gmail_quote">On 6 March 2014 at 23:42, Darcy Watkins <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:darcy.watkins@inmotiontechnology.com" t=
arget=3D"_blank">darcy.watkins@inmotiontechnology.com</a>&gt;</span> wrote:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left-width:1px;border-left-color:rgb(204,204,204);border-left-style:sol=
id;padding-left:1ex">Hi,<br>
<br>
This is followup to...<br>
<br>
<a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2014-February/018=
209.html" target=3D"_blank">https://lists.yoctoproject.org/pipermail/yocto/=
2014-February/018209.html</a><br>
<br>
...for others dealing with &#39;cross-python&#39; like issues.<br>
<br>
This is the python equivalent to cross compiling.=C2=A0 I found a number of=
<br>
resources related to python cross-compiling and even a pycon talk where<br>
the presenter covers the hurdles involved to get distutil to =E2=80=9Ccross=
=E2=80=9D<br>
build as well.<br>
<br>
<a href=3D"http://stackoverflow.com/questions/19120938/cross-compiling-pyth=
on-2-7-4" target=3D"_blank">http://stackoverflow.com/questions/19120938/cro=
ss-compiling-python-2-7-4</a><br>
<a href=3D"http://www.droboports.com/app-repository/python-2-7-5" target=3D=
"_blank">http://www.droboports.com/app-repository/python-2-7-5</a><br>
<a href=3D"http://www.youtube.com/watch?v=3Dnhr-YErfW8k" target=3D"_blank">=
http://www.youtube.com/watch?v=3Dnhr-YErfW8k</a><br>
<a href=3D"http://randomsplat.com/id5-cross-compiling-python-for-embedded-l=
inux.html" target=3D"_blank">http://randomsplat.com/id5-cross-compiling-pyt=
hon-for-embedded-linux.html</a><br>
<br>
Fortunately the Yocto/OpenEmbedded folk have these sorted out - you just<br=
>
have to look in the right place.<br>
<br>
My resolution was to ensure that the correct native python is used.<br>
There is the host&#39;s native python that is used to run the tools of the<=
br>
build system (including &#39;bitbake&#39; itself).<br>
<br>
Then there is a python-native that gets symlinked as &#39;nativepython&#39;=
 into<br>
the native sysroot.=C2=A0 This &#39;nativepython&#39; is setup sort of as a=
<br>
crosscompiler python if you want to compile .py to .pyo/.pyc and put the<br=
>
compiled files on your target.<br>
<br>
Finally, there is the python that runs on the target system.<br>
<br>
---<br>
<br>
My headache was due to using the host&#39;s native python (actually ADT<br>
bundled python on CentOS) when I needed to use &#39;nativepython&#39;.=C2=
=A0 With a<br>
small amount of shoehorn work, I was readily able to get make rules and<br>
recipes to swig wrap some libraries as python extensions and to build<br>
using nativepython.<br>
<br>
There are a couple of variables you have to ensure get passed/exported<br>
through your make to be available to &#39;nativepython&#39; to point it to =
the<br>
right sysroot locations of your target.<br>
<br>
BUILD_SYS=3D${BUILD_SYS}<br>
HOST_SYS=3D${HOST_SYS}<br>
STAGING_LIBDIR=3D${STAGING_LIBDIR}<br>
STAGING_INCDIR=3D${STAGING_INCDIR}<br>
<br>
If you are using swig-native, you also need to use &quot;-I&quot; to get yo=
ur<br>
target sysroot include directories to it as well.<br>
<br>
<br>
--<br>
<br>
Regards,<br>
<br>
Darcy<br>
<br>
---<br>
<br>
Darcy Watkins<br>
Senior Software Developer<br>
In Motion Technology, Inc.<br>
350-625 Agnes St. New Westminster, BC<br>
Canada, V3M 5Y4<br>
[P1]<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div></div>

--001a11349770b9d48e05116e65c2--
