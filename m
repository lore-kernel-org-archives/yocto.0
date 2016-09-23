Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A9E7E00CA1; Fri, 23 Sep 2016 15:44:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, MISSING_HEADERS,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.178 listed in list.dnswl.org]
	*  1.0 MISSING_HEADERS Missing To: header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f178.google.com (mail-ua0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F925E00951
	for <yocto@yoctoproject.org>; Fri, 23 Sep 2016 15:44:27 -0700 (PDT)
Received: by mail-ua0-f178.google.com with SMTP id 15so59548354uai.3
	for <yocto@yoctoproject.org>; Fri, 23 Sep 2016 15:44:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:cc; 
	bh=pliV9y68z+fzG2rWI0EncSWO/RRy5GkE2+FYy1kDS2M=;
	b=WKB/zHUjXqb0DtC8FS74WqvoUfRGrFVePXC0ugwqm8uUFmweH71S/wP/ci/uGBbVPL
	VBIerDR/MnpoKpBTXODaZ1CFhESFiE6emRJCIaYFQlLBqYpeSsDM1AIvhG5FWGkqnv4t
	4OIi/m2/ULNRXfSYezpwSwEUUPHMRpKtdGUQCmgGkm5RKfrT1J9+irKHBlgeZDv3S0fp
	GThZmBYn70WtolOH0ntdFxqk00Q124SNz3WPdxIqaIZKAbNZjtCEq4ejILylInV/i5/D
	5IBupxXhERHxyhpoF0/vjxMkvev99R748HVeq9RV2JNHEd0TDvGgeAjjGDjIlqEX/sjg
	cQfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:cc;
	bh=pliV9y68z+fzG2rWI0EncSWO/RRy5GkE2+FYy1kDS2M=;
	b=IMFPbh9W8k2+jAgJ7Wm+AZKOyjYq8pF0ZbmqOREkJ7bfbR2S/nR5U56WefNWjnAGg1
	58kh3Hb9CBMp6R+Vd3o2p6x74z0FeLcIjXCYVxFB9Ph+QczF2AdsSDiK8BqZpdS2lBBg
	BQxRYW0SeL1UXZfmCuxiVauIW/4SPSaumIFG+qzQK1NtHvlDlcS1xS92r4u9pbGT2cwo
	butmWIJxcmKVmRC7LgepzZnKQJasXUIBZX6Cp07sbJaCec7XxYjU5eq3Q1LXhMmj1HyQ
	fmd0AiKQ05W67bqYYAVF0TPDglezTBfNPQFDDbwpEBbTokP0eeADsnznmFu+kIqJNbbh
	6r0A==
X-Gm-Message-State: AA6/9Rm/vbpqVgKhUFK72wlFBt+lQzmYSig6iOALLdCIUEyIIwPlu46dIoxzmDHn3rhkDCDbHuTvYNJ8yNB3gg==
X-Received: by 10.159.36.16 with SMTP id 16mt7036487uaq.80.1474670666312; Fri,
	23 Sep 2016 15:44:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.35.72 with HTTP; Fri, 23 Sep 2016 15:44:25 -0700 (PDT)
In-Reply-To: <1474661403062.36694@seescan.com>
References: <HE1PR01MB188363A66CEC33154BFAAA9492C90@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<CAHp02QN12xqYjCTD1wHWKEsvt0z9rmo01qsQfwYfYZGxtNU9dQ@mail.gmail.com>
	<HE1PR01MB1883F7F4A2DB619936A62D5492C80@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<1474661403062.36694@seescan.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Fri, 23 Sep 2016 19:44:25 -0300
Message-ID: <CAF3SDA7u6utik_TYxw_Qi9i80jOSbePXzJ7L4TxPeahE2+JYNw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to add my own c++ project into a Yocto distro
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
X-List-Received-Date: Fri, 23 Sep 2016 22:44:30 -0000
Content-Type: text/plain; charset=UTF-8

I'm building libraries at my work with plain makefiles and getting the
code from SVN. There is no secret just follow the docs... One thing to
know is about compiling using run_oemake instead of simple "make" at
do_compile and that you may want to use CFLAGS_prefix = "some flags".
Dependencies should be added to DEPENDS_${PN} and running dependencies
to RDEPEND. Also you should remeber that Yocto will try to run
parallel builds so is a nice testing running make -j4 or make -j8 or
whatever you want, just to make sure that your Makefile is supporting
parallel building fine. If you want to inhibit parallel build at all
you can use .NOPARALLEL pseudo target, but this may make things
slower. I hope this helps,

Best regards and good lucky!

2016-09-23 17:10 GMT-03:00 Fred Ollinger <Fred.Ollinger@seescan.com>:
> Here's how to write a recipe:
>
>
> http://www.yoctoproject.org/docs/1.6/dev-manual/dev-manual.html#new-recipe-writing-a-new-recipe
>
>
> When we started, we also had custom Makefiles. However, we found it was easier to add our recipes to automake before making a bitbake recipe.
>
> Automake is a challenge to get started, but worth learning.
>
> I don't regret our move to it.
>
> There are other options that work equally in yocto, though, like cmake.
>
>
> https://www.gnu.org/software/automake/manual/html_node/Hello-World.html
>
> ________________________________
> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on behalf of Karim ATIKI <karim_atiki@hotmail.com>
> Sent: Friday, September 23, 2016 12:53 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] How to add my own c++ project into a Yocto distro
>
>
> Hi all,
>
>
> I have setup a Poky distribution based on a core-image-sato image for both RaspberryPi and Toradex Colibri T20.
>
> I have an X11 environment working fine.
>
>
> Right now, I need to compile our software we developped.
>
> I basically need to fetch SVN repositories and finally to launch a makefile to get everyting work.
>
> The makefile is however not based on autotools. It's a custom makefiles with regular dependencies.
>
>
> I just don't know how to achieve this step in Yocto ?
>
> Should I add a recipe ?
>
> Is there a link that describes what I need to achieve ?
>
>
> Thanks
>
>
> Karim
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Do or do not. There is no try"
  Yoda Master

