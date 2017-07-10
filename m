Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AF6EE00C31; Mon, 10 Jul 2017 06:23:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,HTML_OBFUSCATE_10_20,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.1 HTML_OBFUSCATE_10_20 BODY: Message is 10% to 20% HTML obfuscation
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.46 listed in dnsbl.sorbs.net]
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1C9AE00C2B
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 06:23:46 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id k192so38308498ith.1
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 06:23:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GrNGR4C2kyKpntfJfVt+Iu1MMzFPZJUSOPQhV480y0w=;
	b=dRCuuuQQBcU3IWGXT2/tG/h/3DRlQfk+KO1z3YBkHzaNdWzoUhffi0Ia1R7zNv+qky
	haKQqrKO0GJUXTD0fbAlz6Uq/getn0Jw+6z5QQ88uEqiUKCrYADcJcBBAq4QI4Wipx/H
	tu81pq2uuoHocjpnxtRb7Js8Ayey5GJvPDHyjp4DQgRswzDljdZ4YQHIH6CyXbktE1S+
	l65rvTERpU9TA8KfjRTFw/5I7wFYFeKdi5JdhlonJkV7T6RoNJJOmeVlUG0mdw0h0PbW
	xCYm2+kbtwur5Vf0S/qLSMDJVrYYM4jdP3Ra+DL7F9dXyMheuVdqDy5NNJB6RxKOiD6z
	jZ9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GrNGR4C2kyKpntfJfVt+Iu1MMzFPZJUSOPQhV480y0w=;
	b=P9I54Pb3V3GlapI0bC37SbRpDk8025vt0y9WAbUCjODL1BBOff0chH015+9/QnMS5m
	VnE+1C04rjKxlmM8LijjQVxLdR6uoigx9At2j50QUSgujLeq/Ys4CDsqcWMD5H/DTsEw
	7GMtMGaa6l9omnzpw7Z7F+745Pnci79JVFV8eJU2C7jsQO+BdPyXiZLgM4hU1G/NoGHP
	fHnG6HgzUAV/6otKrZV0PHL+rqyCPN36VqbKN12/Yl6mE2j1xuFiodTrictp6on7B5g6
	4R6YO6nhlg7OTN2ZwtruQvDiotdQEANsvBrwuP71TxKMYti3f11QCrxy7WPSdcyctfAt
	eaeQ==
X-Gm-Message-State: AIVw112oVTq50hadYqUOi2NAJicVEel4yW4N+ncByswGILCBAQHl3lTJ
	LgdIUZ2u6oToovoClXKhPHmj8+glcA2z
X-Received: by 10.107.37.141 with SMTP id l135mr3152053iol.146.1499693026011; 
	Mon, 10 Jul 2017 06:23:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.44.87 with HTTP; Mon, 10 Jul 2017 06:23:15 -0700 (PDT)
In-Reply-To: <CACgnt7-BsX1EkCnMj8T=tFqguhCNRWrrTgsG4ai3nR213SiFqA@mail.gmail.com>
References: <CACgnt7-ZUQ4FKiU4iBG9Lxym8SjWRR5GSPtmu4pULozHo_45-w@mail.gmail.com>
	<CAJTo0LZTW=+yzdSebDbKKd2QuSS91HXAPHRPcg6Z5e=WMMKOEg@mail.gmail.com>
	<CACgnt7-BsX1EkCnMj8T=tFqguhCNRWrrTgsG4ai3nR213SiFqA@mail.gmail.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Mon, 10 Jul 2017 16:23:15 +0300
Message-ID: <CAHiDW_EW+t+HekGYVx69Cq=1fVzxoL=wvcAriiHpwmy8OOez8g@mail.gmail.com>
To: Rafael Machado <rafaelrodrigues.machado@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto build at Kali
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
X-List-Received-Date: Mon, 10 Jul 2017 13:23:50 -0000
Content-Type: multipart/alternative; boundary="001a114031ea1688e60553f67e78"

--001a114031ea1688e60553f67e78
Content-Type: text/plain; charset="UTF-8"

On 10 July 2017 at 15:38, Rafael Machado <rafaelrodrigues.machado@gmail.com>
wrote:

> Thanks for the answer guys.
> Yes Jussi. Seco website requires a registration. Sorry about that.
>
> Follows the complete output:
>
> Traceback (most recent call last):
>   File "/home/rafael/Projetos/seco/poky/bitbake/bin/bitbake", line 31, in
> <module>
>     import bb
>   File "/home/rafael/Projetos/seco/poky/bitbake/lib/bb/__init__.py", line
> 77, in <module>
>     from bb import fetch2 as fetch
>   File "/home/rafael/Projetos/seco/poky/bitbake/lib/bb/fetch2/__init__.py",
> line 1769, in <module>
>     from . import wget
>   File "/home/rafael/Projetos/seco/poky/bitbake/lib/bb/fetch2/wget.py",
> line 40, in <module>
>     from   bs4 import BeautifulSoup
>   File "/home/rafael/Projetos/seco/poky/bitbake/lib/bs4/__init__.py",
> line 30, in <module>
>     from .builder import builder_registry, ParserRejectedMarkup
>   File "/home/rafael/Projetos/seco/poky/bitbake/lib/bs4/builder/__init__.py",
> line 311, in <module>
>     from . import _html5lib
>   File "/home/rafael/Projetos/seco/poky/bitbake/lib/bs4/builder/_html5lib.py",
> line 57, in <module>
>     class TreeBuilderForHtml5lib(html5lib.treebuilders._base.TreeBuilder):
> AttributeError: 'module' object has no attribute '_base'
>

This is probably an incompatibility with newish html5lib fixed by
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=
5c1ad6852e1246fda717582d7fb4959200bf71a6. This fix is in the last two Yocto
releases (pyro and morty).

You could try patching that yourself and/or reporting this issue to the BSP
maker.

HTH,
  Jussi

--001a114031ea1688e60553f67e78
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On 10 July 2017 at 15:38, Rafael Machado <span dir=3D"ltr">&lt;<a href=
=3D"mailto:rafaelrodrigues.machado@gmail.com" target=3D"_blank">rafaelrodri=
gues.machado@<wbr>gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr">Thanks for the answer guys.<di=
v>Yes Jussi. Seco website requires a registration. Sorry about that.</div><=
div><br></div><div>Follows the complete output:<br></div><div><br></div><di=
v><div>Traceback (most recent call last):</div><div>=C2=A0 File &quot;/home=
/rafael/Projetos/seco/po<wbr>ky/bitbake/bin/bitbake&quot;, line 31, in &lt;=
module&gt;</div><div>=C2=A0 =C2=A0 import bb</div><div>=C2=A0 File &quot;/h=
ome/rafael/Projetos/seco/po<wbr>ky/bitbake/lib/bb/__init__.py&quot;<wbr>, l=
ine 77, in &lt;module&gt;</div><span class=3D"m_3369569762648647989gmail-">=
<div>=C2=A0 =C2=A0 from bb import fetch2 as fetch</div></span><div>=C2=A0 F=
ile &quot;/home/rafael/Projetos/seco/po<wbr>ky/bitbake/lib/bb/fetch2/__ini<=
wbr>t__.py&quot;, line 1769, in &lt;module&gt;</div><div>=C2=A0 =C2=A0 from=
 . import wget</div><div>=C2=A0 File &quot;/home/rafael/Projetos/seco/po<wb=
r>ky/bitbake/lib/bb/fetch2/wget.<wbr>py&quot;, line 40, in &lt;module&gt;</=
div><div>=C2=A0 =C2=A0 from =C2=A0 bs4 import BeautifulSoup</div><div>=C2=
=A0 File &quot;/home/rafael/Projetos/seco/po<wbr>ky/bitbake/lib/bs4/__init_=
_.py<wbr>&quot;, line 30, in &lt;module&gt;</div><div>=C2=A0 =C2=A0 from .b=
uilder import builder_registry, ParserRejectedMarkup</div><div>=C2=A0 File =
&quot;/home/rafael/Projetos/seco/po<wbr>ky/bitbake/lib/bs4/builder/__<wbr>i=
nit__.py&quot;, line 311, in &lt;module&gt;</div><div>=C2=A0 =C2=A0 from . =
import _html5lib</div><div>=C2=A0 File &quot;/home/rafael/Projetos/seco/po<=
wbr>ky/bitbake/lib/bs4/builder/_ht<wbr>ml5lib.py&quot;, line 57, in &lt;mod=
ule&gt;</div><div>=C2=A0 =C2=A0 class TreeBuilderForHtml5lib(html5li<wbr>b.=
treebuilders._base.TreeBuild<wbr>er):</div><div>AttributeError: &#39;module=
&#39; object has no attribute &#39;_base&#39;</div></div></div></blockquote=
><div><br></div><div>This is probably an incompatibility with newish html5l=
ib fixed by <a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/commi=
t/?id=3D5c1ad6852e1246fda717582d7fb4959200bf71a6" target=3D"_blank">http://=
git.yoctoproject.org/<wbr>cgit/cgit.cgi/poky/commit/?id=3D<wbr>5c1ad6852e12=
46fda717582d7fb495<wbr>9200bf71a6</a>. This fix is in the last two Yocto re=
leases (pyro and morty).</div><div><br></div><div>You could try patching th=
at yourself and/or reporting this issue to the BSP maker. =C2=A0</div><div>=
<br></div><div>HTH,</div><div>=C2=A0 Jussi</div></div></div></div>

--001a114031ea1688e60553f67e78--
