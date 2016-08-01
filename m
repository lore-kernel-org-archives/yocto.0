Return-Path: <otavio.salvador@ossystems.com.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19F04E010D3; Mon,  1 Aug 2016 12:42:50 -0700 (PDT)
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
	*      [209.85.213.43 listed in list.dnswl.org]
Received: from mail-vk0-f43.google.com (mail-vk0-f43.google.com
	[209.85.213.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5DAFE010CB
	for <yocto@yoctoproject.org>; Mon,  1 Aug 2016 12:42:46 -0700 (PDT)
Received: by mail-vk0-f43.google.com with SMTP id s189so106935832vkh.1
	for <yocto@yoctoproject.org>; Mon, 01 Aug 2016 12:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
	h=from:mime-version:in-reply-to:references:date:message-id:subject:to
	:cc; bh=XkLoK0neSLh8f/m4DKj8GpRXdZiOZNQ6PMLGGACdj2I=;
	b=s3YUe3N85iGoHWvsbwjVL8SXGupI5/J7DaGkLez7x2Bt8gTFICFJ25DEMSqNTf1beo
	yh3+yyrGDsEk5I2b7OZ7ocHjGOEHFnaDkxj8B/SuzZh5CCshEG6AGQLQpxkQzx6TAOnC
	z8s0IIUJwUL8f7973WWyNNffmi5aDFsy3HeZhn3tig7wv6DWDmhA2IO8AnuOYpC5HX0T
	5/GEqE2dL5Fisqpmj+1a+F3RqFNO4AseiVhrLB6AvFIlGakVbhGHvkLwKer7bhxMW5Jl
	H47vzyOXvQ9rCRdSFppj30543DM5v0Wx3MwAHdknfWQ8uiuO8yXiMk+mBi2XZu2l8k5f
	tZjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:mime-version:in-reply-to:references:date
	:message-id:subject:to:cc;
	bh=XkLoK0neSLh8f/m4DKj8GpRXdZiOZNQ6PMLGGACdj2I=;
	b=B0ulPRNtiIDVwgbbz8QQYWoWlz5KKh1nwQ1uuaYLriVeLX87Kyrc9Jqvop9ox+IbBh
	OIP00LMyaWrnyqeS6XFoYDiKv6wlL3mIsLQAKLGnB7BzG0Qs1g/Tymj5N8KDDMiBOPZC
	LahInXk3hNkSSjubbDLUsgr9LVWkAdHKHcwEfDEZRU8SRDQsoo4/bvo7MyK5HRwvJy+t
	SiiI4ScgSiAHJvEX4ZfS1n+S3FIDdyaTLlwYjdA7TS8UMTvFC8ier1lYHSoFqMhO4IyX
	9uXPadjk4KQ7K8WBE+8h+fq45cWr867tnxfESKLavY5WaYOSkv9GAn7jfB4mVFbxEa0s
	W5lw==
X-Gm-Message-State: AEkoout25duLSE6X3HqhRhXacMrNPJumGsgd7KHNayJQ+2Y5PfgeDgvnofLgoD8nXGKBRw==
X-Received: by 10.31.170.200 with SMTP id t191mr27275860vke.131.1470080563699; 
	Mon, 01 Aug 2016 12:42:43 -0700 (PDT)
Received: from mail-vk0-f50.google.com (mail-vk0-f50.google.com.
	[209.85.213.50]) by smtp.gmail.com with ESMTPSA id
	k60sm5517862uak.23.2016.08.01.12.42.42 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 01 Aug 2016 12:42:42 -0700 (PDT)
From: Otavio Salvador <otavio.salvador@ossystems.com.br>
X-Google-Original-From: Otavio Salvador <otavio@ossystems.com.br>
Received: by mail-vk0-f50.google.com with SMTP id x130so107023135vkc.0
	for <yocto@yoctoproject.org>; Mon, 01 Aug 2016 12:42:42 -0700 (PDT)
X-Received: by 10.31.161.81 with SMTP id k78mr27241336vke.122.1470080562064;
	Mon, 01 Aug 2016 12:42:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.138.78 with HTTP; Mon, 1 Aug 2016 12:42:40 -0700 (PDT)
In-Reply-To: <724fa3d2-1c27-a315-54da-02934bf062f2@gravedo.de>
References: <7603e18c-345c-ddcf-cd95-14df64b60077@gravedo.de>
	<CADkTA4Ng8BoOou9UiS_dh8+x=Z2_1OJYPiWYkkD2cD3MHk0pxA@mail.gmail.com>
	<724fa3d2-1c27-a315-54da-02934bf062f2@gravedo.de>
Date: Mon, 1 Aug 2016 16:42:40 -0300
X-Gmail-Original-Message-ID: <CAP9ODKrsuE54Yn7n7vk2KVuV21t+wDgaS_NXj817tPHp3ZkFYA@mail.gmail.com>
Message-ID: <CAP9ODKrsuE54Yn7n7vk2KVuV21t+wDgaS_NXj817tPHp3ZkFYA@mail.gmail.com>
To: Simon Fels <morphis@gravedo.de>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Snaps on Yocto/OpenEmbedded
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
X-List-Received-Date: Mon, 01 Aug 2016 19:42:50 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Aug 1, 2016 at 4:14 PM, Simon Fels <morphis@gravedo.de> wrote:
> On 01.08.2016 16:06, Bruce Ashfield wrote:
>>
>>
>> On Mon, Aug 1, 2016 at 7:32 AM, Simon Fels <morphis@gravedo.de
>> <mailto:morphis@gravedo.de>> wrote:
>>
>>     Hey everyone,
>>
>>     I've worked on a new layer recently which brings snaps to any
>>     Yocto/OpenEmbedded based system.
>>
>>     If you have never heard about snaps yet you will find most details at
>>     http://snapcraft.io/ but generally snaps are a new packaging format made
>>     with security and fast updates in mind and allows applications to be
>>     packaged once but run everywhere no matter of the distribution used or a
>>     particular device type.
>>
>>     The layer is currently named meta-snappy and is available at
>>     https://github.com/morphis/meta-snappy
>>
>>
>> I had a quick browse this morning, and one question that jumped to mind was
>> if the oe-meta-go layer was causing problems for go/go-cross support ? I was
>> carrying some go/go-inc changes in meta-virtualization as well, but recent reports
>> are that oe-meta-go should work for everything now.
>>
>> I'm just asking, since it doesn't make sense for meta-virt or other layers to
>> continue to carry go build infrastructure when it could be unified.
> When I started to put meta-snappy together I ran into different problems
> with oe-meta-go and then reused what you put into meta-virt. I have the
> point on my TODO list to check if we can just switch to oe-meta-go
> rather than shipping go-cross on our own.

The meta-golang seems to be the most up to date one. Likely the best
one to try to converge as a single place for go-cross provider.

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

