Return-Path: <qing.he@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9C80D4C80BEF
	for <yocto@yoctoproject.org>; Fri, 10 Dec 2010 12:51:29 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 10 Dec 2010 10:51:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,325,1288594800"; d="scan'208";a="360011777"
Received: from qhe2-db.sh.intel.com ([10.239.13.31])
	by azsmga001.ch.intel.com with ESMTP; 10 Dec 2010 10:51:28 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PR7yy-0003dj-2c; Sat, 11 Dec 2010 02:46:16 +0800
Date: Sat, 11 Dec 2010 02:46:16 +0800
From: Qing He <qing.he@intel.com>
To: "Purdie, Richard" <richard.purdie@intel.com>
Message-ID: <20101210184616.GB13757@qhe2-db>
MIME-Version: 1.0
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: yocto@yoctoproject.org
Subject: about bitbake exec change
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
X-List-Received-Date: Fri, 10 Dec 2010 18:51:29 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Richard,

I've seen your recent bitbake change that reverts exec to fork, is there
intended to be the preparation for pseudo changes? Do you have some kind
of plan of next steps?

Btw, since pseudo change needs to ship pseudo binary which is kind of
weird, I've been considering some alternatives, i.e. the socket based
data. Can you help to review this idea?

The point is that, since shared memory is not easy if not impossible in
python (including the python internal data structure), can we use
something else like UNIX socket? Because for a single task, the
number of read/write access is limited. I've figured out several
aspects, including the extension to data_smart and how to arrange the
socket, but not sure about things like bb.cooker.

The idea is something like:
1. the extended data_smart:
    a new field  data["_remote_data"] is in place to work like current
    "_data". Then, _findVar is almost the only thing needs to change
    (this is greatly simplified though):
        conn = data["_remote_data"]
	conn.send(key)
	data[key] = pickle.loads(conn.recv(4906))
    Other methods that need change is __init__() and keys()

2. whenever bitbake runs a new task and calls bitbake-runtask, it sets
   a socket and pass the socket file name to bitbake-runtask as a
   command line parameter

3. the bitbake-runtask won't need cooker any more, currently, the
   cooker itself also attributes a lot to the slowness, especially the
   configuration loading phase


And if it's suitable, the socket listenners can even be put into the
bitbake server, then there is no need to ship binaries with poky.

Two things I'm not very sure about:
1. can cooker involvment be cleanly removed in bitbake-runtask, the
only reason of it is to load cache file, isn't it?
2. it would be very difficult for the task's own version of shadow data
be transfer back to main thread.

Do you think this approach is viable?

Thanks,
Qing

