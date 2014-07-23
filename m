Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B834E006F1; Wed, 23 Jul 2014 15:39:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.219.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C509E006B9
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 15:38:53 -0700 (PDT)
Received: by mail-oa0-f48.google.com with SMTP id m1so2579462oag.35
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 15:38:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=wBfgTZRyLTfacryb6NgVauh6KyCmkMQ2OLA/i7czNfk=;
	b=H/HsGLIPiRRKWwGsbUeGuotjfHePifA41tkwh1DwTahBRAmR6LylD9GW0wedtFem0+
	AAfjH3aUS2F/sNy2JTre3kxsnx25UzlUlcJPn4Vt8ir6uGYz3e5cBUlAAWCS8XJdDDgC
	V7wUyDLrtss6eNk4fs7AtJVZ16ElJJ6nTNoBzhVK5DDB1i6KzmPyQ7cfMOg1GkPvRIn5
	asAo3JDvmjIsqfPxu4LtzqUIyUnUqHh/oY9IIUo+8ODL22xqfsAJKvB3mh9NKx1QCswC
	LTTt+Z0xg63cEG6ycK8x9Y7KpfqJeL/MS8wVPGL8K/qYg7RDNVXYJ+kclzqKH/MnVYQg
	Z5nQ==
X-Gm-Message-State: ALoCoQkFn9Q+XhKenGpMmG3eOr/d86FMOkGIk2a/ll34Y4rG7GLdnCx6fxLFuWFX8RF7dBCYct1a
X-Received: by 10.60.70.106 with SMTP id l10mr6808425oeu.54.1406155133017;
	Wed, 23 Jul 2014 15:38:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.171.168 with HTTP; Wed, 23 Jul 2014 15:38:32 -0700 (PDT)
In-Reply-To: <CAPHXWevvh+YjeCThqNUmAdc5yaoSnXm8e2KvTmaNpSQ0Vh0X_w@mail.gmail.com>
References: <CAPHXWevvh+YjeCThqNUmAdc5yaoSnXm8e2KvTmaNpSQ0Vh0X_w@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 24 Jul 2014 00:38:32 +0200
Message-ID: <CAP71Wjwu0T=2Cn-41FXBy15f2ka=m1iK+N1g7ROZbtpqKCSdoQ@mail.gmail.com>
To: Allan Matthew <amatthew@3drobotics.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: interfaces file on a per-image basis
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
X-List-Received-Date: Wed, 23 Jul 2014 22:39:00 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jul 24, 2014 at 12:25 AM, Allan Matthew <amatthew@3drobotics.com> wrote:
> I have two separate images, call them server and client.  The client will
> have one /network/interfaces file and the server will have another.  I can
> successfully override the init-ifupdown in my own bbappend in my layer and
> use one of my interface files, but I can't figure out how to pick between
> two interface files depending on the image I'm building.  Is there a
> variable I should be able to examine to determine which interfaces file I
> should use in my .bbappend?

nope you can't really do that. each recipe (.bb file) is built
independently. it's true for 'normal' recipe (component, libs, ..) but
also images which are .bb files too. so when you build init-ifupdown,
bitbake doesn't know if the package will be installed in image-server
or image-client.

>
> The only other option I've found is to use two separate machines, which is
> not a great option for me because the hardware and almost all of the
> packages are identical between my client and server, so I'd like to just be
> able to build two separate images instead of changing machine types as well.

well, machine conf are used to identify h/w settings. so in your case,
it would be wrong as you guessed. if the underlying h/w is the same,
you should use the same machine.

i can see a couple of options:
- create multiple init-ifupdown packages (duplicate them) and pick one
or the other in the image recipe. or maybe you can split the network
interface config from init-ifdown (e.g. remove the file from this
package), and create 2 new packages that provide this file and pick
the one you need in your image.
- you can use  ROOTFS_POSTPROCESS_COMMAND to run a custom script that
will modify the image accordingly

there are certainly other options ...

