Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00487E011A6
	for <yocto@yoctoproject.org>; Sun, 21 Aug 2011 08:25:24 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 21 Aug 2011 08:25:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,258,1312182000"; 
   d="scan'208";a="9471382"
Received: from unknown (HELO [10.255.14.5]) ([10.255.14.5])
	by AZSMGA002.ch.intel.com with ESMTP; 21 Aug 2011 08:25:22 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <4E507B03.7090004@windriver.com>
References: <cover.1313853536.git.tom.zanussi@intel.com>
	<cee71456f21be0ce11ce74fc677a6d8d27647481.1313853536.git.tom.zanussi@intel.com>
	<4E507B03.7090004@windriver.com>
Date: Sun, 21 Aug 2011 10:25:57 -0500
Message-ID: <1313940357.2394.148.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"dvhart@linux.intel.com" <dvhart@linux.intel.com>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: [PATCH 1/9] meta-crownbay: switch to linux-yocto 3.0 kernel
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
X-List-Received-Date: Sun, 21 Aug 2011 15:25:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2011-08-20 at 20:26 -0700, Bruce Ashfield wrote:
> On 11-08-20 11:26 AM, tom.zanussi@intel.com wrote:
> > From: Tom Zanussi<tom.zanussi@intel.com>
> >
> > Switch crownbay and crownbay-noemgd to the 3.0 kernel, lock it down,
> > and update kernel SRCREVs.
> >
> > Signed-off-by: Tom Zanussi<tom.zanussi@intel.com>
> > ---
> >   meta-crownbay/conf/machine/crownbay-noemgd.conf    |    2 ++
> >   meta-crownbay/conf/machine/crownbay.conf           |    2 ++
> >   .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |   15 +++++++++++++++
> >   3 files changed, 19 insertions(+), 0 deletions(-)
> >   create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
> >
> > diff --git a/meta-crownbay/conf/machine/crownbay-noemgd.conf b/meta-crownbay/conf/machine/crownbay-noemgd.conf
> > index 0219bd1..0a82b54 100644
> > --- a/meta-crownbay/conf/machine/crownbay-noemgd.conf
> > +++ b/meta-crownbay/conf/machine/crownbay-noemgd.conf
> > @@ -12,6 +12,8 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
> >   KERNEL_IMAGETYPE = "bzImage"
> >
> >   PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> > +PREFERRED_VERSION_linux-yocto = "3.0+git%"
> 
> Did you want to make all these:
> 
> PREFERRED_VERSION_linux-yocto = "3.0%"
> 
> Since that will match 3.0.1, 3.0.2 ... etc. That's what I changed
> the other machines to, and was the outcome of the version number
> discussion on the oe-core list.
> 

Yeah, I updated the others yesterday and will do the same for these when
I respin the patchset again...

Thanks for reminding me,

Tom

> Cheers,
> 
> Bruce
> 
> > +
> >   PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
> >   PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
> >   PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
> > diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
> > index 323c8c1..b4ea4b4 100644
> > --- a/meta-crownbay/conf/machine/crownbay.conf
> > +++ b/meta-crownbay/conf/machine/crownbay.conf
> > @@ -12,6 +12,8 @@ MACHINE_FEATURES = "kernel26 screen keyboard pci usbhost ext2 ext3 x86 \
> >   KERNEL_IMAGETYPE = "bzImage"
> >
> >   PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> > +PREFERRED_VERSION_linux-yocto = "3.0+git%"
> > +
> >   PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"
> >   PREFERRED_PROVIDER_virtual/libx11 ?= "libx11-trim"
> >   PREFERRED_PROVIDER_virtual/libgl  ?= "mesa-dri"
> > diff --git a/meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
> > new file mode 100644
> > index 0000000..c9aef72
> > --- /dev/null
> > +++ b/meta-crownbay/recipes-kernel/linux/linux-yocto_3.0.bbappend
> > @@ -0,0 +1,15 @@
> > +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> > +
> > +COMPATIBLE_MACHINE_crownbay = "crownbay"
> > +KMACHINE_crownbay  = "yocto/standard/crownbay"
> > +KERNEL_FEATURES_append_crownbay += " cfg/smp.scc"
> > +
> > +COMPATIBLE_MACHINE_crownbay-noemgd = "crownbay-noemgd"
> > +KMACHINE_crownbay-noemgd  = "yocto/standard/crownbay"
> > +KERNEL_FEATURES_append_crownbay-noemgd += " cfg/smp.scc"
> > +
> > +SRCREV_machine_pn-linux-yocto_crownbay ?= "9a259cf4f6d404db2820642df755a295bbfb7fe7"
> > +SRCREV_meta_pn-linux-yocto_crownbay ?= "fe8eac15e144a35a716cd32c9d2b296ecd5202ac"
> > +
> > +SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?= "9a259cf4f6d404db2820642df755a295bbfb7fe7"
> > +SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?= "fe8eac15e144a35a716cd32c9d2b296ecd5202ac"
> 



