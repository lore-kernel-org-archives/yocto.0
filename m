Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB591E00D16; Thu, 31 Jan 2019 07:52:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f169.google.com (mail-it1-f169.google.com
	[209.85.166.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2157E00BED
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2019 07:52:55 -0800 (PST)
Received: by mail-it1-f169.google.com with SMTP id h193so4834540ita.5
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2019 07:52:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=TmKt0Gl7ZGL7iVMYJBj3WbTKVgQg6kHaav9nXvc2fVw=;
	b=FO8NSFFN9SCpB8ys5RiLYcu6J4gBskOt9SzWOUdnDnt5mXTFvhNmBHYPh5ksTMW8Qg
	kEuMmragu7F/6prvlhN33P/Fmj25K6LnrJfd4YpzINshlJ+fJewDG6japLUoiJMzqa4t
	TggMBI9CVakRsR8TYyj/FR7VNddjopmuhCWAa4OkcEU0d4LHCavuabxAuC726BUrLAXT
	rnE5H2x1y7buDM06HgisGL8wrHIOBFVP64GKnTez28+Z9RpQrbwS+Ax48XX+n0Yjqtu7
	ssva/eGcht3Xek98EAFuaX/bZ1YJH+RmlOnXdwf+hA6E3sDMZ1fcVFhvZR7g6l82+xAm
	BjdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=TmKt0Gl7ZGL7iVMYJBj3WbTKVgQg6kHaav9nXvc2fVw=;
	b=mXj+oBWBFZ4VdOivMJoIQ6L6dC9H0TVOOqawtsRNwnqkhT6dvtF6xpRoMEUT5mL4Ns
	2td5/6HyliozhAWub7ypRdd8fjLW8Kgx+TjcOhdRfA+4VnyNIypU1HFeH689dcqaSfdj
	WbXA7XGFkZPFaLODS+qHnQM+rqtbus1vwSu7RHdyTLvy6kmDjBS2oFAeSLSNicXO7n8Q
	rbT0VZ+eJQ53uvlBRqWiFMD213C8SJhxnoKU7NHs0GHVH0OOjG4gOy06Y54kB0qiaxrK
	mLvB1CRL2M7Ue8xotRs8gbeHssfyJaRDEiOcVNBjH7vxe+jR30abTn17KJ7KafjvTF4D
	lwKQ==
X-Gm-Message-State: AJcUukdJEr3T44hHURIxLlb/VCqOXgtPYoHrjIalvJ0cPVS0AOcIYRll
	N2Eo204hw/Tfu2XVaZkExnzS9CuxSYsKQKbowBHDoN7Y
X-Google-Smtp-Source: ALg8bN5F5LjOp05/dRUiD6Qr0eBOIW7t5UW/H2EffNOSqVoRVXdiRBCYUJnZszsbfCgocyPjS+fkWgsh69e46Y2Wc10=
X-Received: by 2002:a02:57c4:: with SMTP id b65mr22472973jad.79.1548949975024; 
	Thu, 31 Jan 2019 07:52:55 -0800 (PST)
MIME-Version: 1.0
References: <3a07697c3d1d45100ad973bace76455a1988fef4.camel@sierrawireless.com>
	<CAJTo0LYxrsLQJsj3T60VzmKt9MUziEkN5mA0aD6vqd+LEJynbA@mail.gmail.com>
	<CAJTo0LYaVUuMNkxP9CyNHqWAv7RQ9xtjmAgMw_7q64BJNR3LWQ@mail.gmail.com>
	<55afbacdfc53eadf173cc922acf68013e97e31d6.camel@sierrawireless.com>
In-Reply-To: <55afbacdfc53eadf173cc922acf68013e97e31d6.camel@sierrawireless.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 31 Jan 2019 15:52:43 +0000
Message-ID: <CAJTo0Lb3x-2iQ1W6=At84pkSpn0UJ4sowy5W2dudupoN1_PC2w@mail.gmail.com>
To: Darcy Watkins <dwatkins@sierrawireless.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: RDEPENDS and do_rootfs
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
X-List-Received-Date: Thu, 31 Jan 2019 15:52:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ah in that case there's been a lot of work since daisy to useradd etc.

Ross

On Thu, 31 Jan 2019 at 15:51, Darcy Watkins <dwatkins@sierrawireless.com> w=
rote:
>
> Hi,
>
> In my case, package A creates groups a1, a2 and a3.
>
> B is actually a family of packages B1, B2 and B3 that each create user
> b1, b2, or b3 respectively, but also adds the new user to groups a1, a2
> and/or a3.
>
> So in this case, it is necessary that package A first be installed AND
> that its post-inst scripts have run to generate groups a1, a2 and a3.
>
> If, as you suggest, RDEPENDS will NOT guarantee this, then I will need
> to solve this another way, perhaps by...
>
> agroups.bbclass - creates groups a1, a2 and a3 for any package recipe
> that inherits it.
>
> Package recipes, A, B1, B2 and B3 would thus all have to inherit from
> agroups.bbclass.
>
> The first package installed creates the groups in rootfs. The remaining
> packages just find the groups already present.
>
> So I think that there may be a solution for my case.
>
> -----
>
> I think that this limitation possibly may be related to some useradd
> failures reported a few years back such as "ERROR: Tried running
> useradd command 10 times without scucess, giving up". There had been
> changes made by patching the shadow package and by refining the bbclass
> to use file locks. I went for about three years with just the luck of
> the draw that packages were installed in a good order until this showed
> up. I had backported some of these changes to 'daisy' before realizing
> that the groups simply hadn't been created yet.
>
>
>
> On Thu, 2019-01-31 at 10:52 +0000, Burton, Ross wrote:
> > Forgot to say, Bitbake's dependency model is loosely based on
> > Debian's
> > so the Debian Policy is a good read for semantics:
> >
> >
> https://na01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fwww.de=
bian.org%2Fdoc%2Fdebian-policy%2Fch-relationships.html%23binary-dependencie=
s-depends-recommends-suggests-enhances-pre-depends&amp;data=3D02%7C01%7Cdwa=
tkins%40sierrawireless.com%7Ccb4829af452948bfa95208d6876a34ed%7C08059a4c248=
643dd89e33a747e0dcbe8%7C1%7C0%7C636845287569900461&amp;sdata=3DWsJ0EjOAI7C%=
2BurDmAfVMCGb9SEaAWMxy%2F8Xpfks%2FjPA%3D&amp;reserved=3D0
> >
> > Debian's "Depends" is our "RDEPENDS", what you want is "Pre-Depends"
> > that we don't (yet) support.  As I said, this is just a matter of
> > picking a name and then mapping it into the control file.
> >
> > Ross
> >
> > On Thu, 31 Jan 2019 at 10:49, Burton, Ross <ross.burton@intel.com>
> > wrote:
> >
> > Presumably the problem here is that you've a maintainer script
> > (preinst or postinst) in B that needs a binary/library from A, and is
> > failing because B's postinst is running before A is unpacked?  If
> > not,
> > please clarify, otherwise the problem is that DEPENDS just talks
> > about
> > the final solution.  If you want to express that A needs to be
> > installed and configured before B is configured then you'll need to
> > use Pre-Depends, which I don't believe are actually supported in the
> > packaging classes yet.  I know that dpkg and opkg support this, and
> > presumably rpm too, so extending the packaging classes is a few
> > minutes work.
> >
> > Ross
> >
> > On Thu, 31 Jan 2019 at 06:51, Darcy Watkins <
> > dwatkins@sierrawireless.com> wrote:
> >
> > Hi,
> >
> > Can someone knowledgeable with the inner workings of the build system
> > please confirm...
> >
> > IF package B has RDEPENDS on package A
> >
> > THEN during do_rootfs task, package A will always be installed into
> > rootfs first AND the post-inst scripts of package A will always be
> > run
> > prior to those for package B.
> >
> > Also, if that can be confirmed for 'daisy' branch, that would really
> > be
> > helpful.  If not, then please mention as far back the branch that you
> > know for sure.  Thanks!
> >
> >
> >
> > --
> >
> >
> > Regards,
> >
> > Darcy
> >
> > Darcy Watkins ::  Senior Staff Engineer, Firmware
> >
> > SIERRA
> > WIRELESS
> > Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +
> > 1 604 231 1100
> > 13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
> > [P1]
> >
> > dwatkins@sierrawireless.com ::
> > https://na01.safelinks.protection.outlook.com/?url=3Dwww.sierrawireless=
.com&amp;data=3D02%7C01%7Cdwatkins%40sierrawireless.com%7Ccb4829af452948bfa=
95208d6876a34ed%7C08059a4c248643dd89e33a747e0dcbe8%7C1%7C0%7C63684528756990=
0461&amp;sdata=3Dd946J0HFRXZgDiC1QjtumL%2BX4mzpHkhlvuC1J1xEbeE%3D&amp;reser=
ved=3D0
> >
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> >
> https://na01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flists.=
yoctoproject.org%2Flistinfo%2Fyocto&amp;data=3D02%7C01%7Cdwatkins%40sierraw=
ireless.com%7Ccb4829af452948bfa95208d6876a34ed%7C08059a4c248643dd89e33a747e=
0dcbe8%7C1%7C0%7C636845287569900461&amp;sdata=3DDiZmJr86q5r0i1iVk4Yraj0CB6f=
XY0Eczkh8HpigJlA%3D&amp;reserved=3D0
> --
>
>
> Regards,
>
> Darcy
>
> Darcy Watkins ::  Senior Staff Engineer, Firmware
>
> SIERRA
> WIRELESS
> Direct  +1 604 233 7989   ::  Fax  +1 604 231 1109  ::  Main  +
> 1 604 231 1100
> 13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
> [P1]
>
> dwatkins@sierrawireless.com :: www.sierrawireless.com
>
>
>

