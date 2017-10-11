Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5B63E00C9F; Wed, 11 Oct 2017 02:10:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, SPF_HELO_PASS,
	UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7592FE00CB6
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 02:10:07 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id 1912726DA35
Message-ID: <1507713002.9509.25.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 11 Oct 2017 11:10:02 +0200
In-Reply-To: <CAJTo0La5mPdRzFOv-ofnHwuyG3fNPEf_be=V9d_TZAHLJxt_kA@mail.gmail.com>
References: <1507671003.9509.21.camel@collabora.co.uk>
	<OF5390C64E.C78BBBE2-ON882581B5.007B79AE-882581B5.007BBDD4@selinc.com>
	<1507704333.9509.23.camel@collabora.co.uk>
	<CAJTo0La5mPdRzFOv-ofnHwuyG3fNPEf_be=V9d_TZAHLJxt_kA@mail.gmail.com>
X-Mailer: Evolution 3.22.6-1 
Mime-Version: 1.0
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
X-List-Received-Date: Wed, 11 Oct 2017 09:10:15 -0000
Content-Type: multipart/alternative; boundary="=-CeDgum2twCAg+Guh/P92"

--=-CeDgum2twCAg+Guh/P92
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Thanks Ross
The problem is that it fails with Pyro and also with oe-core master:
I use recipe in meta-skeleton/recipes-skeleton/useradd/ to create users and the following
testuser.bb:
--------------------------------------------------------testuser.bb---------------------------------
-----------------------SUMMARY = ""DESCRIPTION = ""PR = "r1"LICENSE = "MIT"LIC_FILES_CHKSUM =
"file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
DEPENDS += " useradd-example "
SRC_URI = " "
S = "${WORKDIR}"
do_install () {	install -d -m 755 ${D}${datadir}/testuser1	echo hello >
${D}${datadir}/testuser1/file	chown -R user1 ${D}${datadir}/testuser1}
FILES_${PN} = "${datadir}/testuser1/* "-------------------------------------------------------------
--------------------------------------------------------------
and I have the following error and users are not populated in testuser recipe-sysroot/etc/passwd
ERROR: testuser-1.0-r1 do_install: Function failed: do_install (log file is located at
/home/aragua/src/oe-core/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/testuser/1.0-
r1/temp/log.do_install.26924)ERROR: Logfile of failure stored in: /home/aragua/src/oe-
core/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/testuser/1.0-
r1/temp/log.do_install.26924Log data follows:| DEBUG: Executing python function
extend_recipe_sysroot| NOTE: Direct dependencies are ['/home/aragua/src/oe-core/build/../meta-
coerd/recipes-test/useradd/useradd-example.bb:do_populate_sysroot',
'virtual:native:/home/aragua/src/oe-core/meta/recipes-
devtools/pseudo/pseudo_1.8.2.bb:do_populate_sysroot', '/home/aragua/src/oe-core/meta/recipes-
core/glibc/glibc_2.26.bb:do_populate_sysroot', '/home/aragua/src/oe-core/meta/recipes-
devtools/gcc/gcc-runtime_7.2.bb:do_populate_sysroot', '/home/aragua/src/oe-core/meta/recipes-
devtools/quilt/quilt-native_0.65.bb:do_populate_sysroot', '/home/aragua/src/oe-core/meta/recipes-
devtools/gcc/gcc-cross_7.2.bb:do_populate_sysroot']| NOTE: Installed into sysroot: ['pseudo-
native']| NOTE: Skipping as already exists in sysroot: ['useradd-example', 'glibc', 'gcc-runtime',
'quilt-native', 'gcc-cross-arm', 'shadow', 'base-files', 'base-passwd', 'shadow-sysroot', 'linux-
libc-headers', 'libgcc', 'xz-native', 'texinfo-dummy-native', 'binutils-cross-arm', 'gmp-native',
'libtool-native', 'zlib-native', 'libmpc-native', 'gnu-config-native', 'automake-native', 'mpfr-
native', 'autoconf-native', 'opkg-utils', 'attr', 'gettext-minimal-native', 'flex-native', 'bison-
native', 'm4-native']| DEBUG: Python function extend_recipe_sysroot finished| DEBUG: Executing shell
function do_install| chown: invalid user: ‘user1’| WARNING: exit code 1 from a shell command.|
ERROR: Function failed: do_install (log file is located at /home/aragua/src/oe-core/build/tmp-
glibc/work/cortexa9hf-neon-oe-linux-gnueabi/testuser/1.0-r1/temp/log.do_install.26924)
Thanks
On Wed, 2017-10-11 at 09:54 +0100, Burton, Ross wrote:
> Both of your recipes will need to depend on the user-creating recipe.
> Ross
> On 11 October 2017 at 07:45, Fabien Lahoudere <fabien.lahoudere@collabora.co.uk> wrote:
> > On Tue, 2017-10-10 at 15:31 -0700, Aaron_Wright@selinc.com wrote:
> > > > Hi
> > > 
> > > > 
> > > 
> > > > I want to use the same user in two different recipe. 
> > > 
> > > > I create the user in recipe A.bb and it works fine.
> > > 
> > > > Now I want to use the same user in B.bb so I add DEPENDS = "A"
> > > 
> > > 
> > > > thinking that sysroot will be
> > > 
> > > > populated with A.bb users.
> > > 
> > > > 
> > > 
> > > > But when I bitbake the recipe, user is not found. 
> > > 
> > > > I conclude that I have to use USERADD_* in each recipe, right?
> > > 
> > > > 
> > > 
> > > > What happen if I use different USERADD_PARAM_${PN} in each recipe?
> > > 
> > > > 
> > > 
> > > > I also try to use EXTRA_USERS_PARAMS but without success?
> > > 
> > > > 
> > > 
> > > > Is there a way to populate sysroot with users?
> > > 
> > > > 
> > > 
> > > > Thanks
> > > 
> > > > 
> > > 
> > > > -- 
> > > 
> > > > Fabien
> > > 
> > > > -- 
> > > 
> > > 
> > > 
> > > When I have this issue I just make a separate recipe
> > > that creates the user, and have all the other recipes depend on it.
> > > 
> > > That way the user is always created with the same
> > > parameters, without possibility of getting out of sync.
> > 
> > Thanks Aaron
> > 
> > Yes it is exactly what we do before with morty but now we use pyro and the sysroot is per recipe
> > and not common to all recipe.
> > And I search in the sysroot and the users created in recipe A are not applied to /etc/passwd.
> > --
> > 
> > _______________________________________________
> > 
> > yocto mailing list
> > 
> > yocto@yoctoproject.org
> > 
> > https://lists.yoctoproject.org/listinfo/yocto
> > 
> > 
-- 
Fabien

--=-CeDgum2twCAg+Guh/P92
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div>Thanks Ross</div><div><br></div><div>The prob=
lem is that it fails with Pyro and also with oe-core master:</div><div><br>=
</div><div>I use recipe in meta-skeleton/recipes-skeleton/useradd/ to creat=
e users and the following testuser.bb:</div><div><br></div><div>-----------=
---------------------------------------------testuser.bb-------------------=
-------------------------------------</div><div>SUMMARY =3D ""</div><div>DE=
SCRIPTION =3D ""</div><div>PR =3D "r1"</div><div>LICENSE =3D "MIT"</div><di=
v>LIC_FILES_CHKSUM =3D "file://${COREBASE}/meta/COPYING.MIT;md5=3D3da9cfbcb=
788c80a0384361b4de20420"</div><div><br></div><div>DEPENDS +=3D " useradd-ex=
ample "</div><div><br></div><div>SRC_URI =3D " "</div><div><br></div><div>S=
 =3D "${WORKDIR}"</div><div><br></div><div>do_install () {</div><div>	insta=
ll -d -m 755 ${D}${datadir}/testuser1</div><div>	echo hello &gt; ${D}${data=
dir}/testuser1/file</div><div>	chown -R user1 ${D}${datadir}/testuser1</div=
><div>}</div><div><br></div><div>FILES_${PN} =3D "${datadir}/testuser1/* "<=
/div><div>-----------------------------------------------------------------=
----------------------------------------------------------</div><div><br></=
div><div>and I have the following error and users are not populated in test=
user recipe-sysroot/etc/passwd</div><div><br></div><div>ERROR: testuser-1.0=
-r1 do_install: Function failed: do_install (log file is located at /home/a=
ragua/src/oe-core/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/tes=
tuser/1.0-r1/temp/log.do_install.26924)</div><div>ERROR: Logfile of failure=
 stored in: /home/aragua/src/oe-core/build/tmp-glibc/work/cortexa9hf-neon-o=
e-linux-gnueabi/testuser/1.0-r1/temp/log.do_install.26924</div><div>Log dat=
a follows:</div><div>| DEBUG: Executing python function extend_recipe_sysro=
ot</div><div>| NOTE: Direct dependencies are ['/home/aragua/src/oe-core/bui=
ld/../meta-coerd/recipes-test/useradd/useradd-example.bb:do_populate_sysroo=
t', 'virtual:native:/home/aragua/src/oe-core/meta/recipes-devtools/pseudo/p=
seudo_1.8.2.bb:do_populate_sysroot', '/home/aragua/src/oe-core/meta/recipes=
-core/glibc/glibc_2.26.bb:do_populate_sysroot', '/home/aragua/src/oe-core/m=
eta/recipes-devtools/gcc/gcc-runtime_7.2.bb:do_populate_sysroot', '/home/ar=
agua/src/oe-core/meta/recipes-devtools/quilt/quilt-native_0.65.bb:do_popula=
te_sysroot', '/home/aragua/src/oe-core/meta/recipes-devtools/gcc/gcc-cross_=
7.2.bb:do_populate_sysroot']</div><div>| NOTE: Installed into sysroot: ['ps=
eudo-native']</div><div>| NOTE: Skipping as already exists in sysroot: ['us=
eradd-example', 'glibc', 'gcc-runtime', 'quilt-native', 'gcc-cross-arm', 's=
hadow', 'base-files', 'base-passwd', 'shadow-sysroot', 'linux-libc-headers'=
, 'libgcc', 'xz-native', 'texinfo-dummy-native', 'binutils-cross-arm', 'gmp=
-native', 'libtool-native', 'zlib-native', 'libmpc-native', 'gnu-config-nat=
ive', 'automake-native', 'mpfr-native', 'autoconf-native', 'opkg-utils', 'a=
ttr', 'gettext-minimal-native', 'flex-native', 'bison-native', 'm4-native']=
</div><div>| DEBUG: Python function extend_recipe_sysroot finished</div><di=
v>| DEBUG: Executing shell function do_install</div><div>| chown: invalid u=
ser: =E2=80=98user1=E2=80=99</div><div>| WARNING: exit code 1 from a shell =
command.</div><div>| ERROR: Function failed: do_install (log file is locate=
d at /home/aragua/src/oe-core/build/tmp-glibc/work/cortexa9hf-neon-oe-linux=
-gnueabi/testuser/1.0-r1/temp/log.do_install.26924)</div><div><br></div><di=
v>Thanks</div><div><br></div><div><br></div><div>On Wed, 2017-10-11 at 09:5=
4 +0100, Burton, Ross wrote:</div><blockquote type=3D"cite"><div dir=3D"ltr=
">Both of your recipes will need to depend on the user-creating recipe.<div=
><br></div><div>Ross</div></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On 11 October 2017 at 07:45, Fabien Lahoudere <span dir=3D=
"ltr">&lt;<a href=3D"mailto:fabien.lahoudere@collabora.co.uk" target=3D"_bl=
ank">fabien.lahoudere@collabora.co.uk</a>&gt;</span> wrote:<br><blockquote =
type=3D"cite"><div><div><div class=3D"h5"><div>On Tue, 2017-10-10 at 15:31 =
-0700, <a href=3D"mailto:Aaron_Wright@selinc.com" target=3D"_blank">Aaron_W=
right@selinc.com</a> wrote:</div><blockquote type=3D"cite"><tt><font size=
=3D"2">&gt; Hi<br>
&gt; <br>
&gt; I want to use the same user in two different recipe.&nbsp;<br>
&gt; I create the user in recipe A.bb and it works fine.<br>
&gt; Now I want to use the same user in B.bb so I add DEPENDS =3D "A"
<br>
&gt; thinking that sysroot will be<br>
&gt; populated with A.bb users.<br>
&gt; <br>
&gt; But when I bitbake the recipe, user is not found.&nbsp;<br>
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
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>
</blockquote><div><span><pre>-- <br></pre><div style=3D"width: 100ch;">Fabi=
en</div></span></div></body></html>

--=-CeDgum2twCAg+Guh/P92--
