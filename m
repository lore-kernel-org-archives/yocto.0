Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04AB9E00961; Fri,  5 May 2017 03:41:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.180 listed in dnsbl.sorbs.net]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E893E007EE
	for <yocto@yoctoproject.org>; Fri,  5 May 2017 03:41:25 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id f102so2893617ioi.2
	for <yocto@yoctoproject.org>; Fri, 05 May 2017 03:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=ymXJ/Op7aZTY778AZsJOIJLHLcTun0VO74yiy8yudH4=;
	b=otU62XRIXOSzonel2gZ3XRyfmTBuKU8lmFBoEzGNmTpneGX7XnXKJ+TgE1zSVvXECA
	DnvoFh4joTjxgDoyz8IJZPJn239mSt/dGhrJB/qMQIvxhqfRZKraBSF7BRpn2ZUP2+FH
	pWc2BzTAGQnYxZTM7UGviamFoTE/R9hBMvCASVxjeV0KKVMFEX3lJ4Sw8OpfJWRPNpC6
	6ZZgnZuqtlvH5dveor/8hbfIGUACVV1LYdMTMDOcpC3tJ51OlQbAoK/N6UCFKdEsXjgm
	DPZWq4cCGdP+aN47+OLMs+fL2nrJqxt/cvBVcgz7b0rdQ3NBNi5ApWHF44owx3Qc+q35
	t9YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=ymXJ/Op7aZTY778AZsJOIJLHLcTun0VO74yiy8yudH4=;
	b=UIzn98+ysJE8wamGeoObcvpvQ7i3xkXAR7FVeOtoYCItayvdY4GqymezX9ReaqdwV9
	AuSgrR6+K7Me8r7g2+QJyTcLM9ZIMcrugA0Tf+7tc7QxYgoJJQP1996t3M4WjmXPQhvJ
	A5IY8vAdxcC4ct8h2P21ujz2tQjBuE6g1UfC4gu8SFR/OGDeT4SOUsITeRKLPgFpGk10
	bYiCrJbyRO3TGh1zk/vIo0FUWq1lglAvrDmD1zM6+w/OifQdWNg9Pzb87+wrwy+1DMus
	aJiQ1JY2tJNHctb8HnBP6+vOG81yTHzsq1MWPBi6lN8sZCAk6nLPWzwmlBvq3BxEKqCW
	Na8w==
X-Gm-Message-State: AN3rC/4/f4/jl0OS7JKgiyxWx3Uc1atbIdKL8fRKSvCP5VCTUMuRnWrC
	sI8jspa25yg1zH5Uw2I=
X-Received: by 10.107.184.9 with SMTP id i9mr16002413iof.153.1493980885091;
	Fri, 05 May 2017 03:41:25 -0700 (PDT)
Received: from pohly-mobl1 (p5DE8E982.dip0.t-ipconnect.de. [93.232.233.130])
	by smtp.gmail.com with ESMTPSA id
	f37sm9674741ioi.17.2017.05.05.03.41.23
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 05 May 2017 03:41:24 -0700 (PDT)
Message-ID: <1493980881.4241.305.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Dominig Ar Foll <dominig.arfoll@fridu.net>
Date: Fri, 05 May 2017 12:41:21 +0200
In-Reply-To: <CADG2P4U7wOSsHwB0Wt3nzejWvRi5h2TOLFB9TcrK+b7pNYje-A@mail.gmail.com>
References: <CADG2P4U7wOSsHwB0Wt3nzejWvRi5h2TOLFB9TcrK+b7pNYje-A@mail.gmail.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Enabling tpm from meta-security for AGL
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
X-List-Received-Date: Fri, 05 May 2017 10:41:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2017-05-05 at 12:12 +0200, Dominig Ar Foll wrote:
> Hello,
> 
> I am trying to enable tpm on an Intel target using yocto (morty) from
> meta-security
> 
> When I activate the tpm-tools-2.0 feature in my configuration, I have
> a compilation error (see log bellow)
> Search for line:
> | /usr/src/debug/glibc/2.24-r0/git/csu/../sysdeps/x86_64/start.S:104:
> undefined reference to `main'

g++ ends up trying to link an executable instead of a shared objection.
If I remember correctly, -fstack-protector-strong in CFLAGS causes that.
The order of parameters must be ${CFLAGS) $(LDFLAGS).

I've tried with meta-security master and it doesn't happen there, so
perhaps it was already fixed.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




