Return-Path: <koen@beagleboard.org>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 934AFE013A5
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 07:30:55 -0700 (PDT)
Received: by ggcs6 with SMTP id s6so1904897ggc.35
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 07:30:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to:x-mailer:x-gm-message-state:content-type
	:content-transfer-encoding;
	bh=OBgIZow6mMVeT8UR3tHNfh4mtT8KUBmY8zJrJdkZUFE=;
	b=PBnhWfFXs7bnboJuk3MkoY7VZAuXrwfheTVW3WRKsLk4AgNvG4uzw1eRnRS+sWnQWf
	O6n2+IiV7HbHTXBsZXsSndKxKYjmFstjpCFPwwfwrXHwyMtUYyz+xwrmAix630opsBEN
	ByunTFBq3zgM++UAb6Zd23M7YW/xUGqT3xv5j/Xz1e4woBYbYCzqPVidWQRMXh8FAFjK
	x7ZIFTuuhVZRBquHafoYsW6pYgutrVLWHWwEK15jybRqMgTnR7sUpGnTEG1+3VBZwbRL
	BRBlJxP5xgHDyqlOaOEEhJIPKCYwaHCkkMbkK6nvB4c+CyZ+y/0fpSz2ZdzFRE/oyc7z
	U3fg==
Received: by 10.68.132.69 with SMTP id os5mr34972pbb.60.1333031454579;
	Thu, 29 Mar 2012 07:30:54 -0700 (PDT)
Received: from [192.168.1.22] (adsl-63-193-31-6.dsl.snfc21.pacbell.net.
	[63.193.31.6])
	by mx.google.com with ESMTPS id f2sm5147867pbr.16.2012.03.29.07.30.52
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 29 Mar 2012 07:30:53 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1257)
From: Koen Kooi <koen@beagleboard.org>
In-Reply-To: <ADD6A3980E8C39419A432FF422031B4C0137E190@ORSMSX106.amr.corp.intel.com>
Date: Thu, 29 Mar 2012 07:30:34 -0700
Message-Id: <9719D2BA-906B-4D57-822F-C4CAA2711065@beagleboard.org>
References: <ADD6A3980E8C39419A432FF422031B4C0137E190@ORSMSX106.amr.corp.intel.com>
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
X-Mailer: Apple Mail (2.1257)
X-Gm-Message-State: ALoCoQmGdUo/1baYQMkV7ilOPQYu/X5jXiUZzUJAWCQMSKUVPjs7fq/EU+jRVCkdlyvuP6JY1Qtn
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"chris@yassl.com" <chris@yassl.com>
Subject: Re: yassl recipe in the yocto project
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
X-List-Received-Date: Thu, 29 Mar 2012 14:30:55 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 27 mrt. 2012, om 17:53 heeft Kamble, Nitin A het volgende geschreven:

> Hi Chris,
>   Here is the recipe we have in yocto-project for openssl projects to =
be incorporated into embedded Linux distributions.=20
> =
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-connectiv=
ity/openssl

That should be =
http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-connectiv=
ity/openssl for obvious reasons, poky is downstream of oe-core



