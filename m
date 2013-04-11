Return-Path: <twoerner@gmail.com>
Received: from mail-we0-f180.google.com (mail-we0-f180.google.com
	[74.125.82.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72B79E01496
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 19:34:22 -0700 (PDT)
Received: by mail-we0-f180.google.com with SMTP id r5so844635wey.11
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 19:34:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=mJcWWDnfe+cElnMqE35BZpIVQnU/0BXV8Yi+z20yRjo=;
	b=mD9NgmS/kEFh1oDo6rnmj+/RjIC4ci+9d8tALw8vRTz7iwBb4ZSBhAfcNbsbiM/UdL
	iKDX4htjd0rzWLYdWKsApM/BZzg9La+3KtRc4aWNm1yNEiRBlC4uPYs+V7OUl9YhTNR9
	DgyBzwbEv0wDbbjIVvgC97OLJIwp8GN+zwcMTWz1LaHs/A6HUwNqXAcfq+U/Npe/QSct
	/pN8myAFtE5YauIpwz9ide6XoWsYVX4aDluIFer4fVz8X45SLd2UATmO5ITLtHN11Nxm
	TjwWMk4mZEfqJYddnPPiDBpUrJ3d9t/3cLP5TIeavBD6dQ0phSGyyFJ5zTNvW0Y+U+uG
	z+8w==
MIME-Version: 1.0
X-Received: by 10.181.11.164 with SMTP id ej4mr7078813wid.29.1365647660508;
	Wed, 10 Apr 2013 19:34:20 -0700 (PDT)
Received: by 10.194.167.73 with HTTP; Wed, 10 Apr 2013 19:34:20 -0700 (PDT)
In-Reply-To: <CAPhnLPAmLKbfehcGK3NPZFbNCja6H3TG=Y9q9r=A1PsjURy4gg@mail.gmail.com>
References: <CAPhnLPAmLKbfehcGK3NPZFbNCja6H3TG=Y9q9r=A1PsjURy4gg@mail.gmail.com>
Date: Wed, 10 Apr 2013 22:34:20 -0400
Message-ID: <CAHUNapTQhQNb+DRf7Z6HvtcQmQ+Jo2jtJiqKt8u6frUEvM-UaQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: 1.4_M6.rc1 started
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
X-List-Received-Date: Thu, 11 Apr 2013 02:34:23 -0000
X-Groupsio-MsgNum: 13082
Content-Type: multipart/mixed; boundary=f46d0438914bb16ddf04da0c9f94

--f46d0438914bb16ddf04da0c9f94
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Apr 10, 2013 at 6:48 PM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> Our first release candidate for dylan has been started.
>
> Repo               Branch      Hash
> poky                dylan         adb63ca02348af72a30cef2f20de2234b74a7200

I did a little bit of my own ad-hoc testing and wanted to share my
results. Maybe others could give it a try and see if they come up with
the same?

Checking out the dylan branch of poky I just wanted to perform a
simple "bitbake console-image-minimal" for each of the supported qemu
targets, run the resulting image under qemu, log in as root, and run
"uname -a".

Here are my results:

qemux86
        bitbake core-image-minimal
                - okay
        runqemu qemux86
                - okay

qemuarm
        bitbake core-image-minimal
                - okay
        runqemu qemuarm
                - segfault

qemumips
        bitbake core-image-minimal
                - okay
        runqemu qemumips
                - couldn't log in on main terminal
                - but could log in using Ctrl+Alt+3 terminal

qemuppc
        bitbake core-image-minimal
                - okay
        runqemu qemuppc
                - okay

qemux86-64
        bitbake core-image-minimal
                - okay
        runqemu qemux86-64
                - okay

I have attached a png of my qemuarm output. Right now I'm deleting its
tmp directory and trying again.

Next I want to try a "bitbake world" of all the targets to see whether
they can all succeed (they did a couple commits ago).

--f46d0438914bb16ddf04da0c9f94
Content-Type: image/png; name="qemuarm.png"
Content-Disposition: attachment; filename="qemuarm.png"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_hfdbaabh0

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
AAAASUVORK5CYII=

--f46d0438914bb16ddf04da0c9f94--
