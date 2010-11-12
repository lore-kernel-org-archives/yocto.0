Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9F6744C8108C
	for <yocto@yoctoproject.org>; Fri, 12 Nov 2010 11:29:10 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 Nov 2010 09:29:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,188,1288594800"; d="scan'208";a="856916198"
Received: from unknown (HELO [10.255.13.55]) ([10.255.13.55])
	by fmsmga001.fm.intel.com with ESMTP; 12 Nov 2010 09:29:10 -0800
Message-ID: <4CDD7965.6060206@linux.intel.com>
Date: Fri, 12 Nov 2010 09:29:09 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>, 
	Yocto Project Discussion <yocto@yoctoproject.org>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A302157EF@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A302157EF@shsmsx501.ccr.corp.intel.com>
Subject: Re: [PULL] multimedia upgrades and disk optmization, Dongxiao Xu, 2010/11/12
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
X-List-Received-Date: Fri, 12 Nov 2010 17:29:10 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/12/2010 03:24 AM, Xu, Dongxiao wrote:
> Hi Saul,
>
> This pull request contains some gstreamer recipe upgrades and disk space optimization, please help to review and pull.
>
Dongxiao,

Will you have a distro tracking pull request also?

> Thanks,
> Dongxiao
>
>   meta/classes/sstate.bbclass
Minor nit, traditional the options go between the command and the file 
list, so I fixed this to be "rm -rf ${SSTATE_BUILDDIR}".

Sau!
                                                      |    3
>   meta/recipes-multimedia/gstreamer/gst-plugins-bad_0.10.19.bb                      |   24
>   meta/recipes-multimedia/gstreamer/gst-plugins-bad_0.10.20.bb                      |   24
>   meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.29.bb                     |   22
>   meta/recipes-multimedia/gstreamer/gst-plugins-base_0.10.30.bb                     |   22
>   meta/recipes-multimedia/gstreamer/gst-plugins-good_0.10.23.bb                     |   19
>   meta/recipes-multimedia/gstreamer/gst-plugins-good_0.10.25.bb                     |   19
>   meta/recipes-multimedia/gstreamer/gst-plugins-ugly_0.10.15.bb                     |   19
>   meta/recipes-multimedia/gstreamer/gst-plugins-ugly_0.10.16.bb                     |   19
>   meta/recipes-multimedia/gstreamer/gstreamer-0.10.29/check_fix.patch               |   17
>   meta/recipes-multimedia/gstreamer/gstreamer-0.10.29/gst-inspect-check-error.patch |   14
>   meta/recipes-multimedia/gstreamer/gstreamer-0.10.29/gstregistrybinary.c           |  487 ----------
>   meta/recipes-multimedia/gstreamer/gstreamer-0.10.29/gstregistrybinary.h           |  194 ---
>   meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/check_fix.patch               |   17
>   meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/gst-inspect-check-error.patch |   14
>   meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/gstregistrybinary.c           |  487 ++++++++++
>   meta/recipes-multimedia/gstreamer/gstreamer-0.10.30/gstregistrybinary.h           |  194 +++
>   meta/recipes-multimedia/gstreamer/gstreamer_0.10.29.bb                            |   30
>   meta/recipes-multimedia/gstreamer/gstreamer_0.10.30.bb                            |   30
>   19 files changed, 829 insertions(+), 826 deletions(-)
>
> Dongxiao Xu (6):
>        sstate.bbclass: Remove the temp sstate-build-* directories in WORKDIR
>        gstreamer: Upgrade to version 0.10.30
>        gst-plugins-base: Upgraded to version 0.10.30
>        gst-plugins-good: Upgraded to version 0.10.25
>        gst-plugins-bad: Upgraded to version 0.10.20
>        gst-plugins-ugly: Upgraded to version 0.10.16
>
> Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dxu4/distro
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

