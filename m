Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92D8BE0073F
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2012 06:53:35 -0700 (PDT)
Received: by dadz8 with SMTP id z8so6826578dad.35
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2012 06:53:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:x-enigmail-version:content-type
	:content-transfer-encoding;
	bh=SHIOyEawlWQWCp4Iyv9HcT9CEoyByaIKqhZQRiSWjSk=;
	b=UCn263FkIUafkUFsabPP3aWLYAXx1ATN9JF8kSLTo2YSpDIUE+ghD98NgoLwsWurZb
	kpqK2TfOb4ZtQnsK/JpHE/QTZkgCt8zsu3s4tM6BV/J8bCMclu9cnn/fvrjjYQADMbHr
	izuoBRIK1TmhdqVUM9Y7DUyV//qYgYc8nwS5ykVHmHTSFG/tZtn74tlJjURPBsgbPFPT
	zHabpNw7B4AbsBrj3TLx++23/yXx2/dXH89nvwB5RUKOEz/3IaDB0eVqgbL+jDiMY3h+
	1YBcycJWDkag3AGbs7SAkRby3jm9e+mk/dwpVKfZSKMaBW4hKjCmj8w3dcacMPHxX9e5
	q4bA==
Received: by 10.68.131.38 with SMTP id oj6mr26906678pbb.39.1339422814906;
	Mon, 11 Jun 2012 06:53:34 -0700 (PDT)
Received: from [192.168.1.71] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209])
	by mx.google.com with ESMTPS id sy3sm18562966pbc.18.2012.06.11.06.53.32
	(version=SSLv3 cipher=OTHER); Mon, 11 Jun 2012 06:53:33 -0700 (PDT)
Message-ID: <4FD5F85C.3030203@gmail.com>
Date: Mon, 11 Jun 2012 06:53:32 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (Windows NT 6.1;
	rv:12.0) Gecko/20120428 Thunderbird/12.0.1
MIME-Version: 1.0
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
References: <1B44395A-0DD8-4136-83B3-FD82C9F5DDCA@keylevel.com>
	<4FD59E5D.4080008@r-finger.com>
In-Reply-To: <4FD59E5D.4080008@r-finger.com>
X-Enigmail-Version: 1.4.2
Cc: yocto@yoctoproject.org
Subject: Re: RaspberryPi Kernel - sometimes it works, sometimes it doesn't
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
X-List-Received-Date: Mon, 11 Jun 2012 13:53:35 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On 6/11/2012 12:29 AM, Tomas Frydrych wrote:
> Hi,
> 
> On 10/06/12 12:30, Chris Tapp wrote:
>> I've been building the 3.1.9 Raspberry Pi kernel under Denzil
>> using the meta layer at
>> https://github.com/djwillis/meta-raspberrypi. This uses a kernel
>> recipe based on the git repository at 
>> https://github.com/raspberrypi/linux/commits/rpi-patches.
>> 
>> Some of the kernel commit IDs (e.g. 
>> 94fbbc4e3988075abad0d3b32842b82c590324fc) seem to build ok, but
>> they don't always run. As in, if I -c clean and build then
>> sometimes I end up with a bootable image, sometimes I don't. I'm
>> not changing anything else in the build environment.
>> 
>> Any ideas what can cause this?
> 
> I find that -c clean does not work very well, afterward the package
> gets recompiled but instead of the actual package packages being
> rebuilt, an earlier version of the packages gets pulled out of
> sstate into the image. I definitely saw this behaviour with Yocto
> kernels, but I think happens with other packages as well; I always
> do -c cleansstate now to avoid this.

yes thats the intended behavior if nothing changed that ensues a
recompile then it will use precompiled sstate for the package

> 
> Tomas _______________________________________________ yocto mailing
> list yocto@yoctoproject.org 
> https://lists.yoctoproject.org/listinfo/yocto

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (MingW32)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAk/V+FwACgkQuwUzVZGdMxRlnwCfaIy1wo/G0gEIVbQQe0ImsKPa
2csAoJGhol1N0xrudHfT/c7T97Hoizhf
=l1iC
-----END PGP SIGNATURE-----

