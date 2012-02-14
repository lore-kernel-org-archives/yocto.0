Return-Path: <jfabernathy@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA792E0030B
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2012 12:23:58 -0800 (PST)
Received: by qcsd1 with SMTP id d1so300348qcs.35
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2012 12:23:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=/FaDXft/WX5iv29t94SVzESU/Qtao7LXGJ7ii37DBbc=;
	b=l5XYZsz2xa3qZ3VjTJXlqFGBIbNYHXfXfZGSnTo+zCLCYUQpAI+JTmkErneqaHAM3N
	KLmyMQizoC3c8+zuA3tP+/H0h1Npx9m+cg0gvP0fPXF8cmqIyEoNw45bLQni0nlko7c/
	Qvmvf1WqTxrher/G20HfhCQKOSH0XRwkbhkQ4=
Received: by 10.229.76.139 with SMTP id c11mr13517550qck.1.1329251038116;
	Tue, 14 Feb 2012 12:23:58 -0800 (PST)
Received: from [10.0.1.54] (nc-184-3-50-47.dhcp.embarqhsd.net. [184.3.50.47])
	by mx.google.com with ESMTPS id fp5sm5563119qab.1.2012.02.14.12.23.57
	(version=SSLv3 cipher=OTHER); Tue, 14 Feb 2012 12:23:57 -0800 (PST)
Message-ID: <4F3AC2DC.20001@gmail.com>
Date: Tue, 14 Feb 2012 15:23:56 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CA+FcS-zG0sxF34GjLSsp+505ov2cJASjwWrK+5PB6+Yt4JQ0DA@mail.gmail.com>
	<857BE142E5399E46B20FD45B9DB8A7BC0FCE74AA@SHSMSX102.ccr.corp.intel.com>
	<EB4F5542-59F9-419E-87BC-AE9741520771@gmail.com>
	<4F3ABD54.7060507@intel.com>
In-Reply-To: <4F3ABD54.7060507@intel.com>
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
X-List-Received-Date: Tue, 14 Feb 2012 20:23:59 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/14/2012 03:00 PM, Scott Garman wrote:
> On 02/14/2012 04:47 AM, James Abernathy wrote:
>>
>> On Feb 14, 2012, at 4:04 AM, Lu, Lianhao wrote:
>>
>>> James W. wrote on 2012-02-14:
>>>> How to locate Log file while a error occur.
>>>
>>> It's under the directory ${WORKDIR}/temp/. Actually when an error 
>>> occurs, you can find the specific log file in the output, something 
>>> like.
>>>
>>> ERROR: Logfile of failure stored in:
>>> /intel/poky/builds/toolchain/tmp/work-shared/gcc-4.6.2+svnr181430-r22/temp/log.do_patch.15156 
>>>
>>>
>>> Best Regards,
>>> Lianhao
>>>
>>>
>> I have a similar questions. If the error occurs and the console log 
>> information scrolls too far to get back to, how do I find the error 
>> log file then? I know what directory all the logs will be, but is 
>> there an easy way to find the one with the error??
>
> In Poky master, we now save the output from bitbake in cooker.log 
> files, kept under build/tmp/. This will be a feature of our upcoming 
> 1.2 release of Yocto.
>
> Scott
>
Found them!  great idea!

Jim A



