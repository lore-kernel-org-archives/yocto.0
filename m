Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6A8AE0096F; Thu, 26 Mar 2015 17:09:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23BA5E00832
	for <yocto@yoctoproject.org>; Thu, 26 Mar 2015 17:09:29 -0700 (PDT)
Received: by igbqf9 with SMTP id qf9so7024326igb.1
	for <yocto@yoctoproject.org>; Thu, 26 Mar 2015 17:09:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=disposition-notification-to:return-receipt-to:user-agent
	:in-reply-to:references:mime-version:content-transfer-encoding
	:content-type:subject:from:date:to:message-id;
	bh=/J3XVvLIM+pvJsbWnIPeGUT5JPhcD8aJlGXG3px8S9A=;
	b=it1aX0q4RP7tRhfMir2BVLtF9N4ihUtCNd50k5xJJ2WzVT7ygTyKKs9+VvJW6ciQ7i
	hObvat37N90DydjOUPQSnBwRzVmr30itANWGl2cKvg0e3sYjb9K25VxPFJgDsFrDcTMx
	pQxpeaqYPqsUTBAmwIpOtp3oEXH2E9XLakGQCKrx14GanOJ2Mg0cnl9hmwHwxJqbyo31
	8tfvJmuhl/yjVyuTq7BT3pRHgbYAHeyOMZcPeJAYeAbxvg4OMXoOaKss/HjBKkrllbuP
	xCLi3mp0kr/D2dkauOTAiR1+AnUrw/ZrsDQubcsvbNrq71BVcvYaPmAMF6IxDrPLgwKW
	1dMQ==
X-Received: by 10.50.29.109 with SMTP id j13mr41229505igh.2.1427414968326;
	Thu, 26 Mar 2015 17:09:28 -0700 (PDT)
Received: from [192.168.0.64]
	(CPE0026f3330aca-CM0026f3330ac6.cpe.net.cable.rogers.com.
	[99.231.92.7])
	by mx.google.com with ESMTPSA id o35sm258597ioi.17.2015.03.26.17.09.26
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 26 Mar 2015 17:09:27 -0700 (PDT)
User-Agent: K-9 Mail for Android
In-Reply-To: <55140415.1050308@gmail.com>
References: <55140415.1050308@gmail.com>
MIME-Version: 1.0
From: Nicholas Krause <xerofoify@gmail.com>
Date: Thu, 26 Mar 2015 20:09:23 -0400
To: testlaster <testlaster@gmail.com>,yocto@yoctoproject.org
Message-ID: <190DABAD-82A0-473A-9373-9EDE36793F06@gmail.com>
Subject: Re: Hi..trouble booting
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
X-List-Received-Date: Fri, 27 Mar 2015 00:09:31 -0000
Content-Transfer-Encoding: 8bit
Content-Type: text/plain;
 charset=UTF-8



On March 26, 2015 9:05:25 AM EDT, testlaster <testlaster@gmail.com> wrote:
>Hi
>
>I have been having a boot issue on my system.
>Here is a Paste from the machine im trying to boot linux. Its running
>Slackware at the moment.
>When I boot with a USB stick it says boot : followed by alpha symbols
>that
>seems to continue into eternity unless stopped.
>I have used DD on the hddimg files and i have tried using Rufus and
>TuxBoot
>with both hddimg and ISO files.
>
>bash-4.2# lscpu
>Architecture:          i686
>CPU op-mode(s):        32-bit
>Byte Order:            Little Endian
>CPU(s):                2
>On-line CPU(s) list:   0,1
>Thread(s) per core:    2
>Core(s) per socket:    1
>Socket(s):             1
>NUMA node(s):          1
>Vendor ID:             GenuineIntel
>CPU family:            6
>Model:                 28
>Stepping:              2
>CPU MHz:               800.000
>BogoMIPS:              3200.12
>L1d cache:             24K
>L1i cache:             32K
>L2 cache:              512K
>NUMA node0 CPU(s):     0,1
>
>I have used the normal Genericx86 and the Atom yocto build from the
>Yocto
>website with no luck.
>
>Can anybody help me with this issue?
>Thansk allot and kind regards
>Testo
Testo,
If you can send me either the dmesg or the kernel logs output from the hanging system I may be able to trace your issue. 
Nick 
-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.

