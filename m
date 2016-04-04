Return-Path: <jefro.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C6EDE00B6F; Sun,  3 Apr 2016 23:20:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f44.google.com (mail-lf0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3935FE00AD8
	for <yocto@yoctoproject.org>; Sun,  3 Apr 2016 23:19:57 -0700 (PDT)
Received: by mail-lf0-f44.google.com with SMTP id c62so153415304lfc.1
	for <yocto@yoctoproject.org>; Sun, 03 Apr 2016 23:19:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=eA0oX6AuGHbb6x0DDLU3cfccpBiKXac6YHe5KDI99GA=;
	b=BubFkVdVBb2l6AE6PQlGs9JWt0Xizq8NttTfe/+ORdJu6PYFRHxAiLlf3lb8VGhznf
	nZu/cEeJ+G6LLid4FaZRL2dLfYMMhMoJ0sJnDQ96UE7gvJ/DeX6fqFXxTgR0VxILP3Ov
	sBgGCGNBWrWKs6vI7LDCJ2zr9xeEhBmq4P5L/lr+7xaa0zFuaZ0t6sPVJeOCACCa3h+g
	jvOzCqYa47pzVN8G5N/yvF43RhH8jE0VbU4a4JVwZDe6DcjlCfhWMZg9MW27YFYeB5Xj
	GCorOTtfzS20colmFM/lLoog0fEAmIoVOWEadmwfzMR5dTdt8bALySHrTsw/Rd+fiITs
	QDhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=eA0oX6AuGHbb6x0DDLU3cfccpBiKXac6YHe5KDI99GA=;
	b=Yr2qlf9N62C5nMQxYJbuBpSRQGXjR44/OkzsF4pAA0GTYSNI0jBuhtJP5tbtJxnPIM
	GpcNhenXp81ejKrFQZbS80kyVEU6yeAYAEONUEWtaOzJCKnx9eWdtEZua/OzdiqjuTuO
	ML5T8RTuJcBIgv5qRzz981KSoJFhQVLcvTsLL/M9mca76phfd3x/ZsI79ZqyJTaPpU1+
	q3QJ3mBmDvJtmD8cnw7aNuvrXVY2VvqOEYUuEyLICbKpSzHnD2EzJkzdhgQo6z0kTZt4
	0A8icuw+B0qAY/2xJK+NVf2PBjUpoC001i8KUmoZBNBMjVg7XJL3qFr78fErxfmS5W7W
	xbig==
X-Gm-Message-State: AD7BkJKX2CnC4zskaExSJLvF9Dct+zXkDHSOJs0viUBj1s0IuKvK8uZ6vWYLvPyHopeCeXmoYxbqN7weReQXtA==
X-Received: by 10.25.212.6 with SMTP id l6mr4212937lfg.163.1459750795840; Sun,
	03 Apr 2016 23:19:55 -0700 (PDT)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.112.55.101 with HTTP; Sun, 3 Apr 2016 23:19:36 -0700 (PDT)
In-Reply-To: <5328453.C7Dxv7TdD1@rjs-zotac.streifs.net>
References: <CA+YB3rY9NKNFJNtTwQQwePfwAm37skk8jtDnBoQEBqxiE-i2Hg@mail.gmail.com>
	<56FADE23.8090300@balister.org>
	<5328453.C7Dxv7TdD1@rjs-zotac.streifs.net>
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Sun, 3 Apr 2016 23:19:36 -0700
X-Google-Sender-Auth: 81TEwc0w6_CesEWnllHdy5w8Ww0
Message-ID: <CA+YB3rZz4DVbu78rRogyqQw9=LMPWPFFpxQw1DvKNARHh2aLDQ@mail.gmail.com>
To: Rudolf J Streif <rudolf.streif@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Fwd: OEDAM: New Location - Catamaran resort
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
X-List-Received-Date: Mon, 04 Apr 2016 06:20:02 -0000
Content-Type: text/plain; charset=UTF-8

At this point, I have had no requestes for vegetarian etc. and only a
few responses regarding transportation, so I will NOT be ordering a
bus. If you do need transportation and haven't let me know, please do
so asap. thanks

On Tue, Mar 29, 2016 at 1:03 PM, Rudolf J Streif
<rudolf.streif@gmail.com> wrote:
> We need the final headcount by next Monday.
>
> Food, breakfast, lunch and refreshments, will be provided. If you have special dietary needs such as vegetarian, gluten-free etc. please indicate so behind you name. We'll do the best to accommodate them.
>
> Rudi
>
> On Tuesday, March 29, 2016 12:57:23 PM Philip Balister wrote:
>> OEDAM moved. Thanks Rudi and Jefro.
>>
>> Please add your name to the attendee list so Jefro can get the correct
>> amount of food and coffee. He needs the number "soon".
>>
>> Philip
>>
>> -------- Forwarded Message --------
>> Subject: OEDAM: New Location - Catamaran resort
>> Date: Mon, 28 Mar 2016 13:36:41 -0700
>> From: Jeff Osier-Mixon <jefro@jefro.net>
>> Reply-To: openembedded-members@lists.openembedded.org
>> To: openembedded-members@lists.openembedded.org
>> <openembedded-members@lists.openembedded.org>
>>
>> The OpenEmbedded meeting on Friday April 8, which was previously
>> announced, has been moved to the Catamaran Resort & Hotel.
>> Transportation will be provided. The meeting is still 9am-5pm.
>>
>> 3999 Mission Boulevard
>> San Diego, CA 92109
>> 858-539-8727
>>
>> Again, OEDAM will be at the Catamaran, NOT at the Marriott. The wiki
>> page and this mailing list will be updated with transportation info.
>>
>> Thanks to Rudi Streif for finding us a great location!
>>
>>
>
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core



-- 
Jeff Osier-Mixon
Open Source Community Architect, Intel Corporation

