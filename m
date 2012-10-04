Return-Path: <jfabernathy@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF24EE0049F
	for <yocto@yoctoproject.org>; Thu,  4 Oct 2012 12:15:28 -0700 (PDT)
Received: by mail-gg0-f176.google.com with SMTP id e5so229321ggk.35
	for <yocto@yoctoproject.org>; Thu, 04 Oct 2012 12:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=QctI5PZQ8cB1LB2LvqZVEVi6H8+oZDdaIPDEq3I95Bw=;
	b=CzPLdqO4MDo7EdCKBCGVE6i6IV/EhHrmG8lQFblp4eEoP6Nb65twcTjgg0FAuhH4A4
	yZ258FerTamQxlJ9H7NjGgzCP+TC/HIDVU4vsmchLQu9dOFuSL0Aaic6AH5czqOwabIf
	aUdfpdIhV0vNe5MXJsO1Y7vdrmOkbNnqjvL7Ru1KzX1qh10oJFgj0aJ6q4k4EiNdx7jS
	ZqHt6uLUoS0+HSglSrLtJ1dY1iQp0gPUJsG+hlSadQr5x0YOmLQwi1+65EYUYAUsQlKy
	gNdQoclL//5EiYLimkCWHud2eU7WBSLZLQZc+uBmyFWbvUligJyslr4ymYcTvVcZl0MV
	YcJA==
Received: by 10.236.185.228 with SMTP id u64mr6141864yhm.85.1349378128267;
	Thu, 04 Oct 2012 12:15:28 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-32-137.dhcp.embarqhsd.net. [184.4.32.137])
	by mx.google.com with ESMTPS id h22sm11146846yhk.13.2012.10.04.12.15.27
	(version=SSLv3 cipher=OTHER); Thu, 04 Oct 2012 12:15:27 -0700 (PDT)
Message-ID: <506DE049.8050507@gmail.com>
Date: Thu, 04 Oct 2012 15:15:21 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120912 Thunderbird/15.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: log
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
X-List-Received-Date: Thu, 04 Oct 2012 19:15:29 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Build Configuration:
BB_VERSION        = "1.16.0"
TARGET_ARCH       = "i586"
TARGET_OS         = "linux"
MACHINE           = "crownbay"
DISTRO            = "poky"
DISTRO_VERSION    = "1.2+snapshot-20121004"
TUNE_FEATURES     = "m32 core2"
TARGET_FPU        = ""
meta
meta-yocto
meta-yocto-bsp    = "master:ee76b805f96f00aec386a1c34d176eea7d66f526"
meta-intel
meta-crownbay     = "master:c4a86a2ad5df3a94b47e394090f67f7e324b1483"
meta-jfa          = "<unknown>:<unknown>"


