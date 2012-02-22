Return-Path: <SRS0=zEdylK=BA=mindchasers.com=yocto@eigbox.net>
Received: from bosmailout17.eigbox.net (bosmailout17.eigbox.net [66.96.190.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 237F3E0030B
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2012 07:49:27 -0800 (PST)
Received: from bosmailscan05.eigbox.net ([10.20.15.5])
	by bosmailout17.eigbox.net with esmtp (Exim) id 1S0ERZ-0006dS-Tq
	for yocto@yoctoproject.org; Wed, 22 Feb 2012 10:49:25 -0500
Received: from bosimpout01.eigbox.net ([10.20.55.1])
	by bosmailscan05.eigbox.net with esmtp (Exim) id 1S0ERZ-0004lq-HO
	for yocto@yoctoproject.org; Wed, 22 Feb 2012 10:49:25 -0500
Received: from bosauthsmtp15.eigbox.net ([10.20.18.15])
	by bosimpout01.eigbox.net with NO UCE
	id d3pR1i00G0KWaAJ013pRMQ; Wed, 22 Feb 2012 10:49:25 -0500
X-Authority-Analysis: v=2.0 cv=ZfeqwLpA c=1 sm=1
	a=ZOzi+v0zS1kG2QjqRQcJlw==:17 a=y6CmfMN_vBIA:10 a=HckIgBIGsxQA:10
	a=Lk7aQFya1KUA:10 a=8nJEP1OIZ-IA:10 a=HivZlb4JtqeXzVfyhrkA:9
	a=wPNLvfGTeEIA:10 a=6thTdk0GfRoQwv0zj4iWMg==:117
X-EN-OrigOutIP: 10.20.18.15
X-EN-IMPSID: d3pR1i00G0KWaAJ013pRMQ
Received: from [108.25.174.63] (helo=[192.168.1.3])
	by bosauthsmtp15.eigbox.net with esmtpa (Exim) id 1S0ERZ-0003pY-A6
	for yocto@yoctoproject.org; Wed, 22 Feb 2012 10:49:25 -0500
Message-ID: <4F450E82.4070006@mindchasers.com>
Date: Wed, 22 Feb 2012 10:49:22 -0500
From: Bob Cochran <yocto@mindchasers.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1329746626.2728.10.camel@babel.joshhome>
	<4F428FC8.5080806@intel.com>
In-Reply-To: <4F428FC8.5080806@intel.com>
X-EN-UserInfo: cb6d325fe03740ac93d537d78041f599:2186c883651a1065ea1e15c5a112545a
X-EN-AuthUser: bcochran@mindchasers.com
Sender: Bob Cochran <yocto@mindchasers.com>
X-EN-OrigIP: 108.25.174.63
X-EN-OrigHost: unknown
Subject: Re: how do I contribute to yocto
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
X-List-Received-Date: Wed, 22 Feb 2012 15:49:27 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/20/2012 01:24 PM, Scott Garman wrote:
> On 02/20/2012 06:03 AM, Joshua Immanuel wrote:

I ended up writing new
>> recipes for packages which does not exist in yocto. I think it will be
>> useful for others. <snip> So, how do I contribute these new recipes?
>>


>
> Hi Joshua,
>
> I'd put your layer up on a git repo somewhere (GitHub?) and make sure
> you have a note in your layer's README file that mentions that the layer
> is intended for use with the edison release.
>

>
> Scott
>


Doesn't this project accept new community driven / supplied recipes?

