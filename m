Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22E47E0149D
	for <yocto@yoctoproject.org>; Fri, 12 Oct 2012 14:51:23 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 Oct 2012 14:51:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,578,1344236400"; d="scan'208";a="205089250"
Received: from unknown (HELO [10.255.14.5]) ([10.255.14.5])
	by orsmga001.jf.intel.com with ESMTP; 12 Oct 2012 14:51:22 -0700
Message-ID: <507890D9.6010400@linux.intel.com>
Date: Fri, 12 Oct 2012 14:51:21 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120911 Thunderbird/15.0.1
MIME-Version: 1.0
To: Marc Ferland <ferlandm@sonatest.com>
References: <87hapzvgqn.fsf@sonatest.com>
In-Reply-To: <87hapzvgqn.fsf@sonatest.com>
Cc: yocto@yoctoproject.org
Subject: Re: Revision file in images
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
X-List-Received-Date: Fri, 12 Oct 2012 21:51:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/12/2012 08:42 AM, Marc Ferland wrote:
> Hi,
>
> Is a revision file populated in the images produced by the build process?
> Something listing the revisions of the different layers used. Just like
> the "OE Build Configuration" summary.
>
That level of detail no.

> I'd like to easily identify what a target system currently runs.
>
You can identify it based on the /etc/issue file, which contains the 
information that you might have set in DISTRO_NAME and DISTRO_VERSION in 
your distro.

For example from poky.conf
DISTRO_NAME = "Poky 8.0 (Yocto Project 1.3 Reference Distro)"
DISTRO_VERSION = "1.3+snapshot-${DATE}"

oe-core alone does not se any default name, but version as follows:
DISTRO_VERSION ??= "oe-core.0"

These go into the issue file via the base_files recipe.

Sau!

> Regards,
>
> Marc
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

