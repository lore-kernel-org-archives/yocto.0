Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2367E01363
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2011 22:12:48 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 02 Nov 2011 22:12:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,447,1315206000"; d="scan'208";a="80728891"
Received: from unknown (HELO envy.home) ([10.255.15.181])
	by fmsmga001.fm.intel.com with ESMTP; 02 Nov 2011 22:12:48 -0700
Message-ID: <4EB222D0.6050301@linux.intel.com>
Date: Wed, 02 Nov 2011 22:12:48 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
References: <4EB1E5F1.3050106@linux.intel.com>
In-Reply-To: <4EB1E5F1.3050106@linux.intel.com>
X-Enigmail-Version: 1.3.2
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
X-List-Received-Date: Thu, 03 Nov 2011 05:12:49 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 11/02/2011 05:53 PM, Darren Hart wrote:
...
> I tried to capture my complete log, but screen froze on me while trying
> to paste the buffer into a log :( So besides writing a bitbake wrapper
> to ensure I record ALL my bitbake sessions for reference,

I came up with the following to ensure I have a log of every bitbake
command I run along with some useful stats. Feel free to use it or flame it:


#!/bin/bash
TIMESTAMP=$(date -u "+%Y%m%d%H%M%S")
LOG=$(mktemp --suffix=".log" bb-$TIMESTAMP-XXX)
if [ -z "$LOG" ]; then
	echo "ERROR: failed to create log file"
	exit 1
fi

(
	echo "Start: $TIMESTAMP"
	echo "========================================"
	/usr/bin/time 2>&1 -v bitbake $@
	echo "========================================"
	echo "End: $(date -u '+%Y%m%d%H%M%S')"
) | tee $LOG

echo "Logfile: $LOG"


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

