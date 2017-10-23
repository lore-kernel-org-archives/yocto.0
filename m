Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E10C5E00CE2; Mon, 23 Oct 2017 04:39:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.174 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f174.google.com (mail-wr0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96ACFE00928
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 04:39:45 -0700 (PDT)
Received: by mail-wr0-f174.google.com with SMTP id r79so17030424wrb.13
	for <yocto@yoctoproject.org>; Mon, 23 Oct 2017 04:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=QUNBQh/BGSE+7QBU+UNfLowH6O5OCTJw+JAmrSfRb7w=;
	b=bh+zsZUY6IV7W0obIqJbIzmAzYawIxyZYBqZKBYJh2VnPT1o0pN8Aj0ToZV9RLPC22
	q14iGl/Ddt6XCeGR6oXedGhYV5KAFE9N5EsZ5WUs/R7cbO5we82Z1ZPcdfpDkx269U0X
	QqYiNCHbPzvp82+o4X7SkgzYdsHQ6+8/IY0JzyUnhe3Bt4LkqlC8MPxnF8Sd/qczrDyw
	ogbi0pRjJWeTp5M7cf15I0ysWfpo4zxByk3abo0Px0fxvd/0I740oMrg+U6PyXMW7F+e
	+Vx4wGthwrZ6V4NpAPAupW0XKY7I/gDdBlBvhnA00PVQF+/CJhLRMAIVwuAXflAHXd5h
	7M7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=QUNBQh/BGSE+7QBU+UNfLowH6O5OCTJw+JAmrSfRb7w=;
	b=rHbX2b4iybCg3fF+mCCmnqQfPsBHVZbV6JOMc5qXqmw5bJb6Eq0fbPOnaQYRTYigwT
	6kcXGwvo2eBsXjELmqhyh+VLD98T5YQo49RZ+DOVqNXXxCQe58z8IsAn3KBq39f4nAr+
	r349jZpEhHH9Xy9FMgvEP+4qwrsQUzlD1zbpW6pK/K/vuowFKAnwcISF+Jyho1rzZ6me
	O3QfKZADrG03v1b3HsU0fFOgSn7R/4DBcIYzydInCOo4y283uJnZ7nx8yfRMze6qC63N
	ABJpzan7cF2Ui2mafkSahMKaVnY1I41NPnbIwCc3JLfQcKj1NXuOJGCHk1XNBqzb8lO6
	nXHQ==
X-Gm-Message-State: AMCzsaXq3k4RMmcRYcOyAlV4/+vvT3zuBknyrLaQ1YYqfH6tUuMbxKIm
	jdb/NG6YGwdp2EUMJJBu6zwZHCGxdC4B0sRIvO4=
X-Google-Smtp-Source: ABhQp+SZc4B9R5hsBPOFH9QcyTZZj5osaSdhWrKD9QwuXO8Sv/Rw3VlVofkOkhQes7md4S2q5BpD1tfN3fNM0Aq4ViA=
X-Received: by 10.223.165.67 with SMTP id j3mr10425342wrb.271.1508758784299;
	Mon, 23 Oct 2017 04:39:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.67.131 with HTTP; Mon, 23 Oct 2017 04:39:43 -0700 (PDT)
In-Reply-To: <CAJTo0LZCZXtPnRB3idwYDVtL8Q7F4FeUzCtbmABeO7xE_2bLVQ@mail.gmail.com>
References: <CAGAf8Lyz6P-K+bSA8bQ_XutML+SjjVYHGPrRPT=zwT85CB8ZEg@mail.gmail.com>
	<CAJTo0LZCZXtPnRB3idwYDVtL8Q7F4FeUzCtbmABeO7xE_2bLVQ@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 23 Oct 2017 13:39:43 +0200
Message-ID: <CAGAf8LwFvGj=67qpTSy5ZoU551GKGXSm2c2G_WGyi6v4-pB0WQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: OpenEmbedded sole base meta layer and poky base meta layers in sync, or not (should be The Same meta base layer, used in different distros)???
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
X-List-Received-Date: Mon, 23 Oct 2017 11:39:47 -0000
Content-Type: multipart/alternative; boundary="f403045f12be63da5d055c354776"

--f403045f12be63da5d055c354776
Content-Type: text/plain; charset="UTF-8"

> poky is generated using combo-layer, which effectively cherry-picks
commits from the parent repositories (in this case bitbake,
> oe-core, meta-poky, meta-yocto-bsp).  This explains why the SHAs don't
match, as the history doesn't match.

This is exactly my original point. We should have here original repos'
SHAs. Not "modified" ones. The "modified" note should be included at the
end of this report (to understand the differences explained by you). For
the better understanding from where/which repos' commits/clones are coming,
and why.

Thank you,
Zoran

On Mon, Oct 23, 2017 at 11:25 AM, Burton, Ross <ross.burton@intel.com>
wrote:

> On 23 October 2017 at 10:08, Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> wrote:
>
>> > Or better yet use
>> > http://www.yoctoproject.org/docs/2.3.2/mega-manual/mega-ma
>> nual.html#ref-classes-image-buildinfo
>>
>> Since I am also (relatively) new to YOCTO, reading these emails makes me
>> think about dependencies between YOCTO distros and layers within distros.
>>
>> Looking what is written here, I decided to do couple of the tests on my
>> own to try to understand better how OpenEmbedded (oe-core) base layer and
>> Poky distro (with two layers on the top of oe-core) are correlated with
>> each other. As my best understanding, poky master tree should do nothing
>> more that follow dependencies (with two additional layers) on the
>> OpenEmbedded master tree.
>>
>> OpenEmbedded layer is YOCTO QEMU project on its own. And one can build
>> well known QEMU targets on single oe-core.
>>
>> In order to verify this, i did git clone (at the same time) on two
>> distros: oe-core master tree, and on poky master tree.
>>
>> Now, after building oe-core, I have the following in qemux86-64 target
>> /etc/build:
>>
>> -----------------------
>> Build Configuration:  |
>> -----------------------
>> DISTRO = nodistro
>> DISTRO_VERSION = nodistro.0
>> -----------------------
>> Layer Revisions:      |
>> -----------------------
>>
>> *meta              = master:3b413a80578caacd9a7f405f3c51a3921d78a60d*
>>
>> At the same time, for poky, I got the following (qemux86-64 target
>> /etc/build):
>>
>> -----------------------
>> Build Configuration:  |
>> -----------------------
>> DISTRO = poky
>> DISTRO_VERSION = 2.4
>> -----------------------
>> Layer Revisions:      |
>> -----------------------
>> *meta                  = rocko:65d23bd7986615fdfb0f1717b615534a2a14ab80
>> -- modified*
>> meta-poky         = rocko:65d23bd7986615fdfb0f1717b615534a2a14ab80 --
>> modified
>> meta-yocto-bsp = rocko:65d23bd7986615fdfb0f1717b615534a2a14ab80 --
>> modified
>> _______
>>
>> Now, the question: should meta - rocko and meta - master have (in *BOLD*)
>> the SAME master HEAD #???
>>
>
> No, they're different repositories so have different SHAs.  However:
>
> $ git show 65d23bd7986615fdfb0f1717b615534a2a14ab80
> commit 65d23bd7986615fdfb0f1717b615534a2a14ab80
> Author: Randy MacLeod <Randy.MacLeod@windriver.com>
> Date:   Mon Oct 16 11:00:44 2017 -0400
>
>     README.qemu: qemuppc64 is not supported
>
>     (From OE-Core rev: 3b413a80578caacd9a7f405f3c51a3921d78a60d)
>
> They're the same commit.
>
> poky is generated using combo-layer, which effectively cherry-picks
> commits from the parent repositories (in this case bitbake, oe-core,
> meta-poky, meta-yocto-bsp).  This explains why the SHAs don't match, as the
> history doesn't match.
>
> Ross
>

--f403045f12be63da5d055c354776
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px">&gt; poky is generated us=
ing combo-layer, which effectively cherry-picks commits from the parent rep=
ositories (in this case bitbake,</span><div><span style=3D"font-size:12.8px=
">&gt; oe-core, meta-poky, meta-yocto-bsp).=C2=A0 This explains why the SHA=
s don&#39;t match, as the history doesn&#39;t match.</span><br></div><div><=
span style=3D"font-size:12.8px"><br></span></div><div><span style=3D"font-s=
ize:12.8px">This is exactly my original point. We should have here original=
 repos&#39; SHAs. Not &quot;modified&quot; ones. The &quot;modified&quot; n=
ote should be included at the end of this report (to understand the differe=
nces explained by you). For the better understanding from where/which repos=
&#39; commits/clones are coming, and why.</span></div><div><span style=3D"f=
ont-size:12.8px"><br></span></div><div><span style=3D"font-size:12.8px">Tha=
nk you,</span></div><div><span style=3D"font-size:12.8px">Zoran</span></div=
></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Oc=
t 23, 2017 at 11:25 AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><span class=
=3D"">On 23 October 2017 at 10:08, Zoran Stojsavljevic <span dir=3D"ltr">&l=
t;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zoran.=
stojsavljevic@gmail.com</a><wbr>&gt;</span> wrote:<br></span><div class=3D"=
gmail_extra"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:so=
lid;border-left-color:rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><=
span class=3D""><span style=3D"font-size:12.8px">&gt; Or better yet use</sp=
an><br style=3D"font-size:12.8px">&gt;=C2=A0<a href=3D"http://www.yoctoproj=
ect.org/docs/2.3.2/mega-manual/mega-manual.html#ref-classes-image-buildinfo=
" rel=3D"noreferrer" style=3D"font-size:12.8px" target=3D"_blank">http://ww=
w.yoctoproject.org/<wbr>docs/2.3.2/mega-manual/mega-ma<wbr>nual.html#ref-cl=
asses-image-bu<wbr>ildinfo</a><br style=3D"font-size:12.8px"><div><br></div=
></span><div><div class=3D"h5"><div>Since I am also (relatively) new to YOC=
TO, reading these emails makes me think about dependencies between YOCTO di=
stros and layers within distros.</div><div><br></div><div>Looking what is w=
ritten here, I decided to do couple of the tests on my own to try to unders=
tand better how OpenEmbedded (oe-core) base layer and Poky distro (with two=
 layers on the top of oe-core) are correlated with each other. As my best u=
nderstanding, poky master tree should do nothing more that follow dependenc=
ies (with two additional layers) on the OpenEmbedded master tree.</div><div=
><br></div><div>OpenEmbedded layer is YOCTO QEMU project on its own. And on=
e can build well known QEMU targets on single oe-core.</div><div><br></div>=
<div>In order to verify this, i did git clone (at the same time) on two dis=
tros: oe-core master tree, and on poky master tree.</div><div><br></div><di=
v>Now, after building oe-core, I have the following in qemux86-64 target /e=
tc/build:</div><div><br></div><div><span style=3D"font-size:12.8px">-------=
----------------</span><br style=3D"font-size:12.8px"><span style=3D"font-s=
ize:12.8px">Build Configuration:=C2=A0 |</span><br style=3D"font-size:12.8p=
x"><span style=3D"font-size:12.8px">-----------------------</span><br style=
=3D"font-size:12.8px"><span style=3D"font-size:12.8px">DISTRO =3D nodistro<=
/span><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">DISTR=
O_VERSION =3D nodistro.0</span><br style=3D"font-size:12.8px"><span style=
=3D"font-size:12.8px">-----------------------</span><br style=3D"font-size:=
12.8px"><span style=3D"font-size:12.8px">Layer Revisions:=C2=A0 =C2=A0 =C2=
=A0 |</span><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px"=
>-----------------------</span><br style=3D"font-size:12.8px"><b><i><u><spa=
n style=3D"font-size:12.8px">meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =3D master:3b413a80578caacd9a7f405<wbr>f3c51a3921d78a60d</span><br><=
/u></i></b></div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_e=
xtra">At the same time, for poky, I got the following (qemux86-64 target /e=
tc/build):</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_ex=
tra"><span style=3D"font-size:12.8px">-----------------------</span><br sty=
le=3D"font-size:12.8px"><span style=3D"font-size:12.8px">Build Configuratio=
n:=C2=A0 |</span><br style=3D"font-size:12.8px"><span style=3D"font-size:12=
.8px">-----------------------</span><br style=3D"font-size:12.8px"><span st=
yle=3D"font-size:12.8px">DISTRO =3D poky</span><br style=3D"font-size:12.8p=
x"><span style=3D"font-size:12.8px">DISTRO_VERSION =3D 2.4</span><br style=
=3D"font-size:12.8px"><span style=3D"font-size:12.8px">--------------------=
---</span><br style=3D"font-size:12.8px"><span style=3D"font-size:12.8px">L=
ayer Revisions:=C2=A0 =C2=A0 =C2=A0 |</span><br style=3D"font-size:12.8px">=
<span style=3D"font-size:12.8px">-----------------------</span><br style=3D=
"font-size:12.8px"><span style=3D"font-size:12.8px"><b><i><u>meta=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D rocko:65d23bd79866=
15fdfb0f1717<wbr>b615534a2a14ab80 -- modified</u></i></b></span><br></div><=
div class=3D"gmail_extra">meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D ro=
cko:<span style=3D"font-size:12.8px">65d23bd7986615fdfb0f1717<wbr>b615534a2=
a14ab80 -- modified</span></div><div class=3D"gmail_extra">meta-yocto-bsp =
=3D rocko:<span style=3D"font-size:12.8px">65d23bd7986615fdfb0f1717<wbr>b61=
5534a2a14ab80 -- modified</span></div><div class=3D"gmail_extra">_______</d=
iv><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Now, the=
 question: should meta - rocko and meta - master have (in <b><i><u>BOLD</u>=
</i></b>) the SAME master HEAD #???</div></div></div></div></blockquote><di=
v><br></div><div>No, they&#39;re different repositories so have different S=
HAs.=C2=A0 However:</div><div><br></div><div><div>$ git show 65d23bd7986615=
fdfb0f1717b61553<wbr>4a2a14ab80</div><div>commit 65d23bd7986615fdfb0f1717b6=
1553<wbr>4a2a14ab80</div><div>Author: Randy MacLeod &lt;<a href=3D"mailto:R=
andy.MacLeod@windriver.com" target=3D"_blank">Randy.MacLeod@windriver.com</=
a>&gt;</div><div>Date: =C2=A0 Mon Oct 16 11:00:44 2017 -0400</div><div><br>=
</div><div>=C2=A0 =C2=A0 README.qemu: qemuppc64 is not supported</div><div>=
<br></div><div>=C2=A0 =C2=A0 (From OE-Core rev: 3b413a80578caacd9a7f405f3c5=
1a3<wbr>921d78a60d)</div></div><div><br></div><div>They&#39;re the same com=
mit.</div><div><br></div><div>poky is generated using combo-layer, which ef=
fectively cherry-picks commits from the parent repositories (in this case b=
itbake, oe-core, meta-poky, meta-yocto-bsp).=C2=A0 This explains why the SH=
As don&#39;t match, as the history doesn&#39;t match.</div><span class=3D"H=
OEnZb"><font color=3D"#888888"><div><br></div><div>Ross</div></font></span>=
</div></div></div>
</blockquote></div><br></div>

--f403045f12be63da5d055c354776--
