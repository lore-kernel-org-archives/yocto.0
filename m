Return-Path: <paul.betafive@gmail.com>
Received: from mail-vb0-f50.google.com (mail-vb0-f50.google.com
	[209.85.212.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDA61E006F9
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 13:17:43 -0700 (PDT)
Received: by mail-vb0-f50.google.com with SMTP id w16so113545vbb.9
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 13:17:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=YGyi/HLY9BrSEimcFcbe2tYOhbfcW5CHiYb5yDES30k=;
	b=wJ/mt7d1smd1IXqH9u3iFN1B5YbyetWS1d4+CpcXSx9iDyAMREbzT8NqC17A7ECVBv
	TCnGgV5e1Qyc8Z5CCeQ6Hkycw75eHJg3vdNYYkaiq8lR76vmFylYPNEW5QMk41ii6JfW
	w3Omed8jP/Now9IiOB4qbQxV5F0NvmA2xU08k4kIRU4NukQ/DwWRJ4LErYLox9k7Br61
	f5EORItzTVE+eiRMSQXVgmOyGbREHcpmCMNcvUFMJPoRuRiI93LiqHe+f50E5OYgfnhg
	E4rjj673erEtLMhCAIEmQRuEOVOQWqN9xWvIb7K+08JIbZCuS0FU8Bo4geRiscJt9UUk
	BheQ==
MIME-Version: 1.0
X-Received: by 10.52.88.2 with SMTP id bc2mr1862919vdb.27.1366661863055; Mon,
	22 Apr 2013 13:17:43 -0700 (PDT)
Sender: paul.betafive@gmail.com
Received: by 10.220.224.135 with HTTP; Mon, 22 Apr 2013 13:17:42 -0700 (PDT)
In-Reply-To: <CAK18fxGrJ+9+-OzgOA9VRj34=_jV2nhiPQA_w3yjjGzAjHqBaQ@mail.gmail.com>
References: <alpine.DEB.2.02.1304190932010.4968@oneiric>
	<20130419135843.GH2489@jama>
	<alpine.DEB.2.02.1304191016030.5451@oneiric>
	<20130419142509.GJ2489@jama>
	<alpine.DEB.2.02.1304191038530.5636@oneiric>
	<CANyK_8ehX8Bsgd35pvx54EGeCG6=WLBoDFV0h=5Suz3uXPyREw@mail.gmail.com>
	<51716F8F.2080408@linux.intel.com>
	<CANyK_8dNtrKOT=dqueYHBTUPm6scULOO-qAURY41hZdzeX_yqA@mail.gmail.com>
	<CAK18fxGrJ+9+-OzgOA9VRj34=_jV2nhiPQA_w3yjjGzAjHqBaQ@mail.gmail.com>
Date: Mon, 22 Apr 2013 21:17:42 +0100
X-Google-Sender-Auth: EurGBJdWatef_-CZ5EJ1ztwBME4
Message-ID: <CANyK_8fRvO6VVJwmVXZM=ro_tXR-9DAnKUG+-qZ=CZ3jDY9VGw@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] Fix FILESEXTRAPATHS, dir is "netbase-5.0"
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
X-List-Received-Date: Mon, 22 Apr 2013 20:17:44 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 20 April 2013 21:35, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Sat, Apr 20, 2013 at 4:05 PM, Paul Barker <paul@paulbarker.me.uk> wrote:
>>
>> So I'd recommend dropping these from meta-raspberrypi completely. Just
>> my opinion though, anyone else got any thoughts on this?
>>
>
> Hello guys. Probably dropping would be the best thing here. I don't think
> that the issue is reproduced anymore with netbase on rpi. If you submit
> patch I can give it a try.
>

I've thrown a patch together, will send it to the list. Not sure if
you want to elaborate on the commit message a little though before it
goes into the main repo, I'm not quite up to speed with the history of
some of these recipes.

(I must learn to check my reply/reply-all selection!)

Thanks,

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

