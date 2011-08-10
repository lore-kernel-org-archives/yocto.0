Return-Path: <elizabeth.flanagan@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26F0BE004B2
	for <yocto@yoctoproject.org>; Wed, 10 Aug 2011 11:17:48 -0700 (PDT)
Received: from mail-yw0-f52.google.com ([209.85.213.52])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 10 Aug 2011 11:17:57 -0700
Received: by mail-yw0-f52.google.com with SMTP id 7so1951084ywo.25
	for <yocto@yoctoproject.org>; Wed, 10 Aug 2011 11:17:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.236.181.68 with SMTP id k44mr1110559yhm.83.1313000277078; Wed,
	10 Aug 2011 11:17:57 -0700 (PDT)
Received: by 10.236.95.145 with HTTP; Wed, 10 Aug 2011 11:17:57 -0700 (PDT)
In-Reply-To: <CAPhnLPB+QdQteoYtxvYX9oZ4kUW09+6tosnDV7YXLOPn1jxpjQ@mail.gmail.com>
References: <CAPhnLPB+QdQteoYtxvYX9oZ4kUW09+6tosnDV7YXLOPn1jxpjQ@mail.gmail.com>
Date: Wed, 10 Aug 2011 11:17:57 -0700
Message-ID: <CAPhnLPBSwk_cz1e7gF=d5i0E5tfZzPh11B64J1H8sysQd1YAyg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Subject: Re: Current known build issues with M3.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 10 Aug 2011 18:17:48 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Some updates:

On Wed, Aug 10, 2011 at 9:00 AM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> We currently have a mostly buildable M3. A few issues. With us going
> into M4 stability fairly soon, this puts us in a good place build
> wise.
>
> emenlow:
> "ERROR: Multiple .bb files are due to be built which each provide mesa-dr=
i"
> When building LSB after non-LSB builds with a new tmp, but an old
> sstate, emenlow throws an error. Images are generated, however. Only
> this BSP does this.
>
> nightly arm:
> " Failure to read QMAKESPEC conf file
> /srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/sysroots/=
x86_64-linux/usr/share/qmake/linux-gnueabi-oe-g++/qmake.conf.
> Error processing project file:
> /srv/home/pokybuild/poky-slave/nightly-external/build/build/tmp/work/armv=
5te-poky-linux-gnueabi/qt-x11-free-3.3.7-r0/qt-x11-free-3.3.7/src/qt.pro"
> fails at qt-x11-free-3.3.7-r0 fails at do_configure.
> See:
> http://autobuilder.yoctoproject.org:8010/builders/nightly-external/builds=
/68/steps/shell_32/logs/stdio
>
> nightly routerstationpro/mips lsb:
> Fails do_rootfs
> | Processing task-core-standalone-sdk-target...
> | error: Failed dependencies:
> | =A0 =A0 =A0 fstests is needed by task-core-tools-testapps-1.0-r10.route=
rstationpro
> | =A0 =A0 =A0 fstests =3D 0.0+svnr426-r1 is needed by fstests-dev-0.0+svn=
r426-r1.mips
> See:
> http://autobuilder.yoctoproject.org:8010/builders/nightly-external/builds=
/68/steps/shell_42/logs/stdio

I've cleared out sstate-cache on the AB and have a nightly queued up.
This should fix this issue.

>
> eclipse plugin won't build on ab.
> This is a known issue. Fix in place this afternoon.

Fix isn't in yet. Since we're building two versions of the eclipse
plugin I need to spend some time with this to do this correctly.
Delayed til Friday's run.

--=20
Elizabeth Flanagan
Yocto Project
Build and Release

