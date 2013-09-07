Return-Path: <jc@vtkloud.com>
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 314ADE01440
	for <yocto@yoctoproject.org>; Sat,  7 Sep 2013 05:52:53 -0700 (PDT)
Received: by mail-wi0-f181.google.com with SMTP id c10so1876068wiw.14
	for <yocto@yoctoproject.org>; Sat, 07 Sep 2013 05:52:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=4EJ5gGwQES+NnNRH2gjK65Rfp/F6LHdYbqXg2myYq/w=;
	b=DmsaEtqQgf7OVpv9TcCAWj6K0AzQsGKi/lIs5ivggaMlYhDyMHj9T2CgjCGY/AVz16
	+lU1IEKqXdM3yG5aREW4peH7XfIrVJ7bsbBgS9m87oHBQYzkGlozsX5xjZL/Ya2H1VLx
	Xa6xp5dofyH9t512XmoUJZuAwuwED09StkWGDSOmW2GL3N8BnwptgezeukacCbrrLw5c
	YeYP1LdnuBy6EFNtmuzM/tsGproG5MXnl5w7JSra+L3Dz8NAJLeCSGx85H0QGCs1NmDx
	og2L1DAqNW7+K2m7GdksVV2GWhqhMWDciHFd1T+Q5xSUPXAw2AD3P31xN5NSRCZbmktw
	lh2g==
X-Gm-Message-State: ALoCoQl48wEerR6Q5p8WvhTHkLUsl80V646E1jixy//Xko0XsK8rtQ2FGSuuKTZJtB1a82fvTSRY
X-Received: by 10.180.75.239 with SMTP id f15mr2103809wiw.42.1378558372024;
	Sat, 07 Sep 2013 05:52:52 -0700 (PDT)
Received: from [192.168.0.50] (aig34-1-88-167-231-94.fbx.proxad.net.
	[88.167.231.94])
	by mx.google.com with ESMTPSA id iz19sm470420wic.9.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 07 Sep 2013 05:52:50 -0700 (PDT)
Message-ID: <522B21A0.9000305@vtkloud.com>
Date: Sat, 07 Sep 2013 14:52:48 +0200
From: JC <jc@vtkloud.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <5229F9F4.6030903@vtkloud.com>
In-Reply-To: <5229F9F4.6030903@vtkloud.com>
Subject: ruby-dev has a lot of unresolved dependencies (was : requires libcrypto which is not present ??)
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
X-List-Received-Date: Sat, 07 Sep 2013 12:52:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I auto-follow on this question:

On 06/09/2013 17:51, JC wrote:
>
> I'm trying to install ruby-dev (in order to be able to apply some 
> passenger features). Passenger requires ruby-dev
>
> ruby-dev has indeed been built but when I'm trying to install it, I 
> can't:
>
> root@qemuarm:~# smart install ruby-dev
> rpmdb: BDB0113 Thread/proc
> Computing transaction...
> error: Can't install ruby-dev-1.9.3+p194-r1.0@armv5te: no package 
> provides libcrypto-dev
>

libcrypto-dev is not present because openssl does not generate it (it's 
empty, the lib is taken by libcrypto package)
I hacked (may be I'll clean) it by modifying the openssl recipe allowing 
libcrypto-dev to be empty.

Then I ran into the same error with libssl-dev so the "hack" is now :


PACKAGES =+ " libcrypto-dev  libssl-dev"
ALLOW_EMPTY_libcrypto-dev = "1"
ALLOW_EMPTY_libssl-dev = "1"

Now the next error is :
Computing transaction...error: Can't install 
ruby-dev-1.9.3+p194-r1.0@armv5te: no package provides ncurses-libtinfo-dev


That one is trickier. It seems that libtinfo is provided by the package 
ncurses-terminfo, not ncurses-libtinfo.

I'm really confused about the status of meta-ruby. I assume I'm not the 
only one willing to install ruby-dev am I ?

Is there some basic mistake I made ?

How can yocto even generate the package if it cannot satisfy these 
dependencies by itself ?

Thanks for your help... I'm really puzzled now :(

Regards
Jay


