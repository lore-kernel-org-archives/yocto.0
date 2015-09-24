Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70A1FE00BFF; Thu, 24 Sep 2015 08:55:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B942E00708
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 08:55:46 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 3551CF811DF; Thu, 24 Sep 2015 09:55:45 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4B45EF811DF;
	Thu, 24 Sep 2015 09:55:45 -0600 (MDT)
To: yocto@yoctoproject.org
References: <027601d0f6e0$03e682d0$0bb38870$@LN-Systems.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <56041D04.9060908@mlbassoc.com>
Date: Thu, 24 Sep 2015 09:55:48 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <027601d0f6e0$03e682d0$0bb38870$@LN-Systems.com>
Subject: Re: Getting bitbake to use 'local' versions of local.conf/bblayers.conf
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
X-List-Received-Date: Thu, 24 Sep 2015 15:55:49 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 2015-09-24 09:45, Colin Helliwell wrote:
> We have an automated build which pulls our own layers & amendments from our version control system. We don’t really want (need?) to have a full *unpacked* Yocto in the repository
> too, so we have just the Fido tarball in there, and unpack this as the first step of the build.
>
> But, we then need to copy our local.conf and bblayers.conf across into the (transient) build directory. Is there a way to tell bitbake to override the default ones (in
> build/local/) with ours?  I did see that it’s maybe possible to set up variables for the ‘oe-init-build-env’ script, but I think this will still copy them into build/local/  - what
> we want is to leave them in place (so if we make any changes they will remain under, and trackable by, the version control)

Just put "bblayers.conf.sample" and/or "local.conf.sample" in
one of your layers.  I do this with the BSPs I build and then
set up the basic configuration quite automatically.  For example,
I have a pesudo-BSP (layer) for the RaspberryPi which includes
   meta-rpi/conf/
   meta-rpi/conf/local.conf.sample
   meta-rpi/conf/bblayers.conf.sample
   meta-rpi/conf/layer.conf
Then to configure a build using this layer I run
   % TEMPLATECONF=meta-rpi/conf . ${YOCTO}/oe-init-build-env ${BUILD}

In this way, it's easy to keep the meta-rpi under my own SCM and
manage any changes there.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

