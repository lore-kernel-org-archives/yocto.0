Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89A66E0087C; Wed, 28 Jan 2015 08:03:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.53 listed in list.dnswl.org]
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C60EE00858
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 08:03:38 -0800 (PST)
Received: by mail-pa0-f53.google.com with SMTP id kx10so26792552pab.12
	for <yocto@yoctoproject.org>; Wed, 28 Jan 2015 08:03:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=kFn14ceUR0JGlZnqA3R9llAqmGTNl8WewrSjKLI4BaQ=;
	b=bJ2w6c3s8kKv86F3WoAg3AtugWNfID7AUyn1M20lEOWDHEM6hDTiHktD7Z2LsulpAI
	AROY7PmxDPxF73RYJi6rmGSXkrienGtHli9NKCmoQhBnMPpzXTmu39lfYJmO6j49/wFP
	fxP4/rOBVaHqAZFc3HpTzs0FpdHVvXtg4IvNMW6u7l/H4Y/MdAukXFUaglkLj3p4cTFK
	r7bbeMd/QhyjGMLtYVEezgRHXjRM8QsmxkzTIBQEobpTS2NTAIvm1ZZ05fH2+XosU6aq
	EeJbb/MTZy8NFxAK2SbrylfplWf+mn8KlzyEwLcDBG1liq1N4Dp9DVJBBajRfzuPgCjC
	nUjQ==
X-Gm-Message-State: ALoCoQkRnKLc/veQKS6GMludyr78UyPw8TwQRdflfOE3wthN+5cIujQVxxP43svHwZVpcY+Mnsbg
X-Received: by 10.66.192.194 with SMTP id hi2mr6765661pac.57.1422461017382;
	Wed, 28 Jan 2015 08:03:37 -0800 (PST)
Received: from ?IPv6:2601:c:a700:272f:dc2d:babe:fe57:d615?
	([2601:c:a700:272f:dc2d:babe:fe57:d615])
	by mx.google.com with ESMTPSA id
	ex11sm5202834pac.19.2015.01.28.08.03.36
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 28 Jan 2015 08:03:36 -0800 (PST)
Message-ID: <54C9084F.30609@mvista.com>
Date: Wed, 28 Jan 2015 08:03:27 -0800
From: akuster <akuster@mvista.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: "Damian, Alexandru" <alexandru.damian@intel.com>, 
	Yocto Project Discussion <yocto@yoctoproject.org>
References: <CAJ2CSBtmYoA+z-hWpUR=-99CTWssLjY74MUh1hm5+Oi70nG7sw@mail.gmail.com>
In-Reply-To: <CAJ2CSBtmYoA+z-hWpUR=-99CTWssLjY74MUh1hm5+Oi70nG7sw@mail.gmail.com>
Subject: Re: HEADSUP - CVE 2015-023 remote code execution in glibc
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
X-List-Received-Date: Wed, 28 Jan 2015 16:03:47 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit


Alexandr,


On 01/28/2015 03:17 AM, Damian, Alexandru wrote:
> More details
>
> http://www.openwall.com/lists/oss-security/2015/01/27/9
>
> redhat bug and patch
>
> https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2015-0235
>
> Do we need to open a bug to track this ?

  I am working on patches already. if you opened a bug, please send me 
the #.

- Armin
>
>
> --
> Alex Damian
> Yocto Project
> SSG / OTC
>
>

