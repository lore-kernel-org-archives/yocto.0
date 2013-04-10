Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6127E014CB
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 05:33:56 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 Apr 2013 05:33:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,446,1363158000"; d="scan'208";a="284244197"
Received: from unknown (HELO helios.localnet) ([10.255.14.51])
	by azsmga001.ch.intel.com with ESMTP; 10 Apr 2013 05:33:55 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jean-baptiste DUONEA <jbduro2@gmail.com>
Date: Wed, 10 Apr 2013 13:33:54 +0100
Message-ID: <5554864.lTrseEoNhs@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.5.0-27-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <516555F8.50006@gmail.com>
References: <10f0001e.10c21.13d45669ae7.Coremail.huanmateme@163.com>
	<516555F8.50006@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: "trap: 80: SIGHUP: bad trap" comes up when building core-image-sato.
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
X-List-Received-Date: Wed, 10 Apr 2013 12:33:57 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 10 April 2013 14:07:20 Jean-baptiste DUONEA wrote:
> Problem comes from Dash shell, which is used by default on Ubuntu.
> You have to reconfigure your terminal and disable the usage of Dash :
> Type in your console : sudo dpkg-reconfigure dash
> Choose the answer "No"
> Close and launch your terminal, now it will works !

We do not need to do this anymore as of the denzil release (1.2) - we 
explicitly support /bin/sh not being bash, and in fact I am running with 
/bin/sh -> dash on Ubuntu here right now.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

