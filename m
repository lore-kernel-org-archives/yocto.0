Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5161CE01422
	for <yocto@yoctoproject.org>; Mon, 22 Jul 2013 08:36:42 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 22 Jul 2013 08:36:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,720,1367996400"; d="scan'208";a="335058213"
Received: from unknown (HELO helios.localnet) ([10.252.122.69])
	by azsmga001.ch.intel.com with ESMTP; 22 Jul 2013 08:36:41 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Saddam Quirem <squirem@fbdfrozen.com>
Date: Mon, 22 Jul 2013 16:36:40 +0100
Message-ID: <1388369.QosBSXNiol@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-26-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <loom.20130719T173339-251@post.gmane.org>
References: <6E33FFB9BDF84745959E176E9A6B59BE4078954D@FBDLP-EX2010.fbdlp.local>
	<alpine.DEB.2.00.1307181950150.21940@tvnag.unkk.fr>
	<loom.20130719T173339-251@post.gmane.org>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Enabling SFTP on libcurl package
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
X-List-Received-Date: Mon, 22 Jul 2013 15:36:43 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 19 July 2013 16:09:03 Saddam Quirem wrote:
> In the curl recipe, I changed these lines:
>     DEPENDS = "zlib gnutls"
>     --without-libssh2 \
> To this:
>     DEPENDS = "zlib gnutls libssh2"
>     --with-libssh2=${STAGING_LIBDIR} \
> 
> I'm using poky-dylan w/ Freesacale ARM BSP. There were no issues reported.
> My application, which uses libcurl, now runs fine and can use SFTP to
> upload to a remote site.
> 
> I've noticed that the master-next branch of poky does not include libssh2
> and curl does not yet support SSH.
> 
> Since you're the author and maintainer of cURL, I was wondering why SSH
> is not yet supported in the Yocto cURL package and if it will be?

I'm not the maintainer of this recipe, but the answer to your question is, we 
generally don't add functionality to OE-Core itself unless it's needed by a 
large number of users or it's needed to test other functionality in OE-Core. 
SFTP support in curl probably wouldn't qualify for this. However, what we 
would be able to do is add a PACKAGECONFIG option within the libcurl recipe in 
OE-Core to enable this, and when it is enabled via your conf/local.conf or 
custom distro configuration this would pull in libssh2. The libssh2 recipe 
would be added to some other appropriate layer e.g. meta-networking or meta-
oe, which you would need to enable in your conf/bblayers.conf.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

