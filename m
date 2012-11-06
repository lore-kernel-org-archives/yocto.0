Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 691BDE002AB
	for <yocto@yoctoproject.org>; Tue,  6 Nov 2012 12:40:49 -0800 (PST)
Received: from mail-ob0-f200.google.com ([209.85.214.200])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 06 Nov 2012 12:40:15 -0800
Received: by mail-ob0-f200.google.com with SMTP id un3so2647274obb.11
	for <yocto@yoctoproject.org>; Tue, 06 Nov 2012 12:40:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=d33WrpCOu77C18omD582vVjK7l+XZe9PLhNj31IEjOQ=;
	b=oiEloYlhHXJiyxZ48yLbLXO/YUPLpH2IvfqC4UXHMx1w3b4/WPCf22ilfplyZ6r7U3
	I5WvTYrdWPFFgwIcWUTc94wvycVp9l3y8PjgU3Uc0BxcNXtQlmyFYn7ZmuBLEW4mxv3f
	4hWlysREkKxuUGOD5NqRDWHMpQvd8ZC/DxvefA0/cujYhpMtYCo+0F535Rce9QcviA9u
	H+0jZAcvQrakqa3Io7nKI8N2jV+NS5bMJxgssmOpugGzDCn5PwtW/ZzPwZdEsH5FmGZd
	LHZQdEitIqcuvF1t+0O8RYIbgVAzRxwabOSpTta0p/fkxCUBR5NRtLccWNDm8VCqytO/
	VzGQ==
Received: by 10.43.132.65 with SMTP id ht1mr2212859icc.1.1352234445619;
	Tue, 06 Nov 2012 12:40:45 -0800 (PST)
Received: by 10.43.132.65 with SMTP id ht1mr2212852icc.1.1352234445542; Tue,
	06 Nov 2012 12:40:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.64.58.197 with HTTP; Tue, 6 Nov 2012 12:40:25 -0800 (PST)
In-Reply-To: <1352234097.2408.47.camel@empanada>
References: <1352119640-25949-1-git-send-email-ross.burton@intel.com>
	<1352234097.2408.47.camel@empanada>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 6 Nov 2012 20:40:25 +0000
Message-ID: <CAJTo0LYW1CqYw7qmcKEPJbt22pD-HKaBWRwSCbOspBsCaXtG1g@mail.gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
X-Gm-Message-State: ALoCoQnzxGhAz4IQKjPWPgx8J8sGGiAz5a1L/n4AhCOkoIwJHZiSTecJeL46/iw4ynjdZFu4GmVcO51lsGVW6avv+zPA+uM/dsgQQDil2MjwhDUqoxS5tqkwhHV/43aIXMJslDRofJQmIOkqNit8HCqFV/Sj2c+4uQ==
Cc: yocto@yoctoproject.org
Subject: Re: [meta-intel] Add Xorg ABI dependencies
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
X-List-Received-Date: Tue, 06 Nov 2012 20:40:49 -0000
Content-Type: text/plain; charset=UTF-8

On 6 November 2012 20:34, Tom Zanussi <tom.zanussi@intel.com> wrote:
> In the future, could you also add a link to the branch (if there is
> one)?  I guess these are at:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-contrib/log/?h=ross/xorgabi
>
> But would rather not guess (or compare) or have to pull them off the
> list.

Of course, apologies for not doing that.  In general with me the
branch is canonical.

Ross

