Return-Path: <paul.betafive@gmail.com>
Received: from mail-vc0-f172.google.com (mail-vc0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44963E009B0
	for <yocto@yoctoproject.org>; Thu,  6 Mar 2014 17:19:15 -0800 (PST)
Received: by mail-vc0-f172.google.com with SMTP id la4so39903vcb.17
	for <yocto@yoctoproject.org>; Thu, 06 Mar 2014 17:19:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=AkPrM1H5m37si8c6NMQgzvzHo+C53hI/+7MnrhhXays=;
	b=CqsqvCcoGE4VtoVmGRkQK5oCMaNjMi2wom1hAxVvI204y5JJHuvSEzO/HwsMe18Brg
	5Lsio+g/vfuJuhdnKzdLLeBDJwWZ5zJPYdScwkjuh7N8eSbp8T4ccVx4FBFvFa027MnK
	2aRmfyocqQcfgOGow5SYXnRlcTNVq/9ND5dpNWqA9dGOIqb/d+vHdlrdoNNuD8Apukw2
	AUlxTavieDTHlDLBC7zmxFaSjreFI+IvDRaw2m0Cl7dWqsFyYvwe+Uy3hA4QcmtTc1Y5
	JmvEjPowYxhd1sXfDI45CtSu1ME490OOEYoA+LVLWdiu2voeIRHVNHVSIi8gOQdwlbmF
	BHrQ==
X-Received: by 10.52.27.9 with SMTP id p9mr10102753vdg.28.1394155154951; Thu,
	06 Mar 2014 17:19:14 -0800 (PST)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.239.135 with HTTP; Thu, 6 Mar 2014 17:18:34 -0800 (PST)
In-Reply-To: <530A6D37.3040606@windriver.com>
References: <CANyK_8eB8Rt-GqCbbw6Tu6NHuUPTeKZy+ZPRQ1eTqLb=SDPG_g@mail.gmail.com>
	<53077A05.7090906@windriver.com>
	<CANyK_8cSbbgkbwojmpmUzM6-TzgTg7q7bpnuEvj0bvOgP74s0Q@mail.gmail.com>
	<530A6D37.3040606@windriver.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Fri, 7 Mar 2014 01:18:34 +0000
X-Google-Sender-Auth: goCldvilOS2SY9x8XA1-2ZKTGEY
Message-ID: <CANyK_8fkN0xMCPn1Zps3rvcqaA3q-Fet_YVDvzG3EncxVdUQ_A@mail.gmail.com>
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Python3 ptest and unittest
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
X-List-Received-Date: Fri, 07 Mar 2014 01:19:16 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 23 February 2014 21:50, Randy MacLeod <randy.macleod@windriver.com> wrote:
> On 14-02-22 08:07 PM, Paul Barker wrote:
>>
>> I've never worked with the ptest system before but I'm giving it a
>> go... I'm mostly relying on https://wiki.yoctoproject.org/wiki/Ptest
>> for info.
>>
>> It does look like the python3 test suite crashes with out-of-memory
>> errors on qemux86 with the default configuration of 256 MB RAM. I've
>> bumped it up to 1 GB and it seems to be working.
>
>
> I've seen similar problems and dealt with it the same way.
> Some tests deliberately try to cause an OOM and I assert that
> they don't belong in ptest runs.
>
>
>> Is there any way to
>> note this in the ptest system so that this test suite is skipped if
>> there isn't enough memory?
>
>
> Not that I'm aware of. Add to docs?
>
>
>>
>> Also, I'm getting several failures within the testsuite which I'm not
>> seeing when I run it on my desktop. Do we keep data on whether each
>> ptest package is expected to pass or has known failures?
>
>
> Not that I know of. We should.
>
> That's something that I've been meaning to do but I won't get to it
> for until another project is done so don't wait for me. :)
>

I've submitted the patch to oe-core.

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

