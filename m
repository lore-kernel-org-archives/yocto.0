Return-Path: <ross.burton@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A3BAE0049F
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2012 02:55:59 -0700 (PDT)
Received: from mail-ob0-f176.google.com ([209.85.214.176])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 26 Sep 2012 02:55:58 -0700
Received: by obhx4 with SMTP id x4so465779obh.35
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2012 02:55:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=n4OanDBGHI8rN69R9sriLFxVpN8zzwxJpRDfgRfQibY=;
	b=XBbFikayd8bSFjUJzZrwZKHZL8Y6ZfaojocPOCeZ1W0zwsyMtjE9fpfTFDevhE9j/C
	IKaz3bFdO48pYBelza5B0yFTBJTpry/2dbl1lJvEZVXWtc/a8pqWRMLcReRD6nVK8GsA
	FJ4wBF4OfBPz9oCAF7rAWgQuRYoWz9ekEK7bOeCNFVF2aL+W4uTgMXdvhF+1SDoOjVBG
	Hp+ovynyVY8PPpoSgqaolgAVNEcAAGWtr7n9FmYKrOeNLW+oU378GGQqnvqbJZQ5kJCQ
	G7uYUbrKKxuWadfFsyps9jjeadXpUjMx5rtztcHZN+Jm1bTGrNd7VBxvF6Wk7CUd2Jcv
	tYSA==
Received: by 10.182.179.100 with SMTP id df4mr14882689obc.59.1348653357886;
	Wed, 26 Sep 2012 02:55:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.79.105 with HTTP; Wed, 26 Sep 2012 02:55:37 -0700 (PDT)
In-Reply-To: <C9CC3573-37A5-4F74-8DFB-4794B532C042@keylevel.com>
References: <CEE73346-DC1B-4CB2-9D51-A2D47705ADFC@keylevel.com>
	<34F347852CDC4B699F8565643D33E53B@intel.com>
	<1988742.vVm7Lma6pF@helios>
	<15C9364B-70BF-47BD-811C-2A1B021A345F@keylevel.com>
	<C9CC3573-37A5-4F74-8DFB-4794B532C042@keylevel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 26 Sep 2012 10:55:37 +0100
Message-ID: <CAJTo0LbYhLEmQi3f_J=4hFNkHvHjNr_eMA2yMqigctwv6U07dg@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
X-Gm-Message-State: ALoCoQleGHF99dFxcnY9hGLLn6yE57NQOaZ8u27QllPchRysBuhcYwC0/QU7YpQEPpM2g2XG9PvW
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: How can I build gstreamer and its plugins without x11?
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
X-List-Received-Date: Wed, 26 Sep 2012 09:55:59 -0000
Content-Type: text/plain; charset=UTF-8

On 26 September 2012 00:12, Chris Tapp <opensource@keylevel.com> wrote:
> This is due to 'inherit gconf'.

Which tells me that you are not using master but a release, presumably denzil.

Feel free to backport oe-core 6facee8443966b646cd1e72f14ae13e58a13f621
or poky e72157e71c7e3a823d83253f68a9af881e2ab2a0 ("gconf: Disable gtk
support").

Ross

