Return-Path: <davidsmoot@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3639AE006B5
	for <yocto@yoctoproject.org>; Thu,  1 Dec 2011 19:36:24 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wgbdt13 with SMTP id dt13so150545wgb.11
	for <yocto@yoctoproject.org>; Thu, 01 Dec 2011 19:36:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=kRNg5n69Sk7ztlXAWL1fXuY8h2pxbTkOEX4qVohxues=;
	b=t77Ca7wZpryiAUogtj8PEinxbH/i8XuHya+NtlVr7KF+M3av2nxrGLbIUpCUmRvMF8
	wDTv3/G0jCkHQG2TiX6hW90kxvKy/j3Oo8hZ5YHjwT3ZDkmC264hk3IMwS/fr9svV9zZ
	8dYXRbZQkW4ocqSgCTCXj9eG5/bZla7dL5yBg=
MIME-Version: 1.0
Received: by 10.216.139.10 with SMTP id b10mr691472wej.57.1322796983218; Thu,
	01 Dec 2011 19:36:23 -0800 (PST)
Received: by 10.216.154.81 with HTTP; Thu, 1 Dec 2011 19:36:23 -0800 (PST)
In-Reply-To: <4ED84560.2040807@linux.intel.com>
References: <CA+5N1gw_Tn0uPj_-YHpj4_3bRm+nFJiemNkp=VjOiHT6_V_bfA@mail.gmail.com>
	<4ED84560.2040807@linux.intel.com>
Date: Thu, 1 Dec 2011 21:36:23 -0600
Message-ID: <CA+5N1gz25ntd_yMwpdQ6V6CAB2JoGkMjNxc6ZFQj-z4hcdWUAQ@mail.gmail.com>
From: David Smoot <davidsmoot@gmail.com>
To: Joshua Lock <josh@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: building the examples from "meta-demo"
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
X-List-Received-Date: Fri, 02 Dec 2011 03:36:24 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thank you.  Nice job... you managed to anticipate and answer my
question before I asked it.

Maybe I'll tackle updating the demo but I have a lot to learn.


David


On Thu, Dec 1, 2011 at 9:26 PM, Joshua Lock <josh@linux.intel.com> wrote:
> Hi David
>
> On 01/12/11 18:18, David Smoot wrote:
>> From inside my poky folder, I did a "git clone
>> git://git.yoctoproject.org/meta-demo" so that I have the meta-demo
>> folder at the same level as the the other meta-* folders.
>> Outside my poky tree I did the "source poky/oe-init-build-env my-build-f=
older"
>> I edited conf/local.conf to set my parallel build options, my MACHINE
>> to routerstationpro, and my download directory variable.
>> I then typed "bitbake -k demo-image-mediatomb" but I got an error
>> message that "ERROR: Nothing PROVIDES 'demo-image-mediatomb'"
>
> You need to add the layer to your conf/bblayers.conf as per the
> documentation here:
> http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.=
html#usingpoky-changes-layers
>
> WARNING: the meta-demo layer hasn't seen any commits for some time, it's
> likely bit-rotten and out of date.
>
> Cheers,
> Joshua
> --
> Joshua Lock
> =A0 =A0 =A0 =A0Yocto Project "Johannes factotum"
> =A0 =A0 =A0 =A0Intel Open Source Technology Centre
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

