Return-Path: <tanu.kaskinen@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4547E00998; Mon, 13 Apr 2015 05:16:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 393E4E00963
	for <yocto@yoctoproject.org>; Mon, 13 Apr 2015 05:16:06 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP; 13 Apr 2015 05:16:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,569,1422950400"; d="scan'208";a="555156336"
Received: from pcarro2-mobl1.amr.corp.intel.com (HELO [10.252.21.138])
	([10.252.21.138])
	by orsmga003.jf.intel.com with ESMTP; 13 Apr 2015 05:16:04 -0700
Message-ID: <1428927363.3010.29.camel@tkkaskin-mobl3.ger.corp.intel.com>
From: Tanu Kaskinen <tanu.kaskinen@linux.intel.com>
To: Chris Morgan <chmorgan@gmail.com>
Date: Mon, 13 Apr 2015 15:16:03 +0300
In-Reply-To: <CAAPegz3CO7QUqyK-UqVCyqk8hwgCH23Bu1vGkPs=u94H03XZNA@mail.gmail.com>
References: <CAAPegz2sokQPsJYQCNL5WeqLFfFccpFg426q1TjFRvNJ5kqzeA@mail.gmail.com>
	<1428681803.3152.24.camel@tkkaskin-mobl3.ger.corp.intel.com>
	<CAAPegz3CO7QUqyK-UqVCyqk8hwgCH23Bu1vGkPs=u94H03XZNA@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - PL 281, 00181 Helsinki
X-Mailer: Evolution 3.10.4 (3.10.4-4.fc20) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: pulseaudio without x11
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
X-List-Received-Date: Mon, 13 Apr 2015 12:16:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2015-04-10 at 15:09 -0400, Chris Morgan wrote:

> I am trying to run as a system service, it's for an embedded system
> and without x the normal dbus session per user doesn't make sense.
> 
> 
> I had modified the service file to pass --system and pulse seemed
> happier. Is this the recommended approach? Pulse does complain about
> passing that option and running as root.

When using PulseAudio as a system service, you definitely need to either
give --system and/or set "system-instance=yes"
in /etc/pulse/daemon.conf.

Can you give the exact error or warning that you get? PulseAudio
shouldn't complain about running as root when using --system. In fact,
PulseAudio *must* be run as root when using --system.

> After a few minutes the service did shut down. It may have been due to
> configuring the loop back module though I'm surprised a
> misconfiguration would have resulted in pulse shutting down.

As Erik wrote, this sounds like the "exit on idle" mechanism kicking in,
but when running in the system mode, that mechanism should automatically
get disabled. It really sounds like you're still running without
--system. One theory would be that you're starting pulseaudio with
--system, but clients can't connect to it for some reason, and they then
autospawn the user instance instead, so you get two instances running.
If that's the case, setting "system-instance=yes" in daemon.conf should
prevent this confusing behaviour, because any user instances will then
refuse to start. (Sorry, I should have instructed you to edit
daemon.conf in the first place instead of enabling the system mode via
the command line parameter...)

My understanding is that you're running also the PulseAudio clients as
root, and that's not supported out-of-the box (I should probably fix
that...). By default, only processes in the "audio" group can connect to
the system instance, and root isn't in that group by default. You can
either add root to the audio group, or disable client authentication
altogether by passing "auth-anonymous=yes" to
module-native-protocol-unix in /etc/pulse/system.pa, in which case all
processes in the system can use and control the PulseAudio daemon.

(For people reading this later in the list archives, note that the
upstream default for the access group is "pulse-access", not "audio".
Using "audio" is an OpenEmbedded thing. I hope we can get rid of that
divergence at some point.)

-- 
Tanu


