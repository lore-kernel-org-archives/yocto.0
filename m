Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14F36E00CC9; Sun,  7 Apr 2019 00:16:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E9F7E009A0
	for <yocto@yoctoproject.org>; Sun,  7 Apr 2019 00:16:11 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 44cPwm6ckqz4p;
	Sun,  7 Apr 2019 09:16:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1554621369;
	bh=yZGCcx8byZfvDPNJ1a3F15STOsvg94lhVeujOmJzmNM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b9zhknMYfOisg2S5IKXG1+7rSypNX4QE45yu9UEnHfxpo7XLbeQ+x2Tjt2eo+WaCi
	65CO07NpCYq1LuqHYb7REvdUfDj/nbdgPQjVJ8LDa2gkIxDGzmEw6MJz+eVwnbnms4
	kjNiMVCGTkOlVNRIHnBVhIvpBtJxqYHTvwkNiFInSIBXYBW88wGL3qyp6cVXruh8+u
	PkG526hdmEHKz01VMcynYJTHiVW3zWXsDImQu5Cuhxz6zjt0/XPG4EGqVpseN/YuqN
	KzjBZ94i4P22JfO2XYbq1PmPww37a+rFpZlju6e9HvfACN980r05W3S4mNIIHxAPoa
	38i2DyQvdeyavqDxeexOPVnZB99qdYpl0p25SdhsKX32vciOUPdrwBY8vLYJEme5Q+
	jibcAkYpu/WgvYNCKOYSefeaumP0aMJ+bMXZr+9UnH/04xYYU8pshh0XN0ZnHOOdDh
	3ba6XvHXAZDWvtz0cgIYvl727GQ21HJhRPWHt3l1/Bs97A/bh1OIpmmtzey3b89tUq
	9AATlyL34IsTFePFbyi3amTlAkZWB4FuB9+Bv8bOg/zumwSXTk56N091hCBgb3YfZ3
	5ygudZKiYswJJAbUngyYWQarctqOfPh7Y7IKbehoIQTtM08Znpa8j5RdB+gNOpRzay
	IpYG3C4ev9LJp08AxV4lRDMA=
Date: Sun, 7 Apr 2019 10:16:01 +0300
From: Adrian Bunk <bunk@stusta.de>
To: akuster808 <akuster808@gmail.com>
Message-ID: <20190407071601.GB30195@localhost>
References: <1554561940-31363-1-git-send-email-akuster808@gmail.com>
	<20190406150140.GA25634@localhost>
	<b0151407-4541-79ae-c05b-04198e4c7c57@gmail.com>
	<20190407051232.GA30195@localhost>
	<38978945-6890-3af5-206e-2e01396b099e@gmail.com>
MIME-Version: 1.0
In-Reply-To: <38978945-6890-3af5-206e-2e01396b099e@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH] clamav: freshclam need bind to run
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
X-List-Received-Date: Sun, 07 Apr 2019 07:16:13 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Sun, Apr 07, 2019 at 11:45:18AM +0530, akuster808 wrote:
> 
> 
> On 4/7/19 10:42 AM, Adrian Bunk wrote:
> > On Sun, Apr 07, 2019 at 01:38:38AM +0530, akuster808 wrote:
> >>
> >> On 4/6/19 8:31 PM, Adrian Bunk wrote:
> >>> On Sat, Apr 06, 2019 at 08:15:40PM +0530, Armin Kuster wrote:
> >>>> Add it to the rdepends for that package
> >>>>
> >>>> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> >>>> ---
> >>>>  recipes-security/clamav/clamav_0.99.4.bb | 2 ++
> >>>>  1 file changed, 2 insertions(+)
> >>>>
> >>>> diff --git a/recipes-security/clamav/clamav_0.99.4.bb b/recipes-security/clamav/clamav_0.99.4.bb
> >>>> index 6219d9e..dbe903f 100644
> >>>> --- a/recipes-security/clamav/clamav_0.99.4.bb
> >>>> +++ b/recipes-security/clamav/clamav_0.99.4.bb
> >>>> @@ -152,3 +152,5 @@ RCONFLICTS_${PN} += "${PN}-systemd"
> >>>>  SYSTEMD_SERVICE_${PN} = "${BPN}.service"
> >>>>  
> >>>>  RDEPENDS_${PN} += "openssl ncurses-libncurses libbz2 ncurses-libtinfo clamav-freshclam clamav-libclamav"
> >>>> +
> >>>> +RDEPENDS_freshclam = "bind"
> >>> freshclam depending on a DNS server looks very wrong.
> >> got talk to clamav folks then.
> >>
> >>> What is the actual problem?
> >> ClamAV update process started at Sat Apr  6 14:59:25 2019
> >> WARNING: Can't query current.cvd.clamav.net
> >> WARNING: Invalid DNS reply. Falling back to HTTP mode.
> >> ERROR: Can't get information about database.clamav.net: Temporary failure in name resolution
> >> ERROR: Can't download main.cvd from database.clamav.net
> >> Giving up on database.clamav.net...
> >>
> >> because 
> >>
> >> Use DNS to verify virus database version. Freshclam uses DNS TXT records
> >> to verify database and software versions 
> >>
> >> therefor I am including bind.
> > freshclam needing DNS information makes sense, which means it must be 
> > configured how to access a DNS server.
> >
> > On the local machine you need only DNS client funtionality,
> > just like every user needs for a web browser.
> 
> >
> > Forcing installation of a DNS server is not the correct solution
> > when the actual problem is just a configuration issue on the
> > machine where you were trying it.
> 
> So I can expect a patch to provide such configuration. I would like to
> see how you would solve this.

How are you configuring networking on your device?

> Maybe an FAQ we can add to the layer for this package?

From the error message you gave it is not obvious that there is any
problem that would be specific to this package.

I would guess that DNS configuration is missing or incorrect on your 
device, and that "ping www.google.com" would also fail with a name 
resolution error.

> - armin

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


