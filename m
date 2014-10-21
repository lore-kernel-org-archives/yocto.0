Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD3FBE00849; Mon, 20 Oct 2014 17:55:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.49 listed in list.dnswl.org]
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15F2DE0080C
	for <yocto@yoctoproject.org>; Mon, 20 Oct 2014 17:55:41 -0700 (PDT)
Received: by mail-pa0-f49.google.com with SMTP id hz1so201645pad.8
	for <yocto@yoctoproject.org>; Mon, 20 Oct 2014 17:55:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=ZzfEplV9ToNNoBMX9146KLSf13wIjKCsuEYCcuTEZWI=;
	b=0MXM+OreyRPqsKrTuw1DaG7fW5xylhAUIbYI0OJ1HLu9XeGKyvqRH2Dua2/wrz2hek
	PvN5EolBHn7oJ1hU4OTd88Q8KV0402EJQpCrbBiML5bUXmGXvt8qoniJpgSTT72LzYly
	7/pi2EuYQWmVLImQiqUGOhc2VFkNU8U+4RCNUiXL8tiL8tfP3jrKqR7t452QKCxndCRi
	T2/euYmIq8NuJszRxaL/JM0Jkm/IfO0HPAIeatusPInfTkhPlM8VvyIpluXQcLyoKynv
	I0ztv4e0EaYAfrumnLJYAXFtm0P+7rBSVe5vvOEYQPu6mhinIGL2QE2c1/S0yDgY2+pW
	/qkw==
X-Received: by 10.66.228.35 with SMTP id sf3mr12033252pac.110.1413852941497;
	Mon, 20 Oct 2014 17:55:41 -0700 (PDT)
Received: from [192.168.18.12] (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by mx.google.com with ESMTPSA id
	fk10sm10316202pab.29.2014.10.20.17.55.39 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 20 Oct 2014 17:55:40 -0700 (PDT)
Message-ID: <5445AF08.5010301@gmail.com>
Date: Mon, 20 Oct 2014 17:55:36 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.1.2
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <544404D7.9030905@gmail.com>
	<CAJTo0Lb_tRj9ROyQ5D6ZSca-FoeY_wDt-2qOY9Fe53PFLnspeQ@mail.gmail.com>
In-Reply-To: <CAJTo0Lb_tRj9ROyQ5D6ZSca-FoeY_wDt-2qOY9Fe53PFLnspeQ@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Poky X11
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
X-List-Received-Date: Tue, 21 Oct 2014 00:55:51 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/20/2014 02:40 AM, Burton, Ross wrote:
> On 19 October 2014 19:37, akuster808 <akuster808@gmail.com> wrote:
>> When I build 'core-image-x11' on Poky, X on wont start. I am using the
>> standard Poky clone with no added layers. When I manually start x I get the
>> following error:
>>
>> startx
>> /etc/X11/xinit/xinitrc: line 95: twm : command not found
>> /etc/X11/xinit/xinitrc: line 96: xclock : command not found
>> /etc/X11/xinit/xinitrc: line 97: xterm : command not found
>> /etc/X11/xinit/xinitrc: line 98: xterm : command not found
>> /etc/X11/xinit/xinitrc: line 99: exec : command not found
>
> Did you at some point do a build with meta-oe enabled, and then not
> enabled?

I could not recall.

There's a known bad interaction between oe-core and
> meta-oe's X init scripts which results in problems like this.  The
> quick fix is to wipe your tmp and rebuild (using sstate this should
> take just a few minutes).

Did that and still have the problem.

- Armin

>
> Ross
>

