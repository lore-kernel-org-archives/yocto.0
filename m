Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DCB6E00A0A; Fri, 24 Mar 2017 02:28:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.47 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.47 listed in list.dnswl.org]
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB864E009B9
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 02:28:41 -0700 (PDT)
Received: by mail-it0-f47.google.com with SMTP id w124so6057666itb.1
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 02:28:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=cBHcQrDH8WDibGz7e+l9HgYK4desyiYA5q4I1BD0h2M=;
	b=MlfyqterFWmFIOwSho9NYZsZEP2imU2bX0+j1o8UVe1vePmq5nLJhQUUboQDphXDOf
	PDJ8VoW15vkO01o1r3KJicTe49YUNDusog+H47jZTpzUeWY6RKwW2YAJhBlje41cxFgy
	Myy+iUbf2feS8CDcwvUCf54VgGLU9PUnvRI/CK+31K3kTOdyYGkOox7HLFGs/KdtHTeb
	GKfnYAnhwlPypsQ2NpMa/ny0m3ettkWgBU+tP+3YMqXPJlEk+X1TJFr06bRhso7oG3j2
	z21kUcBljio0FDOHwJrR6J/h/JujDrYkh7NVNaWBaKAoXr9rjchwagVTkbdT1UVCpoHS
	PQOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=cBHcQrDH8WDibGz7e+l9HgYK4desyiYA5q4I1BD0h2M=;
	b=rfHjDQReAqJt8//mo2RLeDS0EOHIBdfKFMk8PiuSTgQfXUsTbXLINKrYzF8/L4hRHc
	TO9hXq6ztrNFV8LTeTEODRbbaPxtIcdCTHcfMcM7Uj49lpZO25WHsB7+00ANISApOkdS
	9PBns/reZgmt4TNivdySdnNO+WyAGe3QRYbOxrFUdbw9kPLiSDHxmALnVEPxT1tUR6oj
	hpzUDX4kzDBCxNYr2GKRPwkElOoc5OkJwoETN9/VtT+qEhHYa9zuTTVDJkDphSOE+RzW
	Q8ZXLHHTitCsPqPgUw+Ef7ZRyrfVdBTKPeMMOvDFYmPN39sltJP7aq4dV2idHo9IuZzl
	iN2w==
X-Gm-Message-State: AFeK/H0T135HQkX0igOBY9qNaVDEtPf565u/t+XQysfe135X11ZQiCP+Srn5m86NhboRo2WC
X-Received: by 10.36.26.4 with SMTP id 4mr1981358iti.58.1490347720738;
	Fri, 24 Mar 2017 02:28:40 -0700 (PDT)
Received: from pohly-mobl1 (p5DE8E2F9.dip0.t-ipconnect.de. [93.232.226.249])
	by smtp.gmail.com with ESMTPSA id 78sm729492ity.7.2017.03.24.02.28.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 24 Mar 2017 02:28:39 -0700 (PDT)
Message-ID: <1490347717.6396.266.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Fri, 24 Mar 2017 10:28:37 +0100
In-Reply-To: <1490279171-25737-1-git-send-email-benjamin.gaignard@linaro.org>
References: <1490279171-25737-1-git-send-email-benjamin.gaignard@linaro.org>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH] tpm2.0-tss: install resourcemgr service
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 24 Mar 2017 09:28:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2017-03-23 at 15:26 +0100, Benjamin Gaignard wrote:
> +diff --git a/contrib/resourcemgr.service b/contrib/resourcemgr.service
> +index 7f23739..e5b0900 100644
> +--- a/contrib/resourcemgr.service
> ++++ b/contrib/resourcemgr.service
> +@@ -3,7 +3,7 @@ Description=TPM2 resource manager & access broker
> + Documentation=http://www.github.com/01org/TPM2.0-TSS
> + 
> + [Service]
> +-ExecStart=/usr/local/sbin/resourcemgr
> ++ExecStart=/usr/sbin/resourcemgr
> + StandardOutput=null
> + User=tss
> + Group=tss
> +-- 
> +1.9.1

I think it would be better to patch the actual ${sbindir} into the
resourcemgr.service file, instead of assuming that ${sbindir}
= /usr/sbin and using a static patch.

Something like this:

do_patch[postfuncs] += "fix_systemd_unit"
fix_systemd_unit () {
    sed -i -e 's;^ExecStart=.*/resourcemgr;ExecStart=${sbindir}/resourcemgr;' ${S}/contrib/resourcemgr.service
}

Just my 2 cents.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




