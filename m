Return-Path: <josh@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAF15E0140B
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 09:45:46 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 28 Oct 2011 09:45:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,419,1315206000"; d="scan'208";a="31120283"
Received: from unknown (HELO [10.255.15.141]) ([10.255.15.141])
	by AZSMGA002.ch.intel.com with ESMTP; 28 Oct 2011 09:45:45 -0700
Message-ID: <4EAADC39.8060000@linux.intel.com>
Date: Fri, 28 Oct 2011 09:45:45 -0700
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAP7cwtu-T9LdUy78MSG+JOanSHw6UTK5D-4zFu-bVzsRp9XwwA@mail.gmail.com>
	<4EAAC008.4050406@windriver.com>
	<CAP7cwttTXcGySrqmKvv+7saHFyF0xuUczY8h5693f232RCA_Sg@mail.gmail.com>
	<CAP7cwtvdz1G9YsoF6aDj0EUAQ4=WQmus2J2Ep5FYA=d8+9ZmYQ@mail.gmail.com>
In-Reply-To: <CAP7cwtvdz1G9YsoF6aDj0EUAQ4=WQmus2J2Ep5FYA=d8+9ZmYQ@mail.gmail.com>
Subject: Re: building and using yocto 1.1
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
X-List-Received-Date: Fri, 28 Oct 2011 16:45:47 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 28/10/11 09:20, Xianghua Xiao wrote:
> is there a way that, when a release is made, all the related source
> tarballs can be download as a whole? the separate download  slows
> build a lot for the out-of-box test as well.

We have a BitBake command to fetch all of the sources without actually
doing the build:

bitbake <target> -c fetchall

i.e.

bitbake core-image-sato -c fetchall

OR

bitbake world -c fetchall

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

