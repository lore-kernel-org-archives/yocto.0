Return-Path: <bluehills7@comcast.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CEA8BE00B6F; Wed,  2 Aug 2017 11:36:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [69.252.207.40 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bluehills7[at]comcast.net)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from resqmta-ch2-08v.sys.comcast.net
	(resqmta-ch2-08v.sys.comcast.net [69.252.207.40])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D518DE007E4
	for <yocto@yoctoproject.org>; Wed,  2 Aug 2017 11:36:14 -0700 (PDT)
Received: from resomta-ch2-08v.sys.comcast.net ([69.252.207.104])
	by resqmta-ch2-08v.sys.comcast.net with ESMTP
	id cyUrdt8hyc9BRcyVCdl6hK; Wed, 02 Aug 2017 18:36:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20161114; t=1501698974;
	bh=Z1LYw8UochGJPBu8gRlSpkz566ma+KJT54ZtlnzJMYc=;
	h=Received:Received:Date:From:Reply-To:To:Message-ID:Subject:
	MIME-Version:Content-Type;
	b=EKVzgXq555XbxNlNJEKcdFAFVXLs7g7uJHb4Rt8uKflzQG1InvxSC3yYRztQOoBQo
	sQxLU5ImE/mMERimj1Rrx2RgIkwErtzEYMOoSWISwxU+jCJ8rNXnWQU4SwIZUeTZS+
	v7aVI5j21HXSi4iqNITc+5F76adi15UF8IaZkhlupGSdzXR3mXHEY62qOGFMwydvUV
	rMdC6HGWV3NB1DbgYUhd1p6nV2DPO+LJEVZugvWFQWSMVW9dhJuK1wX+zS4NSmif7V
	r6NKraEJxQFpSLdK0uI3xfL6k/6wcnMg3hgO82VMiwoZStUljFk0wWgc/7Z/BSNjEg
	ZXDjJxjvgEyXg==
Received: from oxapp-asb-60o.email.comcast.net ([96.118.62.114])
	by resomta-ch2-08v.sys.comcast.net with SMTP
	id cyTFdZPXkFVt8cyTGdxK45; Wed, 02 Aug 2017 18:34:14 +0000
Date: Wed, 2 Aug 2017 14:34:11 -0400 (EDT)
From: RUSSELL PETERSON <bluehills7@comcast.net>
To: Russell Peterson <bluehills7@comcast.net>
Message-ID: <1944952060.249322.1501698853728@connect.xfinity.com>
In-Reply-To: <33807B63-4010-4E20-9200-92EA19FBED02@comcast.net>
References: <FCFE4E57-753C-47F3-AFBC-A969AABDDD2C@comcast.net>
	<20571187.vhiZQWh1oz@peggleto-mobl.ger.corp.intel.com>
	<1928283135.524860.1501624351743@connect.xfinity.com>
	<33807B63-4010-4E20-9200-92EA19FBED02@comcast.net>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Originating-Client: open-xchange-appsuite
X-Originating-IP: ::ffff:216.156.69.42
X-Mailer: Open-Xchange Mailer v7.8.3-Rev20
X-CMAE-Envelope: MS4wfDP6b/3rj/Ik+CMjWqYvwN3bCsDiGtaWcOTZkpQWpT4ejgImE/V/EloVcfL9VQSQ2HlDGORxQLuTt4u8y3Zxp82AK9WxkLtJsSe8LP/qIzCeGy/UKQE6
	JUjQ2lPeTrvbN73sMqlpYxKH1WIFrPb7L6HUElGi0+C7avBkDlzY2pACzwRX9d94gxwJe+hLjySz3whbKftg+A4FBuIMdZsATFItSLeDug5D320MJ2XFErlY
	01o5c1JkhW4KxQ26B5OCMeqUdnp8yIEKT8r41u0VsBA=
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: extensible SDK build failure
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: RUSSELL PETERSON <bluehills7@comcast.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 02 Aug 2017 18:36:18 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_249321_662190168.1501698853714"

------=_Part_249321_662190168.1501698853714
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Frustrating in that I can't get the eSDK to fully build. I'm past the issue
with kernel-devsrc and harfbuzz... but now I see hundreds of messages like
below. Anyone seen this before? From what I can tell these tasks are being
executed out of the run queue.  Not all the messages are from cve-check but=
 most.

Anyone seen this?



ERROR: Task attr-native.do_cve_check attempted to execute unexpectedly
ERROR: Task binutils-native.do_cve_check attempted to execute unexpectedly
ERROR: Task dbus-glib.do_cve_check attempted to execute unexpectedly
ERROR: Task libtool-native.do_cve_check attempted to execute unexpectedly
ERROR: Task fixesproto.do_cve_check attempted to execute unexpectedly
ERROR: Task bc.do_cve_check attempted to execute unexpectedly
ERROR: Task lsof.do_cve_check attempted to execute unexpectedly
ERROR: Task python-setuptools-native.do_cve_check attempted to execute
unexpectedly
ERROR: Task libxrandr-native.do_cve_check attempted to execute unexpectedly
ERROR: Task libpciaccess.do_cve_check attempted to execute unexpectedly
ERROR: Task xf86driproto.do_cve_check attempted to execute unexpectedly
ERROR: Task ncurses-native.do_cve_check attempted to execute unexpectedly

On August 1, 2017 at 8:55 PM Russell Peterson <bluehills7@comcast.net> wrot=
e:

FYI: For those interested=E2=80=A6

Just as a test/workaround I added a harfbuzz_%.bbappend file to my meta lay=
er
and directly set the acpaths variable to the STAGING native directory and t=
hat
seems to work fine. Works for now but I will try to come up with a cleaner,
more generic fix.

acpaths =3D =E2=80=9C-I ${STAGING_DATADIR_NATIVE}/aclocal/=E2=80=9C

Regards,

Russell

>=20
>     On Aug 1, 2017, at 5:52 PM, RUSSELL PETERSON <bluehills7@comcast.net>=
 wrote:
>=20
>     Thank you for the response, Paul. You were correct that I had the
>     TOOLCHAIN_*_TASK variables set in my machine.conf file. I put it into=
 my
>     image bb file and things seem far more sane... although I must admit =
I am
>     not 100% sure why it works but I will study it a bit and figure it ou=
t.
>     Thanks for your help.
>=20
>     I have run into another issue while trying to generate the eSDK in th=
at
>     there appears to be an issue with building harfbuzz. From what I can =
tell,
>     this appears to be an issue with the search paths for the autoreconf =
call.
>     The autoreconf tool is finding the pkg.m4 file in the harfbuzz m4 dir=
ectory
>     FIRST and therefore not getting the one in
>     harfbuzz/1.4.1-r0/recipe-sysroot-native/usr/share/aclocal which indee=
d has
>     the correct m4_pattern_allow.
>=20
>     Do you think that's a bug or something with my recipe? Seems like I j=
ust
>     want to reverse the -I options... but I don't know how, exactly.
>=20
>     /scratch/russell/yocto-00dc025f/work/aarch64-poky-linux/harfbuzz/1.4.=
1-r0/recipe-sysroot-native/usr/bin/autoconf
>     --include=3D/scratch/russell/yocto-00dc025f/work/aarch64-poky-linux/h=
arfbuzz/1.4.1-r0/harfbuzz-1.4.1/m4/
>     --include=3D/scratch/russell/yocto-00dc025f/work/aarch64-poky-linux/h=
arfbuzz/1.4.1-r0/recipe-sysroot-native/usr/share/aclocal/
>     --force
>=20
>     ../../../autoconf-2.69/lib/autoconf/specific.m4:368:
>     AC_USE_SYSTEM_EXTENSIONS is expanded from...
>     | configure.ac:22: the top level
>     | configure:18902: error: possibly undefined macro: PKG_CONFIG_SYSROO=
T_DIR
>     | If this token and others are legitimate, please use m4_pattern_allo=
w.
>     | See the Autoconf documentation.
>     | autoreconf:
>     /scratch/russell/yocto-00dc025f/work/aarch64-poky-linux/harfbuzz/1.4.=
1-r0/recipe-sysroot-native/usr/bin/autoconf
>     failed with exit status: 1
>     | ERROR: Function failed: do_configure (log file is located at
>     /scratch/russell/yocto-00dc025f/work/aarch64-poky-linux/harfbuzz/1.4.=
1-r0/temp/log.do_configure.14956)
>=20
>         > >=20
> >         On July 31, 2017 at 9:50 AM Paul Eggleton <paul.eggleton@linux.=
intel.com>
> >         wrote:
> >=20
> >         Hi Russell,
> >=20
> >         It looks to me like you have added kernel-devsrc to the TOOLCHA=
IN_*_TASK
> >         variable at the global level, which you really don't want to do=
 if you're
> >         going to be building buildtools-tarball (which eSDK will build =
as a
> >         dependency). I'd suggest moving that setting to your image reci=
pe.
> >=20
> >         Cheers,
> >         Paul
> >=20
> >         On Sunday, 30 July 2017 4:22:24 PM CEST Russell Peterson wrote:
> >=20
> >             > > >=20
> > >             Hello, all.
> > >=20
> > >             I=E2=80=99m trying to build the eSDK for my platform and =
I just can=E2=80=99t figure out
> > >             why dnf can=E2=80=99t find kernel-devsrc. It=E2=80=99s th=
ere, I added it. The =E2=80=9Cnormal
> > >             SDK=E2=80=9D uses it and builds fine. Just no luck with t=
he eSDK.
> > >             Any help out there? Poky is pyro. aarch64 SoC target plat=
form with an
> > >             x86 build host (CentOS 7.3). Basically I just bitbake -c
> > >             do_populate_sdk_ext core-image-full. I do have a linux ke=
rnel recipe
> > >             that pulls the kernel from the standard kernel.org <http:=
//kernel.org/>
> > >             repo.
> > >=20
> > >             ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: Could n=
ot invoke dnf.
> > >             Command
> > >             '/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-po=
kysdk-linux/buildtools-tarball/1.0-r0/recipe-sysroot-native/usr/bin/dnf
> > >             -y -c
> > >             /scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pok=
ysdk-linux/buildtools-tarball/1.0-r0/sdk/image/opt/poky/2.3.1/sysroots/none=
/etc/dnf/dnf.conf
> > >             --setopt=3Dreposdir=3D/scratch/russell/yocto-00dc025f/wor=
k/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/sdk/image/opt/po=
ky/2.3.1/sysroots/none/etc/yum.repos.d
> > >             --repofrompath=3Doe-repo,/scratch/russell/yocto-00dc025f/=
work/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/oe-rootfs-rep=
o
> > >             --installroot=3D/scratch/russell/yocto-00dc025f/work/x86_=
64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/sdk/image/opt/poky/2.3=
.1/sysroots/none
> > >             --setopt=3Dlogdir=3D/scratch/russell/yocto-00dc025f/work/=
x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/temp
> > >             --nogpgcheck install kernel-devsrc' returned 1:
> > >             Added oe-repo repo from
> > >             file:///scratch/russell/yocto-00dc025f/work/x86_64-native=
sdk-pokysdk-linux/buildtools-tarball/1.0-r0/oe-rootfs-repo
> > >             <file:///scratch/russell/yocto-00dc025f/work/x86_64-nativ=
esdk-pokysdk-linux/buildtools-tarball/1.0-r0/oe-rootfs-repo>
> > >             Last metadata expiration check: 0:00:01 ago on Sun Jul 30=
 01:38:48 2017
> > >             UTC.
> > >             No package kernel-devsrc available.
> > >             Error: Unable to find a match
> > >=20
> > >             ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: Functio=
n failed:
> > >             do_populate_sdk
> > >             ERROR: Logfile of failure stored in:
> > >             /scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pok=
ysdk-linux/buildtools-tarball/1.0-r0/temp/log.do_populate_sdk.4836
> > >             ERROR: Task
> > >             (/labhome/russell/src/bf/poky/meta/recipes-core/meta/buil=
dtools-tarball.bb:do_populate_sdk)
> > >             failed with exit code '1'
> > >=20
> > >         > >=20
> >         --
> >=20
> >         Paul Eggleton
> >=20
> >         Intel Open Source Technology Centre
> >         --
> >=20
> >         _______________________________________________
> >         yocto mailing list
> >         yocto@yoctoproject.org
> >         https://lists.yoctoproject.org/listinfo/yocto
> >=20
> >     >=20

------=_Part_249321_662190168.1501698853714
MIME-Version: 1.0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html><head>
    <meta charset=3D"UTF-8">
</head><body><p>Frustrating in that I can&#39;t get the eSDK to fully build=
. I&#39;m past the issue<br>with kernel-devsrc and harfbuzz... but now I se=
e hundreds of messages like<br>below. Anyone seen this before? From what I =
can tell these tasks are being<br>executed out of the run queue. &#160;Not =
all the messages are from cve-check but most.</p><p>Anyone seen this?</p><p=
><br></p><p><br></p><p>ERROR: Task attr-native.do_cve_check attempted to ex=
ecute unexpectedly<br>ERROR: Task binutils-native.do_cve_check attempted to=
 execute unexpectedly<br>ERROR: Task dbus-glib.do_cve_check attempted to ex=
ecute unexpectedly<br>ERROR: Task libtool-native.do_cve_check attempted to =
execute unexpectedly<br>ERROR: Task fixesproto.do_cve_check attempted to ex=
ecute unexpectedly<br>ERROR: Task bc.do_cve_check attempted to execute unex=
pectedly<br>ERROR: Task lsof.do_cve_check attempted to execute unexpectedly=
<br>ERROR: Task python-setuptools-native.do_cve_check attempted to execute<=
br>unexpectedly<br>ERROR: Task libxrandr-native.do_cve_check attempted to e=
xecute unexpectedly<br>ERROR: Task libpciaccess.do_cve_check attempted to e=
xecute unexpectedly<br>ERROR: Task xf86driproto.do_cve_check attempted to e=
xecute unexpectedly<br>ERROR: Task ncurses-native.do_cve_check attempted to=
 execute unexpectedly</p><p>On August 1, 2017 at 8:55 PM Russell Peterson &=
#60;bluehills7@comcast.net&#62; wrote:</p><p>FYI: For those interested&#823=
0;</p><p>Just as a test/workaround I added a harfbuzz_%.bbappend file to my=
 meta layer<br>and directly set the acpaths variable to the STAGING native =
directory and that<br>seems to work fine. Works for now but I will try to c=
ome up with a cleaner,<br>more generic fix.</p><p>acpaths =3D &#8220;-I ${S=
TAGING_DATADIR_NATIVE}/aclocal/&#8220;</p><p>Regards,</p><p>Russell</p><blo=
ckquote><p>On Aug 1, 2017, at 5:52 PM, RUSSELL PETERSON &#60;bluehills7@com=
cast.net&#62; wrote:</p><p>Thank you for the response, Paul. You were corre=
ct that I had the<br>TOOLCHAIN_*_TASK variables set in my machine.conf file=
. I put it into my<br>image bb file and things seem far more sane... althou=
gh I must admit I am<br>not 100% sure why it works but I will study it a bi=
t and figure it out.<br>Thanks for your help.</p><p>I have run into another=
 issue while trying to generate the eSDK in that<br>there appears to be an =
issue with building harfbuzz. From what I can tell,<br>this appears to be a=
n issue with the search paths for the autoreconf call.<br>The autoreconf to=
ol is finding the pkg.m4 file in the harfbuzz m4 directory<br>FIRST and the=
refore not getting the one in<br>harfbuzz/1.4.1-r0/recipe-sysroot-native/us=
r/share/aclocal which indeed has<br>the correct m4_pattern_allow.</p><p>Do =
you think that&#39;s a bug or something with my recipe? Seems like I just<b=
r>want to reverse the -I options... but I don&#39;t know how, exactly.</p><=
p>/scratch/russell/yocto-00dc025f/work/aarch64-poky-linux/harfbuzz/1.4.1-r0=
/recipe-sysroot-native/usr/bin/autoconf<br>--include=3D/scratch/russell/yoc=
to-00dc025f/work/aarch64-poky-linux/harfbuzz/1.4.1-r0/harfbuzz-1.4.1/m4/<br=
>--include=3D/scratch/russell/yocto-00dc025f/work/aarch64-poky-linux/harfbu=
zz/1.4.1-r0/recipe-sysroot-native/usr/share/aclocal/<br>--force</p><p>../..=
/../autoconf-2.69/lib/autoconf/specific.m4:368:<br>AC_USE_SYSTEM_EXTENSIONS=
 is expanded from...<br>| configure.ac:22: the top level<br>| configure:189=
02: error: possibly undefined macro: PKG_CONFIG_SYSROOT_DIR<br>| If this to=
ken and others are legitimate, please use m4_pattern_allow.<br>| See the Au=
toconf documentation.<br>| autoreconf:<br>/scratch/russell/yocto-00dc025f/w=
ork/aarch64-poky-linux/harfbuzz/1.4.1-r0/recipe-sysroot-native/usr/bin/auto=
conf<br>failed with exit status: 1<br>| ERROR: Function failed: do_configur=
e (log file is located at<br>/scratch/russell/yocto-00dc025f/work/aarch64-p=
oky-linux/harfbuzz/1.4.1-r0/temp/log.do_configure.14956)</p><blockquote><p>=
On July 31, 2017 at 9:50 AM Paul Eggleton &#60;paul.eggleton@linux.intel.co=
m&#62;<br>wrote:</p><p>Hi Russell,</p><p>It looks to me like you have added=
 kernel-devsrc to the TOOLCHAIN_*_TASK<br>variable at the global level, whi=
ch you really don&#39;t want to do if you&#39;re<br>going to be building bu=
ildtools-tarball (which eSDK will build as a<br>dependency). I&#39;d sugges=
t moving that setting to your image recipe.</p><p>Cheers,<br>Paul</p><p>On =
Sunday, 30 July 2017 4:22:24 PM CEST Russell Peterson wrote:</p><blockquote=
><p>Hello, all.</p><p>I&#8217;m trying to build the eSDK for my platform an=
d I just can&#8217;t figure out<br>why dnf can&#8217;t find kernel-devsrc. =
It&#8217;s there, I added it. The &#8220;normal<br>SDK&#8221; uses it and b=
uilds fine. Just no luck with the eSDK.<br>Any help out there? Poky is pyro=
. aarch64 SoC target platform with an<br>x86 build host (CentOS 7.3). Basic=
ally I just bitbake -c<br>do_populate_sdk_ext core-image-full. I do have a =
linux kernel recipe<br>that pulls the kernel from the standard kernel.org &=
#60;http://kernel.org/&#62;<br>repo.</p><p>ERROR: buildtools-tarball-1.0-r0=
 do_populate_sdk: Could not invoke dnf.<br>Command<br>&#39;/scratch/russell=
/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-=
r0/recipe-sysroot-native/usr/bin/dnf<br>-y -c<br>/scratch/russell/yocto-00d=
c025f/work/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/sdk/ima=
ge/opt/poky/2.3.1/sysroots/none/etc/dnf/dnf.conf<br>--setopt=3Dreposdir=3D/=
scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linux/buildtoo=
ls-tarball/1.0-r0/sdk/image/opt/poky/2.3.1/sysroots/none/etc/yum.repos.d<br=
>--repofrompath=3Doe-repo,/scratch/russell/yocto-00dc025f/work/x86_64-nativ=
esdk-pokysdk-linux/buildtools-tarball/1.0-r0/oe-rootfs-repo<br>--installroo=
t=3D/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linux/bui=
ldtools-tarball/1.0-r0/sdk/image/opt/poky/2.3.1/sysroots/none<br>--setopt=
=3Dlogdir=3D/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-l=
inux/buildtools-tarball/1.0-r0/temp<br>--nogpgcheck install kernel-devsrc&#=
39; returned 1:<br>Added oe-repo repo from<br>file:///scratch/russell/yocto=
-00dc025f/work/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/oe-=
rootfs-repo<br>&#60;file:///scratch/russell/yocto-00dc025f/work/x86_64-nati=
vesdk-pokysdk-linux/buildtools-tarball/1.0-r0/oe-rootfs-repo&#62;<br>Last m=
etadata expiration check: 0:00:01 ago on Sun Jul 30 01:38:48 2017<br>UTC.<b=
r>No package kernel-devsrc available.<br>Error: Unable to find a match</p><=
p>ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: Function failed:<br>do_=
populate_sdk<br>ERROR: Logfile of failure stored in:<br>/scratch/russell/yo=
cto-00dc025f/work/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/=
temp/log.do_populate_sdk.4836<br>ERROR: Task<br>(/labhome/russell/src/bf/po=
ky/meta/recipes-core/meta/buildtools-tarball.bb:do_populate_sdk)<br>failed =
with exit code &#39;1&#39;</p></blockquote><p>--</p><p>Paul Eggleton</p><p>=
Intel Open Source Technology Centre<br>--</p><p>___________________________=
____________________<br>yocto mailing list<br>yocto@yoctoproject.org<br><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctop=
roject.org/listinfo/yocto</a></p></blockquote></blockquote></body></html>
=20

------=_Part_249321_662190168.1501698853714--
