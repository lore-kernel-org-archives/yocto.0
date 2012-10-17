Return-Path: <ross.burton@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18F71E0045D
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 14:37:10 -0700 (PDT)
Received: from mail-wi0-f170.google.com ([209.85.212.170])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 17 Oct 2012 14:37:09 -0700
Received: by mail-wi0-f170.google.com with SMTP id hm2so1052176wib.5
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 14:37:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:cc:message-id:in-reply-to:references:subject:x-mailer
	:mime-version:content-type:content-transfer-encoding
	:content-disposition:x-gm-message-state;
	bh=YqIMuGeuRC6DEOmeys25LrKGo1+gDmxNXtEngZmEakA=;
	b=fYe5MIqU/knfnhVPxa6jICQTZejguANmc8MOUv0W+gfnkw+RSIIUWgL+RGd6DmqdXZ
	W7+IWO0hETu+22/FzegJKwjeMINYF5QhSoCdrBG6W3hIN+ii0EXyhHmeaX441RYs7sT/
	Le5Mme9cf2iwR6DYcwf4s+0vXQhzvqwyxixofdchgZIfBgAfz79kk7x/lza7mBxV9jId
	DzcjOUyIf3THVGF5bCJIaKfL/dX3FngLFrk7n5rpMeRRM6B6lK8FJgYS+n4neqRFIuGC
	GcXCTxSg4omaOaOayLrvFs1VMrGIbc2i2jASkLP+7ii9uHG4d3YFJSiAihwvhSzzj9k0
	9wWA==
Received: by 10.216.144.69 with SMTP id m47mr11974712wej.183.1350509827151;
	Wed, 17 Oct 2012 14:37:07 -0700 (PDT)
Received: from [192.168.1.13] (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id a10sm29778183wiz.4.2012.10.17.14.37.02
	(version=SSLv3 cipher=OTHER); Wed, 17 Oct 2012 14:37:03 -0700 (PDT)
Date: Wed, 17 Oct 2012 22:37:01 +0100
From: Ross Burton <ross.burton@intel.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Message-ID: <ECB532F92ED046EEA8197DE4EE5D0F3C@intel.com>
In-Reply-To: <1350508988.5587.15.camel@empanada>
References: <1350404011-18683-1-git-send-email-ross.burton@intel.com>
	<1350508988.5587.15.camel@empanada>
X-Mailer: sparrow 1.6.4 (build 1178)
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQmEuzCns9KWfDMbWimwiHYhTJh2R32AS1wXsbyxrhSsmw12tE4W93jXooBKu79Hk0Lg88QX
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] cedartrail: add missing gst-va-intel-vaapi machine feature"
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
X-List-Received-Date: Wed, 17 Oct 2012 21:37:10 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

On Wednesday, 17 October 2012 at 22:23, Tom Zanussi wrote:
> Does this supercede the one in the 'Cedar Trail and gst-vaapi fixes'
> patchset=3F

This patch is incorrect, the one I sent today was the correct one. =20
> Also, do you have a branch we can pull from=3F

I do now - git.yoctoproject.org:user-contrib/ross/meta-intel, in the =22c=
dt=22 branch.  Don't just pull the entire branch, you'll want to cherry-p=
ick the commits I mailed.  There are other commits in that branch that de=
pend on patches that haven't landed in oe-core yet=E2=80=A6  =20

Ross

