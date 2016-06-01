Return-Path: <oleksandr.poznyak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C546E007E8; Wed,  1 Jun 2016 11:57:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oleksandr.poznyak[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f41.google.com (mail-qg0-f41.google.com
	[209.85.192.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0BDEE00756
	for <yocto@yoctoproject.org>; Wed,  1 Jun 2016 11:57:33 -0700 (PDT)
Received: by mail-qg0-f41.google.com with SMTP id 52so47667644qgy.0
	for <yocto@yoctoproject.org>; Wed, 01 Jun 2016 11:57:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=YVtJmDoWlXSDWE66qHIHggJfw8fA1taqxkOTtS18A8w=;
	b=ulIFECGa7RBoSX8YyA5DR4rgXhfry/scY2vI6ed6OlWE9JlnfrUzc/BaijlLgogFpg
	PMMkt5LLA+KWTVAEddrLt5CpSVZNowcxCpLwB1mdPIw0AlevtZBkfEHbGVKsOGXha5B3
	poaCHRLfFUnx1nnZn4pRGONFUGUe7C+1xgLkudYNO43CFwU/dSMw3SHnTGXqzris7RaT
	LHuPvCdx4mZ4cWxO4hE7j0+UPvHnM0vhtYSjHmHpNWRsuz/Hhrj911R6HlK1HFnP7Rs0
	nSJWrL/DdpXUwEKzzyMiwq+IvslXXh5Hum1Boq8G8ajR8T1JbwTKQjzRv0Gg1H34joBG
	735w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=YVtJmDoWlXSDWE66qHIHggJfw8fA1taqxkOTtS18A8w=;
	b=ID9XFCpEIS+Zmr0Jv/shMdswcv7CG+qk0jGW7qyyaTILuri52RIlfRg8MOYoQmm/Gw
	/tk7v9YWhq+TRroDrZDdFBXf14kZhqjnq+FrhWnW3Qvvev5QvcFbbJch+dnQTSKWKXaz
	qCDzbMDEfoheYa+GHBfgtjrbDIUyxx5cknNMQBt2FhoCySf1P5i0gxwfHimt1edNTKcJ
	iVN/7QCp0tQPsuPAV8oN43cAd3KUeMh0rCnY+IolXWqYP3RSIEaLR+qopd5J/qanVsQy
	LRJMZEZSxXeYFjwB/CzGC5NjY26+3UV8b1SH72YLfxtmVKXwfU1YQZ7Prj3cWfF6iw6W
	qBQA==
X-Gm-Message-State: ALyK8tJczGXM2fhGyLU60nQrTS/vhAbB9TyqZOr7FLQD2mmG3Lko8BRVIer7mAGYUflt3MM73cHbzfa+3eMfbw==
MIME-Version: 1.0
X-Received: by 10.140.139.138 with SMTP id 132mr38452800qhl.34.1464807452844; 
	Wed, 01 Jun 2016 11:57:32 -0700 (PDT)
Received: by 10.237.49.35 with HTTP; Wed, 1 Jun 2016 11:57:32 -0700 (PDT)
In-Reply-To: <2192667.NjFLBh3Ny5@ip-192-168-197-87.eu-west-1.compute.internal>
References: <1806509.T1rfjxOZVE@ip-192-168-197-87.eu-west-1.compute.internal>
	<16838317.pTU33ZpYG7@peggleto-mobl.ger.corp.intel.com>
	<CAEeWubLNuGrjFA1ydAkbi_hDu=P7T4nwkrDL2Ws0cvKRk8WHxQ@mail.gmail.com>
	<2192667.NjFLBh3Ny5@ip-192-168-197-87.eu-west-1.compute.internal>
Date: Wed, 1 Jun 2016 21:57:32 +0300
Message-ID: <CAEeWubJiiAh4w9b4HM_WaTK9U95ZEj=1uvsJdOnmTW7GTX=nBw@mail.gmail.com>
From: Oleksandr Poznyak <oleksandr.poznyak@gmail.com>
To: Diego <diego.ml@zoho.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: Per image customizations
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
X-List-Received-Date: Wed, 01 Jun 2016 18:57:37 -0000
Content-Type: multipart/alternative; boundary=001a11372f08e42df005343c0fd9

--001a11372f08e42df005343c0fd9
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Here is the content of bbappend recipe for base-files recipe:

FILESEXTRAPATHS_append :=3D "${THISDIR}/${PN}"

SRC_URI +=3D "file://fstab-flash \
        file://fstab-regular \
        "

PACKAGES +=3D " ${PN}-flash ${PN}-regular"
CONFFILES_${PN}-flash =3D "${CONFFILES_${PN}}"
CONFFILES_${PN}-regular =3D "${CONFFILES_${PN}}"

pkg_preinst_${PN}-flash =3D "${pkg_preinst_${PN}}"
pkg_preinst_${PN}-regular =3D "${pkg_preinst_${PN}}"

RREPLACES_${PN}-flash =3D "${PN}"
RPROVIDES_${PN}-flash =3D "${PN}"
RCONFLICTS_${PN}-flash =3D "${PN}"

RREPLACES_${PN}-regular =3D "${PN}"
RPROVIDES_${PN}-regular =3D "${PN}"
RCONFLICTS_${PN}-regular =3D "${PN}"

python populate_packages_prepend() {
    import shutil

    packages =3D ("${PN}-flash", "${PN}-regular")
    for package in packages:
        # copy ${PN} content to packages
        shutil.copytree("${PKGD}", "${PKGDEST}/%s" % package, symlinks=3DTr=
ue)
        # replace fstab
        if package =3D=3D "${PN}-flash":
            shutil.copy("${WORKDIR}/fstab-flash",
"${PKGDEST}/${PN}-flash/etc/fstab")
        else:
            shutil.copy("${WORKDIR}/fstab-regular",
"${PKGDEST}/${PN}-regular/etc/fstab")
}


This will produce two separate packages that will replace base-files
package.
Moreover, this trick allows You to modify base-files package separately for
flash-OS and regular-OS

in other recipes add packages like this:

base-files-flash or base-files-regular

Thanks,
Oleksandr Poznyak!

On Wed, Jun 1, 2016 at 7:15 PM, Diego <diego.ml@zoho.com> wrote:

> In data mercoled=C3=AC 1 giugno 2016 15:25:09, Oleksandr Poznyak ha scrit=
to:
> > Don't forget to add your fstab/inittab files into CONFFILES_${PN} cause
> if
> > the package that includes them will be changed and You'll update it via
> > package system, your POSTPROCESS hacks will be overwritten.
> >
> > Anyway, its better to avoid POSTPROCESS if possible.
> > 1) Create *.bbappend recipe base-files_%s.bbappend in your layer. It
> > appends to poky "base-files" recipe.
> > 2) Create your own "python do_package_prepend" function where you shoul=
d
> > make your recipe produce two different packages
> > 3) Add them to DEPENDS in your image recipe
> >
>
> Hi Oleksandr,
>
> your approach is really interesting, but I'm unsure how to proceed with
> step
> 2) of your list.
>
> I've added the following in the bbappend:
>
> python do_package_prepend() {
>     d.setVar('PACKAGES', "${PACKAGES} ${PN}-fstab-regular
> ${PN}-fstab-flash")
> }
>
> which creates the two additional packages, but then I'm confused on how t=
o
> manage the two 'variant' fstab files. The FILES variable doesn't support
> "source -> destination", so how do I manage the fact that two different
> files
> need to go to the same destination path?
>
> An easier option would be to remove fstab in the base-files_%s.bbappend,
> and
> create 2 different .bb recipes for the 2 fstab files.
>
> Thanks anyhow for your help,
> Diego
>
>

--001a11372f08e42df005343c0fd9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Here is the content of bbappend recipe for base-files reci=
pe:<br><div><br>FILESEXTRAPATHS_append :=3D &quot;${THISDIR}/${PN}&quot;<br=
><br>SRC_URI +=3D &quot;file://fstab-flash \<br>=C2=A0=C2=A0=C2=A0 =C2=A0=
=C2=A0=C2=A0 file://fstab-regular \<br>=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 &quot;<br><br>PACKAGES +=3D &quot; ${PN}-flash ${PN}-regular&quot;<br>C=
ONFFILES_${PN}-flash =3D &quot;${CONFFILES_${PN}}&quot;<br>CONFFILES_${PN}-=
regular =3D &quot;${CONFFILES_${PN}}&quot;<br><br>pkg_preinst_${PN}-flash =
=3D &quot;${pkg_preinst_${PN}}&quot;<br>pkg_preinst_${PN}-regular =3D &quot=
;${pkg_preinst_${PN}}&quot;<br><br>RREPLACES_${PN}-flash =3D &quot;${PN}&qu=
ot;<br>RPROVIDES_${PN}-flash =3D &quot;${PN}&quot;<br>RCONFLICTS_${PN}-flas=
h =3D &quot;${PN}&quot;<br><br>RREPLACES_${PN}-regular =3D &quot;${PN}&quot=
;<br>RPROVIDES_${PN}-regular =3D &quot;${PN}&quot;<br>RCONFLICTS_${PN}-regu=
lar =3D &quot;${PN}&quot;<br><br>python populate_packages_prepend() {<br>=
=C2=A0=C2=A0=C2=A0 import shutil<br><br>=C2=A0=C2=A0=C2=A0 packages =3D (&q=
uot;${PN}-flash&quot;, &quot;${PN}-regular&quot;)<br>=C2=A0=C2=A0=C2=A0 for=
 package in packages:<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # copy =
${PN} content to packages<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 shu=
til.copytree(&quot;${PKGD}&quot;, &quot;${PKGDEST}/%s&quot; % package, syml=
inks=3DTrue)<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 # replace fstab<=
br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if package =3D=3D &quot;${PN}=
-flash&quot;:<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 shutil.copy(&quot;${WORKDIR}/fstab-flash&quot;, &quot;${PKGDEST}/=
${PN}-flash/etc/fstab&quot;)<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
else:<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 shutil.copy(&quot;${WORKDIR}/fstab-regular&quot;, &quot;${PKGDEST}/${PN}-r=
egular/etc/fstab&quot;)<br>}<br><br><br></div><div>This will produce two se=
parate packages that will replace base-files package.<br></div><div>Moreove=
r, this trick allows You to modify base-files package separately for flash-=
OS and regular-OS<br><br></div><div>in other recipes add packages like this=
:<br><br></div><div>base-files-flash or base-files-regular<br><br></div><di=
v>Thanks,<br></div><div>Oleksandr Poznyak!<br></div></div><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote">On Wed, Jun 1, 2016 at 7:15 PM, Di=
ego <span dir=3D"ltr">&lt;<a href=3D"mailto:diego.ml@zoho.com" target=3D"_b=
lank">diego.ml@zoho.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex"><span class=3D"">In data mercoled=C3=AC 1 giugno 2016 15:25:09, Oleksa=
ndr Poznyak ha scritto:<br>
&gt; Don&#39;t forget to add your fstab/inittab files into CONFFILES_${PN} =
cause if<br>
&gt; the package that includes them will be changed and You&#39;ll update i=
t via<br>
&gt; package system, your POSTPROCESS hacks will be overwritten.<br>
&gt;<br>
&gt; Anyway, its better to avoid POSTPROCESS if possible.<br>
&gt; 1) Create *.bbappend recipe base-files_%s.bbappend in your layer. It<b=
r>
&gt; appends to poky &quot;base-files&quot; recipe.<br>
&gt; 2) Create your own &quot;python do_package_prepend&quot; function wher=
e you should<br>
&gt; make your recipe produce two different packages<br>
&gt; 3) Add them to DEPENDS in your image recipe<br>
&gt;<br>
<br>
</span>Hi Oleksandr,<br>
<br>
your approach is really interesting, but I&#39;m unsure how to proceed with=
 step<br>
2) of your list.<br>
<br>
I&#39;ve added the following in the bbappend:<br>
<br>
python do_package_prepend() {<br>
=C2=A0 =C2=A0 d.setVar(&#39;PACKAGES&#39;, &quot;${PACKAGES} ${PN}-fstab-re=
gular ${PN}-fstab-flash&quot;)<br>
}<br>
<br>
which creates the two additional packages, but then I&#39;m confused on how=
 to<br>
manage the two &#39;variant&#39; fstab files. The FILES variable doesn&#39;=
t support<br>
&quot;source -&gt; destination&quot;, so how do I manage the fact that two =
different files<br>
need to go to the same destination path?<br>
<br>
An easier option would be to remove fstab in the base-files_%s.bbappend, an=
d<br>
create 2 different .bb recipes for the 2 fstab files.<br>
<br>
Thanks anyhow for your help,<br>
Diego<br>
<br>
</blockquote></div><br></div>

--001a11372f08e42df005343c0fd9--
