Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f175.google.com (mail-vc0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EABC3E01248
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2013 21:39:01 -0700 (PDT)
Received: by mail-vc0-f175.google.com with SMTP id p1so312433vcq.34
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2013 21:39:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=OFL6a8Jzz8R3Ygcf75w/8vo6MrQDDjN6n+Wd3uIS8Vw=;
	b=cxVXiKHodCGjkYs6zSjo7prOkVrScXoatqlw+aFjrOz8csvYE3yUJkOvGgmCrSgYqA
	7pOLIj+pkfUcCY8YiGbayzow0qMVmyZoqfieG6POq/9z9MRRAGjboODnJUxeOgV1S7Ri
	zAwjepehMQpxyyf/lQ8fTqSbpeReDZ+vTmkSfMgvoIZySnyCJFNl1VJsibuOUT7uqGHK
	k1IerKAnCbip5dmgZSJzudioJhua6U7NgOxG9SrlY/NVxYvB+HjVuhMTpZKBbSkdNr1N
	kp5umoiGO4LF8CTZAhH/nxpte3RUcie0YkCUMvHUvY2aQLcCY0brAJMgckFZp8tX2K+C
	SDEA==
X-Received: by 10.52.75.65 with SMTP id a1mr6565841vdw.79.1363149540952; Tue,
	12 Mar 2013 21:39:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.232.226 with HTTP; Tue, 12 Mar 2013 21:38:40 -0700 (PDT)
In-Reply-To: <3C8645632D634EAC903E8930B57F4777@PAULD>
References: <F1069DB4DED5494AA1DC65CB388B29EA@PAULD>
	<CAJTo0LYzZvQZ1CvXGtO2Sj8nLrzPgtb8M61gRwz+Y_p_HhPuYw@mail.gmail.com>
	<3C8645632D634EAC903E8930B57F4777@PAULD>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 12 Mar 2013 21:38:40 -0700
Message-ID: <CAJTo0La0yxkJ4bJsBbji1rCg6ea9fwGiR_q0vH+f032BHNYTTA@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
X-Gm-Message-State: ALoCoQl6DvWWuShdEjTj4KihAXqEFJcFUynFbgOFdufiuw8NBA9l4EKzTiN2YcZqLDF63M22OAc3
Cc: yocto@yoctoproject.org
Subject: Re: Can't find guile-2.0
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
X-List-Received-Date: Wed, 13 Mar 2013 04:39:02 -0000
Content-Type: text/plain; charset=UTF-8

Hi Paul,

On 12 March 2013 18:20, Paul D. DeRocco <pderocco@ix.netcom.com> wrote:
> It says "attempted 145 tasks of which 145 didn't need to be rerun". So it
> thinks it's already there.

Indeed.   Something is breaking - you'll have to mail the whole
configure log from autogen to attempt to debug this.

> Or is it now confused by the fact that I installed a version with apt-get? I
> had gotten the same error message about the missing guile both before and
> after installing it with apt-get, yet apt-get did in fact download and
> install something.

Apt would have installed a guile into /usr.  I'm a bit surprised that
it didn't find that either.  Try "bitbake pkgconfig-native" and then
"bitbake autogen-native", maybe we've found a bootstrap bug.

Ross

