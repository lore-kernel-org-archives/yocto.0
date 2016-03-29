Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8ADB6E006AE; Tue, 29 Mar 2016 13:03:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53EDDE0048B
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 13:03:36 -0700 (PDT)
Received: by mail-pa0-f42.google.com with SMTP id td3so21797969pab.2
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 13:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:user-agent:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=maEqf9Z3MK5hQw2Tju2JFx1MdI8YU2T+vnn7ke9up/U=;
	b=gtMg094v4grRB44ZmRYlqRDzU+8OneU9bo1jTnEM4kN72OeNfT/7tw7mfao1kuoVOm
	KrgD9Gm1dGy5QW8YAqZ1HyNGaqhC/p2CcL6ZXNuRNzlLfdnALMlptZaf8QT/jHV3M3X6
	6QQz1zvbKElKg0u3fLD6auk18owgm9bWQGnGL2p4q4M8VwqKH1/9i0wcHQiwapxJfnoa
	zwDOlB5NqzHaMo4mF/db7Hmfbw1bDJrPvfYd6czzhNuMHLNUSVcAENGZflOkp16O6GZr
	8JpDrHcdn5hZ+8vIH8DPupHhB+u+nIC2v0kpThrejC0hv6ge6Q3XmmSZTIbtZBhglS6N
	zJXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:user-agent
	:in-reply-to:references:mime-version:content-transfer-encoding;
	bh=maEqf9Z3MK5hQw2Tju2JFx1MdI8YU2T+vnn7ke9up/U=;
	b=HWSvYyWXnkPvXGhDeMGZ1WdZvwZhJ6/S6ofWQ27sn7x2Yjus0gpgro0TuKs/ZdD9NI
	0Csfs69y8JI4mgmzJzwNxmvDRAvT9OHYDWMA5hANq+OLeWZZAys8Dcembu2m0BzEoGAz
	mTTQIdHwrKo4gIvAjGrNQHQL5B5RUM/7kIFGAJK+63j4koOzJg+t5tV+8Ml7yALjcTbR
	dQ+bz6thXZ4yFEqBBkdVewSEu+cbxir3uzyzYFPiwB4C6RbPswSD4GPwiM5i9bm61o+R
	udyY2Rj5r45WlcbIiZiXKrALKDe1CNiONFKfxchDtaLV9+2LAUYUoHzsY6rfnOiyGlPV
	OuSw==
X-Gm-Message-State: AD7BkJLxXkdBSJK3tu1aUsoM42LrouVB51F2UA+fY50obnpif4WRTSm7U2BrOYmLTLnasw==
X-Received: by 10.66.55.70 with SMTP id q6mr6280068pap.126.1459281816086;
	Tue, 29 Mar 2016 13:03:36 -0700 (PDT)
Received: from rjs-zotac.streifs.net (ip68-7-48-20.sd.sd.cox.net. [68.7.48.20])
	by smtp.gmail.com with ESMTPSA id ez6sm311279pab.12.2016.03.29.13.03.35
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 29 Mar 2016 13:03:35 -0700 (PDT)
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 29 Mar 2016 13:03:34 -0700
Message-ID: <5328453.C7Dxv7TdD1@rjs-zotac.streifs.net>
User-Agent: KMail/4.14.10 (Linux/4.4.5-200.fc22.x86_64+debug; KDE/4.14.17;
	x86_64; ; )
In-Reply-To: <56FADE23.8090300@balister.org>
References: <CA+YB3rY9NKNFJNtTwQQwePfwAm37skk8jtDnBoQEBqxiE-i2Hg@mail.gmail.com>
	<56FADE23.8090300@balister.org>
MIME-Version: 1.0
Cc: "openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: OEDAM: New Location - Catamaran resort
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
X-List-Received-Date: Tue, 29 Mar 2016 20:03:41 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

We need the final headcount by next Monday.

Food, breakfast, lunch and refreshments, will be provided. If you have special dietary needs such as vegetarian, gluten-free etc. please indicate so behind you name. We'll do the best to accommodate them.

Rudi

On Tuesday, March 29, 2016 12:57:23 PM Philip Balister wrote:
> OEDAM moved. Thanks Rudi and Jefro.
> 
> Please add your name to the attendee list so Jefro can get the correct
> amount of food and coffee. He needs the number "soon".
> 
> Philip
> 
> -------- Forwarded Message --------
> Subject: OEDAM: New Location - Catamaran resort
> Date: Mon, 28 Mar 2016 13:36:41 -0700
> From: Jeff Osier-Mixon <jefro@jefro.net>
> Reply-To: openembedded-members@lists.openembedded.org
> To: openembedded-members@lists.openembedded.org
> <openembedded-members@lists.openembedded.org>
> 
> The OpenEmbedded meeting on Friday April 8, which was previously
> announced, has been moved to the Catamaran Resort & Hotel.
> Transportation will be provided. The meeting is still 9am-5pm.
> 
> 3999 Mission Boulevard
> San Diego, CA 92109
> 858-539-8727
> 
> Again, OEDAM will be at the Catamaran, NOT at the Marriott. The wiki
> page and this mailing list will be updated with transportation info.
> 
> Thanks to Rudi Streif for finding us a great location!
> 
> 


