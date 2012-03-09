Return-Path: <jfabernathy@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A443E00596
	for <yocto@yoctoproject.org>; Fri,  9 Mar 2012 05:22:10 -0800 (PST)
Received: by vbjk17 with SMTP id k17so1870656vbj.35
	for <yocto@yoctoproject.org>; Fri, 09 Mar 2012 05:22:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=HLyZIdxjakO51Y6AxSyzpYd0DxE4aW5216cmDdZd+Z0=;
	b=QDV1rPHJuMF48uOH2EYXUhTabx4078e7jdQPQ2o50VuJndyHiYBSJcml0/Z8drdTZ6
	txmdwv7BJdanP7H1Bc0hLWj78gpNC18aBZ5q5vzZ08ziUzLNag2xbDUaH3B9GMUbSoaO
	dK3qSvqeY7k81Pxvm9+Ir62bKYcE4T3TO5B/9ji6znf0ijnUkr1ddjiEvFoUX78nvI2d
	T1Ck4IhSc9DiwJW6SqzR34CuGGZwq8CFmHs/DBK2Ajlin/wHkizYw6XW50Wnck1cjYjd
	vgBngqfY7jTtHMRj0bWtXs1Xjka9DLn1uqQrtlmrek37fqhNh16DKDlfZAdLYBGmfFI5
	SGfQ==
Received: by 10.52.29.75 with SMTP id i11mr3447253vdh.23.1331299329790;
	Fri, 09 Mar 2012 05:22:09 -0800 (PST)
Received: from [10.0.1.54] (nc-184-4-33-105.dhcp.embarqhsd.net. [184.4.33.105])
	by mx.google.com with ESMTPS id w6sm10588848vdj.4.2012.03.09.05.22.07
	(version=SSLv3 cipher=OTHER); Fri, 09 Mar 2012 05:22:08 -0800 (PST)
Message-ID: <4F5A03FD.4080604@gmail.com>
Date: Fri, 09 Mar 2012 08:22:05 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F58D16C.8030309@gmail.com>
	<CADzUK1K0BTWTm8kfto2SZGpv7Q6sSGcCKggCHXeaconFKR9xcg@mail.gmail.com>
	<4F591A23.3050908@gmail.com>
	<CA+gsK-qzbm6j9Vj7jmDc7E2g=LfrUpwZENsXsPLaVT7cbpWg1Q@mail.gmail.com>
	<4F59280A.9010603@gmail.com>
	<CADzUK1J+EdCkjRsFRdTYZY3HiLwmWxnEd1s3tNDVFDaHKuSnmQ@mail.gmail.com>
	<4F593209.6040309@gmail.com> <4F593365.4060904@mlbassoc.com>
	<4F5934F0.6090600@gmail.com> <20120309020444.500f5533@eb-e6520>
In-Reply-To: <20120309020444.500f5533@eb-e6520>
Subject: Re: Adding test files to an image
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
X-List-Received-Date: Fri, 09 Mar 2012 13:22:10 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

On 03/08/2012 08:04 PM, Eric Bénard wrote:
> Le Thu, 08 Mar 2012 17:38:40 -0500,
> jfabernathy<jfabernathy@gmail.com>  a écrit :
>> So what I can get to work is the following recipe, but what I want is
>> not o have to specify the file extension:
>>
> you may be able to build your archive in a directory like :
> myvideos-1.0/files.mp4, so that your files will be available in ${S} =
> ${WORKDIR}/myvideos-1.0/
>
> Eric
Duh!  That was too easy. Not sure why it was not obvious to me.  Thanks,

So I put all my videos into a directory called myvideos-1.0 and tar 
gz'ed the whole directory.  now the following works:

DESCRIPTION = "my video test files"
SECTION = "examples"
LICENSE = "CLOSED"

MY_DESTINATION = "/home/root/myvideos"

SRC_URI = "file://myvideos-1.0/myvideos-1.0.tar.gz"

do_install_append() {
         install -d ${D}${MY_DESTINATION}
         install -m 0644 ${S}/* ${D}${MY_DESTINATION}
}

PR = "r0"

FILES_${PN} += "${MY_DESTINATION}/*"
------------------------------

You just have to put your newly created tarball of the myvideos-1.0 
directory in the SRC_URI.

Thanks again,

JIm A


