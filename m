Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1301E00348
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2012 13:08:09 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 19 Oct 2012 13:07:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,615,1344236400"; d="scan'208";a="229851885"
Received: from unknown (HELO [10.255.14.73]) ([10.255.14.73])
	by orsmga002.jf.intel.com with ESMTP; 19 Oct 2012 13:08:08 -0700
Message-ID: <1350677288.1569.25.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Ross Burton <ross.burton@intel.com>
Date: Fri, 19 Oct 2012 15:08:08 -0500
In-Reply-To: <1350487279-1681-1-git-send-email-ross.burton@intel.com>
References: <1350487279-1681-1-git-send-email-ross.burton@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: Re: Cedar Trail and gst-vaapi fixes
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
X-List-Received-Date: Fri, 19 Oct 2012 20:08:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-10-17 at 16:21 +0100, Ross Burton wrote:
> Hi,
> 
> Make gst-vaapi work on Cedar Trail, upgrade the gst-vaapi to the latest version
> which doesn't need ffmpeg anymore, and remove the commercial restriction on
> gst-vaapi.
> 
> The new gst-vaapi was tested on Cedar Trail, and played the Sintel 720p trailer
> smoothly.  ffmpeg was required for the audio (MPEG4 AAC), but without that
> present the video still plays.
> 

I pulled the first two patches into meta-intel/master, but left the
third behind - we still need the commercial license since the
gst-ffmpeg requires it, and even then we still want to keep the
VA_FEATURES so users can just set it to "" to not include video
acceleration.

Tom

> Ross
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



