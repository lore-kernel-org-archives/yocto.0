Return-Path: <fredrik.markstrom@gmail.com>
Received: from mail-vb0-f49.google.com (mail-vb0-f49.google.com
	[209.85.212.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28D0AE014F5
	for <yocto@yoctoproject.org>; Sun, 10 Mar 2013 04:43:11 -0700 (PDT)
Received: by mail-vb0-f49.google.com with SMTP id s24so1220094vbi.8
	for <yocto@yoctoproject.org>; Sun, 10 Mar 2013 04:43:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=l8+IKmLc5rKL8XGshzBnaG4PSdu+9W4lsICcCQjYXs0=;
	b=g1dSYzw3mxtzzLP5sCepAUkvb5X/jqnV/8zHytj0tt7uuk/Bzij61xvYS4GmkDLVwG
	6HO9kWIaqnk7Ck6Qx+JRfQdHq41YhktG2COUZybQbwDY/QuDLswU9aU1V8Fo+//5BuTf
	ScaS47YyS73d40BjiDlQNu1JUV21+VfPz+xxK0mava+8kW4DQ9xXOJAcYOjdnUPHIXGt
	qC9YJs8Quw9Hr2x9AU9ztBt4Mda65yuqzi+8OhJgjDR94l9CtBSlGo2z6/xT8aXwrfDX
	HttvO+qMsrtUlMQrv5jiQEPIKoKR/klazw3i1Q4HjYgFog663YEXeVsii1l+5JxPlAky
	VGXg==
X-Received: by 10.220.142.71 with SMTP id p7mr3391296vcu.3.1362915790161; Sun,
	10 Mar 2013 04:43:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.59.9.227 with HTTP; Sun, 10 Mar 2013 04:42:40 -0700 (PDT)
In-Reply-To: <19F0379280417C4A8FE3BD23AA7298E501347DE7@EXMBX202A.mmeprod.cbeyond>
References: <19F0379280417C4A8FE3BD23AA7298E501347DE7@EXMBX202A.mmeprod.cbeyond>
From: =?ISO-8859-1?Q?Fredrik_Markstr=F6m?= <fredrik.markstrom@gmail.com>
Date: Sun, 10 Mar 2013 12:42:40 +0100
Message-ID: <CAKdL+dTL=d2LPEV7mLzaNQ1tLiffpP6+SpHBruXFdXLV0NKgYQ@mail.gmail.com>
To: David Mulder <dmulder@lasx.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can I disable RT throttling?
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
X-List-Received-Date: Sun, 10 Mar 2013 11:43:11 -0000
Content-Type: multipart/alternative; boundary=f46d0434bf0c8848fb04d7908f5c

--f46d0434bf0c8848fb04d7908f5c
Content-Type: text/plain; charset=ISO-8859-1

The RT-throttling can be disabled with:

echo -1 >/proc/sys/kernel/sched_rt_runtime_us
echo -1 >/proc/sys/kernel/sched_rt_period_us

But as mentioned in the other answers things like the system tick, ipi:s
etc. will interfere. But significantly less then the rt-throttling :)

/Fredrik

--f46d0434bf0c8848fb04d7908f5c
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr">The RT-throttling can be disabled with:<div><br></div><div><div>echo -1 &gt;/proc/sys/kernel/sched_rt_runtime_us</div><div>echo -1 &gt;/proc/sys/kernel/sched_rt_period_us</div></div><div><br></div><div style>

But as mentioned in the other answers things like the system tick, ipi:s etc. will interfere. But significantly less then the rt-throttling :)</div><div style><br></div><div style>/Fredrik</div></div>

--f46d0434bf0c8848fb04d7908f5c--
