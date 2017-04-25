Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4400FE00AE4; Tue, 25 Apr 2017 11:23:56 -0700 (PDT)
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
	*      [74.125.82.53 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3A39E00A31
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 11:23:55 -0700 (PDT)
Received: by mail-wm0-f53.google.com with SMTP id r190so104455000wme.1
	for <yocto@yoctoproject.org>; Tue, 25 Apr 2017 11:23:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=b9+x1pknOWplVlv2X9/ZEhnrDrCdFrnjivWTINtz5Fk=;
	b=M40GZ31hRptoR5Iirx1jvpX3XCA+V+RitDowvregJMnvZNbp6mn34M3T54O8cDPizi
	EQgekwvPlMcxtUoGTAXmYRCbY44lk2o959FX+3cFRVxM6SNNOCqPNNHz+LiZEyeUzqyr
	nx6Du5nl0K0QqtsoTZ0aS5Kjsllp+slInHWtR1I/q821jzEIRzZIUsCONMOPNdNCbB/t
	qUSxGLnCPhTYa7mr+GNCRxSMhmCe+GJ533yOH2va54h05Tit2J3CHvVx/2qx9/O1vCOd
	H/6jufQy5jl0yhtstmEBqmL5VSbNONcHtUCxFXQipTZw6V53UOohuD2CVnT+QjKJX42m
	2ZIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=b9+x1pknOWplVlv2X9/ZEhnrDrCdFrnjivWTINtz5Fk=;
	b=MMtPRrAShVRqVS4SvPoSzAVwpQFRqb5uJjf5HJaizFW8vlbbMjhNmOQWq4qn5BHPO1
	8s+wZDH4xsB4yzUNblbm5hn/nmkcAuKFzXCuOozWyfBAis7WKXfQMddgcgkHXGF20J4y
	ocdHHvcVTfNOub4JScTT+RMVVHfOW3V9/ncIIRKhfrxqTftqcDqG/aotZP/vX7uDhyXW
	Zst0YrUb/cazU9UtTl2/GIrLUYBx0zH8DNasQQxIv0oL4FbmRuZobZiTPZwmU5NNj9py
	RXFbpK2M5C+k1eRGeQkNQPp6I1zCYtwLFlrRFKGUMehKkqgQ99Da1ceNja81gWTaVJ9Z
	LUKg==
X-Gm-Message-State: AN3rC/7ufqqR0y4gK2hKvIEm6L3nEciWf05r3p8RFa/xLKdwdoKTUXLQ
	3RnaDrgFgtvGDIh3gmO+DiUZ7EZpFA==
X-Received: by 10.80.153.194 with SMTP id n2mr6473543edb.42.1493144634246;
	Tue, 25 Apr 2017 11:23:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.180.141 with HTTP; Tue, 25 Apr 2017 11:23:23 -0700 (PDT)
In-Reply-To: <CAOsmwBSu_Z+B0w_=-MgTC0D_7djXJqau+Yn=cf5XYDvqqT-T7g@mail.gmail.com>
References: <CAOsmwBS1n4eayjhZZZZ4-RpotTSryiDOEA-xRJK59aR-ypbxEw@mail.gmail.com>
	<CAMKF1sp4_2eLn=xx3=C5VRquVhZe4hz_dovxsbJp0PDtVFtYiw@mail.gmail.com>
	<CAOsmwBSu_Z+B0w_=-MgTC0D_7djXJqau+Yn=cf5XYDvqqT-T7g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 25 Apr 2017 11:23:23 -0700
Message-ID: <CAMKF1soGz9QK-y4G2Ghw5oDojVdAPHR3VWPW5A_xsNobDVH_Cw@mail.gmail.com>
To: Alvaro Garcia <maxpowel@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem with mesa and nvidia
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
X-List-Received-Date: Tue, 25 Apr 2017 18:23:56 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Apr 25, 2017 at 11:15 AM, Alvaro Garcia <maxpowel@gmail.com> wrote:
> Hi! This worked perfectly!
>
> But now I have the following problem:
> If I set prefered virtual/libgl as my nvidia recipe, then mesa is not
> installed and when xorg-xserver is compiling the library libepoxy cannot
> compile because of: No package 'egl' found (because this is provided by mesa
> I guess)
> If I set prefered virtual/libgl as default (mesa) some files are in conflict
> (The recipe nvidia-proprietary is trying to install files into a shared area
> when those files already exist) because they are provided by mesa and my
> nvidia recipe. Files for example: libEGL.so.1, libGL.so or
> xorg/modules/extensions/libglx.so

there is mesa-gl recipe too use something liek
PREFERRED_PROVIDER_virtual/libgl = "mesa-gl"

>
> The only thing I saw relative to this problem is for example in mesa.inc
> FILES_libegl-mesa = "${libdir}/libEGL.so.*"
>
> Im stucked again, its being hard to finish this recipe. At this moment I'm
> overwritting these files in the installation script (when the roofs are
> copied). This solution works and altought its not the right one, at least I
> know that overwritting these files is the last step (got hardware
> acceleration, playing video by hardware and full hd resolution).
>
> Thank you for your help!
>
>
> 2017-04-23 17:11 GMT+02:00 Khem Raj <raj.khem@gmail.com>:
>>
>> On Sun, Apr 23, 2017 at 7:35 AM, Alvaro Garcia <maxpowel@gmail.com> wrote:
>> > mesa-driver-i915
>>
>> if you are building for x86 based machines and including
>> conf/machine/include/x86-base.inc in your machine config then you are
>> getting it. You need to define XSERVER variable that fits your
>> machine.
>> you can start by just removing stuff from the preset value for it
>>
>> this is current value
>>
>> XSERVER ?= "${XSERVER_X86_BASE} \
>>             ${XSERVER_X86_EXT} \
>>             ${XSERVER_X86_I915} \
>>             ${XSERVER_X86_I965} \
>>             ${XSERVER_X86_FBDEV} \
>>             ${XSERVER_X86_VESA} \
>>             ${XSERVER_X86_MODESETTING} \
>>            "
>>
>> remove whatever you dont need by overriding it in your machine conf file.
>
>

