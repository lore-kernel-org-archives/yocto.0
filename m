Return-Path: <otavio.salvador@ossystems.com.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72474E00B30; Mon, 26 Oct 2015 05:09:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.175 listed in list.dnswl.org]
Received: from mail-ig0-f175.google.com (mail-ig0-f175.google.com
	[209.85.213.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B9FEE00473
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 05:09:09 -0700 (PDT)
Received: by igbkq10 with SMTP id kq10so56709637igb.0
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 05:09:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ossystems_com_br.20150623.gappssmtp.com; s=20150623;
	h=from:mime-version:in-reply-to:references:date:message-id:subject:to
	:cc:content-type;
	bh=/D3VZfuwrwNjWbjKFnDVCBjakMuevTt07T4OvH4CeNM=;
	b=KTURXBTUvCZBhDn+GO7fGzPTjx4YvugK8e6W6+z4/1W0XDg9czVvr+x5oVbE1pvrUS
	PThmusHSj/r3I7HFAL7wwBZ5u8Kx2UN05XsHrH9ov3awal7m6sBNLNgkyhb5lFlNZYZ6
	6+FDsTbzj0PXnz9qMtSAb2sbR3EWFgz8pwOf4xPvADC8lsXHsvEQYq/vakP3lOWgA0ZQ
	vQW4YhwZLR4BgSuuIWu0V9qaOE/4ZqEXBb7RNAMdn48eRZskpL5rd2vX+FH6YnO0H7KN
	KpTVEyJTTjXqMUqnaQiKQHslhLtVLIwlAIzkc2vWN6QTjsMUAybqBhYMCKKxA35BLI95
	xsrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:mime-version:in-reply-to:references:date
	:message-id:subject:to:cc:content-type;
	bh=/D3VZfuwrwNjWbjKFnDVCBjakMuevTt07T4OvH4CeNM=;
	b=iCKdWMH0rP66foejtj2CLWxI9Z11U/HIOnC3SUbhrDoT67qgjsOwbUYEcNeNwyCe36
	Vp43QGic5Frpa8eM1VRfJqk3DiA7M/lC4fVEMxKC1QYaF9/w++6hP5UwG8/0W1zwqMo7
	GuERyljBKhMTFxiaKuaKXC/3GgXwWyryZeQOnDUx6SG4HO1VqMC7LOBOy08BdmcttkP/
	Vyn9b6sBR+cBxo+oFLl26BQzLmTse8OpVlWYd2cP8DuvBjd07LSPXBSL5RumIzaR7UB4
	mrhDYDy/oFRYhgDLpQ46ulO5ujN6sWK1nFuamzNjCcJsG7Lwvgg2LpKEFLl9Nly53yYm
	2CxA==
X-Gm-Message-State: ALoCoQmRVEgklPgH2ZLS5u7+4jtV3nhV354iZnn7zZ/7KTWmCYd/BW2Zfdrhu9ro7dlcJDK192Cf
X-Received: by 10.50.122.68 with SMTP id lq4mr18681701igb.87.1445861349031;
	Mon, 26 Oct 2015 05:09:09 -0700 (PDT)
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com.
	[209.85.223.173]) by smtp.gmail.com with ESMTPSA id
	x83sm12891932ioi.36.2015.10.26.05.09.07 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 26 Oct 2015 05:09:07 -0700 (PDT)
From: Otavio Salvador <otavio.salvador@ossystems.com.br>
X-Google-Original-From: Otavio Salvador <otavio@ossystems.com.br>
Received: by iodd200 with SMTP id d200so20436476iod.0
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 05:09:06 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.107.17.18 with SMTP id z18mr29880315ioi.28.1445861346835;
	Mon, 26 Oct 2015 05:09:06 -0700 (PDT)
Received: by 10.36.218.7 with HTTP; Mon, 26 Oct 2015 05:09:06 -0700 (PDT)
In-Reply-To: <562E0F23.1040404@gmail.com>
References: <1445812988-6456-1-git-send-email-net147@gmail.com>
	<5542134.NUiWrkt5lN@peggleto-mobl.ger.corp.intel.com>
	<562DE34F.2040905@gmail.com>
	<CAP9ODKqqQVBUX9vc3ysrXQMAfZxNFqcws5Tg7qrVJcAA7eHx5w@mail.gmail.com>
	<562E0F23.1040404@gmail.com>
Date: Mon, 26 Oct 2015 10:09:06 -0200
Message-ID: <CAP9ODKoru3aZbFxd8cQjWGH8+o6F-diVDvb756aL2OMeBNa7Wg@mail.gmail.com>
To: Jonathan Liu <net147@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Otavio Salvador <otavio@ossystems.com.br>, yocto <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH v2] qtbase: enable Raspberry Pi support
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
X-List-Received-Date: Mon, 26 Oct 2015 12:09:14 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 26, 2015 at 9:31 AM, Jonathan Liu <net147@gmail.com> wrote:
> On 26/10/2015 10:28 PM, Otavio Salvador wrote:
>> On Mon, Oct 26, 2015 at 6:24 AM, Jonathan Liu <net147@gmail.com> wrote:
>>> On 26/10/2015 7:08 PM, Paul Eggleton wrote:
>>> It would rebuild qtbase (and recipes depending on it) without Raspberry
>>> Pi
>>> support for other machines.
>>> I see similar machine-specific do_configure_prepend elsewhere (e.g.
>>>
>>> https://github.com/Freescale/meta-fsl-arm/blob/master/qt5-layer/recipes-qt/qt5/qtbase_%25.bbappend).
>>>
>>> Otavio, any thoughts on a better way to handle this?
>>
>> We handle this moving it to a SoC subarch and using a dynamic package
>> arch handler to put every package depending on it as a subarch as
>> well. Ideally we could split the QPA module and build it separated. No
>> clue if it is possible or not.
>
> So for meta-fsl-arm, would only the qtbase-plugins package be using
> machine-specific arch and the other qtbase packages be using
> non-machine-specific arch?
> Or is it done on a per-recipe rather than per-package granularity?

We have the handler, which allows for it to be done properly[1].

1. http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-arm/tree/conf/machine/include/imx-base.inc#n68

Including 'qtbase' here will make it to move all packages depending on
it for the subarch.

The real long term solution is to try to split it and make the QPA
package machine specific. I don't know if it is possible.

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

