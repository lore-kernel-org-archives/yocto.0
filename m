Return-Path: <bluehills7@comcast.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A19AFE00BB1; Sun, 30 Jul 2017 07:22:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	MIME_QP_LONG_LINE, 
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bluehills7[at]comcast.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [69.252.207.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from resqmta-ch2-10v.sys.comcast.net
	(resqmta-ch2-10v.sys.comcast.net [69.252.207.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16224E00BAB
	for <yocto@yoctoproject.org>; Sun, 30 Jul 2017 07:22:24 -0700 (PDT)
Received: from resomta-ch2-07v.sys.comcast.net ([69.252.207.103])
	by resqmta-ch2-10v.sys.comcast.net with ESMTP
	id bp6hd5og1bO55bp6ud5UMA; Sun, 30 Jul 2017 14:22:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20161114; t=1501424544;
	bh=+LaJldaI/vGdvhZ2chorWdcdvzf2vE4lGoAeA9eSfPA=;
	h=Received:Received:From:Content-Type:Mime-Version:Subject:
	Message-Id:Date:To;
	b=diFWoZ/PMRHx8W7kAOytdiVaiQtPShDrF5J492EX1x3WpQCzNEl/E1Os+V1ncSdSY
	6ksVB3tKXjbId7GueGlhtyptwVpC3/Nvj16x0/cB2XlB38He1gCgbiUVt4myvO0XOV
	mzdlxxwGL5sfTdW6bzccxiwsA7I/3S85VG8KfXiZ8rcS6iex1WMkmulSk+Y59tseMk
	NXDn3xfpM88urlHcWQmAULF3eZSJVGCZFUVTpjHUvXORfrLaPalzE3ov42VuJK9uzz
	ozy+qNfD60h906jWFa69BOxcOdZn/jm9FhWyjJlgb2dV/D3mJUbMq11b+1Z45iG16U
	q6bvna+eui/pg==
Received: from [IPv6:2601:18f:800:acc1:c55a:360c:95ad:36fb]
	([IPv6:2601:18f:800:acc1:c55a:360c:95ad:36fb])
	by resomta-ch2-07v.sys.comcast.net with SMTP
	id bp6tdHGicDWJJbp6tdr0BO; Sun, 30 Jul 2017 14:22:23 +0000
From: Russell Peterson <bluehills7@comcast.net>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <FCFE4E57-753C-47F3-AFBC-A969AABDDD2C@comcast.net>
Date: Sun, 30 Jul 2017 10:22:24 -0400
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3273)
X-CMAE-Envelope: MS4wfDtJww5nidVgj+jfgOUHqQmLCiqXIlQTBqHnDx0oXQQcisdT/CVpXRSEAvZMBcvmKoT+GLult/XI5+ABdbI1qIRT1r4MIBNBfopsKNxPGzHGi279ptM4
	G1dFWPwt+IYt2wARlJDq/3iM7QvfKx0IOoMEu5YAeUSBD+RD9JyMoFkM2gPEd9Y7Bzr+nVMXQmdBU99iPLAbCK5+pKXFrBz+n1U=
Subject: extensible SDK build failure
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
X-List-Received-Date: Sun, 30 Jul 2017 14:22:25 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_721CD7EF-5688-422C-AE3D-FA1E90BF8F23"

--Apple-Mail=_721CD7EF-5688-422C-AE3D-FA1E90BF8F23
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hello, all.

I=E2=80=99m trying to build the eSDK for my platform and I just can=E2=80=99=
t figure out why dnf can=E2=80=99t find kernel-devsrc.  It=E2=80=99s =
there, I added it.  The =E2=80=9Cnormal SDK=E2=80=9D uses it and builds =
fine.  Just no luck with the eSDK.
Any help out there?  Poky is pyro.  aarch64 SoC target platform with an =
x86 build host (CentOS 7.3).  Basically I just bitbake -c =
do_populate_sdk_ext core-image-full.  I do have a linux kernel recipe =
that pulls the kernel from the standard kernel.org <http://kernel.org/> =
repo.

ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: Could not invoke dnf. =
Command =
'/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linux/build=
tools-tarball/1.0-r0/recipe-sysroot-native/usr/bin/dnf -y -c =
/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linux/buildt=
ools-tarball/1.0-r0/sdk/image/opt/poky/2.3.1/sysroots/none/etc/dnf/dnf.con=
f =
--setopt=3Dreposdir=3D/scratch/russell/yocto-00dc025f/work/x86_64-nativesd=
k-pokysdk-linux/buildtools-tarball/1.0-r0/sdk/image/opt/poky/2.3.1/sysroot=
s/none/etc/yum.repos.d =
--repofrompath=3Doe-repo,/scratch/russell/yocto-00dc025f/work/x86_64-nativ=
esdk-pokysdk-linux/buildtools-tarball/1.0-r0/oe-rootfs-repo =
--installroot=3D/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-poky=
sdk-linux/buildtools-tarball/1.0-r0/sdk/image/opt/poky/2.3.1/sysroots/none=
 =
--setopt=3Dlogdir=3D/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-=
pokysdk-linux/buildtools-tarball/1.0-r0/temp --nogpgcheck install =
kernel-devsrc' returned 1:
Added oe-repo repo from =
file:///scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linux=
/buildtools-tarball/1.0-r0/oe-rootfs-repo =
<file:///scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linu=
x/buildtools-tarball/1.0-r0/oe-rootfs-repo>
Last metadata expiration check: 0:00:01 ago on Sun Jul 30 01:38:48 2017 =
UTC.
No package kernel-devsrc available.
Error: Unable to find a match
=20
ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: Function failed: =
do_populate_sdk
ERROR: Logfile of failure stored in: =
/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linux/buildt=
ools-tarball/1.0-r0/temp/log.do_populate_sdk.4836
ERROR: Task =
(/labhome/russell/src/bf/poky/meta/recipes-core/meta/buildtools-tarball.bb=
:do_populate_sdk) failed with exit code '1'=

--Apple-Mail=_721CD7EF-5688-422C-AE3D-FA1E90BF8F23
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">Hello, all.<div class=3D""><br class=3D""></div><div =
class=3D"">I=E2=80=99m trying to build the eSDK for my platform and I =
just can=E2=80=99t figure out why dnf can=E2=80=99t find kernel-devsrc. =
&nbsp;It=E2=80=99s there, I added it. &nbsp;The =E2=80=9Cnormal SDK=E2=80=9D=
 uses it and builds fine. &nbsp;Just no luck with the eSDK.</div><div =
class=3D"">Any help out there? &nbsp;Poky is pyro. &nbsp;aarch64 SoC =
target platform with an x86 build host (CentOS 7.3). &nbsp;Basically I =
just bitbake -c do_populate_sdk_ext core-image-full. &nbsp;I do have a =
linux kernel recipe that pulls the kernel from the standard <a =
href=3D"http://kernel.org" class=3D"">kernel.org</a>&nbsp;repo.</div><div =
class=3D""><br class=3D""></div><div class=3D""><div style=3D"margin: =
0in 0in 0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: Could not =
invoke dnf. Command =
'/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linux/build=
tools-tarball/1.0-r0/recipe-sysroot-native/usr/bin/dnf -y -c =
/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linux/buildt=
ools-tarball/1.0-r0/sdk/image/opt/poky/2.3.1/sysroots/none/etc/dnf/dnf.con=
f =
--setopt=3Dreposdir=3D/scratch/russell/yocto-00dc025f/work/x86_64-nativesd=
k-pokysdk-linux/buildtools-tarball/1.0-r0/sdk/image/opt/poky/2.3.1/sysroot=
s/none/etc/yum.repos.d =
--repofrompath=3Doe-repo,/scratch/russell/yocto-00dc025f/work/x86_64-nativ=
esdk-pokysdk-linux/buildtools-tarball/1.0-r0/oe-rootfs-repo =
--installroot=3D/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-poky=
sdk-linux/buildtools-tarball/1.0-r0/sdk/image/opt/poky/2.3.1/sysroots/none=
 =
--setopt=3Dlogdir=3D/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-=
pokysdk-linux/buildtools-tarball/1.0-r0/temp --nogpgcheck install =
kernel-devsrc' returned 1:<o:p class=3D""></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">Added oe-repo repo from&nbsp;<a =
href=3D"file:///scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokys=
dk-linux/buildtools-tarball/1.0-r0/oe-rootfs-repo" style=3D"color: =
rgb(149, 79, 114);" =
class=3D"">file:///scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-po=
kysdk-linux/buildtools-tarball/1.0-r0/oe-rootfs-repo</a><o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">Last =
metadata expiration check: 0:00:01 ago on Sun Jul 30 01:38:48 2017 =
UTC.<o:p class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">No =
package kernel-devsrc available.<o:p class=3D""></o:p></div><div =
style=3D"margin: 0in 0in 0.0001pt; font-size: 11pt; font-family: =
Calibri, sans-serif;" class=3D"">Error: Unable to find a match<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D""><o:p =
class=3D"">&nbsp;</o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">ERROR: =
buildtools-tarball-1.0-r0 do_populate_sdk: Function failed: =
do_populate_sdk<o:p class=3D""></o:p></div><div style=3D"margin: 0in 0in =
0.0001pt; font-size: 11pt; font-family: Calibri, sans-serif;" =
class=3D"">ERROR: Logfile of failure stored in: =
/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linux/buildt=
ools-tarball/1.0-r0/temp/log.do_populate_sdk.4836<o:p =
class=3D""></o:p></div><div style=3D"margin: 0in 0in 0.0001pt; =
font-size: 11pt; font-family: Calibri, sans-serif;" class=3D"">ERROR: =
Task =
(/labhome/russell/src/bf/poky/meta/recipes-core/meta/buildtools-tarball.bb=
:do_populate_sdk) failed with exit code '1'</div></div></body></html>=

--Apple-Mail=_721CD7EF-5688-422C-AE3D-FA1E90BF8F23--
