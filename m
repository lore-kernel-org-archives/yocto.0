Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75E43E011F3
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 02:24:40 -0700 (PDT)
Received: from mail-ie0-f176.google.com ([209.85.223.176])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 10 Oct 2012 02:24:40 -0700
Received: by mail-ie0-f176.google.com with SMTP id k11so519138iea.35
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 02:24:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=ZLIpb5hvm3T1eZFmJoDvx2n+r4NH5gDC/lFtvLyjXN8=;
	b=JvBDpV/F/bOmLkjs+yTdL+/7j8NFPdv5T+r/ZpFgjUdsin+cq5vZfTJ9fhrWVCFKeV
	pAyRmtWz9xg8eS45PxBMLSpsV9ojF0j21YD54NwCn6MCopClhL5I5xO0v6oJOoWAyitG
	ir4iSNJ9xROOyhh+q/wRAyZYWZeUP7bJs9uQZuyhMy+5XE8zqS/ZfRZ2LDk+Pk0k0dSM
	yjcVqCvS1XCmhGf0udI00wIo7cGG8QDVlIhNPpJJMIBb5M8Lfkb4q3vzqyTcECKr8Zdl
	/yKQkEodex6vfqgKZTuwJ2IX/i1E8kWpIoMIipG27Zrvp/u5sLFbXvOpNxFVoQjlrvlf
	u95w==
Received: by 10.50.180.169 with SMTP id dp9mr4612091igc.8.1349861079054; Wed,
	10 Oct 2012 02:24:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.141.70 with HTTP; Wed, 10 Oct 2012 02:24:18 -0700 (PDT)
In-Reply-To: <e349d9f28dd0b1064fffd14b337770ee6574e7cd.1349820369.git.nitin.a.kamble@intel.com>
References: <cover.1349820369.git.nitin.a.kamble@intel.com>
	<e349d9f28dd0b1064fffd14b337770ee6574e7cd.1349820369.git.nitin.a.kamble@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 10 Oct 2012 10:24:18 +0100
Message-ID: <CAJTo0LYmbD=HJEECJC7usk7A7tLwDxnrFm-pxUoRo2=qyKGyvQ@mail.gmail.com>
To: nitin.a.kamble@intel.com
X-Gm-Message-State: ALoCoQmft6G/Y9bGSmc9cfyFVHSooh3vVFWY0dsmvn2pmuql6o2mi5pxXpT3S65ArlI3JIJ1IJ5A
Cc: yocto@yoctoproject.org, darren.hart@intel.com
Subject: Re: [PATCH 2/5] crownbay.conf: specify the 8.0.4 version as preferred version of mesa-dri
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 10 Oct 2012 09:24:40 -0000
Content-Type: text/plain; charset=UTF-8

Hi Nitin,

From what I understand, EMGD's Mesa driver will only work correctly
with a Mesa that matches exactly the configuration that was used to
build EMGD, as the driver interface isn't stable.  Have you tested the
GL support with more than glxinfo?

Ross

