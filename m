Return-Path: <brjerome.1@gmail.com>
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C582E01437
	for <yocto@yoctoproject.org>; Sat,  6 Jul 2013 11:43:40 -0700 (PDT)
Received: by mail-pa0-f52.google.com with SMTP id kq13so3095654pab.11
	for <yocto@yoctoproject.org>; Sat, 06 Jul 2013 11:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=+3uBVDF5/0lc7GprKIWCvlX8LHC30QDzyx/ZhJU4L/Y=;
	b=drfEvXOOvNrfjnkO0z9d/PeGbWcnD6mF4hsgorhiUZ/Xt6Fz6PXI1osp9vbbyjLPzY
	Go3LDu56QQhNjoiVnRjxcfVkkNO7NN9TruBqKwNL4hUPUojM5Hl7vPxH0kvRdvZGle0s
	NuCG8132W7rb+b0UqpOIb9B96r+CnVpALOtGoag3lEIQGNJML1um7xN2pthVgk1Iu/+B
	fzxynypFmoRqROt5qP8Rl71nUAnQzzNsxgsdzO9lEwegeqAMu4f/0vbNZ/XEkXTzM7OK
	I4PNFETHl1QpJ001Q7e+WAV7uEmRmlwk/gZrdox8FVnyWZCpdwqtlkFQU/G1xFKXFSPZ
	1jJg==
X-Received: by 10.66.240.2 with SMTP id vw2mr15797482pac.137.1373136220375;
	Sat, 06 Jul 2013 11:43:40 -0700 (PDT)
Received: from [192.168.1.118] (c-76-103-146-43.hsd1.ca.comcast.net.
	[76.103.146.43])
	by mx.google.com with ESMTPSA id s5sm13422141pbo.38.2013.07.06.11.43.38
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 06 Jul 2013 11:43:39 -0700 (PDT)
Message-ID: <51D86559.7060903@gmail.com>
Date: Sat, 06 Jul 2013 11:43:37 -0700
From: Norman Cheung <brjerome.1@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Help with installing Eclipse ADT Plug-in
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 06 Jul 2013 18:43:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I followed the steps to install ADT plug-in in the Development Manual 
section 4.2.2.1.

The error is:
Cannot complete the install because one or more required items could not 
be found.
   Software being installed: Yocto Project ADT Plug-in 
1.4.0.201306120814 (org.yocto.sdk.feature.group 1.4.0.201306120814)

In installing the pre-requisites, the only item that failed was RSE 
WincE Services (step 12 in 4.2.2.1.3).

I also tried compile the plug-in from source same error.  How can I 
locate what items are missing?

Thanks,
Norman



