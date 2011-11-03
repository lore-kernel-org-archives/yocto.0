Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B63AE00559
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2011 11:47:49 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Nov 2011 11:47:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="70909753"
Received: from unknown (HELO [10.7.199.72]) ([10.7.199.72])
	by orsmga001.jf.intel.com with ESMTP; 03 Nov 2011 11:47:45 -0700
Message-ID: <4EB2E1D1.5030505@linux.intel.com>
Date: Thu, 03 Nov 2011 11:47:45 -0700
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0.1) Gecko/20110930 Thunderbird/7.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4EB1E5F1.3050106@linux.intel.com>
	<4EB222D0.6050301@linux.intel.com>
	<CAEsOVNcRQGEszBiG=KhoaWeeH9ynX4xB+YVMsT++tvgh6PAcjA@mail.gmail.com>
	<4EB224EB.4040804@linux.intel.com>
	<4EB26098.20204@communistcode.co.uk>
In-Reply-To: <4EB26098.20204@communistcode.co.uk>
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
X-List-Received-Date: Thu, 03 Nov 2011 18:47:49 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 03/11/11 02:36, Jack Mitchell wrote:
> On 03/11/2011 05:21, Darren Hart wrote:
>>
>> On 11/02/2011 10:16 PM, McClintock Matthew-B29882 wrote:
>>> On Thu, Nov 3, 2011 at 12:12 AM, Darren Hart<dvhart@linux.intel.com> 
>>> wrote:
>>>> I came up with the following to ensure I have a log of every bitbake
>>>> command I run along with some useful stats. Feel free to use it or
>>>> flame it:
>>>>
>>>>
>>>> #!/bin/bash
>>>> TIMESTAMP=$(date -u "+%Y%m%d%H%M%S")
>>>> LOG=$(mktemp --suffix=".log" bb-$TIMESTAMP-XXX)
>>>> if [ -z "$LOG" ]; then
>>>>         echo "ERROR: failed to create log file"
>>>>         exit 1
>>>> fi
>>>>
>>>> (
>>>>         echo "Start: $TIMESTAMP"
>>>>         echo "========================================"
>>>>         /usr/bin/time 2>&1 -v bitbake $@
>>>>         echo "========================================"
>>>>         echo "End: $(date -u '+%Y%m%d%H%M%S')"
>>>> ) | tee $LOG
>>>>
>>>> echo "Logfile: $LOG"
>>> It would be nice if we had this as a selectable option in the bitbake
>>> wrapper somehow and it saved off logs to tmp/bitbake/logs/ or
>>> something appropriate.
>> I was having similar thoughts just after having pressed send :)
>>
>> Given how annoying it is to not have the log when you forget to capture
>> it, I think this might actually make a reasonable default. The important
>> bits are of course already recorded in
>> tmp/blah/blah/blah/temp/log.blah.PID... but the above serves almost like
>> an index into the individual files. I'm all for logging it by default -
>> as well as collecting summary stats. I don't know if the above is the
>> best way to go about it - but a functional equivalent would be nice.
>>
>> For all I know something like this already exists and I just haven't
>> stumbled upon it yet.
>>
> 
> I agree, something which actually logs what you are doing and how it was
> done rather than just the output/error logging we have at the moment
> would be a great addition. It would make it much easier to track errors
> and help pin down bugs - especially if you have taken a long winded
> route to get to a particular point.

Sounds like people would find this feature useful, can someone please
file a bug report?

Cheers,
Joshua
-- 
Joshua Lock
        Yocto Project "Johannes factotum"
        Intel Open Source Technology Centre

