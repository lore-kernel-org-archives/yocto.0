Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53A3EE013CC
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2012 05:20:12 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 23 Mar 2012 05:20:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="122411710"
Received: from unknown (HELO helios.localnet) ([10.252.123.207])
	by azsmga001.ch.intel.com with ESMTP; 23 Mar 2012 05:20:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 23 Mar 2012 12:20:08 +0000
Message-ID: <1537192.Q99X1xdoal@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.1; i686; ; )
In-Reply-To: <20120323021635.5b4fc048@wrlaptop>
References: <2046170.9fCjTlmZqN@helios> <1332472886.1765.1.camel@dongxiao-osel>
	<20120323021635.5b4fc048@wrlaptop>
MIME-Version: 1.0
Cc: Peter Seebach <peter.seebach@windriver.com>
Subject: Re: pseudo interaction issue
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
X-List-Received-Date: Fri, 23 Mar 2012 12:20:12 -0000
X-Groupsio-MsgNum: 5481
Content-Type: multipart/mixed; boundary="nextPart15498061.6hbr8jRWpR"
Content-Transfer-Encoding: 7Bit

--nextPart15498061.6hbr8jRWpR
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 23 March 2012 02:16:35 Peter Seebach wrote:
> Still really weird to me that I can't reproduce this outside of hob.
> I am pretty sure there exists a series of forks and execs and
> environment changes such that this will end up happening.

I now have a fairly simple test case outside of hob. Put the attached file in 
meta/classes/ and then add the following to your local.conf:

INHERIT += "breakit"

Then, just run something that will actually execute a real task. If bzip2 has 
already been built you can trigger it just with this, which doesn't take very 
long:

bitbake -c package -f bzip2

This should give you a stream of "pseudo: You must set the PSEUDO_PREFIX 
environment variable to run pseudo." after the task summary.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

--nextPart15498061.6hbr8jRWpR
Content-Disposition: attachment; filename="breakit.bbclass"
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="UTF-8"; name="breakit.bbclass"

breakit_break() {
        cat > ${TMPDIR}/test123 <<END
${@breakit_output(d)}
END
}

def breakit_output(d):
    return '\n'.join(get_layers_branch_rev(d))

python breakit_eventhandler() {
	import bb.event
	import bb.build

	if isinstance(e, bb.event.BuildCompleted):
		bb.note("possible breakage coming up...")
		bb.build.exec_func("breakit_break", e.data)
}

addhandler breakit_eventhandler

--nextPart15498061.6hbr8jRWpR--
