Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D05FE00ABE; Sat, 15 Oct 2016 09:20:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.42 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8811E00A85
	for <yocto@yoctoproject.org>; Sat, 15 Oct 2016 09:20:24 -0700 (PDT)
Received: by mail-wm0-f42.google.com with SMTP id c78so35383019wme.0
	for <yocto@yoctoproject.org>; Sat, 15 Oct 2016 09:20:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=z85+jbhxKC1kwQKzDPTBycEJka2RtCVuayNocghB3WA=;
	b=aFVI05z0bMagHys0RFatKshpjcp0mMRlphL0X65L6GaAIr68nsZOZdb8pVR5uXWaPZ
	wtuibLMfVebhtHEYHCCrGZwljA5foSsPuJ1JAnhLTz0Bp4pE6XqT/KLTaeTFZR3A4yF1
	OvPiBT9ZqGMtGkb8W61pII62gUmnCZqo67dfaYdjzkgdmlOlPEKv068QspDgxLesW0jA
	8l3cLvc0HnxKnCp4omowJQb4tfSMlc/0NLSVc8Yn6YmVgrTzk0jDTO5EiNGUkpz0Rnd0
	2uEJEsaYa7wvHqliV4EYs5ZsNZ9sFau+GNnXzBOaDb+2oPO2mQK4/O/oGHChDOsnhiki
	xt1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=z85+jbhxKC1kwQKzDPTBycEJka2RtCVuayNocghB3WA=;
	b=NwYoYW60Hk/bBnZqkIbaKqVwuklE9hUVhEtVNhIDM2WmO+bCIP/vNT5eUG3avO3oTX
	0r+V0oPVhXo9iKBnk5g7eWPJxWYK/Qlfwzsj6PsuTHoQ+Qt69h7Rbo7rOO85uopkEG0D
	0RnQ5aIEJFos6MIARsVykQSiBb+PIbyEDCpfSvBgUtxN9YzMNMJ/ZxVHzGKkdhC0byAP
	6l552ItPACiGtw2Ei0Mx2Yq6ZiTtvNW76C5rlRsZ04iur9E+xpRVsYcGT22ITSCmbC17
	SYwGGMRuo9Lb0x1XWXutjjPDKs0sn37RNdVqLXS8+PeL+MYmhYGYUNqcixQETfI/cl+u
	OVOQ==
X-Gm-Message-State: AA6/9RnPHlvPZpwswwfd0Gnn+/oaGVHr43v4QvSqgXl6GjIs9Npw3s5QFoMhUT5nHHkOM4BFXLuWSTcI7h+aQg==
X-Received: by 10.28.16.65 with SMTP id 62mr2296499wmq.130.1476548423299; Sat,
	15 Oct 2016 09:20:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.33.68 with HTTP; Sat, 15 Oct 2016 09:20:22 -0700 (PDT)
X-Originating-IP: [148.252.129.169]
Received: by 10.28.33.68 with HTTP; Sat, 15 Oct 2016 09:20:22 -0700 (PDT)
In-Reply-To: <DUB123-W14EEF2F0CE6599A006C6E3F9DB0@phx.gbl>
References: <DUB123-W14EEF2F0CE6599A006C6E3F9DB0@phx.gbl>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sat, 15 Oct 2016 17:20:22 +0100
Message-ID: <CAK18fxGSoUfuem-eE2j78ngOPV02Me+tdkcHA6VpxiddC_jyaA@mail.gmail.com>
To: Seb But <stm32@hotmail.co.uk>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] build rpi-test-image for raspberrypi3
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
X-List-Received-Date: Sat, 15 Oct 2016 16:20:28 -0000
Content-Type: multipart/alternative; boundary=001a114721ae43d4cd053ee9b8aa

--001a114721ae43d4cd053ee9b8aa
Content-Type: text/plain; charset=UTF-8

On 14 Oct 2016 18:01, "Seb But" <stm32@hotmail.co.uk> wrote:
>
> Hello,
>
> I am trying to build the rpi-test-image for a raspberrypi3 using the Poky
and raspberrypi master branches.
>
> Below are the layers I include in my 'bblayers.conf':
> ${BSPDIR}/master/poky/meta \
> ${BSPDIR}/master/poky/meta-poky \
> ${BSPDIR}/master/poky/meta-yocto-bsp \
> ${BSPDIR}/master/meta-openembedded/meta-oe \
> ${BSPDIR}/master/meta-openembedded/meta-webserver \
> ${BSPDIR}/master/meta-openembedded/meta-networking \
> ${BSPDIR}/master/meta-openembedded/meta-multimedia \
> ${BSPDIR}/master/meta-openembedded/meta-python \
> ${BSPDIR}/master/meta-raspberrypi \
>
> And I add the following to my 'local.conf':
> MACHINE ??= "raspberrypi3"
> LICENSE_FLAGS_WHITELIST = "commercial"
>
>
> However, when I launch 'bitbake rpi-test-image', I get the following
error:
> Parsing recipes: 100%
|########################################################################################################################################################|
Time: 0:00:53
> Parsing of 1961 .bb files complete (0 cached, 1961 parsed). 2647 targets,
134 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing PROVIDES 'samba' (but
/home/seb/workspace/Yocto/meta_sources/master/meta-raspberrypi/recipes-multimedia/omxplayer/
omxplayer_git.bb DEPENDS on or otherwise requires it)
> ERROR: samba was skipped: Recipe is blacklisted: BROKEN: fails to build
with new binutils-2.27

This is actually the root of the problem. Basically meta-oe decided to skip
this recipe. You can hack this in many ways:
1. Remove skip from samba recipe in meta-oe as it actually compiles just
fine (last time a checked)
2. Remove omxplayer from rpi package group.
3. Maybe we can make samba configurable in omxplayer and then havr or
deactivated by default.

> NOTE: Runtime target 'omxplayer' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['omxplayer', 'samba']
> NOTE: Runtime target 'packagegroup-rpi-test' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['packagegroup-rpi-test',
'omxplayer', 'samba']
> ERROR: Required build target 'rpi-test-image' has no buildable providers.
> Missing or unbuildable dependency chain was: ['rpi-test-image',
'packagegroup-rpi-test', 'omxplayer', 'samba']
>
>
> Would someone know what I am missing? When I use the Jethro branches for
a rasperrypi2, I have no problem.
>
> Thanks in advance
>
> Seb
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114721ae43d4cd053ee9b8aa
Content-Type: text/html; charset=UTF-8

<p dir="ltr"></p>
<p dir="ltr">On 14 Oct 2016 18:01, &quot;Seb But&quot; &lt;<a href="mailto:stm32@hotmail.co.uk">stm32@hotmail.co.uk</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello, <br>
&gt;<br>
&gt; I am trying to build the rpi-test-image for a raspberrypi3 using the Poky and raspberrypi master branches.<br>
&gt;<br>
&gt; Below are the layers I include in my &#39;bblayers.conf&#39;:<br>
&gt; ${BSPDIR}/master/poky/meta \<br>
&gt; ${BSPDIR}/master/poky/meta-poky \<br>
&gt; ${BSPDIR}/master/poky/meta-yocto-bsp \<br>
&gt; ${BSPDIR}/master/meta-openembedded/meta-oe \<br>
&gt; ${BSPDIR}/master/meta-openembedded/meta-webserver \<br>
&gt; ${BSPDIR}/master/meta-openembedded/meta-networking \<br>
&gt; ${BSPDIR}/master/meta-openembedded/meta-multimedia \<br>
&gt; ${BSPDIR}/master/meta-openembedded/meta-python \<br>
&gt; ${BSPDIR}/master/meta-raspberrypi \<br>
&gt;<br>
&gt; And I add the following to my &#39;local.conf&#39;:<br>
&gt; MACHINE ??= &quot;raspberrypi3&quot;<br>
&gt; LICENSE_FLAGS_WHITELIST = &quot;commercial&quot;<br>
&gt;<br>
&gt;<br>
&gt; However, when I launch &#39;bitbake rpi-test-image&#39;, I get the following error:<br>
&gt; Parsing recipes: 100% |########################################################################################################################################################| Time: 0:00:53<br>
&gt; Parsing of 1961 .bb files complete (0 cached, 1961 parsed). 2647 targets, 134 skipped, 0 masked, 0 errors.<br>
&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt; ERROR: Nothing PROVIDES &#39;samba&#39; (but /home/seb/workspace/Yocto/meta_sources/master/meta-raspberrypi/recipes-multimedia/omxplayer/<a href="http://omxplayer_git.bb">omxplayer_git.bb</a> DEPENDS on or otherwise requires it)<br>
&gt; ERROR: samba was skipped: Recipe is blacklisted: BROKEN: fails to build with new binutils-2.27</p>
<p dir="ltr">This is actually the root of the problem. Basically meta-oe decided to skip this recipe. You can hack this in many ways:<br>
1. Remove skip from samba recipe in meta-oe as it actually compiles just fine (last time a checked)<br>
2. Remove omxplayer from rpi package group.<br>
3. Maybe we can make samba configurable in omxplayer and then havr or deactivated by default.</p>
<p dir="ltr">&gt; NOTE: Runtime target &#39;omxplayer&#39; is unbuildable, removing...<br>
&gt; Missing or unbuildable dependency chain was: [&#39;omxplayer&#39;, &#39;samba&#39;]<br>
&gt; NOTE: Runtime target &#39;packagegroup-rpi-test&#39; is unbuildable, removing...<br>
&gt; Missing or unbuildable dependency chain was: [&#39;packagegroup-rpi-test&#39;, &#39;omxplayer&#39;, &#39;samba&#39;]<br>
&gt; ERROR: Required build target &#39;rpi-test-image&#39; has no buildable providers.<br>
&gt; Missing or unbuildable dependency chain was: [&#39;rpi-test-image&#39;, &#39;packagegroup-rpi-test&#39;, &#39;omxplayer&#39;, &#39;samba&#39;]<br>
&gt;<br>
&gt;<br>
&gt; Would someone know what I am missing? When I use the Jethro branches for a rasperrypi2, I have no problem.<br>
&gt;<br>
&gt; Thanks in advance<br>
&gt;<br>
&gt; Seb<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
&gt; <a href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;</p>

--001a114721ae43d4cd053ee9b8aa--
