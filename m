Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-mealy.atl.sa.earthlink.net
	(elasmtp-mealy.atl.sa.earthlink.net [209.86.89.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FF78E0144E
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2013 12:30:05 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=Zo0gyRlbJMHiBOTUAb02emY+ncZ4mo4ExJoGJhtgeWbigBEaFzpWGlI+thvIyN63;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-mealy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1VA3FE-00059t-IF; Thu, 15 Aug 2013 15:30:04 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Saul Wold'" <sgw@linux.intel.com>
References: <D2ED8A5A8E3F4F688EF59142D375B80B@PAULD>
	<520D242A.6040103@linux.intel.com>
In-Reply-To: <520D242A.6040103@linux.intel.com>
Date: Thu, 15 Aug 2013 12:30:10 -0700
Message-ID: <D4677E29EEA744F99ECD3BF698767C89@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac6Z6R3+Z1/Um1lXToeUA6lOzdlY0AAA145g
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068879154b1bf2b186e50322ecb41ad543ff350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org
Subject: Re: My stuff is missing from rootfs
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
X-List-Received-Date: Thu, 15 Aug 2013 19:30:06 -0000
X-Groupsio-MsgNum: 15470
Content-Type: multipart/mixed;
	boundary="----=_NextPart_000_03AB_01CE99B3.2FA76BA0"

------=_NextPart_000_03AB_01CE99B3.2FA76BA0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Saul Wold
> 
> > On 08/15/2013 11:37 AM, Paul D. DeRocco wrote:
> > I've done exactly this in a different Yocto-based project, 
> > and it worked.
> > Now I'm trying to do the same thing in a Gumstix build, and it's not
> > working. I have a dumb little recipe that merely copies 
> > some files into
> > particlar places in the rootfs. It adds a systemd service 
> > unit, as well as
> > .bashrc and .inputrc to /home/root.
> >
> > The build logs show the recipe being processed, including 
> > the do_install
> > task which copies the files. No errors are produced. If I 
> > rummage through
> > build/tmp/work, I can find the fragment of the rootfs containing the
> > /home/root and /etc/systemd/system directories with my 
> > files in them. Yet no
> > matter what I try, these things never wind up in the final rootfs.
> >
> > I've tried clean and cleansstate on the recipe, as well as 
> > on my top-level
> > recipe. I've bumped PR from r0 to r1. It dutifully 
> > reprocesses my recipe,
> > with no errors, and I end up with a perfectly functioning 
> > rootfs without
> > these particular files.
> >
> > This is a slightly modified version of 
> > gumstix-console-image. I believe it's
> > based on Danny, as the gumstix Dylan stuff is still a work 
> > in progress.
> >
> > What could conceivably be wrong?
> >
> Where do you add your recipe's generated packages to the image, this 
> could be in your custom image with an RDEPENDS or via something in 
> local.conf like CORE_IMAGE_EXTRA_INSTALL_append = " <packagename>".
> 
> Do you have other recipes that DEPEND or RDEPEND on your recipe?
> 
> That might point you in the right direction.

My top level recipe uses IMAGE_INSTALL to add a bunch of packages, including
one whose name matches the name of the recipe that's being processed but
whose output is being ignored. This is exactly what I did in a different
Yocto project, to get a similar recipe to install some similar files, and it
all worked fine. 

I've attached the top level recipe and the problematic one, only changing
the project name to "foo" for proprietary reasons.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 

------=_NextPart_000_03AB_01CE99B3.2FA76BA0
Content-Type: application/octet-stream;
	name="gumstix-foo-pygtk-image.bb"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="gumstix-foo-pygtk-image.bb"

DESCRIPTION =3D "The Gumstix console image, with more Python, Samba, X"
LICENSE =3D "MIT"
LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bc=
f8506ecda2f7b4f302"
PR =3D "r0"

require recipes-images/gumstix/gumstix-console-image.bb

IMAGE_INSTALL +=3D "                  \
    packagegroup-core-x11-base      \
    python-numeric                  \
    python-numpy                    \
    python-pyserial                 \
    python-pygtk                    \
    python-pyqt                     \
    python-matplotlib               \
    python-pyalsaaudio              \
    foo                             \
    samba                           \
    tzdata                          \
    xinput-calibrator               \
    "

# This sets the timezone to US Pacific time
set_local_timezone() {
    ln -sf /usr/share/zoneinfo/America/Los_Angeles ${IMAGE_ROOTFS}/etc/loca=
ltime
}

# This sets the root password to "root" in the /etc/shadow file.
set_root_password () {
	sed 's%^root:[^:]*:%root:trHg5jf38krOE:%' < ${IMAGE_ROOTFS}/etc/shadow >${=
IMAGE_ROOTFS}/etc/shadow.new
	mv ${IMAGE_ROOTFS}/etc/shadow.new ${IMAGE_ROOTFS}/etc/shadow
}=20

ROOTFS_POSTPROCESS_COMMAND =3D+ "set_local_timezone ; set_root_password ; "

------=_NextPart_000_03AB_01CE99B3.2FA76BA0
Content-Type: application/octet-stream;
	name="foo_1.0.bb"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
	filename="foo_1.0.bb"

DESCRIPTION =3D "Foo project odds and ends"
LICENSE =3D "MIT"
LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bc=
f8506ecda2f7b4f302"
PR =3D "r1"

SRC_URI =3D "                         \
    file://dummyxsession.service    \
    file://.bashrc                  \
    file://.inputrc                 \
    "

S =3D "${WORKDIR}"

FILES_${PN} +=3D "                                                         =
       \
    ${sysconfdir}/                                                         =
     \
    ${sysconfdir}/systemd/                                                 =
     \
    ${sysconfdir}/systemd/system/                                          =
     \
    ${sysconfdir}/systemd/system/dummyxsession.service                     =
     \
    ${sysconfdir}/systemd/system/multi-user.target.wants/                  =
     \
    ${sysconfdir}/systemd/system/multi-user.target.wants/dummyxsession.serv=
ice  \
    /home/root/.bashrc                                                     =
     \
    /home/root/.inputrc                                                    =
     \
    "

# This installs the statically defined files
do_install() {
    install -d ${D}${sysconfdir}/systemd/system/multi-user.target.wants
    install -m 0755 dummyxsession.service ${D}${sysconfdir}/systemd/system
    ln -s ${sysconfdir}/systemd/system/dummyxsession.service ${D}${sysconfd=
ir}/systemd/system/multi-user.target.wants
    install -d ${D}/home/root
    install -m 0755 .bashrc ${D}/home/root
    install -m 0755 .inputrc ${D}/home/root
}

------=_NextPart_000_03AB_01CE99B3.2FA76BA0--
