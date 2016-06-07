Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF0F1E00C28; Tue,  7 Jun 2016 08:57:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edwingate8[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f65.google.com (mail-qg0-f65.google.com
	[209.85.192.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C283E006E9
	for <yocto@yoctoproject.org>; Tue,  7 Jun 2016 08:57:25 -0700 (PDT)
Received: by mail-qg0-f65.google.com with SMTP id z67so9391089qgz.1
	for <yocto@yoctoproject.org>; Tue, 07 Jun 2016 08:57:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=AexnL+zFPKngiAay9oqWlWunELwO+D6dbZ6kR8Ev7A4=;
	b=vwXcMKYYwTWOzw3JXi5lBFH4bmLYBssvnkx7A+3hnA080MIiWNEHwIi1dCMgctInm/
	3lrYneyIRIZbrTVpB0vmwaIX3pRS3Wj0G1d8nsxWycS4fmi2UaX8w/gm9+mb52COcWmJ
	h4HQ5dFZwSV7z3OKRVaZLwhNVQhRa1Cc5pRTdc6b2mHcZGm01JZCtBpbIGD5p9GUf68b
	YS/8hs56j/PdNqFJOEhGkdnxi1ehd/OQEXZgAs/VYw5dMzBsm4ldGc4CQnpw6pkf8zc/
	00d2pRQMCEH1U0w17/a7kCy4vPKI6XGPquZ0JCjWMVJzUUncG8ME0Z5+tujCGOQ7gDfe
	Eq1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=AexnL+zFPKngiAay9oqWlWunELwO+D6dbZ6kR8Ev7A4=;
	b=dBjIeEwC4r2SSLhTolr9v1snztn9rWkvyAX0i28Zrli9ueF3CTF7WXmwufPPJBNSRK
	kzxOkcLucKJPpMGb8JMhDjd2+iVeYPxFwRi7HYEVvT6cJkSWnWEe4JrqmoJa26I/3EoC
	VdtJsaYpOIVSW+wBwYtnfbIotHee0VKyRjlCNM1HNG9sG/gWmK4ImpvVp0619syzm9gg
	NWfQwu41o5wpvA1kdn2lkNAes/0TSXOa4Bs6SKIG/sVT02lOCQIrTvppqXq784wnwGbv
	OSTXefNCE87/pDrwrN80rG/7nBsXMn/LhDjev9a5dIa7SQGWNTTV1oEjSbPRsF8J+MTB
	RrxA==
X-Gm-Message-State: ALyK8tL/1yARp2s2uAMTWIVc0K5RooTwnV6H/q8BtcLXYAUOruLMnU2r6ZdGv3EvDilZIPzZvKsQwqc4tDy0dw==
X-Received: by 10.140.156.149 with SMTP id c143mr179201qhc.58.1465315044805;
	Tue, 07 Jun 2016 08:57:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.45.166 with HTTP; Tue, 7 Jun 2016 08:57:24 -0700 (PDT)
In-Reply-To: <56359783.XqWORYcO5G@peggleto-mobl.ger.corp.intel.com>
References: <1806509.T1rfjxOZVE@ip-192-168-197-87.eu-west-1.compute.internal>
	<CAGMdoF=40Z=5MRZ-YBvZrfrYO9pJ9WTixu36FqRiX0i3zvNkKw@mail.gmail.com>
	<CAEeWubJaaGLOVWdcS0uc=tv_cYkGRMFa2prLJ6jnDJAah+8G8Q@mail.gmail.com>
	<56359783.XqWORYcO5G@peggleto-mobl.ger.corp.intel.com>
From: Edward Wingate <edwingate8@gmail.com>
Date: Tue, 7 Jun 2016 08:57:24 -0700
Message-ID: <CAGMdoFkJa_K26VhOK4DDnqpwPG3+a+5mT+Z5BQqmpauAjtKr=w@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org, Diego <diego.ml@zoho.com>
Subject: Re: Per image customizations
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
X-List-Received-Date: Tue, 07 Jun 2016 15:57:29 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jun 7, 2016 at 3:20 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Let's clarify that for the benefit of others reading along - you absolutely
> *can* have multiple bbappends per recipe. To answer the original question
> though, no you cannot have bbappends conditionally applied based on what image
> is being built - you cannot have other recipes built differently based on the
> image being built *period*. Other than what gets shared via the sysroot,
> recipes are largely independent of eachother, and that's by design.

Thank you, I will abandon that line of inquiry.

So I now have recipes that attempt to overwrite inittab with their own
custom version.  These individual recipes are included in different
images and have DEPENDS += " sysvinit-inittab" in them.  However, the
resulting image still has the original inittab from sysvinit-inittab
recipe, not the custom inittab in my new recipes.

My recipes look like this now:

LICENSE = "BSD"
LIC_FILES_CHKSUM = "file://LICENSE;md5=9bea9267288f79f074b2e000d3cf6412"
SRC_URI = "file://LICENSE file://inittab-imageX"
S = "${WORKDIR}"
DEPENDS += " sysvinit-inittab"

FILES_${PN} = "/etc/inittab"

do_install () {
    install -d ${D}${sysconfdir}
    install -m 0644 -D ${S}/inittab-imageX ${D}${sysconfdir}/inittab
}

Is there something more I'm missing?  Thanks.

