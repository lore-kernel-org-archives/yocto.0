Return-Path: <jfabernathy@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33453E00599
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2012 09:45:06 -0800 (PST)
Received: by qcsg14 with SMTP id g14so1275351qcs.35
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2012 09:45:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=oVDvs2n9rxzSWsxuTcT+SN3vqgYcHpjTk5ETGIb38Bg=;
	b=UYzXH3NF/cJqlTKBH1US41cB7ed97fddnLUV4Y33IAYQVE9BRsxFIdxNI7ADf7Z+Le
	aeNMk6S4qRgSmhycy5DUeiyx0WCskI+7gmhQH3K5/gLQDzsQAw0vnfm3+7BfmKWgqymq
	hMLXoeXSEIWjw+AKfG4hQ6bprO00kFhI5En3s=
Received: by 10.229.102.73 with SMTP id f9mr3002487qco.6.1327686305389;
	Fri, 27 Jan 2012 09:45:05 -0800 (PST)
Received: from [10.0.1.54] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id g3sm16299932qap.2.2012.01.27.09.45.04
	(version=SSLv3 cipher=OTHER); Fri, 27 Jan 2012 09:45:04 -0800 (PST)
Message-ID: <4F22E29E.3040105@gmail.com>
Date: Fri, 27 Jan 2012 12:45:02 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: serial consoles
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
X-List-Received-Date: Fri, 27 Jan 2012 17:45:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I have the meta-cedartrail image running on hardware (Marshalltown 
board).  To make the serial console work, I have in the 
machine/cedartrail.conf file:

SERIAL_CONSOLE = "115200 ttyS0"

this works fine, but only after Linux is up and the login prompts are 
sent out. I'm trying to also get the Kernel boot console log out, and 
possibly syslinux or grub console.

If I look at the release notes for the meta-n450, it has suggestions to 
do this for that BSP as below:

         # Serial Port Setup for Intel Embedded Development Board 1-N40
         SYSLINUX_OPTS_atom-pc = "serial 0 115200"
         SERIAL_CONSOLE_atom-pc = "115200 ttyS0"
         APPEND_atom-pc = "console=ttyS0,115200 console=tty0"

However, those notes talk  about added these statements to the 
local.conf file.

I have not been able to translate what works on the n450 to cedartrail.

Any ideas?

Jim A


