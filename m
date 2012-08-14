Return-Path: <ross.burton@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 701C7E00283
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2012 10:00:27 -0700 (PDT)
Received: from mail-qc0-f180.google.com ([209.85.216.180])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 14 Aug 2012 10:00:25 -0700
Received: by qcmv28 with SMTP id v28so433294qcm.25
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2012 10:00:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=niz6MJz5JMPAT+HUaChlj/OAUa93z/QvL9ovls+JakU=;
	b=G/hzbArTwWs0sK9NHWWSsy+FsE8TC1CBaYvHrIfp0BLYY5H1PU3KgzrmrE7iUAzjQ/
	WXwWLqni0XCWgi/3+rdI6Y0W5ALMET7wG6gNNzAu00MnHG5oIkuQ312lNdiNZFI+cSQ2
	A+jlXGlBjD5Eu7W9C4nogamTuRWLZxstOuTkiBzvjrnNA75coX9r78Z82O17ctJ6i4cY
	/OO2HKog2kvNklFsGC3WiTCOR1kMS6K104x8FXxfiQPHrXDHyOJR6DLP/LtcgWnKn4im
	xCgPkmUswMG6aKbu/syRvmBGk+TJ+s1OBddZTun+fmeDIQjLOTi+oUpzq3OwCsSi8ipe
	YyKg==
Received: by 10.60.172.236 with SMTP id bf12mr27319537oec.23.1344963624515;
	Tue, 14 Aug 2012 10:00:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.158.3 with HTTP; Tue, 14 Aug 2012 10:00:04 -0700 (PDT)
In-Reply-To: <tencent_497A3759751BDA08386799DD@qq.com>
References: <tencent_497A3759751BDA08386799DD@qq.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 14 Aug 2012 18:00:04 +0100
Message-ID: <CAJTo0LaZ+nTe1MPrC9LDAAKzPHam2EFV1j=kUta_c9BfOU3zyw@mail.gmail.com>
To: =?UTF-8?B?4piG5pif56m64piG?= <treebody@embedstudy.com>
X-Gm-Message-State: ALoCoQn9IkK51RIyH0ckYZ1Gtw5rSh1IxqqZ24iBAqB4o84toeHgV5yb+afxLwq2JaDz0aqRhLGn
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Question about dependency graphs of building busybox
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
X-List-Received-Date: Tue, 14 Aug 2012 17:00:27 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

On 13 August 2012 10:42, =E2=98=86=E6=98=9F=E7=A9=BA=E2=98=86 <treebody@emb=
edstudy.com> wrote:
>     Recently I am learning to see how the poky build busybox.Because ther=
e
> exists too many recipes and files related,I want to find out the detail
> process or dependency graphs of building busybox.And now I use "bitbake -=
g
> -u depexp busybox"  to see the process,but it failed when I execute the
> command. Following is the message console output :
>
> ** (bitbake:2454): WARNING **: Command line `dbus-launch
> --autolaunch=3D686c0ec16da125f1568f5d990000000a --binary-syntax
> --close-stderr' exited with non-zero exit
>   status 1: Autolaunch error: X11 initialization failed.\n
> Segmentation fault (core dumped)

I'm surprised that dbus-launch is being invoked, my only guess is that
a GTK+ module is using DBus and that is attempting to initialise.

However, if X11 initialisation is failing then you won't have much
luck with depexp - it's a X11 application.  If you're running on a
server without X11 then you can't use depexp.  By using "bitbake -g
busybox" you'll get the dependency graph in .dot format, which you can
browse on another machine using something like XDot
(http://code.google.com/p/jrfonseca/wiki/XDot).

Ross

