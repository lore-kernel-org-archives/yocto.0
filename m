Return-Path: <dallas.a.clement@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54F12E00282
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 15:07:27 -0700 (PDT)
Received: by vcbfl11 with SMTP id fl11so4232374vcb.35
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 15:07:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=RTF8x+J2BAC3fZog7Hf9E7kya3AQkFTGbnUG693aEnA=;
	b=jORIVJ6vxNbnSQi22FUleg1XwL9K9iQ0D9cU00wcDzN8sTidY0r0rNMbCfe6ZPr9uO
	3vqdUilvpjVABOnrYLbE1hTGJKbLnemkoXSPq6+23uDv2ZHALcVVFSSd91Z1xxHXRUuE
	P4hV8B9awa1LVYf69YEbKFWntXEQloq4vPtVCdmyJnpFGE8c0GTn7vGsQAiLY0CzVa9E
	luybdNBAxeS4qcemdZxQ3XsfJwqnWIipfCqbSRNBexA3I+O84YVMiHeI1x54TQudT+0/
	zjL8lp7KAycoRTLcDEqPUKbrTVMAVMF7/KiU2pu0kwZS/FXlaEZ+jJMI+2iDXzmUqSjc
	WqSw==
MIME-Version: 1.0
Received: by 10.52.27.143 with SMTP id t15mr5034829vdg.18.1342822046347; Fri,
	20 Jul 2012 15:07:26 -0700 (PDT)
Received: by 10.59.8.136 with HTTP; Fri, 20 Jul 2012 15:07:26 -0700 (PDT)
Date: Fri, 20 Jul 2012 17:07:26 -0500
Message-ID: <CAE9DZUSqY684qob9zFWQp5jHg+uyc=sx78JxM03vYNX_3SncHw@mail.gmail.com>
From: Dallas Clement <dallas.a.clement@gmail.com>
To: yocto@yoctoproject.org
Subject: INSANE_SKIP
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
X-List-Received-Date: Fri, 20 Jul 2012 22:07:27 -0000
Content-Type: text/plain; charset=ISO-8859-1

Is there a way to skip a QA check for more than one package or all packages?

I'd like to avoid having to add a INSANE_SKIP_${PN} += "ldflags" for
every package that fails due to ERROR: QA Issue: No GNU_HASH in the
elf binary.

There are gobs of python and perl packages failing with this error
when I try to build a distro.

