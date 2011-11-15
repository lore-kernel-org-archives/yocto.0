Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6739AE0030F
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2011 09:22:03 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pAFHM2se007155
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2011 09:22:02 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.235) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 15 Nov 2011 09:22:02 -0800
Message-ID: <4EC29FB2.3070200@windriver.com>
Date: Tue, 15 Nov 2011 11:21:54 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:8.0) Gecko/20111105 Thunderbird/8.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <1321330591.23774.23.camel@phenom.localdomain>
In-Reply-To: <1321330591.23774.23.camel@phenom.localdomain>
Subject: Re: rpm dependency errors
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
X-List-Received-Date: Tue, 15 Nov 2011 17:22:03 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 11/14/11 10:16 PM, Michael E Brown wrote:
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

This type of error usually means that those two items were required as libraries
(for the target packages) and no rpm packages available provide those items.

Usually it means they were not being packaged, but did end up in the sysroot
somehow.

The items in the pastebin are a different issue, I suspect... From the pastebin:

(Lets start with the requirements first)
> $ rpm -qp --requires tcp-wrappers-7.6-r0.sh4.rpm
> warning: tcp-wrappers-7.6-r0.sh4.rpm: Header V4 DSA signature: NOKEY, key ID
fe659c6d
> libc6 >= 2.13

This is a package requirement..

> libwrap0 >= 7.6

As is this one..

> rtld(GNU_HASH)

This is a virtual requirement -- I need a rtld that supports GNU_HASH.

> libc.so.6
> libc.so.6(GLIBC_2.3)
> libc.so.6(GLIBC_2.2)

Above three are library SONAME requirements.  I first require something with the
SONAME of "libc.so.6", and then also require two versioned symbols GLIBC_2.3 and
GLIBC_2.2.

> libwrap.so.0

This is simply an SONAME requirement.

> $ rpm -qp --provides libc6-2.13-r15+svnr14157.sh4.rpm
> warning: libc6-2.13-r15+svnr14157.sh4.rpm: Header V4 DSA signature: NOKEY, key ID 47031d66
> rtld(GNU_HASH)  
> glibc  
> libc6 = 2.13-r15+svnr14157

When you look at the provides, we're not providing any of the soname/shared
library requirements.   There are a few possibilities as to the cause:

*) You simply didn't package the libraries..  check with rpm -qp -l <package>.
Do you see /lib/libc.so.6 there?

*) The libraries inside of this package are invalid for some reason?

*) objdump isn't able to read the soname values from these libraries for some
reason.

*) elfutils version of objdump isn't able to read the soname values from these
libraries for some reason.

... look into each of those and see if you can figure out what might be wrong.
If you get to the point of investigating objdump or elfutils-objdump -- be sure
to run it against the versions from the package and not the work directory.  (It
is possible something is getting mangled at package time.)

--Mark

> --
> Michael
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


