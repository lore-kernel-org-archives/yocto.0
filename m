Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 792B3E006B4
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2011 08:44:04 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 04 Oct 2011 08:44:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,485,1312182000"; d="scan'208";a="74420608"
Received: from unknown (HELO [10.255.14.210]) ([10.255.14.210])
	by fmsmga002.fm.intel.com with ESMTP; 04 Oct 2011 08:44:03 -0700
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 04 Oct 2011 08:43:58 -0700
In-Reply-To: <851AFBB17E849A448F55F5C470A5F2020271FCEF23@NBMBX01.bbnet.ad>
References: <851AFBB17E849A448F55F5C470A5F2020271FCEF23@NBMBX01.bbnet.ad>
X-Mailer: Evolution 3.0.3 (3.0.3-1.fc15) 
Message-ID: <1317743043.2229.14.camel@scimitar>
Mime-Version: 1.0
Subject: Re: Beagleboard
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
X-List-Received-Date: Tue, 04 Oct 2011 15:44:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-10-04 at 07:19 -0700, Barry Fisher wrote:
> All:
> 
> Does the yocto project distribution for the Beagleboard contain an
> audio driver?

It does, are you asking this question because you've built an image that
isn't producing sound?

If so which version have you built and which revision is the target
board?

We did have a fix 4 days ago for audio on the beagleboard:
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=b0403ff4cbcc6d472c69d44106dff551374076b6

Do you have this change in the version you're building from?

Regards,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre


