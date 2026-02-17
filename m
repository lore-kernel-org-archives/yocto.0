Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7E00E9A03E
	for <webhook@archiver.kernel.org>; Tue, 17 Feb 2026 22:35:59 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.24576.1771367756307862062
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Feb 2026 14:35:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=M+XRLpMb;
 spf=pass (domain: smile.fr, ip: 209.85.221.50, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-436e8758b91so3852222f8f.0
        for <yocto@lists.yoctoproject.org>; Tue, 17 Feb 2026 14:35:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1771367755; x=1771972555; darn=lists.yoctoproject.org;
        h=in-reply-to:references:from:subject:to:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gmKCDl9mOg5SuEQwhYlg8yZcG0KzwOjTexhmI/ir7oY=;
        b=M+XRLpMbuE/3rCWCueCetwofZewoktihhBvorMSlp0UznK/1ofSIUygD3vIn+f3cRK
         I4UpCZptOvaZDxUcSvsDQtfJtcXGqokqtVnygQAZhhzW65UpsyIwB/F9dFcFjB0pANY7
         0VxsTLW2cTz0/yo49VW3CXxbEMEvK0yV7CmIA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771367755; x=1771972555;
        h=in-reply-to:references:from:subject:to:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gmKCDl9mOg5SuEQwhYlg8yZcG0KzwOjTexhmI/ir7oY=;
        b=OoCFyAiu8LvndnOoTcWPrCfxnBBdY4WtqvxhGgjiy7iV1Hoj3M98MVT4vO7Euo61lX
         AoFEyBENeuIYRfETWtdwJcwMZExl2cz3NwuzQQaDRx0/Uw0e8Q21v733lUDWXkQU2OFe
         ueVtUXIjJYrGj/W45VBT/hzztl/WpDTJ2wvKXdY5YqUgku9D5JfQVfiKhiXovFR0dp+z
         Ui+IFrOq1lnBGiaZB/jTH23X1PzU/g3FTNKLt2wbvaN+HW3e0f4d7KYTVAmKi1pwZaRd
         ygsyD+OFqjsAzHb3GMFIdX15NuO7NHJPbFKu8mUvLxczrMMQ7RpCBIHYElnfd+6ekiSR
         foQw==
X-Gm-Message-State: AOJu0Yz4OTDWw+0ysyjsFNuOdeBgN9es3K9eIaTOnwyGJDWozSRVrJk4
	leXmEOwlPXtHMAZBuPZjIypwCvFoVQv0gX73KMlOHYFziUzueU83MGADKHU9NXx0Pzk=
X-Gm-Gg: AZuq6aJa5P0t14Nchoo5STgeEZCqILCO6UBuSjiQOAKp74QsbyoWJJXGlMye17um56W
	5feRFaEhqgsjukP8bkgNdJMOGdQmysN9mYKr/gj+OlDJ3MkK+D20HrHj0F4BE8M1sPzemlW9yzA
	QwPoZkSPzxLNCxHhvXf3HCzPFhnwixJy+nbiOQMZtVi0RSgKS1W8n1y9W9b5HJiDFfA30q2DJlP
	oN1GNsqlNxDxzb4ZiI+UfSGSiF1WIKs5EP/6al1FCin7M4Fk3yYKUU7uPgRZiq6cDohUFu03hGW
	zndWFigk42jW2U7rsaRUOyd+R0Nf16xbPFmRKXMBXNawrxm+qdWN3AqwdmeOATjA0FFm2PIvm7E
	yfQ04aUFsfkWFvpLLpv40KY9EXRTeW8HNdTi/y3AEeW42ZEHMe16cVeOzoImLoSn4Dx1bVMqhDW
	FxLYucUAArlIXt4d+IkB5prxYxQ5HSzpfNCOkTzWSPexySx5QcFe/LeRPZsxHz4D5zfcyr+bb54
	FeZiUQ99NhYspw=
X-Received: by 2002:a05:6000:184f:b0:437:8123:b5e9 with SMTP id ffacd0b85a97d-4379db97ec8mr23569352f8f.45.1771367754610;
        Tue, 17 Feb 2026 14:35:54 -0800 (PST)
Received: from localhost (2a01cb001331aa00a2e4fb7b0d887544.ipv6.abo.wanadoo.fr. [2a01:cb00:1331:aa00:a2e4:fb7b:d88:7544])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796a5ac7csm33731056f8f.7.2026.02.17.14.35.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 14:35:54 -0800 (PST)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 17 Feb 2026 23:35:53 +0100
Message-Id: <DGHLGO2BAP6W.31VDOO58TLKS6@smile.fr>
Cc: "Yocto ML" <yocto@lists.yoctoproject.org>
To: "Yoann Congal" <yoann.congal@smile.fr>, "Tyagi, Yogesh"
 <yogesh.tyagi@intel.com>
Subject: Re: [meta-intel] intel-media-driver_26.1.0.bb:do_compile fails on
 master
From: "Yoann Congal" <yoann.congal@smile.fr>
X-Mailer: aerc 0.20.0
References: <DG57YRQ7R76H.1FVPAEO7JT8Y6@smile.fr>
 <IA3PR11MB89872EF6500D42F1A753C0188C62A@IA3PR11MB8987.namprd11.prod.outlook.com> <DGD219WBW417.38KFVSE5F8O4R@smile.fr> <IA3PR11MB898731D307DB9D0641D1F5678C6DA@IA3PR11MB8987.namprd11.prod.outlook.com> <CAMSfU+4A=s=SwU5XNSebqSMQpg+KD8tYpMn9ncn93eUUdR7KxA@mail.gmail.com>
In-Reply-To: <CAMSfU+4A=s=SwU5XNSebqSMQpg+KD8tYpMn9ncn93eUUdR7KxA@mail.gmail.com>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Feb 2026 22:35:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66255

On Tue Feb 17, 2026 at 10:29 PM CET, Yoann Congal wrote:
> Le mar. 17 f=C3=A9vr. 2026 =C3=A0 21:09, Tyagi, Yogesh <yogesh.tyagi@inte=
l.com> a
> =C3=A9crit :
>
>> ________________________________________
>> From: Yoann Congal <yoann.congal@smile.fr>
>> Sent: Thursday, February 12, 2026 8:01 PM
>> To: Tyagi, Yogesh <yogesh.tyagi@intel.com>
>> Cc: Yocto ML <yocto@lists.yoctoproject.org>
>> Subject: Re: [meta-intel] intel-media-driver_26.1.0.bb:do_compile fails
>> on master
>>
>>
>> On Tue Feb 10, 2026 at 5:29 PM CET, Yogesh Tyagi wrote:
>> > Hello,
>>
>> Hello,
>>
>> Thanks for the status update.
>>
>> > The only solution I could find at present is to shorten the build path=
.
>> >
>> > Cause:
>> >
>> > * `intel-media-driver` CMake generates ~626 include directories per
>> compilation unit
>> > * With long paths, the expanded compiler arguments exceed Linux `ARG_M=
AX`
>> > * GCC expands response files before spawning `cc1plus`, so
>> wrappers/response files don=E2=80=99t help
>> > * This is a kernel limitation, not a Yocto or compiler bug
>> >
>> > Impact:
>> >
>> > * Fails in Yocto builds with typical CI/workspace paths
>> > * `ENABLE_NONFREE_KERNELS=3DOFF` does not reduce include count
>> >
>> > Workaround:
>> >
>> > * Use very short workspace paths (<15=E2=80=9320 characters), e.g. `/w=
/yocto/...`
>> >
>> > Status:
>> >
>> > * Upstream issue filed with `intel-media-driver`
>>
>> For reference, the issue is:
>> [Bug]: CMake generates 600+ include directories per compilation unit =C2=
=B7
>> Issue #1984 =C2=B7 intel/media-driver
>> https://github.com/intel/media-driver/issues/1984
>>
>> > * Proper fix requires CMake refactoring upstream
>> > * Path shortening is the only reliable workaround for now
>>
>> >Did you find what made the problem appear when we did not had it before=
?
>> >Any chance that this is something you can revert while
>> >intel-media-driver cmake is fixed?
>>
>>
>> I have reverted the intel-media-driver to old version. Please check the
>> build now.
>>
>
> I've started 2 AB meta-intel builds:
> master :
> https://autobuilder.yoctoproject.org/valkyrie/?#/builders/41/builds/3043
> whinlatter:
> https://autobuilder.yoctoproject.org/valkyrie/?#/builders/41/builds/3044

Both builds are successful.
I've closed https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D16172.

Thank you Yogesh.

>
>
>>
>> > Thanks,
>> > Yogesh
>> > ________________________________________
>> > From: Yoann Congal <yoann.congal@smile.fr>
>> > Sent: Tuesday, February 3, 2026 2:59 PM
>> > To: Tyagi, Yogesh <yogesh.tyagi@intel.com>
>> > Cc: Yocto ML <yocto@lists.yoctoproject.org>
>> > Subject: [meta-intel] intel-media-driver_26.1.0.bb:do_compile fails on
>> master
>> >
>> >
>> > Hello,
>> >
>> > meta-intel/master seems currently broken: intel-media-driver_26.1.0.bb=
:do_compile
>> fails with:
>> > ninja: fatal: posix_spawn: Argument list too long
>> >
>> > This happens on master and also on whinlatter.
>> >
>> > We can see this on autobuilder:
>> > https://autobuilder.yoctoproject.org/valkyrie/?#/builders/41
>> > * master:
>> https://autobuilder.yoctoproject.org/valkyrie/?#/builders/41/builds/2967
>> > * whinlatter:
>> https://autobuilder.yoctoproject.org/valkyrie/?#/builders/41/builds/2966
>> >
>> > Regards,
>>
>>
>> --
>> Yoann Congal
>> Smile ECS
>>
>>
>>
>>


--=20
Yoann Congal
Smile ECS


