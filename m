Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFF6EE00D2A; Fri, 29 Mar 2019 01:50:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dimtass[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.68 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
	[209.85.210.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3ECA3E00D26
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 01:50:32 -0700 (PDT)
Received: by mail-ot1-f68.google.com with SMTP id t8so1313285otp.7
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 01:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=5ptv/xwgWHPPR4SyqwxTLEloPTR3N8ZvqeC3RMmSWPU=;
	b=aYxXsYXI6GL09Or4f2KA28rZ7YthXKd5fhngOXaoF+uyc9MOtKVu8zFpyv6p9FPSsj
	uu3FYGwaeEQU+ariNbY9gUUTO2tenPzLRZkPpqU7x7tllILGJtROyhRo2PmObkld6GzX
	dys2BwQdJxxvwqQN9jfm+N9AYn3bER5NNCGBJpQSSUsu6ffyO+NlRe6cSYrH3epRxykD
	79dtWcqvaCf5bkg15RRtPM05zIbUOZhxmrGlpZrg8eaYsWzosCsNPzzMlpHxH1iJ35SS
	/PTcVrnnq/nH9dmXwVllishJf+7LHedJA9wtLiDpy6WWsd45c6zeIKyEj2NLOC7Jn08c
	Hkig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=5ptv/xwgWHPPR4SyqwxTLEloPTR3N8ZvqeC3RMmSWPU=;
	b=JRdqJZTvU7VbyBUfFQ7+8jxCcZUcfEk2izeNrVBK8r30J7BMbFOw47gPumx3ceyZeV
	FRudLH6cv6J7e+1lZ6rgaLPqGSf68xoParZJVgQqQq4NkxoyYBMXFPrFDQlzc9Nl5EVD
	P2l444nrUNXo/2BPA/CThvkkoMsFlI28WX67Xj0d1zvVbIYYlyRSdMChZLk/OuKK7edw
	lyQg8eRe32WTRLMRiOb2oR8yzvs8KDVVVXM66glGhFwRL8opY2FqFnv0SKAtarHPnMOc
	H7+u9r118vG2QQCdbmplDkf/vy5jQ9Gi3X4IhUIs100DYD6xG7gG8vRW8qXqDbXLCP+m
	7s+w==
X-Gm-Message-State: APjAAAV8r/yEXTphN+2jdZ203L5uTalyKwOSNk+T7lAF9h1+oUnnr7OQ
	ch6DVHVhGUzaQjT62VC9uhbnTZOQpA8rhHVN1tnqK32BHMA=
X-Google-Smtp-Source: APXvYqxL600ItbsNhcyTRCLgMkOFvpDN0a2cV+/kiF362vr+/yjkDnUmtBUWIkgf0JJaoHZHJJp35e7W5XG6+wYTOZo=
X-Received: by 2002:a05:6830:12d1:: with SMTP id
	a17mr34132825otq.123.1553849431322; 
	Fri, 29 Mar 2019 01:50:31 -0700 (PDT)
MIME-Version: 1.0
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Fri, 29 Mar 2019 09:50:20 +0100
Message-ID: <CACKFPN0H50ax69a33VOs6wymGz7SoFi1_atBM2WNh3f9MV6=kQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Image introspection
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
X-List-Received-Date: Fri, 29 Mar 2019 08:50:33 -0000
Content-Type: multipart/alternative; boundary="0000000000006378a9058537c30d"

--0000000000006378a9058537c30d
Content-Type: text/plain; charset="UTF-8"

Hi all,

I was thinking that the mail list shouldn't be only for problems and
questions and that from time to time, it would be nice to see some guides,
tutorials or success stories from people that follow the list.

Anyway, a few days ago someone had an issue with one of the BSPs I'm
maintaining and I wrote him a small guide on how to -try- to resolve future
issues like that. Then I thought that I haven't found a small tutorial
like this. Maybe it already exists, but nevertheless I haven't seen it.
Of course, those things are in the documentation, but they are documented
as individual tools (which is the correct thing to do), but it's not very
clear how to use all those things together to perform more complex tasks.

So, in my case the issue was that ofono was installed in the image and that
needed to be removed. Probably a lot of you already know the answer but for
me that I've never bothered with that I had to track it down how it got in
there.

Everything from now on assumes that you've setup up your bitbake environment
of your build with whatever setup scripts you're using (e.g.
*oe-init-build-env*)

There are several ways to do introspection on an image. For example,
let's say that you found a file in the in rootfs and you want to know which
recipe added that file. Then you can use this command:

oe-pkgdata-util find-path /usr/sbin/ofonod


*oe-pkgdata-util* is a utility in *poky/scripts/oe-pkgdata-util* and
`find-path` is pretty obvious what it does. This will return:

ofono: /usr/sbin/ofonod


So now you know that it's indeed the *ofono* recipe that adds this file.
Next,
you need how this did get in the image (probably some other dependency
because you didn't). Then you can use the `-g` parameter with bitbake like
this:

bitbake -g allwinner-image


This will create a file called `recipe-depends.dot`. This is a dot file that
has all the dependencies in the image. You can use the same command to get
the dependencies for a recipe, but now we care about the image.

Next step is to search in that file, why that key is there. Why is `-w` and
key is `-k`. You can always remember this as "-w-hy that -k-ey is there?"
and you
run this command:

oe-depends-dot -k ofono -w recipe-depends.dot


This will return the recipe that has this as dependency.


> Because: allwinner-image packagegroup-base


That means that the key is there because of allwinner-image (this is the
image
recipe, but it can be any other image) and because the *allwinner-image*
inherits the
*packagegroup-base*. So this packagegroup is the guilty.

Let's find this thing now. Get in the meta layer sources folder and run this

find . | grep packagegroup-base


This will return

> ./poky/meta/recipes-core/packagegroups/packagegroup-base.bb


Great. Open this file to an editor and find where is *ofono*. Gotcha, is in:

RDEPENDS_packagegroup-base-3g


Then it's the *packagegroup-base-3g* that does that. Probably that's a
recipe
or package group file, so you can run:

find . | grep packagegroup-base-3g


But you get nothing... Then probably this is declared somewhere a file with
another name, so let's search inside the files in the poky layer:

grep -nriI ackagegroup-base-3g


And we get:

poky/meta/recipes-core/packagegroups/packagegroup-base.bb:35:
> ${@bb.utils.contains("DISTRO_FEATURES", "3g", "packagegroup-base-3g", "",
> d)} \
> poky/meta/recipes-core/packagegroups/packagegroup-base.bb:73:
> ${@bb.utils.contains('COMBINED_FEATURES', '3g', 'packagegroup-base-3g',
> '',d)} \
> poky/meta/recipes-core/packagegroups/packagegroup-base.bb:122:
> d.setVar("ADD_3G", "packagegroup-base-3g")
> poky/meta/recipes-core/packagegroups/packagegroup-base.bb:316:SUMMARY_packagegroup-base-3g
> = "Cellular data support"
> poky/meta/recipes-core/packagegroups/packagegroup-base.bb:317:RDEPENDS_packagegroup-base-3g
> = "\
> poky/meta/recipes-core/packagegroups/packagegroup-base.bb:320:RRECOMMENDS_packagegroup-base-3g
> = "\



So it's actually in the same file that we already opened. Here you can
facepalm,
but we didn't know that, so this would be the procedure anyways to track it
down.
Now, search for *packagegroup-base-3g* inside the
*poky/meta/recipes-core/packagegroups/packagegroup-base.bb
<http://packagegroup-base.bb>*
and you see this line:

${@bb.utils.contains("DISTRO_FEATURES", "3g", "packagegroup-base-3g", "",
> d)} \


Therefore the *3g* in the *DISTRO_FEATURES* actually added *ofono*. That
means that,
we need to remove the *3g* string from our *DISTRO_FEATURES*.

To do that, add this to your build/conf/local.conf file

DISTRO_FEATURES_remove = " 3g"


Now just to be sure, run this to clean *ofono* from cache and everywhere
else:

bitbake -c cleanall ofono


And then rebuild the image:

bitbake image-name


Now you'll see that *ofono* won't b e downloaded or get built and it won't
be in your image.

I hope the above guide helps a bit.

I would be glad to get better suggestions or other people experience on
how they introspect their images and solve related issues.

Regards,
Dimitris

--0000000000006378a9058537c30d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I w=
as thinking that the mail list shouldn&#39;t be only for problems and</div>=
<div>questions and that from time to time, it would be nice to see some gui=
des,</div><div>tutorials or success stories from people that follow the lis=
t.</div><div><br></div><div>Anyway, a few days ago someone had an issue wit=
h one of the BSPs I&#39;m</div><div>maintaining and I wrote him a small gui=
de on how to -try- to resolve future</div><div>issues like that. Then I tho=
ught that I haven&#39;t found a small tutorial</div><div>like this. Maybe i=
t already exists, but nevertheless I haven&#39;t seen it.</div><div>Of cour=
se, those things are in the documentation, but they are documented</div><di=
v>as individual tools (which is the correct thing to do), but it&#39;s not =
very</div><div>clear how to use all those things together to perform more c=
omplex tasks.</div><div><br></div><div>So, in my case the issue was that of=
ono was installed in the image and that</div><div>needed to be removed. Pro=
bably a lot of you already know the answer but for</div><div>me that I&#39;=
ve never bothered with that I had to track it down how it got in</div><div>=
there.</div><div><br></div><div>Everything from now on assumes that you&#39=
;ve setup up your bitbake environment</div><div>of your build with whatever=
 setup scripts you&#39;re using (e.g. <i>oe-init-build-env</i>)</div><div><=
br></div><div>There are several ways to do introspection on an image. For e=
xample,</div><div>let&#39;s say that you found a file in the in rootfs and =
you want to know which</div><div>recipe added that file. Then you can use t=
his command:</div><div><br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">oe-pkgdata-util find-path /usr/sbin/ofonod</blockquote><div><i><br>=
</i></div><div><i>oe-pkgdata-util</i> is a utility in <i>poky/scripts/oe-pk=
gdata-util</i> and</div><div>`find-path` is pretty obvious what it does. Th=
is will return:</div><div><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">ofono: /usr/sbin/ofonod</blockquote><div><br></div><div>So now y=
ou know that it&#39;s indeed the <i>ofono</i> recipe that adds this file. N=
ext,</div><div>you need how this did get in the image (probably some other =
dependency</div><div>because you didn&#39;t). Then you can use the `-g` par=
ameter with bitbake like this:</div><div><br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">bitbake -g allwinner-image</blockquote><div><br><=
/div><div>This will create a file called `recipe-depends.dot`. This is a do=
t file that</div><div>has all the dependencies in the image. You can use th=
e same command to get</div><div>the dependencies for a recipe, but now we c=
are about the image.</div><div><br></div><div>Next step is to search in tha=
t file, why that key is there. Why is `-w` and</div><div>key is `-k`. You c=
an always remember this as &quot;-w-hy that -k-ey is there?&quot; and you</=
div><div>run this command:</div><div><br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">oe-depends-dot -k ofono -w recipe-depends.dot</blockq=
uote><div><br></div><div>This will return the recipe that has this as depen=
dency.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">Because: allwinner-image packagegroup-base</blockquote><div><br></div><=
div>That means that the key is there because of allwinner-image (this is th=
e image</div><div>recipe, but it can be any other image) and because the <i=
>allwinner-image</i> inherits the</div><div><i>packagegroup-base</i>. So th=
is packagegroup is the guilty.</div><div><br></div><div>Let&#39;s find this=
 thing now. Get in the meta layer sources folder and run this</div><div><br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">find . | grep pack=
agegroup-base</blockquote><div><br></div><div>This will return</div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">./poky/meta/recipes-core/package=
groups/<a href=3D"http://packagegroup-base.bb">packagegroup-base.bb</a></bl=
ockquote><div><br></div><div>Great. Open this file to an editor and find wh=
ere is <i>ofono</i>. Gotcha, is in:</div><div><br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">RDEPENDS_packagegroup-base-3g</blockquote>=
<div><br></div><div>Then it&#39;s the <i>packagegroup-base-3g</i>=C2=A0that=
 does that. Probably that&#39;s a recipe</div><div>or package group file, s=
o you can run:</div><div><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">find . | grep packagegroup-base-3g</blockquote><div><br></div><d=
iv>But you get nothing... Then probably this is declared somewhere a file w=
ith</div><div>another name, so let&#39;s search inside the files in the pok=
y layer:</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">grep -nriI ackagegroup-base-3g</blockquote><div><br></div><div>And we g=
et:</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">p=
oky/meta/recipes-core/packagegroups/<a href=3D"http://packagegroup-base.bb:=
35">packagegroup-base.bb:35</a>:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $=
{@bb.utils.contains(&quot;DISTRO_FEATURES&quot;, &quot;3g&quot;, &quot;pack=
agegroup-base-3g&quot;, &quot;&quot;, d)} \<br>poky/meta/recipes-core/packa=
gegroups/<a href=3D"http://packagegroup-base.bb:73">packagegroup-base.bb:73=
</a>:=C2=A0 =C2=A0 ${@bb.utils.contains(&#39;COMBINED_FEATURES&#39;, &#39;3=
g&#39;, &#39;packagegroup-base-3g&#39;, &#39;&#39;,d)} \<br>poky/meta/recip=
es-core/packagegroups/<a href=3D"http://packagegroup-base.bb:122">packagegr=
oup-base.bb:122</a>:=C2=A0 =C2=A0 =C2=A0 =C2=A0 d.setVar(&quot;ADD_3G&quot;=
, &quot;packagegroup-base-3g&quot;)<br>poky/meta/recipes-core/packagegroups=
/packagegroup-base.bb:316:SUMMARY_packagegroup-base-3g =3D &quot;Cellular d=
ata support&quot;<br>poky/meta/recipes-core/packagegroups/packagegroup-base=
.bb:317:RDEPENDS_packagegroup-base-3g =3D &quot;\<br>poky/meta/recipes-core=
/packagegroups/packagegroup-base.bb:320:RRECOMMENDS_packagegroup-base-3g =
=3D &quot;\</blockquote><div><br></div><div><br></div><div>So it&#39;s actu=
ally in the same file that we already opened. Here you can facepalm,</div><=
div>but we didn&#39;t know that, so this would be the procedure anyways to =
track it down.</div><div>Now, search for <i>packagegroup-base-3g</i> inside=
 the <i>poky/meta/recipes-core/packagegroups/<a href=3D"http://packagegroup=
-base.bb">packagegroup-base.bb</a></i></div><div>and you see this line:</di=
v><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">${@bb.ut=
ils.contains(&quot;DISTRO_FEATURES&quot;, &quot;3g&quot;, &quot;packagegrou=
p-base-3g&quot;, &quot;&quot;, d)} \</blockquote><div><br></div><div>Theref=
ore the <i>3g</i> in the <i>DISTRO_FEATURES</i> actually added <i>ofono</i>=
. That means that,</div><div>we need to remove the <i>3g</i> string from ou=
r <i>DISTRO_FEATURES</i>.</div><div><br></div><div>To do that, add this to =
your build/conf/local.conf file</div><div><br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">DISTRO_FEATURES_remove =3D &quot; 3g&quot;</bloc=
kquote><div><br></div><div>Now just to be sure, run this to clean <i>ofono<=
/i> from cache and everywhere else:</div><div><br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">bitbake -c cleanall ofono=C2=A0</blockquot=
e><div><br></div><div>And then rebuild the image:</div><div><br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">bitbake image-name</blockquote=
><div><br></div><div>Now you&#39;ll see that <i>ofono</i> won&#39;t b e dow=
nloaded or get built and it won&#39;t be in your image.</div><div><br></div=
><div>I hope the above guide helps a bit.</div><div><br></div><div>I would =
be glad to get better suggestions or other people experience on</div><div>h=
ow they introspect their images and solve related issues.</div><div><br></d=
iv><div>Regards,</div><div>Dimitris</div><div><br></div></div></div>

--0000000000006378a9058537c30d--
