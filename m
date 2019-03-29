Return-Path: <prvs=9842051d5=Mikko.Rapeli@bmw.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40D6FE00D2A; Fri, 29 Mar 2019 02:00:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [68.232.133.150 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Fri, 29 Mar 2019 02:00:38 PDT
Received: from esa3.bmw.c3s2.iphmx.com (esa3.bmw.c3s2.iphmx.com
	[68.232.133.150])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2238E00D24
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 02:00:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
	t=1553850039; x=1585386039;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-id:content-transfer-encoding: mime-version;
	bh=Gdt3fyNHpZUyqT3ILE4E4Cg+hD8fn6pwjIgS+EsgvOU=;
	b=cXxpxtrj6XqUnPtdIKRizWL5DPyMw+niN1b6mMj+Pqkssf+/c8OoN99J
	IuJo4P2SlhQoPS5E4bwNvAeGxTqRDVJpWIF1k7X50+QKC2wShr8zC3eGt
	kfN8r6yJZrprNRgVmPTiwaO1PGeE+rfRRtqRRFD/1gHgt4Dt1sQ3VlMwt c=;
Received: from esagw3.bmwgroup.com (HELO esagw3.muc) ([160.46.252.35]) by
	esa3.bmw.c3s2.iphmx.com with ESMTP/TLS; 29 Mar 2019 09:59:35 +0100
Received: from esabb4.muc ([160.50.100.33])  by esagw3.muc with ESMTP/TLS;
	29 Mar 2019 09:59:35 +0100
Received: from smucm10l.bmwgroup.net (HELO smucm10l.europe.bmw.corp)
	([160.48.96.48])
	by esabb4.muc with ESMTP/TLS; 29 Mar 2019 09:59:34 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by
	smucm10l.europe.bmw.corp
	(160.48.96.48) with Microsoft SMTP Server (TLS;
	Fri, 29 Mar 2019 09:59:34 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
	smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.003;
	Fri, 29 Mar 2019 09:59:34 +0100
From: <Mikko.Rapeli@bmw.de>
To: <dimtass@gmail.com>
Thread-Topic: [yocto] Image introspection
Thread-Index: AQHU5gywOrxtjyVaT0aPbFEWBA0x36YiPpgA
Date: Fri, 29 Mar 2019 08:59:34 +0000
Message-ID: <20190329085934.GA20077@hiutale>
References: <CACKFPN0H50ax69a33VOs6wymGz7SoFi1_atBM2WNh3f9MV6=kQ@mail.gmail.com>
In-Reply-To: <CACKFPN0H50ax69a33VOs6wymGz7SoFi1_atBM2WNh3f9MV6=kQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [192.168.221.33]
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Fri, 29 Mar 2019 09:00:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <78D97FB2965A8F44B8A8D2E820F81BDD@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 29, 2019 at 09:50:20AM +0100, Dimitris Tassopoulos wrote:
> Hi all,
>=20
> I was thinking that the mail list shouldn't be only for problems and
> questions and that from time to time, it would be nice to see some guides=
,
> tutorials or success stories from people that follow the list.
>=20
> Anyway, a few days ago someone had an issue with one of the BSPs I'm
> maintaining and I wrote him a small guide on how to -try- to resolve futu=
re
> issues like that. Then I thought that I haven't found a small tutorial
> like this. Maybe it already exists, but nevertheless I haven't seen it.
> Of course, those things are in the documentation, but they are documented
> as individual tools (which is the correct thing to do), but it's not very
> clear how to use all those things together to perform more complex tasks.
>=20
> So, in my case the issue was that ofono was installed in the image and th=
at
> needed to be removed. Probably a lot of you already know the answer but f=
or
> me that I've never bothered with that I had to track it down how it got i=
n
> there.
>=20
> Everything from now on assumes that you've setup up your bitbake environm=
ent
> of your build with whatever setup scripts you're using (e.g.
> *oe-init-build-env*)
>=20
> There are several ways to do introspection on an image. For example,
> let's say that you found a file in the in rootfs and you want to know whi=
ch
> recipe added that file. Then you can use this command:
>=20
> oe-pkgdata-util find-path /usr/sbin/ofonod
>=20
>=20
> *oe-pkgdata-util* is a utility in *poky/scripts/oe-pkgdata-util* and
> `find-path` is pretty obvious what it does. This will return:
>=20
> ofono: /usr/sbin/ofonod
>=20
>=20
> So now you know that it's indeed the *ofono* recipe that adds this file.
> Next,
> you need how this did get in the image (probably some other dependency
> because you didn't). Then you can use the `-g` parameter with bitbake lik=
e
> this:
>=20
> bitbake -g allwinner-image
>=20
>=20
> This will create a file called `recipe-depends.dot`. This is a dot file t=
hat
> has all the dependencies in the image. You can use the same command to ge=
t
> the dependencies for a recipe, but now we care about the image.
>=20
> Next step is to search in that file, why that key is there. Why is `-w` a=
nd
> key is `-k`. You can always remember this as "-w-hy that -k-ey is there?"
> and you
> run this command:
>=20
> oe-depends-dot -k ofono -w recipe-depends.dot
>=20
>=20
> This will return the recipe that has this as dependency.
>=20
>=20
> > Because: allwinner-image packagegroup-base
>=20
>=20
> That means that the key is there because of allwinner-image (this is the
> image
> recipe, but it can be any other image) and because the *allwinner-image*
> inherits the
> *packagegroup-base*. So this packagegroup is the guilty.
>=20
> Let's find this thing now. Get in the meta layer sources folder and run t=
his
>=20
> find . | grep packagegroup-base
>=20
>=20
> This will return
>=20
> > ./poky/meta/recipes-core/packagegroups/packagegroup-base.bb
>=20
>=20
> Great. Open this file to an editor and find where is *ofono*. Gotcha, is =
in:
>=20
> RDEPENDS_packagegroup-base-3g
>=20
>=20
> Then it's the *packagegroup-base-3g* that does that. Probably that's a
> recipe
> or package group file, so you can run:
>=20
> find . | grep packagegroup-base-3g
>=20
>=20
> But you get nothing... Then probably this is declared somewhere a file wi=
th
> another name, so let's search inside the files in the poky layer:
>=20
> grep -nriI ackagegroup-base-3g
>=20
>=20
> And we get:
>=20
> poky/meta/recipes-core/packagegroups/packagegroup-base.bb:35:
> > ${@bb.utils.contains("DISTRO_FEATURES", "3g", "packagegroup-base-3g", "=
",
> > d)} \
> > poky/meta/recipes-core/packagegroups/packagegroup-base.bb:73:
> > ${@bb.utils.contains('COMBINED_FEATURES', '3g', 'packagegroup-base-3g',
> > '',d)} \
> > poky/meta/recipes-core/packagegroups/packagegroup-base.bb:122:
> > d.setVar("ADD_3G", "packagegroup-base-3g")
> > poky/meta/recipes-core/packagegroups/packagegroup-base.bb:316:SUMMARY_p=
ackagegroup-base-3g
> > =3D "Cellular data support"
> > poky/meta/recipes-core/packagegroups/packagegroup-base.bb:317:RDEPENDS_=
packagegroup-base-3g
> > =3D "\
> > poky/meta/recipes-core/packagegroups/packagegroup-base.bb:320:RRECOMMEN=
DS_packagegroup-base-3g
> > =3D "\
>=20
>=20
>=20
> So it's actually in the same file that we already opened. Here you can
> facepalm,
> but we didn't know that, so this would be the procedure anyways to track =
it
> down.
> Now, search for *packagegroup-base-3g* inside the
> *poky/meta/recipes-core/packagegroups/packagegroup-base.bb
> <http://packagegroup-base.bb>*
> and you see this line:
>=20
> ${@bb.utils.contains("DISTRO_FEATURES", "3g", "packagegroup-base-3g", "",
> > d)} \
>=20
>=20
> Therefore the *3g* in the *DISTRO_FEATURES* actually added *ofono*. That
> means that,
> we need to remove the *3g* string from our *DISTRO_FEATURES*.
>=20
> To do that, add this to your build/conf/local.conf file
>=20
> DISTRO_FEATURES_remove =3D " 3g"
>=20
>=20
> Now just to be sure, run this to clean *ofono* from cache and everywhere
> else:
>=20
> bitbake -c cleanall ofono
>=20
>=20
> And then rebuild the image:
>=20
> bitbake image-name
>=20
>=20
> Now you'll see that *ofono* won't b e downloaded or get built and it won'=
t
> be in your image.
>=20
> I hope the above guide helps a bit.
>=20
> I would be glad to get better suggestions or other people experience on
> how they introspect their images and solve related issues.

Thanks for this useful summary of tools.

I use buildhistory a lot. It contains recipe, binary package, image and SDK
metadata. Many of the queries and tools you mentioned can be 'git grep'ed
from buildhistory. I've added some more details to buildhistory like recipe
layer name and SRC_URI which help too. DISTRO_FEATURES and their impact
to packagegroups, image contents etc are currently missing, and they would
be nice to have.

https://www.yoctoproject.org/docs/2.7/dev-manual/dev-manual.html#maintainin=
g-build-output-quality

Hope this helps,

-Mikko

> Regards,
> Dimitris

> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

