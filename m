Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45A47E00A84; Sat, 25 May 2019 06:35:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f194.google.com (mail-it1-f194.google.com
	[209.85.166.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67E77E00931
	for <yocto@yoctoproject.org>; Sat, 25 May 2019 06:35:35 -0700 (PDT)
Received: by mail-it1-f194.google.com with SMTP id 9so17893069itf.4
	for <yocto@yoctoproject.org>; Sat, 25 May 2019 06:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=K2b1SlMaNuifSu2ig/LGc0s2E4dhyJuO6oYiSDag2fY=;
	b=TbBu/BZvOBBSh1LCBD2WfIsOCM8GObW/BmKzFgcdx0XTDAwoh63YPQerBMprZUgmm0
	FKmEhdvc4k/eTIDkFZXGAXLWu1TgQGKwllJ8udbdvTR2YdWNaXb6gQCt7yo4ywsrQ4Ye
	9IRpUAaffjWKCsKXM52imNhpWZ2IgFr/WvPnU6CZQ2c3Ep5pQ3/AYpiqeZA8+3MEc/+V
	O0mro1kcxBB3K1v/BbTizdcuSqTwvpB36HhiPuxsKVV7wmuliAZMK3QmJIOi0vpWWB4y
	NxSqSnZnAs89ojqrucEud/T+n8K+8/9LkwAt2v1NMOWqAuACO4j+hhdE2PdUJCpJGQD7
	znKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=K2b1SlMaNuifSu2ig/LGc0s2E4dhyJuO6oYiSDag2fY=;
	b=nXzAo9hqIaLMoEbel43HVjPlWs1DhjUTUxj6QppEVpQ14wTcDu/EGY4k6xEjTutWdm
	YlyNLvz7nFUFe/cTRDvOU86laMEMckerbunWbHMjgxZ6V63CpOXQLn8qLRoSU7Vrd2Q6
	nvudRME35Y6Rv5QctudlTkNvdtQkkolCNV/2+AVQlkzY1UMLU57Z5kU8sMwkzqcHHXWQ
	P1Unkc7P/9wRryrSsIJTIe0TFy7kTFAGg2bOI0HA6HsTcZAespruUHhgXlTUySNrHK/q
	0soN0Sq+jagRqGohoM9KFutQA2KLvo4Qdd1Frlzcjjh7q1T0vtZG5o0SBQ5wnNLjgK4r
	PGYw==
X-Gm-Message-State: APjAAAWK3HGsCWHknp8prN1CiBf7rcJFSZKJYvfjuM5KRYcNLhzKkRah
	iXj7jRPzG+LfDqdsMzD2GlfeO2By2NLR5hXQILfSoA==
X-Google-Smtp-Source: APXvYqwUd+IU+/YrjSE1BtPa6/KozoIstPsyZVg+uJQEzCNgx1EJ5ldGWL9FQZoGEqZo5DM1/jD4n7EhRXEwAirrtTY=
X-Received: by 2002:a24:c204:: with SMTP id i4mr21729784itg.83.1558791334888; 
	Sat, 25 May 2019 06:35:34 -0700 (PDT)
MIME-Version: 1.0
References: <51a78952-31b9-6b1b-2459-c1092b50fdf2@cern.ch>
	<CAJTo0LbkJSEP+49qR_fSmN5cGB0-n+Gz8xaFnLvuvi3WAy+zOA@mail.gmail.com>
	<cc00f116-9071-3d5e-7fa7-a14af9bd71af@cern.ch>
	<70c52f90-eba9-d67b-7d8c-55b5a249f1ae@gmail.com>
	<CANx9H-D0KrzVw4d=hES-5ss2i3n5H0HhnE00mTnpxOE95GNHrw@mail.gmail.com>
	<72a7b758-602a-f8ab-1397-7d4df9fb5dd2@cern.ch>
In-Reply-To: <72a7b758-602a-f8ab-1397-7d4df9fb5dd2@cern.ch>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 25 May 2019 14:35:23 +0100
Message-ID: <CAJTo0Lb45rACR3du6jUHW0wdknU+aaQEhQCPex7457TfC96pDQ@mail.gmail.com>
To: Ralf Spiwoks <spiwoks@cern.ch>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: PN is uppercase
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
X-List-Received-Date: Sat, 25 May 2019 13:35:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The check was added in August 2017 and appeared first in Rocko, so
it's possible that you stuck with an earlier release until recently.

Ross

On Fri, 24 May 2019 at 15:26, Ralf Spiwoks <spiwoks@cern.ch> wrote:
>
> Hi guys,
>
> The warnings were definitely not on when I started using Yocto more than =
two years ago.
> I have not been using debian packages, and didn't notice. I thought I was=
 still not
> using debian and that's why I am surprised about those warnings. But as I=
 wrote, if I
> ignore the warnings, nothing bad happens ...
>
> And Tim, thank you for writing "Debian" and "OpenEmbedded" in that way ..=
. it reassured
> me ;-)
>
> Have a good weekend. Cheers,
>
> Ralf.
>
> On 5/24/19 6:23 AM, Tim Orling wrote:
> >
> >
> > On Thu, May 23, 2019 at 4:55 PM Khem Raj <raj.khem@gmail.com <mailto:ra=
j.khem@gmail.com>> wrote:
> >
> >
> >
> >     On 5/21/19 12:50 AM, Ralf Spiwoks wrote:
> >      > Hi Ross,
> >      >
> >      > Thanks for your email. I am realising that I have not replied to=
 your
> >      > email earlier. Sorry. I guess it was partly because your answer =
put
> >      > me slightly off. On the one hand, I thought that as a general ap=
proach,
> >      > Linux was case sensitive, unlike its big rival Windows, and I wa=
s not
> >      > aware  of package managers which would explicitly forbid upperca=
se
> >      > package names. I find the approach of allowing only lowercase pa=
ckage
> >      > names quite limiting, and frankly a drawback for using Yocto
> >      >
> >      > On the other hand I have a few tens of packages to maintain, whi=
ch
> >      > have uppercase letters in the package names and which did work w=
ith
> >      > Yocto in previous versions. So, because of a new convention we w=
ould
> >      > have to rework some of the packages or ignore the warning messag=
es.
> >      > And until we find the effort for reworking those package recipes=
 we
> >      > will stay with the latter option.
> >
> >     The package name rules are not new, they have been with OE/YP forev=
er
> >     so it should have failed always. Similar to debian see
> >
> >     https://www.debian.org/doc/debian-policy/ch-controlfields.html#list=
-of-fields
> >
> >
> > We had to pick a convention. Debian is well documented, conservative an=
d well thought out. My first contributions to OpenEmbedded many years ago
> > didn=E2=80=99t follow Debian naming, were rejected on V1 and I embarked=
 on a new learning curve. I=E2=80=99ve embraced it and never looked back.
> >
> >
> >      >
> >      > Thanks for your patience and your explanations. Cheers,
> >      >
> >      > Ralf.
> >      >
> >      > On 4/2/19 1:54 PM, Burton, Ross wrote:
> >      >> On Tue, 2 Apr 2019 at 12:36, Ralf Spiwoks <spiwoks@cern.ch <mai=
lto:spiwoks@cern.ch>> wrote:
> >      >>> TWO questions:
> >      >>>
> >      >>> 1) Are those two issues related?
> >      >>
> >      >> Probably not, unless you're trying to use a mixed-case override=
.
> >      >>
> >      >>> 2) What is the logic behind allowing only lower case package n=
ames?
> >      >>> This is to me
> >      >>>      a serious restriction on the use of Yocto.
> >      >>
> >      >> Two reasons: some package managers forbid packages with upperca=
se
> >      >> names; and for performance reasons overrides are lowercase and =
as
> >      >> package names are often embedded in overrides this implies that
> >      >> package names need to be lowercase.
> >      >>
> >      >> What's the problem with using lowercase names?
> >      >>
> >      >> Ross
> >      >>
> >     --
> >     _______________________________________________
> >     yocto mailing list
> >     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> >     https://lists.yoctoproject.org/listinfo/yocto
> >

