Return-Path: <b.hutchman@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 910E0E00596
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 08:36:33 -0800 (PST)
Received: by bkat8 with SMTP id t8so857167bka.35
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 08:36:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=RC8KNPTjgO4bvchr/lUtLpt9DoIpYRSrmsq3zKMIMcA=;
	b=i0gJkO9qe0rnqRcsQ0gFG0Rre+c9sPXaxXubBGMBIsT0hTycJahlR0YRnCcX0NldF7
	dijBRMH3gLhSLVcmXA/9O3G1aqu4Lh8TzzhBfvDERwfYKF/SccncAWfjAHVCaHPU72pX
	NXfHuClH/JC56NMplu+IgKsZeYBjIKWrs8yOo=
MIME-Version: 1.0
Received: by 10.204.154.136 with SMTP id o8mr1377944bkw.112.1327595791892;
	Thu, 26 Jan 2012 08:36:31 -0800 (PST)
Received: by 10.205.141.203 with HTTP; Thu, 26 Jan 2012 08:36:31 -0800 (PST)
In-Reply-To: <CAFZh4h9YHz9VhdT3qHrrXQwaWn_qK4wpQ-JzPihO0qyhRfdE5A@mail.gmail.com>
References: <CAFZh4h9YHz9VhdT3qHrrXQwaWn_qK4wpQ-JzPihO0qyhRfdE5A@mail.gmail.com>
Date: Thu, 26 Jan 2012 11:36:31 -0500
Message-ID: <CAFZh4h-5m535Uod4=7hYmZzhRaqM8LtpHw1bfE0CQdXPdpFz7A@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: How to get opkg in rootfilesystem
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
X-List-Received-Date: Thu, 26 Jan 2012 16:36:34 -0000
Content-Type: text/plain; charset=ISO-8859-1

Update,

I'm still not doing something right.  I did a clean rebuild of
core-image-base and a tar jtvf core-image-base-beagleboard.tar.bz2
reveals opkg stuff in /var/lib/opkg only.  No opkg bin.

I guess I'm still in shock over this.  I mean why should I have to do
anything other than:
PACKAGE_CLASSES ?= "package_ipk"

I mean, if I specify I want package_ipk in the "Package Management
configuration" section, doesn't logic follow that the image would be
created with opkg and some sample opkg.conf files?  What use is it to
generate all those .ipk's for the repository the build does without
opkg being there?

Regards,

Brian

