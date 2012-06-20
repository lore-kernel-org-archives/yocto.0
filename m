Return-Path: <dallas.a.clement@gmail.com>
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 523BEE01423
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 21:28:02 -0700 (PDT)
Received: by wgbds11 with SMTP id ds11so3091658wgb.5
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 21:28:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=GmUE4vxOg05mS0v9rc9kHfeKprbsWYLUEsFmjxtPIl4=;
	b=Gckz58ASkhnlLMvNy+4ySOs1wXr1C68UEqLfEF1NwChWAn8NiAuS2hy57Y7a3N+TjX
	mzZod1OvYHkGzkj55Xj4PXM+HSw2ni8uLN6d4lxT+YQ8J851PKlUeXfTg9mTBOPhlQAG
	M/+VF/GrK5+qXMFynXCrZPQMIILjUm+N7aJ+YrH1JbJMK16dFcNFeX4yus3kmnZtt9jd
	VrxRNsTFdGLVfPTjgHsYZ+RRjBJwd2hrn65vpf8l59BLTapojcyrg2MqSn7pEFwSysMF
	BSgLssfbOpgbj/pASjqlW5zleAig67Oq4sX/Gt1+HiPDyKPHUgFnkYAA/076CII3FmwG
	uRUA==
MIME-Version: 1.0
Received: by 10.180.98.201 with SMTP id ek9mr8570389wib.7.1340166480946; Tue,
	19 Jun 2012 21:28:00 -0700 (PDT)
Received: by 10.180.14.193 with HTTP; Tue, 19 Jun 2012 21:28:00 -0700 (PDT)
Date: Tue, 19 Jun 2012 23:28:00 -0500
Message-ID: <CAE9DZURgGbWuEL5FuwvXAj3NOdq-KE2uUUGEQuq4MWK8usYCcw@mail.gmail.com>
From: Dallas Clement <dallas.a.clement@gmail.com>
To: yocto@yoctoproject.org
Subject: using a custom pre-built toolchain
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
X-List-Received-Date: Wed, 20 Jun 2012 04:28:03 -0000
Content-Type: text/plain; charset=ISO-8859-1

I have a cross-toolchain supplied by an ARM SoC vendor which I need to
use to build my distro.  What is required to use a toolchain like this
instead of one of the yocto cross-toolchain tarballs?

Thanks

