Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1538FE00A77
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 09:45:36 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 05 Mar 2014 09:41:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,593,1389772800"; d="scan'208";a="494601180"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.120.111])
	by orsmga002.jf.intel.com with ESMTP; 05 Mar 2014 09:45:34 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Michael Gloff <mgloff@emacinc.com>
Date: Wed, 05 Mar 2014 17:45:33 +0000
Message-ID: <5862546.U5rd1cKvZu@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.3 (Linux/3.13.5-200.fc20.x86_64; KDE/4.12.3; x86_64; ; )
In-Reply-To: <CALXw4G5Ti_rZ+LWVYivbqeEAyFn2fOTDtYD9kvMBcq94R0X_xg@mail.gmail.com>
References: <CALXw4G5VUNySyWoOoFbKHnMUWFjZfQKwQCu0T0cWtwGOAMQnow@mail.gmail.com>
	<126717450.ayqcFG2vtF@peggleto-mobl5.ger.corp.intel.com>
	<CALXw4G5Ti_rZ+LWVYivbqeEAyFn2fOTDtYD9kvMBcq94R0X_xg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Toolchain
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
X-List-Received-Date: Wed, 05 Mar 2014 17:45:37 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 05 March 2014 11:00:31 Michael Gloff wrote:
> On Mon, Mar 3, 2014 at 12:52 PM, Paul Eggleton 
> <paul.eggleton@linux.intel.com> wrote:
> > On Sunday 02 March 2014 19:58:41 Michael Gloff wrote:
> > > Is there a reason why the toolchain cannot be built with a machine name
> > > that contains capital letters? Seems weird, everything else builds fine,
> > > but meta-toolchain fails complaining about caps.
> > 
> > Although machine names are traditionally all lower case in our build
> > system, there's no deliberate restriction in place that enforces this.
> > 
> > Would you be able to provide more details, such as the version of the
> > build system you are using, the exact capital letters you used in the
> > machine name, and the error you received?
>
> The error is below. Machine name: PMX-090T. This is on dora 1.5.1
> 
> ERROR: Function failed: opkg-build execution failed
> ERROR: Logfile of failure stored in:
> /opt/oe/build/tmp/work/i686-nativesdk-emacsdk-linux/meta-environment-PMX-090
> T/1.0-r8/temp/log.do_package_write_ipk.15358
> Log data follows:
> | DEBUG: Executing python function sstate_task_prefunc
> | DEBUG: Python function sstate_task_prefunc finished
> | DEBUG: Executing python function do_package_write_ipk
> | DEBUG: Executing python function read_subpackage_metadata
> | DEBUG: Python function read_subpackage_metadata finished
> | DEBUG: Executing python function do_package_ipk
> | meta-environment-PMX-090T
> | *** Error: Package name  contains illegal characters, (other than
> [a-z0-9.+-])

Perhaps I spoke too soon. There might not be a direct restriction on machine 
names; but opkg does restrict characters allowed in package names, and for 
meta-environment the machine name ends up as part of the package name. You 
could probably hack around it if you felt the need to, but the simplest thing 
would be to just change the machine name to be all lower-case.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

