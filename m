Return-Path: <scott.a.garman@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id C2EDC4C800A1
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2011 12:39:17 -0500 (CDT)
Received: from mail-iy0-f180.google.com ([209.85.210.180])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 21 Jul 2011 10:39:16 -0700
Received: by iyh42 with SMTP id 42so1128357iyh.25
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2011 10:39:16 -0700 (PDT)
Received: by 10.231.84.85 with SMTP id i21mr417217ibl.34.1311269956404;
	Thu, 21 Jul 2011 10:39:16 -0700 (PDT)
Received: from [127.0.0.1] (masterfoo.zenlinux.com [207.192.74.254])
	by mx.google.com with ESMTPS id er13sm1048560ibb.19.2011.07.21.10.39.14
	(version=SSLv3 cipher=OTHER); Thu, 21 Jul 2011 10:39:15 -0700 (PDT)
Message-ID: <4E286439.6000601@intel.com>
Date: Thu, 21 Jul 2011 10:39:05 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Lightning/1.0b2 Thunderbird/3.1.11
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <97A98E06-5F1B-49D3-BE3F-D70A5CB1AAF6@kernel.crashing.org>
	<4E2829B1.7080506@intel.com>
	<CAEsOVNfranCtB=CHOjR6fjBibFEd8_9GRENR90K0Y40MbdCkRQ@mail.gmail.com>
	<4E285718.10302@intel.com>
	<alpine.DEB.2.02.1107211307240.4686@localhost6.localdomain6>
In-Reply-To: <alpine.DEB.2.02.1107211307240.4686@localhost6.localdomain6>
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: best cfg for building all of yocto?
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
X-List-Received-Date: Thu, 21 Jul 2011 17:39:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/21/2011 10:08 AM, Robert P. J. Day wrote:
> On Thu, 21 Jul 2011, Scott Garman wrote:
>
>> On 07/21/2011 09:32 AM, McClintock Matthew-B29882 wrote:
>>> On Thu, Jul 21, 2011 at 8:29 AM, Scott Garman<scott.a.garman@intel.com>
>>> wrote:
>>>> bitbake world should build all of the available packages that aren't
>>>> explicitly excluded due to machine incompatibilities. It doesn't generate
>>>> a
>>>> final image though, just all of the output packages.
>>>
>>> Is there an easy way to remove a specific package from being built
>>> with running bitbake world? There are unmet dependencies:
>>>
>>> NOTE: Resolving any missing task queue dependencies
>>> ERROR: Nothing PROVIDES 'libmad'
>>> ERROR: Required build target 'libomxil' has no buildable providers.
>>> Missing or unbuildable dependency chain was: ['libomxil', 'libmad']
>>
>> This happens because conf/distro/include/default-distrovars.inc excludes some
>> recipes which are known to use commercial licenses:
>>
>> COMMERCIAL_LICENSE ?= "lame gst-fluendo-mp3 libmad mpeg2dec ffmpeg qmmp"
>>
>> If you'd like to build these recipes, set COMMERCIAL_LICENSE = "" in your
>> local.conf.
>
>    related to richard's earlier post about how to exclude packages,
> shouldn't the initial settings be consistent, then?  either a default
> yocto setup should include commercial licenses, or exclude them (and
> their packages) entirely.  it seems that running a simple "bitbake
> world" shouldn't just fail.

I agree with Robert. I have filed bug #1262 to track this issue.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

