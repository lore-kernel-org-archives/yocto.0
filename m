Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 090C1E00D32; Tue, 23 Jan 2018 14:26:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65C6FE006D3
	for <yocto@yoctoproject.org>; Tue, 23 Jan 2018 14:26:10 -0800 (PST)
Received: by mail-oi0-f50.google.com with SMTP id d124so1501089oib.13
	for <yocto@yoctoproject.org>; Tue, 23 Jan 2018 14:26:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=K+YG00lGjEkKjtR0jymL5VnZPBGKZ7T3stqYMz6jz58=;
	b=U0pUm84Wt3nAJIaMiZk9kIry9UPyoxfHGntDzhz43jGLFIkb0Ldf6L2TNf6xcT6y44
	wUx45RIpemO6XhphG0jVZ6mNRgnyu1v/KAfSRjt60MWUJ9VJEGTuta5BfjkFYxzVuJAy
	ekfs7aGygPihbhXELMlAQR0OhObfIsMlpq9ddtgmynOOXqg5q+Kmc0/2qSXKxYEmLtOb
	MHh3Rvi74cPVnqCqaNaQN4oaLFz7bIzK/X2FaCjf6pWA+Ii5h8hK2os6VWNwxALzLCaG
	7FWwE7UB7RZl5rw2yTsdvonSq0LygjjC/8ppoXvOibrsa33kpXNDUPZ5TkERQEl0eWxM
	YePg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=K+YG00lGjEkKjtR0jymL5VnZPBGKZ7T3stqYMz6jz58=;
	b=ZOXiW3l3Uk4biIETddBik05fbiRgyo0Cz8W5gkYsGoFyNl7+cJ6g9TVdwPhzLzspHD
	udya7vSfnw9u/qd69xuF+R70nIFGa6O0NVLP+lvgeS8CvdjTtGprejU4B9oziyb+/HnG
	WFS6t7w2znhGt5cON9KvJEMZCZpxDOZpJre8WSaSz7hZ0xDPDn2YwSYr4q8b2yLLVfwf
	2nTk9BU87KkFNKpFHeyrKe0Kzx1b8kn9IRfkToC8qfu9vrt1gDbWhdqUW0RcdYVaJhIs
	FLd23LnBcTMl/xi3saEIr83XRee0EIeNLaLN3944bQy5jtYyADGqb+IZE+Twoyp8TkPo
	msBQ==
X-Gm-Message-State: AKwxytdyy9HQeC/8O6GuU+y9yk7GqcXLg88rRKi8Bj//1or6QPNzDSG3
	/3mEYt3mYMwltQVT8smfk3GyBa8f
X-Google-Smtp-Source: AH8x225hxHMHqDmlh4nc8VEQF5Jbn8E8op/U/b6vNGU9wBQMRWlywddZtiBvGEL8paXLlF1W5I3mVw==
X-Received: by 10.202.180.133 with SMTP id d127mr7666435oif.328.1516746369676; 
	Tue, 23 Jan 2018 14:26:09 -0800 (PST)
Received: from [172.27.88.30] ([217.140.111.136])
	by smtp.gmail.com with ESMTPSA id t36sm657120otc.40.2018.01.23.14.26.08
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 23 Jan 2018 14:26:09 -0800 (PST)
To: yocto@yoctoproject.org
References: <CAJ2oMhK-aJoFPK3YiQQ53+t_QFw+gA2+Up9V_Lqj_u=UzbmRpQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <cfb32ebd-d092-3cb2-3b4a-1546ee3c17b9@gmail.com>
Date: Tue, 23 Jan 2018 16:26:08 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:58.0)
	Gecko/20100101 Thunderbird/58.0
MIME-Version: 1.0
In-Reply-To: <CAJ2oMhK-aJoFPK3YiQQ53+t_QFw+gA2+Up9V_Lqj_u=UzbmRpQ@mail.gmail.com>
Subject: Re: x11 and gstreamer compete on same display ?
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
X-List-Received-Date: Tue, 23 Jan 2018 22:26:12 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/15/17 9:39 AM, Ran Shalit wrote:
> Hello,
> 
> I use yocto x11 distro, and it works well with various application
> including qt5.
> On trying to use gstreamer, it seems that it does not function OK, I
> first suspected that it only has to do with high resolution, but now
> it seems that various distortions happens only in low resolution.
> 
> I suspect that x11 output compete with gstreamer output.
> I think that maybe most of embedded applications which use gstreamer
> probably used fb disro instead of x11 distro, and maybe that can
> explain why I did not find any information of this issue in internet.
> 
> I also see that when I stop the gstreamer pipeline , then x11 always pop in.
> I tried to disable x11 with:
> systemctl set-default multi-user.target
> 
> It seems to work find, but the xterm terminal show on the hdmi, and
> trying to kill it won't help.
> So, I guess that I better move to distro fb instead of distro x11.
> 
> I would like to ask if my suspicion sound reasonable, and if both x11
> and gstreamer compete on the same display ?

x11 would compose the output, so you might want to use that to display
video, do you have GStreamer plugins for X11 video output installed.

> 
> I use yocto morti with imx6.
> 
> Best Regards.
> Ran
> 


