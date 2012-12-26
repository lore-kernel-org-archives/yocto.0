Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F18D2E0142C
	for <yocto@yoctoproject.org>; Wed, 26 Dec 2012 12:06:46 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 26 Dec 2012 12:06:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,358,1355126400"; d="scan'208";a="236949424"
Received: from unknown (HELO helios.localnet) ([10.252.123.34])
	by azsmga001.ch.intel.com with ESMTP; 26 Dec 2012 12:06:25 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Navani Srivastava <navani.srivastava@gmail.com>
Date: Wed, 26 Dec 2012 20:06:22 +0000
Message-ID: <3031778.nf6PVNJiXr@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.5.0-21-generic; KDE/4.9.3; i686; ; )
In-Reply-To: <CA+Z6RkV-6udeBNJsnoqen7=3GSqyZT9DDsykQ1duNoNv9_NqGQ@mail.gmail.com>
References: <9BACABF0C6B14A4D8C33B42A795119BE099ABD88@POCITMSEXMB03.LntUniverse.com>
	<CA+Z6RkV-6udeBNJsnoqen7=3GSqyZT9DDsykQ1duNoNv9_NqGQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org,
	"navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Re: Remove unwanted package from Qt
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
X-List-Received-Date: Wed, 26 Dec 2012 20:06:47 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 26 December 2012 09:56:05 Navani Srivastava wrote:
> I am compiling Qt-4.8.0 with poky-denzil-7.0 for arm1136 architecture.
> 
> At the time of integrating qt-embedded with rootfs, I am getting qtopia
> directory in usr/share path of rootfs.
> 
> I tried removing qtopia directory through qt recipe but ended in
> compilation error. Please suggest any idea to remove qtopia from share
> directory.

"qtopia" is just the name of the directory that gets used for Qt Embedded (see 
the QT_DIR_NAME setting in meta/classes/qt4e.bbclass) - are there actually any 
files in that directory you don't want or is it just the directory name that 
concerns you?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

