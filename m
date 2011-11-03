Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B141DE01363
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2011 22:21:48 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Nov 2011 22:21:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="70514288"
Received: from unknown (HELO envy.home) ([10.255.15.181])
	by orsmga002.jf.intel.com with ESMTP; 02 Nov 2011 22:21:48 -0700
Message-ID: <4EB224EB.4040804@linux.intel.com>
Date: Wed, 02 Nov 2011 22:21:47 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: McClintock Matthew-B29882 <B29882@freescale.com>
References: <4EB1E5F1.3050106@linux.intel.com>
	<4EB222D0.6050301@linux.intel.com>
	<CAEsOVNcRQGEszBiG=KhoaWeeH9ynX4xB+YVMsT++tvgh6PAcjA@mail.gmail.com>
In-Reply-To: <CAEsOVNcRQGEszBiG=KhoaWeeH9ynX4xB+YVMsT++tvgh6PAcjA@mail.gmail.com>
X-Enigmail-Version: 1.3.2
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Help diagnosing a build failure involving ncurses, gettext, and eglibc
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
X-List-Received-Date: Thu, 03 Nov 2011 05:21:48 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 11/02/2011 10:16 PM, McClintock Matthew-B29882 wrote:
> On Thu, Nov 3, 2011 at 12:12 AM, Darren Hart <dvhart@linux.intel.com> wrote:
>> I came up with the following to ensure I have a log of every bitbake
>> command I run along with some useful stats. Feel free to use it or flame it:
>>
>>
>> #!/bin/bash
>> TIMESTAMP=$(date -u "+%Y%m%d%H%M%S")
>> LOG=$(mktemp --suffix=".log" bb-$TIMESTAMP-XXX)
>> if [ -z "$LOG" ]; then
>>        echo "ERROR: failed to create log file"
>>        exit 1
>> fi
>>
>> (
>>        echo "Start: $TIMESTAMP"
>>        echo "========================================"
>>        /usr/bin/time 2>&1 -v bitbake $@
>>        echo "========================================"
>>        echo "End: $(date -u '+%Y%m%d%H%M%S')"
>> ) | tee $LOG
>>
>> echo "Logfile: $LOG"
> 
> It would be nice if we had this as a selectable option in the bitbake
> wrapper somehow and it saved off logs to tmp/bitbake/logs/ or
> something appropriate.

I was having similar thoughts just after having pressed send :)

Given how annoying it is to not have the log when you forget to capture
it, I think this might actually make a reasonable default. The important
bits are of course already recorded in
tmp/blah/blah/blah/temp/log.blah.PID... but the above serves almost like
an index into the individual files. I'm all for logging it by default -
as well as collecting summary stats. I don't know if the above is the
best way to go about it - but a functional equivalent would be nice.

For all I know something like this already exists and I just haven't
stumbled upon it yet.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

