Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52CAFE0084E; Sun, 28 Dec 2014 18:34:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F37D7E00751
	for <yocto@yoctoproject.org>; Sun, 28 Dec 2014 18:34:24 -0800 (PST)
Received: by mail-ig0-f170.google.com with SMTP id r2so11879436igi.1
	for <yocto@yoctoproject.org>; Sun, 28 Dec 2014 18:34:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=K7PaJipfwnGtVq9IcvnQsSXRhAo1/e9Z5qcy9eYfjK8=;
	b=yj5itqRGFzF3XMKonfiU34xeFisxWjfDiu54/fdpi+eGbpc5AzHkhkrgAHcyx+8qho
	rQ41N5aBkIOx5kdNACndH48sHr3dc+1FlTbKTVvXz/fd2p9OXeM9QD5SGMq5GyjdX3Tp
	rt95yZ0fYW8M8w2Twyhens7GS8uQg8KmvorldMsDtSHO2d5//qX58Q6r7l190LDl+QaU
	VnvBclfb/b0JqUizfbsIG5P5pZvb1gzM0caUf5axiNu414I1qD7QQ0/YwgWSsuz2EDml
	87C2mL+8FUdQqE42tOTqRkODzxstCPigFP6GGU6BjJ7i/SFtu7wm137aQrnXR2LHAGeT
	JyeA==
X-Received: by 10.107.136.146 with SMTP id s18mr47037873ioi.36.1419820464405; 
	Sun, 28 Dec 2014 18:34:24 -0800 (PST)
Received: from [192.168.0.50]
	(CPE0026f3330aca-CM0026f3330ac6.cpe.net.cable.rogers.com.
	[99.231.92.7])
	by mx.google.com with ESMTPSA id n2sm13776072igp.16.2014.12.28.18.34.22
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 28 Dec 2014 18:34:23 -0800 (PST)
Message-ID: <54A0BDAD.2020607@gmail.com>
Date: Sun, 28 Dec 2014 21:34:21 -0500
From: nick <xerofoify@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: ChenQi <Qi.Chen@windriver.com>, yocto@yoctoproject.org
References: <CALb2248jSjqK9ALwTsNfgeLkhmF2Ka+mhe5s6N1U51emFEbJVQ@mail.gmail.com>
	<54A0BB38.3000008@windriver.com>
In-Reply-To: <54A0BB38.3000008@windriver.com>
Subject: Re: Distro vs. Image
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
X-List-Received-Date: Mon, 29 Dec 2014 02:34:30 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Schwab,
You asked about an building an installable image, if you have Hob there is a way.
https://www.yoctoproject.org/documentation/hob-manual-16#run-deploy
This is a link to the page explaining it, scroll down to the section on deploying
or running  your image and it should explain how to do it. 
Cheers Nick

On 2014-12-28 09:23 PM, ChenQi wrote:
> Hi Schwab,
> 
> What do you mean by "distro recipe"?
> 
> I can see your initial problem is that you want different config details for the same image recipe (maybe for different HW, I guess?).
> 
> Now we would like to create an "installer" image, i.e. a bootable
> image whose job is to install a release(-candidate) image to the HW.
> Naturally, some config details in the resulting image will be
> different.
> 
> Can this be done via bbappend file in different layers?
> Can this be done via different distro config files?
> 
> Regards,
> Chen Qi
> 
> 
> On 12/23/2014 11:09 AM, Leo Schwab wrote:
>> Up to this point, all our builds for our prototypes have been "image"
>> builds, i.e. we built an image recipe starting with
>> packagegroup-core-boot, and it's accreted from there.  We write the
>> resulting .sdcard image file to an SD card and boot from that.
>>
>> Now we would like to create an "installer" image, i.e. a bootable
>> image whose job is to install a release(-candidate) image to the HW.
>> Naturally, some config details in the resulting image will be
>> different.  The more I read, it feels like this wants to be a
>> "distro," rather than just another image recipe.  Recipes searching
>> for files will automagically generate subdirectory search paths based
>> on current distro name, which would allow us to substitute different
>> config files based on what's being built.  (Extra Credit for this
>> build would be to incorporate a copy of the release image into the
>> installer image.)
>>
>> Trouble is, none of the docs I've read describe very clearly how to
>> make the leap from cobbling image recipes together to creating a
>> functionally equivalent distro recipe.  Could someone point out some
>> resources and examples on how this is meant to be conceptualized and
>> used?  Thanks in advance for all suggestions.
>>
>> Schwab
> 

