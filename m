Return-Path: <ross.burton@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9580CE0049D
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 13:43:49 -0700 (PDT)
Received: from mail-oa0-f48.google.com ([209.85.219.48])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 12 Sep 2012 13:43:48 -0700
Received: by oagn16 with SMTP id n16so1700022oag.35
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 13:43:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=+f922aVPXIsf2YNhPwrRLhEHxto9J3JNEH5rEfnhIII=;
	b=cPRG1fQWEFQS81gB6zUmOEv2m06+Kd9nTcF2Ri4XCJfjuYFkVBZsyeWBIK8B+FLThw
	wnDmbzdnCFi+nFaEK2YVvdnToYubZoGywUzp7TEr3RLSTDlvdwk40ymJ19Lz2KDhM8q2
	rPGzzPmpXcWH9uSuQjlztVu6JagwuvUG81d+SbEzsMzuUimRp3XIl94VUFJmV+myBoUP
	R1WchHIGSbCP9pQ6a9jAx5L2SvL8mQDpFZdg1JlCKRoE+2spcyE/vT4Ogs3LckCbCPEU
	ULrFBHe+A1F+SQahgzUFo48RPvCiRwwiOI60iCfI5PBWOpuUWNUs+ZuL2H7IWpc+uTw+
	MoCA==
Received: by 10.182.44.7 with SMTP id a7mr24583856obm.80.1347482627799; Wed,
	12 Sep 2012 13:43:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.79.105 with HTTP; Wed, 12 Sep 2012 13:43:27 -0700 (PDT)
In-Reply-To: <ADD6A3980E8C39419A432FF422031B4C15726661@ORSMSX106.amr.corp.intel.com>
References: <cover.1346893078.git.nitin.a.kamble@intel.com>
	<1347320069.25993.16.camel@empanada>
	<ADD6A3980E8C39419A432FF422031B4C15726661@ORSMSX106.amr.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 12 Sep 2012 21:43:27 +0100
Message-ID: <CAJTo0LZLWBGsNyDcOKNj+cSWJTkazt51HWTOs6k2LvXQENY7tA@mail.gmail.com>
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
X-Gm-Message-State: ALoCoQkIy+r775sjWttT5Zkm/SLrtXRGfmwb20rTmZ8lVdqGhrIqFv9hc6AXR1kGdpWQFjUO664B
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Hart,
	Darren" <darren.hart@intel.com>
Subject: Re: [PATCH 0/1] Fix X issue on crownbay
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
X-List-Received-Date: Wed, 12 Sep 2012 20:43:49 -0000
Content-Type: text/plain; charset=UTF-8

On 12 September 2012 21:14, Kamble, Nitin A <nitin.a.kamble@intel.com> wrote:
> FYI While testing on the fishriver platform, I also find that there is no X log, and looking further found out that xorg executable is not on the image. I think the same thing is also happening on crownbay.

There have been transient reports of Xorg missing in the qemu images
too -- transient because the reporter said that the next day's
autobuilt image had the package installed again.  Very odd.

In the broken systems you say there is no Xorg binary. Can you confirm
that there is no xserver-xorg package too?  Can you inspect the build
and see if this failed, or if there is some machine configuration
disaster which means it doesn't think it needs to install an xserver?

Ross

FWIW, my qemuarm image from earlier today works.

