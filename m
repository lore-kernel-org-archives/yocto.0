Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E95B0E0048B
	for <yocto@yoctoproject.org>; Sat, 20 Aug 2011 11:10:34 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 20 Aug 2011 11:10:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,256,1312182000"; d="scan'208";a="40595478"
Received: from unknown (HELO [10.255.14.5]) ([10.255.14.5])
	by azsmga001.ch.intel.com with ESMTP; 20 Aug 2011 11:10:33 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Saul Wold <saul.wold@intel.com>
In-Reply-To: <4E4FF2CA.4010202@intel.com>
References: <cover.1313853536.git.tom.zanussi@intel.com>
	<2b6c0ba64301de0406e94ebf51684e3abe088555.1313853536.git.tom.zanussi@intel.com>
	<4E4FF2CA.4010202@intel.com>
Date: Sat, 20 Aug 2011 13:11:02 -0500
Message-ID: <1313863862.2394.131.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"dvhart@linux.intel.com" <dvhart@linux.intel.com>
Subject: Re: [PATCH 2/9] meta-crownbay: new recipe for emgd 1.8 driver binaries
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
X-List-Received-Date: Sat, 20 Aug 2011 18:10:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2011-08-20 at 10:45 -0700, Saul Wold wrote:
> On 08/20/2011 08:26 AM, tom.zanussi@intel.com wrote:
> > From: Tom Zanussi<tom.zanussi@intel.com>
> >
> > This adds a new recipe for the emgd 1.8 driver binaries.
> >
> > The emgd-driver-bin recipe now automatically downloads and installs
> > EMGD using the new click-through-free tarball, but since the binaries
> > still fall under a non-free license, we need to prevent it from being
> > accidentally installed in an image.
> >
> > We therefore make sure it's labeled with 'EMGD_LICENSE'.  In order to
> > build an image that contains EMGD, the user now needs to add a
> > 'EMGD_LICENSE = "yes"' line to local.conf.
> >
> > Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>
> > ---
> >   .../xorg-xserver/emgd-driver-bin_1.8.bb            |   46 ++++++++++++++++++++
> >   1 files changed, 46 insertions(+), 0 deletions(-)
> >   create mode 100644 meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
> >
> > diff --git a/meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb b/meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
> > new file mode 100644
> > index 0000000..be19e5e
> > --- /dev/null
> > +++ b/meta-crownbay/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
> > @@ -0,0 +1,46 @@
> > +SUMMARY = "EMGD 1.8 xserver binaries"
> > +DESCRIPTION = "EMGD 1.8 includes some userspace binaries that use non-free \
> > +licensing, which are now available via a non-click-through downloadable \
> > +tarball, and is what this recipe now uses.  Since it is a non-free license, \
> > +this recipe is marked as 'commercial' and you need to add COMMERCIAL_LICENSE \
> > += \"\" in order to enable it in a build."
> 
> This DESCRIPTION does not match the implementation, I want to talk with 
> Richard about adding another way to exclude commercially licensed 
> recipes.  We can talk on Monday about this further.
> 

Ah, yes, missed that.  OK, I won't bother to fix it then if you're going
to figure out a better way.

Note that I added an item related to this for 1.2:

https://wiki.yoctoproject.org/wiki/Yocto_Project_Unscheduled_Feature_List

"Provide a click through license mechanism"

I do need to get this patchset merged soon, though, as there are other
people waiting for it and it's blocking some bugs from being closed out.
So if it's going to end up in a quagmire, I can just use the same method
as 1.6 emgd and completely route around the issue for now (but I'll wait
for a final word on it from you first) until it gets addressed in 1.2
the task above...

Tom

> Thanks
> 	Sau!
> 
> 
> > +LICENSE = "Intel-binary-only"
> > +PR = "r0"
> > +
> > +EMGD_LICDIR = "IEMGD_HEAD_Linux/License"
> > +EMGD_RPMDIR = "IEMGD_HEAD_Linux/MeeGo1.2"
> > +
> > +LIC_FILES_CHKSUM = "file://${WORKDIR}/${EMGD_LICDIR}/License.txt;md5=b54f01caaf8483b3cb60c0c40f2bf22d"
> > +
> > +SRC_URI = "http://edc.intel.com/App_Shared/Downloads/Lin_EMGD_1_8_RC_2032.tgz"
> > +
> > +FILES_${PN} += "${libdir}/dri ${libdir}/xorg/modules/drivers"
> > +FILES_${PN}-dbg += "${libdir}/xorg/modules/drivers/.debug ${libdir}/dri/.debug"
> > +
> > +S = "${WORKDIR}/${EMGD_RPMDIR}"
> > +
> > +do_install () {
> > +    rpm2cpio.sh ${S}/emgd-bin*.rpm | cpio -id
> > +
> > +    install -d -m 0755                    ${D}/${libdir}/dri
> > +    install -d -m 0755                    ${D}/${libdir}/xorg/modules/drivers
> > +    install -m 0755 ${S}/usr/lib/*.so.*   ${D}${libdir}/
> > +    install -m 0755 ${S}/usr/lib/dri/*    ${D}${libdir}/dri/
> > +    install -m 0755 ${S}/usr/lib/xorg/modules/drivers/* ${D}${libdir}/xorg/modules/drivers/
> > +
> > +    ln -sf libEGl.so.1                    ${D}${libdir}/libEGl.so
> > +    ln -sf libGLES_CM.so.1                ${D}${libdir}/libGLES_CM.so
> > +    ln -sf libGLESv2.so.2                 ${D}${libdir}/libGLESv2.so
> > +}
> > +
> > +LEAD_SONAME = "libEGL.so"
> > +
> > +addtask check_emgd_license before do_fetch
> > +
> > +python do_check_emgd_license() {
> > +    pn = bb.data.getVar('PN', d, 1)
> > +    emgd_license = bb.data.getVar('EMGD_LICENSE', d, 1)
> > +    if not emgd_license or not emgd_license.lower() == "yes":
> > +        bb.debug(1, "Skipping %s because it has a non-free license" % pn)
> > +        raise bb.parse.SkipPackage("because it requires EMGD_LICENSE = \"yes\" in local.conf to ship")
> > +}
> 



