Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4327E006B1
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 03:08:50 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 43084F8120C; Tue,  3 Jul 2012 04:08:50 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id CEDE0F81201;
	Tue,  3 Jul 2012 04:08:48 -0600 (MDT)
Message-ID: <4FF2C4B2.7000200@mlbassoc.com>
Date: Tue, 03 Jul 2012 04:08:50 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <alpine.DEB.2.02.1206260424590.22400@oneiric>
	<CAKSdS8JfwcMZpXej0jykpquWvAN8vPyJPrmq3u_Y6i47iYdzZA@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C46A874F6@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1207030547210.29271@oneiric>
In-Reply-To: <alpine.DEB.2.02.1207030547210.29271@oneiric>
Subject: Re: how does one use a prebuilt toolchain from the toolchain/ directory?
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
X-List-Received-Date: Tue, 03 Jul 2012 10:08:50 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-07-03 03:51, Robert P. J. Day wrote:
> On Mon, 2 Jul 2012, Zhang, Jessica wrote:
>
>> On Tue, Jun 26, 2012 at 4:51 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
> ... snip ...
>
>>> 4) once i install a toolchain, how do i use it?  say i install the arm
>>> toolchain, and want to build a beagleboard image.  at what point do i
>>> source the arm toolchain environment setup file?  is that all it
>>> takes?  will the bitbake build process automatically recognize what
>>> i've done and use that toolchain?
>>
>> [JZ] Please note this toolchain is meant to be used by application
>> developers not image builders.  This toolchain is meant for cross
>> development that allows you to develop target application on your
>> host machines.  Once you source the environment-setup script, it'll
>> setup your path correctly that makes it able to find all the cross
>> development tools, e.g.
>> /opt/poky/1.2/sysroots/i686-pokysdk-linux/usr/bin/i586-poky-linux/i586-poky-linux-gcc
>> will be used for compiling your programs.
>
>    ah, i wasn't aware that the prebuilt toolchains were meant primarily
> for *app* development, not *image* development.  i already knew how to
> use them for app development, that's fairly straightforward.
>
>    which brings me back to my original curiosity -- how can i use the
> same toolchain across a number of different *image* builds?  under
> what circumstances does that make sense, and how would i do that?
>
>    say i want to configure and build images for a number of
> beagleboards, and a beaglebone, and a pandaboard, etc., all of which
> require an ARM toolchain.  if these builds can share the same
> toolchain, how can i build it once, then not have to build it over and
> over for the remaining builds?

Use SSTATE_MIRRORS to point at the sstate-cache of the first build.
This will let bitbake reuse as much as possible, including the toolchain.

I do exactly as you are proposing above and my builds for the "secondary"
targets can be as little as a couple of minutes (from scratch).

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------



