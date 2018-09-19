Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EFDDE00A4F; Wed, 19 Sep 2018 01:07:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B0B1E0095C
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2018 01:07:10 -0700 (PDT)
Received: by mail-oi0-f51.google.com with SMTP id x197-v6so4273704oix.5
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2018 01:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wLJv/ukuEHssQrThSxYEHEp+lNPRJ1T3GSeStiSe7JU=;
	b=ZNRCbBJgjnr5AabUKGc876OYlJ0kkbE0XCl30X9Dsyt0pB6lLXsAYooSEEiLSTbKQk
	0UW9TuQt+T8H/MXChqFVGUrJiYrptyXYV8FP3bwQrM3dSIozpr7RFQ1oh9MFmLKSe4O5
	Fo5qPrj+WAHzOTd85zsxuAELD3YKUkEYT2gg8hLIMcSlppUVD6m0Bgjx6pr3iBrf2xRM
	cBeoAG9Sz7MqgUfdGq0DXgMdgBNaThM32IgqAy4jxa7TB3vhQ7mpeGlEGGhkzgPLkZkI
	W1ExnmzcGNaiWSLkQuwrzsJJA4gC412dcFPMy9ZgPi+FdC90+ubRq1yVPTibr2LQGehU
	c+RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wLJv/ukuEHssQrThSxYEHEp+lNPRJ1T3GSeStiSe7JU=;
	b=YUjgM+qzMBOW883MNRm5gHq+VVPJoIDWIt5aJ8Ec5gsails/tieCiXWKGADkZ9TD7S
	7DGOPL2GTo+jwLVi7SkYbvs2v5MVdQex7PmoeE3cZLA/gvXZkjd7KcGYiF9DkOeCQK9U
	ZR6XxXWPjOKapBANdt/7aci+JP0E6ugwqtT2HPdLwmT6q7Kz6OZ8jdp/ZA3sEftCcK+i
	kzJerB7LvPY2PEXJkHdHsv2zuhATBmRx+Kb88Ri3IDgH9z4QV8m4uSMZNCGT1No7I0wN
	A8pTcfY/kWQJ2fWs6BeV57MmBL86h/9aJZlUfKXbhzsUSPzRBjNN2gPU7yWbK6/RSbht
	lZkw==
X-Gm-Message-State: APzg51CzEStfsP1nE2H9QoNqnNc+oqBGeZXGlfAuJXovY0h7hbnFP8DK
	4b75iFbaEDeoAAQKXPW8Mesc6GnsArGo5ho/nMnUoQ==
X-Google-Smtp-Source: ANB0VdYcNDObwOAq0dnaWJ5fFhufxeJFY1Xzjk1XZddGe/uZojINs7Z/VE1k19T3T1zyqr8jAeb6s0GLpJJ4UKi7QoY=
X-Received: by 2002:aca:bdc4:: with SMTP id n187-v6mr955170oif.3.1537344429869;
	Wed, 19 Sep 2018 01:07:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:b48b:0:0:0:0:0 with HTTP; Wed, 19 Sep 2018 01:07:09
	-0700 (PDT)
In-Reply-To: <1537304423.12258.18.camel@rtfs.org>
References: <1537304423.12258.18.camel@rtfs.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 19 Sep 2018 10:07:09 +0200
Message-ID: <CANNYZj8nvG3ty5J0vrapSYK+=VQauNQF71dLnbY8gZAfPf19fg@mail.gmail.com>
To: Fabian Sturm <f@rtfs.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Native yocto compile in docker container without cross compile
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
X-List-Received-Date: Wed, 19 Sep 2018 08:07:11 -0000
Content-Type: text/plain; charset="UTF-8"

I think what you are looking for is a Yocto generated SDK for your image?

bitbake -c populate_sdk <image>

Alex

2018-09-18 23:00 GMT+02:00 Fabian Sturm <f@rtfs.org>:
> Hi,
>
> I am wondering, there does not seem to be any information about native
> compile of projects in a Yocto docker container. It seems that most of
> the people use cross compile even though that imho is not necessary if
> your target is x86 too. So here is what I want to do:
>
> - Create a docker container with Yocto Linux, possibly same as the
> target image
> - Install gcc, cmake, autotools etc. in the docker container
> - Run the docker container on a vanilla Ubuntu Linux
> - Run build jobs in this docker container directly
>
> Rational. I have several projects with fully functioning build systems,
> e.g. make, cmake or autotools which I need to compile for different
> platforms, e.g. Windows, Ubuntu Linux and Yocto Linux. I now don't want
> to write recipes just for the Yocto cross compile which I need to
> additionally maintain and I also don't want to make the original build
> systems cross compile aware. This can soon get really hard if the build
> system generates intermediate binaries that are called in the build
> itself and if it is not prepared for this.
> Since my target and host platform are both x86 I do not see the need
> for a cross compile anyways. Usually it is necessary since the target
> platform might be a very slow ARM system that can't handle all the
> builds itself. But I do not have this limitation.
>
> With such a solution my original build systems should still be able to
> run unmodified. Within the docker container the environment would be
> almost the same as in an Ubuntu Linux. The compiler can be accessed
> without any cross compile settings and any intermediate binaries can
> also be directly executed etc.
>
> If there are some fundamental reasons why this is a bad idea, I would
> like to know. I also would appreciate any tips on how to create such a
> docker image. Usually my Yocto image for the target would not contain a
> compiler or make tool. So I need a way to add those after the fact.
>
>
> Thanks a lot!
> Fabian
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

