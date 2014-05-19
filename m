Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF6A7E00BEF; Mon, 19 May 2014 04:25:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.1 DKIM_SIGNED Message has a DKIM or DK signature,
	not necessarily *      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.178 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 1212 seconds by postgrey-1.32 at yocto-www;
	Mon, 19 May 2014 04:25:48 PDT
Received: from mail-wi0-f178.google.com (unknown [209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9ACA5E00BE6
	for <yocto@yoctoproject.org>; Mon, 19 May 2014 04:25:48 -0700 (PDT)
Received: by mail-wi0-f178.google.com with SMTP id cc10so1305463wib.11
	for <yocto@yoctoproject.org>; Mon, 19 May 2014 04:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=iDtHjh5ggmxjXD7Jc5v3mxPHGVtDgq7E+wrbpX3BwDw=;
	b=LoafbvQG/3+/2ihoWNVJtztwEquLoYjrwjHtujYzx/xFsMW5X+seLJFPKLSE0jJ81M
	7dAnNlSkdFA8fiTsc2/37YSkr/phI0a27eNiz7JdmP1iTbfQ4IksvSrhs6Jh0mNsmSRH
	lS/sYDOpKqV13SqExxNieqeNTB8h1lXz/u+HSpizAjRJ/rRlM4I3lsItzGeAaqv7kphS
	k4eRyIR6b1Y/BQtelr74zrY6qtApCHvSyjmKq9FOR7YxSTAo/9zVXHWCOP7Kq/9uJFpO
	fjW2TqF3iDo5j5gJTQ8W/M0CeZ3VbtEdV8sWym78hKpJqiKdR7aLqo+NVixp0yK/Pji2
	IAeg==
X-Received: by 10.180.72.179 with SMTP id e19mr12104120wiv.61.1400497041724;
	Mon, 19 May 2014 03:57:21 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.194.38.129 with HTTP; Mon, 19 May 2014 03:56:41 -0700 (PDT)
In-Reply-To: <llcj8i$cfi$1@ger.gmane.org>
References: <llcim8$3rn$1@ger.gmane.org>
	<CAJTo0Laf+EEiBAcmKwtU08LLPYynDavNbfuC3TaGKLe2oBtR+w@mail.gmail.com>
	<llcj8i$cfi$1@ger.gmane.org>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Mon, 19 May 2014 11:56:41 +0100
X-Google-Sender-Auth: Wl9j6GG8h7QdRx7qcgnb1mCm9O4
Message-ID: <CANyK_8fjtaN6iXOXm9YqLxK25_VUbYqH8_83GOYm81GjRc9wyA@mail.gmail.com>
To: Neuer User <auslands-kv@gmx.de>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Strange certificate problem with wget
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
X-List-Received-Date: Mon, 19 May 2014 11:25:53 -0000
Content-Type: text/plain; charset=UTF-8

On 19 May 2014 10:35, Neuer User <auslands-kv@gmx.de> wrote:
> Am 19.05.2014 11:32, schrieb Burton, Ross:
>> On 19 May 2014 10:25, Neuer User <auslands-kv@gmx.de> wrote:
>>> I need to use wget with https support in my image. So I added "wget" to
>>> my packages.
>>>
>>> The problem is that it doesn't seem to find the installed certificates:
>>
>> By "installed certificates" you mean that you installed
>> ca-certificates into the image, right?
>>
>> Ross
>>
> Yeah, exactly.
>

If you run 'wget --version' you should be able to find out if you're
running busybox wget or gnu wget. I assume you're expecting gnu wget
as you added wget to your packages, but it's worth quickly checking
that the correct binary is being executed.

Thanks,

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

