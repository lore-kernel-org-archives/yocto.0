Return-Path: <rafaelrodrigues.machado@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C95EE00C31; Mon, 10 Jul 2017 06:37:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.179 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rafaelrodrigues.machado[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f179.google.com (mail-ua0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA067E00C2B
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 06:37:17 -0700 (PDT)
Received: by mail-ua0-f179.google.com with SMTP id j53so54118573uaa.2
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 06:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=LpzvGQyeqOlVwcJc4jrIL6JfAToTd+qsWBfPraU4ixI=;
	b=RWmsjXK3v9ZSQ+itxMUh+L5UAOzSsbJiVx0uPH+bsFenorYhekE/Oa7NeakoywkfU5
	NcuOu+hXR/BvpoomkdQTMF8ZR0bLMv2UlavXihbd3FST7VFE5oEiAe7krckpBqZQEZGr
	wVluKImjMLEFhV6cX9QTqC9bJ0CWwCYRnxo4o73QotGR6nmdEISAroVCWyhv1LB7Wv/v
	CmejCVwlEs/8lvbSBRtihZLvDVZDG8TFsiBAEQkFmZbDZOn2TSn39SIMkKbKjG8LOfD5
	sLkWqm5Rv9QT2VLiDSvhRfYdp6TPsoAn2W7fdokE+VuPDiqyyr/06fSdUknl/6khBPY9
	/DlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=LpzvGQyeqOlVwcJc4jrIL6JfAToTd+qsWBfPraU4ixI=;
	b=TCLJ9ck1fQPyaheIKA2U6l1ChnMe6WiREPhd0WgcOEyryk0yUrfRwuUUnUCVpTFj6V
	BkYEw0Wj6ZSzwcgVO8Y4EGUoBPOKD4QXLmPWgTF3yfFhSeYUtCUP7Ffr/78K+t8TnmXA
	WOiTFRCWcLlcniTMErOuYZvUt6/S0Dww87dlEyQ63qqhldZ0mqzfIJDVPzHd4SP8DThe
	WOSYN7OgYYqBIn9ZLOLaPH+0csYgJEVGVFgJnSy/P31A6pu84eSNEouvZ83bhZ4qs3RV
	MhhATGhrdCLDF1T4R5pRg9+3ySBuRlrq4H7qrUxVQKfBTzMuhx8tweSFg7s5F9FkaVCE
	akgA==
X-Gm-Message-State: AIVw111hE8gCK8oEotzs4ISyxw0VaWPnScFGHIyXNX/ol5jeq9Tk0DGN
	tzWVGLWOe7n24npXz9qC4Ag9eGFqFw==
X-Received: by 10.176.86.86 with SMTP id z22mr9030250uaa.6.1499693837342; Mon,
	10 Jul 2017 06:37:17 -0700 (PDT)
MIME-Version: 1.0
References: <CACgnt7-ZUQ4FKiU4iBG9Lxym8SjWRR5GSPtmu4pULozHo_45-w@mail.gmail.com>
	<CAJTo0LZTW=+yzdSebDbKKd2QuSS91HXAPHRPcg6Z5e=WMMKOEg@mail.gmail.com>
	<CACgnt7-BsX1EkCnMj8T=tFqguhCNRWrrTgsG4ai3nR213SiFqA@mail.gmail.com>
	<CAHiDW_EW+t+HekGYVx69Cq=1fVzxoL=wvcAriiHpwmy8OOez8g@mail.gmail.com>
In-Reply-To: <CAHiDW_EW+t+HekGYVx69Cq=1fVzxoL=wvcAriiHpwmy8OOez8g@mail.gmail.com>
From: Rafael Machado <rafaelrodrigues.machado@gmail.com>
Date: Mon, 10 Jul 2017 13:37:06 +0000
Message-ID: <CACgnt7_GE4OXE_mEv9pwSSMcZe5-aMeip5obYY0pgJL5ktckag@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
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
X-List-Received-Date: Mon, 10 Jul 2017 13:37:21 -0000
Content-Type: multipart/alternative; boundary="f403045df1d0725c750553f6ae11"

--f403045df1d0725c750553f6ae11
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks a lot Jussi.
I'm contacting seco so they can solve this to everyone instead of having
this fix just at my system.

Thanks a lot for the help.

Em seg, 10 de jul de 2017 =C3=A0s 10:23, Jussi Kukkonen <jussi.kukkonen@int=
el.com>
escreveu:

> On 10 July 2017 at 15:38, Rafael Machado <
> rafaelrodrigues.machado@gmail.com> wrote:
>
>> Thanks for the answer guys.
>> Yes Jussi. Seco website requires a registration. Sorry about that.
>>
>> Follows the complete output:
>>
>> Traceback (most recent call last):
>>   File "/home/rafael/Projetos/seco/poky/bitbake/bin/bitbake", line 31, i=
n
>> <module>
>>     import bb
>>   File "/home/rafael/Projetos/seco/poky/bitbake/lib/bb/__init__.py", lin=
e
>> 77, in <module>
>>     from bb import fetch2 as fetch
>>   File
>> "/home/rafael/Projetos/seco/poky/bitbake/lib/bb/fetch2/__init__.py", lin=
e
>> 1769, in <module>
>>     from . import wget
>>   File "/home/rafael/Projetos/seco/poky/bitbake/lib/bb/fetch2/wget.py",
>> line 40, in <module>
>>     from   bs4 import BeautifulSoup
>>   File "/home/rafael/Projetos/seco/poky/bitbake/lib/bs4/__init__.py",
>> line 30, in <module>
>>     from .builder import builder_registry, ParserRejectedMarkup
>>   File
>> "/home/rafael/Projetos/seco/poky/bitbake/lib/bs4/builder/__init__.py", l=
ine
>> 311, in <module>
>>     from . import _html5lib
>>   File
>> "/home/rafael/Projetos/seco/poky/bitbake/lib/bs4/builder/_html5lib.py",
>> line 57, in <module>
>>     class TreeBuilderForHtml5lib(html5lib.treebuilders._base.TreeBuilder=
):
>> AttributeError: 'module' object has no attribute '_base'
>>
>
> This is probably an incompatibility with newish html5lib fixed by
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D5c1ad6852e124=
6fda717582d7fb4959200bf71a6.
> This fix is in the last two Yocto releases (pyro and morty).
>
> You could try patching that yourself and/or reporting this issue to the
> BSP maker.
>
> HTH,
>   Jussi
>

--f403045df1d0725c750553f6ae11
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks a lot Jussi.=C2=A0<div>I&#39;m contacting seco so t=
hey can solve this to everyone instead of having this fix just at my system=
.<div><br></div><div>Thanks a lot for the help.=C2=A0</div></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr">Em seg, 10 de jul de 2017 =C3=
=A0s 10:23, Jussi Kukkonen &lt;<a href=3D"mailto:jussi.kukkonen@intel.com">=
jussi.kukkonen@intel.com</a>&gt; escreveu:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quo=
te">On 10 July 2017 at 15:38, Rafael Machado <span dir=3D"ltr">&lt;<a href=
=3D"mailto:rafaelrodrigues.machado@gmail.com" target=3D"_blank">rafaelrodri=
gues.machado@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr">Thanks for the answer guys.<div>Yes=
 Jussi. Seco website requires a registration. Sorry about that.</div><div><=
br></div><div>Follows the complete output:<br></div><div><br></div><div><di=
v>Traceback (most recent call last):</div><div>=C2=A0 File &quot;/home/rafa=
el/Projetos/seco/poky/bitbake/bin/bitbake&quot;, line 31, in &lt;module&gt;=
</div><div>=C2=A0 =C2=A0 import bb</div><div>=C2=A0 File &quot;/home/rafael=
/Projetos/seco/poky/bitbake/lib/bb/__init__.py&quot;, line 77, in &lt;modul=
e&gt;</div><span class=3D"m_-6978195986615677187m_3369569762648647989gmail-=
"><div>=C2=A0 =C2=A0 from bb import fetch2 as fetch</div></span><div>=C2=A0=
 File &quot;/home/rafael/Projetos/seco/poky/bitbake/lib/bb/fetch2/__init__.=
py&quot;, line 1769, in &lt;module&gt;</div><div>=C2=A0 =C2=A0 from . impor=
t wget</div><div>=C2=A0 File &quot;/home/rafael/Projetos/seco/poky/bitbake/=
lib/bb/fetch2/wget.py&quot;, line 40, in &lt;module&gt;</div><div>=C2=A0 =
=C2=A0 from =C2=A0 bs4 import BeautifulSoup</div><div>=C2=A0 File &quot;/ho=
me/rafael/Projetos/seco/poky/bitbake/lib/bs4/__init__.py&quot;, line 30, in=
 &lt;module&gt;</div><div>=C2=A0 =C2=A0 from .builder import builder_regist=
ry, ParserRejectedMarkup</div><div>=C2=A0 File &quot;/home/rafael/Projetos/=
seco/poky/bitbake/lib/bs4/builder/__init__.py&quot;, line 311, in &lt;modul=
e&gt;</div><div>=C2=A0 =C2=A0 from . import _html5lib</div><div>=C2=A0 File=
 &quot;/home/rafael/Projetos/seco/poky/bitbake/lib/bs4/builder/_html5lib.py=
&quot;, line 57, in &lt;module&gt;</div><div>=C2=A0 =C2=A0 class TreeBuilde=
rForHtml5lib(html5lib.treebuilders._base.TreeBuilder):</div><div>AttributeE=
rror: &#39;module&#39; object has no attribute &#39;_base&#39;</div></div><=
/div></blockquote><div><br></div></div></div></div><div dir=3D"ltr"><div cl=
ass=3D"gmail_extra"><div class=3D"gmail_quote"><div>This is probably an inc=
ompatibility with newish html5lib fixed by <a href=3D"http://git.yoctoproje=
ct.org/cgit/cgit.cgi/poky/commit/?id=3D5c1ad6852e1246fda717582d7fb4959200bf=
71a6" target=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/poky/comm=
it/?id=3D5c1ad6852e1246fda717582d7fb4959200bf71a6</a>. This fix is in the l=
ast two Yocto releases (pyro and morty).</div><div><br></div><div>You could=
 try patching that yourself and/or reporting this issue to the BSP maker. =
=C2=A0</div><div><br></div><div>HTH,</div><div>=C2=A0 Jussi</div></div></di=
v></div>
</blockquote></div>

--f403045df1d0725c750553f6ae11--
