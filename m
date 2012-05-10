Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31416E0044A
	for <yocto@yoctoproject.org>; Thu, 10 May 2012 12:05:41 -0700 (PDT)
Received: from [109.224.129.17] (port=63929
	helo=macbook-pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1SSYgF-0003BL-4e
	for yocto@yoctoproject.org; Thu, 10 May 2012 20:05:39 +0100
Mime-Version: 1.0 (Apple Message framework v1278)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <CAMKF1soOa84kp6YLCg=XrUqAb25ZbbmUcK-oJFT9dWrqRttP6A@mail.gmail.com>
Date: Thu, 10 May 2012 20:05:36 +0100
Message-Id: <32F63FBD-0205-4B4A-A23A-33A6BF65FC87@keylevel.com>
References: <2BC681BE-E7C5-4CDD-8E03-7E567D5A8288@keylevel.com>
	<CAMKF1soOa84kp6YLCg=XrUqAb25ZbbmUcK-oJFT9dWrqRttP6A@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1278)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Re: gettext.bb question
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 10 May 2012 19:05:41 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


On 10 May 2012, at 04:26, Khem Raj wrote:

> On Wed, May 9, 2012 at 2:39 PM, Chris Tapp <opensource@keylevel.com> wrote:
>> 
>> DEPENDS = "libxml2-native gettext-native virtual/libiconv ncurses expat"
>> DEPENDS_virtclass-native = "libxml2-native gettext-minimal-native"
>> 
>> What does -native in the DEPENDS= 'do' here?
> 
> there is a bit of optimization here to parallelize the build where
> gettext-minimal-native is now used otherwise
> gettext becomes serialization point for build
> 
> You should also look at gettext.bbclass when you are
> looking into understanding gettext dependencies


Thanks Khem / Saul,

That makes sense.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




