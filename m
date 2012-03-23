Return-Path: <Peter.Seebach@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23CA9E013D9
	for <yocto@yoctoproject.org>; Thu, 22 Mar 2012 19:29:45 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q2N2TgIQ020298
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 22 Mar 2012 19:29:42 -0700 (PDT)
Received: from wrlaptop (172.25.40.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 22 Mar 2012 19:29:43 -0700
Date: Thu, 22 Mar 2012 21:29:37 -0500
From: Peter Seebach <peter.seebach@windriver.com>
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
Message-ID: <20120322212937.71b9bf28@wrlaptop>
In-Reply-To: <1332464476.1849.23.camel@dongxiao-osel>
References: <2046170.9fCjTlmZqN@helios> <4F3EA17B.7010906@windriver.com>
	<1331715724.25861.16.camel@dongxiao-osel>
	<1332380981.1849.18.camel@dongxiao-osel>
	<20120322111805.6da9cd91@wrlaptop>
	<1332464476.1849.23.camel@dongxiao-osel>
X-Mailer: Claws Mail 3.7.8 (GTK+ 2.24.4; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Fri, 23 Mar 2012 02:29:45 -0000
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit

On Fri, 23 Mar 2012 09:01:16 +0800
"Xu, Dongxiao" <dongxiao.xu@intel.com> wrote:

> I think the difference between Hob and other UI (e.x., knotty) is
> that, when building image is finished in knotty, the UI, bitbake
> server, and pseudo all quit. But in Hob, everything still alive after
> a build. I noticed that the pseudo error happens only when Hob is
> trying to issue a second build.

I get it on the first build.

... You see the issue.

Pseudo shouldn't be having a problem, it's designed to restart as
needed.

Right now, what I know is:
1.  I didn't catch popen(), and this can actually be an issue with
stuff like PSEUDO_UNLOAD or PSEUDO_DISABLED in play.
2.  If I wrap popen, and have the wrapper unconditionally emit a
diagnostic, that works for simple os.popen() test cases.
3.  But not for the case that's triggering this.

So it looks like, when this runs, we have a Python session which has
had pseudo unloaded, not just disabled, which then sets LD_PRELOAD but
doesn't set PSEUDO_PREFIX.  Or something.

I'm still trying to get better data on this, like figure out how the
sub-process is even getting invoked.

-s
-- 
Listen, get this.  Nobody with a good compiler needs to be justified.

