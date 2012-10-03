Return-Path: <ross.burton@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B73AE011C9
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 06:37:27 -0700 (PDT)
Received: from mail-ie0-f176.google.com ([209.85.223.176])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 03 Oct 2012 06:37:26 -0700
Received: by ieak11 with SMTP id k11so20767142iea.35
	for <yocto@yoctoproject.org>; Wed, 03 Oct 2012 06:37:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=DqodtAQi8h8TQcJPX8/7vMMqnB4dCFi6PaKfJ3cZw5o=;
	b=DLdD80CWOWX/zQAnlcuxTEVR0qRIML0xLxC33aihI8O566l4PJDf/x/tevIACfUjw9
	macJS5Gs9rnFK1Uasz8N1CPYfDS0MdKO4ni3bSBfxOGQtPoiYZx+Tf9CvgMyXCwGc7MP
	1Pti1JiJfObCabEEODvPdZvBqhvBr6Yk7pu6EDwFfcZZxA4tN2Wy2Ovh7A28cMLpVK6X
	4rgn69dAcozw6Q/fLLKPhcPubOEKiVFh/mFjLPgYzit4H/HxxQj0jk8ehyHlzaVyZjad
	MJDFA+Xrx9MtGMo8YdV842q8jdvzo6WCvZNKXNtnRP23CGX2MYF7gqZubzxzkOr1Uaia
	IQoA==
Received: by 10.50.236.66 with SMTP id us2mr1822397igc.8.1349271445848; Wed,
	03 Oct 2012 06:37:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.141.70 with HTTP; Wed, 3 Oct 2012 06:37:05 -0700 (PDT)
In-Reply-To: <506C3F92.4050309@communistcode.co.uk>
References: <CANFv2EnwjYa=DNKfiR9y9g+G_j=8WXyVZtBX_2gKcfM7Ga4MqQ@mail.gmail.com>
	<CAJTo0LbcKzbJ7-2jKoHRPzYeHx_ydYf_vULzwjsWy0zG4Q4bBQ@mail.gmail.com>
	<CANFv2EkD5NtRvbe2-fNnmt8df66HAu2r=hzCMBm-Zw4EeidBHw@mail.gmail.com>
	<506C3F92.4050309@communistcode.co.uk>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 3 Oct 2012 14:37:05 +0100
Message-ID: <CAJTo0Lab-XovZsq3MmiuuTG2v_aKOnC5DVyaaSdJx4KQcSZwnQ@mail.gmail.com>
To: ml@communistcode.co.uk
X-Gm-Message-State: ALoCoQmnReQexf3JAcUboUOKj+Cz2rP1flrDRjrq8saXdxIWnygRhbcPPs/83c2SeZpgTbSa9zgs
Cc: yocto@yoctoproject.org
Subject: Re: Correct procedure for rebuilding after a git pull
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
X-List-Received-Date: Wed, 03 Oct 2012 13:37:27 -0000
Content-Type: text/plain; charset=UTF-8

On 3 October 2012 14:37, Jack Mitchell <ml@communistcode.co.uk> wrote:
> I also use this work flow. If something goes wrong with a particular package
> then I will -c cleansstate failed-package and then start the build again.
> This usually fixes it.

Bringing the failure on on the list / bug would be appreciated,
everything *should* rebuild cleanly (especially with recent changes in
master).

Ross

