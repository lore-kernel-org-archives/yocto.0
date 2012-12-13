Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9719BE00294
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 13:55:34 -0800 (PST)
Received: from mail-bk0-f72.google.com ([209.85.214.72])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 13 Dec 2012 13:55:33 -0800
Received: by mail-bk0-f72.google.com with SMTP id jf3so1822636bkc.11
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 13:55:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:cc:message-id:in-reply-to:references:subject:x-mailer
	:mime-version:content-type:content-transfer-encoding
	:content-disposition:x-gm-message-state;
	bh=9LPI8LQpjtbeZigFYeeDb31oP6xnHvWLr+7uAZDIEek=;
	b=GefyJmUoc4NARuVsB3fQoV55elNry5SWB6jJ5F4tHTiJionEtZJR0ZUyvrQ0y6imeN
	wd/8FpppFlXax4QUKK4mB3TSPD3mwQnYxL4E1gYZP+2qACpkbLewk7VfSTq/9aIILFau
	zPK1NsO62yPKoiubafWcr1mxa2TXtyWLuFuRWS/9m3cRizUxWhTgOscCjxleSyB5Em1i
	tDE/532/emYkZ3iIPylvQLPbmauCQ5LYuL61reLmBqgyYlWkfwAgvcJkZMh2rxX7iAQu
	Lf5A7Wz0CkvAKMNRd4bBQ0sfcfT/I6//3Au4SWEXiDSyH2Ya6szpgTvZaV1Lo90tk1aD
	766Q==
Received: by 10.194.88.65 with SMTP id be1mr511763wjb.25.1355435732189;
	Thu, 13 Dec 2012 13:55:32 -0800 (PST)
Received: by 10.194.88.65 with SMTP id be1mr511755wjb.25.1355435732000;
	Thu, 13 Dec 2012 13:55:32 -0800 (PST)
Received: from [192.168.1.13] (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id t17sm4687732wiv.6.2012.12.13.13.55.29
	(version=SSLv3 cipher=OTHER); Thu, 13 Dec 2012 13:55:31 -0800 (PST)
Date: Thu, 13 Dec 2012 21:55:27 +0000
From: Ross Burton <ross.burton@intel.com>
To: Chris Tapp <opensource@keylevel.com>
Message-ID: <03D0A6FB83364ABF99FCB0481EA3EE0F@intel.com>
In-Reply-To: <6D85911C-A82F-4029-A41E-D289D8050C79@keylevel.com>
References: <6D85911C-A82F-4029-A41E-D289D8050C79@keylevel.com>
X-Mailer: sparrow 1.6.4 (build 1178)
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQnT7tmSthXB+eymZzA1++XMxxN+gRX5pdjnovrx8XjJX+JvllOjXN15V1tOdGOOCFev2SLYioFbfeTH6aeoJcIUNVn8Z3K6732WTlTQZlFx9WDdndMVMukbyhQLeu4nYsGYE5Yzl1EwOLQQwgNz8bOBQO2jag==
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: libva failing for mp4 using gstreamer under 'danny' with cedartrail BSP
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
X-List-Received-Date: Thu, 13 Dec 2012 21:55:34 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Thursday, 13 December 2012 at 21:10, Chris Tapp wrote:
> I've got an X application that uses gstreamer to capture frames from video files and display them using GLES textures.
> 
> This works fine for webm and flv files, but if I try and use mp4 (or avi) then I get no frames. I'm not seeing any gstreamer errors, but the console shows:
> 
> libva: VA_API version 0.32.1
> libva: va_getDriverName() returns 0
> libva: Trying to open /usr/lib/dri/pvr_drv_video.so
> libva: va_openDriver() returns 0
> 
> 1) I'm building under 'danny' for cedartrail with PVR.
> 2) The pvr_drv_video.so file mentioned above exists.
> 3) The same gstreamer pipeline works fine on my host build system.
> 4) I'm fairly sure the required gstreamer plugins are present.

To verify (4) which is obviously fairly important, can you confirm that a simple playbin will play the videos correctly on the CedarTrail?

It's possible that you've got some horrible GLES/VA interaction, specifically the download from VA-land to however you're getting the video into the textures.  Speaking of which, how are you getting from frames to textures?

Ross



