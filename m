Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49171E0044D
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 11:42:24 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 09 Apr 2012 11:42:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="151575317"
Received: from unknown (HELO [10.255.12.48]) ([10.255.12.48])
	by fmsmga002.fm.intel.com with ESMTP; 09 Apr 2012 11:42:23 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE203609231@ORSMSX105.amr.corp.intel.com>
References: <cover.1333496206.git.kishore.k.bodke@intel.com>
	<48b65c9c2c2be50340ee316f9b740935e3a0e5d1.1333496206.git.kishore.k.bodke@intel.com>
	<1333994454.2335.70.camel@elmorro>
	<D956029D25CF204F948EA0FB515E1EE203609231@ORSMSX105.amr.corp.intel.com>
Date: Mon, 09 Apr 2012 13:41:35 -0500
Message-ID: <1333996895.2335.99.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 4/7] Cedartrail: Add bbappend files to install Audio and Video files.
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
X-List-Received-Date: Mon, 09 Apr 2012 18:42:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-04-09 at 11:29 -0700, Bodke, Kishore K wrote:
> 
> >-----Original Message-----
> >From: Zanussi, Tom
> >Sent: Monday, April 09, 2012 11:01 AM
> >To: Bodke, Kishore K
> >Cc: yocto@yoctoproject.org
> >Subject: Re: [PATCH 4/7] Cedartrail: Add bbappend files to install Audio
> >and Video files.
> >
> >On Tue, 2012-04-03 at 16:43 -0700, kishore.k.bodke@intel.com wrote:
> >> From: Kishore Bodke <kishore.k.bodke@intel.com>
> >>
> >> These bbappend files pulls in the Audio, Video and Web Kit
> >> into the Image with IMAGE_INSTALL.
> >>
> >> Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
> >> ---
> >>  .../images/core-image-sato-dev.bbappend            |    2 ++
> >>  .../images/core-image-sato-sdk.bbappend            |    2 ++
> >>  .../recipes-sato/images/core-image-sato.bbappend   |    1 +
> >>  3 files changed, 5 insertions(+), 0 deletions(-)
> >>  create mode 100644 meta-cedartrail/recipes-sato/images/core-image-
> >sato-dev.bbappend
> >>  create mode 100644 meta-cedartrail/recipes-sato/images/core-image-
> >sato-sdk.bbappend
> >>  create mode 100644 meta-cedartrail/recipes-sato/images/core-image-
> >sato.bbappend
> >>
> >> diff --git a/meta-cedartrail/recipes-sato/images/core-image-sato-
> >dev.bbappend b/meta-cedartrail/recipes-sato/images/core-image-sato-
> >dev.bbappend
> >> new file mode 100644
> >> index 0000000..33283f4
> >> --- /dev/null
> >> +++ b/meta-cedartrail/recipes-sato/images/core-image-sato-dev.bbappend
> >> @@ -0,0 +1,2 @@
> >> +IMAGE_INSTALL += "web-webkit bigbuckbunny-ogg ogg-CC-BY-3.0-music-
> >samples"
> >> +
> >> diff --git a/meta-cedartrail/recipes-sato/images/core-image-sato-
> >sdk.bbappend b/meta-cedartrail/recipes-sato/images/core-image-sato-
> >sdk.bbappend
> >> new file mode 100644
> >> index 0000000..33283f4
> >> --- /dev/null
> >> +++ b/meta-cedartrail/recipes-sato/images/core-image-sato-sdk.bbappend
> >> @@ -0,0 +1,2 @@
> >> +IMAGE_INSTALL += "web-webkit bigbuckbunny-ogg ogg-CC-BY-3.0-music-
> >samples"
> >> +
> >> diff --git a/meta-cedartrail/recipes-sato/images/core-image-
> >sato.bbappend b/meta-cedartrail/recipes-sato/images/core-image-
> >sato.bbappend
> >> new file mode 100644
> >> index 0000000..4c1ccac
> >> --- /dev/null
> >> +++ b/meta-cedartrail/recipes-sato/images/core-image-sato.bbappend
> >> @@ -0,0 +1 @@
> >> +IMAGE_INSTALL += "web-webkit bigbuckbunny-ogg  ogg-CC-BY-3.0-music-
> >samples"
> >
> >These will always add the media files etc whenever anyone builds any of
> >these.  Is that really what you want?
> 
> Yes. By default we wanted to have all these included when customer builds
> a regular sato image.
> So, I think it would be good if it remains unchanged.
> 

But what if I wanted to build a sato image that didn't include those
media files?  I can no longer type 'bitbake core-image-sato' and get
that.

Tom

> Thanks
> Kishore.
> 
> >
> >Maybe creating separate test image recipes that do this would be more
> >along the lines of what you wanted...
> >
> >Tom
> 



