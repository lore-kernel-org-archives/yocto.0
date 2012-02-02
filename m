Return-Path: <jfabernathy@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B3F9E00592
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 11:53:52 -0800 (PST)
Received: by qcsd1 with SMTP id d1so1955418qcs.35
	for <yocto@yoctoproject.org>; Thu, 02 Feb 2012 11:53:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=eiozc27FRLiKoapAk0F2Ylkg58auZVjUWQn5MVGmYRU=;
	b=B6pUpUCuzJWzdaYzcCmsnkpa2mqz7jy54sNmP6Z6prTCRqjeW05Z1RYO9NKn6q2n+S
	5TBL5LBZ2EcnIwfiY04nHMB3th9iQMhq3wAzJLN+tb+CE1Y65UhaHFyCc16TC4EVJVhX
	ClOiG9BS2/ZcdtvPI3SSFJ8mmYo61alscp010=
Received: by 10.224.59.194 with SMTP id m2mr4220435qah.46.1328212431127;
	Thu, 02 Feb 2012 11:53:51 -0800 (PST)
Received: from [10.0.1.54] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id g9sm7550868qad.16.2012.02.02.11.53.50
	(version=SSLv3 cipher=OTHER); Thu, 02 Feb 2012 11:53:50 -0800 (PST)
Message-ID: <4F2AE9CE.5010602@gmail.com>
Date: Thu, 02 Feb 2012 14:53:50 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: Joshua Lock <josh@linux.intel.com>
References: <4F2A0A34.4020605@gmail.com> <4F2AB4FF.5070208@gmail.com>
	<4F2AC2AB.6030204@windriver.com> <4F2AC9A5.5040706@gmail.com>
	<4F2ACB7F.4010509@gmail.com> <4F2ADFE4.3050702@linux.intel.com>
	<CANFv2EkyMa0BSSKRm7VarTFM0xH2boJjWT8RZs8-iVegO3NPpw@mail.gmail.com>
	<4F2AE4A1.4030600@linux.intel.com>
In-Reply-To: <4F2AE4A1.4030600@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: needed site is down???
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
X-List-Received-Date: Thu, 02 Feb 2012 19:53:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/02/2012 02:31 PM, Joshua Lock wrote:
> On 02/02/12 11:15, James Abernathy wrote:
>> On Thu, Feb 2, 2012 at 2:11 PM, Joshua Lock <josh@linux.intel.com
>> <mailto:josh@linux.intel.com>> wrote:
>>
>>
>>
>>     On 02/02/12 09:44, jfabernathy wrote:
>>
>>         On 02/02/2012 12:36 PM, jfabernathy wrote:
>>
>>             On 02/02/2012 12:06 PM, Mark Hatle wrote:
>>
>>                 On 2/2/12 10:08 AM, jfabernathy wrote:
>>
>>                     On 02/01/2012 10:59 PM, jfabernathy wrote:
>>
>>                         Am I the only one seeing this dead link? I'm
>>                         building from master and
>>                         can't get to this link that draws the error:
>>
>>                         
>> http://cgit.freedesktop.org/__libva/snapshot/libva-1.0.12.__tar.bz2
>> <http://cgit.freedesktop.org/libva/snapshot/libva-1.0.12.tar.bz2>
>>
>>
>>     This is supposed to be a transient error but so far as I can see the
>>     fd.o cgit is still down.
>>
>>
>>         Just noticed that what's on the Yocto mirror is
>>         libva_0.31.0-1+sds9.1ubuntu1.__tar.gz ), but the recipe is
>>         calling for a
>>         newer version, libva-1.0.12.tar.bz2
>>
>>
>>     I don't see libva-1.0.12 anywhere in poky or meta-yocto, the mirror
>>     is only updated once the autobuilder has seen the recipe and
>>     downloaded the object to mirror.
>>
>>     After a quick google I can't find a libva newer than 0.32.0+1sds2 -
>>     where did you get your libva recipe from?
>>
>> If I checkout master on poky and meta-intel and run the normal crownbay
>> (not the no-EMGD version) I get this error. Also on 1.2_M2 tag.
>> JIm A
>
> Whoops, I wasn't looking in the common directory - sorry about that.
> That version of the Libya recipe has existed since November 26th, we 
> really should be mirroring that.
>
> Beth, are we updating the mirrors with packages fetched during builds 
> of BSP's?
>
> Sadly, (so far as I can tell) it looks like libva stopped hosting 
> tarball releases and rely only on the snapshot functionality of git to 
> supply tarballs. Which is fine until something like this happens.
>
> If you can find a tarball of libva-1.0.12 from a source you trust you 
> can download it and dump it in your DL_DIR to proceed your build.

I found a file called libva_1.0.12.orig.tar.bz2 on an Ubuntu related 
site. it has the same MD5SUM as the yocto recipe, so it's probably the 
exact same file.  I'll just rename it.

But it sounds like we have something to fix anyway.

JIm A

>
> Cheers,
> Joshua


