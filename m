Return-Path: <pxmyhdev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 599D5E00DA3; Tue, 11 Oct 2016 08:22:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pxmyhdev[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.173 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.173 listed in list.dnswl.org]
Received: from mail-yw0-f173.google.com (mail-yw0-f173.google.com
	[209.85.161.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CB7CE00D95
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2016 08:22:51 -0700 (PDT)
Received: by mail-yw0-f173.google.com with SMTP id t192so15062792ywf.0
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2016 08:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=583qliHBpiVkQFBs5V6dqE8brxX4ORJaI8RL5KRCmlo=;
	b=A+Q61iO/XKUDlG9+dbeFwrnF02B913zbCcRCH6WhjHW4SairyN0Lz5tHXGkFjxHtKK
	eCQoOiPoOvLiZTgIKR4/f+NURstD/AXZFUxHN8/C5azHCFqJBu2SgGUevqwxpdBa25uG
	E9hm0rtIcP8R4Z2uw1nmWUWabl9VlJQZ/+hiHcNfeHHzH3jEmB0myckM83pnWCwquMHF
	vtblDDivP+AMnuUx/S25lix8H3No0k1NTi7k2nAEdlopPNDIBA0hewH2RofEvvrrVzZL
	FSSguWZWCSfh8BmS318/WgZ7z7HJ7fcSHbWKYzUozR4ABHHpldpH8qJddRiuV0xmiu0V
	hQAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=583qliHBpiVkQFBs5V6dqE8brxX4ORJaI8RL5KRCmlo=;
	b=JZmw09ibwm6iB1K8nm4abi6Vva1D2cw7IQAxJRo6PKZwWZyIZtfyAFOvCt+t8G00J0
	4VpHpGZyLJsHokqzEa/a/IZ990zfySE1i+iUUN+/dFMTEnqwCLmLSM5u4iiCEnKCyWSP
	mw6Ci6GhpYXqPKNvHWY10v37AroZEcU+FBfhbkUOg8/PzA8m35a7YndWXL3yvbjNPuZR
	hnvTveiuAo3Llan3DLm394bfklATiPLhlI+oK5vqiAiTxpUNvHTtNUFYMVK6tJ+/syhi
	Gdse1SnyTrNEZzuIkPAPL1I1XVXrNf1KFvN4WEQftQsyvGjdEtdnH+Ed4nJX0yGl71AJ
	7nlw==
X-Gm-Message-State: AA6/9Rnw3l4aui1Vb45j5zbnfZHYnwy1Qrd8WljlRIB2Qj7p2VSUmteYlCw8I1TK3m1taNfmZAS7E3Mruu+cRg==
X-Received: by 10.13.243.196 with SMTP id c187mr3867495ywf.137.1476199370524; 
	Tue, 11 Oct 2016 08:22:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.163.198 with HTTP; Tue, 11 Oct 2016 08:22:50 -0700 (PDT)
From: Michael Hu <pxmyhdev@gmail.com>
Date: Tue, 11 Oct 2016 11:22:50 -0400
Message-ID: <CAPYQ8X5E_vyyr-st5xs1seePzwr9J6HmrvVsLO12nB920Qt=eg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Proper way of rebuilding kernel image
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
X-List-Received-Date: Tue, 11 Oct 2016 15:22:56 -0000
Content-Type: multipart/alternative; boundary=94eb2c0362a4190e6e053e98734b

--94eb2c0362a4190e6e053e98734b
Content-Type: text/plain; charset=UTF-8

Hi,

I am compiling Yocto kernel image with:
* a third party's "in-tree" kernel configuration
* the same third party's BSP (which has some further kernel configurations
as well)
* my own kernel configuration fragments for my project on top of the above
two

What I found was if I make a small change to my own kernel config fragment,
e.g. just add an empty line or add a comment, *don't *do a bitbake clean,
and bitbake the kernel image again, the "in-tree" kernel configuration
doesn't get picked up, therefore the new kernel's .config file is
drastically different than a clean build.

But If I do a bitbake clean kernel recipe and bitbake the kernel image
again, I get the same .config file both times.

The way I specify "in-tree" kernel configuration:
KBUILD_DEFCONFIG_machine_name ?= "<machine_name>_defconfig"
KCONFIG_MODE_machine_name ?="--alldefconfig"

What's the proper way of rebuilding kernel image once recipe has changes?
Seems like doing a cleanall build every time takes a lot of time and
inefficient.

Thanks!
.M.

--94eb2c0362a4190e6e053e98734b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I am compiling Yocto kernel image w=
ith:</div><div>* a third party&#39;s &quot;in-tree&quot; kernel configurati=
on</div><div>* the same third party&#39;s BSP (which has some further kerne=
l configurations as well)</div><div>* my own kernel configuration fragments=
 for my project on top of the above two</div><div><br></div><div>What I fou=
nd was if I make a small change to my own kernel config fragment, e.g. just=
 add an empty line or add a comment, <b>don&#39;t </b>do a bitbake clean, a=
nd bitbake the kernel image again, the &quot;in-tree&quot; kernel configura=
tion doesn&#39;t get picked up, therefore the new kernel&#39;s .config file=
 is drastically different than a clean build.=C2=A0</div><div><br></div><di=
v>But If I do a bitbake clean kernel recipe and bitbake the kernel image ag=
ain, I get the same .config file both times.</div><div><br></div><div>The w=
ay I specify &quot;in-tree&quot; kernel configuration:</div><div>KBUILD_DEF=
CONFIG_machine_name ?=3D &quot;&lt;machine_name&gt;_defconfig&quot;</div><d=
iv>KCONFIG_MODE_machine_name ?=3D&quot;--alldefconfig&quot;</div><div><br><=
/div><div>What&#39;s the proper way of rebuilding kernel image once recipe =
has changes? Seems like doing a cleanall build every time takes a lot of ti=
me and inefficient.</div><div><br></div><div>Thanks!</div><div>.M.</div></d=
iv>

--94eb2c0362a4190e6e053e98734b--
