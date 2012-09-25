Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA51CE00346
	for <yocto@yoctoproject.org>; Tue, 25 Sep 2012 15:12:18 -0700 (PDT)
Received: from mail-wi0-f182.google.com ([209.85.212.182])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 25 Sep 2012 15:12:03 -0700
Received: by wibhm2 with SMTP id hm2so1904573wib.11
	for <yocto@yoctoproject.org>; Tue, 25 Sep 2012 15:12:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:cc:message-id:in-reply-to:references:subject:x-mailer
	:mime-version:content-type:content-transfer-encoding
	:content-disposition:x-gm-message-state;
	bh=Y0Twi4F4Z3lSaJzowXTOtGaFnQcvQdliffExVIxan08=;
	b=g/ir8v84qzLdRE5pen8OpFoGlJOHlHfByiZd9va5b/4zm1kVzpkUT/sILo1c0QQG6F
	BYUwhTZIr51aoklT9f/q/V8+X3SEuet2A1cWYyVsYVC+appv0pfTNBNF15YyEbR9FTwu
	OdQ5LCVrvd2iQIW3Y4X6vPpoSlfYeeTwmRm1c4ANJGgat7mEi3SbIOTMqfkKy+hWOrhy
	kaO3C8UvIgN1hBJuB9ig/45oA7LfCKK1cuYt6YO1cZJ7M80D00ta34fDQ+KiaMF8g+dR
	wX2FcxCUSB84nOH/nyLZ3cjNLiXYhM+wtUPDTwpEteSLg7NffKE8vTwOUCe2pZkeGfC6
	OXFw==
Received: by 10.216.210.11 with SMTP id t11mr4925586weo.92.1348611136108;
	Tue, 25 Sep 2012 15:12:16 -0700 (PDT)
Received: from [192.168.1.7] (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id l5sm3005857wix.5.2012.09.25.15.12.14
	(version=SSLv3 cipher=OTHER); Tue, 25 Sep 2012 15:12:15 -0700 (PDT)
Date: Tue, 25 Sep 2012 23:12:12 +0100
From: Ross Burton <ross.burton@intel.com>
To: Chris Tapp <opensource@keylevel.com>
Message-ID: <34F347852CDC4B699F8565643D33E53B@intel.com>
In-Reply-To: <CEE73346-DC1B-4CB2-9D51-A2D47705ADFC@keylevel.com>
References: <CEE73346-DC1B-4CB2-9D51-A2D47705ADFC@keylevel.com>
X-Mailer: sparrow 1.6.3 (build 1172)
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQkY8GCZCKnQUURRecgoiTVQNzkvAaHZlno4wIcKH/N9QiRXFLFAkXfCu9G5pINCWgIEgANO
Cc: "=?utf-8?Q?yocto=40yoctoproject.org_Project?=" <yocto@yoctoproject.org>
Subject: Re: How can I build gstreamer and its plugins without x11?
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
X-List-Received-Date: Tue, 25 Sep 2012 22:12:18 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Tuesday, 25 September 2012 at 21:51, Chris Tapp wrote:
> I'm trying to build gstreamer to run on a system that does not have x11 (for audio and to stream video). It seems as if gst-plugins-good-id3demux needs x11:
> ...
> ERROR: Required build target 'task-sjs' has no buildable providers.
> Missing or unbuildable dependency chain was: ['task-sjs', 'gst-plugins-good-id3demux', 'pulseaudio', 'consolekit', 'virtual/libx11']

I'm not entirely sure why a demuxer is depending on pulseaudio, but you'll hit this somewhere else.

pulseaudio's build dependency on consolekit is entirely spurious and I've fixed this in master.  pulseaudio-server then has a runtime dependency on consolekit which you could argue should be a recommends - in Guacamayo for now we're just removing that dependency as we're not using consolekit.

Ross



