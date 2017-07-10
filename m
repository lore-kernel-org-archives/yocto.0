Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10BD9E00C2B; Mon, 10 Jul 2017 01:33:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.42 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD04BE00C29
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 01:33:41 -0700 (PDT)
Received: by mail-it0-f42.google.com with SMTP id m68so26635589ith.1
	for <yocto@yoctoproject.org>; Mon, 10 Jul 2017 01:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=uueSfctGijSzNkBsLc65/yDfq0JePCIfvVQ5R1bO3Sg=;
	b=BmAkNYrXN6by96jalnZssM3m3HESvADzEfsZYIhMaZVxVL9nkJiaKRaGVeaE2IfUPw
	Cpvzw9LBW3dVSdl0Pl3GM2BeYJ3EfpDCS45/y55SrWo9g0hX9kxr3SqCht2E2pFnax6k
	gB7SrQyYw5E3Cb7UgQTdCfib/N6mUc1y+Z3ZpaQGmvTH+Uvx6In50cmCKUfABikFa/u+
	eP0Msl4GxJaqoV/ZzZcOo49MShlkBrPl0vLxnMFYLTt9KAjVwYP+g3yIUmv9RO7lUE4M
	neKr+YOFYL+4fMhz3R88gwGiRu7F82DAW0fQ/9Nucr5ZV0u2ukBCUQhg1HFOdozwxpLB
	U3nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=uueSfctGijSzNkBsLc65/yDfq0JePCIfvVQ5R1bO3Sg=;
	b=ZMY6z5Kks7RAvMr3r91IzLNq3bmBwrHSTmZFRzstS5oxjr7hXYhQVx1p1EqhmDiA0N
	YFRAIfnzrlChuUQH0E+eX5gVYkWfMkpQxRoeE/hLu78To9zXgsZlmx5SpITxzz2LE0Ea
	x5eQwitLEcwxui1hpMuTCAktMLj0YQh9Vgsulx3ET+jBRBF2Y/hHdwVakBgghRwGYJu7
	ejtCnXdwZO0BqoashpVVhheuQiyGmbuQ2D1rxrHxE+/wanogqldFBzobTlGNMgMkyU3e
	rIvHOq9vxsbNtmbXUQiXkm/947e3OmudShaIBTzU31652+27E1XRElZtjOF7q2w/IkVH
	XkwA==
X-Gm-Message-State: AIVw112Cz7pWVrQ5Eg5lrIVlX7/Qht3MCLSciTOr62bJWXF7uELGMCrO
	myI6GVVXOZvYojYDmVF7HVskvSC2BkaD
X-Received: by 10.36.74.209 with SMTP id k200mr9949243itb.51.1499675621379;
	Mon, 10 Jul 2017 01:33:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.44.87 with HTTP; Mon, 10 Jul 2017 01:33:10 -0700 (PDT)
In-Reply-To: <CACgnt7-ZUQ4FKiU4iBG9Lxym8SjWRR5GSPtmu4pULozHo_45-w@mail.gmail.com>
References: <CACgnt7-ZUQ4FKiU4iBG9Lxym8SjWRR5GSPtmu4pULozHo_45-w@mail.gmail.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Mon, 10 Jul 2017 11:33:10 +0300
Message-ID: <CAHiDW_GHY1DxVrn3v0RdDRRHu3h9R6moNOH9dKUEyoXhHXbH+A@mail.gmail.com>
To: Rafael Machado <rafaelrodrigues.machado@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 10 Jul 2017 08:33:45 -0000
Content-Type: multipart/alternative; boundary="001a114044c6b0ee240553f27039"

--001a114044c6b0ee240553f27039
Content-Type: text/plain; charset="UTF-8"

On 9 July 2017 at 05:15, Rafael Machado <rafaelrodrigues.machado@gmail.com>
wrote:

> Hi everyone
>
> I need your help. For the last several days, I've being trying to compile
> a yocto based project with no success. So in case someone can help me this
> would be really nice :)
>
> Follow the details of the problem.
> On my development system, I have installed a kali linux (debian)  4.9.0.
>
> http://cdimage.kali.org/kali-2017.1/kali-linux-2017.1-amd64.iso
>
> The project I'm trying to compile is from SECO, for the Q974 som.
> It can be found here:
>
> http://www.seco.com/prods/other/form-factor/qseven-7-x-7/q7-974.html
>
> At this page you can find the BSP (board support package), but it cannot
> be done, as described at the .pdf available at the BSP package. Doing the
> same steps at debian, ubuntu and fedora, everything works fine, but at Kali
> it fails with the message:
>

Everything is behind a registration so we can't know what is described
there.


>
> "File "/media/sda3/open_env/openembedded-core/bitbake/bin/bitbake", line
> 34, in <module>
>
>     import bb
>   File "/media/sda3/open_env/openembedded-core/bitbake/lib/bb/__init__.py", line 77, in <module>
>     from bb import fetch2 as fetch
>   File "/media/sda3/open_env/openembedded-core/bitbake/lib/bb/fetch2/__init__.py", line 38, in <module>
>     import bb.persist_data, bb.utils
>   File "/media/sda3/open_env/openembedded-core/bitbake/lib/bb/persist_data.py", line 35, in <module>
>
>
The actual error message is not listed here.

Cheers,
 Jussi

--001a114044c6b0ee240553f27039
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 9=
 July 2017 at 05:15, Rafael Machado <span dir=3D"ltr">&lt;<a href=3D"mailto=
:rafaelrodrigues.machado@gmail.com" target=3D"_blank">rafaelrodrigues.macha=
do@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div d=
ir=3D"ltr">Hi everyone<div><br></div><div>I need your help. For the last se=
veral days, I&#39;ve being trying to compile a yocto based project with no =
success. So in case someone can help me this would be really nice :)</div><=
div><br></div><div>Follow the details of the problem.</div><div>On my devel=
opment system, I have installed a kali linux (debian) =C2=A04.9.0.</div><di=
v><br></div><div><a href=3D"http://cdimage.kali.org/kali-2017.1/kali-linux-=
2017.1-amd64.iso" target=3D"_blank">http://cdimage.kali.org/kali-<wbr>2017.=
1/kali-linux-2017.1-<wbr>amd64.iso</a><br></div><div><br></div><div>The pro=
ject I&#39;m trying to compile is from SECO, for the Q974 som.</div><div>It=
 can be found here: =C2=A0</div><div><br></div><div><a href=3D"http://www.s=
eco.com/prods/other/form-factor/qseven-7-x-7/q7-974.html" target=3D"_blank"=
>http://www.seco.com/prods/<wbr>other/form-factor/qseven-7-x-<wbr>7/q7-974.=
html</a><br></div><div><br></div><div>At this page you can find the BSP (bo=
ard support package), but it cannot be done, as described at the .pdf avail=
able at the BSP package. Doing the same steps at debian, ubuntu and fedora,=
 everything works fine, but at Kali it fails with the message:</div></div><=
/blockquote><div><br></div><div>Everything is behind a registration so we c=
an&#39;t know what is described there.</div><div>=C2=A0=C2=A0</div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex"><div dir=3D"ltr"><div><br></div><div>&quot;<span cla=
ss=3D"m_851357734786411885inbox-inbox-typ" style=3D"font-family:inherit;fon=
t-style:inherit;font-variant:inherit;font-weight:inherit;white-space:inheri=
t;background-color:rgb(239,240,241);font-size:inherit;margin:0px;padding:0p=
x;border:0px;font-stretch:inherit;line-height:inherit;vertical-align:baseli=
ne;color:rgb(43,145,175)">File</span><span class=3D"m_851357734786411885inb=
ox-inbox-pln" style=3D"font-family:inherit;font-style:inherit;font-variant:=
inherit;font-weight:inherit;white-space:inherit;background-color:rgb(239,24=
0,241);font-size:inherit;margin:0px;padding:0px;border:0px;font-stretch:inh=
erit;line-height:inherit;vertical-align:baseline;color:rgb(48,51,54)"> </sp=
an><span class=3D"m_851357734786411885inbox-inbox-str" style=3D"font-family=
:inherit;font-style:inherit;font-variant:inherit;font-weight:inherit;white-=
space:inherit;background-color:rgb(239,240,241);font-size:inherit;margin:0p=
x;padding:0px;border:0px;font-stretch:inherit;line-height:inherit;vertical-=
align:baseline;color:rgb(125,39,39)">&quot;/media/sda3/open_env/<wbr>openem=
bedded-core/bitbake/bin/<wbr>bitbake&quot;</span><span class=3D"m_851357734=
786411885inbox-inbox-pun" style=3D"font-family:inherit;font-style:inherit;f=
ont-variant:inherit;font-weight:inherit;white-space:inherit;background-colo=
r:rgb(239,240,241);font-size:inherit;margin:0px;padding:0px;border:0px;font=
-stretch:inherit;line-height:inherit;vertical-align:baseline;color:rgb(48,5=
1,54)">,</span><span class=3D"m_851357734786411885inbox-inbox-pln" style=3D=
"font-family:inherit;font-style:inherit;font-variant:inherit;font-weight:in=
herit;white-space:inherit;background-color:rgb(239,240,241);font-size:inher=
it;margin:0px;padding:0px;border:0px;font-stretch:inherit;line-height:inher=
it;vertical-align:baseline;color:rgb(48,51,54)"> line </span><span class=3D=
"m_851357734786411885inbox-inbox-lit" style=3D"font-family:inherit;font-sty=
le:inherit;font-variant:inherit;font-weight:inherit;white-space:inherit;bac=
kground-color:rgb(239,240,241);font-size:inherit;margin:0px;padding:0px;bor=
der:0px;font-stretch:inherit;line-height:inherit;vertical-align:baseline;co=
lor:rgb(125,39,39)">34</span><span class=3D"m_851357734786411885inbox-inbox=
-pun" style=3D"font-family:inherit;font-style:inherit;font-variant:inherit;=
font-weight:inherit;white-space:inherit;background-color:rgb(239,240,241);f=
ont-size:inherit;margin:0px;padding:0px;border:0px;font-stretch:inherit;lin=
e-height:inherit;vertical-align:baseline;color:rgb(48,51,54)">,</span><span=
 class=3D"m_851357734786411885inbox-inbox-pln" style=3D"font-family:inherit=
;font-style:inherit;font-variant:inherit;font-weight:inherit;white-space:in=
herit;background-color:rgb(239,240,241);font-size:inherit;margin:0px;paddin=
g:0px;border:0px;font-stretch:inherit;line-height:inherit;vertical-align:ba=
seline;color:rgb(48,51,54)"> </span><span class=3D"m_851357734786411885inbo=
x-inbox-kwd" style=3D"font-family:inherit;font-style:inherit;font-variant:i=
nherit;font-weight:inherit;white-space:inherit;background-color:rgb(239,240=
,241);font-size:inherit;margin:0px;padding:0px;border:0px;font-stretch:inhe=
rit;line-height:inherit;vertical-align:baseline;color:rgb(16,16,148)">in</s=
pan><span class=3D"m_851357734786411885inbox-inbox-pln" style=3D"font-famil=
y:inherit;font-style:inherit;font-variant:inherit;font-weight:inherit;white=
-space:inherit;background-color:rgb(239,240,241);font-size:inherit;margin:0=
px;padding:0px;border:0px;font-stretch:inherit;line-height:inherit;vertical=
-align:baseline;color:rgb(48,51,54)"> </span><span class=3D"m_8513577347864=
11885inbox-inbox-pun" style=3D"font-family:inherit;font-style:inherit;font-=
variant:inherit;font-weight:inherit;white-space:inherit;background-color:rg=
b(239,240,241);font-size:inherit;margin:0px;padding:0px;border:0px;font-str=
etch:inherit;line-height:inherit;vertical-align:baseline;color:rgb(48,51,54=
)">&lt;</span><span class=3D"m_851357734786411885inbox-inbox-pln" style=3D"=
font-family:inherit;font-style:inherit;font-variant:inherit;font-weight:inh=
erit;white-space:inherit;background-color:rgb(239,240,241);font-size:inheri=
t;margin:0px;padding:0px;border:0px;font-stretch:inherit;line-height:inheri=
t;vertical-align:baseline;color:rgb(48,51,54)">module</span><span class=3D"=
m_851357734786411885inbox-inbox-pun" style=3D"font-family:inherit;font-styl=
e:inherit;font-variant:inherit;font-weight:inherit;white-space:inherit;back=
ground-color:rgb(239,240,241);font-size:inherit;margin:0px;padding:0px;bord=
er:0px;font-stretch:inherit;line-height:inherit;vertical-align:baseline;col=
or:rgb(48,51,54)">&gt;</span></div><pre class=3D"m_851357734786411885inbox-=
inbox-lang-py m_851357734786411885inbox-inbox-prettyprint m_851357734786411=
885inbox-inbox-prettyprinted" style=3D"margin-top:0px;margin-bottom:1em;pad=
ding:5px;border:0px;font-variant-numeric:inherit;font-stretch:inherit;font-=
size:13px;line-height:inherit;font-family:Consolas,Menlo,Monaco,&quot;Lucid=
a Console&quot;,&quot;Liberation Mono&quot;,&quot;DejaVu Sans Mono&quot;,&q=
uot;Bitstream Vera Sans Mono&quot;,&quot;Courier New&quot;,monospace,sans-s=
erif;vertical-align:baseline;width:auto;max-height:600px;overflow:auto;back=
ground-color:rgb(239,240,241);color:rgb(57,51,24);word-wrap:normal"><code s=
tyle=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:i=
nherit;font-weight:inherit;font-stretch:inherit;line-height:inherit;font-fa=
mily:Consolas,Menlo,Monaco,&quot;Lucida Console&quot;,&quot;Liberation Mono=
&quot;,&quot;DejaVu Sans Mono&quot;,&quot;Bitstream Vera Sans Mono&quot;,&q=
uot;Courier New&quot;,monospace,sans-serif;vertical-align:baseline;white-sp=
ace:inherit"><span class=3D"m_851357734786411885inbox-inbox-pln" style=3D"m=
argin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;fo=
nt-weight:inherit;font-stretch:inherit;font-size:inherit;line-height:inheri=
t;font-family:inherit;vertical-align:baseline;color:rgb(48,51,54)">    </sp=
an><span class=3D"m_851357734786411885inbox-inbox-kwd" style=3D"margin:0px;=
padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:=
inherit;font-stretch:inherit;font-size:inherit;line-height:inherit;font-fam=
ily:inherit;vertical-align:baseline;color:rgb(16,16,148)">import</span><spa=
n class=3D"m_851357734786411885inbox-inbox-pln" style=3D"margin:0px;padding=
:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit=
;font-stretch:inherit;font-size:inherit;line-height:inherit;font-family:inh=
erit;vertical-align:baseline;color:rgb(48,51,54)"> bb
  </span><span class=3D"m_851357734786411885inbox-inbox-typ" style=3D"margi=
n:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-w=
eight:inherit;font-stretch:inherit;font-size:inherit;line-height:inherit;fo=
nt-family:inherit;vertical-align:baseline;color:rgb(43,145,175)">File</span=
><span class=3D"m_851357734786411885inbox-inbox-pln" style=3D"margin:0px;pa=
dding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:in=
herit;font-stretch:inherit;font-size:inherit;line-height:inherit;font-famil=
y:inherit;vertical-align:baseline;color:rgb(48,51,54)"> </span><span class=
=3D"m_851357734786411885inbox-inbox-str" style=3D"margin:0px;padding:0px;bo=
rder:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-s=
tretch:inherit;font-size:inherit;line-height:inherit;font-family:inherit;ve=
rtical-align:baseline;color:rgb(125,39,39)">&quot;/media/sda3/open_env/<wbr=
>openembedded-core/bitbake/lib/<wbr>bb/__init__.py&quot;</span><span class=
=3D"m_851357734786411885inbox-inbox-pun" style=3D"margin:0px;padding:0px;bo=
rder:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-s=
tretch:inherit;font-size:inherit;line-height:inherit;font-family:inherit;ve=
rtical-align:baseline;color:rgb(48,51,54)">,</span><span class=3D"m_8513577=
34786411885inbox-inbox-pln" style=3D"margin:0px;padding:0px;border:0px;font=
-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inheri=
t;font-size:inherit;line-height:inherit;font-family:inherit;vertical-align:=
baseline;color:rgb(48,51,54)"> line </span><span class=3D"m_851357734786411=
885inbox-inbox-lit" style=3D"margin:0px;padding:0px;border:0px;font-style:i=
nherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;font-s=
ize:inherit;line-height:inherit;font-family:inherit;vertical-align:baseline=
;color:rgb(125,39,39)">77</span><span class=3D"m_851357734786411885inbox-in=
box-pun" style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font=
-variant:inherit;font-weight:inherit;font-stretch:inherit;font-size:inherit=
;line-height:inherit;font-family:inherit;vertical-align:baseline;color:rgb(=
48,51,54)">,</span><span class=3D"m_851357734786411885inbox-inbox-pln" styl=
e=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inhe=
rit;font-weight:inherit;font-stretch:inherit;font-size:inherit;line-height:=
inherit;font-family:inherit;vertical-align:baseline;color:rgb(48,51,54)"> <=
/span><span class=3D"m_851357734786411885inbox-inbox-kwd" style=3D"margin:0=
px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weig=
ht:inherit;font-stretch:inherit;font-size:inherit;line-height:inherit;font-=
family:inherit;vertical-align:baseline;color:rgb(16,16,148)">in</span><span=
 class=3D"m_851357734786411885inbox-inbox-pln" style=3D"margin:0px;padding:=
0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;=
font-stretch:inherit;font-size:inherit;line-height:inherit;font-family:inhe=
rit;vertical-align:baseline;color:rgb(48,51,54)"> </span><span class=3D"m_8=
51357734786411885inbox-inbox-pun" style=3D"margin:0px;padding:0px;border:0p=
x;font-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:=
inherit;font-size:inherit;line-height:inherit;font-family:inherit;vertical-=
align:baseline;color:rgb(48,51,54)">&lt;</span><span class=3D"m_85135773478=
6411885inbox-inbox-pln" style=3D"margin:0px;padding:0px;border:0px;font-sty=
le:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;fo=
nt-size:inherit;line-height:inherit;font-family:inherit;vertical-align:base=
line;color:rgb(48,51,54)">module</span><span class=3D"m_851357734786411885i=
nbox-inbox-pun" style=3D"margin:0px;padding:0px;border:0px;font-style:inher=
it;font-variant:inherit;font-weight:inherit;font-stretch:inherit;font-size:=
inherit;line-height:inherit;font-family:inherit;vertical-align:baseline;col=
or:rgb(48,51,54)">&gt;</span><span class=3D"m_851357734786411885inbox-inbox=
-pln" style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-va=
riant:inherit;font-weight:inherit;font-stretch:inherit;font-size:inherit;li=
ne-height:inherit;font-family:inherit;vertical-align:baseline;color:rgb(48,=
51,54)">
    </span><span class=3D"m_851357734786411885inbox-inbox-kwd" style=3D"mar=
gin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font=
-weight:inherit;font-stretch:inherit;font-size:inherit;line-height:inherit;=
font-family:inherit;vertical-align:baseline;color:rgb(16,16,148)">from</spa=
n><span class=3D"m_851357734786411885inbox-inbox-pln" style=3D"margin:0px;p=
adding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:i=
nherit;font-stretch:inherit;font-size:inherit;line-height:inherit;font-fami=
ly:inherit;vertical-align:baseline;color:rgb(48,51,54)"> bb </span><span cl=
ass=3D"m_851357734786411885inbox-inbox-kwd" style=3D"margin:0px;padding:0px=
;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;fon=
t-stretch:inherit;font-size:inherit;line-height:inherit;font-family:inherit=
;vertical-align:baseline;color:rgb(16,16,148)">import</span><span class=3D"=
m_851357734786411885inbox-inbox-pln" style=3D"margin:0px;padding:0px;border=
:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-stret=
ch:inherit;font-size:inherit;line-height:inherit;font-family:inherit;vertic=
al-align:baseline;color:rgb(48,51,54)"> fetch2 </span><span class=3D"m_8513=
57734786411885inbox-inbox-kwd" style=3D"margin:0px;padding:0px;border:0px;f=
ont-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inh=
erit;font-size:inherit;line-height:inherit;font-family:inherit;vertical-ali=
gn:baseline;color:rgb(16,16,148)">as</span><span class=3D"m_851357734786411=
885inbox-inbox-pln" style=3D"margin:0px;padding:0px;border:0px;font-style:i=
nherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;font-s=
ize:inherit;line-height:inherit;font-family:inherit;vertical-align:baseline=
;color:rgb(48,51,54)"> fetch
  </span><span class=3D"m_851357734786411885inbox-inbox-typ" style=3D"margi=
n:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-w=
eight:inherit;font-stretch:inherit;font-size:inherit;line-height:inherit;fo=
nt-family:inherit;vertical-align:baseline;color:rgb(43,145,175)">File</span=
><span class=3D"m_851357734786411885inbox-inbox-pln" style=3D"margin:0px;pa=
dding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:in=
herit;font-stretch:inherit;font-size:inherit;line-height:inherit;font-famil=
y:inherit;vertical-align:baseline;color:rgb(48,51,54)"> </span><span class=
=3D"m_851357734786411885inbox-inbox-str" style=3D"margin:0px;padding:0px;bo=
rder:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-s=
tretch:inherit;font-size:inherit;line-height:inherit;font-family:inherit;ve=
rtical-align:baseline;color:rgb(125,39,39)">&quot;/media/sda3/open_env/<wbr=
>openembedded-core/bitbake/lib/<wbr>bb/fetch2/__init__.py&quot;</span><span=
 class=3D"m_851357734786411885inbox-inbox-pun" style=3D"margin:0px;padding:=
0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;=
font-stretch:inherit;font-size:inherit;line-height:inherit;font-family:inhe=
rit;vertical-align:baseline;color:rgb(48,51,54)">,</span><span class=3D"m_8=
51357734786411885inbox-inbox-pln" style=3D"margin:0px;padding:0px;border:0p=
x;font-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:=
inherit;font-size:inherit;line-height:inherit;font-family:inherit;vertical-=
align:baseline;color:rgb(48,51,54)"> line </span><span class=3D"m_851357734=
786411885inbox-inbox-lit" style=3D"margin:0px;padding:0px;border:0px;font-s=
tyle:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;=
font-size:inherit;line-height:inherit;font-family:inherit;vertical-align:ba=
seline;color:rgb(125,39,39)">38</span><span class=3D"m_851357734786411885in=
box-inbox-pun" style=3D"margin:0px;padding:0px;border:0px;font-style:inheri=
t;font-variant:inherit;font-weight:inherit;font-stretch:inherit;font-size:i=
nherit;line-height:inherit;font-family:inherit;vertical-align:baseline;colo=
r:rgb(48,51,54)">,</span><span class=3D"m_851357734786411885inbox-inbox-pln=
" style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-varian=
t:inherit;font-weight:inherit;font-stretch:inherit;font-size:inherit;line-h=
eight:inherit;font-family:inherit;vertical-align:baseline;color:rgb(48,51,5=
4)"> </span><span class=3D"m_851357734786411885inbox-inbox-kwd" style=3D"ma=
rgin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;fon=
t-weight:inherit;font-stretch:inherit;font-size:inherit;line-height:inherit=
;font-family:inherit;vertical-align:baseline;color:rgb(16,16,148)">in</span=
><span class=3D"m_851357734786411885inbox-inbox-pln" style=3D"margin:0px;pa=
dding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:in=
herit;font-stretch:inherit;font-size:inherit;line-height:inherit;font-famil=
y:inherit;vertical-align:baseline;color:rgb(48,51,54)"> </span><span class=
=3D"m_851357734786411885inbox-inbox-pun" style=3D"margin:0px;padding:0px;bo=
rder:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-s=
tretch:inherit;font-size:inherit;line-height:inherit;font-family:inherit;ve=
rtical-align:baseline;color:rgb(48,51,54)">&lt;</span><span class=3D"m_8513=
57734786411885inbox-inbox-pln" style=3D"margin:0px;padding:0px;border:0px;f=
ont-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inh=
erit;font-size:inherit;line-height:inherit;font-family:inherit;vertical-ali=
gn:baseline;color:rgb(48,51,54)">module</span><span class=3D"m_851357734786=
411885inbox-inbox-pun" style=3D"margin:0px;padding:0px;border:0px;font-styl=
e:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;fon=
t-size:inherit;line-height:inherit;font-family:inherit;vertical-align:basel=
ine;color:rgb(48,51,54)">&gt;</span><span class=3D"m_851357734786411885inbo=
x-inbox-pln" style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;=
font-variant:inherit;font-weight:inherit;font-stretch:inherit;font-size:inh=
erit;line-height:inherit;font-family:inherit;vertical-align:baseline;color:=
rgb(48,51,54)">
    </span><span class=3D"m_851357734786411885inbox-inbox-kwd" style=3D"mar=
gin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font=
-weight:inherit;font-stretch:inherit;font-size:inherit;line-height:inherit;=
font-family:inherit;vertical-align:baseline;color:rgb(16,16,148)">import</s=
pan><span class=3D"m_851357734786411885inbox-inbox-pln" style=3D"margin:0px=
;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight=
:inherit;font-stretch:inherit;font-size:inherit;line-height:inherit;font-fa=
mily:inherit;vertical-align:baseline;color:rgb(48,51,54)"> bb</span><span c=
lass=3D"m_851357734786411885inbox-inbox-pun" style=3D"margin:0px;padding:0p=
x;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;fo=
nt-stretch:inherit;font-size:inherit;line-height:inherit;font-family:inheri=
t;vertical-align:baseline;color:rgb(48,51,54)">.</span><span class=3D"m_851=
357734786411885inbox-inbox-pln" style=3D"margin:0px;padding:0px;border:0px;=
font-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:in=
herit;font-size:inherit;line-height:inherit;font-family:inherit;vertical-al=
ign:baseline;color:rgb(48,51,54)">persist_data</span><span class=3D"m_85135=
7734786411885inbox-inbox-pun" style=3D"margin:0px;padding:0px;border:0px;fo=
nt-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inhe=
rit;font-size:inherit;line-height:inherit;font-family:inherit;vertical-alig=
n:baseline;color:rgb(48,51,54)">,</span><span class=3D"m_851357734786411885=
inbox-inbox-pln" style=3D"margin:0px;padding:0px;border:0px;font-style:inhe=
rit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;font-size=
:inherit;line-height:inherit;font-family:inherit;vertical-align:baseline;co=
lor:rgb(48,51,54)"> bb</span><span class=3D"m_851357734786411885inbox-inbox=
-pun" style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-va=
riant:inherit;font-weight:inherit;font-stretch:inherit;font-size:inherit;li=
ne-height:inherit;font-family:inherit;vertical-align:baseline;color:rgb(48,=
51,54)">.</span><span class=3D"m_851357734786411885inbox-inbox-pln" style=
=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:inher=
it;font-weight:inherit;font-stretch:inherit;font-size:inherit;line-height:i=
nherit;font-family:inherit;vertical-align:baseline;color:rgb(48,51,54)">uti=
ls
  </span><span class=3D"m_851357734786411885inbox-inbox-typ" style=3D"margi=
n:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-w=
eight:inherit;font-stretch:inherit;font-size:inherit;line-height:inherit;fo=
nt-family:inherit;vertical-align:baseline;color:rgb(43,145,175)">File</span=
><span class=3D"m_851357734786411885inbox-inbox-pln" style=3D"margin:0px;pa=
dding:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:in=
herit;font-stretch:inherit;font-size:inherit;line-height:inherit;font-famil=
y:inherit;vertical-align:baseline;color:rgb(48,51,54)"> </span><span class=
=3D"m_851357734786411885inbox-inbox-str" style=3D"margin:0px;padding:0px;bo=
rder:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-s=
tretch:inherit;font-size:inherit;line-height:inherit;font-family:inherit;ve=
rtical-align:baseline;color:rgb(125,39,39)">&quot;/media/sda3/open_env/<wbr=
>openembedded-core/bitbake/lib/<wbr>bb/persist_data.py&quot;</span><span cl=
ass=3D"m_851357734786411885inbox-inbox-pun" style=3D"margin:0px;padding:0px=
;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;fon=
t-stretch:inherit;font-size:inherit;line-height:inherit;font-family:inherit=
;vertical-align:baseline;color:rgb(48,51,54)">,</span><span class=3D"m_8513=
57734786411885inbox-inbox-pln" style=3D"margin:0px;padding:0px;border:0px;f=
ont-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inh=
erit;font-size:inherit;line-height:inherit;font-family:inherit;vertical-ali=
gn:baseline;color:rgb(48,51,54)"> line </span><span class=3D"m_851357734786=
411885inbox-inbox-lit" style=3D"margin:0px;padding:0px;border:0px;font-styl=
e:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;fon=
t-size:inherit;line-height:inherit;font-family:inherit;vertical-align:basel=
ine;color:rgb(125,39,39)">35</span><span class=3D"m_851357734786411885inbox=
-inbox-pun" style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;f=
ont-variant:inherit;font-weight:inherit;font-stretch:inherit;font-size:inhe=
rit;line-height:inherit;font-family:inherit;vertical-align:baseline;color:r=
gb(48,51,54)">,</span><span class=3D"m_851357734786411885inbox-inbox-pln" s=
tyle=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font-variant:i=
nherit;font-weight:inherit;font-stretch:inherit;font-size:inherit;line-heig=
ht:inherit;font-family:inherit;vertical-align:baseline;color:rgb(48,51,54)"=
> </span><span class=3D"m_851357734786411885inbox-inbox-kwd" style=3D"margi=
n:0px;padding:0px;border:0px;font-style:inherit;font-variant:inherit;font-w=
eight:inherit;font-stretch:inherit;font-size:inherit;line-height:inherit;fo=
nt-family:inherit;vertical-align:baseline;color:rgb(16,16,148)">in</span><s=
pan class=3D"m_851357734786411885inbox-inbox-pln" style=3D"margin:0px;paddi=
ng:0px;border:0px;font-style:inherit;font-variant:inherit;font-weight:inher=
it;font-stretch:inherit;font-size:inherit;line-height:inherit;font-family:i=
nherit;vertical-align:baseline;color:rgb(48,51,54)"> </span><span class=3D"=
m_851357734786411885inbox-inbox-pun" style=3D"margin:0px;padding:0px;border=
:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-stret=
ch:inherit;font-size:inherit;line-height:inherit;font-family:inherit;vertic=
al-align:baseline;color:rgb(48,51,54)">&lt;</span><span class=3D"m_85135773=
4786411885inbox-inbox-pln" style=3D"margin:0px;padding:0px;border:0px;font-=
style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:inherit=
;font-size:inherit;line-height:inherit;font-family:inherit;vertical-align:b=
aseline;color:rgb(48,51,54)">module</span><span class=3D"m_8513577347864118=
85inbox-inbox-pun" style=3D"margin:0px;padding:0px;border:0px;font-style:in=
herit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;font-si=
ze:inherit;line-height:inherit;font-family:inherit;vertical-align:baseline;=
color:rgb(48,51,54)">&gt;</span><span class=3D"m_851357734786411885inbox-in=
box-pln" style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;font=
-variant:inherit;font-weight:inherit;font-stretch:inherit;font-size:inherit=
;line-height:inherit;font-family:inherit;vertical-align:baseline;color:rgb(=
48,51,54)">=C2=A0</span></code></pre></div></blockquote><div>=C2=A0</div><d=
iv>The actual error message is not listed here.</div><div><br></div><div>Ch=
eers,</div><div>=C2=A0Jussi</div></div></div></div>

--001a114044c6b0ee240553f27039--
