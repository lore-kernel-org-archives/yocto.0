Return-Path: <scott.a.garman@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72E62E0044B
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2012 12:00:24 -0800 (PST)
Received: from mail-iy0-f180.google.com ([209.85.210.180])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 14 Feb 2012 12:00:23 -0800
Received: by iabz7 with SMTP id z7so466924iab.25
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2012 12:00:22 -0800 (PST)
Received: by 10.42.142.200 with SMTP id t8mr34609155icu.34.1329249622909;
	Tue, 14 Feb 2012 12:00:22 -0800 (PST)
Received: from [10.71.15.98] ([108.60.121.130])
	by mx.google.com with ESMTPS id r18sm769374ibh.4.2012.02.14.12.00.21
	(version=SSLv3 cipher=OTHER); Tue, 14 Feb 2012 12:00:21 -0800 (PST)
Message-ID: <4F3ABD54.7060507@intel.com>
Date: Tue, 14 Feb 2012 12:00:20 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CA+FcS-zG0sxF34GjLSsp+505ov2cJASjwWrK+5PB6+Yt4JQ0DA@mail.gmail.com>
	<857BE142E5399E46B20FD45B9DB8A7BC0FCE74AA@SHSMSX102.ccr.corp.intel.com>
	<EB4F5542-59F9-419E-87BC-AE9741520771@gmail.com>
In-Reply-To: <EB4F5542-59F9-419E-87BC-AE9741520771@gmail.com>
X-Gm-Message-State: ALoCoQkPCAWxYeFHMqf7zGqLgb8QzsEAKPUkrfwj+HbY00nxi/BsvKtNZbdwUFOGSf1wL72GZHjR
Subject: Re: How to find Log
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
X-List-Received-Date: Tue, 14 Feb 2012 20:00:24 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/14/2012 04:47 AM, James Abernathy wrote:
>
> On Feb 14, 2012, at 4:04 AM, Lu, Lianhao wrote:
>
>> James W. wrote on 2012-02-14:
>>> How to locate Log file while a error occur.
>>
>> It's under the directory ${WORKDIR}/temp/. Actually when an error occurs, you can find the specific log file in the output, something like.
>>
>> ERROR: Logfile of failure stored in:
>> /intel/poky/builds/toolchain/tmp/work-shared/gcc-4.6.2+svnr181430-r22/temp/log.do_patch.15156
>>
>> Best Regards,
>> Lianhao
>>
>>
> I have a similar questions. If the error occurs and the console log information scrolls too far to get back to, how do I find the error log file then? I know what directory all the logs will be, but is there an easy way to find the one with the error??

In Poky master, we now save the output from bitbake in cooker.log files, 
kept under build/tmp/. This will be a feature of our upcoming 1.2 
release of Yocto.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

