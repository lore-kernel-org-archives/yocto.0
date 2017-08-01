Return-Path: <bluehills7@comcast.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9675E00C19; Tue,  1 Aug 2017 14:55:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bluehills7[at]comcast.net)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [96.114.154.162 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Tue, 01 Aug 2017 14:55:33 PDT
Received: from resqmta-po-03v.sys.comcast.net (resqmta-po-03v.sys.comcast.net
	[96.114.154.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F2E0E00BB6
	for <yocto@yoctoproject.org>; Tue,  1 Aug 2017 14:55:33 -0700 (PDT)
Received: from resomta-po-08v.sys.comcast.net ([96.114.154.232])
	by resqmta-po-03v.sys.comcast.net with ESMTP
	id cf6edNnnAfsFbcf7YdNXzX; Tue, 01 Aug 2017 21:54:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20161114; t=1501624472;
	bh=EwVGCL1CS1neqV87AYX/iyypmlhOk1tH4OLCyS7Gx3w=;
	h=Received:Received:Date:From:Reply-To:To:Message-ID:Subject:
	MIME-Version:Content-Type;
	b=PUHily5TuU94nuKUbQyxAGkOSMRFEKpctX+HAna+d+bqN85XtwEaiL0ErCgeLJnnU
	Zfdxb0+UggeuaDmHb5ymMbvZ2zF9Wsdp21ObRS03MDvIaDo6cprj6NMTOKcxACxAVl
	0qjsv2J7VAuyNoB1q88EEsKj1FasM8g+yWIlhOvucCV3mKBHx2e7zEkm/tYKWCOlWe
	0YE59ZRBfJWNPMGDacSnbqTI+XKeNEGBPYWSK8plswJhmfhKtsx3Gnk7466Th/br4r
	I9WhK4BTk4s7E2K//5iCczQczb2J4Wo2RsYEP0Et00P1E8hBw1qAAEOUMZO9vlS18z
	K8q8nm3NExF2Q==
Received: from oxapp-asb-58o.email.comcast.net ([96.118.63.81])
	by resomta-po-08v.sys.comcast.net with SMTP
	id cf5bdDHHjzjkZcf5cdKAMV; Tue, 01 Aug 2017 21:52:32 +0000
Date: Tue, 1 Aug 2017 17:52:31 -0400 (EDT)
From: RUSSELL PETERSON <bluehills7@comcast.net>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <1928283135.524860.1501624351743@connect.xfinity.com>
In-Reply-To: <20571187.vhiZQWh1oz@peggleto-mobl.ger.corp.intel.com>
References: <FCFE4E57-753C-47F3-AFBC-A969AABDDD2C@comcast.net>
	<20571187.vhiZQWh1oz@peggleto-mobl.ger.corp.intel.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.3-Rev20
X-Originating-IP: ::ffff:216.156.69.42
X-Originating-Client: open-xchange-appsuite
X-CMAE-Envelope: MS4wfODaF3UjWmQxl7uNZ7UwEJK5ioSLcza5XRmVUHnxDDfUn/55lhavmEoIgbVBjy8g/ALwaU4YEvuLHpwNk4E34GoehU0KTDQCL7If1b7f7DqZQSk/nJKF
	c95P3noSRVGTgHTtTtfejLdquWe0PF84ZqKKwMlv9L7HEaf/B/Toz+NWbJLnvlzULWJSIWvYttVO1I5bj7afcdpFP3OboXBtF/QR9DOpvbgAJAeHGNIfQcLw
	eMG8Rjugn3uPaOpfLuFgbg==
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 01 Aug 2017 21:55:35 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_524859_268737498.1501624351734"

------=_Part_524859_268737498.1501624351734
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank you for the response, Paul. You were correct that I had the TOOLCHAIN=
_*_TASK variables set in my machine.conf file. I put it into my image bb fi=
le and things seem far more sane... although I must admit I am not 100% sur=
e why it works but I will study it a bit and figure it out. Thanks for your=
 help.

I have run into another issue while trying to generate the eSDK in that the=
re appears to be an issue with building harfbuzz. From what I can tell, thi=
s appears to be an issue with the search paths for the autoreconf call. The=
 autoreconf tool is finding the pkg.m4 file in the harfbuzz m4 directory FI=
RST and therefore not getting the one in harfbuzz/1.4.1-r0/recipe-sysroot-n=
ative/usr/share/aclocal which indeed has the correct m4_pattern_allow.

Do you think that's a bug or something with my recipe? Seems like I just wa=
nt to reverse the -I options... but I don't know how, exactly.

/scratch/russell/yocto-00dc025f/work/aarch64-poky-linux/harfbuzz/1.4.1-r0/r=
ecipe-sysroot-native/usr/bin/autoconf --include=3D/scratch/russell/yocto-00=
dc025f/work/aarch64-poky-linux/harfbuzz/1.4.1-r0/harfbuzz-1.4.1/m4/ --inclu=
de=3D/scratch/russell/yocto-00dc025f/work/aarch64-poky-linux/harfbuzz/1.4.1=
-r0/recipe-sysroot-native/usr/share/aclocal/ --force

../../../autoconf-2.69/lib/autoconf/specific.m4:368: AC_USE_SYSTEM_EXTENSIO=
NS is expanded from...
| configure.ac:22: the top level
| configure:18902: error: possibly undefined macro: PKG_CONFIG_SYSROOT_DIR
| If this token and others are legitimate, please use m4_pattern_allow.
| See the Autoconf documentation.
| autoreconf: /scratch/russell/yocto-00dc025f/work/aarch64-poky-linux/harfb=
uzz/1.4.1-r0/recipe-sysroot-native/usr/bin/autoconf failed with exit status=
: 1
| ERROR: Function failed: do_configure (log file is located at /scratch/rus=
sell/yocto-00dc025f/work/aarch64-poky-linux/harfbuzz/1.4.1-r0/temp/log.do_c=
onfigure.14956)

> On July 31, 2017 at 9:50 AM Paul Eggleton <paul.eggleton@linux.intel.com>=
 wrote:
>
>
> Hi Russell,
>
> It looks to me like you have added kernel-devsrc to the TOOLCHAIN_*_TASK =
variable at the global level, which you really don't want to do if you're g=
oing to be building buildtools-tarball (which eSDK will build as a dependen=
cy). I'd suggest moving that setting to your image recipe.
>
> Cheers,
> Paul
>
> On Sunday, 30 July 2017 4:22:24 PM CEST Russell Peterson wrote:
> > Hello, all.
> >
> > I=E2=80=99m trying to build the eSDK for my platform and I just can=E2=
=80=99t figure out why dnf can=E2=80=99t find kernel-devsrc. It=E2=80=99s t=
here, I added it. The =E2=80=9Cnormal SDK=E2=80=9D uses it and builds fine.=
 Just no luck with the eSDK.
> > Any help out there? Poky is pyro. aarch64 SoC target platform with an x=
86 build host (CentOS 7.3). Basically I just bitbake -c do_populate_sdk_ext=
 core-image-full. I do have a linux kernel recipe that pulls the kernel fro=
m the standard kernel.org <http://kernel.org/> repo.
> >
> > ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: Could not invoke dnf.=
 Command '/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-lin=
ux/buildtools-tarball/1.0-r0/recipe-sysroot-native/usr/bin/dnf -y -c /scrat=
ch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linux/buildtools-ta=
rball/1.0-r0/sdk/image/opt/poky/2.3.1/sysroots/none/etc/dnf/dnf.conf --seto=
pt=3Dreposdir=3D/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokys=
dk-linux/buildtools-tarball/1.0-r0/sdk/image/opt/poky/2.3.1/sysroots/none/e=
tc/yum.repos.d --repofrompath=3Doe-repo,/scratch/russell/yocto-00dc025f/wor=
k/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/oe-rootfs-repo -=
-installroot=3D/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysd=
k-linux/buildtools-tarball/1.0-r0/sdk/image/opt/poky/2.3.1/sysroots/none --=
setopt=3Dlogdir=3D/scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pok=
ysdk-linux/buildtools-tarball/1.0-r0/temp --nogpgcheck install kernel-devsr=
c' returned 1:
> > Added oe-repo repo from file:///scratch/russell/yocto-00dc025f/work/x86=
_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/oe-rootfs-repo <file:=
///scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linux/build=
tools-tarball/1.0-r0/oe-rootfs-repo>
> > Last metadata expiration check: 0:00:01 ago on Sun Jul 30 01:38:48 2017=
 UTC.
> > No package kernel-devsrc available.
> > Error: Unable to find a match
> >
> > ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: Function failed: do_p=
opulate_sdk
> > ERROR: Logfile of failure stored in: /scratch/russell/yocto-00dc025f/wo=
rk/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/temp/log.do_pop=
ulate_sdk.4836
> > ERROR: Task (/labhome/russell/src/bf/poky/meta/recipes-core/meta/buildt=
ools-tarball.bb:do_populate_sdk) failed with exit code '1'
>
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

------=_Part_524859_268737498.1501624351734
MIME-Version: 1.0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html><head>
    <meta charset=3D"UTF-8">
</head><body>Thank you for the response, Paul.  You were correct that I had=
 the TOOLCHAIN_*_TASK variables set in my machine.conf file.  I put it into=
 my image bb file and things seem far more sane... although I must admit I =
am not 100% sure why it works but I will study it a bit and figure it out. =
 Thanks for your help.<br><br>I have run into another issue while trying to=
 generate the eSDK in that there appears to be an issue with building harfb=
uzz.  From what I can tell, this appears to be an issue with the search pat=
hs for the autoreconf call.  The autoreconf tool is finding the pkg.m4 file=
 in the harfbuzz m4 directory FIRST and therefore not getting the one in ha=
rfbuzz/1.4.1-r0/recipe-sysroot-native/usr/share/aclocal which indeed has th=
e correct m4_pattern_allow.<br><br>Do you think that&#39;s a bug or somethi=
ng with my recipe?  Seems  like I just want to reverse the -I options... bu=
t I don&#39;t know how, exactly.<br><br> /scratch/russell/yocto-00dc025f/wo=
rk/aarch64-poky-linux/harfbuzz/1.4.1-r0/recipe-sysroot-native/usr/bin/autoc=
onf --include=3D/scratch/russell/yocto-00dc025f/work/aarch64-poky-linux/har=
fbuzz/1.4.1-r0/harfbuzz-1.4.1/m4/ --include=3D/scratch/russell/yocto-00dc02=
5f/work/aarch64-poky-linux/harfbuzz/1.4.1-r0/recipe-sysroot-native/usr/shar=
e/aclocal/ --force<br><br>../../../autoconf-2.69/lib/autoconf/specific.m4:3=
68: AC_USE_SYSTEM_EXTENSIONS is expanded from...<br>| configure.ac:22: the =
top level<br>| configure:18902: error: possibly undefined macro: PKG_CONFIG=
_SYSROOT_DIR<br>|       If this token and others are legitimate, please use=
 m4_pattern_allow.<br>|       See the Autoconf documentation.<br>| autoreco=
nf: /scratch/russell/yocto-00dc025f/work/aarch64-poky-linux/harfbuzz/1.4.1-=
r0/recipe-sysroot-native/usr/bin/autoconf failed with exit status: 1<br>| E=
RROR: Function failed: do_configure (log file is located at /scratch/russel=
l/yocto-00dc025f/work/aarch64-poky-linux/harfbuzz/1.4.1-r0/temp/log.do_conf=
igure.14956)<br><br>&#62; On July 31, 2017 at 9:50 AM Paul Eggleton &#60;pa=
ul.eggleton@linux.intel.com&#62; wrote:<br>&#62; <br>&#62; <br>&#62; Hi Rus=
sell,<br>&#62; <br>&#62; It looks to me like you have added kernel-devsrc t=
o the TOOLCHAIN_*_TASK variable at the global level, which you really don&#=
39;t want to do if you&#39;re going to be building buildtools-tarball (whic=
h eSDK will build as a dependency). I&#39;d suggest moving that setting to =
your image recipe.<br>&#62; <br>&#62; Cheers,<br>&#62; Paul<br>&#62; <br>&#=
62; On Sunday, 30 July 2017 4:22:24 PM CEST Russell Peterson wrote:<br>&#62=
; &#62; Hello, all.<br>&#62; &#62; <br>&#62; &#62; I&#8217;m trying to buil=
d the eSDK for my platform and I just can&#8217;t figure out why dnf can&#8=
217;t find kernel-devsrc.  It&#8217;s there, I added it.  The &#8220;normal=
 SDK&#8221; uses it and builds fine.  Just no luck with the eSDK.<br>&#62; =
&#62; Any help out there?  Poky is pyro.  aarch64 SoC target platform with =
an x86 build host (CentOS 7.3).  Basically I just bitbake -c do_populate_sd=
k_ext core-image-full.  I do have a linux kernel recipe that pulls the kern=
el from the standard kernel.org &#60;http://kernel.org/&#62; repo.<br>&#62;=
 &#62; <br>&#62; &#62; ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: Co=
uld not invoke dnf. Command &#39;/scratch/russell/yocto-00dc025f/work/x86_6=
4-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/recipe-sysroot-native/u=
sr/bin/dnf -y -c /scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-poky=
sdk-linux/buildtools-tarball/1.0-r0/sdk/image/opt/poky/2.3.1/sysroots/none/=
etc/dnf/dnf.conf --setopt=3Dreposdir=3D/scratch/russell/yocto-00dc025f/work=
/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/sdk/image/opt/pok=
y/2.3.1/sysroots/none/etc/yum.repos.d --repofrompath=3Doe-repo,/scratch/rus=
sell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/=
1.0-r0/oe-rootfs-repo --installroot=3D/scratch/russell/yocto-00dc025f/work/=
x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/sdk/image/opt/poky=
/2.3.1/sysroots/none --setopt=3Dlogdir=3D/scratch/russell/yocto-00dc025f/wo=
rk/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-r0/temp --nogpgche=
ck install kernel-devsrc&#39; returned 1:<br>&#62; &#62; Added oe-repo repo=
 from file:///scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-=
linux/buildtools-tarball/1.0-r0/oe-rootfs-repo &#60;file:///scratch/russell=
/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linux/buildtools-tarball/1.0-=
r0/oe-rootfs-repo&#62;<br>&#62; &#62; Last metadata expiration check: 0:00:=
01 ago on Sun Jul 30 01:38:48 2017 UTC.<br>&#62; &#62; No package kernel-de=
vsrc available.<br>&#62; &#62; Error: Unable to find a match<br>&#62; &#62;=
  <br>&#62; &#62; ERROR: buildtools-tarball-1.0-r0 do_populate_sdk: Functio=
n failed: do_populate_sdk<br>&#62; &#62; ERROR: Logfile of failure stored i=
n: /scratch/russell/yocto-00dc025f/work/x86_64-nativesdk-pokysdk-linux/buil=
dtools-tarball/1.0-r0/temp/log.do_populate_sdk.4836<br>&#62; &#62; ERROR: T=
ask (/labhome/russell/src/bf/poky/meta/recipes-core/meta/buildtools-tarball=
.bb:do_populate_sdk) failed with exit code &#39;1&#39;<br>&#62; <br>&#62; <=
br>&#62; -- <br>&#62; <br>&#62; Paul Eggleton<br>&#62; Intel Open Source Te=
chnology Centre<br></body></html>
=20

------=_Part_524859_268737498.1501624351734--
