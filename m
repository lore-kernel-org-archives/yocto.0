Return-Path: <paul.betafive@gmail.com>
Received: from mail-vc0-f169.google.com (mail-vc0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92598E014F3
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 05:59:54 -0700 (PDT)
Received: by mail-vc0-f169.google.com with SMTP id gd11so2866601vcb.0
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 05:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=KOnHkm/O8BI8YRBq/OSkGYsdgDUWs/bpgGwlF4kF/C0=;
	b=rZyvzOBvfwhI2vL7uMIiQrnR/+0T+m4+npXYIKlTxuQJllY0e56hw3c2SyId3ozQwV
	7IunNp3LN/uxmQhIraTarAYg1itwKaqimaWwJtzk5g5WT0zI00TEH2GpD9cHIiUUY16s
	3GIENuKhLHM9y+aVaec7BHbyfg8g2fenwNArqsmKD5bJQ6TliUtCBUdaHzTGw41zF9p0
	ViEgJMjX4t+PP48Md+T1dLZf8UTSAMwIOoxMy59jQHUhANRDCHcG5vPLLIwDoeNHWLlE
	aC7ULh5hwIQX8BtQbhKSO2DqpuukLBScwbscwkC4RUSCP5MLX0C8k9MpheNJK87dXXxc
	Nx5Q==
MIME-Version: 1.0
X-Received: by 10.52.88.2 with SMTP id bc2mr7687637vdb.27.1366894793597; Thu,
	25 Apr 2013 05:59:53 -0700 (PDT)
Sender: paul.betafive@gmail.com
Received: by 10.220.224.135 with HTTP; Thu, 25 Apr 2013 05:59:53 -0700 (PDT)
In-Reply-To: <CA+JN8xMvcoaLKufSeCLO21ozH542OG-uZSn8fDS0OVMGXkUNbw@mail.gmail.com>
References: <51788031.7080701@gmail.com>
	<CANyK_8fujLspj_VCZd5TY9x4A62m=WKhva3BavL91XzwY5Krgw@mail.gmail.com>
	<CA+JN8xMvcoaLKufSeCLO21ozH542OG-uZSn8fDS0OVMGXkUNbw@mail.gmail.com>
Date: Thu, 25 Apr 2013 13:59:53 +0100
X-Google-Sender-Auth: ybK2ZUrVA0vZHqWcbpKpjNeQML0
Message-ID: <CANyK_8dWFNWQ2UhHdQUPACfruFk9uSrUfpTVxJeNn2m3kAYX=A@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: Seth Bollinger <seth.boll@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/2] sdcard_image-rpi.bbclass: Fix error in conditional test
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
X-List-Received-Date: Thu, 25 Apr 2013 12:59:54 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 25 April 2013 13:51, Seth Bollinger <seth.boll@gmail.com> wrote:
> On Thu, Apr 25, 2013 at 7:38 AM, Paul Barker <paul@paulbarker.me.uk> wrote:
>>
>> '[[' should be a bash builtin. What host OS are you using for the build?
>
> I'm using debian.  I'll check what the default shell is.  You're right, it's
> probably dash.
>

Try 'sudo dpkg-reconfigure dash'.

> However, should this fail silently then?  In this instance I only saw the
> error with debug enabled.  Otherwise it silently tried to dd a compressed
> image to the sd card.  Of course this didn't run.  :)
>

I assume that 'if' tries to run the command, gets a non-zero return
value as the command doesn't run and just interprets this as the
command running but returning non-zero.

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

