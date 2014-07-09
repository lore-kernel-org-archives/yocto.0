Return-Path: <stefan.hofmann@mobserve.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30614E00744; Wed,  9 Jul 2014 05:57:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [80.237.133.75 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from wp306.webpack.hosteurope.de (wp306.webpack.hosteurope.de
	[80.237.133.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 404BFE00547
	for <yocto@yoctoproject.org>; Wed,  9 Jul 2014 05:57:49 -0700 (PDT)
Received: from [217.17.193.50] (helo=stefans-mini.m2b.intern); authenticated
	by wp306.webpack.hosteurope.de running ExIM with esmtpsa
	(TLS1.0:RSA_AES_128_CBC_SHA1:16)
	id 1X4rRT-0005cz-V0; Wed, 09 Jul 2014 14:57:48 +0200
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Stefan Hofmann <stefan.hofmann@mobserve.de>
In-Reply-To: <CA+gsK-qs=2OO2o_Ubyv=7T4h_FzxnPvKJ77yPGohE33FLrFCfQ@mail.gmail.com>
Date: Wed, 9 Jul 2014 14:57:46 +0200
Message-Id: <2A067D16-0B76-40CD-920D-9E49125AB438@mobserve.de>
References: <53B2EA69.5000903@mobserve.de>
	<CA+gsK-qs=2OO2o_Ubyv=7T4h_FzxnPvKJ77yPGohE33FLrFCfQ@mail.gmail.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
X-Mailer: Apple Mail (2.1878.6)
X-bounce-key: webpack.hosteurope.de; stefan.hofmann@mobserve.de; 1404910670;
	c366c800; 
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Understanding "Package groups"
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
X-List-Received-Date: Wed, 09 Jul 2014 12:57:52 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_9E63AB07-2376-42AE-89F8-4994B28FA900"

--Apple-Mail=_9E63AB07-2376-42AE-89F8-4994B28FA900
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi Rudolf,

thank you for your explanation. bash has not been installed, but HOB did =
some changes on the configuration files and I modified the distribution. =
I deleted everything and created my own image receipe. It works fine =
now.

Regards,
Stefan

Am 01.07.2014 um 22:34 schrieb Rudolf Streif =
<rstreif@linuxfoundation.org>:

> Hi Stefan,
>=20
> You probably have found the explanation on package groups in the =
reference manual [1].
>=20
> Package groups are recipes with the sole purpose to create =
dependencies to simplify image creation. A package group recipe bundles =
multiple packages together and then instead of having to explicitly =
specify each package in the IMAGE_INSTALL variable you can simply =
specify the package group name.
>=20
> Package group recipes look like this (from the manual):
>=20
> DESCRIPTION =3D "My Custom Package Groups"
>=20
>      inherit packagegroup
>=20
>      PACKAGES =3D "\
>          packagegroup-custom-apps \
>          packagegroup-custom-tools \
>          "
>=20
>      RDEPENDS_packagegroup-custom-apps =3D "\
>          dropbear \
>          portmap \
>          psplash"
>=20
>      RDEPENDS_packagegroup-custom-tools =3D "\
>          oprofile \
>          oprofileui-server \
>          lttng-control \
>          lttng-viewer"
>=20
>      RRECOMMENDS_packagegroup-custom-tools =3D "\
>          kernel-module-oprofile"
>=20
>=20
> Like any recipe they have a description. They inherit the =
packagegroup.bbclass. A package group recipe can define multiple package =
groups in the PACKAGES variable. For each package group listed in =
PACKAGES you will then need to specify the packages that actually go =
into them with conditional RDEPENDS_<packagegroupname> variables.
>=20
> Package groups are only relevant for the YP build system. They do not =
create package grouping for the package manager that you are using for =
your target. However, if you select a package group from HOB then all of =
the packages specified in that group should be installed in your =
target's rootfs by YP.
>=20
> Rudi
>=20
>=20
>=20
> [1] =
http://www.yoctoproject.org/docs/1.6/dev-manual/dev-manual.html#usingpoky-=
extend-customimage-customtasks
>=20
>=20
> On Tue, Jul 1, 2014 at 10:05 AM, Stefan Hofmann =
<stefan.hofmann@mobserve.de> wrote:
> Hi,
>=20
> I made my first steps with yocto and everything worked fine so far. =
But now I am struggling with "package groups". What I basically want, is =
a image for a base system, which allows me to install additional =
packages over the air with opkg. In my imagination package groups are =
something like preselected packages, which need to be installed at once =
similar like it is handled in Debian for X11-support for example. Is =
this right ? I have built core-image-base for testing purposes and tried =
to figure out the dependencies by using the Hob tool. It says that bash =
will be installed and the group "base/shell" is responsible for that. =
However it is not installed, only ash and I cannot find a package group =
"package-group-base-shell" in the receipes. It does however exist in the =
work directory. So now I am somewhat confused.
>=20
> Regards,
> Stefan
>=20
> --=20
>=20
>=20
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=20
>=20
>=20
>=20
>=20


--Apple-Mail=_9E63AB07-2376-42AE-89F8-4994B28FA900
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;">Hi =
Rudolf,<div><br></div><div>thank you for your explanation. bash has not =
been installed, but HOB did some changes on the configuration files and =
I modified the distribution. I deleted everything and created my own =
image receipe. It works fine =
now.</div><div><br></div><div>Regards,</div><div>Stefan</div><div><br><div=
><div>Am 01.07.2014 um 22:34 schrieb Rudolf Streif &lt;<a =
href=3D"mailto:rstreif@linuxfoundation.org">rstreif@linuxfoundation.org</a=
>&gt;:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div dir=3D"ltr">Hi Stefan,<div><br></div><div>You =
probably have found the explanation on package groups in the reference =
manual [1].</div><div><br></div><div>Package groups are recipes with the =
sole purpose to create dependencies to simplify image creation. A =
package group recipe bundles multiple packages together and then instead =
of having to explicitly specify each package in the IMAGE_INSTALL =
variable you can simply specify the package group name.</div>
<div><br></div><div>Package group recipes look like this (from the =
manual):</div><div><br></div><div><pre class=3D"" =
style=3D"overflow:auto;color:rgb(51,51,51)">DESCRIPTION =3D "My Custom =
Package Groups"

     inherit packagegroup

     PACKAGES =3D "\
         packagegroup-custom-apps \
         packagegroup-custom-tools \
         "

     RDEPENDS_packagegroup-custom-apps =3D "\
         dropbear \
         portmap \
         psplash"

     RDEPENDS_packagegroup-custom-tools =3D "\
         oprofile \
         oprofileui-server \
         lttng-control \
         lttng-viewer"

     RRECOMMENDS_packagegroup-custom-tools =3D "\
         kernel-module-oprofile"
</pre></div><div><br></div><div><br></div><div>Like any recipe they have =
a description. They inherit the packagegroup.bbclass. A package group =
recipe can define multiple package groups in the PACKAGES variable. For =
each package group listed in PACKAGES you will then need to specify the =
packages that actually go into them with conditional =
RDEPENDS_&lt;packagegroupname&gt; variables.</div>
<div><br></div><div>Package groups are only relevant for the YP build =
system. They do not create package grouping for the package manager that =
you are using for your target. However, if you select a package group =
from HOB then all of the packages specified in that group should be =
installed in your target's rootfs by YP.</div>
=
<div><br></div><div>Rudi</div><div><br></div><div><br></div><div><br></div=
><div>[1]&nbsp;<a =
href=3D"http://www.yoctoproject.org/docs/1.6/dev-manual/dev-manual.html#us=
ingpoky-extend-customimage-customtasks">http://www.yoctoproject.org/docs/1=
.6/dev-manual/dev-manual.html#usingpoky-extend-customimage-customtasks</a>=
<br>
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue, =
Jul 1, 2014 at 10:05 AM, Stefan Hofmann <span dir=3D"ltr">&lt;<a =
href=3D"mailto:stefan.hofmann@mobserve.de" =
target=3D"_blank">stefan.hofmann@mobserve.de</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left=
-style:solid;padding-left:1ex">Hi,<br>
<br>
I made my first steps with yocto and everything worked fine so far. But =
now I am struggling with "package groups". What I basically want, is a =
image for a base system, which allows me to install additional packages =
over the air with opkg. In my imagination package groups are something =
like preselected packages, which need to be installed at once similar =
like it is handled in Debian for X11-support for example. Is this right =
? I have built core-image-base for testing purposes and tried to figure =
out the dependencies by using the Hob tool. It says that bash will be =
installed and the group "base/shell" is responsible for that. However it =
is not installed, only ash and I cannot find a package group =
"package-group-base-shell" in the receipes. It does however exist in the =
work directory. So now I am somewhat confused.<br>

<br>
Regards,<br>
Stefan<span class=3D""><font color=3D"#888888"><br>
<br>
-- <br>
<br>
<br>
</font></span><br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div><br>
</div></div></div>
</blockquote></div><br></div></body></html>=

--Apple-Mail=_9E63AB07-2376-42AE-89F8-4994B28FA900--
