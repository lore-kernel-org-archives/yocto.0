Return-Path: <cleitonblaster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01E2CE008F6; Wed, 21 Jan 2015 18:17:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (cleitonrbueno[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f173.google.com (mail-lb0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCBCDE0089B
	for <yocto@yoctoproject.org>; Wed, 21 Jan 2015 18:17:39 -0800 (PST)
Received: by mail-lb0-f173.google.com with SMTP id p9so19286509lbv.4
	for <yocto@yoctoproject.org>; Wed, 21 Jan 2015 18:17:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:content-type;
	bh=z6RgAv0hSHxliwyS1ti4U7U4qjfzuzXh7PKAZkO7kAE=;
	b=Kr4KgdJGOQFCYUAhbgmwVzkz4mZ+bXYxYVKnqwuOai8Zl6aVdByzGLRRlXH3752P4S
	rBuj4ywACnjvS4Hwr6fdubSqnMeeDFT6fHTh+SvxjRNxYdQ022vQ6yKTih+GkogGQ6Rn
	Mchcn8AYe7u/yGllYG/j16pU8qZ+Yy5sdqoBWzL5hG56856x5yZ61CUA1MWPcUqxaq9R
	6bWcFOgRQ0jHlB2Ag1huaDfzD/hOWrimRvqfz5cTCVT0Wn6iOqD9MS1WxpkG6Z+jh7dZ
	Mh4Utt5NUg3gGwLjL70pYyfKkgWU6vHqAGdCgqjJU78AB6kU/JRw4kRwocqQ60o0LzbB
	VgOA==
MIME-Version: 1.0
X-Received: by 10.152.45.4 with SMTP id i4mr47925235lam.74.1421893057128; Wed,
	21 Jan 2015 18:17:37 -0800 (PST)
Sender: cleitonblaster@gmail.com
Received: by 10.25.24.12 with HTTP; Wed, 21 Jan 2015 18:17:37 -0800 (PST)
In-Reply-To: <54C02A7C.2090000@linux.intel.com>
References: <CABKVDBB5PioZdX48N2eRBYNz3QBH+8FVz6+GK5emqC4GRO8EAA@mail.gmail.com>
	<54C02A7C.2090000@linux.intel.com>
Date: Thu, 22 Jan 2015 00:17:37 -0200
X-Google-Sender-Auth: aX6Hzp6eXH7IdYCXLY1loUvAi-8
Message-ID: <CABKVDBAa_9R9rLYCt+kkBEmuWHEWaa_uAfXUYhN=t0F5z===rg@mail.gmail.com>
From: Cleiton Bueno <cleitonrbueno@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Problem recipe build with package debian
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
X-List-Received-Date: Thu, 22 Jan 2015 02:17:48 -0000
Content-Type: multipart/alternative; boundary=001a11c2760a9430f0050d34466b

--001a11c2760a9430f0050d34466b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Is already configured with package_deb.
I'll check the EXTRA_IMAGE_FEATURES and test.
Even if I do not use do_install () it is to install the package?





2015-01-21 20:38 GMT-02:00 An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel=
.com>:

>  Hi Cleiton,
>
> If you want to build deb packages you need to set in your local.conf,
>
> PACKAGE_CLASSES ?=3D "package_deb"
>
> Also if you want package-management support in the TARGET_IMAGE you need
> to add package-management to
> EXTRA_IMAGE_FEATURES.
>
> Regards
>
>     alimon
>
> On 21/01/15 15:43, Cleiton Bueno wrote:
>
> I have a deb package with several scripts and configurations that I want
> to use the BBB.
> I created a recipe, as well as other modules and packages to install.
>
>
> The recipe I'm using is equal below, (removed some details, is just the
> example base)
>
>
>
> SUMMARY =3D ""
> DESCRIPTION =3D ""
> HOMEPAGE =3D ""
>
>
>
> LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D1726e2117494ba3e13e1c3d93f7953=
60"
>
> SRC_URI =3D "file://my_pkg.deb"
>
> SRC_URI[md5sum] =3D ""
> SRC_URI[sha256sum] =3D ""
>
> S =3D "${WORKDIR}/my_pkg-${PV}"
>
> inherit package_deb
>
>
> do_install_append() {
>     install -m 755 -D ${WORKDIR}/my_pkg.deb
> }
>
>
>
>
> Has anyone created recipe to install deb packages?
>
>
>
>
>  My bibake process build...
>
>
> Reading package lists...
> Building dependency tree...
> Reading state information...
> Package pkgAll is not available, but is referred to by another package.
> This may mean that the package is missing, has been obsoleted, or
> is only available from another source
>
> W: Unable to read /home/bueno/yocto/poky/projTest/tmp/work/qemux86-
> poky-linux/projTest/1.0-r0/apt/preferences.d/ - DirectoryExists (2: No
> such file or directory)
> E: Package 'pkgAll' has no installation candidate
>
> ERROR: Function failed: do_rootfs
> ERROR: Logfile of failure stored in: /home/bueno/yocto/poky/
> projTest/tmp/work/qemux86-poky-linux/projTest/1.0-r0/
> temp/log.do_rootfs.27791
> ERROR: Task 7 (/home/bueno/yocto/poky/projTest//../meta-pkgAll/
> recipes-core/images/projTest.bb, do_rootfs) failed with exit code '1'
>
>
>
> Now, my recipe the package deb:
>
> SUMMARY =3D "XXXXXX"
> DESCRIPTION =3D "XXXXXXXXXXXXXX"
>
> LICENSE =3D "CLOSED"
>
>
> SRC_URI =3D "file://projTest_1.0.deb"
>
> SRC_URI[md5sum] =3D "32d0c2b332440a47dd370eXXXXXXXXXX"
> SRC_URI[sha256sum] =3D "42ebcf856aa626aa6d021173f4d931
> e0c84a0a27808d147db89942XXXXXXXXXX"
>
>
>
> inherit bin_package pkgconfig
>
>
> install_deb() {
>
>     ${STAGING_BINDIR_NATIVE}/dpkg --root=3D${IMAGE_ROOTFS}/
> --admindir=3D${IMAGE_ROOTFS}/var/lib/dpkg/ -i file://projTest_1.0.deb
> }
>
> ROOTFS_POSTPROCESS_COMMAND +=3D "install_deb; "
>
>
>
>
>  --
>
> *Att, Cleiton Bueno*
>
>
>
>
>


--=20

*Att,Cleiton Bueno*

--001a11c2760a9430f0050d34466b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"font-size:13px">Is already configured with p=
ackage_deb.</div><div style=3D"font-size:13px">I&#39;ll check the EXTRA_IMA=
GE_FEATURES and test.</div><div style=3D"font-size:13px">Even if I do not u=
se do_install () it is to install the package?</div><div style=3D"font-size=
:13px"><br></div><div style=3D"font-size:13px"><br></div><div style=3D"font=
-size:13px"><br></div><div style=3D"font-size:13px"><br></div><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">2015-01-21 20:38 GMT-02:00 An=
=C3=ADbal Lim=C3=B3n <span dir=3D"ltr">&lt;<a href=3D"mailto:anibal.limon@l=
inux.intel.com" target=3D"_blank">anibal.limon@linux.intel.com</a>&gt;</spa=
n>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    Hi Cleiton,<br>
    <br>
    If you want to build deb packages you need to set in your
    local.conf,<br>
    <br>
    PACKAGE_CLASSES ?=3D &quot;package_deb&quot;<br>
    <br>
    Also if you want package-management support in the TARGET_IMAGE you
    need to add package-management to<br>
    EXTRA_IMAGE_FEATURES.<br>
    <br>
    Regards<br>
    <br>
    =C2=A0=C2=A0=C2=A0 alimon<br>
    <br>
    <div>On 21/01/15 15:43, Cleiton Bueno wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr"><span style=3D"font-family:Arial,Helvetica,sans-seri=
f;font-size:13px">I
          have a deb package with several scripts and configurations
          that I want to use the BBB.</span><br style=3D"font-family:Arial,=
Helvetica,sans-serif;font-size:13px">
        <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">I
          created a recipe, as well as other modules and packages to
          install.</span><br style=3D"font-family:Arial,Helvetica,sans-seri=
f;font-size:13px">
        <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"=
>
        <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"=
>
        <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">The
          recipe I&#39;m using is equal below, (removed some details, is
          just the example base)</span><br style=3D"font-family:Arial,Helve=
tica,sans-serif;font-size:13px">
        <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"=
>
        <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"=
>
        <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"=
>
        <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">SUMMARY
          =3D &quot;&quot;</span><br style=3D"font-family:Arial,Helvetica,s=
ans-serif;font-size:13px">
        <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">DESCRIPTION
          =3D &quot;&quot;</span><br style=3D"font-family:Arial,Helvetica,s=
ans-serif;font-size:13px">
        <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">HOMEPAGE
          =3D &quot;&quot;</span><br style=3D"font-family:Arial,Helvetica,s=
ans-serif;font-size:13px">
        <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"=
>
        <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"=
>
        <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"=
>
        <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">LIC_FILES_CHKSUM
          =3D &quot;<a>file://LICENSE;md5=3D</a></span><span style=3D"font-=
family:Arial,Helvetica,sans-serif;font-size:13px">1726e2117494ba3e13e1c3d93=
f7953</span><span style=3D"font-family:Arial,Helvetica,sans-serif;font-size=
:13px">60&quot;</span><br style=3D"font-family:Arial,Helvetica,sans-serif;f=
ont-size:13px">
        <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"=
>
        <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">SRC_URI
          =3D <a>&quot;file://my_pkg.deb&quot;</a></span><br style=3D"font-=
family:Arial,Helvetica,sans-serif;font-size:13px">
        <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"=
>
        <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">SRC_URI[md5sum]
          =3D &quot;&quot;</span><br style=3D"font-family:Arial,Helvetica,s=
ans-serif;font-size:13px">
        <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">SRC_URI[sha256sum]
          =3D &quot;&quot;</span><br style=3D"font-family:Arial,Helvetica,s=
ans-serif;font-size:13px">
        <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"=
>
        <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">S
          =3D &quot;${WORKDIR}/my_pkg-${PV}&quot;</span><br style=3D"font-f=
amily:Arial,Helvetica,sans-serif;font-size:13px">
        <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"=
>
        <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">inherit
          package_deb</span><br style=3D"font-family:Arial,Helvetica,sans-s=
erif;font-size:13px">
        <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"=
>
        <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"=
>
        <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">do_install_append()
          {</span><br style=3D"font-family:Arial,Helvetica,sans-serif;font-=
size:13px">
        <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">=C2=A0=C2=A0=C2=A0
          install -m 755 -D ${WORKDIR}/my_pkg.deb</span><br style=3D"font-f=
amily:Arial,Helvetica,sans-serif;font-size:13px">
        <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">}</span><br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13=
px">
        <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"=
>
        <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"=
>
        <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"=
>
        <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px"=
>
        <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">Has
          anyone created recipe to install deb packages?</span>
        <div><font face=3D"Arial, Helvetica, sans-serif"><br>
          </font></div>
        <div><font face=3D"Arial, Helvetica, sans-serif"><br>
          </font></div>
        <div><font face=3D"Arial, Helvetica, sans-serif"><br>
          </font></div>
        <div><font face=3D"Arial, Helvetica, sans-serif"><br>
          </font></div>
        <div><span style=3D"font-family:Arial,Helvetica,sans-serif;font-siz=
e:13px">My
            bibake process build...</span><br style=3D"font-family:Arial,He=
lvetica,sans-serif;font-size:13px">
          <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">
          <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">
          <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1=
3px">Reading
            package lists...</span><br style=3D"font-family:Arial,Helvetica=
,sans-serif;font-size:13px">
          <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1=
3px">Building
            dependency tree...</span><br style=3D"font-family:Arial,Helveti=
ca,sans-serif;font-size:13px">
          <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1=
3px">Reading
            state information...</span><br style=3D"font-family:Arial,Helve=
tica,sans-serif;font-size:13px">
          <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1=
3px">Package
            pkgAll is not available, but is referred to by another
            package.</span><br style=3D"font-family:Arial,Helvetica,sans-se=
rif;font-size:13px">
          <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1=
3px">This
            may mean that the package is missing, has been obsoleted, or</s=
pan><br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1=
3px">is
            only available from another source</span><br style=3D"font-fami=
ly:Arial,Helvetica,sans-serif;font-size:13px">
          <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">
          <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1=
3px">W:
            Unable to read /home/bueno/yocto/poky/</span><span style=3D"fon=
t-family:Arial,Helvetica,sans-serif;font-size:13px">projTest/tmp/work/qemux=
86-</span><span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1=
3px">poky-linux/projTest/1.0-r0/</span><span style=3D"font-family:Arial,Hel=
vetica,sans-serif;font-size:13px">apt/preferences.d/
            - DirectoryExists (2: No such file or directory)</span><br styl=
e=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1=
3px">E:
            Package &#39;pkgAll&#39; has no installation candidate</span><b=
r style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">
          <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1=
3px">ERROR:
            Function failed: do_rootfs</span><br style=3D"font-family:Arial=
,Helvetica,sans-serif;font-size:13px">
          <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1=
3px">ERROR:
            Logfile of failure stored in: /home/bueno/yocto/poky/</span><sp=
an style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">projTest=
/tmp/work/qemux86-</span><span style=3D"font-family:Arial,Helvetica,sans-se=
rif;font-size:13px">poky-linux/projTest/1.0-r0/</span><span style=3D"font-f=
amily:Arial,Helvetica,sans-serif;font-size:13px">temp/log.do_rootfs.27791</=
span><br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1=
3px">ERROR:
            Task 7 (/home/bueno/yocto/poky/</span><span style=3D"font-famil=
y:Arial,Helvetica,sans-serif;font-size:13px">projTest//../meta-pkgAll/</spa=
n><span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">rec=
ipes-core/images/projTest.</span><span style=3D"font-family:Arial,Helvetica=
,sans-serif;font-size:13px">bb,
            do_rootfs) failed with exit code &#39;1&#39;</span><br style=3D=
"font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">
          <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">
          <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">
          <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1=
3px">Now,
            my recipe the package deb:</span><br style=3D"font-family:Arial=
,Helvetica,sans-serif;font-size:13px">
          <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">
          <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1=
3px">SUMMARY
            =3D &quot;XXXXXX&quot;</span><br style=3D"font-family:Arial,Hel=
vetica,sans-serif;font-size:13px">
          <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1=
3px">DESCRIPTION
            =3D &quot;XXXXXXXXXXXXXX&quot;</span><br style=3D"font-family:A=
rial,Helvetica,sans-serif;font-size:13px">
          <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">
          <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1=
3px">LICENSE
            =3D &quot;CLOSED&quot;</span><br style=3D"font-family:Arial,Hel=
vetica,sans-serif;font-size:13px">
          <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">
          <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">
          <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1=
3px">SRC_URI
            =3D <a>&quot;file://projTest_1.0.deb&quot;</a></span><br style=
=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">
          <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1=
3px">SRC_URI[md5sum]
            =3D &quot;</span><span style=3D"font-family:Arial,Helvetica,san=
s-serif;font-size:13px">32d0c2b332440a47dd370eXXXXXXXX</span><span style=3D=
"font-family:Arial,Helvetica,sans-serif;font-size:13px">XX&quot;</span><br =
style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">
          <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1=
3px">SRC_URI[sha256sum]
            =3D &quot;</span><span style=3D"font-family:Arial,Helvetica,san=
s-serif;font-size:13px">42ebcf856aa626aa6d021173f4d931</span><span style=3D=
"font-family:Arial,Helvetica,sans-serif;font-size:13px">e0c84a0a27808d147db=
89942XXXXXX</span><span style=3D"font-family:Arial,Helvetica,sans-serif;fon=
t-size:13px">XXXX&quot;</span><br style=3D"font-family:Arial,Helvetica,sans=
-serif;font-size:13px">
          <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">
          <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">
          <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">
          <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1=
3px">inherit
            bin_package pkgconfig</span><br style=3D"font-family:Arial,Helv=
etica,sans-serif;font-size:13px">
          <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">
          <br style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13p=
x">
          <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1=
3px">install_deb()
            {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span><span style=3D"font-family:Ar=
ial,Helvetica,sans-serif;font-size:13px">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</s=
pan><span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">=
=C2=A0=C2=A0=C2=A0</span><br style=3D"font-family:Arial,Helvetica,sans-seri=
f;font-size:13px">
          <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1=
3px">=C2=A0=C2=A0=C2=A0
            ${STAGING_BINDIR_NATIVE}/dpkg --root=3D${IMAGE_ROOTFS}/
            --admindir=3D${IMAGE_ROOTFS}/</span><span style=3D"font-family:=
Arial,Helvetica,sans-serif;font-size:13px">var/lib/dpkg/
            -i <a>file://projTest_1.0.deb</a></span><br style=3D"font-famil=
y:Arial,Helvetica,sans-serif;font-size:13px">
          <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1=
3px">}=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span><span style=3D"font-family:Arial,Helve=
tica,sans-serif;font-size:13px">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span><span=
 style=3D"font-family:Arial,Helvetica,sans-serif;font-size:13px">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span><br style=3D"font-family:Arial,H=
elvetica,sans-serif;font-size:13px">
          <span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:1=
3px">ROOTFS_POSTPROCESS_COMMAND
            +=3D &quot;install_deb; &quot;</span></div>
        <div><font face=3D"Arial, Helvetica, sans-serif"><br>
          </font></div>
        <div><font face=3D"Arial, Helvetica, sans-serif"><br>
          </font></div>
        <div><font face=3D"Arial, Helvetica, sans-serif"><br clear=3D"all">=
<span class=3D"HOEnZb"><font color=3D"#888888">
          </font></span></font><span class=3D"HOEnZb"><font color=3D"#88888=
8">
          <div><br>
          </div>
          -- <br>
          <div>
            <div dir=3D"ltr">
              <div>
                <div dir=3D"ltr">
                  <div>
                    <div dir=3D"ltr">
                      <div>
                        <div dir=3D"ltr">
                          <div>
                            <div dir=3D"ltr"><i><b>Att,<br>
                                  Cleiton Bueno</b></i><br>
                              <div><br>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </font></span></div><span class=3D"HOEnZb"><font color=3D"#888888">
      </font></span></div><span class=3D"HOEnZb"><font color=3D"#888888">
      <br>
      <fieldset></fieldset>
      <br>
    </font></span></blockquote>
    <br>
  </div>

</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div class=
=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div dir=
=3D"ltr"><div><div dir=3D"ltr"><div><div dir=3D"ltr"><i><b>Att,<br>Cleiton =
Bueno</b></i><br><div><br></div></div></div></div></div></div></div></div><=
/div></div></div>
</div></div>

--001a11c2760a9430f0050d34466b--
