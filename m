Return-Path: <bluehills7@comcast.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0575CE00BA2; Fri,  4 Aug 2017 20:48:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bluehills7[at]comcast.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [69.252.207.44 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from resqmta-ch2-12v.sys.comcast.net
	(resqmta-ch2-12v.sys.comcast.net [69.252.207.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 568B5E00B6F
	for <yocto@yoctoproject.org>; Fri,  4 Aug 2017 20:48:07 -0700 (PDT)
Received: from resomta-ch2-06v.sys.comcast.net ([69.252.207.102])
	by resqmta-ch2-12v.sys.comcast.net with ESMTP
	id dq4NdgXgVGiQTdq4NdFtpL; Sat, 05 Aug 2017 03:48:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20161114; t=1501904887;
	bh=/tB4P/fvuYXR9My7O9nYDVlz6dEGvDUfOBd1Q3ZJErA=;
	h=Received:Received:From:Message-Id:Content-Type:Mime-Version:
	Subject:Date:To;
	b=FgcEpjtlF7silIaVqOYuKUcMsVhJpGvyotI5lQwJaHM5IdZ0y8BQ/gzzEeudfVSks
	iq2R6HOliMb1tndkDsAytfliKoMU85wGC+GVae7Mmg9XRor4eqcDibMWNxzDr8COIT
	kU3KbN0BlNa9KpxcAublN/w6P+iouL/0usv/+B1vw47JaiYldljBDNzc1l5XWRXmll
	kZSF3fVSIQrXHuOc7v3aEPfJFwhcIz2/aV881YdGszrb9NIbO1vuYx6lCugCjQp7pw
	JGzWr2zatDEjNeenkYESmBiF46SkAOu9941TqFF2x4YWJRtKqek6Y9fx+Ha9+4vWB9
	M1qDDjUbJpIDA==
Received: from [IPv6:2601:18f:800:acc1:147b:a126:d00f:3236]
	([IPv6:2601:18f:800:acc1:147b:a126:d00f:3236])
	by resomta-ch2-06v.sys.comcast.net with SMTP
	id dq4MdLSltrV3qdq4MdkzD3; Sat, 05 Aug 2017 03:48:07 +0000
From: Russell Peterson <bluehills7@comcast.net>
Message-Id: <C88F4F72-0945-4573-AAD2-D7FAC4620914@comcast.net>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Fri, 4 Aug 2017 23:48:12 -0400
In-Reply-To: <CAC+thW3Dth8CuHTjT6aLstbS_b=dRJKLeV7NEFurjW6t44chjg@mail.gmail.com>
To: Andrea Galbusera <gizero@gmail.com>
References: <FCFE4E57-753C-47F3-AFBC-A969AABDDD2C@comcast.net>
	<20571187.vhiZQWh1oz@peggleto-mobl.ger.corp.intel.com>
	<1928283135.524860.1501624351743@connect.xfinity.com>
	<33807B63-4010-4E20-9200-92EA19FBED02@comcast.net>
	<1944952060.249322.1501698853728@connect.xfinity.com>
	<CAC+thW3Dth8CuHTjT6aLstbS_b=dRJKLeV7NEFurjW6t44chjg@mail.gmail.com>
X-Mailer: Apple Mail (2.3273)
X-CMAE-Envelope: MS4wfH4FSsaQ8cIcCBe+jKAQ4/pai3e4YfZn1cE1E1oWWqKhVfsH3hESZmgYc+e2PCWg1eTVgq7DvMW1pOIbRqeYtcJ/JfZX26IikHnMG1Vu2DO852qd4riM
	W49AFBDsL5IdRbSGdPxawOHOHE63JlLTB0RzruITTR1LNAQL366woh9ctePcimE31KweikTTW8fCK4lBvr2NeFLTrEvH9a7HWdDzfsHII9bfBc5tZOCoFJI7
	ImBAUTrmz7UWWJ2IJvltjD6O12FFd4eoSaFa8BR2mxU=
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: extensible SDK build failure
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
X-List-Received-Date: Sat, 05 Aug 2017 03:48:10 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_A6858AA0-AD5A-44A1-8C11-AE757A3E438A"

--Apple-Mail=_A6858AA0-AD5A-44A1-8C11-AE757A3E438A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Thanks for the help but, no.  I=E2=80=99m just trying to build the eSDK =
via the normal bitbake process.

Russell

> On Aug 4, 2017, at 11:52 AM, Andrea Galbusera <gizero@gmail.com> =
wrote:
>=20
> Hi,
>=20
> On Wed, Aug 2, 2017 at 8:34 PM, RUSSELL PETERSON =
<bluehills7@comcast.net <mailto:bluehills7@comcast.net>> wrote:
> Frustrating in that I can't get the eSDK to fully build. I'm past the =
issue
> with kernel-devsrc and harfbuzz... but now I see hundreds of messages =
like
> below. Anyone seen this before? =46rom what I can tell these tasks are =
being
> executed out of the run queue.  Not all the messages are from =
cve-check but most.
>=20
> Anyone seen this?
>=20
> Are you using devtool to work on recipes/sources? If so, try to run =
'devtool reset -a' before building the eSDK.=20
>=20
>=20
>=20
>=20
> ERROR: Task attr-native.do_cve_check attempted to execute unexpectedly
> ERROR: Task binutils-native.do_cve_check attempted to execute =
unexpectedly
> ERROR: Task dbus-glib.do_cve_check attempted to execute unexpectedly
> ERROR: Task libtool-native.do_cve_check attempted to execute =
unexpectedly
> ERROR: Task fixesproto.do_cve_check attempted to execute unexpectedly
> ERROR: Task bc.do_cve_check attempted to execute unexpectedly
> ERROR: Task lsof.do_cve_check attempted to execute unexpectedly
> ERROR: Task python-setuptools-native.do_cve_check attempted to execute
> unexpectedly
> ERROR: Task libxrandr-native.do_cve_check attempted to execute =
unexpectedly
> ERROR: Task libpciaccess.do_cve_check attempted to execute =
unexpectedly
> ERROR: Task xf86driproto.do_cve_check attempted to execute =
unexpectedly
> ERROR: Task ncurses-native.do_cve_check attempted to execute =
unexpectedly
>=20
> On August 1, 2017 at 8:55 PM Russell Peterson <bluehills7@comcast.net =
<mailto:bluehills7@comcast.net>> wrote:
>=20
> FYI: For those interested=E2=80=A6
>=20
> Just as a test/workaround I added a harfbuzz_%.bbappend file to my =
meta layer
> and directly set the acpaths variable to the STAGING native directory =
and that
> seems to work fine. Works for now but I will try to come up with a =
cleaner,
> more generic fix.
>=20
> acpaths =3D =E2=80=9C-I ${STAGING_DATADIR_NATIVE}/aclocal/=E2=80=9C
>=20
> Regards,
>=20
> Russell
>=20
> On Aug 1, 2017, at 5:52 PM, RUSSELL PETERSON <bluehills7@comcast.net =
<mailto:bluehills7@comcast.net>> wrote:
>=20
> Thank you for the response, Paul. You were correct that I had the
> TOOLCHAIN_*_TASK variables set in my machine.conf file. I put it into =
my
> image bb file and things seem far more sane... although I must admit I =
am
> not 100% sure why it works but I will study it a bit and figure it =
out.
> Thanks for your help.
>=20
> I have run into another issue while trying to generate the eSDK in =
that
> there appears to be an issue with building harfbuzz. =46rom what I can =
tell,
> this appears to be an issue with the search paths for the autoreconf =
call.
> The autoreconf tool is finding the pkg.m4 file in the harfbuzz m4 =
directory
> FIRST and therefore not getting the one in
> harfbuzz/1.4.1-r0/recipe-sysroot-native/usr/share/aclocal which indeed =
has
> the correct m4_pattern_allow.
>=20
> Do you think that's a bug or something with my recipe? Seems like I =
just
> want to reverse the -I options... but I don't know how, exactly.
>=20
> =
/scratch/russell/yocto-00dc025f/work/aarch64-poky-linux/harfbuzz/1.4.1-r0/=
recipe-sysroot-native/usr/bin/autoconf
> =
--include=3D/scratch/russell/yocto-00dc025f/work/aarch64-poky-linux/harfbu=
zz/1.4.1-r0/harfbuzz-1.4.1/m4/
> =
--include=3D/scratch/russell/yocto-00dc025f/work/aarch64-poky-linux/harfbu=
zz/1.4.1-r0/recipe-sysroot-native/usr/share/aclocal/
> --force
>=20
> ../../../autoconf-2.69/lib/autoconf/specific.m4:368:
> AC_USE_SYSTEM_EXTENSIONS is expanded from...
> | configure.ac:22 <http://configure.ac:22/>: the top level
> | configure:18902: error: possibly undefined macro: =
PKG_CONFIG_SYSROOT_DIR
> | If this token and others are legitimate, please use =
m4_pattern_allow.
> | See the Autoconf documentation.
> | autoreconf:
> =
/scratch/russell/yocto-00dc025f/work/aarch64-poky-linux/harfbuzz/1.4.1-r0/=
recipe-sysroot-native/usr/bin/autoconf
> failed with exit status: 1
> | ERROR: Function failed: do_configure (log file is located at
> =
/scratch/russell/yocto-00dc025f/work/aarch64-poky-linux/harfbuzz/1.4.1-r0/=
temp/log.do_configure.14956)
>=20
> On July 31, 2017 at 9:50 AM Paul Eggleton =
<paul.eggleton@linux.intel.com <mailto:paul.eggleton@linux.intel.com>>
> wrote:
>=20
> Hi Russell,
>=20
> It looks to me like you have added kernel-devsrc to the =
TOOLCHAIN_*_TASK
> variable at the global level, which you really don't want to do if =
you're
> going to be building buildtools-tarball (which eSDK will build as a
> dependency). I'd suggest moving that setting to your image recipe.
>=20
> Cheers,
> Paul
>=20
> On Sunday, 30 July 2017 4:22:24 PM CEST Russell Peterson wrote:
>=20
> Hello, all.
>=20
> I=E2=80=99m trying to build the eSDK for my platform and I just =
can=E2=80=99t figure out
> why dnf can=E2=80=99t find kernel-devsrc. It=E2=80=99s there, I added =
it. The =E2=80=9Cnormal
> SDK=E2=80=9D uses it and builds fine. Just no luck with the eSDK.
> Any help out there? Poky is pyro. aarch64 SoC target platform with an
> x86 build host (CentOS 7.3). Basically I just bitbake -c
> do_populate_sdk_ext core-image-full. I do have a linux kernel recipe
> that pulls the kernel from the standard kernel.org =
<http://kernel.org/> <http://kernel.org/ <http://kernel.org/>>
> repo.
>=20
> ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: Could not invoke =
dnf.
> Command
> =
'/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linux/build=
tools-tarball/1.0-r0/recipe-sysroot-native/usr/bin/dnf
> -y -c
> =
/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linux/buildt=
ools-tarball/1.0-r0/sdk/image/opt/poky/2.3.1/sysroots/none/etc/dnf/dnf.con=
f
> =
--setopt=3Dreposdir=3D/scratch/russell/yocto-00dc025f/work/x86_64-nativesd=
k-pokysdk-linux/buildtools-tarball/1.0-r0/sdk/image/opt/poky/2.3.1/sysroot=
s/none/etc/yum.repos.d
> =
--repofrompath=3Doe-repo,/scratch/russell/yocto-00dc025f/work/x86_64-nativ=
esdk-pokysdk-linux/buildtools-tarball/1.0-r0/oe-rootfs-repo
> =
--installroot=3D/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-poky=
sdk-linux/buildtools-tarball/1.0-r0/sdk/image/opt/poky/2.3.1/sysroots/none=

> =
--setopt=3Dlogdir=3D/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-=
pokysdk-linux/buildtools-tarball/1.0-r0/temp
> --nogpgcheck install kernel-devsrc' returned 1:
> Added oe-repo repo from
> file:///scratch/russell/yocto- =
<file:///scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linu=
x/buildtools-tarball/1.0-r0/oe-rootfs-repo>00dc025f/work/x86_64- =
<file:///scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linu=
x/buildtools-tarball/1.0-r0/oe-rootfs-repo>nativesdk-pokysdk-linux/ =
<file:///scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linu=
x/buildtools-tarball/1.0-r0/oe-rootfs-repo>buildtools-tarball/1.0-r0/oe- =
<file:///scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linu=
x/buildtools-tarball/1.0-r0/oe-rootfs-repo>rootfs-repo =
<file:///scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linu=
x/buildtools-tarball/1.0-r0/oe-rootfs-repo>
> <file:///scratch/russell/ =
<file:///scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linu=
x/buildtools-tarball/1.0-r0/oe-rootfs-repo>yocto-00dc025f/work/x86_64- =
<file:///scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linu=
x/buildtools-tarball/1.0-r0/oe-rootfs-repo>nativesdk-pokysdk-linux/ =
<file:///scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linu=
x/buildtools-tarball/1.0-r0/oe-rootfs-repo>buildtools-tarball/1.0-r0/oe- =
<file:///scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linu=
x/buildtools-tarball/1.0-r0/oe-rootfs-repo>rootfs-repo =
<file:///scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linu=
x/buildtools-tarball/1.0-r0/oe-rootfs-repo>>
> Last metadata expiration check: 0:00:01 ago on Sun Jul 30 01:38:48 =
2017
> UTC.
> No package kernel-devsrc available.
> Error: Unable to find a match
>=20
> ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: Function failed:
> do_populate_sdk
> ERROR: Logfile of failure stored in:
> =
/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linux/buildt=
ools-tarball/1.0-r0/temp/log.do_populate_sdk.4836
> ERROR: Task
> =
(/labhome/russell/src/bf/poky/meta/recipes-core/meta/buildtools-tarball.bb=
:do_populate_sdk)
> failed with exit code '1'
>=20
> --
>=20
> Paul Eggleton
>=20
> Intel Open Source Technology Centre
> --
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>

--Apple-Mail=_A6858AA0-AD5A-44A1-8C11-AE757A3E438A
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">Thanks for the help but, no. &nbsp;I=E2=80=99m just trying to =
build the eSDK via the normal bitbake process.<div class=3D""><br =
class=3D""></div><div class=3D"">Russell</div><div class=3D""><br =
class=3D""><div><blockquote type=3D"cite" class=3D""><div class=3D"">On =
Aug 4, 2017, at 11:52 AM, Andrea Galbusera &lt;<a =
href=3D"mailto:gizero@gmail.com" class=3D"">gizero@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><div =
dir=3D"ltr" style=3D"font-family: Helvetica; font-size: 12px; =
font-style: normal; font-variant-caps: normal; font-weight: normal; =
letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px;" class=3D"">Hi,<br class=3D""><div =
class=3D"gmail_extra"><br class=3D""><div class=3D"gmail_quote">On Wed, =
Aug 2, 2017 at 8:34 PM, RUSSELL PETERSON<span =
class=3D"Apple-converted-space">&nbsp;</span><span dir=3D"ltr" =
class=3D"">&lt;<a href=3D"mailto:bluehills7@comcast.net" target=3D"_blank"=
 class=3D"">bluehills7@comcast.net</a>&gt;</span><span =
class=3D"Apple-converted-space">&nbsp;</span>wrote:<br =
class=3D""><blockquote class=3D"gmail_quote" style=3D"margin: 0px 0px =
0px 0.8ex; border-left-width: 1px; border-left-style: solid; =
border-left-color: rgb(204, 204, 204); padding-left: 1ex;"><u =
class=3D""></u><div class=3D""><p class=3D"">Frustrating in that I can't =
get the eSDK to fully build. I'm past the issue<br class=3D"">with =
kernel-devsrc and harfbuzz... but now I see hundreds of messages like<br =
class=3D"">below. Anyone seen this before? =46rom what I can tell these =
tasks are being<br class=3D"">executed out of the run queue.&nbsp; Not =
all the messages are from cve-check but most.</p><p class=3D"">Anyone =
seen this?</p></div></blockquote><div class=3D"">Are you using devtool =
to work on recipes/sources? If so, try to run 'devtool reset -a' before =
building the eSDK.&nbsp;<br class=3D""></div><blockquote =
class=3D"gmail_quote" style=3D"margin: 0px 0px 0px 0.8ex; =
border-left-width: 1px; border-left-style: solid; border-left-color: =
rgb(204, 204, 204); padding-left: 1ex;"><div class=3D""><p class=3D""><br =
class=3D""></p><p class=3D""><br class=3D""></p><p class=3D"">ERROR: =
Task attr-native.do_cve_check attempted to execute unexpectedly<br =
class=3D"">ERROR: Task binutils-native.do_cve_check attempted to execute =
unexpectedly<br class=3D"">ERROR: Task dbus-glib.do_cve_check attempted =
to execute unexpectedly<br class=3D"">ERROR: Task =
libtool-native.do_cve_check attempted to execute unexpectedly<br =
class=3D"">ERROR: Task fixesproto.do_cve_check attempted to execute =
unexpectedly<br class=3D"">ERROR: Task bc.do_cve_check attempted to =
execute unexpectedly<br class=3D"">ERROR: Task lsof.do_cve_check =
attempted to execute unexpectedly<br class=3D"">ERROR: Task =
python-setuptools-native.do_<wbr class=3D"">cve_check attempted to =
execute<br class=3D"">unexpectedly<br class=3D"">ERROR: Task =
libxrandr-native.do_cve_check attempted to execute unexpectedly<br =
class=3D"">ERROR: Task libpciaccess.do_cve_check attempted to execute =
unexpectedly<br class=3D"">ERROR: Task xf86driproto.do_cve_check =
attempted to execute unexpectedly<br class=3D"">ERROR: Task =
ncurses-native.do_cve_check attempted to execute unexpectedly</p><div =
class=3D""><div class=3D"h5"><p class=3D"">On August 1, 2017 at 8:55 PM =
Russell Peterson &lt;<a href=3D"mailto:bluehills7@comcast.net" =
target=3D"_blank" class=3D"">bluehills7@comcast.net</a>&gt; wrote:</p><p =
class=3D"">FYI: For those interested=E2=80=A6</p><p class=3D"">Just as a =
test/workaround I added a harfbuzz_%.bbappend file to my meta layer<br =
class=3D"">and directly set the acpaths variable to the STAGING native =
directory and that<br class=3D"">seems to work fine. Works for now but I =
will try to come up with a cleaner,<br class=3D"">more generic =
fix.</p><p class=3D"">acpaths =3D =E2=80=9C-I =
${STAGING_DATADIR_NATIVE}/<wbr class=3D"">aclocal/=E2=80=9C</p><p =
class=3D"">Regards,</p><p class=3D"">Russell</p><blockquote class=3D""><p =
class=3D"">On Aug 1, 2017, at 5:52 PM, RUSSELL PETERSON &lt;<a =
href=3D"mailto:bluehills7@comcast.net" target=3D"_blank" =
class=3D"">bluehills7@comcast.net</a>&gt; wrote:</p><p class=3D"">Thank =
you for the response, Paul. You were correct that I had the<br =
class=3D"">TOOLCHAIN_*_TASK variables set in my machine.conf file. I put =
it into my<br class=3D"">image bb file and things seem far more sane... =
although I must admit I am<br class=3D"">not 100% sure why it works but =
I will study it a bit and figure it out.<br class=3D"">Thanks for your =
help.</p><p class=3D"">I have run into another issue while trying to =
generate the eSDK in that<br class=3D"">there appears to be an issue =
with building harfbuzz. =46rom what I can tell,<br class=3D"">this =
appears to be an issue with the search paths for the autoreconf call.<br =
class=3D"">The autoreconf tool is finding the pkg.m4 file in the =
harfbuzz m4 directory<br class=3D"">FIRST and therefore not getting the =
one in<br class=3D"">harfbuzz/1.4.1-r0/recipe-<wbr =
class=3D"">sysroot-native/usr/share/<wbr class=3D"">aclocal which indeed =
has<br class=3D"">the correct m4_pattern_allow.</p><p class=3D"">Do you =
think that's a bug or something with my recipe? Seems like I just<br =
class=3D"">want to reverse the -I options... but I don't know how, =
exactly.</p><p class=3D"">/scratch/russell/yocto-<wbr =
class=3D"">00dc025f/work/aarch64-poky-<wbr =
class=3D"">linux/harfbuzz/1.4.1-r0/<wbr =
class=3D"">recipe-sysroot-native/usr/bin/<wbr class=3D"">autoconf<br =
class=3D"">--include=3D/scratch/russell/<wbr =
class=3D"">yocto-00dc025f/work/aarch64-<wbr =
class=3D"">poky-linux/harfbuzz/1.4.1-r0/<wbr =
class=3D"">harfbuzz-1.4.1/m4/<br =
class=3D"">--include=3D/scratch/russell/<wbr =
class=3D"">yocto-00dc025f/work/aarch64-<wbr =
class=3D"">poky-linux/harfbuzz/1.4.1-r0/<wbr =
class=3D"">recipe-sysroot-native/usr/<wbr class=3D"">share/aclocal/<br =
class=3D"">--force</p><p class=3D"">../../../autoconf-2.69/lib/<wbr =
class=3D"">autoconf/specific.m4:368:<br =
class=3D"">AC_USE_SYSTEM_EXTENSIONS is expanded from...<br =
class=3D"">|<span class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"http://configure.ac:22/" target=3D"_blank" =
class=3D"">configure.ac:22</a>: the top level<br class=3D"">| =
configure:18902: error: possibly undefined macro: =
PKG_CONFIG_SYSROOT_DIR<br class=3D"">| If this token and others are =
legitimate, please use m4_pattern_allow.<br class=3D"">| See the =
Autoconf documentation.<br class=3D"">| autoreconf:<br =
class=3D"">/scratch/russell/yocto-<wbr =
class=3D"">00dc025f/work/aarch64-poky-<wbr =
class=3D"">linux/harfbuzz/1.4.1-r0/<wbr =
class=3D"">recipe-sysroot-native/usr/bin/<wbr class=3D"">autoconf<br =
class=3D"">failed with exit status: 1<br class=3D"">| ERROR: Function =
failed: do_configure (log file is located at<br =
class=3D"">/scratch/russell/yocto-<wbr =
class=3D"">00dc025f/work/aarch64-poky-<wbr =
class=3D"">linux/harfbuzz/1.4.1-r0/temp/<wbr =
class=3D"">log.do_configure.14956)</p><blockquote class=3D""><p =
class=3D"">On July 31, 2017 at 9:50 AM Paul Eggleton &lt;<a =
href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank" =
class=3D"">paul.eggleton@linux.intel.com</a><wbr class=3D"">&gt;<br =
class=3D"">wrote:</p><p class=3D"">Hi Russell,</p><p class=3D"">It looks =
to me like you have added kernel-devsrc to the TOOLCHAIN_*_TASK<br =
class=3D"">variable at the global level, which you really don't want to =
do if you're<br class=3D"">going to be building buildtools-tarball =
(which eSDK will build as a<br class=3D"">dependency). I'd suggest =
moving that setting to your image recipe.</p><p class=3D"">Cheers,<br =
class=3D"">Paul</p><p class=3D"">On Sunday, 30 July 2017 4:22:24 PM CEST =
Russell Peterson wrote:</p><blockquote class=3D""><p class=3D"">Hello, =
all.</p><p class=3D"">I=E2=80=99m trying to build the eSDK for my =
platform and I just can=E2=80=99t figure out<br class=3D"">why dnf =
can=E2=80=99t find kernel-devsrc. It=E2=80=99s there, I added it. The =
=E2=80=9Cnormal<br class=3D"">SDK=E2=80=9D uses it and builds fine. Just =
no luck with the eSDK.<br class=3D"">Any help out there? Poky is pyro. =
aarch64 SoC target platform with an<br class=3D"">x86 build host (CentOS =
7.3). Basically I just bitbake -c<br class=3D"">do_populate_sdk_ext =
core-image-full. I do have a linux kernel recipe<br class=3D"">that =
pulls the kernel from the standard<span =
class=3D"Apple-converted-space">&nbsp;</span><a =
href=3D"http://kernel.org/" target=3D"_blank" =
class=3D"">kernel.org</a><span =
class=3D"Apple-converted-space">&nbsp;</span>&lt;<a =
href=3D"http://kernel.org/" target=3D"_blank" =
class=3D"">http://kernel.org/</a>&gt;<br class=3D"">repo.</p><p =
class=3D"">ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: Could not =
invoke dnf.<br class=3D"">Command<br =
class=3D"">'/scratch/russell/yocto-<wbr =
class=3D"">00dc025f/work/x86_64-<wbr =
class=3D"">nativesdk-pokysdk-linux/<wbr =
class=3D"">buildtools-tarball/1.0-r0/<wbr =
class=3D"">recipe-sysroot-native/usr/bin/<wbr class=3D"">dnf<br =
class=3D"">-y -c<br class=3D"">/scratch/russell/yocto-<wbr =
class=3D"">00dc025f/work/x86_64-<wbr =
class=3D"">nativesdk-pokysdk-linux/<wbr =
class=3D"">buildtools-tarball/1.0-r0/sdk/<wbr =
class=3D"">image/opt/poky/2.3.1/sysroots/<wbr =
class=3D"">none/etc/dnf/dnf.conf<br =
class=3D"">--setopt=3Dreposdir=3D/scratch/<wbr =
class=3D"">russell/yocto-00dc025f/work/<wbr =
class=3D"">x86_64-nativesdk-pokysdk-<wbr =
class=3D"">linux/buildtools-tarball/1.0-<wbr =
class=3D"">r0/sdk/image/opt/poky/2.3.1/<wbr =
class=3D"">sysroots/none/etc/yum.repos.d<br =
class=3D"">--repofrompath=3Doe-repo,/<wbr =
class=3D"">scratch/russell/yocto-<wbr class=3D"">00dc025f/work/x86_64-<wbr=
 class=3D"">nativesdk-pokysdk-linux/<wbr =
class=3D"">buildtools-tarball/1.0-r0/oe-<wbr class=3D"">rootfs-repo<br =
class=3D"">--installroot=3D/scratch/<wbr =
class=3D"">russell/yocto-00dc025f/work/<wbr =
class=3D"">x86_64-nativesdk-pokysdk-<wbr =
class=3D"">linux/buildtools-tarball/1.0-<wbr =
class=3D"">r0/sdk/image/opt/poky/2.3.1/<wbr class=3D"">sysroots/none<br =
class=3D"">--setopt=3Dlogdir=3D/scratch/<wbr =
class=3D"">russell/yocto-00dc025f/work/<wbr =
class=3D"">x86_64-nativesdk-pokysdk-<wbr =
class=3D"">linux/buildtools-tarball/1.0-<wbr class=3D"">r0/temp<br =
class=3D"">--nogpgcheck install kernel-devsrc' returned 1:<br =
class=3D"">Added oe-repo repo from<br class=3D""><a =
href=3D"file:///scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokys=
dk-linux/buildtools-tarball/1.0-r0/oe-rootfs-repo" =
class=3D"">file:///scratch/russell/yocto-</a><wbr class=3D""><a =
href=3D"file:///scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokys=
dk-linux/buildtools-tarball/1.0-r0/oe-rootfs-repo" =
class=3D"">00dc025f/work/x86_64-</a><wbr class=3D""><a =
href=3D"file:///scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokys=
dk-linux/buildtools-tarball/1.0-r0/oe-rootfs-repo" =
class=3D"">nativesdk-pokysdk-linux/</a><wbr class=3D""><a =
href=3D"file:///scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokys=
dk-linux/buildtools-tarball/1.0-r0/oe-rootfs-repo" =
class=3D"">buildtools-tarball/1.0-r0/oe-</a><wbr class=3D""><a =
href=3D"file:///scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokys=
dk-linux/buildtools-tarball/1.0-r0/oe-rootfs-repo" =
class=3D"">rootfs-repo</a><br class=3D"">&lt;<a =
href=3D"file:///scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokys=
dk-linux/buildtools-tarball/1.0-r0/oe-rootfs-repo" =
class=3D"">file:///scratch/russell/</a><wbr class=3D""><a =
href=3D"file:///scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokys=
dk-linux/buildtools-tarball/1.0-r0/oe-rootfs-repo" =
class=3D"">yocto-00dc025f/work/x86_64-</a><wbr class=3D""><a =
href=3D"file:///scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokys=
dk-linux/buildtools-tarball/1.0-r0/oe-rootfs-repo" =
class=3D"">nativesdk-pokysdk-linux/</a><wbr class=3D""><a =
href=3D"file:///scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokys=
dk-linux/buildtools-tarball/1.0-r0/oe-rootfs-repo" =
class=3D"">buildtools-tarball/1.0-r0/oe-</a><wbr class=3D""><a =
href=3D"file:///scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokys=
dk-linux/buildtools-tarball/1.0-r0/oe-rootfs-repo" =
class=3D"">rootfs-repo</a>&gt;<br class=3D"">Last metadata expiration =
check: 0:00:01 ago on Sun Jul 30 01:38:48 2017<br class=3D"">UTC.<br =
class=3D"">No package kernel-devsrc available.<br class=3D"">Error: =
Unable to find a match</p><p class=3D"">ERROR: buildtools-tarball-1.0-r0 =
do_populate_sdk: Function failed:<br class=3D"">do_populate_sdk<br =
class=3D"">ERROR: Logfile of failure stored in:<br =
class=3D"">/scratch/russell/yocto-<wbr =
class=3D"">00dc025f/work/x86_64-<wbr =
class=3D"">nativesdk-pokysdk-linux/<wbr =
class=3D"">buildtools-tarball/1.0-r0/<wbr =
class=3D"">temp/log.do_populate_sdk.4836<br class=3D"">ERROR: Task<br =
class=3D"">(/labhome/russell/src/bf/poky/<wbr =
class=3D"">meta/recipes-core/meta/<wbr =
class=3D"">buildtools-tarball.bb:do_<wbr class=3D"">populate_sdk)<br =
class=3D"">failed with exit code '1'</p></blockquote><p =
class=3D"">--</p><p class=3D"">Paul Eggleton</p><p class=3D"">Intel Open =
Source Technology Centre<br class=3D"">--</p><p =
class=3D"">______________________________<wbr =
class=3D"">_________________<br class=3D"">yocto mailing list<br =
class=3D""><a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" =
class=3D"">yocto@yoctoproject.org</a><br class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank" =
class=3D"">https://lists.yoctoproject.<wbr =
class=3D"">org/listinfo/yocto</a></p></blockquote></blockquote></div></div=
></div><br class=3D"">--<br class=3D"">______________________________<wbr =
class=3D"">_________________<br class=3D"">yocto mailing list<br =
class=3D""><a href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer" =
target=3D"_blank" class=3D"">https://lists.yoctoproject.<wbr =
class=3D"">org/listinfo/yocto</a></blockquote></div></div></div></div></bl=
ockquote></div><br class=3D""></div></body></html>=

--Apple-Mail=_A6858AA0-AD5A-44A1-8C11-AE757A3E438A--
