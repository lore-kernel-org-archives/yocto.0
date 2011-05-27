Return-Path: <jpuhlman@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id BA7F24C80479
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 17:18:57 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk10 with SMTP id 10so1348649pzk.35
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 15:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=gtedNZI8majlBaUCfj51V65zrdE5PYKOLzKkuIjr0FQ=;
	b=PUlty+lwIX1g7bmqLXVq0hLJY1/nJAlkddHT9n1sxHGTgMyaCiftfH03Sff4vijWlR
	+2Wr+o1kT+PhNgePO2ABWWa12zoVDF8YSaiax9yaHTmR+23ws2KF/X8nSVCwWXzKsPR1
	XOqJ5qXKAwEcgODo10iWguJye0S/OojG4bJx8=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	b=lpZAJaF6j4IaChoMzrEDGGfddEaX3FJgmob4T0sEfPYj0X3Cr3oYYLz5DXSMm6CQbb
	B3PAU+tN8ogcIWbajag0HhFLgy8kLyR1X2SFz1QXn+fg8kdJWMgsexteihqTNeRe+lin
	3rWTsBTZg80vZsrhqlky4ZrLPNw6SpdSQxM+Q=
Received: by 10.142.250.5 with SMTP id x5mr371102wfh.440.1306534737252;
	Fri, 27 May 2011 15:18:57 -0700 (PDT)
Received: from [192.168.1.64] (c-67-187-204-11.hsd1.ca.comcast.net
	[67.187.204.11])
	by mx.google.com with ESMTPS id p5sm816881pbd.28.2011.05.27.15.18.55
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 27 May 2011 15:18:56 -0700 (PDT)
Message-ID: <4DE0234A.2070808@gmail.com>
Date: Fri, 27 May 2011 15:18:50 -0700
From: Jeremy Puhlman <jpuhlman@gmail.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US;
	rv:1.9.2.17) Gecko/20110414 Lightning/1.0b2 Thunderbird/3.1.10
	ThunderBrowse/3.3.5
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <cover.1306420608.git.tom.zanussi@intel.com>	<f113449eb132df7c8a4c45ad8719ecc3ec84a6b5.1306420608.git.tom.zanussi@intel.com>	<4DE01DD3.80506@linux.intel.com>
	<1306533682.23639.18.camel@elmorro>
In-Reply-To: <1306533682.23639.18.camel@elmorro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: [PATCH 1/1] meta-intel: fix BBFILE_COLLECTIONS overrides
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
X-List-Received-Date: Fri, 27 May 2011 22:18:58 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


> The crownbay has two BBFILE_COLLECTIONS in the same file, one for
> crownbay and one for crownbay-noemgd.  The conditional append allows
> them to be selected based on the machine selected.

The BBFILE_COLLECTIONS var basically give you a hook so you can find:

BBFILE_PATTERN_<value set in BBFILE_COLLECTIONS>
BBFILE_PRIORITY_<value set in BBFILE_COLLECTIONS>


While it certainly is true you could have different sets, for different
machines, you set those subsequent values identically. At the moment
there appears to be no need unless your using the value in some other
manner else where. FWIW it probably doesn't matter either way, but it
doesn't appear to be needed by the way you are configuring it.

Jeremy Puhlman
Montavista Sofware, LLC.


