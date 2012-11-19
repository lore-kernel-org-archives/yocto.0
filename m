Return-Path: <ml@communistcode.co.uk>
Received: from eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EB0CE006C2
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2012 05:04:39 -0800 (PST)
Received: from localhost ([127.0.0.1]:58298 helo=eumx.net)
	by eumx.net with esmtp (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1TaR1h-0001W0-Vw
	for yocto@yoctoproject.org; Mon, 19 Nov 2012 13:04:38 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=eumx.net; h=message-id
	:date:from:reply-to:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding; s=default;
	bh=f/iqjvaOlm/tyh/zb5aejU0wW1s=; b=T9mI5Qwt4tBw60bA51RWPgfS4yQt
	+ui5JH3+tkri9exiDMiFNDo+lMiHGxcIfGetrhlHuZoXLKIHImR26wKNCKFjwMTg
	qEKqzBYMrhsXAUTtY+hrUy48QGkwannfVLOOrBRYf5Yue+TftvC2U2fixI2ZTdfQ
	Dp3pVMcNpr04MoA=
Received: from [195.171.99.130] (port=13836 helo=[192.168.0.47])
	by eumx.net with esmtpa (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1TaR1h-0001Vx-Lm
	for yocto@yoctoproject.org; Mon, 19 Nov 2012 13:04:37 +0000
Message-ID: <50AA2EE4.1000207@communistcode.co.uk>
Date: Mon, 19 Nov 2012 13:06:44 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121029 Thunderbird/16.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <20121119123504.22FAF20032F@gemini.denx.de>
In-Reply-To: <20121119123504.22FAF20032F@gemini.denx.de>
Subject: Re: Alternative SDK installation directory working?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ml@communistcode.co.uk
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 19 Nov 2012 13:04:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 19/11/12 12:35, Wolfgang Denk wrote:
> Hello,
>
> I wonder if the installation of the SDK into an alternative directory
> is actually working?
>
> Trying the latest snapshot
> http://autobuilder.yoctoproject.org/pub/nightly/CURRENT/toolchain/x86_64/poky-eglibc-x86_64-arm-toolchain-gmae-1.3+snapshot-20121119.sh
> I get this:
>
> Installation:
>
> -> sh ./poky-eglibc-x86_64-arm-toolchain-gmae-1.3+snapshot-20121119.sh
> Enter target directory for SDK (default: /opt/poky/1.3+snapshot): /opt/poky-test
> You are about to install the SDK to "/opt/poky-test". Proceed[Y/n]?Y
> Extracting SDK...done
> Setting it up...done
> SDK has been successfully set up and is ready to be used.
>
>
> Test:
>
> -> cat /tmp/x.c
> int main (void)
> {
>          return 0;
> }
> -> source /opt/poky-test/environment-setup-armv5te-poky-linux-gnueabi
> -> ${TARGET_PREFIX}gcc -v -o /tmp/x /tmp/x.c

I think you need a --sysroot in there. e.g. --sysroot=/opt/poky-test/sysroots/arch-blah-blah-blah

> What am I missing here?
>
> Best regards,
>
> Wolfgang Denk
>

Regards,

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


