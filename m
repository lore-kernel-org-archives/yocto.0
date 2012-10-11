Return-Path: <ross.burton@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2CD94E0144D
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2012 06:11:59 -0700 (PDT)
Received: from mail-oa0-f48.google.com ([209.85.219.48])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 11 Oct 2012 06:11:58 -0700
Received: by mail-oa0-f48.google.com with SMTP id h2so2024427oag.35
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2012 06:11:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=JBTjDxhcbFhi/ACgSrbDQOnKBlVn1vEjWgMb0UiwXfk=;
	b=KWm4Hy/jI6FM9h2PjgswiDb7mTFmUEgm0kQlwWa04hH+0lxwbApsh1B5twI3LvhUyT
	zbY6x0HgWwOlhk0c5UW4yb0BdBFDiEQNH9oSWofGANVNFjK1nF+1s4eanB0ygLLEko4F
	oUoy7CigmcSDtUBWGh96eqSNh6JRTq6BULLxqD14/YInVQEb2moyRBJGv/UVZBPWfe9o
	DPRlOxVDCFmYGybUZA85g0PDnvVAzzZ6rMd0Xer5Dt5HUFSZSONGAFLQALGKQL7xOi0R
	EdfwHpCiOIfXcWoqof5ir+wistWYqItVZmaAy1GeT9lM+CWpaLSLzHBAceIoyPhWoMEV
	WZrA==
Received: by 10.60.4.199 with SMTP id m7mr643713oem.106.1349961117862; Thu, 11
	Oct 2012 06:11:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.70.6 with HTTP; Thu, 11 Oct 2012 06:11:37 -0700 (PDT)
In-Reply-To: <2995833.IARlncBIop@helios>
References: <2995833.IARlncBIop@helios>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 11 Oct 2012 14:11:37 +0100
Message-ID: <CAJTo0La40q9g9eyGEZ6XtGMAQickbv1kOF85vgGs-3FSw37iew@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Gm-Message-State: ALoCoQnjgC34WJ+GIwsFHnWz1L95YGKXCuheCf0KI0Oduojmn3h0capu6fvArJ6boi8wv7yhhBbp
Cc: yocto@yoctoproject.org
Subject: Re: Changelog for 1.3
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
X-List-Received-Date: Thu, 11 Oct 2012 13:11:59 -0000
Content-Type: text/plain; charset=UTF-8

On 11 October 2012 12:22, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
> - Mesa can now provide GLES accelerated graphics without X11

Explicitly saying "through EGL" might be a good idea here.

Ross

