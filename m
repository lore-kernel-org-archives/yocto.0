Return-Path: <Michael_E_Brown@Dell.com>
Received: from ausc60ps301.us.dell.com (ausc60ps301.us.dell.com
	[143.166.148.206])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BD94E00306
	for <yocto@yoctoproject.org>; Mon, 14 Nov 2011 20:16:32 -0800 (PST)
X-Loopcount0: from 10.9.160.253
From: Michael E Brown <Michael_E_Brown@Dell.com>
To: yocto@yoctoproject.org
Date: Mon, 14 Nov 2011 22:16:30 -0600
Organization: Dell, Inc
X-Mailer: Evolution 3.0.3 (3.0.3-1.fc15) 
Message-ID: <1321330591.23774.23.camel@phenom.localdomain>
Mime-Version: 1.0
Subject: rpm dependency errors
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Michael_E_Brown@Dell.com
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 15 Nov 2011 04:16:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

I've now run across this same error in two different contexts, and am
having difficulty trying to figure out what is going on

First, while building meta-toolchain-sdk, I ran into
http://pastebin.com/BT02UYk1
 ... cut ...
Processing task-core-standalone-gmae-sdk-target-dbg...
| error: Failed dependencies:
|       libgthread-2.0.so.0 is needed by libgupnp-1.0-3-0.16.1-r0.sh4
|       libresolv.so.2 is needed by libgupnp-1.0-3-0.16.1-r0.sh4

I've confirmed that the libgupnp rpm has only SH4 binaries in it.

Next, while building a custom image, I ran across the same error with
portmap and tcp-wrappers:

http://pastebin.com/dRb5Dum8

Note in the pastebin I extracted tcp-wrappers and 'file' says that
everything is SH4.

--
Michael



