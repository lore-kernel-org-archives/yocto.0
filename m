Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 364B4E00942; Wed,  1 Feb 2017 02:48:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.41 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C229E008F3
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2017 02:48:21 -0800 (PST)
Received: by mail-it0-f41.google.com with SMTP id r185so14557235ita.0
	for <yocto@yoctoproject.org>; Wed, 01 Feb 2017 02:48:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=R+grl6KFNpHeBhH1dXD3VQe9niEqTLHvou1+8YTrUIc=;
	b=J8ZPyqXDRnDPw8Zk5TFrRhop73Cc1bpri84OwTj0jhX6SILJFWAHY/9RyA/k05IoEx
	PwTjrc/evRZufjRi1VEsY3QW2X3nqBp3pK6q6Ukm6TkmOHDjvpcDxHXaBCnzvMHHDL9m
	z/+e3e+RjrA2fGiNtM11L5BQvcqmUXCotnJ6H7Cg80zNL34TccUk9Q9y0Lki9hVSVxTD
	F9RJGW4PzjrInc06DREeCIPNu0+jvhlIzRncrZLFx8Ga76Y4ljuT4unpmmFRKr89DvbG
	CAb2T8ZRlhKktdwChhiZHdBdWVnNDEqeix5ZT7YmHCaBJgwew/oLOGD8j5ebiBU/cm2Y
	Ikiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=R+grl6KFNpHeBhH1dXD3VQe9niEqTLHvou1+8YTrUIc=;
	b=oqlIG/MPoS9fj/evZzOvs/1JmqORZD2WrRnxvAJLsuH2TmDLj+baUa7ZAKbGXPtUJu
	DR6IgfyScNUuacx/L22cyMLR8lXjAKs9tW+PbseIPv9x/MI33c5GwTr/9uGhS5cPbxO8
	KztNNdhKNotYbLDkiz5dLfIzCE8hvFzYPMx4lD7AhV0jw+AdGC0+rnguyqDSh7299h75
	KQ8F8V16bypcdwJEkeb2n2fywbGfef0/bdQIlNLrHefuSsHef1wkWTmzZibmpb2GHPdY
	+QmYybhfiFNH+VZeVMiyF7GO/mFhKL5jsr/OlKqd41ZT8p+rqsM80TgMdjUL7wZ8n1/J
	U/YQ==
X-Gm-Message-State: AIkVDXLTPcbFGzJOb+j7kY5Sjuk9RKssbvjlPqq/i+oYH7cVrJnRvpPQcJU8iS1XS/nHVeQ/
X-Received: by 10.36.181.3 with SMTP id v3mr1815338ite.45.1485946101115;
	Wed, 01 Feb 2017 02:48:21 -0800 (PST)
Received: from pohly-mobl1 (p5DE8DF4F.dip0.t-ipconnect.de. [93.232.223.79])
	by smtp.gmail.com with ESMTPSA id
	i184sm7021829itf.15.2017.02.01.02.48.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 01 Feb 2017 02:48:20 -0800 (PST)
Message-ID: <1485946097.20333.193.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: colin.helliwell@ln-systems.com
Date: Wed, 01 Feb 2017 11:48:17 +0100
In-Reply-To: <04fb01d27c77$613d3780$23b7a680$@ln-systems.com>
References: <04fb01d27c77$613d3780$23b7a680$@ln-systems.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: DEPENDS only half working
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
X-List-Received-Date: Wed, 01 Feb 2017 10:48:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2017-02-01 at 10:38 +0000, colin.helliwell@ln-systems.com wrote:
> I’ve got an odd problem with a pair of recipes:
> 
> App ‘bar’ uses ‘libfoo’, so I’ve set a DEPENDS in bar.bb – I can see
> this is being half picked up, because ‘bitbake bar’ shows both builds
> being started. However bar isn’t waiting on libfoo – bar tries to
> compile before libfoo has even finished configuring, let alone
> compiled and installed it’s header (foo_lib.h) into sysroot.
> 
> I think the recipes are probably otherwise correct - if I ‘bitbake
> libfoo’ then ‘bitbake bar’ then all works.
> 
> I’ve looked at some simple lib recipes within poky (e.g.
> libwebp_0.4.3.bb / webkitgtk_2.8.5.bb), and can’t spot anything
> wrong/missing. Not sure if libfoo should have any ‘install’ or similar
> sections, or any FILES_ settings, but I was [naively…?] hoping that
> the inherited classes will be sorting out all that generic kinda
> stuff.

[...]

> DEPENDS_${PN} = "libfoo"
  ^^^^^^^^^^^^^
This needs to be just "DEPENDS". DEPENDS sets the dependencies for the
compilation of the entire recipe, whereas...

> RDEPENDS_${PN} = "libfoo"

... RDEPENDS is for runtime dependencies specific packages and thus has
_<package name> as suffix ($PN = bar in this case).

libfoo gets compiled because of this entry, but because it is a runtime
dependency, compilation of bar doesn't wait for libfoo's completion.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




