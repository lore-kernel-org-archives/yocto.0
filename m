Return-Path: <amittomer25@gmail.com>
Received: from mail-we0-f178.google.com (mail-we0-f178.google.com
	[74.125.82.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17B20E0122C
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 00:11:10 -0700 (PDT)
Received: by mail-we0-f178.google.com with SMTP id u57so7752246wes.37
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 00:11:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=GQjZWVptP0pY+i9dKxrFlA+5zL2DCwQ2wKbIgQby/dQ=;
	b=ROankNKmH7SqwfKi7E2oBRW9nsicrLgigfCL1qYs1sXxvkS3/vSTLxiDjD9/vHbbof
	4ghJbzxKYgHQeo05WwFJ/EguxWNkmL34NicfH8DDnM2cKkg1MyS8wEPhUVTOMNjTuEYZ
	N0cWFIVUZoRFOuEH0GxnizzWhSgtrOhKCine6H2je9S5gjjkKfU3Tp66hJrtlj0ep/Uj
	7CqdTSoybt8dvLbOxLE1GjPjvk+zPNyWAhxg7uNyH9XCa5tphkgDu+FcL80YsxUgIv0O
	iMOoUjLWVRfMrC3Y5Bx2SvLvRgmfU4oIvPgbGwR7itgj1zRCTfyIKiSqI2VLVH25mN4M
	nM1g==
MIME-Version: 1.0
X-Received: by 10.180.87.38 with SMTP id u6mr20703970wiz.0.1378969869204; Thu,
	12 Sep 2013 00:11:09 -0700 (PDT)
Received: by 10.227.144.138 with HTTP; Thu, 12 Sep 2013 00:11:09 -0700 (PDT)
In-Reply-To: <CAFyqS9qQd1mcQ1OYxjRbRZnwezA=V8bvCLb+uvMBDYS1EwM-dA@mail.gmail.com>
References: <CABHD4K9QJO=OOojPX4KmHXBMgfDK1wX-nWasJ82CL3m1ZzoZUg@mail.gmail.com>
	<CAFyqS9qQd1mcQ1OYxjRbRZnwezA=V8bvCLb+uvMBDYS1EwM-dA@mail.gmail.com>
Date: Thu, 12 Sep 2013 12:41:09 +0530
Message-ID: <CABHD4K9m06Rd3NNbB3ha4xz_ohFicXaQTBuOPzj4fkgA19Bg0g@mail.gmail.com>
From: amit tomer <amittomer25@gmail.com>
To: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to change machine name in yocto
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
X-List-Received-Date: Thu, 12 Sep 2013 07:11:11 -0000
Content-Type: multipart/alternative; boundary=f46d044281c435c4f104e62a71df

--f46d044281c435c4f104e62a71df
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks Hans for kind reply

I somehow manage to change the machine name in build confriguation

Build Configuration:
BB_VERSION        =3D "1.18.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "RedHatEnterpriseServer-5.6"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "k2"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.4.1"
TUNE_FEATURES     =3D "armv7a vfp neon callconvention-hard cortexa15"
TARGET_FPU        =3D "vfp-neon"
meta
meta-yocto


Now machine name is K2 for me,what I did is rename the
"/meta-xyz/conf/machine/pyp-ii.conf
 to k2.conf and set  MACHINE=3Dk2 in build/conf/local.conf .


But my bitbake is still failing with different error this time.

Could you please let me know whats needs to be changed in
"build/conf/bblayers.conf
file"  in order to change machine name. below is my "build/conf/bblayers.co=
nf"
file


# LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
# changes incompatibly
LCONF_VERSION =3D "6"

BBPATH =3D "${TOPDIR}"
BBFILES ?=3D ""

BBLAYERS ?=3D " \
  ${TOPDIR}/../poky/meta \
  ${TOPDIR}/../poky/meta-yocto \
  ${TOPDIR}/../poky/meta-yocto-bsp \
  ${TOPDIR}/../linaro/meta-linaro-toolchain \
  ${TOPDIR}/../meta-ti \
  ${TOPDIR}/../meta-nsn \
  "
BBLAYERS_NON_REMOVABLE ?=3D " \
  ${TOPDIR}/../poky/meta \
  ${TOPDIR}/../poky/meta-yocto \
  "

BBMASK =3D "meta-ti/recipes-misc"
BBMASK .=3D "|meta-ti/recipes-graphics"

# meta-linaro is only able to supply linaro-4.7 without
# toolchain-layer, therefore mask out linaro-4.6.  Note
# that an associated change in local.conf to remove
# toolchain-layer from LAYERDEPENDS_linaro is required.
BBMASK .=3D "|gcc.*_linaro-4\.[^7]"

# mask out lrc specific layer(s)
BBMASK .=3D "|meta-nsn/recipes-connectivity-lrc"




On Wed, Sep 11, 2013 at 8:26 PM, Hans Beck=E9rus <hans.beckerus@gmail.com>w=
rote:

> The MACHINE is simply a pointer to a machine specific configuration
> file. So if you set your MACHINE=3Dfoo, then somewhere in your bblayer
> path(s) you need to make sure that a conf/machine/foo.conf is
> available. Then it will use that.
> Typically, I think you should do this in your own bsp meta, eg.
> meta-foo/conf/machine/foo.conf and then add meta-foo to your
> build/conf/bblayers.conf file.
>
> Thanks,
> Hans
>
>
>
> On Wed, Sep 11, 2013 at 4:30 PM, amit tomer <amittomer25@gmail.com> wrote=
:
> >  I am new to opensource build framework Yocto and have a requirement
> wherein
> > wanted to change the machine name ,when I do BITBAKE image-name
> >
> > Build Configuration:
> >
> > BB_VERSION        =3D "1.18.0"
> > BUILD_SYS         =3D "x86_64-linux"
> > NATIVELSBSTRING   =3D "RedHatEnterpriseServer-5.6"
> > TARGET_SYS        =3D "arm-poky-linux-gnueabi"
> > MACHINE           =3D "pyp-ii"
> > DISTRO            =3D "poky"
> > DISTRO_VERSION    =3D "1.4.1"
> > TUNE_FEATURES     =3D "armv7a vfp neon callconvention-hard cortexa15"
> > TARGET_FPU        =3D "vfp-neon"
> > meta
> > meta-yocto
> > meta-yocto-bsp    =3D "(nobranch):beda5013e46da16a3d76f095869a5a5c5b1bc=
08a"
> > meta-linaro-toolchain =3D
> > "(nobranch):0f679485b945c1b929a44d1865eb517a096ac4ef"
> > meta-ti           =3D "(nobranch):3eb71003af3ebb025285493721332111ac581=
a42
> >
> > Now MACHIEN name I wanted to change something like k2 from pyp-ii ,I
> tried
> > changing it in local.conf file but I am getting error like
> >
> > ERROR: OE-core's config sanity checker detected a potential
> > misconfiguration. Either fix the cause of this error or at your own ris=
k
> > disable the checker (see sanity.conf). Following is the list of potenti=
al
> > problems / advisories:
> >
> > Please set a valid MACHINE in your local.conf or environment
> >
> > ERROR: Execution of event handler 'check_sanity_eventhandler' failed
> >
> > I also tried setting up export MACHINE=3D"k2" but I am getting the same
> error
> > message
> >
> > In my /var/fpwork/tomar_yocto1/snz-yocto/meta-xyz/conf/machine there
> exist a
> > pyp-ii.conf file.
> >
> > I tried renaming it to k2.conf but it also didn't work out.
> >
> >
> > Can anybody let me know what needs to be done in order to change MACHIN=
E
> > name here.
> >
> >
> > Thanks
> >
> > Amit Singh Tomar
> >
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--f46d044281c435c4f104e62a71df
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Hans for kind reply<div><br></div><div style>I some=
how manage to change the machine name in build confriguation</div><div styl=
e><br></div><div style><div>Build Configuration:</div><div>BB_VERSION =A0 =
=A0 =A0 =A0=3D &quot;1.18.0&quot;</div>
<div>BUILD_SYS =A0 =A0 =A0 =A0 =3D &quot;x86_64-linux&quot;</div><div>NATIV=
ELSBSTRING =A0 =3D &quot;RedHatEnterpriseServer-5.6&quot;</div><div>TARGET_=
SYS =A0 =A0 =A0 =A0=3D &quot;arm-poky-linux-gnueabi&quot;</div><div>MACHINE=
 =A0 =A0 =A0 =A0 =A0 =3D &quot;k2&quot;</div>
<div>DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;</div><div>DISTRO_VE=
RSION =A0 =A0=3D &quot;1.4.1&quot;</div><div>TUNE_FEATURES =A0 =A0 =3D &quo=
t;armv7a vfp neon callconvention-hard cortexa15&quot;</div><div>TARGET_FPU =
=A0 =A0 =A0 =A0=3D &quot;vfp-neon&quot;</div>
<div>meta</div><div>meta-yocto</div><div><br></div><div><br></div><div styl=
e>Now machine name is K2 for me,what I did is rename the =A0&quot;<span sty=
le=3D"font-family:Arial,&#39;Liberation Sans&#39;,&#39;DejaVu Sans&#39;,san=
s-serif;font-size:14px;line-height:18px;text-align:left">/meta-xyz/conf/mac=
hine/pyp-ii.conf =A0to k2.conf and set=A0</span><span style=3D"font-family:=
arial,sans-serif;font-size:13px">=A0MACHINE=3Dk2 in build/conf/local.conf .=
</span></div>
<div style><span style=3D"font-family:arial,sans-serif;font-size:13px"><br>=
</span></div><div style><font face=3D"arial, sans-serif"><br></font></div><=
div style><span style=3D"font-family:arial,sans-serif;font-size:13px">But m=
y bitbake is still failing with different error this time.</span></div>
<div style><span style=3D"font-family:arial,sans-serif;font-size:13px"><br>=
</span></div><div style><span style=3D"font-family:arial,sans-serif;font-si=
ze:13px">Could you please let me know whats needs to be changed in &quot;</=
span><span style=3D"font-family:arial,sans-serif;font-size:13px">build/conf=
/bblayers.conf file&quot; =A0in order to change machine name. below is my &=
quot;</span><span style=3D"font-family:arial,sans-serif;font-size:13px">bui=
ld/conf/bblayers.conf&quot; file</span></div>
<div style><span style=3D"font-family:arial,sans-serif;font-size:13px"><br>=
</span></div><div style><span style=3D"font-family:arial,sans-serif;font-si=
ze:13px"><br></span></div><div style><div><font face=3D"arial, sans-serif">=
# LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf</font>=
</div>
<div><font face=3D"arial, sans-serif"># changes incompatibly</font></div><d=
iv><font face=3D"arial, sans-serif">LCONF_VERSION =3D &quot;6&quot;</font><=
/div><div><font face=3D"arial, sans-serif"><br></font></div><div><font face=
=3D"arial, sans-serif">BBPATH =3D &quot;${TOPDIR}&quot;</font></div>
<div><font face=3D"arial, sans-serif">BBFILES ?=3D &quot;&quot;</font></div=
><div><font face=3D"arial, sans-serif"><br></font></div><div><font face=3D"=
arial, sans-serif">BBLAYERS ?=3D &quot; \</font></div><div><font face=3D"ar=
ial, sans-serif">=A0 ${TOPDIR}/../poky/meta \</font></div>
<div><font face=3D"arial, sans-serif">=A0 ${TOPDIR}/../poky/meta-yocto \</f=
ont></div><div><font face=3D"arial, sans-serif">=A0 ${TOPDIR}/../poky/meta-=
yocto-bsp \</font></div><div><font face=3D"arial, sans-serif">=A0 ${TOPDIR}=
/../linaro/meta-linaro-toolchain \</font></div>
<div><font face=3D"arial, sans-serif">=A0 ${TOPDIR}/../meta-ti \</font></di=
v><div><font face=3D"arial, sans-serif">=A0 ${TOPDIR}/../meta-nsn \</font><=
/div><div><font face=3D"arial, sans-serif">=A0 &quot;</font></div><div><fon=
t face=3D"arial, sans-serif">BBLAYERS_NON_REMOVABLE ?=3D &quot; \</font></d=
iv>
<div><font face=3D"arial, sans-serif">=A0 ${TOPDIR}/../poky/meta \</font></=
div><div><font face=3D"arial, sans-serif">=A0 ${TOPDIR}/../poky/meta-yocto =
\</font></div><div><font face=3D"arial, sans-serif">=A0 &quot;</font></div>=
<div><font face=3D"arial, sans-serif"><br>
</font></div><div><font face=3D"arial, sans-serif">BBMASK =3D &quot;meta-ti=
/recipes-misc&quot;</font></div><div><font face=3D"arial, sans-serif">BBMAS=
K .=3D &quot;|meta-ti/recipes-graphics&quot;</font></div><div><font face=3D=
"arial, sans-serif"><br>
</font></div><div><font face=3D"arial, sans-serif"># meta-linaro is only ab=
le to supply linaro-4.7 without</font></div><div><font face=3D"arial, sans-=
serif"># toolchain-layer, therefore mask out linaro-4.6. =A0Note</font></di=
v>
<div><font face=3D"arial, sans-serif"># that an associated change in local.=
conf to remove</font></div><div><font face=3D"arial, sans-serif"># toolchai=
n-layer from LAYERDEPENDS_linaro is required.</font></div><div><font face=
=3D"arial, sans-serif">BBMASK .=3D &quot;|gcc.*_linaro-4\.[^7]&quot;</font>=
</div>
<div><font face=3D"arial, sans-serif"><br></font></div><div><font face=3D"a=
rial, sans-serif"># mask out lrc specific layer(s)</font></div><div><font f=
ace=3D"arial, sans-serif">BBMASK .=3D &quot;|meta-nsn/recipes-connectivity-=
lrc&quot;</font></div>
<div style=3D"font-family:arial,sans-serif;font-size:13px"><br></div></div>=
<div style><span style=3D"font-family:Arial,&#39;Liberation Sans&#39;,&#39;=
DejaVu Sans&#39;,sans-serif;font-size:14px;line-height:18px;text-align:left=
"><br>
</span></div></div></div><div class=3D"gmail_extra"><br><br><div class=3D"g=
mail_quote">On Wed, Sep 11, 2013 at 8:26 PM, Hans Beck=E9rus <span dir=3D"l=
tr">&lt;<a href=3D"mailto:hans.beckerus@gmail.com" target=3D"_blank">hans.b=
eckerus@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">The MACHINE is simply a pointer to a machine=
 specific configuration<br>
file. So if you set your MACHINE=3Dfoo, then somewhere in your bblayer<br>
path(s) you need to make sure that a conf/machine/foo.conf is<br>
available. Then it will use that.<br>
Typically, I think you should do this in your own bsp meta, eg.<br>
meta-foo/conf/machine/foo.conf and then add meta-foo to your<br>
build/conf/bblayers.conf file.<br>
<br>
Thanks,<br>
Hans<br>
<div><div class=3D"h5"><br>
<br>
<br>
On Wed, Sep 11, 2013 at 4:30 PM, amit tomer &lt;<a href=3D"mailto:amittomer=
25@gmail.com">amittomer25@gmail.com</a>&gt; wrote:<br>
&gt; =A0I am new to opensource build framework Yocto and have a requirement=
 wherein<br>
&gt; wanted to change the machine name ,when I do BITBAKE image-name<br>
&gt;<br>
&gt; Build Configuration:<br>
&gt;<br>
&gt; BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.18.0&quot;<br>
&gt; BUILD_SYS =A0 =A0 =A0 =A0 =3D &quot;x86_64-linux&quot;<br>
&gt; NATIVELSBSTRING =A0 =3D &quot;RedHatEnterpriseServer-5.6&quot;<br>
&gt; TARGET_SYS =A0 =A0 =A0 =A0=3D &quot;arm-poky-linux-gnueabi&quot;<br>
&gt; MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;pyp-ii&quot;<br>
&gt; DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;<br>
&gt; DISTRO_VERSION =A0 =A0=3D &quot;1.4.1&quot;<br>
&gt; TUNE_FEATURES =A0 =A0 =3D &quot;armv7a vfp neon callconvention-hard co=
rtexa15&quot;<br>
&gt; TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;vfp-neon&quot;<br>
&gt; meta<br>
&gt; meta-yocto<br>
&gt; meta-yocto-bsp =A0 =A0=3D &quot;(nobranch):beda5013e46da16a3d76f095869=
a5a5c5b1bc08a&quot;<br>
&gt; meta-linaro-toolchain =3D<br>
&gt; &quot;(nobranch):0f679485b945c1b929a44d1865eb517a096ac4ef&quot;<br>
&gt; meta-ti =A0 =A0 =A0 =A0 =A0 =3D &quot;(nobranch):3eb71003af3ebb0252854=
93721332111ac581a42<br>
&gt;<br>
&gt; Now MACHIEN name I wanted to change something like k2 from pyp-ii ,I t=
ried<br>
&gt; changing it in local.conf file but I am getting error like<br>
&gt;<br>
&gt; ERROR: OE-core&#39;s config sanity checker detected a potential<br>
&gt; misconfiguration. Either fix the cause of this error or at your own ri=
sk<br>
&gt; disable the checker (see sanity.conf). Following is the list of potent=
ial<br>
&gt; problems / advisories:<br>
&gt;<br>
&gt; Please set a valid MACHINE in your local.conf or environment<br>
&gt;<br>
&gt; ERROR: Execution of event handler &#39;check_sanity_eventhandler&#39; =
failed<br>
&gt;<br>
&gt; I also tried setting up export MACHINE=3D&quot;k2&quot; but I am getti=
ng the same error<br>
&gt; message<br>
&gt;<br>
&gt; In my /var/fpwork/tomar_yocto1/snz-yocto/meta-xyz/conf/machine there e=
xist a<br>
&gt; pyp-ii.conf file.<br>
&gt;<br>
&gt; I tried renaming it to k2.conf but it also didn&#39;t work out.<br>
&gt;<br>
&gt;<br>
&gt; Can anybody let me know what needs to be done in order to change MACHI=
NE<br>
&gt; name here.<br>
&gt;<br>
&gt;<br>
&gt; Thanks<br>
&gt;<br>
&gt; Amit Singh Tomar<br>
&gt;<br>
&gt;<br>
</div></div>&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</blockquote></div><br></div>

--f46d044281c435c4f104e62a71df--
