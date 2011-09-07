Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C45F1E0075D
	for <yocto@yoctoproject.org>; Wed,  7 Sep 2011 03:47:41 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Sep 2011 03:47:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="46006380"
Received: from unknown (HELO helios.localnet) ([10.252.120.53])
	by orsmga001.jf.intel.com with ESMTP; 07 Sep 2011 03:47:40 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 7 Sep 2011 11:47:39 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-10-generic-pae; KDE/4.6.2; i686; ; )
References: <CAHrDPkpK-VGzJxEH4JGN3Q7KoQpuPxkJ5spD1ehMvPYgQND0WQ@mail.gmail.com>
	<4E674761.5080404@communistcode.co.uk>
In-Reply-To: <4E674761.5080404@communistcode.co.uk>
MIME-Version: 1.0
Message-Id: <201109071147.39307.paul.eggleton@linux.intel.com>
Subject: Re: Login/Password?
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
X-List-Received-Date: Wed, 07 Sep 2011 10:47:42 -0000
Content-Type: Text/Plain;
  charset="iso-8859-15"
Content-Transfer-Encoding: 7bit

On Wednesday 07 September 2011 11:28:49 Jack Mitchell wrote:
> It should be:
> 
> user: root
> 
> with a blank password.

Yes, that's correct.

For reference, when it comes time to do release/production images you should 
remove debug-tweaks from IMAGE_FEATURES (and if you're not rebuilding 
everything from scratch ensure dropbear is rebuilt) and probably add 
zap_root_password to ROOTFS_POSTPROCESS_COMMAND as well. Actually we should 
ensure zap_root_password gets added automatically without debug-tweaks for 
core-image at least, I'll try to fix that today.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

