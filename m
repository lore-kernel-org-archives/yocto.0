Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0F2EE00348
	for <yocto@yoctoproject.org>; Fri, 14 Sep 2012 14:25:08 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 Sep 2012 14:24:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,424,1344236400"; d="scan'208";a="204174914"
Received: from unknown (HELO [10.255.13.77]) ([10.255.13.77])
	by orsmga002.jf.intel.com with ESMTP; 14 Sep 2012 14:25:07 -0700
Message-ID: <1347657906.6185.17.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 14 Sep 2012 16:25:06 -0500
In-Reply-To: <CAJTo0LbgWdoX8GnMsKYa-y176X1YiTEd7Ucw7CNLLi6OBqaB2g@mail.gmail.com>
References: <cover.1347650435.git.tom.zanussi@intel.com>
	<e5aa858a33392e0a7569c50d308049f88cd802a4.1347650435.git.tom.zanussi@intel.com>
	<CAJTo0LbgWdoX8GnMsKYa-y176X1YiTEd7Ucw7CNLLi6OBqaB2g@mail.gmail.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: Re: [PATCH 1/1] meta-intel: make video acceleration choice dependent on LICENSE_FLAGS
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
X-List-Received-Date: Fri, 14 Sep 2012 21:25:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-09-14 at 21:51 +0100, Burton, Ross wrote:
> On 14 September 2012 20:27,  <tom.zanussi@intel.com> wrote:
> > The gst-ffmpeg recipe in oe-core had LICENSE_FLAGS added to make it
> > "commercial", so to avoid build errors the BSPs that use it (via the
> > gst-va-intel VA_FEATURE) should only include it if the user has added
> > "commercial" to LICENSE_FLAGS_WHITELIST when building.
> 
> It's entirely possible to use gst-vaapi without commercial plugins,
> the problem is the (mysterious to me) dependency on gst-ffmpeg.
> 

From the gstreamer-vaapi README:

"vaapidecoder currently relies on FFmpeg"

> How about making gst-ffmpeg a recommends instead of rdepends, so that
> if it's blacklisted due to license flags there isn't a build failure.

I can try that and see what happens.

> gst-vaapi doesn't have license issues to making it disappear when
> avoiding commercial licenses doesn't make sense.
> 
> (I'd also like to understand why gst-ffmpeg is a rdepends at all)
> 

The only avenue I was able to find (that worked, an important point) to
get gstreamer to use video acceleration was via ffmpeg (via gst-ffmpeg,
needed for making ffmpeg available to the gstreamer pipeline) with the
--with-vaapi option.

Believe me, I went through a bunch of iterations of different versions
and combinations of all these components before hitting on something
that didn't always segfault and gave more than 1/2 a frame a second
(literally), and that was after using code that supposedly worked for an
ELC demo...

Anyway, it would be nice if someone who had a better understanding of
this 'stack' could suggest better ways of doing things - at this point
it works for 3 different video acceleration implementations (emgd, pvr
and standard intel va) and I'm not looking forward to going through that
exercise again - for now I'll just be trying to fix the build problems
introduced by the new licensing restrictions.

Tom

> Ross



