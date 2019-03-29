Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B77EE00DBD; Fri, 29 Mar 2019 08:35:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.49 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
	[209.85.208.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5BBAE00CB9
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 08:35:13 -0700 (PDT)
Received: by mail-ed1-f49.google.com with SMTP id x61so2374969edc.9
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 08:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=8FqW0uxg6agRKKX3SY0w5P8hZYHXenpcQBI5pqLdg4I=;
	b=IIPm9WW62FWK5RUmyroXcZ6ZyanBEIw8KNu/Z9CmgJgo9DZsGWjPx8sBx0C6IdNDdN
	HzSa8V63816y4nUyooP1+dg6cwOBkDdMMaF9wIjwQZtRrEFNVKpF2sp9AnyC9sY9faJW
	HNs6+rUhkkyGV9/BVVqst1JUmYqU39esnskViE59YXPXGO24XnZ0e0RAG+Rcjtw+f+eU
	2T8gq1kiTTcYImU3aVYDcAEdUTDXX+GWkPRx1Ppnx02u0VvhkF7p3Nc5Vy1JVwuRthQB
	1SlR3PVSvocVexk48tTF3/h4a018Fjv88N7HbfFYr9ACVcpUvEpaUM0ZvCYOZIuhSvuI
	tJBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=8FqW0uxg6agRKKX3SY0w5P8hZYHXenpcQBI5pqLdg4I=;
	b=qTOmEOLR2xg01PYRaHV7BVwMMl9ebHNUekAKOjzLLLh9Bonn0qbIY3BGSkEBqRAbuk
	XpsaZXdv4FcccFsnnJ3SAhGP/F6cino3NYDM0uGgmNM/FiQRSZooI/B8dlMdwsz1o7ob
	tAVpTWFBT8bWqvUSOQy/rKTWJF/3tjoZ6tsOkI8goKYlNlePn/2vLzN08I3Zy0aksTMC
	Q2z41/O22o5UEDCPDhhzzviJmstmL73RbKNC/ukb6g7r2c+hvr++3PMjwjHHLlrjg2qP
	raLE06SE6BtGD3UEnRBrmb/AkgnUPay2rdRYP1qeXjb2OJFA/IFXHdZibuHTjDP3fMfS
	ZFXQ==
X-Gm-Message-State: APjAAAU03uTN3LguRfEvxEgBarx66Z4C371XJMy9e0bQau7QhD4hPPkz
	dXLqq2sgD2vlXykBfkdiWw7IZ3aQEVWb+dEPnhM=
X-Google-Smtp-Source: APXvYqxea2MqMwD5VtsL83WwzEg0aJ0NIEa+CRlt3SairiZDWaYzTluSQqyKmHEk2HpUu8bUvb5auVLgyyi6+Iq8kvs=
X-Received: by 2002:aa7:d0d3:: with SMTP id u19mr20463645edo.234.1553873712735;
	Fri, 29 Mar 2019 08:35:12 -0700 (PDT)
MIME-Version: 1.0
References: <CACKFPN0H50ax69a33VOs6wymGz7SoFi1_atBM2WNh3f9MV6=kQ@mail.gmail.com>
In-Reply-To: <CACKFPN0H50ax69a33VOs6wymGz7SoFi1_atBM2WNh3f9MV6=kQ@mail.gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Fri, 29 Mar 2019 08:35:01 -0700
Message-ID: <CAFNP8OsJQRU7dR15piJp=kFYfMi3b21FyK43uZB5uG3WwLhS=A@mail.gmail.com>
To: Dimitris Tassopoulos <dimtass@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Image introspection
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
X-List-Received-Date: Fri, 29 Mar 2019 15:35:15 -0000
Content-Type: multipart/alternative; boundary="000000000000ac69ad05853d6a47"

--000000000000ac69ad05853d6a47
Content-Type: text/plain; charset="UTF-8"

Hi Dimitris,

Any kind of procedures, flows, information developed that you think are
useful but not in the current YP documentation can be considered to be
added somewhere (manuals, wiki, etc.).  Is your "small tutorial" fully
captured here in your email? Or, do you have a separate document?  Any sort
of targeted task can be considered for the YP Development Tasks manual.  It
is full of various tasks that over the years have been declared important
or common.

Feel free to respond to me with any documentation suggestions/contributions
and so forth.

Scott

On Fri, Mar 29, 2019 at 1:50 AM Dimitris Tassopoulos <dimtass@gmail.com>
wrote:

> Hi all,
>
> I was thinking that the mail list shouldn't be only for problems and
> questions and that from time to time, it would be nice to see some guides,
> tutorials or success stories from people that follow the list.
>
> Anyway, a few days ago someone had an issue with one of the BSPs I'm
> maintaining and I wrote him a small guide on how to -try- to resolve future
> issues like that. Then I thought that I haven't found a small tutorial
> like this. Maybe it already exists, but nevertheless I haven't seen it.
> Of course, those things are in the documentation, but they are documented
> as individual tools (which is the correct thing to do), but it's not very
> clear how to use all those things together to perform more complex tasks.
>
> So, in my case the issue was that ofono was installed in the image and that
> needed to be removed. Probably a lot of you already know the answer but for
> me that I've never bothered with that I had to track it down how it got in
> there.
>
> Everything from now on assumes that you've setup up your bitbake
> environment
> of your build with whatever setup scripts you're using (e.g.
> *oe-init-build-env*)
>
> There are several ways to do introspection on an image. For example,
> let's say that you found a file in the in rootfs and you want to know which
> recipe added that file. Then you can use this command:
>
> oe-pkgdata-util find-path /usr/sbin/ofonod
>
>
> *oe-pkgdata-util* is a utility in *poky/scripts/oe-pkgdata-util* and
> `find-path` is pretty obvious what it does. This will return:
>
> ofono: /usr/sbin/ofonod
>
>
> So now you know that it's indeed the *ofono* recipe that adds this file.
> Next,
> you need how this did get in the image (probably some other dependency
> because you didn't). Then you can use the `-g` parameter with bitbake like
> this:
>
> bitbake -g allwinner-image
>
>
> This will create a file called `recipe-depends.dot`. This is a dot file
> that
> has all the dependencies in the image. You can use the same command to get
> the dependencies for a recipe, but now we care about the image.
>
> Next step is to search in that file, why that key is there. Why is `-w` and
> key is `-k`. You can always remember this as "-w-hy that -k-ey is there?"
> and you
> run this command:
>
> oe-depends-dot -k ofono -w recipe-depends.dot
>
>
> This will return the recipe that has this as dependency.
>
>
>> Because: allwinner-image packagegroup-base
>
>
> That means that the key is there because of allwinner-image (this is the
> image
> recipe, but it can be any other image) and because the *allwinner-image*
> inherits the
> *packagegroup-base*. So this packagegroup is the guilty.
>
> Let's find this thing now. Get in the meta layer sources folder and run
> this
>
> find . | grep packagegroup-base
>
>
> This will return
>
>> ./poky/meta/recipes-core/packagegroups/packagegroup-base.bb
>
>
> Great. Open this file to an editor and find where is *ofono*. Gotcha, is
> in:
>
> RDEPENDS_packagegroup-base-3g
>
>
> Then it's the *packagegroup-base-3g* that does that. Probably that's a
> recipe
> or package group file, so you can run:
>
> find . | grep packagegroup-base-3g
>
>
> But you get nothing... Then probably this is declared somewhere a file with
> another name, so let's search inside the files in the poky layer:
>
> grep -nriI ackagegroup-base-3g
>
>
> And we get:
>
> poky/meta/recipes-core/packagegroups/packagegroup-base.bb:35:
>> ${@bb.utils.contains("DISTRO_FEATURES", "3g", "packagegroup-base-3g", "",
>> d)} \
>> poky/meta/recipes-core/packagegroups/packagegroup-base.bb:73:
>> ${@bb.utils.contains('COMBINED_FEATURES', '3g', 'packagegroup-base-3g',
>> '',d)} \
>> poky/meta/recipes-core/packagegroups/packagegroup-base.bb:122:
>> d.setVar("ADD_3G", "packagegroup-base-3g")
>> poky/meta/recipes-core/packagegroups/packagegroup-base.bb:316:SUMMARY_packagegroup-base-3g
>> = "Cellular data support"
>> poky/meta/recipes-core/packagegroups/packagegroup-base.bb:317:RDEPENDS_packagegroup-base-3g
>> = "\
>> poky/meta/recipes-core/packagegroups/packagegroup-base.bb:320:RRECOMMENDS_packagegroup-base-3g
>> = "\
>
>
>
> So it's actually in the same file that we already opened. Here you can
> facepalm,
> but we didn't know that, so this would be the procedure anyways to track
> it down.
> Now, search for *packagegroup-base-3g* inside the *poky/meta/recipes-core/packagegroups/packagegroup-base.bb
> <http://packagegroup-base.bb>*
> and you see this line:
>
> ${@bb.utils.contains("DISTRO_FEATURES", "3g", "packagegroup-base-3g", "",
>> d)} \
>
>
> Therefore the *3g* in the *DISTRO_FEATURES* actually added *ofono*. That
> means that,
> we need to remove the *3g* string from our *DISTRO_FEATURES*.
>
> To do that, add this to your build/conf/local.conf file
>
> DISTRO_FEATURES_remove = " 3g"
>
>
> Now just to be sure, run this to clean *ofono* from cache and everywhere
> else:
>
> bitbake -c cleanall ofono
>
>
> And then rebuild the image:
>
> bitbake image-name
>
>
> Now you'll see that *ofono* won't b e downloaded or get built and it
> won't be in your image.
>
> I hope the above guide helps a bit.
>
> I would be glad to get better suggestions or other people experience on
> how they introspect their images and solve related issues.
>
> Regards,
> Dimitris
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000ac69ad05853d6a47
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Dimitris, <br></div><div><br></div><div>Any kind o=
f procedures, flows, information developed that you think are useful but no=
t in the current YP documentation can be considered to be added somewhere (=
manuals, wiki, etc.).=C2=A0 Is your &quot;small tutorial&quot; fully captur=
ed here in your email? Or, do you have a separate document?=C2=A0 Any sort =
of targeted task can be considered for the YP Development Tasks manual.=C2=
=A0 It is full of various tasks that over the years have been declared impo=
rtant or common. <br></div><div><br></div><div>Feel free to respond to me w=
ith any documentation suggestions/contributions and so forth.</div><div><br=
></div><div>Scott<br></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Fri, Mar 29, 2019 at 1:50 AM Dimitris Tassopo=
ulos &lt;<a href=3D"mailto:dimtass@gmail.com">dimtass@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I was thinking =
that the mail list shouldn&#39;t be only for problems and</div><div>questio=
ns and that from time to time, it would be nice to see some guides,</div><d=
iv>tutorials or success stories from people that follow the list.</div><div=
><br></div><div>Anyway, a few days ago someone had an issue with one of the=
 BSPs I&#39;m</div><div>maintaining and I wrote him a small guide on how to=
 -try- to resolve future</div><div>issues like that. Then I thought that I =
haven&#39;t found a small tutorial</div><div>like this. Maybe it already ex=
ists, but nevertheless I haven&#39;t seen it.</div><div>Of course, those th=
ings are in the documentation, but they are documented</div><div>as individ=
ual tools (which is the correct thing to do), but it&#39;s not very</div><d=
iv>clear how to use all those things together to perform more complex tasks=
.</div><div><br></div><div>So, in my case the issue was that ofono was inst=
alled in the image and that</div><div>needed to be removed. Probably a lot =
of you already know the answer but for</div><div>me that I&#39;ve never bot=
hered with that I had to track it down how it got in</div><div>there.</div>=
<div><br></div><div>Everything from now on assumes that you&#39;ve setup up=
 your bitbake environment</div><div>of your build with whatever setup scrip=
ts you&#39;re using (e.g. <i>oe-init-build-env</i>)</div><div><br></div><di=
v>There are several ways to do introspection on an image. For example,</div=
><div>let&#39;s say that you found a file in the in rootfs and you want to =
know which</div><div>recipe added that file. Then you can use this command:=
</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">oe-p=
kgdata-util find-path /usr/sbin/ofonod</blockquote><div><i><br></i></div><d=
iv><i>oe-pkgdata-util</i> is a utility in <i>poky/scripts/oe-pkgdata-util</=
i> and</div><div>`find-path` is pretty obvious what it does. This will retu=
rn:</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">o=
fono: /usr/sbin/ofonod</blockquote><div><br></div><div>So now you know that=
 it&#39;s indeed the <i>ofono</i> recipe that adds this file. Next,</div><d=
iv>you need how this did get in the image (probably some other dependency</=
div><div>because you didn&#39;t). Then you can use the `-g` parameter with =
bitbake like this:</div><div><br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">bitbake -g allwinner-image</blockquote><div><br></div><div>Th=
is will create a file called `recipe-depends.dot`. This is a dot file that<=
/div><div>has all the dependencies in the image. You can use the same comma=
nd to get</div><div>the dependencies for a recipe, but now we care about th=
e image.</div><div><br></div><div>Next step is to search in that file, why =
that key is there. Why is `-w` and</div><div>key is `-k`. You can always re=
member this as &quot;-w-hy that -k-ey is there?&quot; and you</div><div>run=
 this command:</div><div><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">oe-depends-dot -k ofono -w recipe-depends.dot</blockquote><div><=
br></div><div>This will return the recipe that has this as dependency.</div=
><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Because=
: allwinner-image packagegroup-base</blockquote><div><br></div><div>That me=
ans that the key is there because of allwinner-image (this is the image</di=
v><div>recipe, but it can be any other image) and because the <i>allwinner-=
image</i> inherits the</div><div><i>packagegroup-base</i>. So this packageg=
roup is the guilty.</div><div><br></div><div>Let&#39;s find this thing now.=
 Get in the meta layer sources folder and run this</div><div><br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">find . | grep packagegroup-ba=
se</blockquote><div><br></div><div>This will return</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">./poky/meta/recipes-core/packagegroups/<a =
href=3D"http://packagegroup-base.bb" target=3D"_blank">packagegroup-base.bb=
</a></blockquote><div><br></div><div>Great. Open this file to an editor and=
 find where is <i>ofono</i>. Gotcha, is in:</div><div><br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">RDEPENDS_packagegroup-base-3g</block=
quote><div><br></div><div>Then it&#39;s the <i>packagegroup-base-3g</i>=C2=
=A0that does that. Probably that&#39;s a recipe</div><div>or package group =
file, so you can run:</div><div><br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">find . | grep packagegroup-base-3g</blockquote><div><br></=
div><div>But you get nothing... Then probably this is declared somewhere a =
file with</div><div>another name, so let&#39;s search inside the files in t=
he poky layer:</div><div><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">grep -nriI ackagegroup-base-3g</blockquote><div><br></div><div>A=
nd we get:</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">poky/meta/recipes-core/packagegroups/<a href=3D"http://packagegroup-b=
ase.bb:35" target=3D"_blank">packagegroup-base.bb:35</a>:=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 ${@bb.utils.contains(&quot;DISTRO_FEATURES&quot;, =
&quot;3g&quot;, &quot;packagegroup-base-3g&quot;, &quot;&quot;, d)} \<br>po=
ky/meta/recipes-core/packagegroups/<a href=3D"http://packagegroup-base.bb:7=
3" target=3D"_blank">packagegroup-base.bb:73</a>:=C2=A0 =C2=A0 ${@bb.utils.=
contains(&#39;COMBINED_FEATURES&#39;, &#39;3g&#39;, &#39;packagegroup-base-=
3g&#39;, &#39;&#39;,d)} \<br>poky/meta/recipes-core/packagegroups/<a href=
=3D"http://packagegroup-base.bb:122" target=3D"_blank">packagegroup-base.bb=
:122</a>:=C2=A0 =C2=A0 =C2=A0 =C2=A0 d.setVar(&quot;ADD_3G&quot;, &quot;pac=
kagegroup-base-3g&quot;)<br>poky/meta/recipes-core/packagegroups/packagegro=
up-base.bb:316:SUMMARY_packagegroup-base-3g =3D &quot;Cellular data support=
&quot;<br>poky/meta/recipes-core/packagegroups/packagegroup-base.bb:317:RDE=
PENDS_packagegroup-base-3g =3D &quot;\<br>poky/meta/recipes-core/packagegro=
ups/packagegroup-base.bb:320:RRECOMMENDS_packagegroup-base-3g =3D &quot;\</=
blockquote><div><br></div><div><br></div><div>So it&#39;s actually in the s=
ame file that we already opened. Here you can facepalm,</div><div>but we di=
dn&#39;t know that, so this would be the procedure anyways to track it down=
.</div><div>Now, search for <i>packagegroup-base-3g</i> inside the <i>poky/=
meta/recipes-core/packagegroups/<a href=3D"http://packagegroup-base.bb" tar=
get=3D"_blank">packagegroup-base.bb</a></i></div><div>and you see this line=
:</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">${@=
bb.utils.contains(&quot;DISTRO_FEATURES&quot;, &quot;3g&quot;, &quot;packag=
egroup-base-3g&quot;, &quot;&quot;, d)} \</blockquote><div><br></div><div>T=
herefore the <i>3g</i> in the <i>DISTRO_FEATURES</i> actually added <i>ofon=
o</i>. That means that,</div><div>we need to remove the <i>3g</i> string fr=
om our <i>DISTRO_FEATURES</i>.</div><div><br></div><div>To do that, add thi=
s to your build/conf/local.conf file</div><div><br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">DISTRO_FEATURES_remove =3D &quot; 3g&quot;=
</blockquote><div><br></div><div>Now just to be sure, run this to clean <i>=
ofono</i> from cache and everywhere else:</div><div><br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">bitbake -c cleanall ofono=C2=A0</block=
quote><div><br></div><div>And then rebuild the image:</div><div><br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">bitbake image-name</blockq=
uote><div><br></div><div>Now you&#39;ll see that <i>ofono</i> won&#39;t b e=
 downloaded or get built and it won&#39;t be in your image.</div><div><br><=
/div><div>I hope the above guide helps a bit.</div><div><br></div><div>I wo=
uld be glad to get better suggestions or other people experience on</div><d=
iv>how they introspect their images and solve related issues.</div><div><br=
></div><div>Regards,</div><div>Dimitris</div><div><br></div></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000ac69ad05853d6a47--
