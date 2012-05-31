Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF1CEE006D9
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 15:31:48 -0700 (PDT)
Received: by eaab16 with SMTP id b16so365536eaa.35
	for <yocto@yoctoproject.org>; Thu, 31 May 2012 15:31:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=CkdOgSZpErvJpUqdINieY1Y+K6VsAciA+xajGm0+FU0=;
	b=gneERFVyd7xnNASkIniAPqiqGqekkcAAOCD+tqXACODdWQc0Z7Sn01CYhchgrv8E65
	B2/dNuhsEylv3YsCEpiIPIono+3bNAqZzyVvfJuP5GJQ8BKmVyBJE4igJcMqFMXjQHW7
	PWydijpGCDoKuC2bUJSthRRd1WRdaybbwR94R24Ru1FPnfZ8F+E/1uStQABcmU44kIqn
	A9UhYAKQv9VmEqGdxYXXHPFKyld4NMXxdpcZIFO24VzdM8TulTiqUV4yr/Y/hsWhDe+I
	cbvUyoSi0SphohUzBHzDL+jHf1U4Fgr1crTauRqQCDGW8NnFSiaxu66+ZeXBVwpLbCsI
	+6nA==
Received: by 10.14.97.135 with SMTP id t7mr198379eef.177.1338503507682; Thu,
	31 May 2012 15:31:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.188.11 with HTTP; Thu, 31 May 2012 15:31:17 -0700 (PDT)
In-Reply-To: <CAH6UwN18AD83hzxDeFLCL8H_FBssoi5bwmQ-EHmWeJd7inMZBg@mail.gmail.com>
References: <CAH6UwN18AD83hzxDeFLCL8H_FBssoi5bwmQ-EHmWeJd7inMZBg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 31 May 2012 15:31:17 -0700
Message-ID: <CAMKF1sox5fA9yNXUK9UsEBTz2jDB8446WsYWBO=9msVM5UuuJg@mail.gmail.com>
To: Jim Rucker <linux.mrjimorg@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Hello
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
X-List-Received-Date: Thu, 31 May 2012 22:31:49 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, May 31, 2012 at 3:17 PM, Jim Rucker <linux.mrjimorg@gmail.com> wrot=
e:
> I'm fairly new to Yocto and Poky and I have a question that I haven't bee=
n
> able to find through Google.=C2=A0If there are multiple .bb files in a di=
rectory,
> how does bitbake choose which one to use?


read

http://www.yoctoproject.org/docs/1.0/poky-ref-manual/poky-ref-manual.html#v=
ar-PREFERRED_PROVIDER
http://www.yoctoproject.org/docs/1.0/poky-ref-manual/poky-ref-manual.html#v=
ar-PREFERRED_VERSION

> =C2=A0 =C2=A0 =C2=A0 =C2=A0 Background: I'm inheriting a project from som=
eone and they have a
> SRC_URI=3D"git" version and a=C2=A0SRC_URI=3D"file://" version and the gi=
t version is
> always being called but that server isn't available yet.
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

