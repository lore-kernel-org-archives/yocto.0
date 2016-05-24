Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DC65E00B33; Tue, 24 May 2016 05:32:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9223E00B1E
	for <yocto@yoctoproject.org>; Tue, 24 May 2016 05:31:59 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u4OCVhOC026841; Tue, 24 May 2016 13:31:43 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id KbzzJD7mLdLn; Tue, 24 May 2016 13:31:43 +0100 (BST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u4OCVeEL026838
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 24 May 2016 13:31:41 +0100
Message-ID: <1464093100.9570.54.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, Gary Thomas
	<gary@mlbassoc.com>
Date: Tue, 24 May 2016 13:31:40 +0100
In-Reply-To: <4240230.kXqFvlgrOF@peggleto-mobl.ger.corp.intel.com>
References: <5722E217.40108@mlbassoc.com>
	<2094217.rxhuCqpasC@peggleto-mobl.ger.corp.intel.com>
	<572330DA.4020009@mlbassoc.com>
	<4240230.kXqFvlgrOF@peggleto-mobl.ger.corp.intel.com>
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Change in override behavior?
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
X-List-Received-Date: Tue, 24 May 2016 12:32:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2016-04-29 at 22:09 +1200, Paul Eggleton wrote:
> On Fri, 29 Apr 2016 12:00:58 Gary Thomas wrote:
> > On 2016-04-29 11:51, Paul Eggleton wrote:
> > > On Fri, 29 Apr 2016 09:24:23 Gary Thomas wrote:
> > > > On 2016-04-29 09:16, Paul Eggleton wrote:
> > > > Indeed, my machine names do have an upper case letter in them.
> > > > Any suggestions for how to handle this (short of renaming
> > > > everything
> > > > which
> > > > would be a HUGE chore)?
> > > 
> > > It's no longer supported I'm afraid, BitBake's datastore is now
> > > coded to
> > > expect lowercase for all override values. You say it's a huge
> > > chore but
> > > surely a grep -l | xargs -n1 sed -i would do it?
> > 
> > If I were to rename my target (MACHINE), I'd then have to go
> > through
> > and rename all of the directories in the recipes that hold machine
> > customizations and there are quite a few of those.  Similarly I'd
> > have to rework all the recipes that use the old names (with upper
> > case
> > letters) to the new ones.  Not impossible, but quite a lot of work.
> 
> That is unfortunate, but again should be pretty easy to automate
> (assuming 
> they are local of course and not proliferated across many users'
> build 
> machines).
> 
> > Short of actually renaming the target machines, I could add an
> > additional
> > override (in <MACHINE>.conf) that is lowercase only and update just
> > the
> > recipes to use that instead.
> > 
> > By experimentation, I have found that XYZ_append_<MACHINE> seems to
> > do
> > the correct thing, even when <MACHINE> has upper case letters. 
> >  Maybe this
> > is an oversight that will be fixed?
> 
> I'm not sure - Richard?

Sorry for the delay in getting to this. It does sound like there is a
codepath in bitbake which is still recognising variables with mixed
case. I took a quick look and think this change appears to address it:

diff --git a/bitbake/lib/bb/data_smart.py b/bitbake/lib/bb/data_smart.py
index 25c412c..ec6709f 100644
--- a/bitbake/lib/bb/data_smart.py
+++ b/bitbake/lib/bb/data_smart.py
@@ -39,7 +39,7 @@ from bb.COW  import COWDictBase
 logger = logging.getLogger("BitBake.Data")
 
 __setvar_keyword__ = ["_append", "_prepend", "_remove"]
-__setvar_regexp__ = re.compile('(?P<base>.*?)(?P<keyword>_append|_prepend|_remove)(_(?P<add>.*))?$')
+__setvar_regexp__ = re.compile('(?P<base>.*?)(?P<keyword>_append|_prepend|_remove)(_(?P<add>[^A-Z]*))?$')
 __expand_var_regexp__ = re.compile(r"\${[^{}@\n\t :]+}")
 __expand_python_regexp__ = re.compile(r"\${@.+?}")


Cheers,

Richard

