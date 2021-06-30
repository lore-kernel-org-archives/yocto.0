Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web12.4306.1625051273114077388
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Jun 2021 04:07:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=UWSqsbjy;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f54.google.com with SMTP id u6so3119608wrs.5
        for <yocto@lists.yoctoproject.org>; Wed, 30 Jun 2021 04:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=/Q5jvqNGQCE1Zy9uEKGZSIztrKF1VF5m9bWywB/aIgU=;
        b=UWSqsbjyLuUw+B5BpTl1g7eNJh35u5iWDJhdQWUdSOSmAsi89MYz2GDUWKOXpCGcey
         gMNsmjyhFQdHdpQ9amjyphGBJ3H/bVTDQmG8rC2FrFWosg3oc3R3kLrrL1hx0eiWh+7Y
         pY2e2ahUSXwOOwVQt/zgIVheADu/K7IpWx2Gc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=/Q5jvqNGQCE1Zy9uEKGZSIztrKF1VF5m9bWywB/aIgU=;
        b=T5CkO1jUAye8uhR4Oji6PrvxSxOIarmS3QiL92EmNmYJAyuW7rLTzHveZp+ORDIIgf
         VpeuwM/24x9fWZma/RqoY7pThgAfuERIH2zb9N2nIiRcRkXihmCVpXJShldCieOgNi5A
         Z0X37qos+SOu9xfDPFAtuBtXMe7krx7KZj3yk3gdNcmmvCPoW1i1JCC8FliTqpkasf/8
         cBKhf51mNDTAdnxpNdVyjQQ2dFzzq1ZE7+NxHjHQxTBg7kJvfFaLww9rbnQ/itl51t+O
         40W6FPxJq5P+RAPcF6/WDOTtrRGmrHHB4T0ODX/Kdb8iV+WUkXYI++Vu3oJYXqj4f667
         O3Wg==
X-Gm-Message-State: AOAM532mJDOwV9HZ62EQ3IG2NcfWj6zuGeqMWHTb0u8jutidOpWz0kGl
	QT6Q54d9Xrk+YVHBFY7Qy6e9OQ==
X-Google-Smtp-Source: ABdhPJw3VqKUJHH82zfsWjIjO45kRpdsZT1BzDIcJUT48c/BrSts6KaWqMGL7al/jQpH3UXkDu7jyg==
X-Received: by 2002:adf:b605:: with SMTP id f5mr38784792wre.419.1625051271506;
        Wed, 30 Jun 2021 04:07:51 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from ?IPv6:2001:8b0:aba:5f3c:fa9c:ff43:b5c6:d04f? ([2001:8b0:aba:5f3c:fa9c:ff43:b5c6:d04f])
        by smtp.gmail.com with ESMTPSA id w9sm2779020wmc.19.2021.06.30.04.07.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jun 2021 04:07:51 -0700 (PDT)
Message-ID: <3116d006037f56f5d2d7f30d1f9247172131a01e.camel@linuxfoundation.org>
Subject: Re: [Yocto] Launching script at the very end of the image process
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: "Cardaillac, Yann" <Yann.Cardaillac@vaillant-group.com>, 
	"yocto@lists.yoctoproject.org"
	 <yocto@lists.yoctoproject.org>
Date: Wed, 30 Jun 2021 12:07:49 +0100
In-Reply-To: <AM9PR09MB4705D0D992522855488FB38CCA019@AM9PR09MB4705.eurprd09.prod.outlook.com>
References: 
	<AM9PR09MB4705620C5A070E882117D91DCA019@AM9PR09MB4705.eurprd09.prod.outlook.com>
	 <21ec4938ff2819f413d5467e5100139853066e51.camel@linuxfoundation.org>
	 <AM9PR09MB4705D0D992522855488FB38CCA019@AM9PR09MB4705.eurprd09.prod.outlook.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2021-06-30 at 10:41 +0000, Cardaillac, Yann wrote:
> Hi Richard,
> 
> Many thanks for the fast answer.
> 
> > > I’m switching from buildroot to yocto and trying to figure out how to 
> > > do the equivalent of a POST_BUILD_SCRIPT.
> > > 
> > > Indeed I want to format the images built in a specific format for latter use and CI needs.
> > 
> > In OE, the equivalent for that is probably the image types code.
> > See http://git.yoctoproject.org/cgit.cgi/poky/tree/meta/classes/image_types.bbclass
> > 
> > You can define your own custom image types to extend the system. Some of our defaults are quite simple (tar), some are quite complex (wic has its own bbclass).
> 
> I said image, but it was probably not the best word, I just want to make a tarball 
> of the generated image + adding some file in it.
> 
> Here's the complete file with the job :
> 
> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> 
> SRC_URI += "file://nallino-custom-params.txt"
> SRC_URI += "file://configuration_instruction_to_do_on_GUF.txt"
> 
> do_release_ycn() {
> 
>     rm -rf ${DEPLOY_DIR_IMAGE}/ycn_release
>     mkdir -p ${DEPLOY_DIR_IMAGE}/ycn_release/overlays
>     cp ${DEPLOY_DIR_IMAGE}/fng-install.sh ${DEPLOY_DIR_IMAGE}/ycn_release
>     cp ${DEPLOY_DIR_IMAGE}/ycn-image-imx6ullguf.tar.gz ${DEPLOY_DIR_IMAGE}/ycn_release/guf-image-imx6ullguf.tar.gz
>     cp ${DEPLOY_DIR_IMAGE}/*.dtbo ${DEPLOY_DIR_IMAGE}/ycn_release/overlays
>     cp ${WORKDIR}/nallino-custom-params.txt ${DEPLOY_DIR_IMAGE}/ycn_release/
>     cp ${WORKDIR}/configuration_instruction_to_do_on_GUF.txt ${DEPLOY_DIR_IMAGE}/ycn_release/
>     tar -czf ${DEPLOY_DIR_IMAGE}/ycn_release.tar.gz ${DEPLOY_DIR_IMAGE}/ycn_release
> 
> }
> addtask release_ycn after do_image_complete after do_deploy_kernelmodules
> 

You're used to poking around things in buildroot, OE doesn't quite like you
doing that so much :)

You shouldn't really be poking around DEPLOY_DIR without letting the build
system know what you're doing. Intermediate files like the intermediate directory
you're using to create the tarball above should really be in WORKDIR.
That is itself won't break, it just not good practise. Ideally you'd write
a separate recipe to do this final piece with a do_deploy task, using the
deploy bbclass which would them take care of removing obsolete versions 
when you rebuild and so on.

> > > I’ve also tried to use IMAGE_POSTPROCESS_COMMAND without much success 
> > > since it wasn’t running at the proper moment.
> 
> > When is "the right moment"? :)
> 
> The right moment, is at the very end of bitbake, indeed I want the job 
> to be the overall last job!

You're not really helping us help you find a solution since you've not described
what you'd expect to be happening that isn't happening. How is what you have
failing?

I'm going to take a leap and guess that some of the files you expect there
aren't? Maybe the dtbo files from some other do_deploy tasks? If that is true
you're missing dependencies for your task. You can do things like:

do_release_ycn[depends] += "virtual/kernel:do_deploy"

I'd caution against "last" as it is a fine concept until two things want to 
be "last". It is usually better to describe the dependencies properly.

Cheers,

Richard





