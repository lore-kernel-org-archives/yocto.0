Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E325AE00BE8; Wed, 11 Oct 2017 02:14:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAC5CE00B83
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 02:14:13 -0700 (PDT)
Received: by mail-it0-f53.google.com with SMTP id c3so2129841itc.3
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 02:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yU0lfK8CdBMU5qCqb9QaguXGgDPC/iOPKJsWOFiWID4=;
	b=r/vQ2AYwSQ+Jjyp/0xfp2nu6eGG/GNUgt5015Z0ZjJ3hL95btiTebJKh13Q/RbC74h
	UtQOiPGNl00oQz+JaPfNSFpfj3zN7kWstAKCq/B3Md7XYy1MsYfNRdSYAt+1M7U+D2z0
	Qvf8WRh1PlYgfpM/xGdglQMM6aStI6kKuSRcwbWymJ4kf50FSfEsNMS+6Uu5P4bDm6tV
	y9H51hLvakyiP+eD8vuF5YLHEwImqQ6F0zB0njx2Q4fcJnPftO+erbPpm0/a3Sm1reRH
	YrNQfU6ETuJzupCvK+jqmcL94zr06MvHRbOhpoGAx0f4Pal1qecYG9ML1gXYaLHjp/ap
	RXIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yU0lfK8CdBMU5qCqb9QaguXGgDPC/iOPKJsWOFiWID4=;
	b=hmdwLA5I1hQvRYblKi+TPDrHQAAbPzSsoyny8i5qPfUiibP3okrDZ9klIiss3RrPlv
	RD9mX8ZcKe9jsdkaz7q04tWANAn7ljyYK+E+peDVpR/g17DcOxuqfvlFDJi/o6+5qFdc
	MLyyJn5AKA46eWsg//PU2MomXLDuRjwjtV67TUBVakzjj4b44Tlh7vonf/1wmso7rx6n
	vF+LDjTgPSw+cDaAa6I+a7zYzCF+E0cIJ47Se6nS0L3zBF2NHg9woNDsCYLKctwA6hnh
	4WvbtD9W5DfwDeO7BGxzU1Dh3zkSw1DFzZH8TFPZ2NP8vlolX772lKqI5smJtYQ5apis
	iljQ==
X-Gm-Message-State: AMCzsaU34zQifbF0ekZyVq9w/PAe+4FtOfeRzJqvvZLJUznFg4qGyqAG
	1h3C2kPeCgIjhDGQANL9gWfENR48YILlJ5YVbtOVxw==
X-Google-Smtp-Source: AOwi7QBs0fhJSr+LDP83sehSyTwwfFPbXtCitOpOEWmVNgL3d7Hdg9jWtBBXGnXcXuggxTddoNr6uVfGx0LbrVpC5Xg=
X-Received: by 10.36.150.4 with SMTP id z4mr23445913itd.48.1507713253010; Wed,
	11 Oct 2017 02:14:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.205 with HTTP; Wed, 11 Oct 2017 02:13:52 -0700 (PDT)
In-Reply-To: <1507713002.9509.25.camel@collabora.co.uk>
References: <1507671003.9509.21.camel@collabora.co.uk>
	<OF5390C64E.C78BBBE2-ON882581B5.007B79AE-882581B5.007BBDD4@selinc.com>
	<1507704333.9509.23.camel@collabora.co.uk>
	<CAJTo0La5mPdRzFOv-ofnHwuyG3fNPEf_be=V9d_TZAHLJxt_kA@mail.gmail.com>
	<1507713002.9509.25.camel@collabora.co.uk>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 11 Oct 2017 10:13:52 +0100
Message-ID: <CAJTo0LZeo2RzpN-iuokT-PPF1N1PThMPYwnAeS05dKpNs5SvUA@mail.gmail.com>
To: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to use same user in two recipes?
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
X-List-Received-Date: Wed, 11 Oct 2017 09:14:14 -0000
Content-Type: multipart/alternative; boundary="94eb2c07ea98de9611055b41d8b9"

--94eb2c07ea98de9611055b41d8b9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Looks like the useradd-example recipe isn't working properly. Check the
contents of the files in the sysroot to see if it did the right thing, and
for errors in the recipe's logs.

On 11 October 2017 at 10:10, Fabien Lahoudere <
fabien.lahoudere@collabora.co.uk> wrote:

> Thanks Ross
>
> The problem is that it fails with Pyro and also with oe-core master:
>
> I use recipe in meta-skeleton/recipes-skeleton/useradd/ to create users
> and the following testuser.bb:
>
> --------------------------------------------------------
> testuser.bb--------------------------------------------------------
> SUMMARY =3D ""
> DESCRIPTION =3D ""
> PR =3D "r1"
> LICENSE =3D "MIT"
> LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta/COPYING.MIT;md5=3D
> 3da9cfbcb788c80a0384361b4de20420"
>
> DEPENDS +=3D " useradd-example "
>
> SRC_URI =3D " "
>
> S =3D "${WORKDIR}"
>
> do_install () {
> install -d -m 755 ${D}${datadir}/testuser1
> echo hello > ${D}${datadir}/testuser1/file
> chown -R user1 ${D}${datadir}/testuser1
> }
>
> FILES_${PN} =3D "${datadir}/testuser1/* "
> ------------------------------------------------------------
> ---------------------------------------------------------------
>
> and I have the following error and users are not populated in testuser
> recipe-sysroot/etc/passwd
>
> ERROR: testuser-1.0-r1 do_install: Function failed: do_install (log file
> is located at /home/aragua/src/oe-core/build/tmp-glibc/work/
> cortexa9hf-neon-oe-linux-gnueabi/testuser/1.0-r1/temp/
> log.do_install.26924)
> ERROR: Logfile of failure stored in: /home/aragua/src/oe-core/
> build/tmp-glibc/work/cortexa9hf-neon-oe-linux-
> gnueabi/testuser/1.0-r1/temp/log.do_install.26924
> Log data follows:
> | DEBUG: Executing python function extend_recipe_sysroot
> | NOTE: Direct dependencies are ['/home/aragua/src/oe-core/
> build/../meta-coerd/recipes-test/useradd/useradd-example.bb:do_populate_s=
ysroot',
> 'virtual:native:/home/aragua/src/oe-core/meta/recipes-
> devtools/pseudo/pseudo_1.8.2.bb:do_populate_sysroot',
> '/home/aragua/src/oe-core/meta/recipes-core/glibc/glibc_2.26.bb:do_popula=
te_sysroot',
> '/home/aragua/src/oe-core/meta/recipes-devtools/gcc/gcc-runtime_7.2.bb:
> do_populate_sysroot', '/home/aragua/src/oe-core/
> meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_populate_sysroot',
> '/home/aragua/src/oe-core/meta/recipes-devtools/gcc/gcc-cross_7.2.bb:
> do_populate_sysroot']
> | NOTE: Installed into sysroot: ['pseudo-native']
> | NOTE: Skipping as already exists in sysroot: ['useradd-example',
> 'glibc', 'gcc-runtime', 'quilt-native', 'gcc-cross-arm', 'shadow',
> 'base-files', 'base-passwd', 'shadow-sysroot', 'linux-libc-headers',
> 'libgcc', 'xz-native', 'texinfo-dummy-native', 'binutils-cross-arm',
> 'gmp-native', 'libtool-native', 'zlib-native', 'libmpc-native',
> 'gnu-config-native', 'automake-native', 'mpfr-native', 'autoconf-native',
> 'opkg-utils', 'attr', 'gettext-minimal-native', 'flex-native',
> 'bison-native', 'm4-native']
> | DEBUG: Python function extend_recipe_sysroot finished
> | DEBUG: Executing shell function do_install
> | chown: invalid user: =E2=80=98user1=E2=80=99
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_install (log file is located at
> /home/aragua/src/oe-core/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-
> gnueabi/testuser/1.0-r1/temp/log.do_install.26924)
>
> Thanks
>
>
> On Wed, 2017-10-11 at 09:54 +0100, Burton, Ross wrote:
>
> Both of your recipes will need to depend on the user-creating recipe.
>
> Ross
>
> On 11 October 2017 at 07:45, Fabien Lahoudere <fabien.lahoudere@collabora=
.
> co.uk> wrote:
>
> On Tue, 2017-10-10 at 15:31 -0700, Aaron_Wright@selinc.com wrote:
>
> > Hi
> >
> > I want to use the same user in two different recipe.
> > I create the user in recipe A.bb and it works fine.
> > Now I want to use the same user in B.bb so I add DEPENDS =3D "A"
> > thinking that sysroot will be
> > populated with A.bb users.
> >
> > But when I bitbake the recipe, user is not found.
> > I conclude that I have to use USERADD_* in each recipe, right?
> >
> > What happen if I use different USERADD_PARAM_${PN} in each recipe?
> >
> > I also try to use EXTRA_USERS_PARAMS but without success?
> >
> > Is there a way to populate sysroot with users?
> >
> > Thanks
> >
> > --
> > Fabien
> > --
>
> When I have this issue I just make a separate recipe that creates the
> user, and have all the other recipes depend on it.
> That way the user is always created with the same parameters, without
> possibility of getting out of sync.
>
>
> Thanks Aaron
>
> Yes it is exactly what we do before with morty but now we use pyro and th=
e
> sysroot is per recipe and not common to all recipe.
> And I search in the sysroot and the users created in recipe A are not
> applied to /etc/passwd.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> --
>
> Fabien
>

--94eb2c07ea98de9611055b41d8b9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Looks like the useradd-example recipe isn&#39;t working pr=
operly. Check the contents of the files in the sysroot to see if it did the=
 right thing, and for errors in the recipe&#39;s logs.</div><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">On 11 October 2017 at 10:10, Fab=
ien Lahoudere <span dir=3D"ltr">&lt;<a href=3D"mailto:fabien.lahoudere@coll=
abora.co.uk" target=3D"_blank">fabien.lahoudere@collabora.co.uk</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div><div>Thanks Ross</div><di=
v><br></div><div>The problem is that it fails with Pyro and also with oe-co=
re master:</div><div><br></div><div>I use recipe in meta-skeleton/recipes-<=
wbr>skeleton/useradd/ to create users and the following <a href=3D"http://t=
estuser.bb" target=3D"_blank">testuser.bb</a>:</div><div><br></div><div>---=
---------------------------<wbr>--------------------------<wbr>testuser.bb-=
------------------<wbr>------------------------------<wbr>-------</div><div=
>SUMMARY =3D &quot;&quot;</div><div>DESCRIPTION =3D &quot;&quot;</div><div>=
PR =3D &quot;r1&quot;</div><div>LICENSE =3D &quot;MIT&quot;</div><div>LIC_F=
ILES_CHKSUM =3D &quot;file://${COREBASE}/meta/<wbr>COPYING.MIT;md5=3D<wbr>3=
da9cfbcb788c80a0384361b4de204<wbr>20&quot;</div><div><br></div><div>DEPENDS=
 +=3D &quot; useradd-example &quot;</div><div><br></div><div>SRC_URI =3D &q=
uot; &quot;</div><div><br></div><div>S =3D &quot;${WORKDIR}&quot;</div><div=
><br></div><div>do_install () {</div><div>	install -d -m 755 ${D}${datadir}=
/testuser1</div><div>	echo hello &gt; ${D}${datadir}/testuser1/file</div><d=
iv>	chown -R user1 ${D}${datadir}/testuser1</div><div>}</div><div><br></div=
><div>FILES_${PN} =3D &quot;${datadir}/testuser1/* &quot;</div><div>-------=
-----------------------<wbr>------------------------------<wbr>------------=
------------------<wbr>------------------------------<wbr>---</div><div><br=
></div><div>and I have the following error and users are not populated in t=
estuser recipe-sysroot/etc/passwd</div><div><br></div><div>ERROR: testuser-=
1.0-r1 do_install: Function failed: do_install (log file is located at /hom=
e/aragua/src/oe-core/<wbr>build/tmp-glibc/work/<wbr>cortexa9hf-neon-oe-linu=
x-<wbr>gnueabi/testuser/1.0-r1/temp/<wbr>log.do_install.26924)</div><div>ER=
ROR: Logfile of failure stored in: /home/aragua/src/oe-core/<wbr>build/tmp-=
glibc/work/<wbr>cortexa9hf-neon-oe-linux-<wbr>gnueabi/testuser/1.0-r1/temp/=
<wbr>log.do_install.26924</div><div>Log data follows:</div><div>| DEBUG: Ex=
ecuting python function extend_recipe_sysroot</div><div>| NOTE: Direct depe=
ndencies are [&#39;/home/aragua/src/oe-core/<wbr>build/../meta-coerd/recipe=
s-<wbr>test/useradd/useradd-example.<wbr>bb:do_populate_sysroot&#39;, &#39;=
virtual:native:/home/aragua/<wbr>src/oe-core/meta/recipes-<wbr>devtools/pse=
udo/pseudo_1.8.2.<wbr>bb:do_populate_sysroot&#39;, &#39;/home/aragua/src/oe=
-core/<wbr>meta/recipes-core/glibc/glibc_<wbr>2.26.bb:do_populate_sysroot&#=
39;, &#39;/home/aragua/src/oe-core/<wbr>meta/recipes-devtools/gcc/gcc-<wbr>=
runtime_7.2.bb:do_populate_<wbr>sysroot&#39;, &#39;/home/aragua/src/oe-core=
/<wbr>meta/recipes-devtools/quilt/<wbr>quilt-native_0.65.bb:do_<wbr>populat=
e_sysroot&#39;, &#39;/home/aragua/src/oe-core/<wbr>meta/recipes-devtools/gc=
c/gcc-<wbr>cross_7.2.bb:do_populate_<wbr>sysroot&#39;]</div><div>| NOTE: In=
stalled into sysroot: [&#39;pseudo-native&#39;]</div><div>| NOTE: Skipping =
as already exists in sysroot: [&#39;useradd-example&#39;, &#39;glibc&#39;, =
&#39;gcc-runtime&#39;, &#39;quilt-native&#39;, &#39;gcc-cross-arm&#39;, &#3=
9;shadow&#39;, &#39;base-files&#39;, &#39;base-passwd&#39;, &#39;shadow-sys=
root&#39;, &#39;linux-libc-headers&#39;, &#39;libgcc&#39;, &#39;xz-native&#=
39;, &#39;texinfo-dummy-native&#39;, &#39;binutils-cross-arm&#39;, &#39;gmp=
-native&#39;, &#39;libtool-native&#39;, &#39;zlib-native&#39;, &#39;libmpc-=
native&#39;, &#39;gnu-config-native&#39;, &#39;automake-native&#39;, &#39;m=
pfr-native&#39;, &#39;autoconf-native&#39;, &#39;opkg-utils&#39;, &#39;attr=
&#39;, &#39;gettext-minimal-native&#39;, &#39;flex-native&#39;, &#39;bison-=
native&#39;, &#39;m4-native&#39;]</div><div>| DEBUG: Python function extend=
_recipe_sysroot finished</div><div>| DEBUG: Executing shell function do_ins=
tall</div><div>| chown: invalid user: =E2=80=98user1=E2=80=99</div><div>| W=
ARNING: exit code 1 from a shell command.</div><div>| ERROR: Function faile=
d: do_install (log file is located at /home/aragua/src/oe-core/<wbr>build/t=
mp-glibc/work/<wbr>cortexa9hf-neon-oe-linux-<wbr>gnueabi/testuser/1.0-r1/te=
mp/<wbr>log.do_install.26924)</div><div><br></div><div>Thanks</div><div><di=
v class=3D"h5"><div><br></div><div><br></div><div>On Wed, 2017-10-11 at 09:=
54 +0100, Burton, Ross wrote:</div><blockquote type=3D"cite"><div dir=3D"lt=
r">Both of your recipes will need to depend on the user-creating recipe.<di=
v><br></div><div>Ross</div></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On 11 October 2017 at 07:45, Fabien Lahoudere <span dir=3D=
"ltr">&lt;<a href=3D"mailto:fabien.lahoudere@collabora.co.uk" target=3D"_bl=
ank">fabien.lahoudere@collabora.<wbr>co.uk</a>&gt;</span> wrote:<br><blockq=
uote type=3D"cite"><div><div><div class=3D"m_8748076466519383934h5"><div>On=
 Tue, 2017-10-10 at 15:31 -0700, <a href=3D"mailto:Aaron_Wright@selinc.com"=
 target=3D"_blank">Aaron_Wright@selinc.com</a> wrote:</div><blockquote type=
=3D"cite"><tt><font size=3D"2">&gt; Hi<br>
&gt; <br>
&gt; I want to use the same user in two different recipe.=C2=A0<br>
&gt; I create the user in recipe A.bb and it works fine.<br>
&gt; Now I want to use the same user in B.bb so I add DEPENDS =3D &quot;A&q=
uot;
<br>
&gt; thinking that sysroot will be<br>
&gt; populated with A.bb users.<br>
&gt; <br>
&gt; But when I bitbake the recipe, user is not found.=C2=A0<br>
&gt; I conclude that I have to use USERADD_* in each recipe, right?<br>
&gt; <br>
&gt; What happen if I use different USERADD_PARAM_${PN} in each recipe?<br>
&gt; <br>
&gt; I also try to use EXTRA_USERS_PARAMS but without success?<br>
&gt; <br>
&gt; Is there a way to populate sysroot with users?<br>
&gt; <br>
&gt; Thanks<br>
&gt; <br>
&gt; -- <br>
&gt; Fabien<br>
&gt; -- <br>
</font></tt>
<br><tt><font size=3D"2">When I have this issue I just make a separate reci=
pe
that creates the user, and have all the other recipes depend on it.</font><=
/tt>
<br><tt><font size=3D"2">That way the user is always created with the same
parameters, without possibility of getting out of sync.</font></tt></blockq=
uote><div><br></div></div></div><div>Thanks Aaron</div><div><br></div><div>=
Yes it is exactly what we do before with morty but now we use pyro and the =
sysroot is per recipe and not common to all recipe.</div><div>And I search =
in the sysroot and the users created in recipe A are not applied to /etc/pa=
sswd.</div></div><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>
</blockquote></div></div><span class=3D"HOEnZb"><font color=3D"#888888"><di=
v><span><pre>-- <br></pre><div style=3D"width:100ch">Fabien</div></span></d=
iv></font></span></div></blockquote></div><br></div>

--94eb2c07ea98de9611055b41d8b9--
