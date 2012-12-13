Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68363E00294
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 14:38:12 -0800 (PST)
Received: from mail-ee0-f72.google.com ([74.125.83.72])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 13 Dec 2012 14:38:11 -0800
Received: by mail-ee0-f72.google.com with SMTP id c13so2110192eek.11
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 14:38:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:cc:message-id:in-reply-to:references:subject:x-mailer
	:mime-version:content-type:content-transfer-encoding
	:content-disposition:x-gm-message-state;
	bh=wZOnbhL6z1jv/e8B3mOb9aAHqOtkt1wF+GcoQJZlNEA=;
	b=ZnhilWArezgO9+74GjCLqsRyUAF3wOxZE3+TfXrYEHwIqg7ZdRemr5fFkNDsHITxtz
	qmB3iGw946M1HrwVix2PrurTGcAzke3N2ShpRK3CywRtiI47WLDT4fpyjeW7iuAUxFV+
	iX2BQbFUZfpEGvMkiRsZeP+LNAIvQJ50/a+DaYp58MnqitwJgiGpCOaqh02vtfSQohjF
	8Qki4IlCZ+YmGHtCU+FxjT7kJJYzbywXgp0D9FIH72FaCtfmPqI6FgIAKCBOUoD31dgR
	i6n20n4zTMPetk630M9bkmBvD78t2sKUZtL0AbNQzO5/MWYzO+6+HlufWzbr6TKcrQ+Z
	qNxQ==
Received: by 10.180.104.69 with SMTP id gc5mr31602061wib.13.1355438290020;
	Thu, 13 Dec 2012 14:38:10 -0800 (PST)
Received: by 10.180.104.69 with SMTP id gc5mr31602050wib.13.1355438289830;
	Thu, 13 Dec 2012 14:38:09 -0800 (PST)
Received: from [192.168.1.13] (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id gz3sm9868605wib.2.2012.12.13.14.38.08
	(version=SSLv3 cipher=OTHER); Thu, 13 Dec 2012 14:38:09 -0800 (PST)
Date: Thu, 13 Dec 2012 22:38:06 +0000
From: Ross Burton <ross.burton@intel.com>
To: Chris Tapp <opensource@keylevel.com>
Message-ID: <6E2C4456B0C04C20952CCD8694B0B56F@intel.com>
In-Reply-To: <D082E3D9-189B-4C66-A272-F28BB743D309@keylevel.com>
References: <6D85911C-A82F-4029-A41E-D289D8050C79@keylevel.com>
	<03D0A6FB83364ABF99FCB0481EA3EE0F@intel.com>
	<D082E3D9-189B-4C66-A272-F28BB743D309@keylevel.com>
X-Mailer: sparrow 1.6.4 (build 1178)
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQnBS+EmeSLqrxM5LovUXzkHcSH9YYB46MRY3OQc1ZCT/UO29XYrk5c1lm9rR9PvcIJF4yxwBTEMP6Z1naSRismNxKOJ4J+kwPyqBoAdcft0cfeQgVCI7d9r3xjPCY/JEHASYrXrV4ZTnm94vBrYH5RB60spqg==
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
X-List-Received-Date: Thu, 13 Dec 2012 22:38:12 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

On Thursday, 13 December 2012 at 22:22, Chris Tapp wrote:
> Good catch. This shows there is no video/x-surface decoder available. O=
ff to find which plugin I need...
> =20
> I should have thought of trying that. Thanks=21 I'll have to find out w=
hy my gstreamer error handler isn't spotting the problem=21
Yeah=E2=80=A6 that's a bug I meant to fix in danny-next but failed.  Inst=
all gst-plugins-xvimagesink (or something like that, not at my work machi=
nes right now).

> > It's possible that you've got some horrible GLES/VA interaction, spec=
ifically the download from VA-land to however you're getting the video in=
to the textures. Speaking of which, how are you getting from frames to te=
xtures=3F
> I'm using appsink to give me access to the raw pixel data which I then =
glTexSubImage into a texture. I'm using appsink as I've got legacy code t=
hat uses it for an SDL app. I may try and switch to gstreamer GL plugin s=
upport when I find the best option ;-)

There'll be a better way - gstreamer-gl is worth a look at if you can ass=
ume VAAPI you should be able to construct a fairly efficient vaapi-gl pip=
eline (with gstreamer 1.0 I believe you'll be able to get zero-copy)

Ross =20



