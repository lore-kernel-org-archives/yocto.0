Return-Path: <jpuhlman@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7184E00D9A; Mon, 11 Dec 2017 11:54:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f182.google.com (mail-pf0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53486E00D84
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 11:54:19 -0800 (PST)
Received: by mail-pf0-f182.google.com with SMTP id v26so12348752pfl.7
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 11:54:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=fkyNAGfj2xgt64qhZ+0ake+VHgKT+Q915uagToclI7U=;
	b=wVpirZQBKNvXJk41eIxt5Z+wJ62oy4ihzGJWlze/MQDVkn94UQOoQsaI7UywWaLbuA
	eOPmvy2NKDbebpfBmWSDj1BDIrWAsOMhp59FZxL3uoEcUebZAJ595HW+gFATUmrMBAUs
	MDuXBIfbdfZH0tR4t6TSbTX0c7TOLA7uGPyHt3o8hlorN3JunwlFSAu288BFJ7Yntf25
	bjfwH/hwRFIsZJB2RT/ppxoF1K1K3FOf0171qCYqIJfLF8hHHFjU6nsmZCICD4OJ34ld
	M+3C/H42QHdPk08yqoHwfxoOlwNOm2bvjIgWRe3CJSb8wvEXGYkuanpCR29usjuz2pm+
	vAeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=fkyNAGfj2xgt64qhZ+0ake+VHgKT+Q915uagToclI7U=;
	b=n/kfouFDCihDOwSV4CTJ10BMuVift3ncPm82GggOHhlHI8a30mXYaTre+czZdbwuzN
	ERcso2LuPaZvrFH9pUs3wqZ4XqBsu3R0JjiNH+LyYBrkO5D8lwttmq9SkOr1WnPrAieA
	96ZQk0Y0/FiVjddkH+o2JoXC/QWUysNn+Q6ysUDIiolk1pVx/PuM+cIWqesXJHNZipI/
	rPzJF0ch3RmBDat7/8LArywR0NEVlrx9VO3vpGe8whQYhaPKhGe1QjHSXsLE7dAd3l8E
	cBTLHTOoJan1VPbhjAMna3/KH4GnnZ3segyr7gNQSXe5NH14Ga6QZxlZD6W6iy9EYtsl
	mAUw==
X-Gm-Message-State: AKGB3mKMUd8MJWRLcww4M+ZV3qza6HnqJ9kSOq4fPz1soce8DiAwelEv
	7+BH2ZIvtxKAPzrJZPjW72hQKmClfU0=
X-Google-Smtp-Source: ACJfBouOeQ1k7/TcoG2xxYPTEPagVnOdr0axfZIDKKNhT8E4OaZUTkqzz+YTnMgrV08frUIPIG58yA==
X-Received: by 10.98.178.137 with SMTP id z9mr1422470pfl.114.1513022059438;
	Mon, 11 Dec 2017 11:54:19 -0800 (PST)
Received: from [192.168.1.13] (99-0-9-164.lightspeed.frokca.sbcglobal.net.
	[99.0.9.164]) by smtp.gmail.com with ESMTPSA id
	140sm22764697pgd.85.2017.12.11.11.54.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 11 Dec 2017 11:54:18 -0800 (PST)
To: Rail Shafigulin <rail@esenciatech.com>, yocto@yoctoproject.org
References: <CAOLNbFanXur1zRF7KtVpdN4n6Pyx5JW7P2xhfc+74UmTabyicA@mail.gmail.com>
From: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
Message-ID: <fffb74b4-80b5-60fb-0b4b-71878e29a622@mvista.com>
Date: Mon, 11 Dec 2017 11:54:17 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <CAOLNbFanXur1zRF7KtVpdN4n6Pyx5JW7P2xhfc+74UmTabyicA@mail.gmail.com>
Subject: Re: executable depends on the library that is built in the same recipe
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
X-List-Received-Date: Mon, 11 Dec 2017 19:54:20 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Given it is looking for libMyTool.so and not a versioned library, my 
guess is that the shared
library is not setting a proper soname when being built. All libraries 
should be built with a soname,
and if done correctly should be versioned.  The .so file generally 
shouldn't be the runtime library
but a link back to the versioned library, so you get something that 
looks like:

/usr/lib/libz.so -> libz.zo.1.2.11
/usr/lib/libz.so.1.2.11
/usr/lib/libz.so.1 -> libz.so.1


On 12/11/2017 11:45 AM, Rail Shafigulin wrote:
> I have a recipe that builds a library and an executable. Executable
> depends on the library which built int he same recipe. When I run
> bitbake I get the following error:
>
> WARNING: mytool-1.0+gitAUTOINC+3e2b76e330-r0 do_package_qa: QA Issue:
> /bin/mytool contained in package mytool requires libMyTool.so, but no
> providers found in RDEPENDS_mytool? [file-rdeps]
>
> I tried the suggestion given by the bitbake putting mytool in
> REDEPNDS_${PN}, but that didn't work. I also tried looking online for
> the solution but didn't find one.
>
> Can someone help out?
>
>

-- 
Jeremy A. Puhlman
jpuhlman@mvista.com


