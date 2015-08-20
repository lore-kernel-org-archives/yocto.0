Return-Path: <andrew@bradfordembedded.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 080EBE00A8C; Thu, 20 Aug 2015 12:13:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [66.111.4.27 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 323 seconds by postgrey-1.32 at yocto-www;
	Thu, 20 Aug 2015 12:12:56 PDT
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com
	[66.111.4.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC64EE00A7B
	for <yocto@yoctoproject.org>; Thu, 20 Aug 2015 12:12:56 -0700 (PDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id D114320303;
	Thu, 20 Aug 2015 15:07:31 -0400 (EDT)
Received: from frontend1 ([10.202.2.160])
	by compute1.internal (MEProxy); Thu, 20 Aug 2015 15:07:31 -0400
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	bradfordembedded.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=mesmtp; bh=bG0KY5zLixRpJW8P5Ghtk1uAvrI=; b=D7avJn
	0GcHHvx4ZEsFMumulMYW0/WYtAgJtETfmTK1ARKmAZ3dTXiYtp6ks9CDHweT1rHY
	X80CXNwUSZFl0hClX7mUB6or/ZKxsp4AKQWJ6Mgo88ovKeepfz9CNUpSR0wvIJut
	8m1AU3Gos9AWeoMW4yja4Cy52XaucgAFU4PGY=
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-sasl-enc
	:x-sasl-enc; s=smtpout; bh=bG0KY5zLixRpJW8P5Ghtk1uAvrI=; b=PbHUF
	DxiDuUmp2G6FfjsrAG8uvsQMl4GhAv4donhNQA2nnh3so+aSl16bGSgXbA1CqUS3
	PrJE/iMW/8eHnxR3VnPzBVm+TfKJup5vEfI+wlWyUR78EpfQB11uxpCJuNz8K/a5
	UL7S9jq6Z0Dk2KZfI3o+E9JumzuEGM6+09pjYI=
X-Sasl-enc: +Z6ye3TXkLEwiAAQSLObj87jBWX3rOK57S1ZxvHmqOwv 1440097651
Received: from rhino.kodakalaris.net (clr-vpn01.kodakalaris.com
	[198.140.222.129])
	by mail.messagingengine.com (Postfix) with ESMTPA id 5D977C00014;
	Thu, 20 Aug 2015 15:07:31 -0400 (EDT)
Date: Thu, 20 Aug 2015 15:07:30 -0400
From: Andrew Bradford <andrew@bradfordembedded.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20150820190729.GB17846@rhino.kodakalaris.net>
References: <CAMeZNHRGp89W8p9w9AGGoW9JeFLiNPV2ys_S66Qt5zd4g7YtHA@mail.gmail.com>
	<CAMKF1sohx3ChdbsVUTan=j7-D5Q0daEJYz_JeW9E9JXC=ZLDzw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1sohx3ChdbsVUTan=j7-D5Q0daEJYz_JeW9E9JXC=ZLDzw@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem creating debug build with inlined functions
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
X-List-Received-Date: Thu, 20 Aug 2015 19:13:03 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi Khem,

On 08/13 18:51, Khem Raj wrote:
> On Thu, Aug 13, 2015 at 1:25 PM, Todd Efflam <todd.efflam@gmail.com> wrote:
> > Hello,
> > We're trying to create a debug build so we can use our image with gdb,
> > however we're unable to get it to compile.  We've added the lines
> > "DEBUG_BUILD = "1"" and "EXTRA_IMAGE_FEATURES += "tools-sdk dbg-pkgs
> > tools-debug debug-tweaks"" to the local.conf file, but it seems to be
> > failing on glibc.  The errors we get have to do with inlined functions
> > (./tlsdeschtab.h:28:1: error: inlining failed in call to 'hash_tlsdesc':
> > indirect function call with a yet undetermined callee [-Werror=inline]
> > |  hash_tlsdesc (void *p)).  Are we missing a compile flag?  We tried adding
> > -gdwarf-2 to the CFLAGS option in local.conf but still got the same error.
> > Any help would be appreciated!
> 
> when you choose DEBUG_BUILD = "1" it also changes the default
> optimization settings for glibc to -O which is -O1
> really. Thats not a common flag used to build glibc so you might have
> fallen into less used case
> 
> Please test out this patch and let me know if it fixed the problem for you
> 
> http://git.openembedded.org/openembedded-core-contrib/commit/?h=kraj/master&id=16935bb4b6df99c6443dab06c77a9cfd4eb35f5d

Although I'm not the reporter of this issue, I ran into it as well and
this patch fixes this issue for me when applying it on top of the
fido-13.0.0 tag of poky.

Thanks!
-Andrew

