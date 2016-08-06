Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6B83E00E1B; Sat,  6 Aug 2016 00:21:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AC31E00E05
	for <yocto@yoctoproject.org>; Sat,  6 Aug 2016 00:21:01 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1bVvuR-0004Fj-IC
	for yocto@yoctoproject.org; Sat, 06 Aug 2016 09:20:39 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: "robert.berger@gmane" <gmane@reliableembeddedsystems.com>
Date: Sat, 6 Aug 2016 10:20:26 +0300
Message-ID: <8f8e112c-ef50-3190-6b33-2ffb28e6b2f1@reliableembeddedsystems.com>
References: <OF371096A6.242D0E60-ONC1258006.0025F610-C1258006.0026E5CC@esa-grimma.de>
	<47ea7f13-1abc-f969-c928-1da2e0075b36@gmail.com>
	<OF66EF9F5A.E44F4404-ONC1258006.00282195-C1258006.0028AE4A@esa-grimma.de>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
In-Reply-To: <OF66EF9F5A.E44F4404-ONC1258006.00282195-C1258006.0028AE4A@esa-grimma.de>
Cc: Yocto Project <public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org>,
	Khem Raj <public-raj.khem-Re5JQEeQqe8AvxtiuMwx3w@plane.gmane.org>
Subject: Re: Antwort: Re: How to set the sysroot toolchain to hard float
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
X-List-Received-Date: Sat, 06 Aug 2016 07:21:04 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 2016-08-05 10:24, S.Jaritz@esa-grimma.de wrote:
>
> @TOOLCHAIN_OPTIONS: Where these are set in custom layers(like meta-atmel)?
>

If you ask me I would say here [1]:

DEFAULTTUNE = "cortexa5thf"

Here [2] are the available HF options:

# HF Tunes
AVAILTUNES += "cortexa5hf cortexa5thf cortexa5hf-neon cortexa5thf-neon"

[1] 
https://github.com/linux4sam/meta-atmel/blob/master/conf/machine/include/sama5d3.inc
[2] 
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/conf/machine/include/tune-cortexa5.inc

Regards,

Robert



