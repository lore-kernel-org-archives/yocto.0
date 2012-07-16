Return-Path: <josh@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA8AFE00283
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 07:58:14 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 16 Jul 2012 07:58:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="193420799"
Received: from unknown (HELO [10.255.12.180]) ([10.255.12.180])
	by fmsmga002.fm.intel.com with ESMTP; 16 Jul 2012 07:58:14 -0700
Message-ID: <50042C06.70900@linux.intel.com>
Date: Mon, 16 Jul 2012 07:58:14 -0700
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: McClintock Matthew-B29882 <B29882@freescale.com>
References: <CAEsOVNehMk8dmo2O+MpOfs0JM9OPARB2Jd+dzTFw0g93SHYcyA@mail.gmail.com>
In-Reply-To: <CAEsOVNehMk8dmo2O+MpOfs0JM9OPARB2Jd+dzTFw0g93SHYcyA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: edison/denzil patches (post-1.1.2 and 1.2.1)
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
X-List-Received-Date: Mon, 16 Jul 2012 14:58:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/07/12 10:43, McClintock Matthew-B29882 wrote:
> Josh, Scott:
>
> I've pushed a set of patches for edison/denzil branch - and I may push
> a few more still to:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=mattsm/edison
> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=mattsm/denzil
>
> These are all cherry-pick's and most applied cleanly and a few had
> some minor cleanups. Please consider these for after the point
> releases. I will continue to push to these branches and rebase these
> branches off the official upstream trees as well.

I don't know how much work will be done on Edison after the 1.1.2 
release. I personally will no longer be working on it and I don't think 
the team here as enough resources to maintain it perpetually.

I assume that these changes are predominantly to further improve PPC 
support?

In general your branch has several types of changes that have generally 
been considered inappropriate for a point release (such as recipe 
upgrades, new functionality, etc).

Personally I'm not very keen on the idea of pushing them all and 
advocating their inclusion. I'd strongly encourage adoption of this 
release series if it's to continue to be relevant to your work.

Cheers,
Joshua
-- 
Joshua Lock
         Intel Open Source Technology Centre



