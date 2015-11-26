Return-Path: <dariusz.pelowski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9942CE00C18; Thu, 26 Nov 2015 12:01:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dariusz.pelowski[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f42.google.com (mail-lf0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17AD2E00BFF
	for <yocto@yoctoproject.org>; Thu, 26 Nov 2015 12:01:18 -0800 (PST)
Received: by lfaz4 with SMTP id z4so107937438lfa.0
	for <yocto@yoctoproject.org>; Thu, 26 Nov 2015 12:01:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=pGvogGik9/49xiwDhkfVOU3MJVnBO454gaLhs8MynQY=;
	b=YF5m9KJOXeEzKOG80uqSABG5bzPlnI5/YUf+SifZ1xWc31i4BOP2BaFKmkpJDWAHVS
	Ek8QuTQgS90Ej5i5k/Jv23yx30m2VJapgQsbnvznzZkucxjv9lvH5ojZ143ITiofFWFr
	XQ+INTGfhg5MOIOfqR+TU+9qUw+DtlKcgHGanOB7NCD8L3YFZL56Le8yeKl7/AFAZtmZ
	6GFe8jBXl5kZKS+Udej+kzbZ4pW9oi2r/3bVs72YlzpCF+82bSqc6N0Zqeq/CHDArkYW
	WpnlRrH1YijbW6qg2TFkdMM7ff1WpnoYAaw/kiyXtk3SJNXs/kYzUYgGSKAf8LHULU4D
	BFfA==
X-Received: by 10.25.151.133 with SMTP id z127mr17698609lfd.105.1448568077400; 
	Thu, 26 Nov 2015 12:01:17 -0800 (PST)
Received: from [192.168.1.195] (user-5-173-122-149.play-internet.pl.
	[5.173.122.149]) by smtp.googlemail.com with ESMTPSA id
	re5sm4315538lbb.22.2015.11.26.12.01.16
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 26 Nov 2015 12:01:17 -0800 (PST)
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>,
	yocto@yoctoproject.org
References: <CAJ73Ay5nUUdU7BO2dQQF0ToEiuzX1cxd6nMWHvtZmoHfu32X_Q@mail.gmail.com>
	<56574564.7030909@linux.intel.com> <56575922.904@gmail.com>
	<56575E79.3050904@linux.intel.com>
From: Dariusz Pelowski <dariusz.pelowski@gmail.com>
Message-ID: <5657650B.9010804@gmail.com>
Date: Thu, 26 Nov 2015 21:01:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <56575E79.3050904@linux.intel.com>
Subject: Re: Failing devshell
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
X-List-Received-Date: Thu, 26 Nov 2015 20:01:47 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

> You are right. have you done some testing in non-gnome terminals using 
> your patch?
>

Yes, all terminals using check_terminal_version() function works 
correctly on my system (Konsole: 15.08.0; tmux 2.1)


