Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24269E008F6; Fri,  2 Jan 2015 16:58:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7688CE00828
	for <yocto@yoctoproject.org>; Fri,  2 Jan 2015 16:58:01 -0800 (PST)
Received: from durham.keylevel.com ([88.97.63.243]:59793
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.84)
	(envelope-from <opensource@keylevel.com>)
	id 1Y7D2Q-000Psj-P0; Sat, 03 Jan 2015 00:57:59 +0000
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CADkTA4MDLvwaGp_rcuUsOaXEC46_dxd6QH9k0PZmofhnxNLBoQ@mail.gmail.com>
Date: Sat, 3 Jan 2015 00:57:50 +0000
Message-Id: <AB3518D3-AE10-4889-ADB6-8A662EF8C458@keylevel.com>
References: <60148DA2-CAB2-416A-BDEE-783705B3E24E@keylevel.com>
	<CADkTA4MDLvwaGp_rcuUsOaXEC46_dxd6QH9k0PZmofhnxNLBoQ@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
X-Mailer: Apple Mail (2.1878.6)
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Kernel configuration
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
X-List-Received-Date: Sat, 03 Jan 2015 00:58:04 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Bruce,

On 3 Jan 2015, at 00:08, Bruce Ashfield <bruce.ashfield@gmail.com> =
wrote:

> On Fri, Jan 2, 2015 at 9:52 AM, Chris Tapp <opensource@keylevel.com> =
wrote:
>> I thought I knew how to do this, but... ;-)
>>=20
>> I'm trying to add configuration items to the valleyisland BSP. I've =
got the following bbappend:
>>=20
>> File: linux-yocto_3.10.bbappend
>> -------
>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>>=20
>> SRC_URI +=3D " file://enable-hid-apple.cfg"
>> SRC_URI +=3D " file://enable-R8169.cfg"
>>=20
>> However, these .cfg fragments aren't even getting pulled into the =
build area.
>>=20
>> Adding a reference to a non-existent file is ignored when I would =
have expected to see a fetch error
>>=20
>> SRC_URI +=3D "file://fsdfsdfdsfsd"
>>=20
>> What else do I need to do to get my .cfg files pulled in?
>=20
> What release / branch is this with ? What you have above is all that =
you need
> to do. I'm not near my development machine, but will be on Monday and =
can
> confirm that something hasn't been broken.

This is with 'daisy'.

> In the meantime, have you dumped the environment to confirm that that =
your
> values really are on the SRC_URI and that something else in the layers
> isn't coming along later and clobbering the SRC_URI (unlikely, but =
worth ruling
> out).

Ah - that shows:

# $SRC_URI [8 operations]
#   set /media/SSD-RAID/poky-git/meta/conf/bitbake.conf:588
#     ""
#   set /media/SSD-RAID/poky-git/meta/conf/documentation.conf:378
#     [doc] "The list of source files - local or remote. This variable =
tells the OpenEmbedded build system what bits to pull in for the build =
and how to pull them in."
#   set =
/media/SSD-RAID/poky-git/meta/recipes-kernel/linux/linux-yocto_3.10.bb:23
#     =
"git://git.yoctoproject.org/linux-yocto-3.10.git;bareclone=3D1;branch=3D${=
KBRANCH},${KMETA};name=3Dmachine,meta"
#   append =
/media/SSD-RAID/meta-keylevel-sjs/project-specific-layers/opty4-valleyisla=
nd/recipes-kernel/linux/linux-yocto_3.10.bbappend:4
#     " file://enable-R8169.cfg"
#   append =
/media/SSD-RAID/meta-keylevel-sjs/project-specific-layers/opty4-valleyisla=
nd/recipes-kernel/linux/linux-yocto_3.10.bbappend:5
#     "file://fsdfsdfdsfsd"
#   finalize ast.py:323 [finalize]
#     "was: =
git://git.yoctoproject.org/linux-yocto-3.10.git;bareclone=3D1;branch=3D${K=
BRANCH},${KMETA};name=3Dmachine,meta  file://enable-R8169.cfg =
file://fsdfsdfdsfsd"
#   override[valleyisland-64]:set =
/media/SSD-RAID/meta-intel-git-2/meta-isg/meta-valleyisland/recipes-kernel=
/linux/linux-yocto_3.10.bbappend:33
#     =
"git://git.yoctoproject.org/linux-yocto-3.10.git;protocol=3Dgit;nocheckout=
=3D1;branch=3D${KBRANCH},${KMETA},valleyisland-io-3.0;name=3Dmachine,meta,=
valleyisland-io"
#   finalize override[valleyisland-64]:
#     =
"git://git.yoctoproject.org/linux-yocto-3.10.git;protocol=3Dgit;nocheckout=
=3D1;branch=3D${KBRANCH},${KMETA},valleyisland-io-3.0;name=3Dmachine,meta,=
valleyisland-io"
# computed:
#   =
"git://git.yoctoproject.org/linux-yocto-3.10.git;protocol=3Dgit;nocheckout=
=3D1;branch=3D${KBRANCH},${KMETA},valleyisland-io-3.0;name=3Dmachine,meta,=
valleyisland-io"
=
SRC_URI=3D"git://git.yoctoproject.org/linux-yocto-3.10.git;protocol=3Dgit;=
nocheckout=3D1;branch=3Dstandard/base,meta,valleyisland-io-3.0;name=3Dmach=
ine,meta,valleyisland-io"

If I change my bbappend to use lines of the form:

  SRC_URI_valleyisland-64 +=3D " file://enable-R8169.cfg"

then the fragments make it in to the configuration.

I've never really understood machine overrides that well - I thought =
that using a plain SRC_URI would apply regardless, but that's obviously =
not the case ;-)

Thanks for the pointer :-)

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


