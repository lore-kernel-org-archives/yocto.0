Return-Path: <peachj@lexmark.com>
Received: from exprod8og120.obsmtp.com (exprod8og120.obsmtp.com [64.18.3.40])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 5331CE003BC
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2013 09:21:54 -0800 (PST)
Received: from mail-qa0-f69.google.com ([209.85.216.69]) (using TLSv1) by
	exprod8ob120.postini.com ([64.18.7.12]) with SMTP
	ID DSNKUS+SMtTTjUYqfrLjG7BwLp7Bsygs4c3n@postini.com;
	Thu, 28 Feb 2013 09:21:55 PST
Received: by mail-qa0-f69.google.com with SMTP id bv4so3573228qab.4
	for <yocto@yoctoproject.org>; Thu, 28 Feb 2013 09:21:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-received:in-reply-to:references:date
	:message-id:subject:from:to:content-type:x-gm-message-state;
	bh=AJEhuXVt4aSowN4qdN4W0x+gLKDeCbZgvwZ4wCZqq2M=;
	b=BJKrZheYKUqQbCyjhJXB9Xn3WlNzMU2S2cIESLX4bArTYrA0eXq2/sL3pexs/Hwlhp
	rfLq2dx0iYJE3U/xtUdM8dn8Ho8hY7EPP1Mx4bHgFpv8QJ4Z90sCuZevfytl2eoLfIlc
	HIOp6wT/o7+pyED9SAJDO6ZIoxroSVKxQv5dlzX21aV0l07/NRk4zNULIH3uesBshRCU
	vzHHaQR0DqlnB+LBWeSVIezmnWhrJP2/+t1mvCxdQAWAdSzrkdkM55vUnP8PtQoMv4ES
	peahq1GxB+R2oiOSHZPIFpE2Qy9ptw2/1Pa9mUQ9z6WY2MnJpNZeGnJBic1xH8rJRZQr
	nKxw==
X-Received: by 10.224.27.77 with SMTP id h13mr15057404qac.23.1362072113558;
	Thu, 28 Feb 2013 09:21:53 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.224.27.77 with SMTP id h13mr15057394qac.23.1362072113432;
	Thu, 28 Feb 2013 09:21:53 -0800 (PST)
Received: by 10.49.50.97 with HTTP; Thu, 28 Feb 2013 09:21:53 -0800 (PST)
In-Reply-To: <20130228163505.GA31421@sakrah.homelinux.org>
References: <12F9B0C37BAC49429468AA27112A5F5B3FB2FBF1@DB3PRD0510MB368.eurprd05.prod.outlook.com>
	<20130228163505.GA31421@sakrah.homelinux.org>
Date: Thu, 28 Feb 2013 12:21:53 -0500
Message-ID: <CA+QkY1DcJsGUowY3fR=vkPq5yCZKnpBJRH1dFsF53=kssb33mQ@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: "Tim O'Callaghan" <tocallaghan@meyn.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQkLxQXE1t/Zvx3McWGf9W7jQElIxkcLGxzsL0ghkA6X6eQTeFwpPbbwJevwNLAta5TUkCwuw6Hfd0xlIq15AdIN82hB8LfklAlUta/yho243fvV8WKGq6onvF5HCA5jllBszu1g578al/vAdeBbm/UgbKQ2XA==
Subject: Re: Build Flavors help.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 28 Feb 2013 17:21:55 -0000
Content-Type: multipart/alternative; boundary=bcaec51b9fd37ae56504d6cc20c2

--bcaec51b9fd37ae56504d6cc20c2
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Feb 28, 2013 at 11:35 AM, Khem Raj <raj.khem@gmail.com> wrote:

> > Essentially I want to be able to create one recipe for a given image,
> then during build feed the recipe flavor information to create a different
> image per flavor.
> > An example would be to be that I want to create 30 images each with its
> own splash screen, host name, IP etc, without having to create 30 different
> recipes.
> >
>
> another thing you could try is bundle all splash images into
> one package and _somehow_ use the right one when booting the image on
> a given device.
> _______________________________________________
>

We have a similar problem at my company, and we have a similar solution,
but its subtle difference may wind up giving you what you want.  If we take
your splash screen example, we'll often store all our splash screens in one
location (a code repository), and then we'll pass in the flavor of the
product to the package, e.g. EXTRA_OECONF +=
"PRODUCT_NAME=${PRODUCT_NAME}", where ${PRODUCT_NAME} is defined in our
distro files.  (These are just configuration files under conf/distro in our
custom layer that inherit the poky distro and add product-specific data on
top of them.)  Each product will have one splash screen named after
$PRODUCT_NAME in the repository.  The right splash screen is selected by
having the generated Makefile install $PRODUCT_NAME's splash screen to a
generic location, perhaps /usr/share/splash/splash.png.  Then the thing
displaying the splash screen can just display whatever's there and get the
correct file for the product.  In this case, you'll need have as many
distro files as you have products and not (product specifc recipes) *
(number of products) different .bb files.


> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--bcaec51b9fd37ae56504d6cc20c2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Thu, Feb 28, 2013 at 11:35 AM, Khem Raj <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a=
>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">&gt; Essentially I want to=
 be able to create one recipe for a given image, then during build feed the=
 recipe flavor information to create a different image per flavor.<br>

&gt; An example would be to be that I want to create 30 images each with it=
s own splash screen, host name, IP etc, without having to create 30 differe=
nt recipes.<br>&gt;<br>
<br>
</div>another thing you could try is bundle all splash images into<br>
one package and _somehow_ use the right one when booting the image on<br>
a given device.<br>
<div class=3D"HOEnZb"><div class=3D"h5">___________________________________=
____________<br></div></div></blockquote><div><br></div><div style>We have =
a similar problem at my company, and we have a similar solution, but its su=
btle difference may wind up giving you what you want. =A0If we take your sp=
lash screen example, we&#39;ll often store all our splash screens in one lo=
cation (a code repository), and then we&#39;ll pass in the flavor of the pr=
oduct to the package, e.g. EXTRA_OECONF +=3D &quot;PRODUCT_NAME=3D${PRODUCT=
_NAME}&quot;, where ${PRODUCT_NAME} is defined in our distro files. =A0(The=
se are just configuration files under conf/distro in our custom layer that =
inherit the poky distro and add product-specific data on top of them.) =A0E=
ach product will have one splash screen named after $PRODUCT_NAME in the re=
pository. =A0The right splash screen is selected by having the generated Ma=
kefile install $PRODUCT_NAME&#39;s splash screen to a generic location, per=
haps /usr/share/splash/splash.png. =A0Then the thing displaying the splash =
screen can just display whatever&#39;s there and get the correct file for t=
he product. =A0In this case, you&#39;ll need have as many distro files as y=
ou have products and not (product specifc recipes) * (number of products) d=
ifferent .bb files.</div>
<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div cla=
ss=3D"h5">
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div></div>

--bcaec51b9fd37ae56504d6cc20c2--
