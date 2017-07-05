Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B8AAE00BE8; Tue,  4 Jul 2017 23:33:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.179 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
Received: from mail-pf0-f179.google.com (mail-pf0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9677E00BE0
	for <yocto@yoctoproject.org>; Tue,  4 Jul 2017 23:33:22 -0700 (PDT)
Received: by mail-pf0-f179.google.com with SMTP id q86so124706614pfl.3
	for <yocto@yoctoproject.org>; Tue, 04 Jul 2017 23:33:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language;
	bh=/kia7P35XaB6x5XKQeZ/2UJ7d81Eqb9l54ZWcjg4duM=;
	b=TOtlT8d7x6kZuTb/r6iP6o5wFOZlh6etAGXTn3MEPLpPPWnE7ekikuHu7KGdJkbIyG
	gpCCYZnNTYWSstnucezRM7YP6fm4IjbolyRF1DVdUWNqNqNYYzW4IZlattSpZzsA0a99
	dj2zxpBxRk8GYZz4BuhTl3VJxuq1uKxsQlPhUNsrKw/4Bzpk56YxTJBJ4E8ezYK2hGY4
	giNe5BhYuxXIxkeGtO+KLpwByok1xJOTudDCOKopulyiJ0r94SpjBsTzFTPTD/oB4u33
	6Y35Ku8kcYZ5W0gE3X25hNUoRzGqWQiwrku4NAO9yPyrJzg3iwZJvDERITvH7t4eJ9SG
	kYDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language;
	bh=/kia7P35XaB6x5XKQeZ/2UJ7d81Eqb9l54ZWcjg4duM=;
	b=fGjbTyZbJyJwzE1VXb4jv9U5d7ivayRiR4msYjBeQGzl+mYgkBsZ0vAGts//5IVENp
	ukuYzCko0wjdlYLk9OW47AAlyHtm71noDtDV1UAJI+cQHdooYK9fPesaQvwF4DMorfJq
	Sm9OmOBmYucjgePisuwoGChN7b+fTp9Q8l8ZyqNoyimn6IteYnaQg7XaFyvTWdDyfmZx
	Bk2afpt/kVtYSoPLBy2PitYHcBSwmUNYztrzTApaalkBJiV70C/2veRCLtmrYO+b2dzn
	iCHdTM47I2jgy3h+3OFvllovmC2kc7BRtGbRQc+4kRN6a3d9sQs/C3hN5PifbFvEF+Jy
	FyOA==
X-Gm-Message-State: AIVw110ir8rwaOTJdigX2SWvj/WM6J6BS+upFg9wPdiewGsWD2RRSL/M
	+Jdn601YypzHwSIE
X-Received: by 10.84.132.44 with SMTP id 41mr17045335ple.204.1499236402047;
	Tue, 04 Jul 2017 23:33:22 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:8c94:2d3e:fbf5:a0d8?
	([2001:8003:804a:b500:8c94:2d3e:fbf5:a0d8])
	by smtp.gmail.com with ESMTPSA id
	p65sm47963922pfj.8.2017.07.04.23.33.20 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 04 Jul 2017 23:33:21 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <60224c35-9933-9ad5-5b1e-fd9c86bd3863@gmail.com>
Date: Wed, 5 Jul 2017 14:33:18 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
Subject: SPI0 dev loop back = 000 ? why ?
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
X-List-Received-Date: Wed, 05 Jul 2017 06:33:26 -0000
Content-Type: multipart/alternative;
	boundary="------------B99374BEE26A1D2145423232"
Content-Language: en-US

--------------B99374BEE26A1D2145423232
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hello Yocto Team Member,

I tried to compile spidev_test  on loopback ,but got 0000, why is it ?? 
I checked all the cable and /dev/spidev1.0, they're all there ??

spi mode: 0
bits per word: 8
max speed: 2400000 Hz (2400 KHz)

00 00 00 00 00 00
00 00 00 00 00 00
00 00 00 00 00 00
00 00 00 00 00 00
00 00 00 00 00 00
00 00 00 00 00 00
00 00

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
Kind regards,
Riko Ho
/*******/

*

--------------B99374BEE26A1D2145423232
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hello Yocto Team Member,</p>
    <p>I tried to compile spidev_test  on loopback ,but got 0000, why is
      it ?? I checked all the cable and /dev/spidev1.0, they're all
      there ??<br>
    </p>
    <p>spi mode: 0<br>
      bits per word: 8<br>
      max speed: 2400000 Hz (2400 KHz)<br>
      <br>
      00 00 00 00 00 00 <br>
      00 00 00 00 00 00 <br>
      00 00 00 00 00 00 <br>
      00 00 00 00 00 00 <br>
      00 00 00 00 00 00 <br>
      00 00 00 00 00 00 <br>
      00 00 <br>
      <br>
    </p>
    <div class="moz-signature">-- <br>
      <b>
        <p style="color:blue;"> /*******/<br>
          Sent by Ubuntu LTS 16.04,<br>
          Kind regards,<br>
          Riko Ho<br>
          /*******/<br>
        </p>
      </b></div>
  </body>
</html>

--------------B99374BEE26A1D2145423232--
