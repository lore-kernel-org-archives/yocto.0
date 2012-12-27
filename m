Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF081E00770
	for <yocto@yoctoproject.org>; Wed, 26 Dec 2012 16:09:38 -0800 (PST)
Received: from mail-gg0-f198.google.com ([209.85.161.198])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 26 Dec 2012 16:08:42 -0800
Received: by mail-gg0-f198.google.com with SMTP id f4so13357885ggn.5
	for <yocto@yoctoproject.org>; Wed, 26 Dec 2012 16:09:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:date:message-id:subject:from:to:cc
	:content-type:x-gm-message-state;
	bh=PiVfKtMd5UwTpW6kGMqf1QeA8V68TW498p4MZ3aSioE=;
	b=agXtb210zncJEekzITm/i54Rho7WVFHWeO3WBf0coW4KTX1/Unlt2PoAV5yB0yvYjC
	8CQvtG0KvVoEpDvoLBeHACnBkfXtB55gbuIcWOTZq0mLh2DvxSojtZ7TzcKkws291Zwr
	ocv1cLES8XPUOGP7P42286woS0+vsBOW7RYkTivtAEqUH+hU2AuaMI+Vl3omjXKJZeF+
	1JwlKIp33D+zVzD4Bl4uO3TiwljVE0jAHm1CN3FZPY+V+t5qf33oFy8AT8urbYtClGnU
	8w4LZ/UOuCUYox+/hmXDhZ0+NlNf8MpvzHm5Gpvj++HS1iqq6bAcsR+UDhYQPeo474ZA
	Qmlg==
X-Received: by 10.49.73.105 with SMTP id k9mr15710882qev.6.1356566977672;
	Wed, 26 Dec 2012 16:09:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.49.73.105 with SMTP id k9mr15710877qev.6.1356566977549; Wed,
	26 Dec 2012 16:09:37 -0800 (PST)
Received: by 10.49.12.136 with HTTP; Wed, 26 Dec 2012 16:09:37 -0800 (PST)
Date: Wed, 26 Dec 2012 16:09:37 -0800
Message-ID: <CAPhnLPDqLAHHxnXYM+Q=ALnAm2jSmYLJY4C44Mc_YGOvLdLsGg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQmCbLTy+QC0ABknX3AYvIdcTKCwRKwiTSPQ1WQCMxNFSvbQOQ5nEKTu1pIlE+tYTgVwy2ormTnD+bHUjWoRWE2TbOTDwfPlxY73mZRzqnMEVmEDN/Fh5zfFTEOV0t10XKClW0NOm1kBWubiks/Na6Vaq2lBag==
Subject: Weekly Build Availability
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
X-List-Received-Date: Thu, 27 Dec 2012 00:09:38 -0000
Content-Type: text/plain; charset=ISO-8859-1

The weekly build is in the final process of generation and will be
available at: autobuilder.yoctoproject.org/pub/nightly/20121226-1. Due
to a git checkout error, I will need to move nightly-ppc-lsb and the
eclipse plugin later tonight after they have finished generation.

thanks

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

