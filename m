Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE52CE009E7; Tue, 20 May 2014 15:19:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 399 seconds by postgrey-1.32 at yocto-www;
	Tue, 20 May 2014 15:19:47 PDT
Received: from mail-vc0-f170.google.com (unknown [209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2C52E0070F
	for <yocto@yoctoproject.org>; Tue, 20 May 2014 15:19:47 -0700 (PDT)
Received: by mail-vc0-f170.google.com with SMTP id lf12so1477949vcb.1
	for <yocto@yoctoproject.org>; Tue, 20 May 2014 15:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=VHp1JJX363HwsHDwbeDEp2I3dDpyPcUx3IdXmWo0Nb4=;
	b=h5b1GUuV8+1chWCrz0KuuByObXmf3vY6yk9t3NYtu3HeWpsY+Iiu1XAgIX6/84oapi
	L2qFqB6QtBBiKZfbD3FTb5OwyeloRGUW/AlMc19IxkTNAgH4b4c/ZK+wW9qakWMuhccg
	olPRoFJvICTHVC5E8GSa6BhVpwtZ5i/9SmZG/TkoTBPwSlpKsv9szY2qRlLU+OCgr5Qi
	sPPZDoFMQDDvWLTEKCt2h7Xp93PcnZqi8U7St2rkur1LVlvAVo9CSOIBM0bGRGdoN9Wd
	PvfFnXmDM9u9FGUbDRejXjeHYMBhLGDjr3oWCgLk8nceTrajxi3hxJ1Lo7gdDQaaAqiS
	JPjA==
X-Received: by 10.52.153.229 with SMTP id vj5mr5243174vdb.34.1400623987217;
	Tue, 20 May 2014 15:13:07 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.221.5.133 with HTTP; Tue, 20 May 2014 15:12:27 -0700 (PDT)
In-Reply-To: <20140520144423.8c4e4b9406b77e1e78d5069819454ed7.8cac11663f.wbe@email14.secureserver.net>
References: <20140520144423.8c4e4b9406b77e1e78d5069819454ed7.8cac11663f.wbe@email14.secureserver.net>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Tue, 20 May 2014 23:12:27 +0100
X-Google-Sender-Auth: vjH4HckopzpTtBaZWMnaVDscoGU
Message-ID: <CANyK_8dcmHgawfBr=6MtXar4URRn7k=ZsjicU4X4WMU1ZaOLoQ@mail.gmail.com>
To: ezekiel@sanborndeasis.net
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: headers only recipe
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
X-List-Received-Date: Tue, 20 May 2014 22:19:49 -0000
Content-Type: text/plain; charset=UTF-8

On 20 May 2014 22:44,  <ezekiel@sanborndeasis.net> wrote:
> still new to yocto/oe...
>
> I have a recipe that only produces dev headers (macros, constants, etc).
> Builds fine, and recipes dependent on these headers are fine as well. The
> problem is that only a dev and dbg ipkg get produced for deploy (makes
> sense, there is no device side content). But then do_rootfs fails because it
> expects an ipkg for this recipe
>
> opkg_install_cmd: Cannot install package foobar
>
> I am working around it by throwing down a dummy conf file as output from
> this recipe so there is something to build an ipkg around. But how do I
> indicate that there is no normal device side content from this recipe.
>

A simple trick is to add the following line to your recipe file to
allow the package to still be created even if it is empty:

ALLOW_EMPTY_${PN} = "1".

${PN} expands to the name of the main package so that should suffice,
otherwise you could explicitly give the package name, for example
ALLOW_EMPTY_foobar.

Hope this helps,

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

