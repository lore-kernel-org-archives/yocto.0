Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41C82E004E9
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2011 10:13:30 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 21 Sep 2011 10:13:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,418,1312182000"; d="scan'208";a="57511049"
Received: from unknown (HELO helios.localnet) ([10.255.14.225])
	by fmsmga002.fm.intel.com with ESMTP; 21 Sep 2011 10:13:29 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 21 Sep 2011 18:13:28 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-10-generic-pae; KDE/4.6.2; i686; ; )
References: <201108231642.49667.paul.eggleton@linux.intel.com>
In-Reply-To: <201108231642.49667.paul.eggleton@linux.intel.com>
MIME-Version: 1.0
Message-Id: <201109211813.28264.paul.eggleton@linux.intel.com>
Subject: Re: Tested host distros for 1.1
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
X-List-Received-Date: Wed, 21 Sep 2011 17:13:30 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

On Tuesday 23 August 2011 16:42:49 Paul Eggleton wrote:
> We now have the mechanism for fixing bug #1096 [1] i.e. showing a warning
> if the user is running a build on a distro that has not been tested;
> however to make this work what we now need is a list of distributions we
> want to consider tested. What distros specifically are we going to list
> for 1.1?
> 
> [1] http://bugzilla.pokylinux.org/show_bug.cgi?id=1096

So thanks to Jiajun we now have a wiki page to track tested host distros:

  https://wiki.yoctoproject.org/wiki/Distribution_Support

If you're successfully building Yocto on a host distro that's not currently 
listed, could you reply here with the information we're collecting on that 
page (or if you prefer, add it to the wiki page yourself)?

Many thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

