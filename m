Return-Path: <scott.a.garman@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4A8EE006F9
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2011 14:00:36 -0700 (PDT)
Received: from mail-vw0-f52.google.com ([209.85.212.52])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 27 Oct 2011 14:00:35 -0700
Received: by vws10 with SMTP id 10so4296706vws.25
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2011 14:00:34 -0700 (PDT)
Received: by 10.68.63.234 with SMTP id j10mr129141pbs.111.1319749234376;
	Thu, 27 Oct 2011 14:00:34 -0700 (PDT)
Received: from [192.168.1.12] (c-98-246-160-155.hsd1.or.comcast.net.
	[98.246.160.155])
	by mx.google.com with ESMTPS id l3sm829247pbn.8.2011.10.27.14.00.33
	(version=SSLv3 cipher=OTHER); Thu, 27 Oct 2011 14:00:33 -0700 (PDT)
Message-ID: <4EA9C676.7000408@intel.com>
Date: Thu, 27 Oct 2011 14:00:38 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <20111027162751.fbwguloe84sooggc@crashcourse.ca>
In-Reply-To: <20111027162751.fbwguloe84sooggc@crashcourse.ca>
Subject: Re: What's the purpose of "BDIR" in oe-buildenv-internal?
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
X-List-Received-Date: Thu, 27 Oct 2011 21:00:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/27/2011 01:27 PM, Robert P. J. Day wrote:
> prepping to give a yocto talk to my local (ottawa) LUG next week, and
> was reviewing the logic of the setup starting with oe-init-build-env,
> and noticed in scripts/oe-buildenv-internal a test of the variable
> BDIR for the name of the build directory. but there's no mention of
> that variable in the calling oe-init-build-env, and i see no mention
> of it in the intro-level docs.
>
> clearly, one could use that shell env variable if one wanted to name
> the build directory to be used, but given that there's absolutely no
> explanation of it anywhere for a new user, what exactly is its purpose?
>
> rday

This allows you to specify a build directory that lives elsewhere on 
your filesystem, rather than in poky/build. This is handy in case you 
want to keep the build system source tree pristine.

Simply source the build init script with the desired build directory as 
an argument. I'm quite sure we have this documented, although BDIR isn't 
explicitly mentioned.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

