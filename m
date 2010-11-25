Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6E0CC4C80BEF
	for <yocto@yoctoproject.org>; Thu, 25 Nov 2010 02:54:39 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn38 with SMTP id 38so291650iwn.35
	for <yocto@yoctoproject.org>; Thu, 25 Nov 2010 00:54:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type;
	bh=kGkCMR6K+NAwCKMQZ3D325CLQp98osGwDf3vbwJc/0Q=;
	b=RXWslRorcEtdimgAR3w0QK2n9kQiAe+F+bQqExmMAtVKCDI+/X9RlEbthj5nXKs/0y
	PuWeSsCZh8dH3LfQUNzErtjUswFrG3Njlk/s9nFPPcnHemvM/UfSqJmrUo9vQW85hKrl
	9ExwVpBYKPxMvx9b4x/Udj8wi1HKQUvseJINQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=Ngn8WZm+HjH2j4Xz6U3JjlkYkFg4nfzHYjcaqX72RtYc6wRRiJex3fZ7yAcwugl/y5
	/8n+dIS1n4nJjt8D2lrnqRmdJN1+oR3aXZHBxkrUEijwaSaP5JiJ75hRme9oqmriU2rP
	rFWcweA7+q5/TlxfWpqKJ33N6TAC/+edrEcLU=
MIME-Version: 1.0
Received: by 10.231.37.197 with SMTP id y5mr337539ibd.151.1290675279130; Thu,
	25 Nov 2010 00:54:39 -0800 (PST)
Received: by 10.231.33.4 with HTTP; Thu, 25 Nov 2010 00:54:39 -0800 (PST)
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D3E152FE3@shsmsx502.ccr.corp.intel.com>
References: <AANLkTinQv_Lb-jnngPTpKV9evSSRzQUfN9JEA0RjZbvT@mail.gmail.com>
	<4CED6ED4.8020609@windriver.com>
	<AANLkTimueKS2Vay1h4tM9ENFogONmuNZrET5waqG+7YM@mail.gmail.com>
	<625BA99ED14B2D499DC4E29D8138F1504D3E152FE3@shsmsx502.ccr.corp.intel.com>
Date: Thu, 25 Nov 2010 09:54:39 +0100
Message-ID: <AANLkTimRjafxBdK0cXsVbRqQ7Mji1Rs8b-cLfcHtDHVD@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: poky-image-minimal-1.0-r0:Unable to find package rpm!
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
X-List-Received-Date: Thu, 25 Nov 2010 08:54:39 -0000
Content-Type: text/plain; charset=ISO-8859-1

Kevin, Mark,

Thanks for yoru support.
I'll try to nuke the packaging stamps tonight to see if that helps,
otherwise I guess it'll be a complete rebuild.

Wrt timing: I'll wait for the solution. I hope the parallel parsing
patches from Chris Larson will also make it into poky/yocto soon.

Frans

