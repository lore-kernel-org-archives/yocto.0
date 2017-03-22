Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45FB7E00961; Tue, 21 Mar 2017 19:06:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.53 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.53 listed in list.dnswl.org]
Received: from mail-pg0-f53.google.com (mail-pg0-f53.google.com [74.125.83.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 329AAE00939
	for <yocto@yoctoproject.org>; Tue, 21 Mar 2017 19:06:41 -0700 (PDT)
Received: by mail-pg0-f53.google.com with SMTP id 21so68653227pgg.1
	for <yocto@yoctoproject.org>; Tue, 21 Mar 2017 19:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=D+p+rmx0Kg2cMInBfBnELqLkMOy3/SQFFZXcwLTz38E=;
	b=SXtLqkio3O0xNPl8EkFZI7y0JnU7lCMDFj/+oLd7Hu/1uE6zl35p+0QDqf2ZbL26Sp
	OdyJuJOROYG5iHKhydI29ffwYdafNar0/NlPi/6V96KW6CwsGvYE+PfSbZcWobbySRGi
	COv/ufNqctuXLVPSMKygN3U3pxqDmUCwhInUTSPJzAK5gQXeFG1Uz1TkWNPw/QQUm8fB
	pP68s6VkecYxXYpVC3r0T5AFFRVj8H90RGmtinAV5KADxYybXpRTrZVmnMLNr/eyzSlK
	Shhd0SXEy3DNJf0VuOXj/vI6kZ+ahVB7oXe3Vr8/MaogVTd8aYSAree+pp1GDePP/ZlH
	buNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=D+p+rmx0Kg2cMInBfBnELqLkMOy3/SQFFZXcwLTz38E=;
	b=QwPnTs3Chd4DnCQQr3MpxxP34+PdXVL0YQesxagKWHOwAuj06G8aAYsO2atSNK2tkW
	8XAWUbBjJdwaTT7fWikvnvOc7BwkLxwR7Pb2inL7PCRODB6Q/uLc+DjdPqkEci75w/We
	fyk/YbsSqDtEG122XL20E0Q3QESF1ZkQbbFih72lcB6V9IyNYLzMYkvjlh6IoxQB2O11
	7/FfN1EFUcZB2zLofgLwvt/gZlTKFZV9oEkNzB4UX0gF/cNYg2a5u/TNb0Bp53cqJ06/
	J1uUGqRRKPSItjx/geg6U6HGjALehuzK0MA1GvKoTfTdz5CHPTmPG3/h5drF09wDpvDu
	48wA==
X-Gm-Message-State: AFeK/H2dDi1eCVxVdqMxAP7UIS5x9kYqq6E/zI/pnKVl8lqFV8a0VaCOc6mR2UJoSog+RQ==
X-Received: by 10.84.239.8 with SMTP id w8mr52022798plk.73.1490148401131;
	Tue, 21 Mar 2017 19:06:41 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:e3df:bf0a:9f90:498e?
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id
	n85sm6126419pfi.101.2017.03.21.19.06.40 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 21 Mar 2017 19:06:40 -0700 (PDT)
To: yocto@yoctoproject.org
References: <461862bc22e146c4839c12eafc7dd9f2@SFA-EX01.SAKURAUS.LOCAL>
From: akuster808 <akuster808@gmail.com>
Message-ID: <0943f9a9-703b-d947-e2da-271bb22594be@gmail.com>
Date: Tue, 21 Mar 2017 19:06:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <461862bc22e146c4839c12eafc7dd9f2@SFA-EX01.SAKURAUS.LOCAL>
Subject: Re: Morty 2.2.1 build failure
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
X-List-Received-Date: Wed, 22 Mar 2017 02:06:45 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit


Greg,

On 03/21/2017 04:29 PM, Greg Wilson-Lindberg wrote:
> Hello List,
>
> I got a copy of the book "Embedded Linux Systems with the Yocto Project" at the SCALE 15x conference and this prompted me to try building the Yocto Poky build before getting the Boot to Qt Yocto build environment.
>
> I tried building on 2 x86 systems, a 64 bit system at work and a 32 bit system at my home, both failed in the same way:
>
> gwilson 11:06:54:~/yocto/poky-morty-16.0.1$ source ./oe-init-build-env
> You had no conf/local.conf file. This configuration file has therefore been
> created for you with some default values. You may wish to edit it to, for
> example, select a different MACHINE (target hardware). See conf/local.conf
> for more information as common configuration options are commented.
>
> You had no conf/bblayers.conf file. This configuration file has therefore been
> created for you with some default values. To add additional metadata layers
> into your configuration please add entries to conf/bblayers.conf.
>
> The Yocto Project has extensive documentation about OE including a reference
> manual which can be found at:
>      http://yoctoproject.org/documentation
>
> For more information about OpenEmbedded see their website:
>      http://www.openembedded.org/
>
>
> ### Shell environment set up for builds. ###
>
> You can now run 'bitbake <target>'
>
> Common targets are:
>      core-image-minimal
>      core-image-sato
>      meta-toolchain
>      meta-ide-support
>
> You can also run generated qemu images with a command like 'runqemu qemux86'
> gwilson 11:07:08:~/yocto/poky-morty-16.0.1/build$
> gwilson 11:07:10:~/yocto/poky-morty-16.0.1/build$
> gwilson 11:07:11:~/yocto/poky-morty-16.0.1/build$ bitbake core-image-sato
> Parsing recipes: 100% |############################################################################################| Time: 0:00:29
> Parsing of 864 .bb files complete (0 cached, 864 parsed). 1318 targets, 50 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION        = "1.32.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-14.04"
> TARGET_SYS        = "i586-poky-linux"
> MACHINE           = "qemux86"
> DISTRO            = "poky"
> DISTRO_VERSION    = "2.2.1"
> TUNE_FEATURES     = "m32 i586"
> TARGET_FPU        = ""
> meta
> meta-poky
> meta-yocto-bsp    = "<unknown>:<unknown>"
>
> NOTE: Fetching uninative binary shim from http://downloads.yoctoproject.org/releases/uninative/1.4/x86_64-nativesdk-libc.tar.bz2;sha256sum=101ff8f2580c193488db9e76f9646fb6ed38b65fb76f403acb0e2178ce7127ca
> --2017-03-20 11:07:57--  http://downloads.yoctoproject.org/releases/uninative/1.4/x86_64-nativesdk-libc.tar.bz2
> Resolving downloads.yoctoproject.org (downloads.yoctoproject.org)... 198.145.20.127
> Connecting to downloads.yoctoproject.org (downloads.yoctoproject.org)|198.145.20.127|:80... connected.
> HTTP request sent, awaiting response... 200 OK
> Length: 2473216 (2.4M) [application/octet-stream]
> Saving to: '/home/gwilson/yocto/poky-morty-16.0.1/build/downloads/uninative/101ff8f2580c193488db9e76f9646fb6ed38b65fb76f403acb0e2178ce7127ca/x86_64-nativesdk-libc.tar.bz2'
>
>
> 2017-03-20 11:07:58 (6.62 MB/s) - '/home/gwilson/yocto/poky-morty-16.0.1/build/downloads/uninative/101ff8f2580c193488db9e76f9646fb6ed38b65fb76f403acb0e2178ce7127ca/x86_64-nativesdk-libc.tar.bz2' saved [2473216/2473216]
>
> Initialising tasks: 100% |#########################################################################################| Time: 0:00:15
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> WARNING: flex-native-2.6.0-r0 do_fetch: Failed to fetch URL http://downloads.sourceforge.net/flex/flex-2.6.0.tar.bz2, attempting MIRRORS if available
> WARNING: file-native-5.28-r0 do_fetch: Failed to fetch URL git://github.com/file/file.git, attempting MIRRORS if available
> ERROR: file-native-5.28-r0 do_fetch: Fetcher failure: Unable to find revision 3c521817322a6bf5160cfeb09b9145ccde587b2a in branch master even from upstream
> ERROR: file-native-5.28-r0 do_fetch: Fetcher failure for URL: 'git://github.com/file/file.git'. Unable to fetch URL from any source.

this is a known issue and should be fixed now (again). The upstream repo 
had issues which caused the hashes to not match. I heard the repo got 
corrected.

> ERROR: file-native-5.28-r0 do_fetch: Function failed: base_do_fetch
> ERROR: Logfile of failure stored in: /home/gwilson/yocto/poky-morty-16.0.1/build/tmp/work/x86_64-linux/file-native/5.28-r0/temp/log.do_fetch.23747
> ERROR: Task (virtual:native:/home/gwilson/yocto/poky-morty-16.0.1/meta/recipes-devtools/file/file_5.28.bb:do_fetch) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 203 tasks of which 0 didn't need to be rerun and 1 failed.
>
> Summary: 1 task failed:
>    virtual:native:/home/gwilson/yocto/poky-morty-16.0.1/meta/recipes-devtools/file/file_5.28.bb:do_fetch
> Summary: There were 2 WARNING messages shown.
> Summary: There were 3 ERROR messages shown, returning a non-zero exit code.
> gwilson 11:13:14:~/yocto/poky-morty-16.0.1/build$
>
> I get 1 file that needs to go to a mirror and a second file that can't be found at all.
Please try again.
>
> Are these known bugs? Do I need to just back up and use Morty 2.2?
This affected 2.1, 2.2 and master.

regards,
Armin
>
> Regards,
>
> Greg Wilson-Lindberg
> Sakura Finetek
> 310-783-5075


