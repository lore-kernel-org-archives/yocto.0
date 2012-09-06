Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 529E6E01423
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 03:19:16 -0700 (PDT)
Received: from [192.168.0.2] (host81-153-84-143.range81-153.btcentralplus.com
	[81.153.84.143]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 9FE749ADE
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 11:19:15 +0100 (BST)
Message-ID: <504878A2.2090507@r-finger.com>
Date: Thu, 06 Sep 2012 11:19:14 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAK18fxEb3gjEEwhvN-du3eJvgUVCbjXU2Ag4kicFFDt6xra6og@mail.gmail.com>
In-Reply-To: <CAK18fxEb3gjEEwhvN-du3eJvgUVCbjXU2Ag4kicFFDt6xra6og@mail.gmail.com>
Subject: Re: opengl / libgl / libgles
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
X-List-Received-Date: Thu, 06 Sep 2012 10:19:16 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/09/12 11:00, Andrei Gherzan wrote:
> Hello,
> 
> In DISTRO_FEATURES we have opengl. That is pretty vague and generally we
> don't want to have mesa on machines where there is no libgl but only gles +
> egl. For example if we want to compile something that adds a DEPENDS based
> on DISTRO_FEATURE opengl, this dependency will be added even if there is no
> libgl implemented for that specific machine.
> 
> First idea would be that opengl (gl / gles) are machine related. On the
> other hand opengl can be a DISTRO_FEATURE as we have a software
> implementation - mesa.
> 
> How would you guys see a solution for this? The idea that came into my mind
> was to map opengl to libgl or libgles. Or to both if there is the case.

I think we need both machine and distro features matching the options
here: opengl, gles1, gles2. The machine conf sets the MACHINE_FEATURE
appropriately, the distro conf then sets the distro features based on
intersection of distro policy and what is available on the machine.
Recipes like the xserver use DISTRO_FEATURE to determine how to
configure the package.

Tomas

