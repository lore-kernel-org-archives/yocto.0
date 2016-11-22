Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEEFFE00CCB; Tue, 22 Nov 2016 10:30:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.193 listed in list.dnswl.org]
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BA09E00CC0
	for <yocto@yoctoproject.org>; Tue, 22 Nov 2016 10:30:33 -0800 (PST)
Received: by mail-io0-f193.google.com with SMTP id r94so1549756ioe.1
	for <yocto@yoctoproject.org>; Tue, 22 Nov 2016 10:30:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=2e6K6MB1tRAhzfy6dfsVnlQIjfPPaq3pCBxF8ZO35J0=;
	b=y4QhKr4P17FkBQsbGOYm+orq16etTKoK6q155eHSQ2c6UQYEx1nnuGBl3QhhhJ4kxP
	5sIuetTCwnYN0N+W1+2B6rEqJZdgMnUtCi3d7BsTjne1kZ1NyhaTWingQsCYV0g3kf1v
	RdS/e0AQUDVkyahxS+LaFfaQN2E3hXfMtpKlrvtLJW3uANBKWZPkBS996IWdAeujZg7y
	Rk0mJXI6HxjYrtI4TgZRTw/lN4arW+y+aQ9/3Gf+zT7Onx/tmPlYxxs2WqzqTRWcTyzt
	m5sVG2xsgXe6BxXB8ayjXmYsg1714eOPellyeYXSdrZEXfJZclI0sifdBGqn6DTGpGHx
	/pMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=2e6K6MB1tRAhzfy6dfsVnlQIjfPPaq3pCBxF8ZO35J0=;
	b=Ss1jakeEvWJbxz1K43DrPcf+x8gLtbUFIQiGvxyROS8P79ypJD5DkG94Yjsa7Bokk4
	D+gH9xO1UZNPWvf7NI8NWxV+rjJQ9pqR9pAGeU1rvO6OGKkf4TKMC7vBIB/plaW1CsWP
	VrMqvjlW+gg0J5mNIWZGojWlNlThvQQtl0yWVOFbmR2VhvlRy3dfMX8XYfBD8I5qUxeL
	jTQPZxhF4FIFkLc1ccQzfEgLTOuoQ6b+0MndAHeP9DBr8TfACelcosrFYJoVC8qmA+jU
	krRC1DJEg7oyDWzfhq/ARFoSGAgETLd+fdFhuNyjuVV8mzlJBuITG7Rljbgcz6UEgsII
	yhtg==
X-Gm-Message-State: AKaTC03veURJByU6XQJjskiT9uT/5hPb3TZUvWOAalbiZoRoo+2+y8HgUEdvJvIU7IuRUQ==
X-Received: by 10.107.9.93 with SMTP id j90mr18170661ioi.230.1479839433058;
	Tue, 22 Nov 2016 10:30:33 -0800 (PST)
Received: from openSUSE-i7.site (157-52-0-130.cpe.teksavvy.com. [157.52.0.130])
	by smtp.gmail.com with ESMTPSA id 18sm10103305iol.3.2016.11.22.10.30.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 22 Nov 2016 10:30:32 -0800 (PST)
Date: Tue, 22 Nov 2016 13:30:28 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Message-ID: <20161122183028.GA18396@openSUSE-i7.site>
References: <1479560619-33367-1-git-send-email-herve.jourdain@neuf.fr>
	<20161122151027.GA11632@openSUSE-i7.site>
	<001d01d244dc$d4b41030$7e1c3090$@neuf.fr>
MIME-Version: 1.0
In-Reply-To: <001d01d244dc$d4b41030$7e1c3090$@neuf.fr>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 0/1] Modify raspberrypi3.conf and add raspberrypi3-64.conf
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
X-List-Received-Date: Tue, 22 Nov 2016 18:30:35 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Tue 2016-11-22 @ 05:23:49 PM, Herve Jourdain wrote:
> I didn't have any such branch, but I've created them now.
> They are located at: https://github.com/hjourdain/meta-raspberrypi and https://github.com/hjourdain/openembedded-core.
> I've just pushed my patches there. I've not tested out of those repositories yet, but I did test those patches before, and they were working, so hopefully everything will be alright.

It looks like the raspberry pi's linux tree has been rebased again :-(

	ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+a45a35c085-r0 do_fetch: Fetcher failure: Unable to find revision a45a35c08598b23f9fd82e49c83b46c7d536244f in branch rpi-4.7.y even from upstream
	ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+a45a35c085-r0 do_fetch: Fetcher failure for URL: 'git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.7.y'. Unable to fetch URL from any source.

Checking out the rpi-4.7.y branch of git://github.com/raspberrypi/linux.git
doesn't give a a45a35c08598b23f9fd82e49c83b46c7d536244f revision. Also, the
HEAD of that branch is 4.7.10. Any idea how far back I have to go to find
4.7.7? Or maybe I should just try 4.7.10?

