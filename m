Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03E35E00BBF; Tue, 16 Oct 2018 15:48:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
	[209.85.167.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C9A8E0095C
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 15:48:10 -0700 (PDT)
Received: by mail-oi1-f177.google.com with SMTP id k64-v6so19489294oia.13
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2018 15:48:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=dLw5UWOc76UOjBa11YVdfjzakCLUTK1YgE1DEGI7niY=;
	b=beoMmjsgfhwJDQIro2C1EhbTlmpV0tlQWOIFnVeUmrQyYKVvqDeUEEYItUDur3iEM1
	oyT1rGmiGrZV3eiNcP/drvriLj4M/CzKOX3HlOYJwZz+E2A35VF5f/5GpxyUzNR8PxAg
	oC09k1jhKVMKYyzcnWwpYahEWs+itSjSNiQwl9/YBanOCwfxzExGSNQQynfZz0qixOBY
	7xuh04JA3cpoy+GrDInODJ3eV5jgM3VVfBNp39ypsmbVlO219DBYGfNhr1X7XzeWKiDd
	jkdas304va9H4o/oGC/942ljR44Bh16kAmtZZPXl8W23d1TzT18df1qkxla+N6t57zlB
	CWnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=dLw5UWOc76UOjBa11YVdfjzakCLUTK1YgE1DEGI7niY=;
	b=V3ak+4zdIdVRg0iYNFkzyq4Ap1nWeI7D+8QbXYpdgW/728cjRkFRK3LuFnFbEH+wwy
	EKaznxH3oWkqQ+44583dniX8fKPK6Ay9sdda6Ra7fMPYQg5DhabRlH4Hssi+V+ffPRhH
	oz9xGmz2n38ZdwIlFb1uLXYT26KQwt0ZHG9cop15ptlnSDvqOEAHPFpSJnoOlyD1zEu6
	4lYGBg6g2ZXcxT8IBlIwTRaM2n+7VaqijvJ3zvGmU2eX6M4WlSjmc2nFaEG7Qhn+AaFu
	CyNNWQ/rP9m9ggad3kdxZTjXe+iXkD9BNxN5OoHR0JaCPupthQ5AMg/iSIoCnVxJO0Gs
	VbHg==
X-Gm-Message-State: ABuFfogHl95Ecg9n/MUwU+oN23aDJekRUKz3ozEqASvqMFLDLFD9iOf6
	rZLHVDK8yrtPStWUx2kbvLuk8jdEkPAkSPrgJeA/AQ==
X-Google-Smtp-Source: ACcGV619qW5gppb8GAdR8SbJeuM7g1KSIkJKC9idCrr600pRDZpctAvWfFptpVB/ckE4M7rczosqunkyekcuif5mLhw=
X-Received: by 2002:aca:5485:: with SMTP id
	i127-v6mr8637935oib.293.1539730089820; 
	Tue, 16 Oct 2018 15:48:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAFjmEbDYvLenPW1D4=x+HxOmC4JUiJ4495xCbYzp6BZkxbAzwA@mail.gmail.com>
	<CAJTo0LZPS49=UK5E_1AJZa7tW7frxv8E4NRHMXRca3iW-e=asQ@mail.gmail.com>
	<CAFjmEbC2Vpe7wa+_ys0MmKFRkoWk2wgP1PE8rhTmJx6ev5EenA@mail.gmail.com>
	<CAJTo0LY3H1rckDOU-S05XzzEFRBeRrOci2D49Bu-YTZe2+4+sQ@mail.gmail.com>
	<CAFjmEbBJUJaGHc-zf8YTSRPsA=Nigd0YLDTwVTe=vJYXar60cg@mail.gmail.com>
In-Reply-To: <CAFjmEbBJUJaGHc-zf8YTSRPsA=Nigd0YLDTwVTe=vJYXar60cg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 16 Oct 2018 23:47:57 +0100
Message-ID: <CAJTo0LZxz-1E68vDX24v_LirA1+mCjA+irDeBEdVcQ8+oQb+fw@mail.gmail.com>
To: Marwen BRIKCHA <marwen.brikcha@gmail.com>,
	Yocto-mailing-list <yocto@yoctoproject.org>
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
X-List-Received-Date: Tue, 16 Oct 2018 22:48:11 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, 16 Oct 2018 at 14:06, Marwen BRIKCHA <marwen.brikcha@gmail.com> wrote:
>
> because, when i run :
> :
> $> bitbake -v opencv
> I can see that python3 is fetched, configure, ... etc
> So, i think it the responsible for this.

Please remember to CC the list.

Python being built doesn't lead to Python being installed in the
image.  Have a look at the image manifest (in deploy/images) or look
at what is actually installed inside the image.

Ross

