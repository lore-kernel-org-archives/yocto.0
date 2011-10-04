Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6307BE006B4
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2011 08:47:04 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 04 Oct 2011 08:47:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,485,1312182000"; d="scan'208";a="74421656"
Received: from unknown (HELO [10.255.14.210]) ([10.255.14.210])
	by fmsmga002.fm.intel.com with ESMTP; 04 Oct 2011 08:47:03 -0700
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 04 Oct 2011 08:46:58 -0700
In-Reply-To: <1531E53627F1F749B4FE809BF2A4EB6702B130EF@WETMEX10.loepfe.com>
References: <1531E53627F1F749B4FE809BF2A4EB6702B130EF@WETMEX10.loepfe.com>
X-Mailer: Evolution 3.0.3 (3.0.3-1.fc15) 
Message-ID: <1317743223.2229.17.camel@scimitar>
Mime-Version: 1.0
Subject: Re: Yocto webbrowser ?
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
X-List-Received-Date: Tue, 04 Oct 2011 15:47:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-10-04 at 15:26 +0200, Vellemans, Noel wrote:
> 
> Hi all,
> 
> I've been building the current-release of yocto (which succeeds)
> [ sato-qemu-arm build]
> 
> 
> 1) At this time I would like to 'include' the web-browser
> (webkit-web-browser)  into this build but I can not find any doc's on
> how to do this?
> Any pointers ?

You'll need to customise an image to include the web browser:
http://www.yoctoproject.org/docs/1.1/poky-ref-manual/poky-ref-manual.html#usingpoky-extend-customimage

> 2) If the Web-browser build succeeds, how can I install this on the
> target ?

Alternatively you can scp the built package (probably
build/tmp/deploy/rpm/ARCH/packagename if you're using the default
settings) to the target device and install with the on-device package
management tools.

Regards,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre


