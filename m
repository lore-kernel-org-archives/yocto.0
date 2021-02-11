Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
 by mx.groups.io with SMTP id smtpd.web09.2735.1613078047512613763
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Feb 2021 13:14:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HWKfQoUt;
 spf=pass (domain: gmail.com, ip: 209.85.222.179, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f179.google.com with SMTP id x14so6780260qkm.2
        for <yocto@lists.yoctoproject.org>; Thu, 11 Feb 2021 13:14:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding:user-agent;
        bh=mkfcOLHjPJloEqsEniuWUnMjI6OggG8mFPtAvRbSOIo=;
        b=HWKfQoUtW2ChT+/cz1b3Sdp5TMQIRKJaK4oGNSDjKBby87RbllIfKzp2GCaXB26jv5
         6MhVJRLxzlVn7KhzRcz/UnzvS/akY0V4YFpGO0HdhoDGsd1ammRl8Qa6zY+CmVbSOAd+
         ypJf8CmRzZwW5Iqlv/4HTou6zWjN8jXm6LWOCc7Bja/EFnbTljQ9Yv8GJM7Cjet4r/gw
         O0oq/1jIAsZCt80Ss/4k5WdvzdE2BUg3oH892L42qM3DR2B7GQPx2A8RZk8CnZ4efPye
         o0lreZlagKakLYmzlROL4Vvb+tnQqqeZ0g5ZXJ72khHTrZF2PqcC7TeKuUOYPuMqC9Dk
         ibbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding:user-agent;
        bh=mkfcOLHjPJloEqsEniuWUnMjI6OggG8mFPtAvRbSOIo=;
        b=U8TXy5QgcyIeaGGpTfhH1a1F6CHuBmz3qOUDb/m9wMHx7q0/RP1CvtwbuutcOgDCQ/
         T8aSxbVsOdKb88FZcmRx3iTRemiHLvtyd9umln3VPcSd4HwgdLHwjHD3pjHMPcwUbfUZ
         ouvpw6YwtpRcjrpuTAitC2kPJ/WPtxgxqqIqi/FhglPBwyemHe0Vh1d0OjJij/KX8gTs
         RElg4XBdD5Bg9EdYAtARjKFY/c/+svEa+0oeQeGepndVk4tj4W197x67M9X9pg/T51q1
         8Np5HNv6i+L3k5IpxGdVQ04UresbOvPU785Z76CBYMGSTAAiEH9ki6vGcIkg8NwdUyZz
         Vprw==
X-Gm-Message-State: AOAM530pHjxuDTF5jwrWBYyZtyMB5PmnsuTd5cPqEnNbk4hNw2+VnDpC
	JJw/fbJ5dfN2Z8IcvOkGZq1RiHdv+SQ6Dw==
X-Google-Smtp-Source: ABdhPJz2ehcRFg2oCfdQgtU+bLmQKJAnwfKyFutBcc05vimrMcPwG57cB5BlX02q51sHjqZE1swDmw==
X-Received: by 2002:a37:9a50:: with SMTP id c77mr5745424qke.59.1613078046142;
        Thu, 11 Feb 2021 13:14:06 -0800 (PST)
Return-Path: <twoerner@gmail.com>
Received: from localhost (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id m64sm4848338qkb.90.2021.02.11.13.14.04
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Feb 2021 13:14:04 -0800 (PST)
Date: Thu, 11 Feb 2021 16:14:02 -0500
From: "Trevor Woerner" <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: Yocto Technical Team Minutes, Engineering Sync, for Feb 9 2021
Message-ID: <20210211211402.GA1058@localhost>
MIME-Version: 1.0
User-Agent: Mutt/1.10.1 (2018-07-13)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto Technical Team Minutes, Engineering Sync, for June 9 2020
archive: https://docs.google.com/document/d/1ly8nyhO14kDNnFcW2QskANXW3ZT7QwKC5wWVDg9dDH4/edit

== disclaimer ==
Best efforts are made to ensure the below is accurate and valid. However,
errors sometimes happen. If any errors or omissions are found, please feel
free to reply to this email with any corrections.

== attendees ==
Trevor Woerner, Stephen Jolly, Ross Burton, Saul Wold, Joshua Watt, Richard
Purdie, Alejandro H, Will, Jan-Simon Möller, John Kaldas, Jon Mason, Bruce
Ashfield, Michael Halstead, Scott Murray, Steve Sakoman, Tim Orling, Trevor
Gamblin, Peter Kjellerstedt, Randy MacLeod

== notes ==
- uninative 2.3.2 with upstream fixes (might be issues with 2.3.3, please
  have a look)
- swatbot has found some interesting things

== general ==
Randy: rebasing meta-rust into oe-core. it’s working, sdk needs work and
    libsvg needs work
RP: have you seen the patches on the mailing list? (Jan-Simon, PaulB)
Randy: yes, haven’t looked at them yet
RP: do you know how they relate?
Randy: not yet, i’ll reply to the thread. is it needed for the next release?
RP: i’m not going to hold up the release for it, but it’d be nice


RP: there’s been a lot of churn in the versions (glibc, kernel, etc). if
    anyone sees anything please raise a flag
Ross: yes, I’ve seen some issues, not always 100% reproducible
RP: x86 host?
Ross: not always
TimO: ubuntu host?
Ross: 20.04
RP: glibc-2.33 does have some interesting things, so i’m not surprised there
    are issues
Randy: what are you seeing?
Ross: issues building the kernel (“dangerous relocations”)
RP: for dunfell we did a glibc-2.32 update but we’ll hold off on glibc-2.33
    (thanks Michael!)
Ross: turning off uninative makes it go away
TimO: is that a Xen kernel?
Ross: no, just defconfig


TimO: (for Bruce) interested in kubernetes or k3s
Bruce: i upgraded pretty much everything in meta-virt over the weekend, k3s is
    broken but everything else is good


TimO: how was FOSDEM?
Bruce: best platform so far, better than ELC/E
TimO: their own, or same as Plumbers?
ScottM: their own, something with matrix and jitsi
Bruce: not a lot of OE stuff, specifically, but mentioned in a bunch
    (embedded, license, distros, virtualization)

JPEW: was going to give a talk at ELC, (virtual, labgrid, etc)
TrevorG + TimO: we should talk
TrevorG: we’ve got interesting things working, so we were going to give a
    talk (kube-virt tekton stuff)
ScottM: for AGL there’s a project to do drm stuff on the host (wayland) from
    within a virt machine (virgl)


Randy: is x11 really dead?
Ross: yes, no upstream maintainer
JPEW: i’ve been looking for a good Weston compositor that would be a good
    replacement for Sato. even if it just listed out the .desktop files that
    could be clicked
Ross: there are some
JPEW: but they’re not great on a 5” screen. there is the IVI shell, but
    any apps have to use the IVI shell extensions
ScottM: AGL just migrated away from it. i’ll have to look it up, but there
    is a compositor that uses libweston
Ross: i looked at matchbox to see if the sato bits could be converted to
    weston. it should be possible, the hooks are there, but i haven’t gone
    any further
TimO: the problems with the compositors that i looked at needed QT
JPEW: sway is a good tiling compositor, but we need something that would be
    good for an embedded demo
ScottM: maynard is the one from colabora, it was dead, but i think it’s
    going to be picked up again. another one would be to use wlroots or
    libweston to piece something together
TimO: libweston would be a good one
ScottM: the AGL one targets libweston, libweston had updates to support this
    use-case
TimO: also need to consider testability, worked with dogtail but it was
    “hacky”
Ross: gtk4 has a re-written accessibility module


RP: there is a layer that RedHat has been working on called meta-rpm,
    they’ve been making noises about automotive stuff. it’s completely
    beta software so far, native only, they’re repackaging their binaries to
    look like yocto packages
TimO: it looks like something similar to what Siemens is doing (isar)
RP: they’re looking at re-writing pseudo
ScottM: is that public?
J-S: it’s on a gitlab: https://gitlab.com/fedora-iot/meta-rpm
JPEW: the idea is “you can run Fedora and put stuff from your own layers on
    top”
J-S: it works for a test build they’re doing, it’s actually CentOS8
ScottM: it would be interesting for commercial folks if it was RHEL
JPEW: the idea is “i have this recipe from OE that i want to run on CentOS”
RP: my fear is RedHat is pretty large
Alejandro: my fear is that all distros might take up this path
RP: from a public perception point of view we need to make sure people realize
    this isn’t how Yocto is supposed to be done
Randy: the repo started in Nov 2020, the 90% developer on the project seems
    like someone we’re linked to (LinkedIn)
RP: both Ross and I have reached out the project
Alejandro: our DNF is quite old, is that good or bad?
RP: don’t think it matters, they’re using DNF in native mode to run
    the post-installs which runs into problems with pseudo (we don’t use
    chroot). it has a lot of constraints (like isar)
Randy: we’re on the DNF from Dec 2020, and the latest was just released 12
    days ago, so we’re not that far behind
TimO: AlexK did quite a lot of work on updates recently, and DNF was not one
    of the easy ones


JPEW: (for Michael) any updates on the reproducibility page?
MH: i haven’t had a look at it yet
JPEW: I was hoping it would be hosted on the YP page, is that what you were
    thinking?
MH: i thought we were pulling from your site (the JSON) and we’d pull from
    there
JPEW: i was putting it up so you could see the HTML, but i wanted it to be
    hosted on the YP page, it doesn’t work on mine due to x-site-scripting
    checks in browser, so it needs to all be hosted on the same site. if
    x-site-scripting is turned off in browser it works, but we can’t expect
    that


TimO: i was trying to share the 3.3 release schedule with an intern but we
    don’t have one
SJ: probably my fault
RP: as part of the automation there were questions about what we needed and
    what was not being used


TrevorW: ELC has been cancelled, should we do something? especially the
    training (devday)
RP: need to bring it up with the people who would normally organize it
