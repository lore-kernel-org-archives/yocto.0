Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C7E2E011B1
	for <yocto@yoctoproject.org>; Sun, 19 Aug 2012 09:10:04 -0700 (PDT)
Received: by eabd1 with SMTP id d1so1897895eab.35
	for <yocto@yoctoproject.org>; Sun, 19 Aug 2012 09:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=0fM4W5kHxS3+11YM1rBw87hNTkUDI9elQ6hypfut3ZE=;
	b=uhdSj0JIX1wZaS4XotvKmdlGOBydfH56UUfHRZeo5w8izIg5dnbVV3qByStM2WrQ/X
	/Pj2K0afhdmD5gBWJGZQ8T90XzLL+rpbUeIc5yafhVQ9oQdLTIKcIqRsrtL7wRyhmutv
	T/8DNLX+ktdFay4YjsBk4JvuI0M1RBTMdwHTGJmnyovOc6e+vOFNUdYObNLIWSfwRhd4
	xD8sg4klEE5ZDjHwKFYQMZcwUFnjdMivgQjL+L1Q2+PaN8nHsJfSf0IvO5fnpVcqk993
	Djr6ByNYDVtZhKKAl5r2HWniXqFs7kxxV0lYuJaRFhwrESxVuqSFdd6+PAvrZebdzq/U
	xtrg==
Received: by 10.14.202.66 with SMTP id c42mr5067885eeo.35.1345392604076; Sun,
	19 Aug 2012 09:10:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Sun, 19 Aug 2012 09:09:33 -0700 (PDT)
In-Reply-To: <0F31BD17-B08A-4D0A-8807-8A2B2F21BE00@gmail.com>
References: <0F31BD17-B08A-4D0A-8807-8A2B2F21BE00@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 19 Aug 2012 09:09:33 -0700
Message-ID: <CAMKF1sr-vgPoG3_QsWkFMHsS=JQB_bj+EK61MUyEp77NjL8d6Q@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Distributing yocto builds onto an Ubuntu 12.04 LTS cluster
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
X-List-Received-Date: Sun, 19 Aug 2012 16:10:05 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Aug 19, 2012 at 5:15 AM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
> Has anyone been able to successfully distribute yocto builds onto an Ubuntu 12.04 LTS cluster?

master works fine

