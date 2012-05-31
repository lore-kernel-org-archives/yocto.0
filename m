Return-Path: <jfabernathy@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D451E0070B
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 11:36:30 -0700 (PDT)
Received: by vcbfo14 with SMTP id fo14so1041778vcb.35
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 11:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=9I/m7/F6IEKAuRRo03izc8KTgNb+JaQgTGuECFa0ArE=;
	b=zdoflOHt1CkqLfJH7OYtCrMy5hYyF74DeH0VTvysWzzbu01EXagAaX7ID38tIlFLFh
	LTH9rIjM1jw8DUbf2phFJEBQ/z22FE5NKO0dGZXmjyO4ZcPlYbcb7fqlTdI23aHaEBE+
	3RsIrEuDdETGkYRg1oUzW3kw26C/eUhjeCdVzPh0iIx9EUmLMvMQJyoS4na0Atam4T3u
	oq9M8QxiXV+0C74aN9N706DebFLprLJSD/yKBaiAowfabJija0BzDqMCoYYwfxexhrz9
	IyfEAVg5dNlzAcuPJTxvgZMVME26SSxf8xljCYkDRMUWjVwHfr1mtQVE4x6oXLaea6Cf
	ysuQ==
Received: by 10.52.34.73 with SMTP id x9mr19080777vdi.27.1338489389540;
	Thu, 31 May 2012 11:36:29 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-55.dhcp.embarqhsd.net. [184.4.33.55])
	by mx.google.com with ESMTPS id g10sm6124308vdk.2.2012.05.31.11.36.28
	(version=SSLv3 cipher=OTHER); Thu, 31 May 2012 11:36:28 -0700 (PDT)
Message-ID: <4FC7BA2D.60400@gmail.com>
Date: Thu, 31 May 2012 14:36:29 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
References: <4FC79837.2070309@gmail.com>
	<D956029D25CF204F948EA0FB515E1EE20ACB7838@ORSMSX105.amr.corp.intel.com>
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE20ACB7838@ORSMSX105.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-cedartrail - serial console
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
X-List-Received-Date: Thu, 31 May 2012 18:36:30 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/31/2012 02:18 PM, Bodke, Kishore K wrote:
>
>> -----Original Message-----
>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> bounces@yoctoproject.org] On Behalf Of jfabernathy
>> Sent: Thursday, May 31, 2012 9:12 AM
>> To: yocto@yoctoproject.org
>> Subject: [yocto] meta-cedartrail - serial console
>>
>> Using a DN2800MT (Marshalltown) Intel board, I'm testing the
>> meta-cedartrail using edison branch and noticed an issues with the
>> serial console.
>>
>> The cedartrail.conf in the machine directory has the following statements:
>>
>> SYSLINUX_OPTS = "serial 0 115200"
>> SERIAL_CONSOLE = "115200 ttyS0"
>> APPEND += "console=ttyS0,115200 console=tty0"
>>
> I just saw that Edison branch has ttyS3 enabled.
>
> SYSLINUX_OPTS = "serial 3 115200"
> SERIAL_CONSOLE = "115200 ttyS3"
> APPEND += "console=ttyS3,115200 console=tty3"
>
> Are you looking into right branch?
you are right. too many tests in parallel.  In Edison it does have 
ttyS3.  I'll edit that to ttyS01 and see if if can get it right for the 
DN2800MT board.  Is there a way to override the standard settings in the 
local.conf file???
> Thanks
> -Kishore.
>
>> However, when the image booted, I had no serial console on ttyS0.  I
>> checked /etc/inittab and noticed that the following line existed:
>>
>> S:2345:respawn:/sbin/getty 115200 ttyS3
>>
>> I changed the ttyS3 to ttyS0 and then I have a serial console on the
>> next reboot.  So it appears the override in the .conf file is not
>> working.  Also I only have the console from getty, and not the kernel
>> logging console.
>>
>> Anyone have a solution??
>>
>> If this is considered a bug I can put it on bugzilla.
>>
>> Jim A
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


