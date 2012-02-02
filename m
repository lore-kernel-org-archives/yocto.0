Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD07BE00307
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 11:31:51 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 Feb 2012 11:31:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="103252250"
Received: from unknown (HELO [10.7.199.78]) ([10.7.199.78])
	by orsmga001.jf.intel.com with ESMTP; 02 Feb 2012 11:31:45 -0800
Message-ID: <4F2AE4A1.4030600@linux.intel.com>
Date: Thu, 02 Feb 2012 11:31:45 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: James Abernathy <jfabernathy@gmail.com>
References: <4F2A0A34.4020605@gmail.com> <4F2AB4FF.5070208@gmail.com>
	<4F2AC2AB.6030204@windriver.com> <4F2AC9A5.5040706@gmail.com>
	<4F2ACB7F.4010509@gmail.com> <4F2ADFE4.3050702@linux.intel.com>
	<CANFv2EkyMa0BSSKRm7VarTFM0xH2boJjWT8RZs8-iVegO3NPpw@mail.gmail.com>
In-Reply-To: <CANFv2EkyMa0BSSKRm7VarTFM0xH2boJjWT8RZs8-iVegO3NPpw@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: needed site is down???
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
X-List-Received-Date: Thu, 02 Feb 2012 19:31:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/02/12 11:15, James Abernathy wrote:
> On Thu, Feb 2, 2012 at 2:11 PM, Joshua Lock <josh@linux.intel.com
> <mailto:josh@linux.intel.com>> wrote:
>
>
>
>     On 02/02/12 09:44, jfabernathy wrote:
>
>         On 02/02/2012 12:36 PM, jfabernathy wrote:
>
>             On 02/02/2012 12:06 PM, Mark Hatle wrote:
>
>                 On 2/2/12 10:08 AM, jfabernathy wrote:
>
>                     On 02/01/2012 10:59 PM, jfabernathy wrote:
>
>                         Am I the only one seeing this dead link? I'm
>                         building from master and
>                         can't get to this link that draws the error:
>
>                         http://cgit.freedesktop.org/__libva/snapshot/libva-1.0.12.__tar.bz2
>                         <http://cgit.freedesktop.org/libva/snapshot/libva-1.0.12.tar.bz2>
>
>
>     This is supposed to be a transient error but so far as I can see the
>     fd.o cgit is still down.
>
>
>         Just noticed that what's on the Yocto mirror is
>         libva_0.31.0-1+sds9.1ubuntu1.__tar.gz ), but the recipe is
>         calling for a
>         newer version, libva-1.0.12.tar.bz2
>
>
>     I don't see libva-1.0.12 anywhere in poky or meta-yocto, the mirror
>     is only updated once the autobuilder has seen the recipe and
>     downloaded the object to mirror.
>
>     After a quick google I can't find a libva newer than 0.32.0+1sds2 -
>     where did you get your libva recipe from?
>
> If I checkout master on poky and meta-intel and run the normal crownbay
> (not the no-EMGD version) I get this error. Also on 1.2_M2 tag.
> JIm A

Whoops, I wasn't looking in the common directory - sorry about that.
That version of the Libya recipe has existed since November 26th, we 
really should be mirroring that.

Beth, are we updating the mirrors with packages fetched during builds of 
BSP's?

Sadly, (so far as I can tell) it looks like libva stopped hosting 
tarball releases and rely only on the snapshot functionality of git to 
supply tarballs. Which is fine until something like this happens.

If you can find a tarball of libva-1.0.12 from a source you trust you 
can download it and dump it in your DL_DIR to proceed your build.

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

