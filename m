Received: from 6.mo173.mail-out.ovh.net (6.mo173.mail-out.ovh.net [46.105.43.93])
 by mx.groups.io with SMTP id smtpd.web09.12977.1607081793397358899
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Dec 2020 03:36:34 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: 3mdeb.com, ip: 46.105.43.93, mailfrom: maciej.pijanowski@3mdeb.com)
Received: from player739.ha.ovh.net (unknown [10.108.57.38])
	by mo173.mail-out.ovh.net (Postfix) with ESMTP id B46C0152802
	for <yocto@lists.yoctoproject.org>; Fri,  4 Dec 2020 12:36:30 +0100 (CET)
Received: from 3mdeb.com (89-66-159-90.dynamic.chello.pl [89.66.159.90])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player739.ha.ovh.net (Postfix) with ESMTPSA id DC1FA14CE1BB1;
	Fri,  4 Dec 2020 11:36:28 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-98R0023890710b-b4c6-49eb-82ae-01f0387371bb,
                    88C5E7F1D96BBF54EED448F85B92423F1F6EA38A) smtp.auth=maciej.pijanowski@3mdeb.com
X-OVh-ClientIp: 89.66.159.90
Subject: Re: [yocto] Writing a simple python recipe to add pydevd support to a personnal layer #yocto #zeus #make python recipe
To: anthony.marchand@navocap.com, yocto@lists.yoctoproject.org
References: <zdSV.1607078257639478763.nltE@lists.yoctoproject.org>
From: "Maciej Pijanowski" <maciej.pijanowski@3mdeb.com>
Message-ID: <21706013-6e38-5286-ee6d-d64d7fda92b5@3mdeb.com>
Date: Fri, 4 Dec 2020 12:36:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <zdSV.1607078257639478763.nltE@lists.yoctoproject.org>
X-Ovh-Tracer-Id: 2251236866905681414
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedujedrudeikedgfedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpefuvfhfhffkffgfgggjtgesrgdtreertdefjeenucfhrhhomhepofgrtghivghjucfrihhjrghnohifshhkihcuoehmrggtihgvjhdrphhijhgrnhhofihskhhiseefmhguvggsrdgtohhmqeenucggtffrrghtthgvrhhnpeejteelheeliedugeevheeftdelkeduhfelgfelieejtdefueekgfdvveeghefhieenucffohhmrghinhepohhpvghnvghmsggvugguvggurdhorhhgpdhphihthhhonhdrohhrghdpphihphhirdhorhhgpdhphihthhhonhhhohhsthgvugdrohhrghdphihotghtohhprhhojhgvtghtrdhorhhgpdefmhguvggsrdgtohhmnecukfhppedtrddtrddtrddtpdekledrieeirdduheelrdeltdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejfeelrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomhepmhgrtghivghjrdhpihhjrghnohifshhkihesfehmuggvsgdrtghomhdprhgtphhtthhopeihohgtthhosehlihhsthhsrdihohgtthhophhrohhjvggtthdrohhrgh
Content-Type: multipart/alternative;
 boundary="------------04EEC0C8A99476F1EEA87458"
Content-Language: en-US

--------------04EEC0C8A99476F1EEA87458
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


On 04.12.2020 11:37, anthony.marchand@navocap.com wrote:
> Hello everyone,
>
> I have to add a python module named "pydevd" in my personnal image
> machine.
> Pydevd is a python module that can be used for remote debbuging with
> the Ecipse IDE.
>
> So normally, I used to go to the site:
> http://layers.openembedded.org/layerindex/branch/zeus/recipes to see
> what are the recipes available for the yocto version I use (zeus
> version), and then, I add the name of the recipe to my image in:
>
> IMAGE_INSTALL +=3D " \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 recipe_1\
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 recipe_2\
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ...
> "
>
> As the recipe for the python 3 module: "pydevd" does not exists in
> zeus branch, I decided to create one by observing their structures and
> how python recipes are made.
> So there is my recipe for the latest version of pydevd I got from
> python.org:
>
> ------------------------------------ pydevd_2.1.0.bb
> -------------------------------------------------------
> SUMMARY =3D "Pydevd, a python module for eclipse remote debugging"
> HOMEPAGE =3D "https://pypi.org/project/pydevd"
> LICENSE =3D "MIT"
> LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D30b3836521b3d65bef598bbc358a3=
afa"
>
> SRC_URI =3D
> "https://files.pythonhosted.org/packages/51/8c/4ebdb28a4b2f8cedc17a2fc68=
c38c545b12c2a861ac2bbd3cd5fdb5971a7/pydevd-2.1.0.tar.gz"
> SRC_URI[md5sum] =3D "74f4336ce09c5fab228a8ff4285e519a"
> SRC_URI[sha256sum] =3D
> "9f76aa4f82e43faba7c243d4c9678eb93e96848ba1e5dba61054bec2794e994b"
>
> RDEPENDS_${PN}_class-target +=3D "\
> =C2=A0=C2=A0=C2=A0 ${PYTHON_PN}-threading \
> "
>
> inherit pypi setuptools3 ptest
> BBCLASSEXTEND =3D "native nativesdk"
>
> RDEPENDS_${PN}-ptest +=3D " \
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ${PYTHON_PN}-pytest \
> "
>
> fakeroot do_install_test() {
>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -d ${D}${PTEST_PATH}/=
pydevd/tests
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cp -rf ${S}/pydevd/* ${D}/pyd=
evd/
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cp -f ${S}/README.rst ${D}${P=
TEST_PATH}/
> }
> ------------------------------------------------------------------------=
-------------------
>
> So I'm sure about md5 checksum, Licence and SRC_URI, but from the
> line: "RDEPENDS_${PN}_class-target" to the end, I'm not sure about
> what I'm doing :-)
> After a test of compilation with the command "bitbake pydevd", bitbake
> seems to parse and extract the tar.gz package well, but I have an
> error at the end when it tried to do install.
I suggest to start with recipetool rather than starting from scratch:
https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#new-=
recipe-creating-the-base-recipe-using-recipetool

For most python modules it should **just work**.

Compare the output of recipetool with what you have done manually and
start from there.
>
> My goal is simply to extract the content of the pydevd.tar.gz and
> installed it on my target path: "/usr/lib/python3.7/site-packages"
>
> When I do that manually on my target machine (by extracting the tar.gz
> in "/usr/lib/python3.7/site-packages" ), it works fine and python can
> import the module pydevd. I would like to do the same thing with a
> yocto recipe, but i've never made any recipes, I just know the basic
> theory about it.
>
>
> Does someone know or have ideas about how can I do that? Maybe it's
> not as simple as that, but as I'm pretty new, I don't realize the
> level of difficulty it represents.
>
> Thanks for all and best reguards.
>
>=20
>
--=20
Maciej Pijanowski
Embedded Firmware Team Leader
GPG: 9963C36AAC3B2B46
https://3mdeb.com | @3mdeb_com


--------------04EEC0C8A99476F1EEA87458
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF-=
8">
  </head>
  <body>
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 04.12.2020 11:37,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:anthony.marchan=
d@navocap.com">anthony.marchand@navocap.com</a> wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:zdSV.1607078257639478763.nltE@lists.yoctoproject.org">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DUT=
F-8">
      Hello everyone,<br>
      <br>
      I have to add a python module named "pydevd" in my personnal image
      machine. <br>
      Pydevd is a python module that can be used for remote debbuging
      with the Ecipse IDE.<br>
      <br>
      So normally, I used to go to the site: <a
        href=3D"http://layers.openembedded.org/layerindex/branch/zeus/reci=
pes"
        target=3D"_blank" rel=3D"noopener" moz-do-not-send=3D"true">http:/=
/layers.openembedded.org/layerindex/branch/zeus/recipes</a>
      to see what are the recipes available for the yocto version I use
      (zeus version), and then, I add the name of the recipe to my image
      in:<br>
      <br>
      IMAGE_INSTALL +=3D " \<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 recipe_1\<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 recipe_2\<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ...<br>
      "<br>
      <br>
      As the recipe for the python 3 module: "pydevd" does not exists in
      zeus branch, I decided to create one by observing their structures
      and how python recipes are made.<br>
      So there is my recipe for the latest version of pydevd I got from
      python.org:<br>
      <br>
      ------------------------------------ pydevd_2.1.0.bb
      -------------------------------------------------------<br>
      SUMMARY =3D "Pydevd, a python module for eclipse remote debugging"<b=
r>
      HOMEPAGE =3D <a class=3D"moz-txt-link-rfc2396E" href=3D"https://pypi=
.org/project/pydevd">"https://pypi.org/project/pydevd"</a><br>
      LICENSE =3D "MIT"<br>
      LIC_FILES_CHKSUM =3D
      <a class=3D"moz-txt-link-rfc2396E" href=3D"file://LICENSE;md5=3D30b3=
836521b3d65bef598bbc358a3afa">"file://LICENSE;md5=3D30b3836521b3d65bef598bb=
c358a3afa"</a><br>
      <br>
      SRC_URI =3D
<a class=3D"moz-txt-link-rfc2396E" href=3D"https://files.pythonhosted.org/=
packages/51/8c/4ebdb28a4b2f8cedc17a2fc68c38c545b12c2a861ac2bbd3cd5fdb5971a7=
/pydevd-2.1.0.tar.gz">"https://files.pythonhosted.org/packages/51/8c/4ebdb2=
8a4b2f8cedc17a2fc68c38c545b12c2a861ac2bbd3cd5fdb5971a7/pydevd-2.1.0.tar.gz"=
</a><br>
      SRC_URI[md5sum] =3D "74f4336ce09c5fab228a8ff4285e519a"<br>
      SRC_URI[sha256sum] =3D
      "9f76aa4f82e43faba7c243d4c9678eb93e96848ba1e5dba61054bec2794e994b"<b=
r>
      <br>
      RDEPENDS_${PN}_class-target +=3D "\<br>
      =C2=A0=C2=A0=C2=A0 ${PYTHON_PN}-threading \<br>
      "<br>
      <br>
      inherit pypi setuptools3 ptest<br>
      BBCLASSEXTEND =3D "native nativesdk"<br>
      <br>
      RDEPENDS_${PN}-ptest +=3D " \<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ${PYTHON_PN}-pytest \<br>
      "<br>
      <br>
      fakeroot do_install_test() {<br>
      <br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 install -d ${D}${PTEST_PA=
TH}/pydevd/tests<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cp -rf ${S}/pydevd/* ${D}=
/pydevd/<br>
      =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cp -f ${S}/README.rst ${D=
}${PTEST_PATH}/<br>
      }<br>
--------------------------------------------------------------------------=
-----------------<br>
      <br>
      So I'm sure about md5 checksum, Licence and SRC_URI, but from the
      line: "RDEPENDS_${PN}_class-target" to the end, I'm not sure about
      what I'm doing :-) <br>
      After a test of compilation with the command "bitbake pydevd",
      bitbake seems to parse and extract the tar.gz package well, but I
      have an error at the end when it tried to do install.<br>
    </blockquote>
    I suggest to start with recipetool rather than starting from
    scratch:<br>
<a class=3D"moz-txt-link-freetext" href=3D"https://www.yoctoproject.org/do=
cs/latest/mega-manual/mega-manual.html#new-recipe-creating-the-base-recipe-=
using-recipetool">https://www.yoctoproject.org/docs/latest/mega-manual/mega=
-manual.html#new-recipe-creating-the-base-recipe-using-recipetool</a><br>
    <br>
    For most python modules it should **just work**.<br>
    <br>
    Compare the output of recipetool with what you have done manually
    and start from there.<br>
    <blockquote type=3D"cite"
      cite=3D"mid:zdSV.1607078257639478763.nltE@lists.yoctoproject.org"><b=
r>
      My goal is simply to extract the content of the pydevd.tar.gz and
      installed it on my target path: "/usr/lib/python3.7/site-packages"<b=
r>
      <br>
      When I do that manually on my target machine (by extracting the
      tar.gz in "/usr/lib/python3.7/site-packages" ), it works fine and
      python can import the module pydevd. I would like to do the same
      thing with a yocto recipe, but i've never made any recipes, I just
      know the basic theory about it.<br>
      <br>
      <br>
      Does someone know or have ideas about how can I do that? Maybe
      it's not as simple as that, but as I'm pretty new, I don't realize
      the level of difficulty it represents.<br>
      <br>
      Thanks for all and best reguards.
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">


</pre>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Maciej Pijanowski
Embedded Firmware Team Leader
GPG: 9963C36AAC3B2B46
<a class=3D"moz-txt-link-freetext" href=3D"https://3mdeb.com">https://3mde=
b.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------04EEC0C8A99476F1EEA87458--
