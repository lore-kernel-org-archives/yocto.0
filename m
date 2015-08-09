Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1028E00A8C; Sun,  9 Aug 2015 16:44:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E15BE006EE
	for <yocto@yoctoproject.org>; Sun,  9 Aug 2015 16:44:24 -0700 (PDT)
Received: by iodd187 with SMTP id d187so154675133iod.2
	for <yocto@yoctoproject.org>; Sun, 09 Aug 2015 16:44:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=EAZ+I9pD4D18grorzsh5l3MlxxEjEnpZKrzc9sXhEvg=;
	b=Nj6Fi57PjgKmrhxhDjWAtES+HaF0ovGGCzaP98C/FUvUl0FT99B6IstN7CMeI9umMj
	9g60zQscQAX2E+S/DafcYuH40nCUOB/dRGsLGkIOQiVRfabEl+DivJsgTK3qyZOiHVUz
	OUOwowA/8Synkf4b0PSdj6hvX3EM02HUYdrMpebPc320b7A7v0SGTpsKalBowg73A3iD
	RyorZzdH8sQu76t4UtWoNhSK5TIBGghEigySxuIEEt3xVPlhgcBJfHTeXRUmbA9k1LYb
	ubLIz/tdfsnjbYIGWCrgsfRyp/p/OLHX6R38yhDLC6ucEn8DgrD58yz5rzZgF/JPmaET
	vWGA==
X-Received: by 10.107.38.212 with SMTP id m203mr21160814iom.98.1439163863678; 
	Sun, 09 Aug 2015 16:44:23 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	o140sm12000857ioe.27.2015.08.09.16.44.22
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 09 Aug 2015 16:44:23 -0700 (PDT)
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <55C277BF.5020309@gmail.com>
	<1439163692.30467.159.camel@linuxfoundation.org>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <55C7E5D1.6050802@gmail.com>
Date: Sun, 9 Aug 2015 19:44:17 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <1439163692.30467.159.camel@linuxfoundation.org>
Cc: yocto@yoctoproject.org
Subject: Re: building an SDK for MacOSX
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
X-List-Received-Date: Sun, 09 Aug 2015 23:44:25 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 08/09/15 19:41, Richard Purdie wrote:
> On Wed, 2015-08-05 at 16:53 -0400, Trevor Woerner wrote:
>> Hi,
>>
>> I came across RP's meta-darwin today that I'm hoping will enable me to
>> build an OpenEmbedded SDK that can be used by my colleagues who work in
>> a MacOSX environment?
>>
>> Is my understanding correct?
> 
> Yes.
> 
>> Has anyone tried this lately? The last commit was from almost exactly a
>> year ago.
> 
> I believe Juro might have done, I admit I haven't tried it in a while.
> 
>> The description in the README is a bit vague. I've never used a MacOSX
>> system so I'm not entirely sure of the filesystem layout. What exactly
>> is needed to create the OSX-sdk.zip file?
>> 	/usr/include
>> 	/usr/lib
>> 	/lib
>>
>> Is that all?
> 
> I think so. Sadly the Apple license precludes us from sharing such a
> thing :(. Patches to improve the README to be more specific are welcome
> though.

Wow, talk about "crossing in the mail" :-)


