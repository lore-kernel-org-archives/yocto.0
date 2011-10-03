Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED2E2E00536
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2011 12:02:11 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p93J8RfK032495; Mon, 3 Oct 2011 20:08:27 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 49hx8Xa9+1qH; Mon,  3 Oct 2011 20:08:27 +0100 (BST)
Received: from [192.168.1.40] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p93J8KKh032489
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 3 Oct 2011 20:08:23 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
Date: Mon, 03 Oct 2011 20:01:50 +0100
In-Reply-To: <4E8A0380.1030502@linux.intel.com>
References: <4E8A0380.1030502@linux.intel.com>
X-Mailer: Evolution 3.1.91- 
Message-ID: <1317668520.12684.8.camel@ted>
Mime-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>, "Wold, Saul" <saul.wold@intel.com>
Subject: Re: GRUB fix for 1.1: Preferred approach for default grub version
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
X-List-Received-Date: Mon, 03 Oct 2011 19:02:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-10-03 at 11:48 -0700, Darren Hart wrote:
> When grub2 was merged int oe-core, it became the default (rather than
> being explicitly requested by the 64b meta-intel BSPs). This breaks the
> live install on 32b systems, like the n450 - installing grub v1.99 with
> a grub v1 config.
> 
> We have a couple options on how to fix this.
> 
> 1) Set PREFERRED_PROVIDER_grub="0.97" in all 32b x86 machine configs
> 2) Set DEFAULT_PREFERENCE="-1" in the grub_1.99.bb recipe which would
>    affect all of oe-core.
> 3) Some alternate approach which would be the equivalent of
>    DEFAULT_PREFERENCE, but only for meta-yocto BSPs or the poky
>    "distro".
> 
> Given the time frame, I'd prefer to agree on the approach before writing
> and testing patches. Preferences?

I thought I'd been assured grub2 worked fine for our 32 and 64 bit
platforms? :/.

The correct question here is why doesn't grub2 work on 32 bit platforms?

The answer might be "we need for time than is available in the 1.1
release to fix it" but I'd at least like to see the answer to the
question before we start with workarounds.

Cheers,

Richard


