Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D4B1E002AC
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 10:15:43 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 Sep 2012 10:15:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,410,1344236400"; d="scan'208";a="202340376"
Received: from unknown (HELO helios.localnet) ([10.252.121.198])
	by orsmga002.jf.intel.com with ESMTP; 12 Sep 2012 10:15:41 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Rudolf Streif <rudolf.streif@linux.com>, yocto@yoctoproject.org
Date: Wed, 12 Sep 2012 18:15:40 +0100
Message-ID: <8585222.KxMqEadWm2@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-30-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <CA+gsK-rGm6zjVL6sAUoLYwYFJKwRn1oVEE7ubtXi3W=qrd6=dA@mail.gmail.com>
References: <CA+gsK-qoz4u6OZV+FZN+LZq2AOgw5RajOW6DCJOnXbZGecva1w@mail.gmail.com>
	<1391749.2csV02vdze@helios>
	<CA+gsK-rGm6zjVL6sAUoLYwYFJKwRn1oVEE7ubtXi3W=qrd6=dA@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: [linux-yocto] 'bitbake linux-yocto' after 'bitbake linux-yocto -c compile -f' does not create image
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
X-List-Received-Date: Wed, 12 Sep 2012 17:15:43 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 12 September 2012 09:23:25 Rudolf Streif wrote:
> Thanks. That explains -C. But what happened to -f in the 1.15.2? It seems
> that it does not trigger a rerun of the dependent tasks anymore when
> bitbake is invoked again specifying the package only.
> 
> I am actually teaching a class right now and it happens to all of the
> systems including my dev box. So it's not isolated to one system only.

It's not host machine specific - it was a side-effect of switching to hash-based 
stamps (BB_SIGNATURE_HANDLER = "OEBasicHash". See bug #2256 for some further 
details.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

