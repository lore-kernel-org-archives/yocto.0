Return-Path: <mar.krzeminski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52EC3E00A3C; Thu, 13 Aug 2015 23:49:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mar.krzeminski[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1668DE00707
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 23:49:30 -0700 (PDT)
Received: by wibhh20 with SMTP id hh20so10115605wib.0
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 23:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=UfPcSlMiptObfAJ482fbQwSPYkdOqCmR8dhs5yEfKhY=;
	b=xvxxuXqfbI6KuWf3uRMtv53XQpEkqFIhWswZkh6iW/BzQxIA9SIAKjkOQWNNJidNlu
	ZBugqHRJkeip3eRGPr50CncnLsRelA1tBpNWteq0pCX4BxIZkJLG1QNUiq7GDSoHZLqD
	Y7fPyvi2j4J6DiYaH9BOY6DQDHW8rQ9IdCO/+gBp5GRkGjTYgkbwY6thl6y41LLqFGr5
	an39ALa/a5uQCnPPItlknbdwTflJFreNF1BAMkQL+YN4ly8stQBRRp5PBl6Sq4cFK9Lp
	5Z4fYhajis/C0wWhniuACsy3acDbNVAhkMUi89/HqHu6NLsTIfGhb0c1mPG8uYFT3wKT
	P9Aw==
X-Received: by 10.180.91.131 with SMTP id ce3mr3612386wib.84.1439534969545;
	Thu, 13 Aug 2015 23:49:29 -0700 (PDT)
Received: from [100.82.26.31] (ip-5-172-247-223.free.aero2.net.pl.
	[5.172.247.223])
	by smtp.gmail.com with ESMTPSA id 4sm6667288wjt.46.2015.08.13.23.49.27
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 13 Aug 2015 23:49:28 -0700 (PDT)
Message-ID: <55CD8F72.5050402@gmail.com>
Date: Fri, 14 Aug 2015 08:49:22 +0200
From: "mar.krzeminski" <mar.krzeminski@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.8.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <CABc_YGCV8RAVHLNc9tE8Q+ty5ys5C5X4-SvyNuw=tU+pWVh82A@mail.gmail.com>
	<CAMKF1spm-OTtD3OtfLTJbX34xk1myvK5JVu_h5sJ=53tKCX8Tw@mail.gmail.com>
In-Reply-To: <CAMKF1spm-OTtD3OtfLTJbX34xk1myvK5JVu_h5sJ=53tKCX8Tw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: overriding install in recipe for nativesdk
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
X-List-Received-Date: Fri, 14 Aug 2015 06:49:40 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Thanks for the clue, but as you mentioned u-boot is small so there is no 
big problem with that.

W dniu 13.08.2015 o 19:36, Khem Raj pisze:
> On Tue, Jul 14, 2015 at 9:57 PM, Marcin Krzemiński
> <mar.krzeminski@gmail.com> wrote:
>> Currently in our yocto layer there is a recipe for u-boot that also produce
>> mkimage binary for host,
>> I would like to have mkimage in SDK. Now, there is a separate recipe in
>> yocto to do that, but I am wondering is it possible in some way to override
>> install function for nativesdk. Then I could use same sources for u-boot and
>> I won't be downloading them twice.maybe there is another way that I can try?
> you could use shared-workdir model like what kernel and gcc use but
> maintenance of such a setup is high clue
> it may be appealing for components with large sourcecode and multiple
> recipes uboot may not be particularly suitable
>


