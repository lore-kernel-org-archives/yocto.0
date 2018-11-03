Return-Path: <jrswdnan22@snkmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E629CE00AB3; Sat,  3 Nov 2018 07:24:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [195.197.172.115 listed in list.dnswl.org]
Received: from gw01.mail.saunalahti.fi (gw01.mail.saunalahti.fi
	[195.197.172.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A648FE008D7
	for <yocto@yoctoproject.org>; Sat,  3 Nov 2018 07:24:19 -0700 (PDT)
Received: from linux.suse (91-157-44-75.elisa-laajakaista.fi [91.157.44.75])
	by gw01.mail.saunalahti.fi (Postfix) with ESMTP id 0487240679;
	Sat,  3 Nov 2018 16:24:15 +0200 (EET)
From: Uwe Geuder <jrswdnan22@snkmail.com>
To: yocto@yoctoproject.org
In-Reply-To: <AM5PR0602MB2802CE6D0351FEED6E8088E1B1CC0@AM5PR0602MB2802.eurprd06.prod.outlook.com>
References: <AM5PR0602MB2802CE6D0351FEED6E8088E1B1CC0@AM5PR0602MB2802.eurprd06.prod.outlook.com>
Date: Sat, 03 Nov 2018 16:24:15 +0200
Message-ID: <87sh0idysw.fsf@linux.suse>
MIME-Version: 1.0
Subject: Re: Kernel development using externalsrc
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
X-List-Received-Date: Sat, 03 Nov 2018 14:24:22 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 2, 2018 at 5:47 PM CHMIELARZ Radoslaw radoslaw.chmielarz-at-lei=
ca-geosystems.com wrote:

> The company I work for uses yocto to build an image with a custom
> linux kernel. The documentation
> (https://www.yoctoproject.org/docs/2.5.1/kernel-dev/kernel-dev.html)
> suggests a setup where the kernel is under git and the kernel recipe
> specifies this git repository hence the workflow is the following:
>
> Make changes in local kernel directory
> Submit changes to git (and presumably push to shared space)
> Run yocto build which fetches the changes
>
> However since I don=E2=80=99t want to push the changes to git server befo=
re I
> test locally I have added the kernel sources using
> externalsrc.=20

Devtool is of course what they recommend, but can always change the git
repo to a local one in a .bbappend, so you save the push step and Yocto
build saves fetching over the network. (Making a git commit for each
build attempt is very little overhead and I would recommend it anyway as
a good working practice. You can clean up using "git rebase -i" once you
are happy with your code and before you publish it.)

In one of my development branches I find

SRC_URI =3D "\
  git:///home/myname/projects/yoctobuild/pkgsrc/somerepo/;protocol=3Dfile;b=
ranch=3Ddebug/#675-v2.16.0 \
  file://some.patch \
  file://other.patch \
"

SRCREV =3D "${AUTOREV}"

I have not done it for the kernel, but I see no reason why it would not
work there.

(Obviously the absolute path is nothing you would be able to share
unmodified with others. Maybe it can be made a bit more portable using
${THISDIR}, but I have not had any need to try it.)=20

> Unfortunately this has the drawback that
> linux-libc-headers runs do_configure and do_install phase which
> invalidates glibc-initial and requires a recompilation of a couple of
> hundreds of packages. I would like to avoid it.
>

How editing the kernel source would cause rebuilds trailing
linux-libc-haeaders I cannot see in my build here

$ bitbake-diffsigs -t linux-libc-headers configure
NOTE: Starting bitbake server...
ERROR: Only one matching sigdata file found for the specified task (linux-l=
ibc-headers do_configure)

Well, maybe I have never changed the kernel in this build area, so let's
check what it depends on:
=20
$ bitbake-dumpsig -t linux-libc-headers configure
NOTE: Starting bitbake server...
ERROR: Metadata does not support finding signature data files

Hmm, no idea what that means. Until someone tells us what's wrong let's
use stamp files instead

$ bitbake-dumpsig tmp/stamps/corei7-64-poky-linux/linux-libc-headers/4.15.7=
-r0.do_configure.sigdata...
This task depends on the checksums of files: []
Hash for dependent task
/home/geuder/projects/yoctobuild/meta-nel/poky/meta/recipes-kernel/linux-li=
bc-headers/linux-libc-headers_4.15.7.bb.do_prepare_recipe_sysroot is 5ac6ad=
cdd9edfe2705fd461a42942613

$ bitbake-dumpsig tmp/stamps/corei7-64-poky-linux/linux-libc-headers/4.15.7=
-r0.do_prepare_recipe_sysroot.sigdata...
This task depends on the checksums of files: []
Hash for dependent task /home/geuder/projects/yoctobuild/meta-nel/poky/meta=
/recipes-kernel/linux-libc-headers/linux-libc-headers_4.15.7.bb.do_fetch is=
 362b694aea2202ce72ad259579d001ad

$ bitbake-dumpsig tmp/stamps/corei7-64-poky-linux/linux-libc-headers/4.15.7=
-r0.do_fetch.sigdata...
Variable SRC_URI value is ${KERNELORG_MIRROR}/linux/kernel/v${HEADER_FETCH_=
VER}/linux-${PV}.tar.${KORG_ARCHIVE_COMPRESSION}
Tasks this task depends on: []
This task depends on the checksums of files: []

So my build gets kernel headers from kernel.org (mirror), it does not
use the kernel source I use to build my kernel. Maybe that's different
for you?

Of course the output of the bitbake-dumpsig commands is massively
shortened, I just picked those lines that seemed likely candidates to
cause rebuilds.  To get the whole truth in your build call...

$ bitbake-diffsigs -t linux-libc-headers configure

... after you made a small kernel edit and rebuilt.

Regards,

Uwe

Uwe Geuder
Neuro Event Labs Oy
Tampere, Finland
uwe.gexder at neuroeventlabs.com (Bot check: fix one obvious typo)

