Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06415E00DAB; Fri,  6 Oct 2017 14:47:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72661E00D8F
	for <yocto@yoctoproject.org>; Fri,  6 Oct 2017 14:47:24 -0700 (PDT)
Received: by mail-pg0-f66.google.com with SMTP id u27so19308437pgn.1
	for <yocto@yoctoproject.org>; Fri, 06 Oct 2017 14:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=pn5ygvk+A42AiBk20kbCDPdwEC6V2s8ONwIW5wEmq1A=;
	b=uxIbzr7Zy3XfvHNxYnFynBdMdKydAz8VG2rjWjTMg6XYhkDHoM8c1Bh/0Q71qJwm2p
	f4pPABtlk78sD5ur9Kh86nJUwA/QXC0Q3m38W4bVTIFqBjr9zOQctc8dsF2yJa1jSEIZ
	aU2i33BZTC7s+G4goQ7Wc64Kz1cPGwma//5RDLmBQjf8oQomZ8JfBIHTr3/+4HFBzLDr
	965pt372BM4VM9QGgPBw/o8WsvzwbOUzJ26K8eKbJVct3cu72M4Z2AZQr6TFEvg5+N6m
	PPSpsl8/eFdIDMuJb/w0knLLD8rTUM3afZbCNf+SoKUtTSuCrsVpbzBUaYVL6TTrlmvt
	XEIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=pn5ygvk+A42AiBk20kbCDPdwEC6V2s8ONwIW5wEmq1A=;
	b=dQxLUG6aXQR061uQwm7L7YaW6dMjMV3SEdj5eNNZoWyxJ+zi2sNeIs2p/yX9kgPMlV
	l2h86R7rzI4la2arTIb5x8beXr97IiIP+zxLMs9AfDSIvB1rcpWLLkCxnVrgH/mWtCoC
	5Kk7KPbiNr6SsQTtEHDN4pb+P6pb6U1kYFqPa74Jl/+Av2JN5k3m1vAG5QGFlVIuzLOM
	WtDBnE0rGMk1UcXMJKsdQJ+VCg561/eDU0MRo0nnzhRY7IG28s2tomSgknFvi4pHhu18
	uEqQd66T+aKaIclZY/PTd8DwLimcvOzLEw4pTurrAggonp3yaP0eQNtEURGXdWdaROt9
	2QBQ==
X-Gm-Message-State: AMCzsaXKDZ8xVwlzmJ6Q/tC8d+mPd3witEDM1+yY4tjHxZWy8aEBYCGi
	+H1JQC/P+XNDhStWrBqrhRb1OreaatNmo1mKoQw=
X-Google-Smtp-Source: AOwi7QAnu9muElI8XFwUgJTVP2p3Hb13vWCoLuxo4zbJpZlX5Yyftud7jbJ9Zz9/a0lZnCk5CA8GiAeweyVulcwhzZE=
X-Received: by 10.84.138.1 with SMTP id 1mr3070732plo.404.1507326444649; Fri,
	06 Oct 2017 14:47:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.135.23 with HTTP; Fri, 6 Oct 2017 14:46:54 -0700 (PDT)
In-Reply-To: <e1419f62-4eff-4853-7fd8-d1e4a60abd95@advancedtelematic.com>
References: <947c7792-92d4-780a-e3c5-19dc2fb00706@advancedtelematic.com>
	<CAMKF1sp-KnGeOLOkAdt6aX1b6+KdhpiUwGiLnCAS0-XE-_efUw@mail.gmail.com>
	<e1419f62-4eff-4853-7fd8-d1e4a60abd95@advancedtelematic.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 6 Oct 2017 14:46:54 -0700
Message-ID: <CAMKF1sq5iuSTw3m3Fd5cVkPMpy2HGOi6FCPsDykqJ2oiEyemLQ@mail.gmail.com>
To: Patrick Vacek <patrick@advancedtelematic.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Boost + Yocto
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
X-List-Received-Date: Fri, 06 Oct 2017 21:47:26 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Oct 6, 2017 at 7:56 AM, Patrick Vacek
<patrick@advancedtelematic.com> wrote:
> On 06.10.2017 15:36, Khem Raj wrote:
>> On Fri, Oct 6, 2017 at 5:05 AM, Patrick Vacek
>> <patrick@advancedtelematic.com> wrote:
>>> Hello,
>>>
>>> I'm trying to understand how Yocto figures out which Boost libraries to
>>> install in an image. I've been studying the Boost recipes and it looks
>>> like RRECOMMENDS is used to specify all of the libraries, but yet my
>>> image only gets a subset of them. It's the subset that I typically need,
>>> so it's fine, but I want to understand how the process works.
>>>
>>> There's an additional tricky detail that got me looking into this. When
>>> I bitbake a recipe I've written which just lists "boost" in DEPENDS,
>>> running ldd the compiled executable does not appear to depend on a
>>> couple of the boost libraries that I'd specified in CMake (although it
>>> does depend on several others). Only the libraries that are specifically
>>> mentioned with ldd are installed in the image. However, if I manually
>>> cross-compile the same code via the native-sdk, ldd indicates that all
>>> the expected libraries are dependencies. As such, that executable will
>>> not be able to run on my device until I install the missing libraries.
>>> Oddly, those libraries are built with bitbake, but not installed! How
>>> does bitbake manage to remove some of these dependencies?
>>
>> it could be thst applications dependency detection mechanism is behaving
>> differently and presenting different set to linker.
>>
>> Secondly its possible that linker options in play are different e.g.
>> --as-needed and --copy-dt-needed-entries might be in play
>>
>
> It turns out that the troublesome boost libraries are not actually used
> after all! I haven't yet deduced if the sort of linker flags you
> mentioned are being used, but that may be at the root of the issue.
>
> What's now confusing me is why, after removing all references to the
> extraneous libraries, CMake still finds them and the cross-compiled
> binary still links against them. The only thought I've had so far is
> that they are a transitive dependency, although that seems unlikely.
> However, that's probably a matter to look into with CMake, not Yocto...

its possible that the faulty build is using a linker which defaults to
pulling libraries from DT_NEEDED segments

