Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 709F7E008BC; Mon, 20 Jun 2016 10:49:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f169.google.com (mail-pf0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CF5FE00815
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 10:49:11 -0700 (PDT)
Received: by mail-pf0-f169.google.com with SMTP id h14so41035979pfe.1
	for <yocto@yoctoproject.org>; Mon, 20 Jun 2016 10:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=uBeh1fOyP9PmEjHdjlNTbqjLIABUJDZJ7qPV/4Sgq+4=;
	b=o9KindSwPPuHPCXhI5j1z/ZzY4BuHOMuuNH76klBqqjEcPvScas29DJk9oOlqaqRRl
	fsZcgF0EDvYIB5NDpGVKONH4jMWYCgX4afL4W6fxamNG5b+WY4N8BgR4Yu56nJbkPR5B
	ggRgC/8coRIieIZ0eIKv7fjtQEBw60BDwQKWeBxODu+aD0NDT9YohipCvoWxhCYy12ku
	4TE0wG5FiKIBM0t/1SCAyDnvtqPVfnStP/W3koVOPCdEYzc0kRgWE9F4d8r4eLzFBmK+
	h85k+yjCySQAHO2CQEL1DazSLG6OZ7xew4ED7urDyWn77D+bSJ2idVQ/oDLxomM6bte/
	10Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=uBeh1fOyP9PmEjHdjlNTbqjLIABUJDZJ7qPV/4Sgq+4=;
	b=JRNXI1w10yo7RjE8exuTqfKqtFNYsKpS4o/m/iSoafD9hDTZJ3ueIi8yhyQtPIQFni
	vLvsWrAvW8VnWSc8x2YWliMArX9Br+fAWV0N725fC7wQbwTszqgNT5bfMPece+aot1GG
	TIkiUY3JxrIrkUbygNeAAGklumEsX1AJwKCgz6Xt1s9mimdnAw4tQXUmfTbAjen/Q+wS
	JXPIxcH7GMTOp8CFPz+Sjma1pjW+SiGNkOhnphoTuJbRJzQXk04rQAgoZm/SGKak37Du
	bHFvypoEpIAenpfxixkvJafhweM/SHqtKzpFw0MalmuBvjc+fvuTy5rtY1H6hnvWrMzG
	jkzA==
X-Gm-Message-State: ALyK8tIQ0Fz04PYq5eMkXxYTSOmppbHaKRPyqwA86FSeA1T9n9tgWa+UOGlM53lrktk1Cwty
X-Received: by 10.98.63.199 with SMTP id z68mr23454139pfj.41.1466444950954;
	Mon, 20 Jun 2016 10:49:10 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:fc7e:d93a:477d:88cc?
	([2601:202:4001:9ea0:fc7e:d93a:477d:88cc])
	by smtp.googlemail.com with ESMTPSA id
	qc16sm50431960pab.1.2016.06.20.10.49.10 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 20 Jun 2016 10:49:10 -0700 (PDT)
To: yocto@yoctoproject.org
References: <13986bd3-af12-4768-0a4c-78447c33c8b6@linuxfoundation.org>
From: akuster <akuster@mvista.com>
Message-ID: <57682C95.8040603@mvista.com>
Date: Mon, 20 Jun 2016 10:49:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <13986bd3-af12-4768-0a4c-78447c33c8b6@linuxfoundation.org>
Subject: Re: Patchwork users: Help test new version
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
X-List-Received-Date: Mon, 20 Jun 2016 17:49:15 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 06/20/2016 10:47 AM, Michael Halstead wrote:
> Hello,
> 
> OpenEmbedded is nearly ready to upgrade to a new version of Patchwork.
> The new version offers several new features that will allow OpenEmbedded
> to improve developer workflow and automated checks on incoming patches.


> 
> If you are a Patchwork user please visit
> https://patchwork-next.openembedded.org/ and take a look. If you find
> anything amiss please e-mail me directly and include patchwork in the
> subject line.

great. I will take a look.

> 
> Thank you for your help upgrading this important system!
> 

