Return-Path: <tanu.kaskinen@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9D50E00997; Fri, 10 Apr 2015 09:03:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D2F3E0095C
	for <yocto@yoctoproject.org>; Fri, 10 Apr 2015 09:03:27 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 10 Apr 2015 09:03:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,557,1422950400"; d="scan'208";a="693479667"
Received: from tkkaskin-mobl3.ger.corp.intel.com (HELO [10.252.20.253])
	([10.252.20.253])
	by fmsmga001.fm.intel.com with ESMTP; 10 Apr 2015 09:03:25 -0700
Message-ID: <1428681803.3152.24.camel@tkkaskin-mobl3.ger.corp.intel.com>
From: Tanu Kaskinen <tanu.kaskinen@linux.intel.com>
To: Chris Morgan <chmorgan@gmail.com>
Date: Fri, 10 Apr 2015 19:03:23 +0300
In-Reply-To: <CAAPegz2sokQPsJYQCNL5WeqLFfFccpFg426q1TjFRvNJ5kqzeA@mail.gmail.com>
References: <CAAPegz2sokQPsJYQCNL5WeqLFfFccpFg426q1TjFRvNJ5kqzeA@mail.gmail.com>
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
X-List-Received-Date: Fri, 10 Apr 2015 16:03:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2015-04-10 at 11:28 -0400, Chris Morgan wrote:
> Hello.
> 
> Using close to latest poky.
> 
> I'm building a custom image, inheriting from 'core-image' and adding
> in pulseaudio-server and DISTRO_FEATURES_append with pulseaudio but
> removing x11.
> 
> I'm seeing that the pulseaudio.service file isn't present, and even
> when I copy it over, pulseaudio can't startup because it isn't able to
> find the DISPLAY environment variable and it isn't running under a
> user session, which I guess it how it normally runs?
> 
> Is anyone else using pulseaudio on a build without x11 that might be
> able to provide some hints on how to do so?

Are you trying to run PulseAudio as a user service or as a system
service?

When running as a user service, you shouldn't try to use systemd to
manage pulseaudio, because PulseAudio can't find the session bus when
started by systemd, and that can cause libdbus to complain about unset
DISPLAY. PulseAudio itself doesn't care about DISPLAY unless you
specifically try to load the x11 specific modules.

You didn't give much details, but I'm guessing that you're trying to use
PulseAudio as a system service, but you don't pass the --system command
line parameter, so PulseAudio thinks that it's supposed to be a user
service.

-- 
Tanu


