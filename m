Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40DC2E00527
	for <yocto@yoctoproject.org>; Wed,  6 Feb 2013 06:40:50 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 3D593F811E8; Wed,  6 Feb 2013 07:40:50 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 67E2DF811E2;
	Wed,  6 Feb 2013 07:40:49 -0700 (MST)
Message-ID: <51126B76.1060108@mlbassoc.com>
Date: Wed, 06 Feb 2013 07:40:54 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Running Sato/X11 as non-root
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
X-List-Received-Date: Wed, 06 Feb 2013 14:40:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

In my attempt to get pulseaudio running, I need to bring up
my X11 session with a user that is not root.  The default
(core-image-sato) always starts X11 as root.  This yields
these errors when starting (with pulseaudio installed):
   W: [pulseaudio] main.c: This program is not intended to be run as root (unless --system is specified).
   E: [autospawn] core-util.c: Home directory /home/root not ours.
   W: [autospawn] lock-autospawn.c: Cannot access autospawn lock.
   E: [pulseaudio] main.c: Failed to acquire autospawn lock
   W: [pulseaudio] main.c: This program is not intended to be run as root (unless --system is specified).
   E: [autospawn] core-util.c: Home directory /home/root not ours.
   W: [autospawn] lock-autospawn.c: Cannot access autospawn lock.
   E: [pulseaudio] main.c: Failed to acquire autospawn lock

So, I tried to make X run as user 'demo', which I created, by
putting 'demo' in /etc/X11/Xusername.  Now it seems to try
and run as 'demo', but falls over quite quickly:
   Fatal server error:
   [2951371.651] xf86OpenConsole: Cannot open /dev/tty0 (No such file or directory)
   [2951371.651]
   [2951371.651] (EE)
   Please consult the The X.Org Foundation support
          at http://wiki.x.org for help.
   [2951371.651] (EE) Please also check the log file at "/var/log/Xorg.0.log" for additional information.
   [2951371.651] (EE)
   [2951371.652] (WW) xf86CloseConsole: KDSETMODE failed: Bad file descriptor
   [2951371.652] (WW) xf86CloseConsole: VT_GETMODE failed: Bad file descriptor
   [2951371.652] Server terminated with error (1). Closing log file.

Any ideas how I get this going?

n.b. not only do I want to get this going for myself, but I think
the discussion (and maybe subsequent documentation) is useful since
this functionality is in OE-core (or is it only Poky/Yocto - hard
to tell)...

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

