Return-Path: <rafaelrodrigues.machado@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E4F0E00C2C; Mon, 10 Jul 2017 05:38:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rafaelrodrigues.machado[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.47 listed in list.dnswl.org]
Received: from mail-vk0-f47.google.com (mail-vk0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71F1DE00C2A
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 05:38:31 -0700 (PDT)
Received: by mail-vk0-f47.google.com with SMTP id y70so45964839vky.3
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 05:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=2T6vZmrOVcwu5Ol0YuNWwSiFCxJN9IK6kathqSJe2X4=;
	b=YEgBDmNzLSQFSfqrg9QK/CHH5FgGbOdeG99IVQHR0f7GNI7ICaUdX8FoLusPgDv30F
	tJvzVtkvD3TQb2jPNHvHXJt+PP7U8MTQAtanTlvUtqKUBksiVetEUE7rtpTHr3h+O1i4
	Elr2FfEtfKf/ypB8rUmEwC6Bq3Db8tfSk7OLQIgB3QASv+8jnp8MNoDX1/oewlRJ4Niz
	B531bHJFOHdFsnDLMjqtLGAeuF0Egv+F26wnJ7CElW0ojEIGUi5M5bnN4QzGYrf4CsmT
	Edw5HtEhKiEfuFLeEuI2WMGKVz2OTNetrBN+KIFT8ENZg4g99DcQ38TgWkZwWqihxlaE
	5WBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=2T6vZmrOVcwu5Ol0YuNWwSiFCxJN9IK6kathqSJe2X4=;
	b=G5fENvIzoAtz/h0COUyuGqmtuzqp4FcWaVM8GVceobNDXeJHWq1QBjERb2LU5M0NzL
	7NZVAx4QKBH+Sy14DZ2ZJmF4DFQTGxWR1d7xNyXbcA+mEpCtwFxRuful1amIPuYt5yy/
	petjECGvCeU45DUDsqv3tdCc6eTNjLk/h5CsjL+UPNwo83uubP2uv/pxuB5teFggFc9E
	nlEegJNw6T7DjmIjdzxFBt3/8CF+hLHuoeTTGARpEfKaMGhUuQ3AvRQFR0iif65qNSxc
	huoUTJlOWh9zBC0AdeTymn31scFCYnKtbuEBJZKd0OM8+p/95pYeOHDf5R0UdGm679zH
	HVdg==
X-Gm-Message-State: AIVw111rHR66v0r9akhsMn/f3ALAdjyaQQQShghfZbY6DKqS6OL/aMoZ
	W6+jeTA/VPloHwy+cuZnTJv7lqWOMQ==
X-Received: by 10.31.109.130 with SMTP id i124mr7952263vkc.0.1499690310343;
	Mon, 10 Jul 2017 05:38:30 -0700 (PDT)
MIME-Version: 1.0
References: <CACgnt7-ZUQ4FKiU4iBG9Lxym8SjWRR5GSPtmu4pULozHo_45-w@mail.gmail.com>
	<CAJTo0LZTW=+yzdSebDbKKd2QuSS91HXAPHRPcg6Z5e=WMMKOEg@mail.gmail.com>
In-Reply-To: <CAJTo0LZTW=+yzdSebDbKKd2QuSS91HXAPHRPcg6Z5e=WMMKOEg@mail.gmail.com>
From: Rafael Machado <rafaelrodrigues.machado@gmail.com>
Date: Mon, 10 Jul 2017 12:38:19 +0000
Message-ID: <CACgnt7-BsX1EkCnMj8T=tFqguhCNRWrrTgsG4ai3nR213SiFqA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
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
X-List-Received-Date: Mon, 10 Jul 2017 12:38:34 -0000
Content-Type: multipart/alternative; boundary="94eb2c0958e038a69b0553f5dc21"

--94eb2c0958e038a69b0553f5dc21
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for the answer guys.
Yes Jussi. Seco website requires a registration. Sorry about that.

Follows the complete output:

Traceback (most recent call last):
  File "/home/rafael/Projetos/seco/poky/bitbake/bin/bitbake", line 31, in
<module>
    import bb
  File "/home/rafael/Projetos/seco/poky/bitbake/lib/bb/__init__.py", line
77, in <module>
    from bb import fetch2 as fetch
  File "/home/rafael/Projetos/seco/poky/bitbake/lib/bb/fetch2/__init__.py",
line 1769, in <module>
    from . import wget
  File "/home/rafael/Projetos/seco/poky/bitbake/lib/bb/fetch2/wget.py",
line 40, in <module>
    from   bs4 import BeautifulSoup
  File "/home/rafael/Projetos/seco/poky/bitbake/lib/bs4/__init__.py", line
30, in <module>
    from .builder import builder_registry, ParserRejectedMarkup
  File
"/home/rafael/Projetos/seco/poky/bitbake/lib/bs4/builder/__init__.py", line
311, in <module>
    from . import _html5lib
  File
"/home/rafael/Projetos/seco/poky/bitbake/lib/bs4/builder/_html5lib.py",
line 57, in <module>
    class TreeBuilderForHtml5lib(html5lib.treebuilders._base.TreeBuilder):
AttributeError: 'module' object has no attribute '_base'
/home/rafael/Projetos/seco/poky/bitbake/lib/bb/event.py:118:
RuntimeWarning: Parent module 'bb' not found while handling absolute import
  from bb.msg import BBLogFormatter
Error in atexit._run_exitfuncs:
Traceback (most recent call last):
  File "/usr/lib/python2.7/atexit.py", line 24, in _run_exitfuncs
    func(*targs, **kargs)
  File "/home/rafael/Projetos/seco/poky/bitbake/lib/bb/event.py", line 118,
in print_ui_queue
    from bb.msg import BBLogFormatter
  File "/home/rafael/Projetos/seco/poky/bitbake/lib/bb/__init__.py", line
77, in <module>
    from bb import fetch2 as fetch
  File "/home/rafael/Projetos/seco/poky/bitbake/lib/bb/fetch2/__init__.py",
line 39, in <module>
    from bb import data
ImportError: cannot import name data
Error in sys.exitfunc:
Traceback (most recent call last):
  File "/usr/lib/python2.7/atexit.py", line 24, in _run_exitfuncs
    func(*targs, **kargs)
  File "/home/rafael/Projetos/seco/poky/bitbake/lib/bb/event.py", line 118,
in print_ui_queue
    from bb.msg import BBLogFormatter
  File "/home/rafael/Projetos/seco/poky/bitbake/lib/bb/__init__.py", line
77, in <module>
    from bb import fetch2 as fetch
  File "/home/rafael/Projetos/seco/poky/bitbake/lib/bb/fetch2/__init__.py",
line 39, in <module>
    from bb import data
ImportError: cannot import name data


I already installed sqlite:

$ sqlite3 -version
3.16.2 2017-01-06

Any other idea about how to proceed?

Thanks everyone
Rafael

Em seg, 10 de jul de 2017 =C3=A0s 06:00, Burton, Ross <ross.burton@intel.co=
m>
escreveu:

>
> On 9 July 2017 at 03:15, Rafael Machado <rafaelrodrigues.machado@gmail.co=
m
> > wrote:
>
>>   File "/media/sda3/open_env/openembedded-core/bitbake/lib/bb/persist_da=
ta.py", line 35, in <module>
>>
>>
>      33 sqlversion =3D sqlite3.sqlite_version_info
>      34 if sqlversion[0] < 3 or (sqlversion[0] =3D=3D 3 and sqlversion[1]=
 < 3):
>      35     raise Exception("sqlite3 version 3.3.0 or later is required."=
)
>
> You need sqlite3 3.3.0 or later.
>
> Ross
>

--94eb2c0958e038a69b0553f5dc21
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the answer guys.<div>Yes Jussi. Seco website re=
quires a registration. Sorry about that.</div><div><br></div><div>Follows t=
he complete output:<br></div><div><br></div><div><div>Traceback (most recen=
t call last):</div><div>=C2=A0 File &quot;/home/rafael/Projetos/seco/poky/b=
itbake/bin/bitbake&quot;, line 31, in &lt;module&gt;</div><div>=C2=A0 =C2=
=A0 import bb</div><div>=C2=A0 File &quot;/home/rafael/Projetos/seco/poky/b=
itbake/lib/bb/__init__.py&quot;, line 77, in &lt;module&gt;</div><div>=C2=
=A0 =C2=A0 from bb import fetch2 as fetch</div><div>=C2=A0 File &quot;/home=
/rafael/Projetos/seco/poky/bitbake/lib/bb/fetch2/__init__.py&quot;, line 17=
69, in &lt;module&gt;</div><div>=C2=A0 =C2=A0 from . import wget</div><div>=
=C2=A0 File &quot;/home/rafael/Projetos/seco/poky/bitbake/lib/bb/fetch2/wge=
t.py&quot;, line 40, in &lt;module&gt;</div><div>=C2=A0 =C2=A0 from =C2=A0 =
bs4 import BeautifulSoup</div><div>=C2=A0 File &quot;/home/rafael/Projetos/=
seco/poky/bitbake/lib/bs4/__init__.py&quot;, line 30, in &lt;module&gt;</di=
v><div>=C2=A0 =C2=A0 from .builder import builder_registry, ParserRejectedM=
arkup</div><div>=C2=A0 File &quot;/home/rafael/Projetos/seco/poky/bitbake/l=
ib/bs4/builder/__init__.py&quot;, line 311, in &lt;module&gt;</div><div>=C2=
=A0 =C2=A0 from . import _html5lib</div><div>=C2=A0 File &quot;/home/rafael=
/Projetos/seco/poky/bitbake/lib/bs4/builder/_html5lib.py&quot;, line 57, in=
 &lt;module&gt;</div><div>=C2=A0 =C2=A0 class TreeBuilderForHtml5lib(html5l=
ib.treebuilders._base.TreeBuilder):</div><div>AttributeError: &#39;module&#=
39; object has no attribute &#39;_base&#39;</div><div>/home/rafael/Projetos=
/seco/poky/bitbake/lib/bb/event.py:118: RuntimeWarning: Parent module &#39;=
bb&#39; not found while handling absolute import</div><div>=C2=A0 from bb.m=
sg import BBLogFormatter</div><div>Error in atexit._run_exitfuncs:</div><di=
v>Traceback (most recent call last):</div><div>=C2=A0 File &quot;/usr/lib/p=
ython2.7/atexit.py&quot;, line 24, in _run_exitfuncs</div><div>=C2=A0 =C2=
=A0 func(*targs, **kargs)</div><div>=C2=A0 File &quot;/home/rafael/Projetos=
/seco/poky/bitbake/lib/bb/event.py&quot;, line 118, in print_ui_queue</div>=
<div>=C2=A0 =C2=A0 from bb.msg import BBLogFormatter</div><div>=C2=A0 File =
&quot;/home/rafael/Projetos/seco/poky/bitbake/lib/bb/__init__.py&quot;, lin=
e 77, in &lt;module&gt;</div><div>=C2=A0 =C2=A0 from bb import fetch2 as fe=
tch</div><div>=C2=A0 File &quot;/home/rafael/Projetos/seco/poky/bitbake/lib=
/bb/fetch2/__init__.py&quot;, line 39, in &lt;module&gt;</div><div>=C2=A0 =
=C2=A0 from bb import data</div><div>ImportError: cannot import name data</=
div><div>Error in sys.exitfunc:</div><div>Traceback (most recent call last)=
:</div><div>=C2=A0 File &quot;/usr/lib/python2.7/atexit.py&quot;, line 24, =
in _run_exitfuncs</div><div>=C2=A0 =C2=A0 func(*targs, **kargs)</div><div>=
=C2=A0 File &quot;/home/rafael/Projetos/seco/poky/bitbake/lib/bb/event.py&q=
uot;, line 118, in print_ui_queue</div><div>=C2=A0 =C2=A0 from bb.msg impor=
t BBLogFormatter</div><div>=C2=A0 File &quot;/home/rafael/Projetos/seco/pok=
y/bitbake/lib/bb/__init__.py&quot;, line 77, in &lt;module&gt;</div><div>=
=C2=A0 =C2=A0 from bb import fetch2 as fetch</div><div>=C2=A0 File &quot;/h=
ome/rafael/Projetos/seco/poky/bitbake/lib/bb/fetch2/__init__.py&quot;, line=
 39, in &lt;module&gt;</div><div>=C2=A0 =C2=A0 from bb import data</div><di=
v>ImportError: cannot import name data</div></div><div><br></div><div><br><=
/div><div>I already installed sqlite:</div><div><br></div><div>$ sqlite3 -v=
ersion</div><div>3.16.2 2017-01-06=C2=A0</div><div><br></div><div>Any other=
 idea about how to proceed?</div><div><br></div><div>Thanks everyone</div><=
div>Rafael</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">Em se=
g, 10 de jul de 2017 =C3=A0s 06:00, Burton, Ross &lt;<a href=3D"mailto:ross=
.burton@intel.com">ross.burton@intel.com</a>&gt; escreveu:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><br><di=
v class=3D"gmail_quote">On 9 July 2017 at 03:15, Rafael Machado <span dir=
=3D"ltr">&lt;<a href=3D"mailto:rafaelrodrigues.machado@gmail.com" target=3D=
"_blank">rafaelrodrigues.machado@gmail.com</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-wi=
dth:1px;border-left-style:solid;border-left-color:rgb(204,204,204);padding-=
left:1ex"><pre class=3D"m_-9084546141565360043gmail-m_2182558278022841608in=
box-inbox-lang-py m_-9084546141565360043gmail-m_2182558278022841608inbox-in=
box-prettyprint m_-9084546141565360043gmail-m_2182558278022841608inbox-inbo=
x-prettyprinted" style=3D"margin-top:0px;margin-bottom:1em;padding:5px;bord=
er:0px;font-variant-numeric:inherit;font-stretch:inherit;font-size:13px;lin=
e-height:inherit;font-family:Consolas,Menlo,Monaco,&#39;Lucida Console&#39;=
,&#39;Liberation Mono&#39;,&#39;DejaVu Sans Mono&#39;,&#39;Bitstream Vera S=
ans Mono&#39;,&#39;Courier New&#39;,monospace,sans-serif;vertical-align:bas=
eline;width:auto;max-height:600px;overflow:auto;background-color:rgb(239,24=
0,241);color:rgb(57,51,24);word-wrap:normal"><code style=3D"margin:0px;padd=
ing:0px;border:0px;font-style:inherit;font-variant-ligatures:inherit;font-v=
ariant-caps:inherit;font-variant-numeric:inherit;font-variant-alternates:in=
herit;font-variant-east-asian:inherit;font-weight:inherit;font-stretch:inhe=
rit;line-height:inherit;font-family:Consolas,Menlo,Monaco,&#39;Lucida Conso=
le&#39;,&#39;Liberation Mono&#39;,&#39;DejaVu Sans Mono&#39;,&#39;Bitstream=
 Vera Sans Mono&#39;,&#39;Courier New&#39;,monospace,sans-serif;vertical-al=
ign:baseline;white-space:inherit"><span class=3D"m_-9084546141565360043gmai=
l-m_2182558278022841608inbox-inbox-pln" style=3D"margin:0px;padding:0px;bor=
der:0px;font-style:inherit;font-variant-ligatures:inherit;font-variant-caps=
:inherit;font-variant-numeric:inherit;font-variant-alternates:inherit;font-=
variant-east-asian:inherit;font-weight:inherit;font-stretch:inherit;font-si=
ze:inherit;line-height:inherit;font-family:inherit;vertical-align:baseline;=
color:rgb(48,51,54)">  </span><span class=3D"m_-9084546141565360043gmail-m_=
2182558278022841608inbox-inbox-typ" style=3D"margin:0px;padding:0px;border:=
0px;font-style:inherit;font-variant-ligatures:inherit;font-variant-caps:inh=
erit;font-variant-numeric:inherit;font-variant-alternates:inherit;font-vari=
ant-east-asian:inherit;font-weight:inherit;font-stretch:inherit;font-size:i=
nherit;line-height:inherit;font-family:inherit;vertical-align:baseline;colo=
r:rgb(43,145,175)">File</span><span class=3D"m_-9084546141565360043gmail-m_=
2182558278022841608inbox-inbox-pln" style=3D"margin:0px;padding:0px;border:=
0px;font-style:inherit;font-variant-ligatures:inherit;font-variant-caps:inh=
erit;font-variant-numeric:inherit;font-variant-alternates:inherit;font-vari=
ant-east-asian:inherit;font-weight:inherit;font-stretch:inherit;font-size:i=
nherit;line-height:inherit;font-family:inherit;vertical-align:baseline;colo=
r:rgb(48,51,54)"> </span><span class=3D"m_-9084546141565360043gmail-m_21825=
58278022841608inbox-inbox-str" style=3D"margin:0px;padding:0px;border:0px;f=
ont-style:inherit;font-variant-ligatures:inherit;font-variant-caps:inherit;=
font-variant-numeric:inherit;font-variant-alternates:inherit;font-variant-e=
ast-asian:inherit;font-weight:inherit;font-stretch:inherit;font-size:inheri=
t;line-height:inherit;font-family:inherit;vertical-align:baseline;color:rgb=
(125,39,39)">&quot;/media/sda3/open_env/openembedded-core/bitbake/lib/bb/pe=
rsist_data.py&quot;</span><span class=3D"m_-9084546141565360043gmail-m_2182=
558278022841608inbox-inbox-pun" style=3D"margin:0px;padding:0px;border:0px;=
font-style:inherit;font-variant-ligatures:inherit;font-variant-caps:inherit=
;font-variant-numeric:inherit;font-variant-alternates:inherit;font-variant-=
east-asian:inherit;font-weight:inherit;font-stretch:inherit;font-size:inher=
it;line-height:inherit;font-family:inherit;vertical-align:baseline;color:rg=
b(48,51,54)">,</span><span class=3D"m_-9084546141565360043gmail-m_218255827=
8022841608inbox-inbox-pln" style=3D"margin:0px;padding:0px;border:0px;font-=
style:inherit;font-variant-ligatures:inherit;font-variant-caps:inherit;font=
-variant-numeric:inherit;font-variant-alternates:inherit;font-variant-east-=
asian:inherit;font-weight:inherit;font-stretch:inherit;font-size:inherit;li=
ne-height:inherit;font-family:inherit;vertical-align:baseline;color:rgb(48,=
51,54)"> line </span><span class=3D"m_-9084546141565360043gmail-m_218255827=
8022841608inbox-inbox-lit" style=3D"margin:0px;padding:0px;border:0px;font-=
style:inherit;font-variant-ligatures:inherit;font-variant-caps:inherit;font=
-variant-numeric:inherit;font-variant-alternates:inherit;font-variant-east-=
asian:inherit;font-weight:inherit;font-stretch:inherit;font-size:inherit;li=
ne-height:inherit;font-family:inherit;vertical-align:baseline;color:rgb(125=
,39,39)">35</span><span class=3D"m_-9084546141565360043gmail-m_218255827802=
2841608inbox-inbox-pun" style=3D"margin:0px;padding:0px;border:0px;font-sty=
le:inherit;font-variant-ligatures:inherit;font-variant-caps:inherit;font-va=
riant-numeric:inherit;font-variant-alternates:inherit;font-variant-east-asi=
an:inherit;font-weight:inherit;font-stretch:inherit;font-size:inherit;line-=
height:inherit;font-family:inherit;vertical-align:baseline;color:rgb(48,51,=
54)">,</span><span class=3D"m_-9084546141565360043gmail-m_21825582780228416=
08inbox-inbox-pln" style=3D"margin:0px;padding:0px;border:0px;font-style:in=
herit;font-variant-ligatures:inherit;font-variant-caps:inherit;font-variant=
-numeric:inherit;font-variant-alternates:inherit;font-variant-east-asian:in=
herit;font-weight:inherit;font-stretch:inherit;font-size:inherit;line-heigh=
t:inherit;font-family:inherit;vertical-align:baseline;color:rgb(48,51,54)">=
 </span><span class=3D"m_-9084546141565360043gmail-m_2182558278022841608inb=
ox-inbox-kwd" style=3D"margin:0px;padding:0px;border:0px;font-style:inherit=
;font-variant-ligatures:inherit;font-variant-caps:inherit;font-variant-nume=
ric:inherit;font-variant-alternates:inherit;font-variant-east-asian:inherit=
;font-weight:inherit;font-stretch:inherit;font-size:inherit;line-height:inh=
erit;font-family:inherit;vertical-align:baseline;color:rgb(16,16,148)">in</=
span><span class=3D"m_-9084546141565360043gmail-m_2182558278022841608inbox-=
inbox-pln" style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;fo=
nt-variant-ligatures:inherit;font-variant-caps:inherit;font-variant-numeric=
:inherit;font-variant-alternates:inherit;font-variant-east-asian:inherit;fo=
nt-weight:inherit;font-stretch:inherit;font-size:inherit;line-height:inheri=
t;font-family:inherit;vertical-align:baseline;color:rgb(48,51,54)"> </span>=
<span class=3D"m_-9084546141565360043gmail-m_2182558278022841608inbox-inbox=
-pun" style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-va=
riant-ligatures:inherit;font-variant-caps:inherit;font-variant-numeric:inhe=
rit;font-variant-alternates:inherit;font-variant-east-asian:inherit;font-we=
ight:inherit;font-stretch:inherit;font-size:inherit;line-height:inherit;fon=
t-family:inherit;vertical-align:baseline;color:rgb(48,51,54)">&lt;</span><s=
pan class=3D"m_-9084546141565360043gmail-m_2182558278022841608inbox-inbox-p=
ln" style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-vari=
ant-ligatures:inherit;font-variant-caps:inherit;font-variant-numeric:inheri=
t;font-variant-alternates:inherit;font-variant-east-asian:inherit;font-weig=
ht:inherit;font-stretch:inherit;font-size:inherit;line-height:inherit;font-=
family:inherit;vertical-align:baseline;color:rgb(48,51,54)">module</span><s=
pan class=3D"m_-9084546141565360043gmail-m_2182558278022841608inbox-inbox-p=
un" style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-vari=
ant-ligatures:inherit;font-variant-caps:inherit;font-variant-numeric:inheri=
t;font-variant-alternates:inherit;font-variant-east-asian:inherit;font-weig=
ht:inherit;font-stretch:inherit;font-size:inherit;line-height:inherit;font-=
family:inherit;vertical-align:baseline;color:rgb(48,51,54)">&gt;</span><spa=
n class=3D"m_-9084546141565360043gmail-m_2182558278022841608inbox-inbox-pln=
" style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-varian=
t-ligatures:inherit;font-variant-caps:inherit;font-variant-numeric:inherit;=
font-variant-alternates:inherit;font-variant-east-asian:inherit;font-weight=
:inherit;font-stretch:inherit;font-size:inherit;line-height:inherit;font-fa=
mily:inherit;vertical-align:baseline;color:rgb(48,51,54)">=C2=A0</span></co=
de></pre><div></div></blockquote></div><br></div></div><div dir=3D"ltr"><di=
v class=3D"gmail_extra"><div class=3D"gmail_extra">=C2=A0 =C2=A0 =C2=A033 s=
qlversion =3D sqlite3.sqlite_version_info</div><div class=3D"gmail_extra">=
=C2=A0 =C2=A0 =C2=A034 if sqlversion[0] &lt; 3 or (sqlversion[0] =3D=3D 3 a=
nd sqlversion[1] &lt; 3):</div><div class=3D"gmail_extra">=C2=A0 =C2=A0 =C2=
=A035 =C2=A0 =C2=A0 raise Exception(&quot;sqlite3 version 3.3.0 or later is=
 required.&quot;)</div><div class=3D"gmail_extra"><br></div><div class=3D"g=
mail_extra">You need sqlite3 3.3.0 or later.</div></div></div><div dir=3D"l=
tr"><div class=3D"gmail_extra"><div class=3D"gmail_extra"><br></div><div cl=
ass=3D"gmail_extra">Ross</div></div></div></blockquote></div>

--94eb2c0958e038a69b0553f5dc21--
