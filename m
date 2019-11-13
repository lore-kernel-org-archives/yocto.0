Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49E6BE00E10; Wed, 13 Nov 2019 00:10:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 830DAE00D46
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 00:10:22 -0800 (PST)
Received: by mail-wr1-f54.google.com with SMTP id b3so1161505wrs.13
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 00:10:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=OrR7Va54XHhtmzC9EHqrUMQqIQZDoHIarFE+NFfwKXE=;
	b=UQfmR3nofd0BymzrdFZPEbj/7keFMycNxansxV4TOZSICA7Wx+FT9pvpqwXmntovQP
	15XOJOsL/edUfflBlLQWWN7TUSBFufwYm9ct1/e0bdl5iV6LVx/UowIU/c6WvnsCu5JV
	Q/aCIgEsHhM7X2YsAbV3xIo9Gv4ICRx/4fRes=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=OrR7Va54XHhtmzC9EHqrUMQqIQZDoHIarFE+NFfwKXE=;
	b=t32GgSqjo1oraWHgTAvaI85iTzZzvZIOjNH1Z3I+eNqNGCTPL2kjOXGu82x+Xqusxx
	0Oi6mm/UAs67b/1xWr+J7WeLI4Ey8q5dtgCPJ7SEvVVeM+xjX+1vcYHLoICYPsQEsuu/
	fkCEhUsK3hWQjXjNiRbz0wp9BcTLVWJPsrRmkLqbTWKW/H4LqIGXQgItjbbALO7KAkLK
	VN+n86nCJafTD6HwA1ULuMkiXrNqR4R4rtZQeZtPo+UI7cFsbDeFCBaXVkqKn37o5u5E
	xweU3lO8SGISN+XdmUyBztKD/mxrKh68gKqaOyopfaSTEZMULf0kPjp2Mb/l8Rwinn88
	QJGQ==
X-Gm-Message-State: APjAAAXF4MmoWf6OEHJiI5o/su0rmJiFEo4e/0nsDYzcka4m23xVXH/L
	c/9CFoH+ryJqBhbiqZg692jxOQ==
X-Google-Smtp-Source: APXvYqwDGi0OO7MLUOSbTMRTugXY42PsC7h3PhKG1lydHvvk4nnSfb3XehGdQB4nBHPhDUWbBl+9cg==
X-Received: by 2002:adf:c58f:: with SMTP id m15mr1455425wrg.362.1573632621471; 
	Wed, 13 Nov 2019 00:10:21 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id 65sm2587989wrs.9.2019.11.13.00.10.19
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 13 Nov 2019 00:10:20 -0800 (PST)
Message-ID: <85cc536d4ce5de2606d48aba4b813fa96be1f6f9.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Samuel Jiang =?UTF-8?Q?=28=E6=B1=9F=E9=A8=8F=E5=85=88=29?=
	<Samuel.Jiang@quantatw.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Wed, 13 Nov 2019 08:10:16 +0000
In-Reply-To: <a066f24b71df426db88ce23b46331a36@quantatw.com>
References: <489934f9-1420-40b0-a74a-54b71633bbed@SINGMEHUB07.gme.gbl>
	<KL1P15301MB03443E265CCD3E6492C091CF80630@KL1P15301MB0344.APCP153.PROD.OUTLOOK.COM>
	<a1ef7037a6a94e518fcef16502c67585@quantatw.com>
	<SG2P153MB0349D0EFB059BC372C86528880630@SG2P153MB0349.APCP153.PROD.OUTLOOK.COM>
	<9e5ccabd-03be-410b-bd43-1f7ba45dff31@Spark>
	<a2982b3de70f74fd787b45b06711437afd2ae98e.camel@linuxfoundation.org>
	<a066f24b71df426db88ce23b46331a36@quantatw.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
Cc: Alex Chong <v-chucho@microsoft.com>
Subject: Re: bitbake SRC_URI fetch Azure DevOps repository Azure DevOps Services Basic
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
X-List-Received-Date: Wed, 13 Nov 2019 08:10:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2019-11-13 at 03:06 +0000, Samuel Jiang (江騏先) wrote:
> I try use 
> SRC_URI = "git://quanta01@vs-
> ssh.visualstudio.com/v3/quanta01/OpenBMC/crashdump;protocol=ssh;nobra
> nch=1"
> 
> the bitbake response below error message:
>  git -c core.fsyncobjectfiles=0 ls-remote 
> ssh://quanta01@vs-ssh.visualstudio.com:v3/quanta01/OpenBMC/crashdump
>   failed with exit code 128, output:
> 
> ssh: Could not resolve hostname vs-ssh.visualstudio.com:v3: Name or 
>  service not known
> fatal: Could not read from remote repository.
> 
> I discussed with Microsoft support team,
> the Azure DevOps support SSH url clone without [ ssh:// ] prefix,
> like below:
> git -c core.fsyncobjectfiles=0 ls-remote 
> quanta01@vs-ssh.visualstudio.com:v3/quanta01/OpenBMC/crashdump
> 
> Does bitbake support git SRC_URI without any prefix or need extra
> with Azure SSH protocol support it?

Have you tried:

SRC_URI = "git://quanta01@vs-ssh.visualstudio.com/v3/quanta01/OpenBMC/crashdump;protocol=git;nobranch=1"

(changing protocol to git)
?

Cheers,

Richard


