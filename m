Return-Path: <raj.khem@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F282E011B2
	for <yocto@yoctoproject.org>; Thu, 18 Aug 2011 23:00:07 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gyg13 with SMTP id 13so2756720gyg.35
	for <yocto@yoctoproject.org>; Thu, 18 Aug 2011 23:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=lugWlgMeEGl5qewvntLYSdVZDjYs/5HWOI4uRIx7sXw=;
	b=Uo3wW3ucuJ/1RgS8fx+hTeYwXGy+ZydFMGlgsYl3fxQmE87HdsQgGnwOXIXsm51VUg
	+xIUOQKzFQ8nOK5QVbeHpu27/ERjEwSqfPg1MB+lUMJJ1MsJXW8HTxqfcQ028r5zrOJu
	gQnQZrZ7dJN8Sv1Ae71Le5g6KeoEgUYntf9cw=
Received: by 10.236.187.104 with SMTP id x68mr4017598yhm.130.1313733606557;
	Thu, 18 Aug 2011 23:00:06 -0700 (PDT)
Received: from [192.168.1.70] (99-57-141-118.lightspeed.sntcca.sbcglobal.net
	[99.57.141.118])
	by mx.google.com with ESMTPS id b4sm503683iba.15.2011.08.18.23.00.04
	(version=SSLv3 cipher=OTHER); Thu, 18 Aug 2011 23:00:05 -0700 (PDT)
Message-ID: <4E4DFBE2.7090708@gmail.com>
Date: Thu, 18 Aug 2011 23:00:02 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20110812 Thunderbird/6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4E4C85B8.3000301@linux.intel.com>
In-Reply-To: <4E4C85B8.3000301@linux.intel.com>
Subject: Re: linux-yocto 3.0.1 upgrade broke PREFERRED_VERSION setting in BSPs
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
X-List-Received-Date: Fri, 19 Aug 2011 06:00:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 8/17/2011 8:23 PM, Darren Hart wrote:
> We have just rolled out PREFERRED_VERSION="3.0+git%", and these now fail
> with messages like:
>
> NOTE: preferred version 3.0+git% of linux-yocto not available (for item
> virtual/kernel)
>
> I could patch everything really quick to use 3.0.1+git%... but 3.0.2 was
> just released and I'd have to do it again tomorrow. For 2.6.37, the
> LINUX_VERSION remained the same across point releases. I recommend we do
> the same for 3.0. I really don't want to have to go through and update
> all the PREFERRED_VERSIONs in addition to all the SRCREVs everytime a
> point release comes out.
>

In my understanding 2.6 has now become 3 and .40 became .0 making it 3.0
therefore versions should be 3.0+gitrXXXX 3.1+gitrXXXX etc. 3.0.1 is 
similar to naming scheme 2.6.39.1 in olden days

