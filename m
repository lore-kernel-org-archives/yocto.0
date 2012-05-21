Return-Path: <andrei@gherzan.ro>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62211E01430
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 02:26:02 -0700 (PDT)
Received: by lboj14 with SMTP id j14so4661843lbo.35
	for <yocto@yoctoproject.org>; Mon, 21 May 2012 02:26:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:x-gm-message-state;
	bh=ZmOrW4lrlFL3kXbO21flAfXqnEL71rhCTGi24fcopy4=;
	b=lStF5nyXos4X3PBj+0aO2Xvh8UAmCnS3JnUojBGdSjPZVEbLPE3WvnbLXVATpVp8/N
	FtL2YWwDUgsNfkBYghUJ1KHvQCzrLTrdIyX+9PgPsbGNCDiLvSpOYKCiZkAaoN+pQ0XC
	BPs5iNDEXjzoAl7MAsOH2DnNvv5ikTNHngWGnKtd0xWP/BfxikyHQd7KgJxjvNXkwSJt
	jbJnLsqNfXWWQ/asvIMel9uGXq8rd4dghVJXEcGmKx4NyjzzfoT3tYHfcbH/u4/z6icl
	aEoTTD5zCgmAntKzAj5IqwTIU+kBL0D987jqXQA4YnHtkKjYnpuiktUjVw4v18mwor9D
	/jTQ==
Received: by 10.112.102.8 with SMTP id fk8mr8077757lbb.71.1337592360966;
	Mon, 21 May 2012 02:26:00 -0700 (PDT)
Received: from [128.224.170.191] ([89.121.200.106])
	by mx.google.com with ESMTPS id p2sm6857104lbj.4.2012.05.21.02.25.59
	(version=SSLv3 cipher=OTHER); Mon, 21 May 2012 02:26:00 -0700 (PDT)
Message-ID: <4FBA0A24.70704@gherzan.ro>
Date: Mon, 21 May 2012 12:25:56 +0300
From: Andrei Gherzan <andrei@gherzan.ro>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <CAK18fxEh2HW+VQ5yrLdh3pr4hE8ZZzG2ecZXFLy2=40hQ+zYdg@mail.gmail.com>
	<4FB9F2FD.3060200@r-finger.com>
	<CAK18fxHoxdznsSbeSybm3QAym-YQa=_fzsMgOr2QHqFUH5ygiw@mail.gmail.com>
	<4278335.i6izktZTML@helios>
In-Reply-To: <4278335.i6izktZTML@helios>
X-Gm-Message-State: ALoCoQk4zeuGd9rXhYRGb3+1nVVi4+vKgRreh7LqO1yPJY9gbQClSJ4lMKBc04MKB66hDSaLRP/r
Cc: yocto@yoctoproject.org
Subject: Re: [poky] RaspberryPi Layer
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 21 May 2012 09:26:02 -0000
Content-Type: multipart/alternative;
	boundary="------------080000010900030200000300"

--------------080000010900030200000300
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/21/2012 12:19 PM, Paul Eggleton wrote:
> On Monday 21 May 2012 11:47:15 Andrei Gherzan wrote:
>> On Mon, May 21, 2012 at 10:47 AM, Tomas Frydrych wrote:
>>> On 19/05/12 22:51, Andrei Gherzan wrote:
>>>> After an exchange of messages with Richard, Saul and John Willis (he
>>>> already started a layer for oe and did a good job in it) i want to
>>>> announce that i started start a fork from his layer and with Florin
>>>> Sarbu will prepare a layer for RaspberryPi to work upon poky.
>>> Why a fork? This is a bsp layer so it should be sufficiently generic to
>>> work both with Poky and OE, it is really undesirable that there should
>>> be more than one m-rpi layers in circulation.
>> There are issues that cannot be solved with just one layer. A distro is a
>> workaround but still. More about this, rpi layer will be included in yocto
>> project repos as  Richard plans so it makes sense to have a yocto specific
>> layer. It could be a discussion here about using a core layer and above
>> that some distro specific layers but in my opinion this would be a little
>> too complicated for this. Right now i use a distro file which inherits poky
>> distro in order to BBMASK some bbappends which we don't have in poky. Clear
>> now?
> Not really, no. I can't believe there is a good reason to have two layers for
> this. Can you please be more clear why we can't just have one?
>
For example parsing libav and rpi-zram-service will fail. We don't have 
libav and we don't have systemd yet in poky.

@g



--------------080000010900030200000300
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    On 05/21/2012 12:19 PM, Paul Eggleton wrote:
    <blockquote cite="mid:4278335.i6izktZTML@helios" type="cite">
      <pre wrap="">On Monday 21 May 2012 11:47:15 Andrei Gherzan wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">On Mon, May 21, 2012 at 10:47 AM, Tomas Frydrych wrote:
</pre>
        <blockquote type="cite">
          <pre wrap="">On 19/05/12 22:51, Andrei Gherzan wrote:
</pre>
          <blockquote type="cite">
            <pre wrap="">After an exchange of messages with Richard, Saul and John Willis (he
already started a layer for oe and did a good job in it) i want to
announce that i started start a fork from his layer and with Florin
Sarbu will prepare a layer for RaspberryPi to work upon poky.
</pre>
          </blockquote>
          <pre wrap="">
Why a fork? This is a bsp layer so it should be sufficiently generic to
work both with Poky and OE, it is really undesirable that there should
be more than one m-rpi layers in circulation.
</pre>
        </blockquote>
        <pre wrap="">
There are issues that cannot be solved with just one layer. A distro is a
workaround but still. More about this, rpi layer will be included in yocto
project repos as  Richard plans so it makes sense to have a yocto specific
layer. It could be a discussion here about using a core layer and above
that some distro specific layers but in my opinion this would be a little
too complicated for this. Right now i use a distro file which inherits poky
distro in order to BBMASK some bbappends which we don't have in poky. Clear
now?
</pre>
      </blockquote>
      <pre wrap="">
Not really, no. I can't believe there is a good reason to have two layers for 
this. Can you please be more clear why we can't just have one?

</pre>
    </blockquote>
    For example parsing
    <meta http-equiv="content-type" content="text/html;
      charset=ISO-8859-1">
    libav and rpi-zram-service will fail. We don't have libav and we
    don't have systemd yet in poky. <br>
    <br>
    @g<br>
    <br>
    <br>
  </body>
</html>

--------------080000010900030200000300--
