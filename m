Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82077E006D9
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 15:39:00 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 25 Jun 2012 15:39:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="162510488"
Received: from unknown (HELO envy.home) ([10.255.12.249])
	by orsmga002.jf.intel.com with ESMTP; 25 Jun 2012 15:38:59 -0700
Message-ID: <4FE8E830.4040303@linux.intel.com>
Date: Mon, 25 Jun 2012 15:37:36 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
X-Enigmail-Version: 1.4.2
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Required packages for Hob
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
X-List-Received-Date: Mon, 25 Jun 2012 22:39:00 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Scott,

Khem found he was missing some packages necessary to run Hob. Blurb from
IRC:

<khem> what is prerequisites for hob
<khem> is it documented some where ?
<khem> I am looking for kubuntu
...
<khem> sudo apt-get install python-gobject-2-dev python-gtk2-dev
<khem> may be it should be mentioned in some FAQ
<dvhart> khem, it most definitely should

Scott, do we have an appropriate faq for this? If not, perhaps the
quick-start-guide should include them (it does not currently). The
packages Khem lists are for Ubuntu.

Khem, which version of Ubuntu?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel


