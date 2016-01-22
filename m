Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87BA3E007F2; Thu, 21 Jan 2016 17:29:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.172 listed in list.dnswl.org]
Received: from mail-pf0-f172.google.com (mail-pf0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58D36E0079A
	for <yocto@yoctoproject.org>; Thu, 21 Jan 2016 17:28:59 -0800 (PST)
Received: by mail-pf0-f172.google.com with SMTP id 65so32691012pff.2
	for <yocto@yoctoproject.org>; Thu, 21 Jan 2016 17:28:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=NFl278OoYN9eDasJgJkIBX5s1LIG25iJ2xZrG/Adu5Y=;
	b=HwMKzeV1Cf5UFytv71u7/ejgE5Rkm1z0weMv0WYAirIff8shNBr1F7bKmFYBg0NZ2P
	d4gr9L3utdrIxeCWyX0SH+UZWX56o+jpDA48ORwn9a7o8N86cI2BLBnqEaxZSA1oha/8
	IpxAZ+Hgju6Z+Cz3vdIYaUXsrlQ23Cmyi9j68mpXkgjSImmzaSb1mAkSOvXAwzY29Q6+
	gc5Pp/dgxvGpTxo6X1MS/QsRuRm2vrDGhICFqGNsiea2J5jNCDgh/CHRqb0vPWb+KPMs
	wW8OikaAzqwr4DSyPhNFo/YL3sWnmjXzskYK1BIvbe/6JKR501H5rqcwXpdE7FfBFgkV
	7iwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-type
	:content-transfer-encoding;
	bh=NFl278OoYN9eDasJgJkIBX5s1LIG25iJ2xZrG/Adu5Y=;
	b=Y62P/IfXEEouoKYHIqsc+WzurIxEy9wu/qFyzeSAJlGFsZHmJwc+KCICr/YYxcWECj
	L+QVWMr915ynCvYfpKO3wRvYYZoL0Rz/iYnVK0uq+Qob+mi2D0bXPoQ7pTO9GNjyKED0
	/rLzffaW1Mmd4GR6zWkXVqcgtSHOXHZaSWLCaGlHl7mwqx1dJXj413glOqQj7MTMdM82
	nCvfeAOR9NPKuLkevoRE5zxwtWenrOP3WIyMsIivrS21AaE9zBhx0CPnlfxmXflb/mkB
	dWdmleBwT1jPGsDYmPMWBIdQr0gg2osm6oAxqI9Zc0P7h4LW38zgJXw9thDCpxLidAYa
	H8tg==
X-Gm-Message-State: AG10YOTA8ikEen321+qUkBol37W+Xqj2md8hdgNhsKLpqNCEfqrooItQJMSl7fx3WWeWAg==
X-Received: by 10.98.67.14 with SMTP id q14mr537287pfa.137.1453426137701;
	Thu, 21 Jan 2016 17:28:57 -0800 (PST)
Received: from ?IPv6:2601:202:4000:1239:f0f5:a917:60f2:fe2?
	([2601:202:4000:1239:f0f5:a917:60f2:fe2])
	by smtp.googlemail.com with ESMTPSA id
	h87sm5286458pfd.33.2016.01.21.17.28.55
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 21 Jan 2016 17:28:56 -0800 (PST)
To: openembedded-devel@lists.openembedded.org,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	Yocto Project <yocto@yoctoproject.org>
References: <2747032A-1F56-4CA6-860C-484B9292A0B5@gmail.com>
From: akuster808 <akuster808@gmail.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <56A185D6.8030502@gmail.com>
Date: Thu, 21 Jan 2016 17:28:54 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <2747032A-1F56-4CA6-860C-484B9292A0B5@gmail.com>
Subject: Re: [oe] [RFT] Glibc 2.23 and binutils 2.26
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
X-List-Received-Date: Fri, 22 Jan 2016 01:29:02 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 01/17/2016 03:54 AM, Khem Raj wrote:
> Hi all
> 
> upstream glibc and binutils release branches have been cut out and are being made ready for next release
> I have put together update patchset for both of them
> 
> here are the branches
> 
> https://github.com/kraj/openembedded-core/tree/kraj/binutils-2.26
> https://github.com/kraj/openembedded-core/tree/kraj/glibc-2.23

Several Security fixes will be included in glibc-2.23 update.

https://bugzilla.yoctoproject.org/show_bug.cgi?id=8980


CVE-2015-8776 - Passing out of range data to strftime() causes a segfault

https://sourceware.org/bugzilla/show_bug.cgi?id=18985


CVE-2015-8777 - LD_POINTER_GUARD is not ignored for privileged binaries
https://sourceware.org/bugzilla/show_bug.cgi?id=18928

CVE-2015-8778 - hcreate((size_t)-1) should fail with ENOMEM
https://sourceware.org/bugzilla/show_bug.cgi?id=18240

CVE-2014-9761 - nan function unbounded stack allocation
https://sourceware.org/bugzilla/show_bug.cgi?id=16962

CVE-2015-8779 - catopen() Multiple unbounded stack allocations
https://sourceware.org/bugzilla/show_bug.cgi?id=17905

> 
> FYI These are still using autorev to ensure that we test tip of release branches
> 
> Please give them a shot in your environments and report any issues you encounter.

BTW, Mips64 Octeon3 works fine. Aarch64 qemu boot tested.

- Armin
> 
> Thanks for help
> 
> -Khem
> 
> 
> 
> 
> 

