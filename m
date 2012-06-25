Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2489E00739
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 14:41:45 -0700 (PDT)
Received: by eaab16 with SMTP id b16so1824503eaa.35
	for <yocto@yoctoproject.org>; Mon, 25 Jun 2012 14:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=qUnm44fz3vvylfHJEaHuSK7IsFXo7Ue/QKylnwNAbFo=;
	b=e6Yz/jsTgKu0FetZX1dGU3bsHvDdWQcQCiEeVHPULfPNPfcXWzGqXobHarAdC04pEy
	czhqVh0aRQ7UxpoPO+h8T80zK90lIJas4kGm6mDS7O1XNU/PI64W+xskGLvAjxb2NWOo
	HFfPwi1oGT6QOlQtddvEble9n5pqk/3YPgdlRULT0AMSMhbOVqUlxzw1K62P4aHKgAXj
	EkdG6nPlfYAB0BHBRw4njR7eiyrWDNz+JTZc+otDbzkRkhRZxWTsB5Y3KSeRcuPXZL0Y
	On6SG59CSDv1wutb8nz/CnDno5hXQ7iLOqAZ55kIn9Elubd9N/NX/3s6uiYGjiS8rEjA
	btPw==
Received: by 10.14.97.16 with SMTP id s16mr2473925eef.117.1340660505004; Mon,
	25 Jun 2012 14:41:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.219.71 with HTTP; Mon, 25 Jun 2012 14:41:14 -0700 (PDT)
In-Reply-To: <6C75CBD3-D4CF-431A-92DB-9B1C58FD4F6E@keylevel.com>
References: <A8122A0F-A18D-45A7-BE32-433494D888B4@keylevel.com>
	<CAMKF1sqfGsPs_2rvsnwBcqYCha1dp47WvaDv2-WNPubpjWbnQw@mail.gmail.com>
	<68462E41-30CB-44B1-92CF-C178AC9844DF@keylevel.com>
	<CAMKF1spcBzJFt0qrLgCc2MpUj7r0t5W3Ng=5XZAFgvHOxEr0xQ@mail.gmail.com>
	<6C75CBD3-D4CF-431A-92DB-9B1C58FD4F6E@keylevel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 25 Jun 2012 14:41:14 -0700
Message-ID: <CAMKF1soot0iQ-nfZKAbnEEYieW+_H6YPWnrxcFQMSQiz_XPFjg@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Selecting gcc version
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
X-List-Received-Date: Mon, 25 Jun 2012 21:41:46 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jun 25, 2012 at 2:37 PM, Chris Tapp <opensource@keylevel.com> wrote:
> It's the rpi-patches branch at https://github.com/raspberrypi/linux.
>

looks like 3.1.x
should be OK to compile with 4.6 I guess ..

