Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A38EDE0027E
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2012 21:48:09 -0700 (PDT)
Received: by eekd41 with SMTP id d41so1162949eek.35
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2012 21:48:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=JhI6KXoGqqSHiy8Q1A9piiQlZIeavBePzZbY3p2Ngcs=;
	b=hBbDfCtb6riywe1KcbIg1Nu7MT1wI0usL0CN9FlxfhMACnO475ceILx4ECqEGxvbd3
	YlnbDzGrxbCbgNBsF/5ZCj+woBd7rzPUhFRzTOn8J2lz4E6IeosqcZDN5gYrzFMue8rW
	FrldlQyNRczYv2J5hAGDAkfXDAyhDGaNeKdgsxYQ9cL7eaJHDwD00ASMub2MhjNu/R24
	ebtPMzA01aYnOMhkvHRGOMnD6qJl+nMRODPFJsTRyGSU9UVhAyq30OjZYFWdibtUFsnz
	uH8YxIJuBJiZeH3V33MKs07ZoZUugZsK/9B63qH3sGQcsnkBDCOr+XMHYCcRVeJGNFtF
	2RTQ==
Received: by 10.14.5.67 with SMTP id 43mr4699819eek.15.1345178888123; Thu, 16
	Aug 2012 21:48:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Thu, 16 Aug 2012 21:47:37 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 16 Aug 2012 21:47:37 -0700
Message-ID: <CAMKF1srjqDsesRcWP7oGzouPj9aOt_Ln0aOWE9cEQwpUQ7Unuw@mail.gmail.com>
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>, 
	openembeded-devel <Openembedded-devel@lists.openembedded.org>,
	yocto@yoctoproject.org
Subject: Toolchain rework, call for testing
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
X-List-Received-Date: Fri, 17 Aug 2012 04:48:10 -0000
Content-Type: text/plain; charset=UTF-8

Hi All

Recently glibc build has been simplified upstream. It has dropped the
dependency on libgcc_s and libgcc_eh for building glibc itself.
This means that we can simplify our toolchain bootstrap a bit by
dropping 1 of the 3 cross gcc build stages. We do not need
gcc-cross-intermediate
anymore. This should bring some build time reduction and simplify the
bootstrap. I have a series of patches which I have tested
by building core-image-minimal and meta-toolchain for all supported
qemu architectures and also uclibc/eglibc both
but it needs a lot more testing therefore I am calling out wider
audience for help in testing it out.

The branch is

http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/toolchain-rework

Thanks

-Khem

