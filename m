Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4B29E00C5F; Mon, 21 Sep 2015 12:08:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2583E009C3
	for <yocto@yoctoproject.org>; Mon, 21 Sep 2015 12:08:51 -0700 (PDT)
Received: by igbkq10 with SMTP id kq10so85614913igb.0
	for <yocto@yoctoproject.org>; Mon, 21 Sep 2015 12:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=G1ioB3lRWl+fgp0IfjvHjGXhPQ1WDDwSKrjOjjmI/8c=;
	b=IWvVJI5yDSMPhIBCYQeCNBjN0+PD7DHjRE+Mfu5hFIFvhUIO5K/P13VfioqEy2M0eo
	v5GCWpOnQbCdELxJsz6qILnPFv5GFqGSr/bDiWSY8KpOUB+e9wN+/CMCtrjhtEFFK04H
	1uEkbVZ6vEyUyf23dvddIIY/onXNJ5U4O0zvR/KscuBUvBU7WEkj2jOogihAfJ1820Gw
	4pGdcjT+M3vJpefvgHRhk/wwCcMnEa2VO7XBtb59qoJWYjeI3+ouREt6clzQfT3+DdEC
	APX6H3G42wAp/rkd44YqKKaX91Gc+MihiBH/lXL+eLPATrO7hwbckXT4mtEZSbYV8IGf
	zt9g==
X-Received: by 10.50.87.98 with SMTP id w2mr13216227igz.60.1442862530962;
	Mon, 21 Sep 2015 12:08:50 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	t2sm6070687igs.18.2015.09.21.12.08.49
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 21 Sep 2015 12:08:50 -0700 (PDT)
To: Khem Raj <raj.khem@gmail.com>
References: <56001431.6030001@gmail.com>
	<CAMKF1sqomLPSg3Fn9jJfwJFGnfquM81hpjELX_VuWQw-t7jfww@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <560055BF.8070802@gmail.com>
Date: Mon, 21 Sep 2015 15:08:47 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1sqomLPSg3Fn9jJfwJFGnfquM81hpjELX_VuWQw-t7jfww@mail.gmail.com>
Cc: yocto@yoctoproject.org, Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] packageconfig for non-autotooled project
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
X-List-Received-Date: Mon, 21 Sep 2015 19:08:55 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hey Khem,

On 09/21/15 13:03, Khem Raj wrote:
>
> Look at the patches I have posted for raspberry pi layer
>

Found them. Awesome, thanks! :-)

