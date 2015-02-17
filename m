Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA48DE00779; Mon, 16 Feb 2015 16:46:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.47 listed in list.dnswl.org]
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 600CEE0076B
	for <yocto@yoctoproject.org>; Mon, 16 Feb 2015 16:46:23 -0800 (PST)
Received: by pabkx10 with SMTP id kx10so2089352pab.13
	for <yocto@yoctoproject.org>; Mon, 16 Feb 2015 16:46:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=0kuN8Mr/JoR1f5jvqVWilb/XX9TRawR2dd5IamiJDIk=;
	b=Ss0hodnqIe4sOT+gJM+WWmmW6Sz3oCu0mVAyjHrg9SB80iSOTccMBuHch3fSr1A3lG
	DeZYdqQZ2RA8JtkspqnG2czYDYt2Q8E6Yd1Q8xZ3KBQ8Aig5QSHDga4QGAVapvk87aqr
	6NPYaIW31xIZIjZ5X42dwsZZfIdcYDIcmF3qn5LVqOG5hl57mtvS/qtQf4pM7aBZoNhV
	lXiuwOM1znV4GhXq52MIQ9i/9E0Xn40ZzJFBcOgN6VOuW4qTcrAif755dEb1vXI+RGjW
	0E6WZJJwLfWxNRWZ12bk6pQjUMKVycR9iaTLIuenygXpOjL+YWoNLziIppAPJ6cgLTBm
	wtJQ==
X-Gm-Message-State: ALoCoQnptyUEYVrwTcb/NojdpqVSxtbKQudHf7D3YdE5adaiqKIIzU/fZYybISDBVZjQxCpBHVk+
X-Received: by 10.68.164.3 with SMTP id ym3mr44258772pbb.100.1424133983620;
	Mon, 16 Feb 2015 16:46:23 -0800 (PST)
Received: from [172.26.37.58] ([76.14.1.153])
	by mx.google.com with ESMTPSA id qa1sm8109199pdb.84.2015.02.16.16.46.22
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 16 Feb 2015 16:46:22 -0800 (PST)
Message-ID: <54E28F5C.9070002@mvista.com>
Date: Mon, 16 Feb 2015 16:46:20 -0800
From: akuster <akuster@mvista.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1423890031-5704-1-git-send-email-akuster808@gmail.com>
	<CABcZANnOS=DoQspvKv1P5YVPv4Z_woTqJP4H9QENbb5Q+Z+2hA@mail.gmail.com>
In-Reply-To: <CABcZANnOS=DoQspvKv1P5YVPv4Z_woTqJP4H9QENbb5Q+Z+2hA@mail.gmail.com>
Subject: Re: [meta-cgl][PATCH] heartbeat: fix license issue
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
X-List-Received-Date: Tue, 17 Feb 2015 00:46:26 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Chris,

Thanks for catching this. I want to make sure I get these right.

Mahalo,
Armin

On 02/15/2015 06:01 AM, Christopher Larson wrote:
>
> On Fri, Feb 13, 2015 at 10:00 PM, Armin Kuster <akuster808@gmail.com
> <mailto:akuster808@gmail.com>> wrote:
>
>     -LICENSE = "GPLv2 LGPLv2+"
>     +LICENSE = "GPLv2 | LGPLv2+"
>
>
> Are you sure this is correct? Afaict this is wrong, as there are parts
> of the source tree under the GPL, and parts under LGPL, which means it's
> an AND relationship -- both apply, not an OR relationship, where you can
> choose which to use.
> --
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics
>
>

