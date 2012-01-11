Return-Path: <jfabernathy@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 032A0E0123F
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 19:56:46 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qadc16 with SMTP id c16so257105qad.14
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 19:56:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=BaCa64FsYPR8atOABsPgUoi7QJvqwEc0QI+f8h/ojDM=;
	b=Z61feqOCPE0EqmWb5db1Pt96qdL2GtCfcHEB65EmQPPmkZktDMXSNq8sld2VpANxjR
	RKA6Ncl6r/6ZOndvR9igtLTjbk1V/u8GGXZAd1Xjsmzzm0FTfsjQ4bQKLWbnPOmVmaiC
	rNwN31z0wz9K97TADEupA1ntCfK0w94ttzseU=
Received: by 10.224.175.193 with SMTP id bb1mr28317839qab.41.1326254205375;
	Tue, 10 Jan 2012 19:56:45 -0800 (PST)
Received: from [10.0.1.39] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id j18sm922925qag.17.2012.01.10.19.56.44
	(version=SSLv3 cipher=OTHER); Tue, 10 Jan 2012 19:56:44 -0800 (PST)
Message-ID: <4F0D087B.5050709@gmail.com>
Date: Tue, 10 Jan 2012 22:56:43 -0500
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: hob usage
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
X-List-Received-Date: Wed, 11 Jan 2012 03:56:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I have a question about hob usage.  I understand the basics of hob and 
how it adds packages.  I also understand how it will parse through my 
local.conf and include any extra packages that I may have included by 
using IMAGE_INSTALL += <package>.

I've found that if I start with a clean BSP and use hob to add a 
package, it will allow me to save that configuration anywhere.  I'm not 
sure where I should save it.  It contains the IMAGE_INSTALL for the 
packages I've selected, but is also includes a 'require' statement, 
which seems to have a relative path, like:

require recipes-sato/images/core-image-sato.bb

Where is the location I should save the hob configuration file? I know 
that if I save it outside my poky directory, the package will not be 
included, so it's important where it goes.

Jim A


