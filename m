Return-Path: <cubicool@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DB84E00790; Thu, 25 Sep 2014 14:35:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.172 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (cubicool[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qc0-f172.google.com (mail-qc0-f172.google.com
	[209.85.216.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9451CE0074B
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 14:35:56 -0700 (PDT)
Received: by mail-qc0-f172.google.com with SMTP id c9so6056976qcz.31
	for <yocto@yoctoproject.org>; Thu, 25 Sep 2014 14:35:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=FCDVMjcAX+jrClkqD54FUtareUTGdNXJaURzZJPBdZg=;
	b=oE+1E/ibzuMYPKDJYtSpweufY9cNz5hmJPMF0k+oRcLrAiAQDIXTwmFm6A5FsNgsvx
	2DqvspqZihFI/HMTYMGbdrnxUePHeK3g89vS9QkmCrQzhYbEN9LAxvji6fZdtgdefSEm
	OrPOG9dhPHSdWniw5GxJ4cD6E1QJMCq97wB4IP5Z2Ua2YCilio4HtJhgARvplA5tprf9
	08hAFnGXq3k3k5tcYQCzekXr/9VO5j5iUD8SiK/6s9NQPe74RSIiYHE4xdP6K9hDRHgI
	Xq1qerQtbIzrcmGoZugeEes9I/czSFMM9hyWnpPZPITwl4Ho1zY67UYOqCxx47HAf1wa
	uHzQ==
X-Received: by 10.140.30.227 with SMTP id d90mr26403206qgd.55.1411680956412;
	Thu, 25 Sep 2014 14:35:56 -0700 (PDT)
Received: from ?IPv6:2602:306:cf90:4840::45? ([2602:306:cf90:4840::45])
	by mx.google.com with ESMTPSA id f17sm3068231qge.23.2014.09.25.14.35.55
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 25 Sep 2014 14:35:55 -0700 (PDT)
Message-ID: <54248ABA.3050703@gmail.com>
Date: Thu, 25 Sep 2014 17:35:54 -0400
From: Jeremy Moles <cubicool@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <542480E0.7090502@gmail.com>
	<CAJTo0LZLqSaxUOA4+LuH7rRpQrwO6jR_KrjuHDU77WbUfSUpoA@mail.gmail.com>
In-Reply-To: <CAJTo0LZLqSaxUOA4+LuH7rRpQrwO6jR_KrjuHDU77WbUfSUpoA@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding Python to an Image
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
X-List-Received-Date: Thu, 25 Sep 2014 21:35:59 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/25/2014 05:26 PM, Burton, Ross wrote:
> On 25 September 2014 21:53, Jeremy Moles <cubicool@gmail.com> wrote:
>> Hello everyone! With today's git (56f6634) I can build python using bitbake
>> without any issues. However, if I add it to an image I'm trying to arranage
>> (in the form of adding it to IMAGE_INSTALL) it totally explodes. The error
>> is massive, so I have attached it to this e-mail.
> The message says that it can't find a package called "python" (and
> then spams you with the complete list of packages it did find).
> There's a good reason for this: the python recipe doesn't actually
> produce a package called python.
>
> The binary and key libraries are in python-core, and the rest of the
> modules are split into separate packages.  If you want to install them
> all then install python-modules.
>
> Ross
>

Ah, thanks. In this case, python is the RECIPE, which can (and in this 
case, does) produce man PACKAGES.

Thanks for the reminder! Chugging right along!

