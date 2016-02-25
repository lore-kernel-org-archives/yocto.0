Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87D1EE00CFF; Thu, 25 Feb 2016 08:32:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 162CAE00CF1
	for <yocto@yoctoproject.org>; Thu, 25 Feb 2016 08:32:48 -0800 (PST)
Received: by mail-ig0-f181.google.com with SMTP id g6so18506506igt.1
	for <yocto@yoctoproject.org>; Thu, 25 Feb 2016 08:32:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=fygXVulc4g0FVBXAbMF+yDzO33uFiX10tYa1aD3t2gw=;
	b=lb5gcqchOMzXJDMuK6nQX5MLvZHaNnG9w7iK8WZhB7UI4SCYc/JiBSzn9NU0VvdSAP
	Pz/ZF6p8JinEVSUSY9S4Tzd8R3SCyjJwJFGR2YiQD+nvXHrk4ZoMI488he9zwq31YwgY
	8z7YoltCjh///wlj7MyQX2sJZQPOApdbDevZQcN0CUSVSpmyKoH3jCheQCy15jL8YoJp
	Cbt5TI+HRtTDBFpY+ac2a/5vY7gQEpRnDCYGLnFyrEkCFB3JK+LAcYwuGE5DoA1+CQQM
	hobUxdikMjHgK50KifSRu/ZVQYyjPWRGPdOu61S0Gz44JFtJ1EAePc9ZBfR4lDta5dFz
	LoNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=fygXVulc4g0FVBXAbMF+yDzO33uFiX10tYa1aD3t2gw=;
	b=Q3j/KHpeJ7ufr8FzsvUhC1V3Sagtd0dP2ftMKlsuP4lTr8ns000jPnIvalY42BOlD2
	pd95o4OK5fx/RZf49L/zUBCsHEn0Xix8nXegweaXegeJZND2NipsZ5J+4vg5Tfmc7nod
	dTSMLzgVgntcqzRpAkMeNV6DMnPoVGJIa+rZFmlMkEYKcDUfY/Yikc7ikMdbD72XE1Ci
	j/mU+WIZmEOdUgjkhZHfgGsAJUNb02JaxgNgQU0D5kwOUwQObte5A3tSjOH2fF1tE31t
	CIYutSgn+hJh0ncxVQmhZwagqaZsBN/dAdpz6y1qmasNPlc83dc7dARY17eUx0fEPxQj
	4k/A==
X-Gm-Message-State: AG10YOQL8T2+bjllKcyAl9a1Wt1GXtZpyQpUpdHEfsv3QOSzJ6VbikvmN/Y2iTpaZ1eYLg==
X-Received: by 10.50.64.244 with SMTP id r20mr93788igs.6.1456417968488;
	Thu, 25 Feb 2016 08:32:48 -0800 (PST)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	a127sm3529229ioe.10.2016.02.25.08.32.47
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 25 Feb 2016 08:32:47 -0800 (PST)
To: Khem Raj <raj.khem@gmail.com>,
	=?UTF-8?Q?Andreas_M=c3=bcller?= <schnitzeltony@googlemail.com>
References: <1454173548-5806-1-git-send-email-raj.khem@gmail.com>
	<20160223210251.GC10598@ad.chargestorm.se>
	<CALbNGRSLRGvmdTNg6hF8YwGXRPza5Xn8sLLjrcgOrT+B1--+yA@mail.gmail.com>
	<B9B47CEE-1922-4EEA-99E2-F7C28366DC35@gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <56CF2CB6.4080503@gmail.com>
Date: Thu, 25 Feb 2016 11:32:54 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <B9B47CEE-1922-4EEA-99E2-F7C28366DC35@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: Adjust for libexecdir changes
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
X-List-Received-Date: Thu, 25 Feb 2016 16:32:51 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 02/23/16 23:21, Khem Raj wrote:
> You can try to use github.com/kraj/meta-raspberrypi kraj/master
> I plan to test out more and more pending submissions on that branch

Thanks, and done.

It's too bad meta-raspberrypi didn't have a master-next branch :-)

