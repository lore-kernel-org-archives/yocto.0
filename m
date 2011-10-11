Return-Path: <scott.a.garman@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87DADE005BB
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2011 11:03:37 -0700 (PDT)
Received: from mail-qy0-f173.google.com ([209.85.216.173])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 11 Oct 2011 11:02:31 -0700
Received: by qyc1 with SMTP id 1so5647977qyc.4
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2011 11:02:30 -0700 (PDT)
Received: by 10.68.74.194 with SMTP id w2mr37173663pbv.91.1318356149898;
	Tue, 11 Oct 2011 11:02:29 -0700 (PDT)
Received: from [192.168.1.12] (c-98-246-160-155.hsd1.or.comcast.net.
	[98.246.160.155])
	by mx.google.com with ESMTPS id h5sm1071472pbq.11.2011.10.11.11.02.28
	(version=SSLv3 cipher=OTHER); Tue, 11 Oct 2011 11:02:28 -0700 (PDT)
Message-ID: <4E9484B3.9010605@intel.com>
Date: Tue, 11 Oct 2011 11:02:27 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.23) Gecko/20110922 Lightning/1.0b2 Thunderbird/3.1.15
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4E9463A3.3090005@communistcode.co.uk>
In-Reply-To: <4E9463A3.3090005@communistcode.co.uk>
Subject: Re: QEmu Script Error Checking
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
X-List-Received-Date: Tue, 11 Oct 2011 18:03:37 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 10/11/2011 08:41 AM, Jack Mitchell wrote:
> I have run into the following issue where the tap device is in use due
> to the QEmu machine unexpectedly crashing. The error I recieve is here:
>
> http://i.imgur.com/5t9U1.png (appologies for the screenshot but it
> wouldn't let me copy the text)
>
> Is there any leaway for more robust error checking or a way to forcibly
> destroy the tap node to allow a new one to be created?

Hi Jack,

Since qemu is being run from a parent shell script (runqemu), if qemu 
were to crash, I would think the parent shell script would continue on 
and destroy the tap device normally. Might you be killing the runqemu 
process instead of qemu itself?

I'm not sure if there is a way we could reliably force a cleanup of tap 
devices when runqemu starts, because we need to support the case where 
multiple instances of qemu sessions are running simultaneously (each 
with their own tap device). Off the top of my head I think this would 
make the state of tap devices non-deterministic.

Furthermore, we support a mode where an administrator can set up one or 
more tap devices, allowing the runqemu user to not need sudo privileges. 
So checking for the case where a tap device exists but no qemu process 
is running wouldn't work.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

