Return-Path: <paul.betafive@gmail.com>
Received: from mail-vb0-f44.google.com (mail-vb0-f44.google.com
	[209.85.212.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC6D3E01565
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 10:07:14 -0700 (PDT)
Received: by mail-vb0-f44.google.com with SMTP id e13so1136100vbg.17
	for <yocto@yoctoproject.org>; Fri, 13 Sep 2013 10:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=fEWKQ6XCKOtzojIl2scZTdiv3ZjeAwMkTItQl1nliNI=;
	b=DFOfbbyU3PUAv/0eJS6E8/g86tMlX34kbRkKoKUL5b7MvZX1nzQFcj3NWxh2de0Xzf
	p899anuY0mSPkntMKGU9DkWLepc35Vop1cyQdLsaTSurJRABO1XgP8s+Q5Bld05B5q7V
	F8klof5wv5iNtFjfJ70L3nhyyZOwSKdv+KyHzoxS2UdxvOxdrQv74FV1GCF2xQwPf0hQ
	/z2JGqUWq2jC4k8psp4NQmtxjVlheVHjorCkWwyPfFovTAt9Oh5VKKWyiB7xEYFC7iec
	PZesyOaG6nlqsFCTdomSLdjgQgtLvr3k/+EUHx2P32Y4Dq4Sb3Ka+tMNlQtUS5saVuyN
	cSeg==
X-Received: by 10.220.169.203 with SMTP id a11mr2580412vcz.26.1379092033927;
	Fri, 13 Sep 2013 10:07:13 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.109.72 with HTTP; Fri, 13 Sep 2013 10:06:33 -0700 (PDT)
In-Reply-To: <CANyK_8edT=meYgopAMkSJvYUn-VNLYqZiDVmuqcNf=7dn-bRjw@mail.gmail.com>
References: <1378852594-13307-1-git-send-email-lists@philipp-wagner.com>
	<CANyK_8edT=meYgopAMkSJvYUn-VNLYqZiDVmuqcNf=7dn-bRjw@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Fri, 13 Sep 2013 18:06:33 +0100
X-Google-Sender-Auth: fwrhD1DECYZNtO8Q7M2IVa1pKk0
Message-ID: <CANyK_8c3uRru9_nf+r-6LmKzsMo1WrPrFT_E7WORienNoxWbUg@mail.gmail.com>
To: Philipp Wagner <mail@philipp-wagner.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 0/4] Refactor kernel recipes
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
X-List-Received-Date: Fri, 13 Sep 2013 17:07:15 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 11 September 2013 08:29, Paul Barker <paul@paulbarker.me.uk> wrote:
> On 10 September 2013 23:36,  <lists@philipp-wagner.com> wrote:
>> From: Philipp Wagner <mail@philipp-wagner.com>
>>
>> Hi,
>>
>> as follow-up to the discussion in
>> [yocto] [meta-raspberrypi][PATCH] linux-raspberrypi: Add version 3.8.13
>> I've refactored the kernel recipes a bit and included all discussed
>> kernel versions. The default is now 3.6.
>>
>> I've left linux.inc as-is, as this seems to be copied from meta-oe. Should
>> we include this directly instead of copying it here?
>>
>> Philipp
>>
>> Philipp Wagner (4):
>>   Refactor kernel recipes to reduce code duplication
>>   Remove tabs from recipe
>>   Make Linux 3.6 the default for Raspberry Pi
>>   Add kernel 3.8 and 3.11 for Raspberry Pi
>>
>>  conf/machine/include/rpi-default-providers.inc   |   3 +
>>  recipes-kernel/linux/linux-raspberrypi.inc       |  34 +++++
>>  recipes-kernel/linux/linux-raspberrypi_3.11.0.bb |   6 +
>>  recipes-kernel/linux/linux-raspberrypi_3.2.27.bb |  33 +----
>>  recipes-kernel/linux/linux-raspberrypi_3.6.11.bb |  33 +----
>>  recipes-kernel/linux/linux-raspberrypi_3.8.13.bb |   6 +
>>  recipes-kernel/linux/linux.inc                   | 174 +++++++++++------------
>>  7 files changed, 140 insertions(+), 149 deletions(-)
>>  create mode 100644 recipes-kernel/linux/linux-raspberrypi.inc
>>  create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.11.0.bb
>>  create mode 100644 recipes-kernel/linux/linux-raspberrypi_3.8.13.bb
>>
>> --
>> 1.8.1.4
>
> Testing this now with PREFERRED_VERSION_linux-raspberrypi = "3.8%".
>

Builds and boots happily.

Tested-by: Paul Barker <paul@paulbarker.me.uk>

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

