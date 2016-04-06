Return-Path: <jefro.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1489AE00C5B; Tue,  5 Apr 2016 20:39:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f170.google.com (mail-lb0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EFFEE00C55
	for <yocto@yoctoproject.org>; Tue,  5 Apr 2016 20:39:27 -0700 (PDT)
Received: by mail-lb0-f170.google.com with SMTP id bc4so21583607lbc.2
	for <yocto@yoctoproject.org>; Tue, 05 Apr 2016 20:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=hRdqGXURQDRjbixjtEa0gmBj955m7k+OzWisHdZ0v+w=;
	b=CTWggMDS3h72esVSVyOIkGuODQMqUXSAHeseU6Nbtwjw13+vXBTXov4DKmZxvbGHjr
	xDocUAn7wu6QciBjt9staReOwIAgvjlT4r3gXFXA7EltxQsGwQipYoH0POda92fkINL/
	OqKuq6lk53noT+wej0iXECeJcJ3QuULqiuVbQXMGG+V2UUCRZkC3gdaBAq7RupjlisnD
	cpH8IEIiaWlZ/Aerp0xR6lPXizWTqjvhDFlcZR0VmWY4LMlDDtdFj5jv/NRJG0t0rdim
	YPv3HupIvvECoeljoPb/h1g/QXrvf3WgnNZZzP2kxbg5fzI9trqpdBw4U3+secoZUYaA
	HT+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=hRdqGXURQDRjbixjtEa0gmBj955m7k+OzWisHdZ0v+w=;
	b=kdzwNQU5isBhJGxdFQGowu+QgOgjTrzmPRIn/Zub6/+sTuySa1iM6tlxiXjWsW2jdJ
	m69jo4FnS9QO6h1Fg5IVkpGIRpzK2/fhxrZ1xe9zG1as9eTf1OaQvsnEbzLt+jS8upne
	CnqGuN7KqpiZ/ZFzumYLftZ5tA94jc+HSbIX9j87qOsIUneXpF9UW1XLdA3YrcJeq65g
	IK+wRfLefPixH1Hio8m1ucxN+KlhlQiCOtnj/AquV/HAL6iEzRnkYMP5Qfk7XzMMLBRj
	EnykuiBTDN6vgmNvACaCIXcxrXVgJtP54SnYkAfTbthTRU9LNBk9MhR3isRc12r3LwM+
	9C8g==
X-Gm-Message-State: AD7BkJJsQvOVccFz7VdPUDtcgF3+LUu81YeNIQE208j0GF0XwHA9bEtkteUay8r7qWdRRhUeoxnSE1pJ2esfIA==
X-Received: by 10.112.168.194 with SMTP id zy2mr971674lbb.102.1459913966035;
	Tue, 05 Apr 2016 20:39:26 -0700 (PDT)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.112.55.101 with HTTP; Tue, 5 Apr 2016 20:39:06 -0700 (PDT)
In-Reply-To: <1604312.a7pP1GrPCb@rjs-zotac.streifs.net>
References: <56DEF97F.9070306@balister.org> <1458767514382.89578@seescan.com>
	<56F42DA1.4090902@balister.org>
	<1604312.a7pP1GrPCb@rjs-zotac.streifs.net>
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Tue, 5 Apr 2016 20:39:06 -0700
X-Google-Sender-Auth: Mk0JilE2j0LKoSt9vWVXcML-Sg0
Message-ID: <CA+YB3ra_JQ5tqYgzD9BWBwNi4V+Y1sQYPNNpyPS9a+Q8h27NqQ@mail.gmail.com>
To: Rudolf J Streif <rudolf.streif@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	"openembedded-members@lists.openembedded.org"
	<openembedded-members@lists.openembedded.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: [oe] [OE-core] OEDAM, April 8 in San Diego after ELC
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
X-List-Received-Date: Wed, 06 Apr 2016 03:39:31 -0000
Content-Type: text/plain; charset=UTF-8

Just a final transportation update for those attending OEDAM.

Transportation will be via carpool. Tom, Rudi, Armin, and myself have
volunteered to drive. Together we have room for 19 out of the 20
signed up. Let's plan to meet in front of the Hyatt at 8:30am on
Friday. If you are late or otherwise unable to be there at that time,
let me know and we'll arrange alternate transportation. If you are
planning to drive yourself, please let me know so we don't wait for
you.

Armin will be driving north after the meeting, so if you ride up there
with him I will either make two trips back or arrange for a cab.

