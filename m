Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6727E00BC6; Wed, 17 Oct 2018 02:53:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
	[209.85.167.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C8E2E00BBF
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2018 02:53:14 -0700 (PDT)
Received: by mail-oi1-f179.google.com with SMTP id e17-v6so20553020oib.4
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2018 02:53:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=gQ3PUdTOJgpwpEneqggXAxcIe+EoWiZbAi3x6xfuWmg=;
	b=0pJkXSCt+94g4R34lwA79ZcgYGrW3KG6yhrsVdaoGs+KbBU3ISav5EtxjSU8wKwwsi
	9K5Fj//4LbTUjJ5wy+//BlwiSDOhQ6+DihbgF5ioAiiV6yfWcCdt6NlRal2uXzRcTiVA
	xNSEHxuxXkGoDfj5rM6+xsXgWXzPlC64bOFyls/vuiBVNX0UEl+10pLYAgNmduKT3zSG
	abhCwt9jDlt8virKPZs4SS87GFvEnVakbXHmfnybc6f1vmxOwvd8Q2BdtZ+EAEW1Mhvn
	Aqt7dbczWcJAmp1mBr4FofPKfdt0/t+KlwOLQGYB9e+LrvBcmNsUE2hXRUp357PowHdW
	/wQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=gQ3PUdTOJgpwpEneqggXAxcIe+EoWiZbAi3x6xfuWmg=;
	b=qZNi+blocv9d98mxHH0VkFTvW2+teRfR4FDmcIccpB2vBb4Qz1FP72wtQVSQ+wny8i
	OjXMl2ySjbT3e+WhX67hobOm1QfGFE3KBHeHqE6kvrD7BTeJB8TgKNd084W/2cxnz0vf
	mSKY+8h9qcatnvfzN7iEFc9eJcwT2FyYX7wA4rzUTmHn/w6ulVvQhCE3jiqd3dxFTId6
	G25bQlY8DBn2nJ17X6X9P5pUJJSP2veQhanqr9ZVSqyIrr5gMwT2dCS1xaL6CykFaCuq
	AR/Z7yo0O1SAqnm1HtaKnDzcWA+utcs/SEfUJk6NRLYG9BY9kDZIuxyZ/alUFOJ+ExE1
	Dqjw==
X-Gm-Message-State: ABuFfog2GGu5ejLQE0ljDJ07mY+eTfR8+ffVXfXVyooOwiEN54Lo1ATy
	uvt8WMuzzFJ29JzN1x/+XrGm1yNQdVVcKZ6tsot/EQ==
X-Google-Smtp-Source: ACcGV63lbuaLp+vkpfpAFOIqfAN03v/KThrhYnFkl0SG/G1YekyBuvwGGG8Vd6r71NMgz90qZF3YpMmKdN096nXWJYo=
X-Received: by 2002:aca:ed57:: with SMTP id
	l84-v6mr13121942oih.188.1539769993748; 
	Wed, 17 Oct 2018 02:53:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAFjmEbDYvLenPW1D4=x+HxOmC4JUiJ4495xCbYzp6BZkxbAzwA@mail.gmail.com>
	<CAJTo0LZPS49=UK5E_1AJZa7tW7frxv8E4NRHMXRca3iW-e=asQ@mail.gmail.com>
	<CAFjmEbC2Vpe7wa+_ys0MmKFRkoWk2wgP1PE8rhTmJx6ev5EenA@mail.gmail.com>
	<CAJTo0LY3H1rckDOU-S05XzzEFRBeRrOci2D49Bu-YTZe2+4+sQ@mail.gmail.com>
	<CAFjmEbBJUJaGHc-zf8YTSRPsA=Nigd0YLDTwVTe=vJYXar60cg@mail.gmail.com>
	<CAJTo0LZxz-1E68vDX24v_LirA1+mCjA+irDeBEdVcQ8+oQb+fw@mail.gmail.com>
	<CAFjmEbD7DHsCmGNLQSoQQPt_P7eU8V65yOAp+N-XRh3EduLNcw@mail.gmail.com>
	<CAJTo0LaEqCExfFF-2pK5jFyHsR23+LdjkKXD1Osrtniz8KMfjQ@mail.gmail.com>
In-Reply-To: <CAJTo0LaEqCExfFF-2pK5jFyHsR23+LdjkKXD1Osrtniz8KMfjQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 17 Oct 2018 10:53:02 +0100
Message-ID: <CAJTo0LaWDxLd8z=w2sQV=sL+ZDy28G14yFiC6OOCHXeXSS4cHg@mail.gmail.com>
To: Marwen BRIKCHA <marwen.brikcha@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Yocto Poky 2.4.1 - Remove python3 from build
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
X-List-Received-Date: Wed, 17 Oct 2018 09:53:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Alternatively if you're using RPMs, you can set PACKAGE_EXCLUDE =3D
"python3-core":

Error:
 Problem 1: conflicting requests
  - nothing provides python3-core needed by dnf-2.7.5-r0.corei7_64
 Problem 2: conflicting requests
  - nothing provides python3-core needed by rpm-1:4.14.2-r0.corei7_64

In this case, Python 3 is in my image because I have
package-management on, which needs Python 3.

Ross
On Wed, 17 Oct 2018 at 10:43, Burton, Ross <ross.burton@intel.com> wrote:
>
> Easiest way to determine what is pulling it in is to try removing the
> package on the target using the package manager.  That will tell you
> what dependencies are keeping it in.
>
> Ross
> On Wed, 17 Oct 2018 at 08:32, Marwen BRIKCHA <marwen.brikcha@gmail.com> w=
rote:
> >
> > Yes. I've seen compilation log and it does do_install in final image.
> > It's installed in /usr/lib64/python3.5 on RootFS.
> >
> > Le mer. 17 oct. 2018, =C3=A0 00 h 48, Burton, Ross <ross.burton@intel.c=
om> a =C3=A9crit :
> >>
> >> On Tue, 16 Oct 2018 at 14:06, Marwen BRIKCHA <marwen.brikcha@gmail.com=
> wrote:
> >> >
> >> > because, when i run :
> >> > :
> >> > $> bitbake -v opencv
> >> > I can see that python3 is fetched, configure, ... etc
> >> > So, i think it the responsible for this.
> >>
> >> Please remember to CC the list.
> >>
> >> Python being built doesn't lead to Python being installed in the
> >> image.  Have a look at the image manifest (in deploy/images) or look
> >> at what is actually installed inside the image.
> >>
> >> Ross

