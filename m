Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 448694C800D8
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2011 12:01:37 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 13 Jul 2011 10:01:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,526,1304319600"; d="scan'208";a="26826761"
Received: from unknown (HELO [10.255.13.191]) ([10.255.13.191])
	by azsmga001.ch.intel.com with ESMTP; 13 Jul 2011 10:01:26 -0700
Message-ID: <4E1DCF73.3030101@linux.intel.com>
Date: Wed, 13 Jul 2011 10:01:39 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: NiQingliang <niqingliang@insigma.com.cn>
References: <1310496703.2162.17.camel@scimitar>	<4E1C9A00.5060005@linux.intel.com>
	<1310504880.20015.1080.camel@rex>	<1310519752.2527.20.camel@localhost.localdomain>	<1310522900.2162.26.camel@scimitar>	<1310523594.2527.35.camel@localhost.localdomain>	<1310524300.2162.28.camel@scimitar>
	<1310544262.15433.3.camel@localhost.localdomain>
In-Reply-To: <1310544262.15433.3.camel@localhost.localdomain>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Supporting upcoming distribution releases
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
X-List-Received-Date: Wed, 13 Jul 2011 17:01:37 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 07/13/2011 01:04 AM, NiQingliang wrote:
> first sorry about that, indeed I don't know how to commit a patch, so
> just paste the diff result here.
> 
> diff --git a/oe-init-build-env b/oe-init-build-env
> index 77332a7..0da8bc0 100755
> --- a/oe-init-build-env
> +++ b/oe-init-build-env
> @@ -39,6 +39,20 @@ else
>     $OEROOT/scripts/oe-setup-builddir
>     unset OEROOT
>     unset BBPATH
> +

Before searching manually, we should attempt to use whatever is set in
the environment.

--
Darren

> +   # find the python version 2.x
> +   # the 'python -V' need redirect to stdout
> +   # precondition:
> +   #    $BUILDDIR is not NULL, but I doubt when it will be NULL.
> +   #    user have not made the file $BUILDDIR/python by himself.
> +   for PY_BIN in `find /{usr/,}bin -regex '.*/python\(\|2\|2\.[0-9]*
> \)'`; do
> +      if [ -n "`$PY_BIN -V 2>&1|grep '^Python 2\.'`" ]; then
> +         ln -sf $PY_BIN $BUILDDIR/python
> +         export PATH="$BUILDDIR:$PATH"
> +         break
> +      fi
> +   done
> +
>     [ -n "$BUILDDIR" ] && cd $BUILDDIR
>  fi
> 
> 
> On Wed, 2011-07-13 at 10:31 +0800, Joshua Lock wrote:
>> On Wed, 2011-07-13 at 10:19 +0800, NiQingliang wrote:
>>> /usr/bin/env python2
>>> /usr/bin/env python2.7
>>
>> These are both valid on Fedora 15, iirc before distributions started
>> shipping Python 3 they were less common though...
>>
>>> both of them are ok for archlinux, but I don't know which is ok for
>>> other distributions, maybe both are not.
>>>
>>> maybe we can make a shell script to detect the python version, and make
>>> a symbollink to the right one in some directory, and add the directory
>>> into env var "PATH".
>>
>> Patches welcome :-)
>>
>> I looked at it briefly and the work would require more time than I have
>> spare right now just to ensure it worked on all required distributions.
>>
>> If you'd like to work on a patch I'd be happy to help test and review.
>>
>> Cheers,
>> Joshua
>> --
>> Joshua Lock
>>         Yocto Project "Johannes factotum"
>>         Intel Open Source Technology Centre
>>
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

