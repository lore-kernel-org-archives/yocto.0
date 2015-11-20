Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00C97E00B5E; Fri, 20 Nov 2015 09:30:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9100E00B48
	for <yocto@yoctoproject.org>; Fri, 20 Nov 2015 09:30:02 -0800 (PST)
Received: by igbxm8 with SMTP id xm8so16962734igb.1
	for <yocto@yoctoproject.org>; Fri, 20 Nov 2015 09:30:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=TBtXa5+1+10iH/tQJMFojc1m3/8m9H7U36xxkcPWnHM=;
	b=dMax6ama9GNZaI+2Vb1PBZ2rJ6d/gpn7cbh4L85iOfZ4VlswQCrdPUpXDUSw/hbv/8
	XAOvTKj5cxgGSxhIPN7NOhK27niv4FnrLSdSSGyNqoM/4qqt6MP2UwN7ELRuO7F8q+OQ
	UFViREpSie/8HjX0kzq21u6Z+Hn0BXsVrTQPjQK6TNVvzC3gXn+3GsGniCns8JA85D/G
	++OBgHV3HlWBU2PDYG7SB1MFoG+yf4nGg88OsMiG6jfIxILR2/jtRVFpypKX9uUaGeTi
	3I6xTuUdTr2TD7jMkvXvoMOoO8GfWiUcn1eBldRrv3zS2BG92BKw41u5/yp6SdwbHLW2
	lxKw==
MIME-Version: 1.0
X-Received: by 10.50.155.33 with SMTP id vt1mr2756585igb.64.1448040600788;
	Fri, 20 Nov 2015 09:30:00 -0800 (PST)
Received: by 10.36.25.81 with HTTP; Fri, 20 Nov 2015 09:30:00 -0800 (PST)
In-Reply-To: <CAMKF1sq=yxLKqTUj2BcQ8Sz-_bC1w=ntAAWKO7_YVRCGpFOQFg@mail.gmail.com>
References: <1447166720-13316-1-git-send-email-javier@osg.samsung.com>
	<564F3D6F.7020601@osg.samsung.com>
	<CAMKF1sq=yxLKqTUj2BcQ8Sz-_bC1w=ntAAWKO7_YVRCGpFOQFg@mail.gmail.com>
Date: Fri, 20 Nov 2015 18:30:00 +0100
Message-ID: <CALbNGRSnDmHvkiHNM_Z+ERMwtvYzjj5N=bR2fA27vkgdF+f-CQ@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Derek Foreman <derekf@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Javier Martinez Canillas <javier@osg.samsung.com>
Subject: Re: [meta-raspberrypi][PATCH v3 0/2] Add support for 4.2 kernel with vc4 DRM/KMS driver
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
X-List-Received-Date: Fri, 20 Nov 2015 17:30:05 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 20, 2015 at 5:09 PM, Khem Raj <raj.khem@gmail.com> wrote:
> On Fri, Nov 20, 2015 at 7:34 AM, Javier Martinez Canillas
> <javier@osg.samsung.com> wrote:
>> On 11/10/2015 11:45 AM, Javier Martinez Canillas wrote:
>>> Hello Andrei,
>>>
>>> This series adds support for Eric Anholt's v4.2 kernel, that has suppor=
t
>>> for the vc4 DRM/KMS driver, which is the new open source graphics drive=
r
>>> stack for the Raspberry Pi to be used instead of the userland driver.
>>>
>>> This is a third version of the series which addresses feedback provided
>>> by Andreas M=C3=BCller, Khem Raj and you. The first version and second =
version
>>> of the series can be found at [0] and [1]. Some of the v2 patches have
>>> been dropped since are no longer necessary so the delta is smaller in v=
3.
>>>
>>
>> Any comments about this series?
>
> Whole series looks good to me.
>
Hop to find some time to test this weekend.

Andreas

