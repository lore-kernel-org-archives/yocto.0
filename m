Return-Path: <joaohf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C267E009A5; Mon,  6 Apr 2015 15:17:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,WEIRD_PORT
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (joaohf[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.182 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f182.google.com (mail-qk0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11922E007A0
	for <yocto@yoctoproject.org>; Mon,  6 Apr 2015 15:16:57 -0700 (PDT)
Received: by qkx62 with SMTP id 62so33525853qkx.0
	for <yocto@yoctoproject.org>; Mon, 06 Apr 2015 15:16:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=3SCrfyXjUkpUAhLyoXnZXwh8DE49M51JA4zyR3w4RNk=;
	b=0wM7PKKIFfT72Yx8Zns/FGlNjABLUzLu+12kMthIukJgbx7SqcXShWF5DuE5lb9Lii
	DBs7SPy9VfTivrzHJW+8jGmHg+K5s0ZdubaTArhQMGt+KqLEQs9MGiiw3W5GYVBTaIFI
	E5ldvly+nfJma6Fcf1ZZf9plbmaZx4wn7PNsDCqBnVobibEPkElpiYvXz20wAjoKaX9M
	f7bCMUg3d5v56EUxziVkPu1yLHvc7k2ZqE/k7hk0qk0J7SUnYx556TsHK2v81WLQztd4
	LvHkufzyM8pitd/yLK02vszPQbtM+EBUuP2pNCuN1hF5KWfYSCMGO1Y4pecQBF/zLMFA
	Bivw==
X-Received: by 10.55.40.10 with SMTP id o10mr32078114qkh.55.1428358617020;
	Mon, 06 Apr 2015 15:16:57 -0700 (PDT)
Received: from [192.168.0.16] ([201.53.207.14])
	by mx.google.com with ESMTPSA id 126sm4081252qhc.39.2015.04.06.15.16.54
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 06 Apr 2015 15:16:55 -0700 (PDT)
Message-ID: <552305D5.7030801@gmail.com>
Date: Mon, 06 Apr 2015 19:16:53 -0300
From: =?UTF-8?B?Sm/Do28gSGVucmlxdWUgRmVycmVpcmEgZGUgRnJlaXRhcw==?=
	<joaohf@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: [RFC] Report build
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
X-List-Received-Date: Mon, 06 Apr 2015 22:17:01 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit


Hi,

I would like to share an implementation that I've used with
great success to solve the following situation:

We have a farm server that Jenkins CI has the control. All the
nights a bunch of devel, snapshot and stable builds are fired.
Each machine receives a job that the aim is to build image, SDK,
packages and wic images. After that, all the artifacts are collected
and send to a consolidation server which my users could download.

I believed that many YP users has the very similar settings. So I wanted
to create a solution which is integrated with YP.

This solution involves three things:

* new class to collect the artifacts
* script to send the collected artifacts
* web interface to summaries the results

So I implemented a class called report-build. Once properly setup, it
will collect the artifacts writing in a json file. The meaning of
artifact is: images, packages, sdks, manifest, deploy kernel and bootloader.
After that, all artifact is collected using another script called 
send-build-report. This scripts has
the responsibility to control and send the artifacts (until now using rsync)
to consolidation server.

The consolidation server is a machine running an instance of 
build-report-web that
receives the json payload, creates all the database entry and filesystem 
places where
the artifacts will be placed.

On Jenkins I've created Freestyle jobs that  is setup scripts to build 
the artifacts and
configures the variables that build-report class use:

BUILD_REPORT_DISTRO ?= "${DISTRO}"
BUILD_REPORT_DISTRO_VERSION ?= "${DISTRO_VERSION}"

BUILD_REPORT_JOB_RETENTION ?= "1"
BUILD_REPORT_JOB_ID ?= "job-${DATE}"
BUILD_REPORT_DIR ?= "${LOG_DIR}/build-report"
BUILD_REPORT_SERVER ?= "http://127.0.0.1:8000/Builds"
BUILD_REPORT_USER ?= ""
BUILD_REPORT_EMAIL ?= ""
BUILD_REPORT_TYPE ?= "snapshot"
BUILD_REPORT_DEPLOY_DIR = "${DEPLOY_DIR}"

When the Jenkins runs the job, it only executes the script and 
report-build is in charge to
sends the generated artifacts.

So, the users goes to build-report-web tool and inspects and downloads 
the results.

Here is the very basic web interface:

A home page showing all builds: http://imgur.com/LTqRewq

A detail page to get files (image, sdk, packages): http://imgur.com/gNOtoLO

There are some drawbacks like: the solution uses rsync over ssh to send 
files and
the user must setup ssh keys between build machines and consolidation 
server. But
this is done only once, to setup the initial environment.

This work was based on ideas from:
- report-error
- Error reporting tool

Currently this implementation works using daisy and master. On my 
production environment
I need to use daisy but I am doing the same using master on my free time.


Implementation links:

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=joaohf/master-build-report-tool
http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=joaohf/build-report-web

Thanks



