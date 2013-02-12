Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDB3DE006DC
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 01:42:11 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 12 Feb 2013 01:42:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,648,1355126400"; d="scan'208";a="255816781"
Received: from unknown (HELO helios.localnet) ([10.252.120.87])
	by azsmga001.ch.intel.com with ESMTP; 12 Feb 2013 01:42:10 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
Date: Tue, 12 Feb 2013 09:42:09 +0000
Message-ID: <2610234.Af8hC8zhhu@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10 (Linux/3.5.0-23-generic; KDE/4.10.0; i686; ; )
In-Reply-To: <CA+gsK-rZKVkXe762QUa7mGV2Vc0owKDQiDy3zor+7YJZb-cHQg@mail.gmail.com>
References: <CA+gsK-oajsnY7o0BZbXvn_Yh70o5fwUnVOU+HCr6qGqXZXPPow@mail.gmail.com>
	<CA+gsK-qAD49kkTScEAjKWs5zvsSyskKqumFqzj2j7LfHs43VJQ@mail.gmail.com>
	<CA+gsK-rZKVkXe762QUa7mGV2Vc0owKDQiDy3zor+7YJZb-cHQg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [danny] core-image-minimal-dev is missing dev packages
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
X-List-Received-Date: Tue, 12 Feb 2013 09:42:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Saturday 09 February 2013 09:25:09 Rudolf Streif wrote:
> I have not verified every single dev package but the linker files in
> /usr/lib/<arch> and related are missing. You cannot link against a dev
> image sysroot. That used to work.

I'm not quite sure what you mean, but if this is a regression would you mind 
filing a bug for this in bugzilla if you haven't already?

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

