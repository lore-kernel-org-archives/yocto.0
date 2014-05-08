Return-Path: <andreas@galauner.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00715E0073D; Thu,  8 May 2014 06:48:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from server.galauner.de (server.galauner.de [144.76.20.253])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7A91E00478
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 06:48:49 -0700 (PDT)
Received: from [10.23.35.201] (unknown [149.201.48.102])
	by server.galauner.de (Postfix) with ESMTPSA id DA9C740B66;
	Thu,  8 May 2014 15:48:48 +0200 (CEST)
Message-ID: <536B8B40.8060008@galauner.de>
Date: Thu, 08 May 2014 15:48:48 +0200
From: Andreas Galauner <andreas@galauner.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>, 
 yocto@yoctoproject.org
References: <536A5249.9030907@galauner.de> <536A8B5E.2080409@windriver.com>
In-Reply-To: <536A8B5E.2080409@windriver.com>
X-Enigmail-Version: 1.6
Subject: Re: linux-yocto custom device tree in overlay
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
X-List-Received-Date: Thu, 08 May 2014 13:48:52 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 07/05/14 21:37, Bruce Ashfield wrote:
> So you can either patch it into the kernel, or do a bbappend with
> that copies it into the source tree
> (linux/arch/arm/boot/dts/mydevicetree.dts).

Thx! That worked fine.

For reference, this is what I added:
> do_install_prepend() {
> 	cp ${WORKDIR}/*.dts ${WORKDIR}/linux/arch/${ARCH}/boot/dts/
> }

Cheers,
- Andy


