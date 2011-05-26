Return-Path: <jpuhlman@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id A92974C803BA
	for <yocto@yoctoproject.org>; Wed, 25 May 2011 22:49:22 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk10 with SMTP id 10so186239pzk.35
	for <yocto@yoctoproject.org>; Wed, 25 May 2011 20:49:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=hACFn5GqzJ8nGQbjiY6wuHLIdwO2i9n9au41niePyqg=;
	b=O0WdKNHeHtjndPrryZvcAUDv5H0AkaPejfJYT5KkcE45SB7QfBCPxAQwnh8Loz4G3V
	gDNkb2MsbLus0J4mANibTLpi4pW7KETmzJsY9HV5m/STz2EI2dXfOmFCvGdi8LxZmEFw
	mAqTC+XE4TjQaB1R8jumDf8XDMz0yN/PC0WDM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	b=MsKjyD4q1XEe0ipaSJK/Iat1gAVHDpRM06TLJoa4L5m73ZbR7TEUJiCJgXOsqISyhp
	qAhwhy3hbQfXr1yXa3lhs6ZYUVlBnLLmq57ywCKs3gavzWD2J7ds6wGFf5jvFDqdegBd
	6Bey0WEykA0+xKW8nAkQnKSP8wGn/6AbJJZCE=
Received: by 10.68.57.239 with SMTP id l15mr128182pbq.374.1306381762302;
	Wed, 25 May 2011 20:49:22 -0700 (PDT)
Received: from [192.168.1.64] (c-67-187-204-11.hsd1.ca.comcast.net
	[67.187.204.11])
	by mx.google.com with ESMTPS id k6sm590993pbd.3.2011.05.25.20.49.21
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 25 May 2011 20:49:21 -0700 (PDT)
Message-ID: <4DDDCDBB.8010507@gmail.com>
Date: Wed, 25 May 2011 20:49:15 -0700
From: Jeremy Puhlman <jpuhlman@gmail.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US;
	rv:1.9.2.17) Gecko/20110414 Lightning/1.0b2 Thunderbird/3.1.10
	ThunderBrowse/3.3.5
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <4DDDAA38.8070404@gmail.com> <1306381066.22553.52.camel@elmorro>
In-Reply-To: <1306381066.22553.52.camel@elmorro>
Cc: Yocto Mailer <yocto@yoctoproject.org>,
	"dvhart@linux.intel.com" <dvhart@linux.intel.com>
Subject: Re: In consistancy in the defition of BBFILE_COLLECTIONS in layer.conf
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
X-List-Received-Date: Thu, 26 May 2011 03:49:22 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


> No, not intentional - looks like a case of an overzealous overriding
> typo that propagated.  I'll cook up a patch to make them all just
> 'BBFILE_COLLECTIONS += xxxx'
>
> Tom
>
Good  deal.  Just wanted to double check. Thanks for the quick response.

-- 
Jeremy Puhlman
Montavista Sofware, LLC.


