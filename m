Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3071E015B8
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 21:42:59 -0700 (PDT)
Received: by mail-qa0-f41.google.com with SMTP id hu16so950318qab.14
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 21:42:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=nyeGaRIEOLrA2eu7hABIIi1wYRcsxdIiMFRhUQsbB5I=;
	b=b/mVtvnkkIYCzcqLbUaxczjqup9mAppFe7+AdB/UvodhHuftoCAeMgqSytT5BAQnG9
	Wr0jabWqH1mj0qGSLM+7fgJYA5dfGMhH4Tbe7KDk9+8pXrKyCbOh4hGoxNF6BwH8ajJ2
	xGjXHpoQzcGNLNQy/sV8fvCpacZWw07OSlTDfTPNDmzCy1hY+3y9vnWcQ4op0eVwO2fM
	mBPdSFU5UMeLk0Q9ofglAK4cx13kR5OPDZu9IKuDPn7Iotc/uzD7BqN4uxTjuNxfNGwI
	vphnr4Rbm1go4m83JsDgAepiHVB/ShgJEY4qqGhQueq1pRTMnU1qKozvqTyuFF/qayyJ
	oN5w==
X-Gm-Message-State: ALoCoQlZwBDZpBUAGH5lKmA36EwsBQ87zSteuGraOLhR7nhVavJkNV9k8+H/CWUqiCwNIpslQRb8
MIME-Version: 1.0
X-Received: by 10.49.116.4 with SMTP id js4mr1604959qeb.14.1377751378246; Wed,
	28 Aug 2013 21:42:58 -0700 (PDT)
Received: by 10.49.104.109 with HTTP; Wed, 28 Aug 2013 21:42:58 -0700 (PDT)
In-Reply-To: <CAPhnLPDx0iC4Gp0dn4b5deQ7przwNOLtGZgVAMydVnQ_=8vx5g@mail.gmail.com>
References: <CAPhnLPDx0iC4Gp0dn4b5deQ7przwNOLtGZgVAMydVnQ_=8vx5g@mail.gmail.com>
Date: Wed, 28 Aug 2013 21:42:58 -0700
Message-ID: <CAPhnLPDoyyB-W2=Qr_4Ek61itAYZ2dAt60vAaSLzzPAVKvH+Fg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Otavio Salvador <otavio@ossystems.com.br>, Zhao Yi <yi.zhao@windriver.com>
Subject: Re: Status of 1.5_M4 release candidate.
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
X-List-Received-Date: Thu, 29 Aug 2013 04:43:01 -0000
Content-Type: text/plain; charset=ISO-8859-1

An update on where we are at:

rc1 is still churning. There was one autobuilder issue with regards to
genericx86 in nightly-x86-lsb. I've built this out by hand and
populated the release with it as well as corrected the ab issue. We're
seeing a lot of sanity issues, but so far no build failures (other
than the above known issue).

-b

On Wed, Aug 28, 2013 at 5:41 PM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> All,
>
> Earlier today we attempted a spin of rc1. This attempt ended up having
> multiple issues. Due to that, we decided to end the build, tag and
> spin an rc2.
>
> So far, things are looking ok. I did drop the number of buildslaves on
> the autobuilder down from 3 to 2, so things might take a bit longer.
> The build should be available in a few hours at:
>
> http://autobuilder.yoctoproject.org/pub/releases/1.5_M4.rc2
>
> meta-fsl-arm f2805add77f9e9d5f7a114ee99a632172d8f3ff6
> meta-fsl-ppc 58a57096e4b7e2ceca3c33d3e7100c5434966cd9
> meta-intel 164067980e18e8ba60b317677ced2d75c3725dbe
> meta-minnow 7719e114bd0c2118c3d4c2a1a7c06e966103ab09
> meta-qt3 b73552fb998fd30a01dbee5a172e432a16078222
> poky 5745e45b18e5099e94b4d5a73bc97dc6d4cdc91f
>
> -b
>
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

