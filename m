Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12733E00CC8; Tue,  1 Mar 2016 14:17:50 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C41AEE00C9E
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 14:17:44 -0800 (PST)
Received: by mail-wm0-f45.google.com with SMTP id l68so58868457wml.0
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2016 14:17:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=yjMDKG+7s+J+Y8wmGvwlfMz/Goi/WfD44KYKeLeSVUE=;
	b=LMymFpJlJGJAb5XMVNxjgv9KWp3A8/VAi4ylhm10s6WJkIsbT3u91JRw0HnOCM5LYX
	EtILrOK1WVX+QkJaHFAqQk6DrKGrcJDOHbLfSfNmB0gF0SxsXkSX5UoQACCXjthLHb0O
	3QJunHKv3eQ56k67aKe1wKk1TqQtcCreXz5C9e0RWg7lQe6xJ9iFHqLyXmMBUug+0Gd+
	876QDLgfRjSfK23QZGT9RBLdiBV+mDqzIUNF+DHmH6dGVzRIgTQehfQbf35u8rrIzjc+
	2Wxms6IvmNpDPVou/0wITcY27wjOjM88WxOQX9D4w1gzTZPve6xryLRbk2IE4MEsXp7o
	+AQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=yjMDKG+7s+J+Y8wmGvwlfMz/Goi/WfD44KYKeLeSVUE=;
	b=mw+1Zp2a4zFcGRi4eAeGJ+talEIZyob0wPO79jcES6WIdkwwS8KRjf9D0WAW5Qsip1
	B6eZsV89fWpecspecb/JXpHPnCSvqtUCRfbasI+v0KWRrSA6CE0FqnAaHxKWNgvjLnnW
	t+Vm1duUZRSivmQOl5ePDOjlMFqrmLAVGC+3eHjBMySPDObzjdP4labzAAxYqbxbDJP3
	B+bSXuhCW2wyeL0CI9LpX5cZ8nVi99o1pBVkVvud+HhSHKLp0yLedW5c4SP5VulpBgl/
	ADwKlM6hQGqhvuc3zhN6fZRFdeXkpM5+azY4V/EaG1WyIG/f0WVWS/0p/foMCuSQoc3I
	E40Q==
X-Gm-Message-State: AD7BkJIzE0DbOcap1zKKGvVN2WsmACqiJVp10f3NId5sC7XJymRK/MyOTaVMQX3dLNwgbgFuoq5loF+/YXuXKQ==
MIME-Version: 1.0
X-Received: by 10.28.179.7 with SMTP id c7mr1366559wmf.46.1456870664282; Tue,
	01 Mar 2016 14:17:44 -0800 (PST)
Received: by 10.28.126.135 with HTTP; Tue, 1 Mar 2016 14:17:43 -0800 (PST)
X-Originating-IP: [83.137.1.195]
Received: by 10.28.126.135 with HTTP; Tue, 1 Mar 2016 14:17:43 -0800 (PST)
In-Reply-To: <56D5E155.1090209@jenslucius.de>
References: <CAP2S6e6T3LqwAaFF-cn7eUY4Y5QbiYy0Ej_LSZtbuF3GRomkLg@mail.gmail.com>
	<56D5E155.1090209@jenslucius.de>
Date: Tue, 1 Mar 2016 23:17:43 +0100
Message-ID: <CAK18fxGoP=a_J6zpxribBDbtw5cEpqqxB2WKH1bXFjC7OYp5Ow@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jens Lucius <incnews@jenslucius.de>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-chip] How to flash yocto's output into CHIP
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
X-List-Received-Date: Tue, 01 Mar 2016 22:17:50 -0000
Content-Type: multipart/alternative; boundary=001a11452e4c6dba27052d0422db

--001a11452e4c6dba27052d0422db
Content-Type: text/plain; charset=UTF-8

On 1 Mar 2016 19:45, "Jens Lucius" <incnews@jenslucius.de> wrote:
>
> Hi
>
> There is a pull request for the meta-sunxi layer. Maybe this would be a
good starting point?
>
> https://github.com/linux-sunxi/meta-sunxi/pull/126
>

That looks like duplicated work with meta-chip... Hm...

> Regards,
>
> Jens
>
>
> Am 23.02.2016 um 21:09 schrieb Valentin Le bescond:
>>
>> Hi,
>>
>> I'm wondering if anyone managed to flash the CHIP board with a
(successful) yocto image build.
>>
>> I didn't succeed but here are the few things I found :
>>
>> Comparing the files expected in CHIP-tools/ and the ones available in
Yocto deploy/image/chip/ I see some are missing in yocto :
>> uboot-env.bin
>> sunxi-spl-with-ecc.bin
>>
>> I tried using the ones downloaded with chip-update-firmware.sh but it
doesn't work...
>>
>> While flashing, at some point, the chip (in FEL mode) disconnects the
USB connection. If it goes well the chip reconnects as a ttyACM0. If it
doesn't go well (which is my case), chip never shows up !
>>
>> If anyone managed to get the thing working please let me know. If not I
am willing to try any idea you may have.

--001a11452e4c6dba27052d0422db
Content-Type: text/html; charset=UTF-8

<p dir="ltr"><br>
On 1 Mar 2016 19:45, &quot;Jens Lucius&quot; &lt;<a href="mailto:incnews@jenslucius.de">incnews@jenslucius.de</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi<br>
&gt;<br>
&gt; There is a pull request for the meta-sunxi layer. Maybe this would be a good starting point?<br>
&gt;<br>
&gt; <a href="https://github.com/linux-sunxi/meta-sunxi/pull/126">https://github.com/linux-sunxi/meta-sunxi/pull/126</a><br>
&gt;</p>
<p dir="ltr">That looks like duplicated work with meta-chip... Hm...</p>
<p dir="ltr">&gt; Regards,<br>
&gt;<br>
&gt; Jens<br>
&gt;<br>
&gt;<br>
&gt; Am 23.02.2016 um 21:09 schrieb Valentin Le bescond:<br>
&gt;&gt;<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; I&#39;m wondering if anyone managed to flash the CHIP board with a (successful) yocto image build.<br>
&gt;&gt;<br>
&gt;&gt; I didn&#39;t succeed but here are the few things I found :<br>
&gt;&gt;<br>
&gt;&gt; Comparing the files expected in CHIP-tools/ and the ones available in Yocto deploy/image/chip/ I see some are missing in yocto : <br>
&gt;&gt; uboot-env.bin<br>
&gt;&gt; sunxi-spl-with-ecc.bin<br>
&gt;&gt;<br>
&gt;&gt; I tried using the ones downloaded with chip-update-firmware.sh but it doesn&#39;t work...<br>
&gt;&gt;<br>
&gt;&gt; While flashing, at some point, the chip (in FEL mode) disconnects the USB connection. If it goes well the chip reconnects as a ttyACM0. If it doesn&#39;t go well (which is my case), chip never shows up !<br>
&gt;&gt;<br>
&gt;&gt; If anyone managed to get the thing working please let me know. If not I am willing to try any idea you may have.</p>

--001a11452e4c6dba27052d0422db--
