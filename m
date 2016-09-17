Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4360CE00CD5; Fri, 16 Sep 2016 17:06:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B74B8E00CCB
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 17:05:57 -0700 (PDT)
Received: by mail-wm0-f45.google.com with SMTP id l132so62442843wmf.0
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 17:05:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GxkfAFBDp/GQhqNKbTntI6a+PAcnUNItH2kOVRaX/Gg=;
	b=IKQChAwSWUv+dOlV8qWmTA9CPTspZWCYjYcxoGXF9iMXrNjyK5D+a8T8FgtLJTwR+C
	Ig21IlKArCi0UgoF8SespWaN7TIu4bp0gsBwoKBbMWkHyp03CfpCnlAibW+ySdlfGCTm
	ws7HH7M3EETCS6H6DM+2AqqjSSryyVobaA3W1Qxr3ttQ/Yp8W5K6LeVzLSeJkumuNY/t
	A74ejruhpZVWd5GrWo7rGE5XjdE8utbCbDtEDSIyAa7rG7Tf74/bpeaA/QpnQU47zsZb
	vXHBTCtcu3jEhRdGoeOlZzeGwg79gAXgEgPIIiZmm2GkPtQg6F4ohrL5qQIdGG/LzphE
	P5FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GxkfAFBDp/GQhqNKbTntI6a+PAcnUNItH2kOVRaX/Gg=;
	b=jsm9h9wcJdtze2/eyicoZtUfkRM6rn/xmWuMSz4RrHT1bzf0kdwxKzbOBFGM+NvfNb
	YdNFRiKQp3aFG1upE/uQ/P/Y+J4dJi8FXb1A1IhXgZe0+2N2pplM+tId7KoWJ/3fLRdz
	NPFuZG5O+CqYvplFMoE2b2dAQjP1a54L35K4l6v6vg9c1GYkyzpkn5f4BQl2ppqhWzJ+
	VAKm5Ufxg4Yf9G60ga1cllevUbVON51drx/JNpTTkp7WmVO/jl87LAyTU1R4PAFY86Js
	HOXSJcJpEOObUHqBmjqJD/5R1T/ZBSy3W+KE1M9+aw8ZsJj9JJOogEEFQTYEoE09rvqs
	OGFA==
X-Gm-Message-State: AE9vXwPxlZLA3cdKURldTZ4dH9NlUDkcXFJL0QrMQ0iaYqgb5XfopHMGLCrZ+mQ/xhl9tKl9Jvw7tOrueojPJw==
X-Received: by 10.28.229.205 with SMTP id c196mr4079wmh.35.1474070757042; Fri,
	16 Sep 2016 17:05:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.190.233 with HTTP; Fri, 16 Sep 2016 17:05:56 -0700 (PDT)
In-Reply-To: <BLUPR0101MB15861561A9169B0AD6725BB2D7F30@BLUPR0101MB1586.prod.exchangelabs.com>
References: <CY1PR0101MB15943A023ACBF0AC7A142C3DD7F30@CY1PR0101MB1594.prod.exchangelabs.com>
	<CY1PR0101MB159420CCFFA0785E3A9713FFD7F30@CY1PR0101MB1594.prod.exchangelabs.com>
	<BLUPR0101MB15861561A9169B0AD6725BB2D7F30@BLUPR0101MB1586.prod.exchangelabs.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Fri, 16 Sep 2016 17:05:56 -0700
Message-ID: <CAJ86T=VguwP8ULfFHynhGXCVOnFHDyv9vFqFK2+vBJgYPCBUfA@mail.gmail.com>
To: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: BBMASK does not work
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
X-List-Received-Date: Sat, 17 Sep 2016 00:06:01 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Sep 16, 2016 at 5:15 AM, Takashi Matsuzawa
<tmatsuzawa@uievolution.com> wrote:
> OK, I figured this out that I can add my BBMASK lines to my
> conf/distro/xxx.conf fille.
>
> So that I can append to what BSP defines and it seems to happen before
> collect_bbbfiles() function.

An alternative to masking out each .bbappend might be to set:

BB_DANGLINGAPPENDS_WARNONLY = "true"

>
> Sorry for my confusion.
>
> ________________________________
> From: Takashi Matsuzawa
> Sent: Friday, September 16, 2016 6:13 PM
> To: yocto@yoctoproject.org
> Subject: Re: BBMASK does not work
>
>
> Well, I tried adding debug lines to poky/bitbake/lib/bb/cooker.py, and I
> think what is happening is:
>
> i) BSP has BBMASK = xxxx line.
> ii) I add BBMASK_forcevariable = yyyy line to my local.conf
> iii) If I check with -e option, I can see BBMASK variable is finally set to
> "yyyy"
> iv) However, when cooker.py is run, matching bbmask file list with recipe
> paths, the original "xxxx" line is used for matching.
>
> I feel, the recipe files matching is being done before BBMASK is finally set
> to "yyyy".  Instead, they are matches against "xxxx" it is the initial
> BBMASK value set by BSP.
>
> This is fido, and jethro may be behave differently (since on jethro based
> build this seemed to work)?
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

