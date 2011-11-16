Return-Path: <Michael_E_Brown@Dell.com>
Received: from ausxippc101.us.dell.com (ausxippc101.us.dell.com
	[143.166.85.207])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 389A5E006BD
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2011 19:06:16 -0800 (PST)
X-Loopcount0: from 10.9.160.253
From: Michael E Brown <Michael_E_Brown@Dell.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 15 Nov 2011 21:06:14 -0600
In-Reply-To: <DB6E482E89290547898851B8CC9D81108F6183B1@AUSX7MCPS302.AMER.DELL.COM>
References: <DB6E482E89290547898851B8CC9D81108F6183B1@AUSX7MCPS302.AMER.DELL.COM>
Organization: Dell, Inc
X-Mailer: Evolution 3.0.3 (3.0.3-1.fc15) 
Message-ID: <1321412775.23774.26.camel@phenom.localdomain>
Mime-Version: 1.0
Subject: Re: rpm dependency errors
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
X-List-Received-Date: Wed, 16 Nov 2011 03:06:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-11-14 at 22:16 -0600, Michael E Brown wrote:
> I've now run across this same error in two different contexts, and am
> having difficulty trying to figure out what is going on
> 
> First, while building meta-toolchain-sdk, I ran into
> http://pastebin.com/BT02UYk1
>  ... cut ...
> Processing task-core-standalone-gmae-sdk-target-dbg...
> | error: Failed dependencies:
> |       libgthread-2.0.so.0 is needed by libgupnp-1.0-3-0.16.1-r0.sh4
> |       libresolv.so.2 is needed by libgupnp-1.0-3-0.16.1-r0.sh4
> 
> I've confirmed that the libgupnp rpm has only SH4 binaries in it.
> 
> Next, while building a custom image, I ran across the same error with
> portmap and tcp-wrappers:
> 
> http://pastebin.com/dRb5Dum8
> 
> Note in the pastebin I extracted tcp-wrappers and 'file' says that
> everything is SH4.

As a bit more information, I found that when I changed to "package_ipk"
vs rpm in my local.conf, I was able to do image build and sdk builds
without incident. So this problem looks like something specific to rpm
package builds. Is there any solution to this other than just not using
rpm?

--
Michael


