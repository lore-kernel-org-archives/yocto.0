Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B8CCE00B81; Wed,  8 May 2019 10:31:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.68 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
	[209.85.167.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C799E00ADB
	for <yocto@yoctoproject.org>; Wed,  8 May 2019 10:30:59 -0700 (PDT)
Received: by mail-lf1-f68.google.com with SMTP id n22so7597865lfe.12
	for <yocto@yoctoproject.org>; Wed, 08 May 2019 10:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Vw/JTDNCoZH930nFRao9cNrjkVx/PGFDc4Yf/RvBpBM=;
	b=a6v8R50u1NDDe+owhu9p7eFVLbZJw9q7OyVkssV1SrD860R1hkoz1EYRg/ZAeQ3a7W
	zBS5SCBTAV3vb5YMLJTAkD3S/TW1zjYX0ac4A2d2Bsn7PZhYvIVC6G/ylxJrbrPi6ojZ
	juJD64aLB7HksxFNROd760MpkXbxTtgbLWz3ARpnpX2HtwOP4kfNarijtzMmIxmtm2Ve
	p88vi/DeorOsh8eEVyVW8geq8bv7equCpezTzT4uwJaMN8Kg/pDgxdGLIl7XvCVnu1si
	VvJLYIj3be47vOa19DS1C7phBHpdHgkvEz21kZUpzagk7WLWLs3iQcIm58ntOtwnViLv
	VALg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Vw/JTDNCoZH930nFRao9cNrjkVx/PGFDc4Yf/RvBpBM=;
	b=QqzL7OAagd/zpDBIi9sOWjp5/PUzJhvyp58rgJdU1B+HA8x87vw2YCFGnQRbPC5MSN
	JbmLkZZuo2WBbjAd55Uge5eEVbTvnv6JP1rXb4M/QPR4KfQJfq9TN5nyzuzu7bAvmgNg
	ecLdGNnto7lRVmS+CqY9+Xg+uVV1IxyzwZRdIMR5Efm22Q+tw61s1EFxDawdVqCi4uKh
	bf9JDIYJE2Ge61XFzuy+BlHnd6hYIxRGOEmcfGHGngWZgNtG9KCElsRSEh9c4PdJM3UU
	5SFfVukULniHiMWqHCQo4YWORYhNT8ricKveeJ4bD3hPp07pDvF7nuh0xxztojw/q5x5
	K+ng==
X-Gm-Message-State: APjAAAX9pQEyOpTdwdv+caqsKPd0g3ItcpwDdSDOO2YWVvKAATXmj5It
	LmtLsXFtH0oQsS7fle6+WKb4K2ITo14v3AD/Y7gdeGim
X-Google-Smtp-Source: APXvYqxpr9Y9XWh36hVocY5VJUu580CVgFZww4pQ1SyQkBKIfCBn3QD+ZXtpj30Bl1a305QRES/g3j6LsnStq1RlO6I=
X-Received: by 2002:ac2:55b5:: with SMTP id y21mr15540278lfg.84.1557336658830; 
	Wed, 08 May 2019 10:30:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190424145918.26040-1-ayaka@soulik.info>
	<20190424145918.26040-4-ayaka@soulik.info>
	<20190504030638.GB26588@linux-uys3>
	<15a392f0-fbec-cfce-980b-6904bf7e222c@soulik.info>
	<20190506133157.GA14979@linux-uys3>
	<4bfa5df9-dc5a-0ecb-c92f-5714ddaf2d89@soulik.info>
In-Reply-To: <4bfa5df9-dc5a-0ecb-c92f-5714ddaf2d89@soulik.info>
From: Trevor Woerner <twoerner@gmail.com>
Date: Wed, 8 May 2019 13:30:47 -0400
Message-ID: <CAHUNapTAAg_2iTYFDhX1HsyzDPMW1rTVpnqOt2Bg=peXzgLZFQ@mail.gmail.com>
To: ayaka <ayaka@soulik.info>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [PATCH 3/3] recipes-bsp/u-boot: update to the latest version
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
X-List-Received-Date: Wed, 08 May 2019 17:31:02 -0000
Content-Type: multipart/alternative; boundary="00000000000058699c058863b223"

--00000000000058699c058863b223
Content-Type: text/plain; charset="UTF-8"

a previous patch of yours did a:
    require recipes-bsp/u-boot/u-boot-common.inc
which defines this SRCREV

my subtle point being: I don't get the impression you're testing your
patches, or at least not testing them correctly.

the fact you're CCing Romain suggests your either using a very old branch
of https://git.yoctoproject.org/cgit/cgit.cgi/meta-rockchip/ or that you're
submitting patches to me for https://github.com/rockchip-linux/meta-rockchip
?
Unfortunately for me, when https://github.com/rockchip-linux/meta-rockchip
did a clone of https://git.yoctoproject.org/cgit/cgit.cgi/meta-rockchip/,
they left my and Romain's names as maintainers in the README (along with
instructions for github)

On Wed, May 8, 2019 at 12:19 PM ayaka <ayaka@soulik.info> wrote:

>
> On 5/6/19 9:31 PM, Trevor Woerner wrote:
> > On Sat 2019-05-04 @ 06:43:34 PM, ayaka wrote:
> >> On 5/4/19 11:06 AM, Trevor Woerner wrote:
> >>> On Wed 2019-04-24 @ 10:59:18 PM, Randy 'ayaka' Li wrote:
> >>>> From: Randy Li <ayaka@soulik.info>
> >>>>
> >>>> Signed-off-by: Randy Li <ayaka@soulik.info>
> >>>> ---
> >>>>    recipes-bsp/u-boot/u-boot-rockchip_git.bb | 18 ++++++++++++++++++
> >>>>    1 file changed, 18 insertions(+)
> >>>>    create mode 100644 recipes-bsp/u-boot/u-boot-rockchip_git.bb
> >>>>
> >>>> diff --git a/recipes-bsp/u-boot/u-boot-rockchip_git.bb
> b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
> >>>> new file mode 100644
> >>>> index 0000000..aa4b84d
> >>>> --- /dev/null
> >>>> +++ b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
> >>>> @@ -0,0 +1,18 @@
> >>>> +# Copyright (C) 2019 SUMOMO Computer Assocation
> >>>> +# Released under the MIT license (see COPYING.MIT for the terms)
> >>>> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> >>>> +
> >>>> +include u-boot-rockchip.inc
> >>>> +
> >>>> +DESCRIPTION = "Rockchip U-Boot"
> >>>> +
> >>>> +LIC_FILES_CHKSUM =
> "file://Licenses/README;md5=a2c678cfd4a4d97135585cad908541c6"
> >>>> +
> >>>> +SRC_URI = " \
> >>>> +  git://github.com/rockchip-linux/u-boot.git;branch=release; \
> >>>> +  file://binutils-2.28-ld-fix.patch \
> >>>> +  file://gcc7_fixup.patch \
> >>>> +  "
> >>>> +
> >>>> +S = "${WORKDIR}/git"
> >>>> +PV = "v2019.01"
> >>> This doesn't even get past the fetching stage:
> >> I am sorry, I forget that ssh git protocol only work for those users who
> >> uploaded their key to the github, I would change it back to https.
> >>>     WARNING: u-boot-rockchip-1_v2019.01-r0 do_fetch: Failed to fetch
> URL git://github.com/rockchip-linux/u-boot.git;branch=release;,
> attempting MIRRORS if available
> >>>     ERROR: u-boot-rockchip-1_v2019.01-r0 do_fetch: Fetcher failure:
> Unable to find revision 3c99166441bf3ea325af2da83cfe65430b49c066 in branch
> release even from upstream
> >>>     ERROR: u-boot-rockchip-1_v2019.01-r0 do_fetch: Fetcher failure for
> URL: 'git://github.com/rockchip-linux/u-boot.git;branch=release;'. Unable
> to fetch URL from any source.
> >>>     ERROR: u-boot-rockchip-1_v2019.01-r0 do_fetch:
> >>>     ERROR: u-boot-rockchip-1_v2019.01-r0 do_fetch: Function failed:
> base_do_fetch
> >>>     ERROR: Task
> (/opt/oe/configs/z/build-master/meta-rockchip/layers/meta-rockchip/recipes-bsp/u-boot/u-boot-rockchip_git.bb:do_fetch)
> failed with exit code '1'
> > The problem is that it's trying to fetch commit 3c9916 which doesn't
> exist on
> > github.com/rockchip-linux/u-boot.git. That revision is on upstream
> U-Boot.
> How comes? I didn't write any commit id there, it is based on the branch
> at all.
>

--00000000000058699c058863b223
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div>a previous patch of yours did a:</div><div>=C2=A0=C2=A0=C2=
=A0 require recipes-bsp/u-boot/u-boot-common.inc</div><div>which defines th=
is SRCREV</div><div><br></div><div>my subtle point being: I don&#39;t get t=
he impression you&#39;re testing your patches, or at least not testing them=
 correctly.</div><div><br></div><div>the fact you&#39;re CCing Romain sugge=
sts your either using a very old branch of <a href=3D"https://git.yoctoproj=
ect.org/cgit/cgit.cgi/meta-rockchip/">https://git.yoctoproject.org/cgit/cgi=
t.cgi/meta-rockchip/</a> or that you&#39;re submitting patches to me for <a=
 href=3D"https://github.com/rockchip-linux/meta-rockchip">https://github.co=
m/rockchip-linux/meta-rockchip</a> ?</div><div>Unfortunately for me, when <=
a href=3D"https://github.com/rockchip-linux/meta-rockchip">https://github.c=
om/rockchip-linux/meta-rockchip</a> did a clone of <a href=3D"https://git.y=
octoproject.org/cgit/cgit.cgi/meta-rockchip/">https://git.yoctoproject.org/=
cgit/cgit.cgi/meta-rockchip/</a>, they left my and Romain&#39;s names as ma=
intainers in the README (along with instructions for github)<br></div></div=
></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Wed, May 8, 2019 at 12:19 PM ayaka &lt;<a href=3D"mai=
lto:ayaka@soulik.info">ayaka@soulik.info</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><br>
On 5/6/19 9:31 PM, Trevor Woerner wrote:<br>
&gt; On Sat 2019-05-04 @ 06:43:34 PM, ayaka wrote:<br>
&gt;&gt; On 5/4/19 11:06 AM, Trevor Woerner wrote:<br>
&gt;&gt;&gt; On Wed 2019-04-24 @ 10:59:18 PM, Randy &#39;ayaka&#39; Li wrot=
e:<br>
&gt;&gt;&gt;&gt; From: Randy Li &lt;<a href=3D"mailto:ayaka@soulik.info" ta=
rget=3D"_blank">ayaka@soulik.info</a>&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Signed-off-by: Randy Li &lt;<a href=3D"mailto:ayaka@soulik=
.info" target=3D"_blank">ayaka@soulik.info</a>&gt;<br>
&gt;&gt;&gt;&gt; ---<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 recipes-bsp/u-boot/<a href=3D"http://u-boot-r=
ockchip_git.bb" rel=3D"noreferrer" target=3D"_blank">u-boot-rockchip_git.bb=
</a> | 18 ++++++++++++++++++<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 1 file changed, 18 insertions(+)<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 create mode 100644 recipes-bsp/u-boot/<a href=
=3D"http://u-boot-rockchip_git.bb" rel=3D"noreferrer" target=3D"_blank">u-b=
oot-rockchip_git.bb</a><br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; diff --git a/recipes-bsp/u-boot/<a href=3D"http://u-boot-r=
ockchip_git.bb" rel=3D"noreferrer" target=3D"_blank">u-boot-rockchip_git.bb=
</a> b/recipes-bsp/u-boot/<a href=3D"http://u-boot-rockchip_git.bb" rel=3D"=
noreferrer" target=3D"_blank">u-boot-rockchip_git.bb</a><br>
&gt;&gt;&gt;&gt; new file mode 100644<br>
&gt;&gt;&gt;&gt; index 0000000..aa4b84d<br>
&gt;&gt;&gt;&gt; --- /dev/null<br>
&gt;&gt;&gt;&gt; +++ b/recipes-bsp/u-boot/<a href=3D"http://u-boot-rockchip=
_git.bb" rel=3D"noreferrer" target=3D"_blank">u-boot-rockchip_git.bb</a><br=
>
&gt;&gt;&gt;&gt; @@ -0,0 +1,18 @@<br>
&gt;&gt;&gt;&gt; +# Copyright (C) 2019 SUMOMO Computer Assocation<br>
&gt;&gt;&gt;&gt; +# Released under the MIT license (see COPYING.MIT for the=
 terms)<br>
&gt;&gt;&gt;&gt; +FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot=
;<br>
&gt;&gt;&gt;&gt; +<br>
&gt;&gt;&gt;&gt; +include u-boot-rockchip.inc<br>
&gt;&gt;&gt;&gt; +<br>
&gt;&gt;&gt;&gt; +DESCRIPTION =3D &quot;Rockchip U-Boot&quot;<br>
&gt;&gt;&gt;&gt; +<br>
&gt;&gt;&gt;&gt; +LIC_FILES_CHKSUM =3D &quot;file://Licenses/README;md5=3Da=
2c678cfd4a4d97135585cad908541c6&quot;<br>
&gt;&gt;&gt;&gt; +<br>
&gt;&gt;&gt;&gt; +SRC_URI =3D &quot; \<br>
&gt;&gt;&gt;&gt; +=C2=A0 git://<a href=3D"http://github.com/rockchip-linux/=
u-boot.git;branch=3Drelease" rel=3D"noreferrer" target=3D"_blank">github.co=
m/rockchip-linux/u-boot.git;branch=3Drelease</a>; \<br>
&gt;&gt;&gt;&gt; +=C2=A0 file://binutils-2.28-ld-fix.patch \<br>
&gt;&gt;&gt;&gt; +=C2=A0 file://gcc7_fixup.patch \<br>
&gt;&gt;&gt;&gt; +=C2=A0 &quot;<br>
&gt;&gt;&gt;&gt; +<br>
&gt;&gt;&gt;&gt; +S =3D &quot;${WORKDIR}/git&quot;<br>
&gt;&gt;&gt;&gt; +PV =3D &quot;v2019.01&quot;<br>
&gt;&gt;&gt; This doesn&#39;t even get past the fetching stage:<br>
&gt;&gt; I am sorry, I forget that ssh git protocol only work for those use=
rs who<br>
&gt;&gt; uploaded their key to the github, I would change it back to https.=
<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0WARNING: u-boot-rockchip-1_v2019.01-r0 do_f=
etch: Failed to fetch URL git://<a href=3D"http://github.com/rockchip-linux=
/u-boot.git;branch=3Drelease" rel=3D"noreferrer" target=3D"_blank">github.c=
om/rockchip-linux/u-boot.git;branch=3Drelease</a>;, attempting MIRRORS if a=
vailable<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0ERROR: u-boot-rockchip-1_v2019.01-r0 do_fet=
ch: Fetcher failure: Unable to find revision 3c99166441bf3ea325af2da83cfe65=
430b49c066 in branch release even from upstream<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0ERROR: u-boot-rockchip-1_v2019.01-r0 do_fet=
ch: Fetcher failure for URL: &#39;git://<a href=3D"http://github.com/rockch=
ip-linux/u-boot.git;branch=3Drelease;" rel=3D"noreferrer" target=3D"_blank"=
>github.com/rockchip-linux/u-boot.git;branch=3Drelease;</a>&#39;. Unable to=
 fetch URL from any source.<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0ERROR: u-boot-rockchip-1_v2019.01-r0 do_fet=
ch:<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0ERROR: u-boot-rockchip-1_v2019.01-r0 do_fet=
ch: Function failed: base_do_fetch<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0ERROR: Task (/opt/oe/configs/z/build-master=
/meta-rockchip/layers/meta-rockchip/recipes-bsp/u-boot/u-boot-rockchip_git.=
bb:do_fetch) failed with exit code &#39;1&#39;<br>
&gt; The problem is that it&#39;s trying to fetch commit 3c9916 which doesn=
&#39;t exist on<br>
&gt; <a href=3D"http://github.com/rockchip-linux/u-boot.git" rel=3D"norefer=
rer" target=3D"_blank">github.com/rockchip-linux/u-boot.git</a>. That revis=
ion is on upstream U-Boot.<br>
How comes? I didn&#39;t write any commit id there, it is based on the branc=
h <br>
at all.<br>
</blockquote></div>

--00000000000058699c058863b223--
