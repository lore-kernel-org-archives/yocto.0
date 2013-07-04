Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ee0-f45.google.com (mail-ee0-f45.google.com [74.125.83.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7191AE003E3
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2013 22:07:00 -0700 (PDT)
Received: by mail-ee0-f45.google.com with SMTP id c1so493719eek.32
	for <yocto@yoctoproject.org>; Wed, 03 Jul 2013 22:06:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=SA4eN6kWlX3z3GRRJFw0GGBarkweAMAnXUik9beEF6Y=;
	b=TgZomPnLVP6jQiAyOyy+pYlyMWUG7zbpocECcjgP6lUqjENb0SUaZrxvyhnQVaRsIq
	BRA+vqk8nZblKLTFo1C+xt+CZlUAHsMLSbBAxztlkL/wwtfAT/IhePNaUsHghfhwrzVw
	apnc9Vx2T+kQQ3Dp7x6/8o5YyiV3WvJMSvG2tALBgOzR2MzvSFD5uHVWro8JH6b1KHcp
	NLt+RgqxOTxPTD7mxBTgHVOVqT4hFJCJ3eI4IaadgBnEDRtwhtOMfmCmXGuGLiH/qmxL
	NhZgVh8SQWxZMrXnNuhnV1lajszhbay4Rl7X345Jcl0oEWsw5yKuqokKxP7nSnk1Ah02
	YgIw==
MIME-Version: 1.0
X-Received: by 10.15.102.68 with SMTP id bq44mr4432576eeb.89.1372914418669;
	Wed, 03 Jul 2013 22:06:58 -0700 (PDT)
Received: by 10.14.117.65 with HTTP; Wed, 3 Jul 2013 22:06:58 -0700 (PDT)
Date: Thu, 4 Jul 2013 01:06:58 -0400
Message-ID: <CALmOhgkzZGa2YDYpkC7znMAikeJJGubUUMWnGv8gwUwaRNBoLw@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQlKJ8SskA0j3mAfDCPjiueU3hVpCv5f8MIAXB96XFI2ECSN+sjnD3RhWo4Iv0M6YE7XygYd
Subject: sstate-cache clobbering
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
X-List-Received-Date: Thu, 04 Jul 2013 05:07:01 -0000
Content-Type: text/plain; charset=ISO-8859-1

Let's say I have two build machines (A and B), both running the exact
same version of a given distribution. Also assume both machines have a
fully populated "downloads" directory but otherwise have not performed
any OE/Yocto builds.

On machine A I perform a fresh "bitbake core-image-minimal" and end up
with a sstate-cache of 733MB and I receive a message saying 324/1621
tasks didn't need to be (re)run.

I then take this sstate-cache directory, copy it to machine B and
perform a "bitbake core-image-minimal". This build takes under 5
minutes, and didn't need to run 1374/1621 tasks.

So far this makes good sense. The sstate-cache is getting hit quite a
lot and the performance of the second build shows considerable
improvement (relative to the first build on machine A) to reflect this
fact.

Now I wipe machine B then get it ready for a fresh build (i.e. put the
"downloads" directory in place, make sure it has all the necessary
host packages, etc). Then on machine A I perform a "bitbake
core-image-minimal -c populate_sdk". Now, on machine A, I end up with
a sstate-cache that is 1.6GB in size. I take machine A's 1.6GB
sstate-cache and copy it to machine B. Then on machine B I perform a
"bitbake core-image-minimal".

I would have expected this build on machine B to take the same "under
5 minutes, and didn't need to run 1374/1621 tasks". But instead I find
this build takes 27 minutes and only 781/1621 tasks didn't need to be
run.

Doesn't it seem strange that a larger sstate-cache involving the same
base image has such a lower sstate-cache hit rate?

