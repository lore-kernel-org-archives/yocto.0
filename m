Return-Path: <SRS0=/XVwCk=BB=mindchasers.com=yocto@eigbox.net>
Received: from bosmailout11.eigbox.net (bosmailout11.eigbox.net [66.96.186.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4A9AE01373
	for <yocto@yoctoproject.org>; Thu, 23 Feb 2012 11:36:26 -0800 (PST)
Received: from bosmailscan05.eigbox.net ([10.20.15.5])
	by bosmailout11.eigbox.net with esmtp (Exim) id 1S0eSm-0000To-O8
	for yocto@yoctoproject.org; Thu, 23 Feb 2012 14:36:24 -0500
Received: from bosimpout02.eigbox.net ([10.20.55.2])
	by bosmailscan05.eigbox.net with esmtp (Exim)
	id 1S0eSk-0002Sa-Tv; Thu, 23 Feb 2012 14:36:22 -0500
Received: from bosauthsmtp11.eigbox.net ([10.20.18.11])
	by bosimpout02.eigbox.net with NO UCE
	id dXcP1i00D0EKspE01XcPuB; Thu, 23 Feb 2012 14:36:23 -0500
X-Authority-Analysis: v=2.0 cv=Cu4IhAED c=1 sm=1
	a=ZOzi+v0zS1kG2QjqRQcJlw==:17 a=y6CmfMN_vBIA:10 a=Lk7aQFya1KUA:10
	a=8nJEP1OIZ-IA:10 a=iGHA9ds3AAAA:8 a=NEAV23lmAAAA:8 a=Q4-j1AaZAAAA:8
	a=quZTNCl__wuDfNsPFksA:9 a=_I3wfEfG0CRM17AexAYA:7 a=wPNLvfGTeEIA:10
	a=anyYG9rjTBM1sAjEBQ8Cew==:117
X-EN-OrigOutIP: 10.20.18.11
X-EN-IMPSID: dXcP1i00D0EKspE01XcPuB
Received: from [108.25.174.63] (helo=[192.168.1.3])
	by bosauthsmtp11.eigbox.net with esmtpa (Exim)
	id 1S0eSl-0001DX-8F; Thu, 23 Feb 2012 14:36:23 -0500
Message-ID: <4F469532.4070007@mindchasers.com>
Date: Thu, 23 Feb 2012 14:36:18 -0500
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <4F3A754B.5020909@mindchasers.com>
	<F801F7C5-8CD2-4408-88AF-C7C55A546CE4@dominion.thruhere.net>
In-Reply-To: <F801F7C5-8CD2-4408-88AF-C7C55A546CE4@dominion.thruhere.net>
X-EN-UserInfo: cb6d325fe03740ac93d537d78041f599:2186c883651a1065ea1e15c5a112545a
X-EN-AuthUser: bcochran@mindchasers.com
Sender: Bob Cochran <yocto@mindchasers.com>
X-EN-OrigIP: 108.25.174.63
X-EN-OrigHost: unknown
Cc: yocto@yoctoproject.org
Subject: Re: meta-oracle-java
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
X-List-Received-Date: Thu, 23 Feb 2012 19:36:27 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/22/2012 08:57 AM, Koen Kooi wrote:
>
> Op 14 feb. 2012, om 15:52 heeft Bob Cochran het volgende geschreven:
>
>> Hello All,
>>
>> I see that a meta-oracle-java layer showed up recently in the yocto repositories.  That's great.
>>
>> Was there an announcement about this new layer sent on a mailing list or posted in a blog?  I had thought I was on all the yocto-related mail lists (https://lists.yoctoproject.org/), but I wasn't aware of this layer until I just read through the repository list (http://git.yoctoproject.org/cgit/cgit.cgi/).
>>
>> I did find  a mention about some jdk work in the technical team meeting notes on 1/24, but it was sort of cryptic.  By any chance, is there an openjdk layer coming soon?
>
> It has existed for a while now: https://github.com/woglinde/meta-java
>
> See http://www.openembedded.org/wiki/LayerIndex for more layers


Thanks Koen and Ivan.  I now have both the jvm and compiler working on 
my embedded powerpc (started with OE meta-java last night)!

I'm still somewhat puzzled about the dynamics between Yocto and 
Openembedded, and I have come to conclusion that I need to watch both 
projects & mailing lists carefully & start asking some questions to get 
me out of the dark....

I think my initial question about an openjdk layer for yocto is still 
valid.  Although meta-java exists in OE and it makes use of the common 
meta folders in oe-core, the meta-java layer also makes use of some 
recipes in other OE layers (e.g, mercurial in meta-oe & fastjar, which I 
pulled from classic). These additional layers didn't seem to play nicely 
in the yocto poky tree, so I pulled the recipes and put them in my own 
layer.

This next question probably shows some of my ignorance with OE (& 
yocto), but what's the plan inside yocto for use of something like OE's 
meta-java?  Are yocto users just on their own, should there be a README 
for use of the OE layer in yocto, or maybe there should be a translation 
layer in yocto for use of popular or common OE layers?

Also, I was working from within master branches in both yocto poky & 
meta-java.  I found that I needed to fudge some recipes to get 
everything in meta-java to build.  I'll probably go back and rebuild 
from scratch again and see if there are some patches that I should send out.

Thanks again for the heads up on meta-java!

Bob




