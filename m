Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F9FCE00EF1; Fri, 19 Aug 2016 01:41:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F19C6E00E94
	for <yocto@yoctoproject.org>; Fri, 19 Aug 2016 01:41:14 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 19 Aug 2016 01:41:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,544,1464678000"; d="scan'208";a="1028251387"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.71])
	by fmsmga001.fm.intel.com with ESMTP; 19 Aug 2016 01:41:12 -0700
Date: Fri, 19 Aug 2016 11:42:37 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: Martin Jansa <martin.jansa@gmail.com>
Message-ID: <20160819084237.GC16863@mbabyjoh-desk.ger.corp.intel.com>
References: <1471593718-23587-1-git-send-email-maxin.john@intel.com>
	<20160819081331.xuaqej3p7l6yon7m@jama>
MIME-Version: 1.0
In-Reply-To: <20160819081331.xuaqej3p7l6yon7m@jama>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org, paul.eggleton@linux.intel.com
Subject: Re: [meta-qt4][PATCH 1/2] qt4-embedded.inc: provide PACKAGECONFIG for tslib
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
X-List-Received-Date: Fri, 19 Aug 2016 08:41:17 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Martin,

On Fri, Aug 19, 2016 at 10:13:31AM +0200, Martin Jansa wrote:
> On Fri, Aug 19, 2016 at 11:01:57AM +0300, Maxin B. John wrote:
> > make tslib dependency optional
> > 
> > Signed-off-by: Maxin B. John <maxin.john@intel.com>
> > ---
> >  recipes-qt4/qt4/qt4-embedded.inc | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> > 
> > diff --git a/recipes-qt4/qt4/qt4-embedded.inc b/recipes-qt4/qt4/qt4-embedded.inc
> > index 3f40b82..6e7cd86 100644
> > --- a/recipes-qt4/qt4/qt4-embedded.inc
> > +++ b/recipes-qt4/qt4/qt4-embedded.inc
> > @@ -2,7 +2,9 @@ SUMMARY = "Cross-platform UI toolkit and application framework (framebuffer vers
> >  DESCRIPTION = "Qt is a versatile cross-platform application framework -- this is the embedded (framebuffer) version."
> >  SECTION = "libs"
> >  HOMEPAGE = "http://qt-project.org/"
> > -DEPENDS += "tslib"
> > +
> > +PACKAGECONFIG ??= ""
> > +PACKAGECONFIG[tslib] = "QT_EMBEDDED_EXTRA_FLAGS_append ='  -plugin-mouse-tslib', , tslib"
> 
> Does this really work? 

Yes, it was tested before.   

> Why don't you append PACKAGECONFIG_CONFARGS
> variable to QT_EMBEDDED_EXTRA_FLAGS and leave only -plugin-mouse-tslib
> in PACKAGECONFIG?

Your suggestion looks better and will try to update it based on that, Thanks.
(A quick grep in meta-qt4 for PACKAGECONFIG_CONFARGS returned zero results)

> >  QT4EDEPENDS = ""
> >  QT_BASE_LIB  ?= "libqt-embedded"
> > @@ -18,7 +20,7 @@ QT_EMBEDDED_FLAGS ?= " \
> >  "
> >  QT_EMBEDDED_EXTRA_FLAGS ?= " \
> >      -plugin-gfx-transformed -plugin-gfx-qvfb -plugin-gfx-vnc \
> > -    -plugin-mouse-tslib -qt-mouse-pc -qt-mouse-qvfb -qt-mouse-linuxinput \
> > +    -qt-mouse-pc -qt-mouse-qvfb -qt-mouse-linuxinput \
> >      -qt-kbd-tty -qt-kbd-linuxinput \
> >  "
> >  QT_EMBEDDED_KEYPAD_FLAGS ?= " \
> > -- 
> > 2.4.0

Best Regards,
Maxin

