Return-Path: <ml@communistcode.co.uk>
Received: from eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E88E5E0146C
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 01:20:49 -0700 (PDT)
Received: from localhost ([127.0.0.1]:55205 helo=eumx.net)
	by eumx.net with esmtp (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1T8oNI-00037k-CJ
	for yocto@yoctoproject.org; Tue, 04 Sep 2012 08:20:44 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=eumx.net; h=message-id
	:date:from:reply-to:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding; s=default;
	bh=tJ3lWPB6aP4/EJAZHhD7jT2Hc8g=; b=T1Rs//sUkSyLQO0+OaSyf5pj7bxM
	GtPLvPOaTGomKKatRPZ5vG7j97dAzmpk+lwNuLflwDCzSRbOCqnrP/w6HHwiWCPJ
	to+2aM2JqVpzY6fwT3lQ38o3dWI5suCgr8Kz3yhJtP0D+3fTMl33mruSVWmVCF5b
	yM5yRRjiT2tHi74=
Received: from [195.171.99.130] (port=45309 helo=[192.168.0.33])
	by eumx.net with esmtpa (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1T8oNI-00037g-9q
	for yocto@yoctoproject.org; Tue, 04 Sep 2012 08:20:44 +0000
Message-ID: <5045BA26.9030104@communistcode.co.uk>
Date: Tue, 04 Sep 2012 09:21:58 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120828 Thunderbird/15.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <50450DC6.20303@r-finger.com>
	<CADkTA4NbPk6UDbctuj=McV1PT4QZu=2LRTq2-GHSAAoeaasAUw@mail.gmail.com>
	<50451947.2090401@r-finger.com>
	<CADkTA4PX-ZAhhPi0OppbT4y4e5jiwDwgNFHONjebPimF8U21Yg@mail.gmail.com>
In-Reply-To: <CADkTA4PX-ZAhhPi0OppbT4y4e5jiwDwgNFHONjebPimF8U21Yg@mail.gmail.com>
Subject: Re: yocto beagleboard.conf -- should it not go away?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ml@communistcode.co.uk
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 04 Sep 2012 08:20:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/09/12 22:08, Bruce Ashfield wrote:
> On Mon, Sep 3, 2012 at 4:55 PM, Tomas Frydrych
> <tf+lists.yocto@r-finger.com> wrote:
>> snip...
>>
>>
>>
>> That being said, taking a step back, what are you trying to get out of
>> meta-yocto in this scenario ? oe-core + meta-ti is probably what you
>> should be using.
>>

Sorry to jump in here, but this is actually a very interesting point. 
 From coming to OpenEmbedded through Yocto and subsequently learning 
about the ecosystem as a whole, I have always considered meta-yocto to 
be providing a sane distro configuration. This implies that I believe 
the oe-core default distro configuration, even though it will build, the 
result won't be very satisfying - or maybe a bit disjointed.

You seem to be saying above that the meta-yocto layer is only any good 
for providing the kernel framework, and as he is not using the framework 
(i.e. using meta-ti) then there is no point in using the meta-yocto 
layer? So does the Poky distro config only really slap a name on the 
oe-core default distro policy - or does it have some added value?

I'm not trying to rile anyone up here, just trying to put the jigsaw 
together as the picture looks different every time I revisit it!!

Regards,

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


