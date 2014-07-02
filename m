Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53F58E0043F; Wed,  2 Jul 2014 14:09:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9F0DE00342
	for <yocto@yoctoproject.org>; Wed,  2 Jul 2014 14:09:40 -0700 (PDT)
Received: by mail-pa0-f42.google.com with SMTP id lj1so13251421pab.1
	for <yocto@yoctoproject.org>; Wed, 02 Jul 2014 14:09:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding;
	bh=mhwQM+/M/6oIrw21eZvzBHAmSOccHIenNGafq0cqr/o=;
	b=LeMIEg1D6ZiFpPAFZkRdt6NEtfzKoNTocJN2FA3UZLhMcGM+MAX3hw/7ARr4mnsR8W
	7DCEZ9LFci0e9KzUYSqo+/fq3mrsW9MV61eCIVdEA4n8pogVLkrZ8oJ5RJluZ4eXo8Zc
	8pN+Mvx/KFFot4sysCkbMLpjwILv9yED3sYH0sFpyNQJgwD3rl8F+SrkI+iJPDGE3EiS
	mqeBZUMCmJMyuKTfv+8J3LUSMsZHmLzx/MV4xhlrhN1NF/blF4ymUdFWDMqJy+4ffUOK
	LfsLdMij9my2TWhvzf1c4p42dlHnuqMWaS6593/17xpnAj/TbIeYGUDI1QaLZWInj24j
	s52w==
X-Gm-Message-State: ALoCoQmZt06dnQ/Azlb/Q/tf/TRWQU8KuZHsKRGT15XMRVjsteShiMX8Xk/AqkWEif547VmEs6AM
X-Received: by 10.68.191.138 with SMTP id gy10mr25275056pbc.169.1404335379765; 
	Wed, 02 Jul 2014 14:09:39 -0700 (PDT)
Received: from [172.16.1.20] (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55])
	by mx.google.com with ESMTPSA id rc3sm38462065pbc.5.2014.07.02.14.09.38
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 02 Jul 2014 14:09:39 -0700 (PDT)
Message-ID: <53B47511.2000203@mvista.com>
Date: Wed, 02 Jul 2014 14:09:37 -0700
From: akuster <akuster@mvista.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: meta-security
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
X-List-Received-Date: Wed, 02 Jul 2014 21:09:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

Is there a maintainer for meta-secruity? There is no one listed in the 
README nor where to submitted patches.

Can someone shed some light on this ?

regards,
Armin

