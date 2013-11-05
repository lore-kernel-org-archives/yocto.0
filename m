Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0369AE01757
	for <yocto@yoctoproject.org>; Tue,  5 Nov 2013 01:47:11 -0800 (PST)
Received: from [127.0.0.1] (cpc16-live22-2-0-cust180.know.cable.virginm.net
	[82.42.220.181])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id A63EE860A9;
	Tue,  5 Nov 2013 09:47:08 +0000 (UTC)
Message-ID: <5278BE99.7050105@dynamicdevices.co.uk>
Date: Tue, 05 Nov 2013 09:47:05 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAFyqS9qh4GgseGVMVjYTo5jK5SURWVgDR5NdgoGv_Pw7q72kmg@mail.gmail.com>	<20131029110034.GF3697@jama>	<CAFyqS9q2aC38neoGDL5s_f3ywV0p8+j0689Xh_DHoHkBwNy0rg@mail.gmail.com>	<20131029134236.GI3697@jama>	<CAFyqS9qNqHxwGu4d2vAqKORNk+-3SoeRtfOghpvSxV6OibL2tQ@mail.gmail.com>
	<CAFyqS9rbOyN7OV-b7MRN0YGtu87ZGxDkHb50=kJxvNiGcXdgXQ@mail.gmail.com>
In-Reply-To: <CAFyqS9rbOyN7OV-b7MRN0YGtu87ZGxDkHb50=kJxvNiGcXdgXQ@mail.gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: [meta-mono] Mono 3.2.3 support
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
X-List-Received-Date: Tue, 05 Nov 2013 09:47:14 -0000
Content-Type: multipart/alternative;
	boundary="------------090506060302030506040208"

--------------090506060302030506040208
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

I've successfully built and tested a Mono 3.2.3 recipe with Yocto.

The code is in a fork I took of current meta-mono head, which is here:

git@git.assembla.com:ciseco-eve.meta-mono.git

Web access:https://www.assembla.com/code/ciseco-eve/git-2/nodes 
<https://www.assembla.com/code/ciseco-eve/git-2/nodes>

I have tested against a qemux86 target and also against an i.MX6 target
built out of the meta-arm-fsl layer (MACHINE = 'imx6qsabresd', 
fsl-image-gui)

Bitbake layer versions and major environment settings are here 
http://pastebin.com/SQhB4JgL

The testing I have done thus far is basic, simply running a console 
"Hello World" application
and a corresponding version showing a Windows Form with a button.

Floating Point
============

At this time Mono does not support arm hardfp although there may be some 
patches
floating around. There are some notes on upcoming support for Mono in 
the the near
future but nothing I can see in the repository yet,

ref: http://blog.alexrp.com/2013/07/21/recent-improvements-to-mono-on-arm/

As such any images which are tuned by default to use hardfp need this 
overridden (e.g. fsl-image-gui)

To build fsl-image-gui I added the following to my local.conf

DEFAULTTUNE_mx6 = "cortexa9-neon"

(I'm not sure if this is the best way - any advice on this would be 
appreciated)

Build Issues
==========

Lastly I had a lot of trouble building. From comments seen on the 
inter-web I suspect
there is an issue with bitbake tracking dependencies across differing 
tunings.

"I tried this on imx6qsabresd and have no issues.   Right before release 
we did have problems with
disabling hwfp correctly but it was enabled in the final update. Also 
I've seen multiple times that switching
between hwfp and swfp can corrupt build states.  I always keep these 
completely separate builds both
with cache and tmp directories."

ref: https://community.freescale.com/thread/310233

I was seeing that recipe builds failed, and in one case when I 
investigated the RPM .spec file
the spec file had been created with dependencies on packages with 
-hardfp in the naming.

I had to create a completely new build directory for my softfp build and 
with this done
the build then worked.

I think this may have been something touched upon by commentators at 
ELCE the other week.

---

Lastly, if anybody has time to review the recipes I've modified here and 
advise me on any non-compliances
with Yocto policies I'd be pleased to make any needed changes to bring 
them into compliance with a view
to committal to the official git repo.

Best Regards,

Alex Lennon


--------------090506060302030506040208
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi all,<br>
    <br>
    I've successfully built and tested a Mono 3.2.3 recipe with Yocto.<br>
    <br>
    The code is in a fork I took of current meta-mono head, which is
    here:<br>
    <br>
    <a class="moz-txt-link-abbreviated" href="mailto:git@git.assembla.com:ciseco-eve.meta-mono.git">git@git.assembla.com:ciseco-eve.meta-mono.git</a><br>
    <br>
    Web access:<a
      href="https://www.assembla.com/code/ciseco-eve/git-2/nodes">
      https://www.assembla.com/code/ciseco-eve/git-2/nodes</a><br>
    <br>
    I have tested against a qemux86 target and also against an i.MX6
    target<br>
    built out of the meta-arm-fsl layer (MACHINE = 'imx6qsabresd',
    fsl-image-gui)<br>
    <br>
    Bitbake layer versions and major environment settings are here <a
      href="http://pastebin.com/SQhB4JgL">http://pastebin.com/SQhB4JgL</a><br>
    <br>
    The testing I have done thus far is basic, simply running a console
    "Hello World" application<br>
    and a corresponding version showing a Windows Form with a button.<br>
    <br>
    Floating Point<br>
    ============<br>
    <br>
    At this time Mono does not support arm hardfp although there may be
    some patches <br>
    floating around. There are some notes on upcoming support for Mono
    in the the near <br>
    future but nothing I can see in the repository yet,<br>
    <br>
    ref:&nbsp; <a
href="http://blog.alexrp.com/2013/07/21/recent-improvements-to-mono-on-arm/">http://blog.alexrp.com/2013/07/21/recent-improvements-to-mono-on-arm/</a><br>
    <br>
    As such any images which are tuned by default to use hardfp need
    this overridden (e.g. fsl-image-gui)<br>
    <br>
    To build fsl-image-gui I added the following to my local.conf<br>
    <br>
    DEFAULTTUNE_mx6 = "cortexa9-neon"<br>
    <br>
    (I'm not sure if this is the best way - any advice on this would be
    appreciated)<br>
    <br>
    Build Issues<br>
    ==========<br>
    <br>
    Lastly I had a lot of trouble building. From comments seen on the
    inter-web I suspect<br>
    there is an issue with bitbake tracking dependencies across
    differing tunings. <br>
    <br>
    "I tried this on imx6qsabresd and have no issues.&nbsp;&nbsp; Right before
    release we did have problems with <br>
    disabling hwfp correctly but it was enabled in the final update.
    Also I've seen multiple times that switching <br>
    between hwfp and swfp can corrupt build states.&nbsp; I always keep these
    completely separate builds both <br>
    with cache and tmp directories."<br>
    <br>
    ref: <a href="https://community.freescale.com/thread/310233">https://community.freescale.com/thread/310233</a><br>
    <br>
    I was seeing that recipe builds failed, and in one case when I
    investigated the RPM .spec file<br>
    the spec file had been created with dependencies on packages with
    -hardfp in the naming.<br>
    <br>
    I had to create a completely new build directory for my softfp build
    and with this done<br>
    the build then worked.<br>
    <br>
    I think this may have been something touched upon by commentators at
    ELCE the other week.<br>
    <br>
    ---<br>
    <br>
    Lastly, if anybody has time to review the recipes I've modified here
    and advise me on any non-compliances<br>
    with Yocto policies I'd be pleased to make any needed changes to
    bring them into compliance with a view <br>
    to committal to the official git repo.<br>
    <br>
    Best Regards,<br>
    <br>
    Alex Lennon<br>
    <br>
    <div class="moz-signature">
      <div class="preview"> </div>
    </div>
  </body>
</html>

--------------090506060302030506040208--
