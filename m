Return-Path: <jefro.net@gmail.com>
Received: from mail-la0-f50.google.com (mail-la0-f50.google.com
	[209.85.215.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2593DE00715
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2013 18:33:35 -0700 (PDT)
Received: by mail-la0-f50.google.com with SMTP id dy20so4316310lab.9
	for <yocto@yoctoproject.org>; Mon, 08 Jul 2013 18:33:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=uKPTGIIRPHpVS1jfe+cCPMV7PRJ5RdKkrA4NfaoyxjU=;
	b=0SYSG9xnUc1n4k7Ojb3e0+mLwU62mdXsT8+5COdNDoytF83F/Iuk0D6QWNLn+8r9zJ
	GO0RrFIjOVL9lGw9Qb8d6LDiLY7reda3Z+Mf4jjfl9rxN8KFGO8isCiPXsEbfXMR2vio
	prhgCHlrMIV7iaIXHhnwOmyAGS2m81ir97d2Ll9gzUBzbOCFrKMfpqiUfNkVH4TwGMv0
	KjghKYMSL9BWGxyOP9ulIr/o1kqtCZodXLHTVqY/BRScTt3/b8H5urOoX51mM00N4yTL
	XhvCLVfvyJU8ig7T73TgK11KfKdA6t4vK3xAL8ikS8JSEUOvwcl8uQfylKGlVx8M1wYu
	FL3g==
X-Received: by 10.152.88.5 with SMTP id bc5mr11432367lab.81.1373333613687;
	Mon, 08 Jul 2013 18:33:33 -0700 (PDT)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.112.30.146 with HTTP; Mon, 8 Jul 2013 18:33:13 -0700 (PDT)
In-Reply-To: <DUB116-W73285008B0CC36C2A0AD7D987C0@phx.gbl>
References: <DUB116-W8529D2D1871A90B56A5591987C0@phx.gbl>
	<DUB116-W73285008B0CC36C2A0AD7D987C0@phx.gbl>
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Mon, 8 Jul 2013 18:33:13 -0700
X-Google-Sender-Auth: q2hHKwQPXAbR6vTYHqQp-KASKj4
Message-ID: <CA+YB3ra1gO-bEVbk+AYBMUz+JryU_cCk8y3mJxGcoz81khRE7g@mail.gmail.com>
To: Thanassis Silis <djnass_18@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FW: [meta-freescale] serial port timeout before expected # of bytes arrives
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
X-List-Received-Date: Tue, 09 Jul 2013 01:33:36 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Thanassis - if there is no reply here, you might try joining and
posting on the meta-freescale mailing list
(https://lists.yoctoproject.org/listinfo/meta-freescale)

On Thu, Jul 4, 2013 at 7:24 AM, Thanassis Silis <djnass_18@hotmail.com> wrote:
>
>
> ________________________________
> From: djnass_18@hotmail.com
> To: meta-freescale@yoctoproject.org
> Date: Thu, 4 Jul 2013 13:40:10 +0000
> Subject: [meta-freescale] serial port timeout before expected # of bytes
> arrives
>
> Hello everyone,
> I am trying to port an application that is receiving/sending data through
> the serial port.
> On the sabrelite board that is the /dev/ttymxc0 port, ie the 2ndary serial
> port (the primary being /dev/ttymxc1).
>
> I am using the functions select() and read() to read from the serial port ,
> in order to implement a timeout mechanism that is waiting for a few seconds
> for bytes to arrive and if should they not arrive, then the timeout is
> reached.
>
> The receiving loop works like this:
>
> I wait for 2 bytes - the opcode of the command.
> Once I resolve a code, I wait for 4 bytes designating the length of data
> that will follow (depending on the command)
> I create a buffer in my application of size equal to the length I received
> above.
> I start receiving the data.
>
>
>
> Note that I have implemented reception of the data in 2 ways (since the 1st
> way used to work, it was tried as is. Then, I tried the next as well):
>
>
>
> a)receive my data using a for loop, reading() one byte at time. until all
> the expected bytes arrive , or a timeout is reached.
>
> b)receive my data using a while loop where I ask for all the remaining bytes
> to be read(). Read() returns how many bytes have actually arrived, so I
> update the remaining Bytes and re-read(). Again if a select() times-out
> without any data arriving, the loop will exit.
>
>
> Now, my problem is that while applications seem to be using this port
> without any problem (f.e. minicom, rx, cat /dev/ttymxc0, echo "something" >
> /dev/ttymxc0 ) , through the application I get timeouts for any file that is
> bigger than 3-4kBytes.
>
>
> Say I am trying to send a file 138kB. I may fail at byte ~40k, ~56k, or even
> ~12k. This is very weird. And I don't know what to assume is going wrong.
> Slow processing on the local end seems to not be a problem, as I can read
> (in (b) above) approx 58 bytes in the beginning and then 1 byte at a time.
> Could it be the memory buffer? If yes, how can I increase its size? Could
> another application be interfering with /dev/ttymxc0?
>
>
>
> I am running fsl-image-test with all -dev, -sdk & -dbg options enabled.
>
>
> Thank you for your help.
>
>
>
>
>
>
>
> _______________________________________________ meta-freescale mailing list
> meta-freescale@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/meta-freescale
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
Jeff Osier-Mixon http://jefro.net/blog
Yocto Project Community Manager @Intel http://yoctoproject.org

