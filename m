Return-Path: <paul.betafive@gmail.com>
Received: from mail-vc0-f175.google.com (mail-vc0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95694E0144A
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 07:45:14 -0700 (PDT)
Received: by mail-vc0-f175.google.com with SMTP id lf11so1716100vcb.20
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 07:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=JKRg1yvZ2iXCW6SgykBqgaxmIQMOYjtGwJI0Mti7mAU=;
	b=FAIV0QQFgM3D8jvsXxOFEufctAYhXqfH5IYW2hfOPJRmh34j3BZvoVX+Yde3f6WN8K
	Yk4+zOURJLa/2AQOk8afY7nU+lK/A+6UUnvzH376Wj/bLaNloeAKQCl8XGB7gilG7v35
	AXTOT63XB2v+zcbZAL86/DkFwr335XB+bRzrFQiJ1psEicNbMXm/l4LguXEyIJT1Mxo8
	fJYqfKpF4IAwrKjuw/0+7+MSIChOosrVMQZXsbgd0y7EHnVxuAwStoqyyULfVq1DMYff
	VnXaa2lfPMezUPh/PmGGOjtbppSLtcuvrV9wguZxWVpEHeZXnSBjerdZohXByicMGlWU
	hFOQ==
MIME-Version: 1.0
X-Received: by 10.52.231.231 with SMTP id tj7mr10042415vdc.111.1366382713975; 
	Fri, 19 Apr 2013 07:45:13 -0700 (PDT)
Sender: paul.betafive@gmail.com
Received: by 10.220.224.135 with HTTP; Fri, 19 Apr 2013 07:45:13 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1304191038530.5636@oneiric>
References: <alpine.DEB.2.02.1304190932010.4968@oneiric>
	<20130419135843.GH2489@jama>
	<alpine.DEB.2.02.1304191016030.5451@oneiric>
	<20130419142509.GJ2489@jama>
	<alpine.DEB.2.02.1304191038530.5636@oneiric>
Date: Fri, 19 Apr 2013 15:45:13 +0100
X-Google-Sender-Auth: RVImkyarW5QvRtmoKcH3Ulq8mv8
Message-ID: <CANyK_8ehX8Bsgd35pvx54EGeCG6=WLBoDFV0h=5Suz3uXPyREw@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] Fix FILESEXTRAPATHS, dir is "netbase-5.0"
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
X-List-Received-Date: Fri, 19 Apr 2013 14:45:14 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 19 April 2013 15:39, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
>   i think i'll just leave this to the rpi folks. :-)
>

I'm building for raspberrypi so I'll add this to my queue of things to look at.

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

