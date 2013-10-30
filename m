Return-Path: <jukka.rissanen@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58427E0179A
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 00:57:37 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 30 Oct 2013 00:57:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,599,1378882800"; d="scan'208";a="425010345"
Received: from sorvi.fi.intel.com (HELO [10.237.72.152]) ([10.237.72.152])
	by fmsmga002.fm.intel.com with ESMTP; 30 Oct 2013 00:57:22 -0700
Message-ID: <5270BBDF.8040905@linux.intel.com>
Date: Wed, 30 Oct 2013 09:57:19 +0200
From: Jukka Rissanen <jukka.rissanen@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130625 Thunderbird/17.0.7
MIME-Version: 1.0
To: Diego Sueiro <diego.sueiro@gmail.com>
References: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
In-Reply-To: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Custom defconfig is not used
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
X-List-Received-Date: Wed, 30 Oct 2013 07:57:41 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Diego,

On 16.10.2013 00:07, Diego Sueiro wrote:
> Folks,
>
> I created the following bbapend recipe for linux-mainline_3.8.bb
> <http://linux-mainline_3.8.bb> (from meta-beagleboard on dylan branch)
> for beaglebone.
> meta-mine/recipes-kernel/linux/linux-mainline_3.8.bbappend:
>
>     FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>     SRC_URI += " file://0019-mine.patch \
>                   file://defconfig \
>                   "
>
> But the defconfig and .config files on ${S} and ${WORKDIR} used are from
> meta-beagleboad, not from my bbappend.

I did this like this in 
http://git.yoctoproject.org/cgit/cgit.cgi/meta-eca/tree/meta-eca-bsp/recipes-kernel/linux/linux-mainline_3.8.bbappend


FILESEXTRAPATHS_append := ":${THISDIR}/${PN}"

# netfilter stuff is missing from beaglebone kernel
SRC_URI_append_beaglebone += "file://netfilter.cfg"

do_configure_append_beaglebone () {
	for i in ${S}/../*.cfg; do
		echo "Adding ${i} to ${S}/.config"
		cat ${i} >> ${S}/.config
	done

	yes '' | oe_runmake oldconfig
}


Seems to work just fine for me.


-- 
Cheers,
Jukka

