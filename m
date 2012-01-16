Return-Path: <jfabernathy@gmail.com>
Received: from mail-qw0-f41.google.com (mail-qw0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11DE3E00306
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2012 15:13:53 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qaea16 with SMTP id a16so1028998qae.14
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2012 15:13:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=O8r3aESLt3jAIsxH1SnWHk/2gucp97jo1I0TDgjwf14=;
	b=mL0tWdeuSWRuQtaZNpZZyMs88b0eeFLWmqZc1KS6jRSN2+x8t7RlT5eiJv7ZtxjlV3
	iQa8REeReCU8PMXEuq31HdfnHQtQ3NxZjYyyZf25dwbEcT5eERZrGTP3nGIoQbCX9/58
	Z8yqgXy7fI6OOquALv4bbh/Ph/aeb2UZNLNRw=
Received: by 10.224.205.134 with SMTP id fq6mr16954976qab.99.1326755633276;
	Mon, 16 Jan 2012 15:13:53 -0800 (PST)
Received: from [10.0.1.39] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	q14sm39746042qap.4.2012.01.16.15.13.52 (version=SSLv3 cipher=OTHER);
	Mon, 16 Jan 2012 15:13:52 -0800 (PST)
Message-ID: <4F14AF2F.9040003@gmail.com>
Date: Mon, 16 Jan 2012 18:13:51 -0500
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Serial consoles
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
X-List-Received-Date: Mon, 16 Jan 2012 23:13:54 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm using a Marshalltown Cedarview board and it's serial ports are 
standard PC com1 and com2 so I put the following in my 
conf/machine/mycdv.conf file, where mycdv is the name of my machine/bsp, 
i.e. meta-mycdv.

SERIAL_CONSOLE = "115200 ttyS0"
SYSLINUX_OPTS = "serial 0 115200"
APPEND = "console=ttyS0,115200 console=tty0"

When the system booted, I have the kernel console on com1 and I also got 
a login prompt on com1.  However, the syslinux output was only displayed 
on the VGA monitor.

Anyone know why? Maybe SYSLINUX_OPTS goes somewhere else?

I noticed in the n450 release notes that they accomplish this with the 
following in the local.conf file:

# Serial Port Setup for Intel Embedded Development Board 1-N40\
SYSLINUX_OPTS_atom-pc = "serial 0 115200"
SERIAL_CONSOLE_atom-pc = "115200 ttyS0"
APPEND_atom-pc = "console=ttyS0,115200 console=tty0"

This does work for the N450, but the cedartrail bsp is not under 
standard/common-pc/atom-pc. It's under standard/cedartrail.  If I have 
to put SYSLINUX_OPTS in local.conf, what is the suffix and why???

JIm A


