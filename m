Return-Path: <SRS0=BzwM9V=CR=mindchasers.com=yocto@eigbox.net>
Received: from bosmailout20.eigbox.net (bosmailout20.eigbox.net [66.96.185.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D672DE00746
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 14:38:04 -0700 (PDT)
Received: from bosmailscan04.eigbox.net ([10.20.15.4])
	by bosmailout20.eigbox.net with esmtp (Exim) id 1SI5Ep-00024L-Av
	for yocto@yoctoproject.org; Wed, 11 Apr 2012 17:38:03 -0400
Received: from bosimpout01.eigbox.net ([10.20.55.1])
	by bosmailscan04.eigbox.net with esmtp (Exim) id 1SI5Eo-0002gV-Az
	for yocto@yoctoproject.org; Wed, 11 Apr 2012 17:38:02 -0400
Received: from bosauthsmtp01.eigbox.net ([10.20.18.1])
	by bosimpout01.eigbox.net with NO UCE
	id wle21i01X01P9Sa01le2u0; Wed, 11 Apr 2012 17:38:02 -0400
X-Authority-Analysis: v=2.0 cv=eq1oOPVX c=1 sm=1
	a=1tk2KXT9X5KuiK9ZGSyBkw==:17 a=mn2ndCrYJZwA:10 a=5XsFQGJ3Uf0A:10
	a=Lk7aQFya1KUA:10 a=8nJEP1OIZ-IA:10 a=wgQkHdUEAAAA:8 a=iGHA9ds3AAAA:8
	a=SSSEZNxC1r6QWZtlfWEA:9 a=wPNLvfGTeEIA:10 a=5KiuuLRZHpkA:10
	a=FLmnjis/JmE4jomwi6pJ+A==:117
X-EN-OrigOutIP: 10.20.18.1
X-EN-IMPSID: wle21i01X01P9Sa01le2u0
Received: from [108.25.140.29] (helo=[192.168.1.41])
	by bosauthsmtp01.eigbox.net with esmtpa (Exim) id 1SI5Eo-0003GD-Do
	for yocto@yoctoproject.org; Wed, 11 Apr 2012 17:38:02 -0400
Message-ID: <4F85F9B8.8060902@mindchasers.com>
Date: Wed, 11 Apr 2012 17:38:00 -0400
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
In-Reply-To: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
X-EN-UserInfo: cb6d325fe03740ac93d537d78041f599:2186c883651a1065ea1e15c5a112545a
X-EN-AuthUser: bcochran@mindchasers.com
Sender: Bob Cochran <yocto@mindchasers.com>
X-EN-OrigIP: 108.25.140.29
X-EN-OrigHost: unknown
Subject: Re: Build time data
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
X-List-Received-Date: Wed, 11 Apr 2012 21:38:05 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/11/2012 04:42 PM, Chris Tapp wrote:
> Is there a page somewhere that gives a rough idea of how quickly a full build runs on various systems?
>
> I need a faster build platform, but want to get a reasonable price / performance balance ;-)
>
> I'm looking at something like an i7-2700K but am not yet tied...
>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>


I haven't seen one, but it would be great to have this on the wiki where 
everyone could post what they're seeing & using.

Maybe the autobuilder has some useful statistics 
(http://autobuilder.yoctoproject.org:8010/)?  Of course, you'll have to 
be careful to determine whether anything else was running at the time of 
the build.

On a related note, I have been wondering whether I would get the bang 
for the buck with an SSD for my build machines.  I would guess that 
building embedded Linux images isn't a typical use pattern for an SSD. I 
wonder if the long write & erase durations for FLASH technology would 
show its ugly face during a poky build.  I would think that the embedded 
micro inside the SSD managing the writes might get taxed to the limit 
trying to slice the data.  I would appreciate anyone's experience with 
SSDs on build machines.

