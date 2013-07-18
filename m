Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f180.google.com (mail-ve0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0C65E01363
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2013 04:08:06 -0700 (PDT)
Received: by mail-ve0-f180.google.com with SMTP id pa12so2357522veb.25
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2013 04:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=LsOldR3kp7cHAuv9QhhAdAZtyzqSQxWp1Q7XVzydyzM=;
	b=LCEqwKJK98BpQkNQ2UwdahdZgrV8C30dVtT+igytpSKiOlubpPEDccvAKv3kL11AGF
	jG3xDn9PC9OX2sSGaMcbKLF3JtMgffn+1WlrZaWaePRVFDvhqaJhei0L60G2CJFMTlMP
	ryyQ6DYMZR6Jw0dNAVV9WA0fIZzAIp6JA+N/d9XFsIjd9b39QHaE6YXMUBj6S78BZW6/
	JfjVBQ5r84OUy7FiNyQSvTfUjMyBPs08q7XrP07AliEuW5Ql6RSK47xBIfuo4Ql7d6qp
	XBB9lyuaC8e8wTbq3QE0KoSq90rO3sZvjKvswWfrAbiy4yfxX6tqwYbjSPzGlngtugvg
	1iTA==
X-Received: by 10.58.127.202 with SMTP id ni10mr3689392veb.27.1374145685285;
	Thu, 18 Jul 2013 04:08:05 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.195.201 with HTTP; Thu, 18 Jul 2013 04:07:25 -0700 (PDT)
In-Reply-To: <CAHLvMfbsKb1gGPNxc9jprU0oDZDBtEVTp2sHyQOHgLDukdbXpQ@mail.gmail.com>
References: <CAHLvMfaELf9WAjgZJ_wLqGr1wv-wZK++5S27XYbs5ffu668ZRw@mail.gmail.com>
	<CAHLvMfaO2Ve+Z4D8_bKWSMAbskqwwJYjzLsVPvPy8z557Wesug@mail.gmail.com>
	<CAK18fxHz5rHig5tbLN4VjZAr6itpMUVmfem7bjYzbttbT6wN9g@mail.gmail.com>
	<CAHLvMfbsKb1gGPNxc9jprU0oDZDBtEVTp2sHyQOHgLDukdbXpQ@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Thu, 18 Jul 2013 12:07:25 +0100
X-Google-Sender-Auth: yd3jXWyXMtiuXgZFoeGAQV3-iMY
Message-ID: <CANyK_8exV4-B3sKZMrqCz5fabn-Fzn22v-9L16BywEHsQE2XbA@mail.gmail.com>
To: Rich Bayliss <richbayliss@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Network not working after first boot success
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
X-List-Received-Date: Thu, 18 Jul 2013 11:08:07 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 18 July 2013 11:55, Rich Bayliss <richbayliss@gmail.com> wrote:
>>>
>>> Is this a known issue? Does anyone have any ideas?
>>>

Could you try running 'ip addr' and 'ip link' instead of 'ifconfig'?
Just wondering whether they query information differently and might
show something else. The other place to look is in the output of
'dmesg'.

Does un-plugging and re-plugging the network cable (without running
'ifup' or 'ifdown') make any difference?

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

