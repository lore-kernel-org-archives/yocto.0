Return-Path: <ross.burton@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3612BE0044A
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 00:38:02 -0700 (PDT)
Received: from mail-ob0-f180.google.com ([209.85.214.180])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 09 Aug 2012 00:38:01 -0700
Received: by obbuo19 with SMTP id uo19so244286obb.25
	for <yocto@yoctoproject.org>; Thu, 09 Aug 2012 00:38:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=qIyc1IqMTf5MTfStmYX2bqPAJyVtdvoxrrWYJZptnSk=;
	b=D0m69KIxAJJ6v2YHGJRuRCU/13aeZMlHiYKHvJh4l9wA0VCrjC7mcinElcsTMqy01K
	mtZQMd/gCDMlAkpI+ZXKyJaZnSoQfVrBTnEGRnciNcc8nZayTp0+viDco0HTm59HQtub
	WggYF/2Scp4lpaI5TJICG0p8hnH9wyKtPY1kn1Ka+ZSNVK7BhlYAclrRRPV7MQcsxTHR
	g9eAjkzVdje00POnoSuz1eyAxJ3LuGPC8x/O+Fh3HiXQysWKfhbmyO8Ft7TcgFvs7Vfn
	qLP9ab3RktzpTPiIU2aMXCInkddlZ+bewFcd1Xxo0S7FIn9IlTy0aDpmmO14rsRAuQpV
	HTDw==
Received: by 10.182.169.40 with SMTP id ab8mr3931791obc.34.1344497880641; Thu,
	09 Aug 2012 00:38:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.45.10 with HTTP; Thu, 9 Aug 2012 00:37:40 -0700 (PDT)
In-Reply-To: <CANsUPaOm-=mczLeKX3NsYhNiuEEKQ--fb=0REuvy3c86bH6+Tw@mail.gmail.com>
References: <CANsUPaNSFsapsHbjxcBvjDi4Yo-8eJ1trLDvycKLBX9m4RDNSg@mail.gmail.com>
	<50229D6F.8010801@intel.com> <50229DAA.3000307@intel.com>
	<CANsUPaOm-=mczLeKX3NsYhNiuEEKQ--fb=0REuvy3c86bH6+Tw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 9 Aug 2012 08:37:40 +0100
Message-ID: <CAJTo0LYSJtFySH9+48uRC9NCNzyhM6FY0YxqPiTjp9V2SqceXg@mail.gmail.com>
To: Giovanni Foiani <fnognn@unife.it>
X-Gm-Message-State: ALoCoQkAUCYwgBudn6FuOuGtZUz2VcINMl/OvxT5QsrSG+rqix3p6TeTDFbDu2m0nurm2yiIx94o
Cc: yocto@yoctoproject.org
Subject: Re: Custom splash screen using psplash
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
X-List-Received-Date: Thu, 09 Aug 2012 07:38:02 -0000
Content-Type: text/plain; charset=UTF-8

On 9 August 2012 08:31, Giovanni Foiani <fnognn@unife.it> wrote:
> Hi Scott,
>
> I copied the psplash directory (and replaced the logo with mine) into my own
> layer but when I run:
>
> bitbake psplash -c cleansstate
> bitbake psplash
>
> it still builds the sources located into meta-yocto directory and not
> sources that are into my own layer directory.
> How can I build a package pointing to a specific folder path ?

You don't need to copy the entire thing, here is a working example
(against Denzil) of a layer that overrides the splash:

https://github.com/Guacamayo/meta-guacamayo/tree/master/meta-guacamayo/recipes-core/psplash

(the bbappend can be shorter if you track master, as the comments say)

Ross

