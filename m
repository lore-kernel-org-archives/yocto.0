Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6897E01493
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2013 10:22:18 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Jun 2013 10:19:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,890,1363158000"; d="scan'208";a="331636508"
Received: from unknown (HELO helios.localnet) ([10.252.122.72])
	by orsmga001.jf.intel.com with ESMTP; 18 Jun 2013 10:22:07 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: DAMARLA Satya Swaroop <swaroop.damarla@gmail.com>
Date: Tue, 18 Jun 2013 18:22:06 +0100
Message-ID: <4942552.tXbzOmlq5o@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.3 (Linux/3.8.0-25-generic; KDE/4.10.3; i686; ; )
In-Reply-To: <CAFMfyzKUxipLfow_7ZiyMGAFwmnJGuaAm543NjSgPw3OP+j+4w@mail.gmail.com>
References: <CAFMfyzKUxipLfow_7ZiyMGAFwmnJGuaAm543NjSgPw3OP+j+4w@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Default init_manager
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
X-List-Received-Date: Tue, 18 Jun 2013 17:22:18 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 18 June 2013 19:09:43 DAMARLA Satya Swaroop wrote:
> *DISTRO_FEATURES_INITMAN = "systemd"* is not working... Is there anyother
> way to chnage the init manager from sysvinit to systemd

This was only used for a fairly short time in master. Please see the
Development Manual for the proper method:

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#selecting-an-initialization-manager

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

