Return-Path: <wmills@ti.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20169E00D6B; Wed,  2 Mar 2016 07:36:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.47.26.152 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from comal.ext.ti.com (comal.ext.ti.com [198.47.26.152])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF02EE00CA6
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 07:36:04 -0800 (PST)
Received: from dflxv15.itg.ti.com ([128.247.5.124])
	by comal.ext.ti.com (8.13.7/8.13.7) with ESMTP id u22Fa2kO029387;
	Wed, 2 Mar 2016 09:36:02 -0600
Received: from DFLE72.ent.ti.com (dfle72.ent.ti.com [128.247.5.109])
	by dflxv15.itg.ti.com (8.14.3/8.13.8) with ESMTP id u22Fa2Cd031308;
	Wed, 2 Mar 2016 09:36:02 -0600
Received: from dflp33.itg.ti.com (10.64.6.16) by DFLE72.ent.ti.com
	(128.247.5.109) with Microsoft SMTP Server id 14.3.224.2;
	Wed, 2 Mar 2016 09:36:01 -0600
Received: from [172.22.156.156] (ileax41-snat.itg.ti.com [10.172.224.153])	by
	dflp33.itg.ti.com (8.14.3/8.13.8) with ESMTP id u22Fa1D5024722;
	Wed, 2 Mar 2016 09:36:01 -0600
To: "Burton, Ross" <ross.burton@intel.com>, Johannes Pointner
	<h4nn35.work@gmail.com>
References: <1456876322-11550-1-git-send-email-johannes.pointner@gmail.com>
	<CAJTo0LYtJC5ROMveR3ze8PwZjYVZrO98bJQ6MubmuPmPog2oaA@mail.gmail.com>
	<CAHvQdo1934XFM62FZfQXs8JrakeCyS-e0q+vUgE-Q+uUAVtOvA@mail.gmail.com>
	<CAJTo0LbfmyO6d3sX5VSi8hLJnWh+cE73UAY4h5Fg=+_7Pkwzog@mail.gmail.com>
From: William Mills <wmills@ti.com>
Message-ID: <56D70862.4070509@ti.com>
Date: Wed, 2 Mar 2016 10:36:02 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LbfmyO6d3sX5VSi8hLJnWh+cE73UAY4h5Fg=+_7Pkwzog@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [xcursor-transparent-theme][Patch] Add several cursors
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
X-List-Received-Date: Wed, 02 Mar 2016 15:36:08 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit



On 03/02/2016 07:48 AM, Burton, Ross wrote:
> 
> On 2 March 2016 at 12:45, Johannes Pointner <h4nn35.work@gmail.com
> <mailto:h4nn35.work@gmail.com>> wrote:
> 
>     I didn't know this option.
>     But I think there is still a use case for the
>     xcursor-transparent-theme. Because the cursor theme can be set before
>     starting a new application without restarting X11.
> 
> 
> How do you handle users switching between applications in that case? Or
> the application crashing and leaving you without a cursor?  If a
> particular application should hide the cursor them it should just hide
> the cursor, if the entire UI shouldn't have a cursor then use -nocursor.
>

How about transparent when last user input was touch-screen but normal
when last input was mouse/touchpad?

This would be done on a per DISPLAY basis not a per app basis.

Of course I don't know where to put that code and if I were doing it
today I would put it into a wayland based arch but ...

> Don't worry, I won't be deleting the transparent theme just yet, but I
> do think it's a hack.
> 
> Ross
> 
> 

