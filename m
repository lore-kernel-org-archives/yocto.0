Return-Path: <jfabernathy@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C10CAE006C7
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 12:32:57 -0700 (PDT)
Received: by vbjk17 with SMTP id k17so1104146vbj.35
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 12:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=TeeKoDCmA4Y6hEsHqH/oT2Z2BpscmJEHEY3+JUuWZSU=;
	b=hcWaU5TjH6gsCrOc10xRTUs6sOHKvbpWhKhnTUtIdamoId0aG80yeAV1iKW6C7O1tK
	j5xgTx0OjS6zLh7Gb298nO9UtxGxBo4hku56jCrdS3wBD93Ci0HrCcQy0YsjQIU+i5wC
	jsr6tQRi4OinCcEZfore5Il6I6YI4Su73rvwQ6wnyRMU3sgYYA7rTELKGdLXW4eBDD0b
	Oj6dYeYIl1d2cU8+deSNfNPV69YBBS8fD7Lr5PNprQoTnekaIVDBc3q5UHV+jPW+k4Fk
	kyhrVeDGz3GWsS/ya7qXu6DnqQkC++xhoCReqScKvXVYZFuY5W5s7SifRTcr3e74hyk2
	4Tqw==
Received: by 10.52.30.67 with SMTP id q3mr19120827vdh.31.1338492776896;
	Thu, 31 May 2012 12:32:56 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-55.dhcp.embarqhsd.net. [184.4.33.55])
	by mx.google.com with ESMTPS id j16sm6344930vdt.9.2012.05.31.12.32.55
	(version=SSLv3 cipher=OTHER); Thu, 31 May 2012 12:32:56 -0700 (PDT)
Message-ID: <4FC7C769.1030903@gmail.com>
Date: Thu, 31 May 2012 15:32:57 -0400
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
X-List-Received-Date: Thu, 31 May 2012 19:32:58 -0000
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
>
> Thanks
> -Kishore.
>   

So how do you get changes in the cedartrail.conf file to take affect??  
I edited the file and did the bitbake again, but nothing changed.  I'm 
guessing I need a bitbake -c cleansstate "somthing"  But I don't know 
what to put there to make rebuild with ttyS0.

Jim A
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


