Return-Path: <paul.betafive@gmail.com>
Received: from mail-vb0-f51.google.com (mail-vb0-f51.google.com
	[209.85.212.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 776EEE0141F
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 09:30:35 -0700 (PDT)
Received: by mail-vb0-f51.google.com with SMTP id x17so8382524vbf.10
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 09:30:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=IzypzdaU+zsPA/4W9mTQCT3tuX2mxjQsUAGHG2hZvXs=;
	b=QogXACM3TK8pkra1nBoAbl69dzEwrDCcXQq3pHAqjIISAKf84oJ4O5kXt4VNjFvuoT
	FLlGe/OS/8s7vLq5GhIEsfRl9PaO9pQMYyS2ScSLXlX3eGFCZhOBh/5fz5S+jmu+e8Rz
	Qg1/V1IUpRZ/7yxIMsMOA1RoI/WytDtKgOeedSNYLF9jQfRgM3Ysyu1xLP8U/fgrcd2x
	bnFJV5x1axA2+dpiP5ceokCHfaUKvYBgw2sFrwexUy//SS0oBh3vRRU24DKrefIxP6fl
	0L7cU1FW/lYzjeW6s47G5ODg64RLU0/Q7d4YT4JdzJEPrgpJtzJJi2K5R4uYtFgs7KF9
	FyUg==
X-Received: by 10.220.250.147 with SMTP id mo19mr11657662vcb.79.1372091435032; 
	Mon, 24 Jun 2013 09:30:35 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.195.201 with HTTP; Mon, 24 Jun 2013 09:29:54 -0700 (PDT)
In-Reply-To: <51C871A2.4030709@windriver.com>
References: <CAFyqS9q5Z283rVhuDkdM4AUGeyEdfvUqJjj4qG3diVf83JY6Tg@mail.gmail.com>
	<51C871A2.4030709@windriver.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Mon, 24 Jun 2013 17:29:54 +0100
X-Google-Sender-Auth: 10whllT0goBtsQ4-B_MeU-Vj6x0
Message-ID: <CANyK_8c=tZggF+KzGmkh=AHNpVMXnepRwZwZVnnurNm3RR=f_Q@mail.gmail.com>
To: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: linux-libc-header version mismatch?
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
X-List-Received-Date: Mon, 24 Jun 2013 16:30:37 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On 24 June 2013 17:19, Bruce Ashfield <bruce.ashfield@windriver.com> wrote:
> On 13-06-24 11:59 AM, Hans Beck=E9rus wrote:
>>
>> Hi. We are using a 3.6 based kernel in our builds using a custom
>> kernel recipe. However, I can see that the linux-libc-headers built
>> but based on a 3.8 kernel?
>> Is this really how it should be? Are we supposed to also make a custom
>> recipe for the linux-libc-headers? The image seems to be executing
>> fine but I am a bit worried about the version mismatch :(
>
> Summary: you can match them if you want, but we are testing across
> several kernel versions and haven't found any issues (yet).
>

Just to point out - this is pretty common across linux distros as
well, otherwise all your software would have to be re-built every time
you updated the kernel.

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

