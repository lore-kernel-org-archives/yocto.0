Return-Path: <jefro.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7515BE00BEA; Wed, 23 Mar 2016 15:04:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.169 listed in list.dnswl.org]
Received: from mail-lb0-f169.google.com (mail-lb0-f169.google.com
	[209.85.217.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2029E00BB9
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 15:04:13 -0700 (PDT)
Received: by mail-lb0-f169.google.com with SMTP id qe11so18760766lbc.3
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 15:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=bvSrKB39i0yyIMzaSHtgwkON6owFCdmthwjRkqPiTHI=;
	b=0u8Uc+SyCXwQL+Ih/vFSKMO2YkhmawtE8HvJ+C7ZI46r4oxV4vuLvlEXvm1sWEHIYp
	Y5yDWXz5cCV7cv3TpJuxXw+yGUi3ouUQrVAVP7MNt9/u/tC+uVuyU4gG4FkRoqLstPYq
	GPsZWHv2qBOr0F3Vscw2ZeydB/O/C27MYuh8tSLX0sqah/dRHE7vhML3ZzEj9TcbvybR
	lMvUlZZoDMLt2HXtHpOxUFhF7THjOXuP46kizYSui7KADU7VncQDrHk2d0ODp7TDW4gw
	esbUZzUzjFTroMuW+VnHBe/TvTqzU4wvlNuQJCh3mpTCPhE0J/auas9zwAX5J5WNVKtG
	P+QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=bvSrKB39i0yyIMzaSHtgwkON6owFCdmthwjRkqPiTHI=;
	b=eOTC+1eEkjWs5PeaBTD+JMIGVi5OaVufPN56nIZMSERKbai9sxZmHwbLdfkgxYSaEd
	0YIehn3QimbhnIH1uDRKTxj4AVgz1s4qzirUez06P0/fRRPkgMCyK5ea1qhNsMxpR0DT
	lhHlc/4g7Sofhrm3V9G9qWWXrx8KbqxloDdcIp15gzTj6QOTh9j9QaA1st3AZhlUOv5b
	flagoWRHUtswO1tdvBRsKeXuyFbc37ADHEFZhe3qtW4GfMPstfx9UoFvbV1hqOI1btbs
	qwW/vMVodHsZFqhhlz85FhcN6tJJUaRmaAEBdYEFx6Aa6g4wYORf/E/CgVW7LCjBmDqg
	OyeA==
X-Gm-Message-State: AD7BkJLo8K8q52/O6hE7RpxCME3PAI8xELT6M7uejxKHLil+XSCFH5WTOYY0J9begHGP3syctSacXZ2m9TJxAg==
X-Received: by 10.112.130.74 with SMTP id oc10mr2175950lbb.14.1458770651846;
	Wed, 23 Mar 2016 15:04:11 -0700 (PDT)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.112.55.101 with HTTP; Wed, 23 Mar 2016 15:03:52 -0700 (PDT)
In-Reply-To: <56F30D13.6030909@balister.org>
References: <56DEF97F.9070306@balister.org> <56F2C618.3050205@gmail.com>
	<20160323210850.GA5376@linux-yxv0> <1458767514382.89578@seescan.com>
	<56F30D13.6030909@balister.org>
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Wed, 23 Mar 2016 15:03:52 -0700
X-Google-Sender-Auth: MtIiSnTYTTVhN51lcPGcjNX-nk4
Message-ID: <CA+YB3rYNxkjsFaRzAQVTvLtZLu_0sb=-nurdmQ8xixruGLAmOg@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Cc: Yocto Project <yocto@yoctoproject.org>,
	"openembedded-members@lists.openembedded.org"
	<openembedded-members@lists.openembedded.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>
Subject: Re: [OE-core] [oe] OEDAM, April 8 in San Diego after ELC
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
X-List-Received-Date: Wed, 23 Mar 2016 22:04:24 -0000
Content-Type: text/plain; charset=UTF-8

>>> There are only 10 people signed up.
>>> Is that enough people to justify the expense room or even meet?
>>
>> I have no idea what the budget might be or what a room might cost. I'll leave
>> it to those who do know to worry about the costs versus the benefits.

I would give an unequivocal "yes" to this (as the guy with the credit
card). We need reliable internet access to loop in those who can't be
there in person, plus this was actually a reasonable rate for the
immediate area. We can take up to 25 and these meetings usually gain 5
or 6 people who never sign up on the wiki, so I think we are in
excellent shape.

