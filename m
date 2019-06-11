Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0999EE00D6C; Tue, 11 Jun 2019 01:51:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.46 listed in list.dnswl.org]
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
	[209.85.221.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3D3CE00D33
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2019 01:50:58 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id c2so12022042wrm.8
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2019 01:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=8u73irt75GLruNZzWFWrc5hwfAsfJBpylmSx3qj/6ag=;
	b=fkH2rSwiF4Zpj+t6I3WAtrrmh8mgTCTN4WA625voq+ClOKHyJiy9HRLgFI2fP0ZEh9
	KYo7Wwo1+6g1DG9Q/SmEzGMUF6nEnTDD//OPrdQxcNqQqhfJsYtkhZqFgdVuD3nbNBt/
	De45mknVDryD+OXPrEIetvF/y+qmc/g25GxzM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=8u73irt75GLruNZzWFWrc5hwfAsfJBpylmSx3qj/6ag=;
	b=pCE31n6tcKQukUX8Ngkw0V8nJZAimSwwo5eLkaXOC647rJ9axNodHsgOmDXi6Qui5P
	Fqw4M+OIL642jtmeVxOuZyZfLd6+WUGQbY0w8ZAGh97mPhRRp87YzGk9bc3LsBjtXvSY
	Z0UojakBGWZgsRLUH9kCmKJpkI1f6TvnurdAqwSjBiAsHMKaU9Rqhc/v129GWVDhAl7r
	8TYEjrRxmlKoPjAJbJvOvvh1ewavdcA9NyfxTwXcfuv4PRlx0PFh5wcf06CIdbpUqoGL
	m/N/xjmVPJ1RQZkW5B0cwAEeeGPNSFdjEPkXhJhItDFWjZBMlzhnh7kQvMMR77I+1X9W
	tiBg==
X-Gm-Message-State: APjAAAX68XJbBBMxEpF/JAzxkHomGdo9FF9PoquSp52oCxLqPxyyqw4y
	xtuQ3uSg6G11S20jpIAlaIeuOw==
X-Google-Smtp-Source: APXvYqykkerpEBejv3Eh3Lj7zfBiChJ0RMJRcTlJ6Qxcup9uSjhe2UYyyrRX5G3W4IvCEytSY3nH+g==
X-Received: by 2002:a5d:6b12:: with SMTP id v18mr49526652wrw.306.1560243057852;
	Tue, 11 Jun 2019 01:50:57 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id s3sm2263319wmh.27.2019.06.11.01.50.56
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 11 Jun 2019 01:50:57 -0700 (PDT)
Message-ID: <b4ef68996131d5a09e26e597a5b9c76874a0b2a3.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: pokybuild@debian9-ty-1.yocto.io, yocto@yoctoproject.org
Date: Tue, 11 Jun 2019 09:50:55 +0100
In-Reply-To: <20190611033223.498F7E00D73@yocto-www.yoctoproject.org>
References: <20190611033223.498F7E00D73@yocto-www.yoctoproject.org>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Cc: otavio@ossystems.com.br, aaron.chun.yew.chan@intel.com,
	akuster808@gmail.com
Subject: Re: QA notification for completed autobuilder build (yocto-2.8_M1.rc2)
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
X-List-Received-Date: Tue, 11 Jun 2019 08:51:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2019-06-11 at 03:32 +0000, pokybuild@debian9-ty-1.yocto.io
wrote:
> A build flagged for QA (yocto-2.8_M1.rc2) was completed on the
> autobuilder and is available at:
> 
> 
>     https://autobuilder.yocto.io/pub/releases/yocto-2.8_M1.rc2
>

Some notes for QA:

There was a failure in this build in qemux86 oe-selftest. It looks to
be a race issue where qemu was shutting down. This needs a bug and
looking into but is a minor issue which wouldn't block the milestone
release or further QA.

There are three timeouts in ptest, acl, bluez5 (#13366) and mdadm
(#13368). These are also not going to block the milestone release. The
bluez5 issue is gcc9 related, mdadm was exposed by wider testing in
master. The acl issue needs a bug opening and investigation as that is
a regression.

There is a lot more testing happening under automation than in previous
builds, particularly on arm hosts/targets.

Cheers,

Richard


