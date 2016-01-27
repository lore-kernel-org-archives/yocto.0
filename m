Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13A1BE008F5; Wed, 27 Jan 2016 10:50:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f177.google.com (mail-pf0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4C90E00852
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2016 10:49:58 -0800 (PST)
Received: by mail-pf0-f177.google.com with SMTP id x125so9242691pfb.0
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2016 10:49:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=Jad7E/jvKU2cRy2oQB0+dDikVmuXgBSnbn6HLDT96qM=;
	b=tEHuUFMu0jLaHlHGzhiQv6YSjVuphsEjTevDhRGtLiAEuZzRUld8dXyxpMcpweErug
	0zn+fXq/EW8JhBkXBo6nfaiNbJk8pC4zrfV3WpgJ7SnVom7KyvDJCm8udhna8YF4kLPf
	r7lUYMweDTyKxoOfAS0HDmDruqhl4rKY2lWWEKjQsKHDsVW8qfXJYY2OkWVLOCz+pYAS
	9De0Nr3Opx6GIUVtcrVZEMXmQNWINhvrGtLG0lSpcQS44u1gI5G1x5/I5FyQlFcWSTst
	u0GO7QtD5J00y+itVldgpOABwdapWngxwVpB/qMDsQUsvisXUG9Xn5Y4UVIjn4Wn2mOk
	0TNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-type
	:content-transfer-encoding;
	bh=Jad7E/jvKU2cRy2oQB0+dDikVmuXgBSnbn6HLDT96qM=;
	b=kX6ve2gxzkxeY3vb5YBPnNJslUa9Y38mVmZlHE+AMbQ9JOWhgP2T0mDm2ZD0rWkSYG
	FcqocSWbZ8tGtbEszYOAQJ3reE+0HVxfd39962mK48vnA2Xg41VAsh8IKwF6BwLmFfL5
	0qXJek/fb57uApokQDkPWRQRPLd0Sshmvv2bN11ick82Hz5m7M90zS6vwkhVg0dr+fMT
	1EXwaPObIaiqgtPG2b1q3ORjWLQUrQYzZ6swM+RAvyIdMq8jFQhio7OjyNacXrGrePru
	oVy3cdznJOPyZKkitb+hmS5+a76Q/RLt7xktTdisT/xLxL9u6UDmDRjL+6vvaLrhiEbu
	R6xQ==
X-Gm-Message-State: AG10YOQcVbpdjdciJihoSI2okDZXSMIrjCAdeQKAWZW26Zto90p26/GpEXM+E01sc2l7adcX
X-Received: by 10.98.1.203 with SMTP id 194mr45541637pfb.10.1453920597916;
	Wed, 27 Jan 2016 10:49:57 -0800 (PST)
Received: from ?IPv6:2601:202:4000:1239:a963:c413:b391:5487?
	([2601:202:4000:1239:a963:c413:b391:5487])
	by smtp.googlemail.com with ESMTPSA id
	s65sm1188508pfi.12.2016.01.27.10.49.56
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 27 Jan 2016 10:49:57 -0800 (PST)
To: Jeff Osier-Mixon <jefro@jefro.net>, Yocto Project
	<yocto@yoctoproject.org>, yocto-announce@yoctoproject.org
References: <CA+YB3rYvuwFo1WDCQzO4vzhXGT05Nd7dThwdFRv3xhZ3yxAUOQ@mail.gmail.com>
From: akuster <akuster@mvista.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <56A91153.20901@mvista.com>
Date: Wed, 27 Jan 2016 10:49:55 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CA+YB3rYvuwFo1WDCQzO4vzhXGT05Nd7dThwdFRv3xhZ3yxAUOQ@mail.gmail.com>
Subject: Re: Embedded Linux Conference, YP DevDay, and OEDAM
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
X-List-Received-Date: Wed, 27 Jan 2016 18:50:00 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 01/27/2016 10:15 AM, Jeff Osier-Mixon wrote:
> If you are planning to attend the Embedded Linux Conference in San
> Diego this April, I wanted to let you know about the Yocto Project
> Developer Day that the team is planning. This will be similar to
> previous DevDays, with hands-on training in both introductory and
> advanced tracks. The day will happen just after ELC, on April 7 at the
> Marriott in downtown San Diego, just across from the ELC venue. We'll
> have more details posted later this week.
> 
> The project is also a sponsor for the event and we will have a booth.
> If you have something cool that you have been working on and would
> like to show it off in the booth during the conference, let me know
> and we'll see what we can do to make some space for your project.

I will be bring at least one demo. Not sure if its cool.

> 
> For those also in the OpenEmbedded community, there will be an OE
> developer's meeting and working session on Friday, April 8. This is a
> working session for OE members (not an educational session, sorry!)
> and space is limited, so if you plan to attend, please let me know so
> I can plan space accordingly.

I will be there. I take it there will be a wiki sigh up like before?

- armin
> 
> thanks!
> 

