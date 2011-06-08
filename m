Return-Path: <jpuhlman@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 767E94C800BA
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2011 18:30:20 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pwi16 with SMTP id 16so668207pwi.35
	for <yocto@yoctoproject.org>; Wed, 08 Jun 2011 16:30:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=Rv4KXuT1vpNX2cidB6146msTYSL601Cbtqw259Dyeu4=;
	b=fvOb4nxNeD4lmbYMlR+7sBOK/RjZ3MhqJyTfHVNm3bfYTRdUqNrI+LZB38MNuAvMQR
	XhbKgX3zfMXMbHalZLAJzw8m7Umi24+7Q9HALxEPYylisdvcykaoVjQ2iuhukAzrWniQ
	vgGWCBCNYiOzHurj3FxpGx0snqpFLp3vF0RDw=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	b=tM57e04cU/noWbRyp/8YZFYwUAaiuxpR5cW3F1ZSJkfHgj4JL8cy9/EEKpxqOXw0K2
	+UuJr0aGTZBBDw7ZH9t9AG0k730Z101YbpS4jH6bKLcEYof0YLw6rH4cUDUIOmwti2+V
	NNt1xU1nH3ARGoNadZGM0EAmTVkxglLDbC2yA=
Received: by 10.68.12.72 with SMTP id w8mr22193pbb.165.1307575820056;
	Wed, 08 Jun 2011 16:30:20 -0700 (PDT)
Received: from [192.168.1.10] (c-67-187-204-11.hsd1.ca.comcast.net
	[67.187.204.11])
	by mx.google.com with ESMTPS id f3sm869299pbj.64.2011.06.08.16.30.18
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 08 Jun 2011 16:30:19 -0700 (PDT)
Message-ID: <4DF00607.20508@gmail.com>
Date: Wed, 08 Jun 2011 16:30:15 -0700
From: Jeremy Puhlman <jpuhlman@gmail.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US;
	rv:1.9.2.17) Gecko/20110414 Lightning/1.0b2 Thunderbird/3.1.10
	ThunderBrowse/3.3.5
MIME-Version: 1.0
To: sushisan <sinestado@gmail.com>
References: <1307575032.27437.9.camel@emiliano.local>
In-Reply-To: <1307575032.27437.9.camel@emiliano.local>
Cc: yocto@yoctoproject.org
Subject: Re: recipe priority in multiple metas
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
X-List-Received-Date: Wed, 08 Jun 2011 23:30:20 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/8/2011 4:17 PM, sushisan wrote:
> Hi:
>
> I have a project that use openssl.
>
> I practically all recipes used are in yocto project
> but I need someones that are in meta-oe (ie: fuse)
>
> openssl is in  meta/recipes-connectivity AND in meta-oe/recipes
> connectivity
>
> I've putted meta first than meta-oe in my bblayers.conf, but when I
> try to do a bitbake openssl
> bitbake try to compile ever the meta-oe recipe
>
> How I set priority in search recipes?

Search priority is set via BBFILE_PRIORITY_<layer name> that is set in
the layer.conf files.

-- 
Jeremy Puhlman
Montavista Sofware, LLC.


