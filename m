Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DD00E01443
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 16:43:27 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 19 Jun 2012 16:43:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="167760086"
Received: from unknown (HELO [10.255.12.212]) ([10.255.12.212])
	by fmsmga001.fm.intel.com with ESMTP; 19 Jun 2012 16:43:25 -0700
Message-ID: <4FE10E9C.6000502@linux.intel.com>
Date: Tue, 19 Jun 2012 16:43:24 -0700
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120605 Thunderbird/13.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAE9DZUR8FYWzaAOMzkQ_h6GwVCtWWu=Awc8s+onOeuOU3QgZ3g@mail.gmail.com>
In-Reply-To: <CAE9DZUR8FYWzaAOMzkQ_h6GwVCtWWu=Awc8s+onOeuOU3QgZ3g@mail.gmail.com>
Subject: Re: trouble running hob on Debian
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
X-List-Received-Date: Tue, 19 Jun 2012 23:43:27 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 19/06/12 15:31, Dallas Clement wrote:
> I'm experiencing some grief trying to run hob from my Debian Squeeze (6.0.5).
>
> [dallasc /development/dallasc/yocto/poky/build] hob
> FATAL: Gtk+, PyGtk and PyGobject are required to use Hob,
> You have Gtk+ 2.20.1 and PyGtk 2.17.0.

This would be much more useful if the required version were also 
reported, an oversight on my part.

Presently you need Gtk+ 2.20.0 or later and PyGtk 2.21.0 or later.

Joshua
-- 
Joshua Lock
         Yocto Project
         Intel Open Source Technology Centre



