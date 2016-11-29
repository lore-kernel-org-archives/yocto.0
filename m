Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA463E00C75; Tue, 29 Nov 2016 01:43:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB852E00C4F
	for <yocto@yoctoproject.org>; Tue, 29 Nov 2016 01:43:06 -0800 (PST)
Received: by mail-io0-f181.google.com with SMTP id a124so279683666ioe.2
	for <yocto@yoctoproject.org>; Tue, 29 Nov 2016 01:43:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=Mbvd6K7bnQ7Awd+sVoHh85RuvECqu7Lf6nDRDHMcY7w=;
	b=tna6sB0iSJ2x0X/HBxMbE7Dg908dQzvxhE9gNY46Wqc6KTZWl4RRymPKzHNDLCjEz7
	PNCO2D3k8MOtA9a0ybPOxTv8UyLkpNlxlR6ZuBAVOE9TDYMKXCM5ZeL5mIu22csyq4iv
	9BsPPGVBLx2K0ErGe0OfrUqlYVLnQv5bTkNQbBRRXXm8yHafwv8/FsGCzkK004rHLOQH
	nkB7bStvNN2i/KJl9B0Yq3rhYOn+6Ha49AOB4SF6c6OqiN51Q85i5vHO67RH4sZIuo0u
	8jYX08/dy4OWM3FKA5fsr0pLBxwerOeTiuk4hQ+j1WOev66nGwkBvoFwGgYbqq0SGZ6J
	Sp8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=Mbvd6K7bnQ7Awd+sVoHh85RuvECqu7Lf6nDRDHMcY7w=;
	b=GgQDWV21Zvr2cpUsLaH58vyCMpmR48ac5vflX1J3MnfaDveqMNiomVGd16Q0AKzNAe
	++AUlBS7Q7POIed8r0HCkElB7SsHSqMHDsI+8Nm0By11Y9IXHKhSe/CGHEhLeTSJQAoZ
	A5Mo0ND8L7Q3tQ5FUj9nMCoupR9lz+U9jXKbDJdiBk9cXk7WViBqUOdpNrl28U8MAm6n
	/IPVPw5HcxdAeYO/1oTq+cpNYd2cKI6wcMdNALTnJrxj76gKTQewEWiXG5oftvbsPNms
	/ilv9bkFzr3DjNF3j4THNhWgBO2oa6ve/OSp4ZnoTGDq9FZehFpoK6ZC5+ny0LU6oWOU
	JNUw==
X-Gm-Message-State: AKaTC00TzIo56stCSGTyRRHpkTeeNSRgIG99iaBIXSJJHX98DvzbK5Yt0gVahi09VP8KSwWr
X-Received: by 10.36.203.66 with SMTP id u63mr23047688itg.111.1480412585860;
	Tue, 29 Nov 2016 01:43:05 -0800 (PST)
Received: from pohly-mobl1 (p5DE8EEDB.dip0.t-ipconnect.de. [93.232.238.219])
	by smtp.gmail.com with ESMTPSA id
	n206sm1024287itg.1.2016.11.29.01.43.03
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 29 Nov 2016 01:43:04 -0800 (PST)
Message-ID: <1480412581.6873.257.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, Saul Wold
	<sgw@linux.intel.com>
Date: Tue, 29 Nov 2016 10:43:01 +0100
In-Reply-To: <1515265.VzsD3kXDNN@peggleto-mobl.ger.corp.intel.com>
References: <91b5be87e9efb9b3b22d86fa7435762c@cweb29.nm.nhnsystem.com>
	<1515265.VzsD3kXDNN@peggleto-mobl.ger.corp.intel.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: What criteria are categorized? (tmp/work/...)
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
X-List-Received-Date: Tue, 29 Nov 2016 09:43:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2016-11-29 at 17:15 +1300, Paul Eggleton wrote:
> On Tue, 29 Nov 2016 11:47:40 윤영석 wrote:
> > After poky the build, i look at the tmp/work folder.
> > I can see these folders.
> > All-poky-linux / i586-poky-linux / qemux86-poky-linux / x86_64-linux /
> > 
> > What is the classification of each folder?
> 
> That directory level corresponds to MULTIMACH_TARGET_SYS, whose value is
> "${PACKAGE_ARCH}${TARGET_VENDOR}-${TARGET_OS}". The first variable
> PACKAGE_ARCH has a default value of "${TUNE_PKGARCH}" which makes a recipe
> architecture-specific by default. PACKAGE_ARCH is often set in the recipe
> in two common cases:
> 
> 1) Recipes which are packaging something that is not architecture-specific -
> these should "inherit allarch" which will automatically set
> PACKAGE_ARCH = "all". Note that in this situation you should use
> "inherit allarch" rather than setting PACKAGE_ARCH yourself since that is
> not the only thing that the allarch class takes care of.
> 
> 2) Recipes which are packaging something that is machine-specific - these
> should set PACKAGE_ARCH = "${MACHINE_ARCH}".

That's three cases - "all archictures", "machine", "target archicture",
which makes sense. For example, linux-yocto and base-files are
machine-specific and thus in qemux86-poky-linux.

But when using meta-intel and MACHINE=intel-corei7-64 (at least in Ostro
OS, haven't tried with Poky), the kernel ends up in
corei7-64-intel-common-ostro-linux together with gnu-efi and
intel-microcode, while base-files and the other machine specific recipes
are in intel_corei7_64-ostro-linux.

For qemux86 and linux-yocto, PACKAGE_ARCH=MACHINE_ARCH="qemux86".
For intel-corei7-64 and linux-yocto,
PACKAGE_ARCH=INTEL_COMMON_PACKAGE_ARCH="corei7-64-intel-common" (from
meta-intel/conf/machine/include/intel-common-pkgarch.inc).

I suppose that's because the same kernel can be used by multiple
machines, so there's basically a forth level of sharing.

I just wish that the naming of the resulting directories was a bit more
intuitive. I'm constantly wondering what's in
"corei7-64-intel-common-ostro-linux" and what's in
"intel_corei7_64-ostro-linux" :-/

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




