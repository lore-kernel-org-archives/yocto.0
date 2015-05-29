Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A2B2E00988; Fri, 29 May 2015 12:33:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD77BE0086D
	for <yocto@yoctoproject.org>; Fri, 29 May 2015 12:33:41 -0700 (PDT)
Received: by igbpi8 with SMTP id pi8so22619196igb.0
	for <yocto@yoctoproject.org>; Fri, 29 May 2015 12:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=jbVj09QHtEgHDgQRgklhs4cdib7R/NUG9DqhIYr1Z18=;
	b=gwWGmyzn8COXvRVbnduNc68cwTm4lTj3JwxdTGOEqSZwrEWsT+YAGsUhx3VqHtnab9
	b9jlcNv2bPbrmMg5l8pcz2x4Z8a/pRF4wh0aSLyg4DJi/PAx8BGBXEiWCQel/uUmLynp
	joY7dQTEsIYksf9RUS9ZXrkKYji07VNa6JsVFZBd2+3ONSVUTNpu8mY8TmzYdedYLGUU
	K1hdm+tTq0yqfEtDZQUtzhHf8HZlBlbrUIVwpGMxFDrSlFqWi7wMtbSohfSdRhn1rM1q
	r9I9SR2BnqnBByUTL98y2xlktFQ/m1vFF013Ce9Ii48vuDCoSpRSpZnedeg+uqWx5qwG
	bu1Q==
X-Received: by 10.43.125.200 with SMTP id gt8mr16822815icc.90.1432928020683;
	Fri, 29 May 2015 12:33:40 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by mx.google.com with ESMTPSA id
	f15sm4828590iof.36.2015.05.29.12.33.39
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 29 May 2015 12:33:40 -0700 (PDT)
Message-ID: <5568BF11.9070401@gmail.com>
Date: Fri, 29 May 2015 15:33:37 -0400
From: Trevor Woerner <twoerner@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Robert Tulke <rt@debian.sh>, yocto@yoctoproject.org
References: <5FC071E3-FA55-4622-9560-1CE4DE14C499@debian.sh>
In-Reply-To: <5FC071E3-FA55-4622-9560-1CE4DE14C499@debian.sh>
Subject: Re: Keybinding on Matchbox, press a key and run an app
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
X-List-Received-Date: Fri, 29 May 2015 19:33:44 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hi Robert,

On 05/18/15 13:50, Robert Tulke wrote:
> Hi i’ve a question, how i can create a keybinding or mapping for a specific key to run an application?
>
> So what i want, i’ll press for example F12 and that will start a application?

It depends.

If you're running a GUI environment with a window manager of some sort,
then you'll have to read up on that window manager's documentation to
see if binding a key to an event is possible. If it is, each manager
will have its own way of doing this. For example fvwm2 has the "Key"
command which you would have to configure in a .fvwm2rc configuration
file. Each user has their own such configuration file, so just because,
say F12 works one way for one user, doesn't mean it'll do anything for
another user.

xfce has its own way of configuring key bindings. I have no idea if sato
supports this.

If you wanted to set a key binding that would work across users then
you'd have to look at the underlying display manager, which is probably
X in your case, and see if/how you'd tie into the X event system (I'm
not even sure it's possible at this level).

If you're using Wayland instead of X, I have no idea.

If you're not using a GUI environment, I wouldn't have the faintest idea
how to do this (or if it is even possible) using just a plain ol' console.

Maybe this will help:
https://wiki.archlinux.org/index.php/Keyboard_shortcuts

