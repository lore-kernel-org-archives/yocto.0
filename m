Return-Path: <paul.betafive@gmail.com>
Received: from mail-vc0-f178.google.com (mail-vc0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DDFBE01525
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 06:03:45 -0700 (PDT)
Received: by mail-vc0-f178.google.com with SMTP id ib11so2789508vcb.37
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 06:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=va89ibYRqcUwE3nO7/QyXBnYLs35Iif/zwFG+1b9MBg=;
	b=DaaL/T66uHwWoKRJF7gai16CyTy2ZuPk09R6Zv6pWckh6s4sazIP5OYKqDmm3PAlZ5
	7hRfSdY1Zew2VNayZrgvzVWdZWte8jij0zJskLhk9+bkc0tdVNnXUpts6Su7OBS3vHN0
	Y7eY/LViuatdvmPQGHQd6GP9a7KlXTFbuJwnPBzrso18TBmufgBkhHd/6YhvZ0uRGshG
	2QYqSQBEYHc2iQtxx5QYTpodKelue8lhYHHlEf2OFxiD3dApOt+gRfphJr43TlTrC4fQ
	b8m+VYhI3yyA2jTc/duRbt6pIBWQzPGYupfv1lGS9bL8xUEL3AgrDfvO/u7yyhLg6imc
	94iw==
MIME-Version: 1.0
X-Received: by 10.220.167.9 with SMTP id o9mr26912892vcy.25.1366895024434;
	Thu, 25 Apr 2013 06:03:44 -0700 (PDT)
Sender: paul.betafive@gmail.com
Received: by 10.220.224.135 with HTTP; Thu, 25 Apr 2013 06:03:44 -0700 (PDT)
In-Reply-To: <CA+JN8xOs5YL+vdtJz8ZtqCvUNVi7UO=++grHtx26n2iEpGXbGg@mail.gmail.com>
References: <51788033.9010908@gmail.com>
	<CANyK_8fpnN8C6-vZPyFmGx5U3_ySRQp7twsXcKO4utz+WWc2EQ@mail.gmail.com>
	<CA+JN8xOs5YL+vdtJz8ZtqCvUNVi7UO=++grHtx26n2iEpGXbGg@mail.gmail.com>
Date: Thu, 25 Apr 2013 14:03:44 +0100
X-Google-Sender-Auth: jG10qWqBiVOhmR1z9Hdi4DVAPPs
Message-ID: <CANyK_8efmMZwTde9tivSDcnUmo2XtZiQ6JTv6oFDbFJTmhp3tw@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: Seth Bollinger <seth.boll@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 2/2] sdcard_image-rpi.bbclass: Copy startup files required for 16MB GPU operation.
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
X-List-Received-Date: Thu, 25 Apr 2013 13:03:45 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 25 April 2013 13:57, Seth Bollinger <seth.boll@gmail.com> wrote:
> On Thu, Apr 25, 2013 at 7:51 AM, Paul Barker <paul@paulbarker.me.uk> wrote:
>>
>> Trying to apply this email I get:
>>
>>     Applying: sdcard_image-rpi.bbclass: Copy startup files required
>> for 16MB GPU operation.
>>     fatal: corrupt patch at line 14
>>     Patch failed at 0001 sdcard_image-rpi.bbclass: Copy startup files
>> required for 16MB GPU operation.
>>
>> Trying to apply the attached patch I get:
>>
>>     Patch format detection failed.
>>
>> Are you using 'git send-email'?
>>
>> However, I can apply this after fixing the attached patch file by
>> hand, giving it a test now.
>
>
> I run git format-patch and then copy the text into the email and attach the
> patch.  I apologize for the trouble.  Richard complained of whitespace
> problems in my last patches so I'm trying to alleviate this problem.  :)
> I'll see if I can't get gmail set up on my vm so I can use git send-email.
>
> Seth

Somehow a leading '>' crept into the attached patch.

Almost all mail clients ruin patches, maybe take a look at
https://coderwall.com/p/dp-gka for using 'git send-email' with gmail.

If you don't want to clog the list with attempts which might not work,
send a few test patches to me and i'll let you know if they work.

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

