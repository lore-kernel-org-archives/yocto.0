Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EF2EE00D24; Fri, 29 Mar 2019 02:05:21 -0700 (PDT)
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
	*      [209.85.167.195 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
	[209.85.167.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38DB7E00BAF
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 02:05:20 -0700 (PDT)
Received: by mail-oi1-f195.google.com with SMTP id j132so1104097oib.2
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 02:05:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=NKUNTyqk+H6xalB5C/D55wd2ABIEFuJSKJZGNToS6nc=;
	b=Z08DdY/DO7vv1pXFo8KJwcU/ojgqdY9gvc8r9eQu2FIpTHU03nBa0WhyjsNjqEXoSV
	cj9HrpONWEuAJRUG2kKOyocOd3ERzF/CQAAaSrDJItaeAe2qUSTFkA9klGJXpoY646qX
	R9csNxrzjgu24bfP4qqwZl9r+9nRfcFK15fORKBgUANwTcB+J8N/79ZJ6McacPZAiJcI
	sRCMrtw3v6SIf6A2jS1F5l4Z7YvmuA4pTpbZele8Ge3iygSp8phFgup4S1Ffoesr6P1q
	PoPDJF8GdbDSEXt+dpgZUkD/wnKgntr2UPo3ZR7HHkvaSb5vcRHJ1XI40ptIgIIDua/L
	I4mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=NKUNTyqk+H6xalB5C/D55wd2ABIEFuJSKJZGNToS6nc=;
	b=RKis0hnhcBOqwXelodlu688JxEJFGE3ttZxQCtQDJpbqZD2EBfQMkbi2l/pYWndKfJ
	Fcv84l1RHahWzsvCsmg28/n2FJiCBORONZRmdsgz3cMhmUbvu62fXef1p5xNGPikgyEN
	SPEpcmV0HmgRVu3aPsOXDu3wJE/ovoWBLDfvlXefv8nFYc4+o47qYfEJPxq0LPBCcY2W
	grm2+U36BtBivzUnzBTI89qQcRiuwoCoDTWepvd7JlBQJvyMG6Tl601z+2j/XUSTItCu
	mO09wlSAzRT6Ikg8FbH82Te70UZBjPqoQryYGDAvATnU0ZcoOeX2OJs+ZHl4x8ONuvb7
	p+rw==
X-Gm-Message-State: APjAAAWuDMerGjigEd9yZ8J/yK0xUkeX+FtefKraaJXLLksmlK4gnVJg
	OU6sHtOBZoSSx39yH/44BU/pr2FkSWxNGiRi6izFUcIO
X-Google-Smtp-Source: APXvYqyM7iDMsgQ31+YHRBofQXUhw/KtaEdPIIvbTpzIimJg8NBGuImUAwRHN0FrcL+6S/uNRpFHo0lz2+wdQB4HNno=
X-Received: by 2002:aca:c483:: with SMTP id u125mr2845810oif.148.1553850319431;
	Fri, 29 Mar 2019 02:05:19 -0700 (PDT)
MIME-Version: 1.0
References: <CACKFPN0H50ax69a33VOs6wymGz7SoFi1_atBM2WNh3f9MV6=kQ@mail.gmail.com>
	<20190329085934.GA20077@hiutale>
In-Reply-To: <20190329085934.GA20077@hiutale>
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Fri, 29 Mar 2019 10:05:08 +0100
Message-ID: <CACKFPN3buJg75txg4mUSqQGmbcWqMdBU1Otd11niRn=yWRsZ7w@mail.gmail.com>
To: Mikko.Rapeli@bmw.de
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
X-List-Received-Date: Fri, 29 Mar 2019 09:05:21 -0000
Content-Type: multipart/alternative; boundary="00000000000052ed71058537f872"

--00000000000052ed71058537f872
Content-Type: text/plain; charset="UTF-8"

Hi Mikko, thanks for pointing out the buildhistory.
I need to have a look at it also as I haven't used it yet.
Also, it's very nice to see it documented so well.

Thanks!

On Fri, Mar 29, 2019 at 9:59 AM <Mikko.Rapeli@bmw.de> wrote:

> On Fri, Mar 29, 2019 at 09:50:20AM +0100, Dimitris Tassopoulos wrote:
> > Hi all,
> >
> > I was thinking that the mail list shouldn't be only for problems and
> > questions and that from time to time, it would be nice to see some
> guides,
> > tutorials or success stories from people that follow the list.
> >
> > Anyway, a few days ago someone had an issue with one of the BSPs I'm
> > maintaining and I wrote him a small guide on how to -try- to resolve
> future
> > issues like that. Then I thought that I haven't found a small tutorial
> > like this. Maybe it already exists, but nevertheless I haven't seen it.
> > Of course, those things are in the documentation, but they are documented
> > as individual tools (which is the correct thing to do), but it's not very
> > clear how to use all those things together to perform more complex tasks.
> >
> > So, in my case the issue was that ofono was installed in the image and
> that
> > needed to be removed. Probably a lot of you already know the answer but
> for
> > me that I've never bothered with that I had to track it down how it got
> in
> > there.
> >
> > Everything from now on assumes that you've setup up your bitbake
> environment
> > of your build with whatever setup scripts you're using (e.g.
> > *oe-init-build-env*)
> >
> > There are several ways to do introspection on an image. For example,
> > let's say that you found a file in the in rootfs and you want to know
> which
> > recipe added that file. Then you can use this command:
> >
> > oe-pkgdata-util find-path /usr/sbin/ofonod
> >
> >
> > *oe-pkgdata-util* is a utility in *poky/scripts/oe-pkgdata-util* and
> > `find-path` is pretty obvious what it does. This will return:
> >
> > ofono: /usr/sbin/ofonod
> >
> >
> > So now you know that it's indeed the *ofono* recipe that adds this file.
> > Next,
> > you need how this did get in the image (probably some other dependency
> > because you didn't). Then you can use the `-g` parameter with bitbake
> like
> > this:
> >
> > bitbake -g allwinner-image
> >
> >
> > This will create a file called `recipe-depends.dot`. This is a dot file
> that
> > has all the dependencies in the image. You can use the same command to
> get
> > the dependencies for a recipe, but now we care about the image.
> >
> > Next step is to search in that file, why that key is there. Why is `-w`
> and
> > key is `-k`. You can always remember this as "-w-hy that -k-ey is there?"
> > and you
> > run this command:
> >
> > oe-depends-dot -k ofono -w recipe-depends.dot
> >
> >
> > This will return the recipe that has this as dependency.
> >
> >
> > > Because: allwinner-image packagegroup-base
> >
> >
> > That means that the key is there because of allwinner-image (this is the
> > image
> > recipe, but it can be any other image) and because the *allwinner-image*
> > inherits the
> > *packagegroup-base*. So this packagegroup is the guilty.
> >
> > Let's find this thing now. Get in the meta layer sources folder and run
> this
> >
> > find . | grep packagegroup-base
> >
> >
> > This will return
> >
> > > ./poky/meta/recipes-core/packagegroups/packagegroup-base.bb
> >
> >
> > Great. Open this file to an editor and find where is *ofono*. Gotcha, is
> in:
> >
> > RDEPENDS_packagegroup-base-3g
> >
> >
> > Then it's the *packagegroup-base-3g* that does that. Probably that's a
> > recipe
> > or package group file, so you can run:
> >
> > find . | grep packagegroup-base-3g
> >
> >
> > But you get nothing... Then probably this is declared somewhere a file
> with
> > another name, so let's search inside the files in the poky layer:
> >
> > grep -nriI ackagegroup-base-3g
> >
> >
> > And we get:
> >
> > poky/meta/recipes-core/packagegroups/packagegroup-base.bb:35:
> > > ${@bb.utils.contains("DISTRO_FEATURES", "3g", "packagegroup-base-3g",
> "",
> > > d)} \
> > > poky/meta/recipes-core/packagegroups/packagegroup-base.bb:73:
> > > ${@bb.utils.contains('COMBINED_FEATURES', '3g', 'packagegroup-base-3g',
> > > '',d)} \
> > > poky/meta/recipes-core/packagegroups/packagegroup-base.bb:122:
> > > d.setVar("ADD_3G", "packagegroup-base-3g")
> > > poky/meta/recipes-core/packagegroups/packagegroup-base.bb:316
> :SUMMARY_packagegroup-base-3g
> > > = "Cellular data support"
> > > poky/meta/recipes-core/packagegroups/packagegroup-base.bb:317
> :RDEPENDS_packagegroup-base-3g
> > > = "\
> > > poky/meta/recipes-core/packagegroups/packagegroup-base.bb:320
> :RRECOMMENDS_packagegroup-base-3g
> > > = "\
> >
> >
> >
> > So it's actually in the same file that we already opened. Here you can
> > facepalm,
> > but we didn't know that, so this would be the procedure anyways to track
> it
> > down.
> > Now, search for *packagegroup-base-3g* inside the
> > *poky/meta/recipes-core/packagegroups/packagegroup-base.bb
> > <http://packagegroup-base.bb>*
> > and you see this line:
> >
> > ${@bb.utils.contains("DISTRO_FEATURES", "3g", "packagegroup-base-3g", "",
> > > d)} \
> >
> >
> > Therefore the *3g* in the *DISTRO_FEATURES* actually added *ofono*. That
> > means that,
> > we need to remove the *3g* string from our *DISTRO_FEATURES*.
> >
> > To do that, add this to your build/conf/local.conf file
> >
> > DISTRO_FEATURES_remove = " 3g"
> >
> >
> > Now just to be sure, run this to clean *ofono* from cache and everywhere
> > else:
> >
> > bitbake -c cleanall ofono
> >
> >
> > And then rebuild the image:
> >
> > bitbake image-name
> >
> >
> > Now you'll see that *ofono* won't b e downloaded or get built and it
> won't
> > be in your image.
> >
> > I hope the above guide helps a bit.
> >
> > I would be glad to get better suggestions or other people experience on
> > how they introspect their images and solve related issues.
>
> Thanks for this useful summary of tools.
>
> I use buildhistory a lot. It contains recipe, binary package, image and SDK
> metadata. Many of the queries and tools you mentioned can be 'git grep'ed
> from buildhistory. I've added some more details to buildhistory like recipe
> layer name and SRC_URI which help too. DISTRO_FEATURES and their impact
> to packagegroups, image contents etc are currently missing, and they would
> be nice to have.
>
>
> https://www.yoctoproject.org/docs/2.7/dev-manual/dev-manual.html#maintaining-build-output-quality
>
> Hope this helps,
>
> -Mikko
>
> > Regards,
> > Dimitris
>
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000052ed71058537f872
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Mikko, thanks for pointing out the buildhistory.<div>I =
need to have a look at it also as I haven&#39;t used it yet.</div><div>Also=
, it&#39;s very nice to see it documented so well.</div><div><br></div><div=
>Thanks!</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Mar 29, 2019 at 9:59 AM &lt;<a href=3D"mailto:Mikko=
.Rapeli@bmw.de">Mikko.Rapeli@bmw.de</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">On Fri, Mar 29, 2019 at 09:50:20AM +0100=
, Dimitris Tassopoulos wrote:<br>
&gt; Hi all,<br>
&gt; <br>
&gt; I was thinking that the mail list shouldn&#39;t be only for problems a=
nd<br>
&gt; questions and that from time to time, it would be nice to see some gui=
des,<br>
&gt; tutorials or success stories from people that follow the list.<br>
&gt; <br>
&gt; Anyway, a few days ago someone had an issue with one of the BSPs I&#39=
;m<br>
&gt; maintaining and I wrote him a small guide on how to -try- to resolve f=
uture<br>
&gt; issues like that. Then I thought that I haven&#39;t found a small tuto=
rial<br>
&gt; like this. Maybe it already exists, but nevertheless I haven&#39;t see=
n it.<br>
&gt; Of course, those things are in the documentation, but they are documen=
ted<br>
&gt; as individual tools (which is the correct thing to do), but it&#39;s n=
ot very<br>
&gt; clear how to use all those things together to perform more complex tas=
ks.<br>
&gt; <br>
&gt; So, in my case the issue was that ofono was installed in the image and=
 that<br>
&gt; needed to be removed. Probably a lot of you already know the answer bu=
t for<br>
&gt; me that I&#39;ve never bothered with that I had to track it down how i=
t got in<br>
&gt; there.<br>
&gt; <br>
&gt; Everything from now on assumes that you&#39;ve setup up your bitbake e=
nvironment<br>
&gt; of your build with whatever setup scripts you&#39;re using (e.g.<br>
&gt; *oe-init-build-env*)<br>
&gt; <br>
&gt; There are several ways to do introspection on an image. For example,<b=
r>
&gt; let&#39;s say that you found a file in the in rootfs and you want to k=
now which<br>
&gt; recipe added that file. Then you can use this command:<br>
&gt; <br>
&gt; oe-pkgdata-util find-path /usr/sbin/ofonod<br>
&gt; <br>
&gt; <br>
&gt; *oe-pkgdata-util* is a utility in *poky/scripts/oe-pkgdata-util* and<b=
r>
&gt; `find-path` is pretty obvious what it does. This will return:<br>
&gt; <br>
&gt; ofono: /usr/sbin/ofonod<br>
&gt; <br>
&gt; <br>
&gt; So now you know that it&#39;s indeed the *ofono* recipe that adds this=
 file.<br>
&gt; Next,<br>
&gt; you need how this did get in the image (probably some other dependency=
<br>
&gt; because you didn&#39;t). Then you can use the `-g` parameter with bitb=
ake like<br>
&gt; this:<br>
&gt; <br>
&gt; bitbake -g allwinner-image<br>
&gt; <br>
&gt; <br>
&gt; This will create a file called `recipe-depends.dot`. This is a dot fil=
e that<br>
&gt; has all the dependencies in the image. You can use the same command to=
 get<br>
&gt; the dependencies for a recipe, but now we care about the image.<br>
&gt; <br>
&gt; Next step is to search in that file, why that key is there. Why is `-w=
` and<br>
&gt; key is `-k`. You can always remember this as &quot;-w-hy that -k-ey is=
 there?&quot;<br>
&gt; and you<br>
&gt; run this command:<br>
&gt; <br>
&gt; oe-depends-dot -k ofono -w recipe-depends.dot<br>
&gt; <br>
&gt; <br>
&gt; This will return the recipe that has this as dependency.<br>
&gt; <br>
&gt; <br>
&gt; &gt; Because: allwinner-image packagegroup-base<br>
&gt; <br>
&gt; <br>
&gt; That means that the key is there because of allwinner-image (this is t=
he<br>
&gt; image<br>
&gt; recipe, but it can be any other image) and because the *allwinner-imag=
e*<br>
&gt; inherits the<br>
&gt; *packagegroup-base*. So this packagegroup is the guilty.<br>
&gt; <br>
&gt; Let&#39;s find this thing now. Get in the meta layer sources folder an=
d run this<br>
&gt; <br>
&gt; find . | grep packagegroup-base<br>
&gt; <br>
&gt; <br>
&gt; This will return<br>
&gt; <br>
&gt; &gt; ./poky/meta/recipes-core/packagegroups/<a href=3D"http://packageg=
roup-base.bb" rel=3D"noreferrer" target=3D"_blank">packagegroup-base.bb</a>=
<br>
&gt; <br>
&gt; <br>
&gt; Great. Open this file to an editor and find where is *ofono*. Gotcha, =
is in:<br>
&gt; <br>
&gt; RDEPENDS_packagegroup-base-3g<br>
&gt; <br>
&gt; <br>
&gt; Then it&#39;s the *packagegroup-base-3g* that does that. Probably that=
&#39;s a<br>
&gt; recipe<br>
&gt; or package group file, so you can run:<br>
&gt; <br>
&gt; find . | grep packagegroup-base-3g<br>
&gt; <br>
&gt; <br>
&gt; But you get nothing... Then probably this is declared somewhere a file=
 with<br>
&gt; another name, so let&#39;s search inside the files in the poky layer:<=
br>
&gt; <br>
&gt; grep -nriI ackagegroup-base-3g<br>
&gt; <br>
&gt; <br>
&gt; And we get:<br>
&gt; <br>
&gt; poky/meta/recipes-core/packagegroups/<a href=3D"http://packagegroup-ba=
se.bb:35" rel=3D"noreferrer" target=3D"_blank">packagegroup-base.bb:35</a>:=
<br>
&gt; &gt; ${@bb.utils.contains(&quot;DISTRO_FEATURES&quot;, &quot;3g&quot;,=
 &quot;packagegroup-base-3g&quot;, &quot;&quot;,<br>
&gt; &gt; d)} \<br>
&gt; &gt; poky/meta/recipes-core/packagegroups/<a href=3D"http://packagegro=
up-base.bb:73" rel=3D"noreferrer" target=3D"_blank">packagegroup-base.bb:73=
</a>:<br>
&gt; &gt; ${@bb.utils.contains(&#39;COMBINED_FEATURES&#39;, &#39;3g&#39;, &=
#39;packagegroup-base-3g&#39;,<br>
&gt; &gt; &#39;&#39;,d)} \<br>
&gt; &gt; poky/meta/recipes-core/packagegroups/<a href=3D"http://packagegro=
up-base.bb:122" rel=3D"noreferrer" target=3D"_blank">packagegroup-base.bb:1=
22</a>:<br>
&gt; &gt; d.setVar(&quot;ADD_3G&quot;, &quot;packagegroup-base-3g&quot;)<br=
>
&gt; &gt; poky/meta/recipes-core/packagegroups/packagegroup-base.bb:316:SUM=
MARY_packagegroup-base-3g<br>
&gt; &gt; =3D &quot;Cellular data support&quot;<br>
&gt; &gt; poky/meta/recipes-core/packagegroups/packagegroup-base.bb:317:RDE=
PENDS_packagegroup-base-3g<br>
&gt; &gt; =3D &quot;\<br>
&gt; &gt; poky/meta/recipes-core/packagegroups/packagegroup-base.bb:320:RRE=
COMMENDS_packagegroup-base-3g<br>
&gt; &gt; =3D &quot;\<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; So it&#39;s actually in the same file that we already opened. Here you=
 can<br>
&gt; facepalm,<br>
&gt; but we didn&#39;t know that, so this would be the procedure anyways to=
 track it<br>
&gt; down.<br>
&gt; Now, search for *packagegroup-base-3g* inside the<br>
&gt; *poky/meta/recipes-core/packagegroups/<a href=3D"http://packagegroup-b=
ase.bb" rel=3D"noreferrer" target=3D"_blank">packagegroup-base.bb</a><br>
&gt; &lt;<a href=3D"http://packagegroup-base.bb" rel=3D"noreferrer" target=
=3D"_blank">http://packagegroup-base.bb</a>&gt;*<br>
&gt; and you see this line:<br>
&gt; <br>
&gt; ${@bb.utils.contains(&quot;DISTRO_FEATURES&quot;, &quot;3g&quot;, &quo=
t;packagegroup-base-3g&quot;, &quot;&quot;,<br>
&gt; &gt; d)} \<br>
&gt; <br>
&gt; <br>
&gt; Therefore the *3g* in the *DISTRO_FEATURES* actually added *ofono*. Th=
at<br>
&gt; means that,<br>
&gt; we need to remove the *3g* string from our *DISTRO_FEATURES*.<br>
&gt; <br>
&gt; To do that, add this to your build/conf/local.conf file<br>
&gt; <br>
&gt; DISTRO_FEATURES_remove =3D &quot; 3g&quot;<br>
&gt; <br>
&gt; <br>
&gt; Now just to be sure, run this to clean *ofono* from cache and everywhe=
re<br>
&gt; else:<br>
&gt; <br>
&gt; bitbake -c cleanall ofono<br>
&gt; <br>
&gt; <br>
&gt; And then rebuild the image:<br>
&gt; <br>
&gt; bitbake image-name<br>
&gt; <br>
&gt; <br>
&gt; Now you&#39;ll see that *ofono* won&#39;t b e downloaded or get built =
and it won&#39;t<br>
&gt; be in your image.<br>
&gt; <br>
&gt; I hope the above guide helps a bit.<br>
&gt; <br>
&gt; I would be glad to get better suggestions or other people experience o=
n<br>
&gt; how they introspect their images and solve related issues.<br>
<br>
Thanks for this useful summary of tools.<br>
<br>
I use buildhistory a lot. It contains recipe, binary package, image and SDK=
<br>
metadata. Many of the queries and tools you mentioned can be &#39;git grep&=
#39;ed<br>
from buildhistory. I&#39;ve added some more details to buildhistory like re=
cipe<br>
layer name and SRC_URI which help too. DISTRO_FEATURES and their impact<br>
to packagegroups, image contents etc are currently missing, and they would<=
br>
be nice to have.<br>
<br>
<a href=3D"https://www.yoctoproject.org/docs/2.7/dev-manual/dev-manual.html=
#maintaining-build-output-quality" rel=3D"noreferrer" target=3D"_blank">htt=
ps://www.yoctoproject.org/docs/2.7/dev-manual/dev-manual.html#maintaining-b=
uild-output-quality</a><br>
<br>
Hope this helps,<br>
<br>
-Mikko<br>
<br>
&gt; Regards,<br>
&gt; Dimitris<br>
<br>
&gt; -- <br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
</blockquote></div>

--00000000000052ed71058537f872--
