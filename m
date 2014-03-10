Return-Path: <marc.ferland@gmail.com>
Received: from mail-wg0-f52.google.com (mail-wg0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A663E00A89
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 08:50:26 -0700 (PDT)
Received: by mail-wg0-f52.google.com with SMTP id k14so8837871wgh.11
	for <yocto@yoctoproject.org>; Mon, 10 Mar 2014 08:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:date:from:to:cc:subject:message-id:reply-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=AYJ2NG+RLS7ZU2unAHiTUCDr3CWorr01gzJTqB2xghs=;
	b=qwZWlp1Ivmn78sJYyJbd3Zq02+p1vvkLrDXtGq1m9KcP3YSKiCNSiOniT5BpjH/1wG
	jK/D98/b4QkQhhqU0mwH0SVIFxeRS7e4yBiDKt3GsM7AXUevZLxnBtUuxMIeiOErFMcz
	oKQQbjmpu+J3Y9xDtaQn1EkJ8SodEra56P34xoYkIWdF/Jzn59cdsEnvbDVdnP0FlbDl
	QPYA71f1PCroYIVw/IsCWablhRuk1J+bDgjZDMHSsQnOPrQuYvybWcVpzrzAJQI8DYJu
	YcqukGjGAiWpdN2cwDjB9rSAwa6K+8se6U7bzdQsm7SrYjCH3B5YoTHwBoqvfjUU0+Jk
	UrNA==
X-Received: by 10.194.92.147 with SMTP id cm19mr8859123wjb.37.1394466625107;
	Mon, 10 Mar 2014 08:50:25 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPSA id uq2sm51961839wjc.5.2014.03.10.08.50.21
	for <multiple recipients>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Mon, 10 Mar 2014 08:50:24 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Mon, 10 Mar 2014 11:52:25 -0400
Date: Mon, 10 Mar 2014 11:52:25 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: Josef Holzmayr <jholzmayr@the-exact-steps.net>
Message-ID: <20140310155225.GZ15075@marc-desktop>
References: <1941676061.151463.1394449148860.open-xchange@email.1und1.de>
MIME-Version: 1.0
In-Reply-To: <1941676061.151463.1394449148860.open-xchange@email.1und1.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [RFC] Blubber, a tool to set up yocto/poky projects easily
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ferlandm@sonatest.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 10 Mar 2014 15:50:27 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Mar 10, 2014 at 11:59:08AM +0100, Josef Holzmayr wrote:
> Howdy!
> 
> After looking more and more into yocto, one of the main issues for me is the
> process to set up a project properly, including all layers and conf options.
> Especially those which would be needed to set exactly the same way again and
> again every time somebody needs to reproduce a build.
> 
> So I've come up with an idea: a small tool that can handle these things for me.
> And here it is for your enjoyment/use/abuse/comments:
> 
You should have a look at the 'repo' tool from the android
community. I think it already does part of what you're trying to do
here.

The freescale yocto bsp already uses repo:
https://github.com/Freescale/fsl-community-bsp-platform

Cheers!

Marc

