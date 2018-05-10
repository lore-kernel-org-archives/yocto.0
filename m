Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 216C1E00DFE; Wed,  9 May 2018 22:25:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D581E00D1C
	for <yocto@yoctoproject.org>; Wed,  9 May 2018 22:25:16 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id o76-v6so500306pfi.5
	for <yocto@yoctoproject.org>; Wed, 09 May 2018 22:25:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=wKn6zxCDDnbawEC4wQvidsC8TskMu6Hi/foW3VJu6Ms=;
	b=CbhSMeMr3+x2KJcpLyUhO7vpiclhQv3Pfbk5dRCtDzztiU/yyNVe4838YZGaRkh+Ro
	zrFiePjIpf5/ZtM8CPFxNJGO8VhTZ713m/avkJTfrHxCJdkPfh14A8Vm0w4EyP67nqEH
	sNAlabuxAjglXnmf+AtPYhG0Dww8SN21XozCFPYfRvNnqMJkQtuii7+cjEsGibLVaF+O
	uciw6c0S+Oso7R8DyzYjO8vZcx5WPuybEAW3SoA7BxtbEYCoQHfRBq5hNKWRXc+iL7kY
	78ZrWKBhJd2AzYWnbYekF3Qy84hEiQpdQwfmqNu2KZ67grggjkF6EV8RCjrwhfn5TomC
	bK5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=wKn6zxCDDnbawEC4wQvidsC8TskMu6Hi/foW3VJu6Ms=;
	b=AVOf3GkiZFEQaM43fKobfz+Jyoy2CeJnCr5/6D8Ckdk2AtI2zAKn+CCD0rrC1EQ3hr
	mOR5sxRiuPNai72bYT9JSD4x75jSSccCw+9+joVjVbBsQasxI9H0IliEH8wzBaNZxNMC
	vL3agWsovWnxaK7SdP2viph2A2GQP4cchzUGP7sMmPdfIq8dfwZM84VYMbE73mqWwuEj
	Y2HL0BBe8bfYKUd81WFD+KbK2xDJEhgGOZR3m6jjQ+hCVOS5+OKnXEbsxC7s4jQaOQ4T
	Mq69ZWID+69myAh1vi5N2ckit//TM1zgc2NahXbqIc/v4Mcnc6cLOMN7SqcKujI4Ic9D
	dr+Q==
X-Gm-Message-State: ALQs6tBnQQM3TvWRYceihdRQ3brupdUBHOZEk0W83mZ2kGVkhka6KEr3
	l9LLA4RbtR3SdsrEJSm73AC3Zo3L
X-Google-Smtp-Source: AB8JxZr7S/0C11Cd7NnVVdExiJYIJ0uxRwLJpAMzkfLZXmn+c6QyYWxzCz4/0PzgSSgbc87Zcr8B4Q==
X-Received: by 2002:a65:4c06:: with SMTP id
	u6-v6mr37062771pgq.388.1525929915863; 
	Wed, 09 May 2018 22:25:15 -0700 (PDT)
Received: from hermes.local ([2601:646:877f:9499:d4fd:d1d6:d3fa:558c])
	by smtp.gmail.com with ESMTPSA id
	h130sm59246729pfc.98.2018.05.09.22.25.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 09 May 2018 22:25:15 -0700 (PDT)
To: Richard Koch <n1gp@hotmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <BLUPR17MB0291DB7172500C2ECE762453879A0@BLUPR17MB0291.namprd17.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <21211986-c51a-7752-3923-dce4029a4442@gmail.com>
Date: Wed, 9 May 2018 22:25:14 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:60.0)
	Gecko/20100101 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <BLUPR17MB0291DB7172500C2ECE762453879A0@BLUPR17MB0291.namprd17.prod.outlook.com>
Subject: Re: Looking at using Yocto, have General Adoption questions
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
X-List-Received-Date: Thu, 10 May 2018 05:25:18 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi Richard

On 5/9/18 1:03 PM, Richard Koch wrote:
> Hello list.
> 
> I'm looking for some general use cases for how a firmware development 
> team such as ourselves has adopted Yocto in to their non-Yocto based 
> environment.
> 
> We have a group of firmware developers that currently develop for 
> various iMX6 based
> controller boards. For those boards we have not been using Yocto but 
> utilize a patched kernel and u-boot from the SOM mfr.
> We then modified those and developed our own rootfs (manually).
> 
> Our build is source controlled through SVN. We use Linaro based ARM 
> cross compilers to
> build u-boot/kernel and our applications. This is packaged up in to a 
> .deb file and installed
> as an upgrade on to an SDCard that already contains a baseline 
> u-boot/kernel/rootfs.
> 
> We have requirements for a new design that we would like to base off of 
> the NXP MCIMX7D-SABRE eval board.
> For this eval board there is a suggested BSP that to use which is Yocto 
> based.
> 
> I have followed NXP's Yocto guide to download, configure, and build an 
> SDCard image which boots
> successfully on this eval board.
> 
> The Yocto build consumed ~26GB of disk space and took most of the day to 
> build on an i7 Quad 32GB Ubuntu 16.04 PC.
> 
> So I am wondering how to introduce this to our current build environment 
> and development team.
> I understand the concept is to take the imx7dsabresd recipe/meta-layer/? 
> and port that to our own design.
> 
> After successfully porting the eval BSP to our own design;
> 
> How does a team of developers such as ourselves:
> 

I would suggest that you generate a eSDK, then let your teams use eSDK 
for doing development, configure a CI system which is integrating the 
changes and creating updates for extensible SDK, the diskspace and build 
time is first one investment you would do thereafter it would be 
incremental on the builder, for your dev teams it would be all prebuilt 
and they would only build the things they change

https://wiki.yoctoproject.org/wiki/Extensible_SDK
https://wiki.yoctoproject.org/wiki/Application_Development_with_Extensible_SDK


> Control the source code changes?

There are several ways you can do it, use a sandbox tool like android 
repo to manage the project, where you create local mirrors of upstream 
nxp layers repos and create your internal branches for yourself which 
follow the corresponding upstream branches. Then you can manually merge 
or cherry-pick changes from upstream repositories as you wish to do.
You can also use git submodules to manage the project

If you dont make any changes to upstream layers then you might not want 
to create local branches and still use something like android repo or 
git submodules to manage the project.

see following for git-submodule based example

https://github.com/cbrake/oe-build/

IIRC NXP already uses repo to manage projects but here is another example

https://github.com/Angstrom-distribution/angstrom-manifest


> Do we check/convert the whole Yocto git repo in to our SVN or is there a 
> suggested way to trim down to a manageable subset?

It would be better if you were to use git for SCM since merging/syncing 
would become so much streamlined but you can use SVN if you have to, you 
might not be able to use the workspace management tools like above but 
you can still use something like gclient probably

> How do we update our new recipe/meta-layer/? when the NXP 
> recipe/meta-layer/? we derived it from changes upstream due to 
> security/bug fixes?


see above

> 
> Appreciate any advice,
> 

hope that helps. Feel free to ask further questions.

