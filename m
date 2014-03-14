Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87082E0097A
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 09:12:42 -0700 (PDT)
Received: by mail-ie0-f177.google.com with SMTP id rl12so2761850iec.22
	for <yocto@yoctoproject.org>; Fri, 14 Mar 2014 09:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=O0H8nSnJsfsjb+ulFBD12Yxym8KRzMPXFrcxQlBcvVs=;
	b=Xdb7p5L0Red5d68+pMN0eCrWM6d/qop6RzwGyxO9h7OOOWyngoNQe1G3jGlfM0u5Ho
	7a/mM1pIp8Wed/13iO7oeqEGsGhfNbSkI0RAF6znmYQhqdJxpW0+5XlE6lmyaUVg5U22
	a55ZT9YEKn65Zq7NKgedVGavSidSkOv1vtUATh4MZWQ9q6+2PM4GyVxU7cVtUUB0AobE
	FG3q3sjTDBo6duKtt6VXUOL1HyROHJYY6YbICp3rQHtRbpFEconX8VzsES31Y3crHSpU
	+0ec/QrS1mA+/kCdO0oSxL8UFKQYCfJLuCuz7OyjLrQ6t4JCcqUXBB/K7gn2iX44tlvI
	sC+w==
X-Received: by 10.42.20.6 with SMTP id e6mr7071228icb.29.1394813561834; Fri,
	14 Mar 2014 09:12:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.224.136 with HTTP; Fri, 14 Mar 2014 09:12:11 -0700 (PDT)
In-Reply-To: <BD5E516FF3711A41B93DC005170007BB010D4B870A88@EMBSVR01.ember.local>
References: <BD5E516FF3711A41B93DC005170007BB010D4B870A88@EMBSVR01.ember.local>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 14 Mar 2014 09:12:11 -0700
Message-ID: <CAMKF1sp_a1QqXhiAJ-2nQapCYHX_fJpYZrTD=NZKcLJZGgzzRQ@mail.gmail.com>
To: Ankur Patel <ankur@embertec.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Issue installing External Kernel Module with same name
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
X-List-Received-Date: Fri, 14 Mar 2014 16:12:45 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 13, 2014 at 11:00 PM, Ankur Patel <ankur@embertec.com> wrote:
> Now the problem is, as kernel also builds the wifi driver modules based on
> the same .config file used by external driver module.


Disable the option in the component where you dont
want it from. In this case kernel
-Khem

