Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3324E003DA
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2012 06:45:13 -0800 (PST)
Received: from mail-oa0-f72.google.com ([209.85.219.72])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 15 Nov 2012 06:44:36 -0800
Received: by mail-oa0-f72.google.com with SMTP id h2so6380725oag.11
	for <yocto@yoctoproject.org>; Thu, 15 Nov 2012 06:45:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=3xFzBk+KvDm3ilrk6VdJAlc0V/9t7z4AI9jbTz1BgnE=;
	b=i0p/YjiwmJQ8Gkdsb5vYBOHgHumbr7KsNj5J87XO6udSuqTO6aFmrXezO2kJVxdLd4
	dSbD7J0JydwnleHX+34o5KFmfMaezqJsUV9x52Rg15Fo3KhOYQ8+E27FoQvs3gkV02uh
	xPq87AKVolanYv6VZTt1ci2B00uGRj1tcGzLrR07Qne6cTZh/4G8/aEGB/DMe+gOADrv
	4ELf9boK1Hmodnjutmk1QOf3pUWYKqcQ8oSDF1VDTjDk/Ula/sQ2T16AJYfrqPbET6BJ
	W6BZnvs939YvM6AJGGQsf/0nDvyzlf5aForILY1knomDHSt6uNjxxmPSTJF7rkCoLb21
	le0Q==
Received: by 10.60.7.6 with SMTP id f6mr953851oea.138.1352990712373;
	Thu, 15 Nov 2012 06:45:12 -0800 (PST)
Received: by 10.60.7.6 with SMTP id f6mr953840oea.138.1352990712186; Thu, 15
	Nov 2012 06:45:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.182.68.135 with HTTP; Thu, 15 Nov 2012 06:44:51 -0800 (PST)
In-Reply-To: <4C2DC877-D240-4C4A-939A-A2502343BEF2@keylevel.com>
References: <4C2DC877-D240-4C4A-939A-A2502343BEF2@keylevel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 15 Nov 2012 14:44:51 +0000
Message-ID: <CAJTo0LaRTB01WDwDvC8yHNoM3fSfDB-dk6wQFzgjaymboRj08A@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
X-Gm-Message-State: ALoCoQmdSmjulJwt1DOUAv+7TkpxwWPsO1W0tTTusIq9xHcLzPCPeZM6TOSQAw9AsSOJmEvLKnVliWyIsrVOi9F/E7UGG+3FNLKhPWiIBSOEs2mDIY5z5WMBBl44CCN5b0Qm5aWn/i3FJUS2W4GWCq4WKHmMn4TaCw==
Cc: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Subject: Re: Cedartrail / GLES / Framebuffer
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
X-List-Received-Date: Thu, 15 Nov 2012 14:45:13 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

On 20 October 2012 19:31, Chris Tapp <opensource@keylevel.com> wrote:
> I'm still trying to get my 'perfect' platform configuration for a project.
>
> 1) I need to use the 'nopvr' machine as I need unionfs. This means I need the kernel 3.2, which doesn't currently support pvr;
> 2) I'm running using the framebuffer and would rather not have to include libx11;
> 3) I was using SDL, but I now need to support GLESv2 / EGL as well.
>
> Is it possible to build a system that runs like this? i.e. GLES on the framerbuffer without X11.
>
> I think the only issue is getting a build of MESA that runs without x11, but is there anything else, or another way?

I had this marked to Follow Up but managed to ignore it until now, sorry.

GLES without X11 should work using EGL, but that will be using the
closed cdv-pvr-drivers package.  If you can't use those for other
reasons, then you're stuck.

(yay closed drivers)

I understand that Ubuntu contains a re-packaging and re-build of the
CedarView binary drivers - it may be worth seeing what kernel they are
built against as I believe that the stack is slightly new than the
MeeGo-derived binaries that we're using.

Ross

