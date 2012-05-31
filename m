Return-Path: <jfabernathy@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C56D7E0044A
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 09:11:35 -0700 (PDT)
Received: by vcbfo14 with SMTP id fo14so905653vcb.35
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 09:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=r5t41jRkZ9+5JDnZH2gmxReguXVkRjEQRuhj9pao3iY=;
	b=bg4nif3R9Xd3zSyQVv9TwR9XmA05h4e21JNAQFhV5uEtEFqG0L7qhjO894YEpdTXSI
	Z5FqOogMBBO7MC+gMS2MBFFeIYAbqzQQoQOZTs30Ihei+q8MpNyO9AhJMgmyIf50Y9OF
	UAe5hJPwtvUJO/vIkwTN0aZFLBukWnwvM1xxQkZplVKxefo+7zpJcsv0nHgu6h2QlrN4
	ndClL3qZ7boYJcALxZcpt0BUOCvBx7kQYuW6PpaJnK1SNxnuf6psAjL9wTuEAv1nsHeS
	J6p9sN5pNeA9Si9qxxswtxQDL+YfPQjBf7oJXih/+NYfyxcqvFoJf6hw9p81hMf5iIu4
	wBvA==
Received: by 10.52.35.15 with SMTP id d15mr2340509vdj.128.1338480694923;
	Thu, 31 May 2012 09:11:34 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-33-55.dhcp.embarqhsd.net. [184.4.33.55])
	by mx.google.com with ESMTPS id
	i19sm5487290vdt.18.2012.05.31.09.11.34 (version=SSLv3 cipher=OTHER);
	Thu, 31 May 2012 09:11:34 -0700 (PDT)
Message-ID: <4FC79837.2070309@gmail.com>
Date: Thu, 31 May 2012 12:11:35 -0400
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: meta-cedartrail - serial console
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
X-List-Received-Date: Thu, 31 May 2012 16:11:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Using a DN2800MT (Marshalltown) Intel board, I'm testing the 
meta-cedartrail using edison branch and noticed an issues with the 
serial console.

The cedartrail.conf in the machine directory has the following statements:

SYSLINUX_OPTS = "serial 0 115200"
SERIAL_CONSOLE = "115200 ttyS0"
APPEND += "console=ttyS0,115200 console=tty0"

However, when the image booted, I had no serial console on ttyS0.  I 
checked /etc/inittab and noticed that the following line existed:

S:2345:respawn:/sbin/getty 115200 ttyS3

I changed the ttyS3 to ttyS0 and then I have a serial console on the 
next reboot.  So it appears the override in the .conf file is not 
working.  Also I only have the console from getty, and not the kernel 
logging console.

Anyone have a solution??

If this is considered a bug I can put it on bugzilla.

Jim A


