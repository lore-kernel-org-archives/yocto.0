Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BE1EE00BC8; Mon, 29 Oct 2018 09:15:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.222.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
	[209.85.222.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C511E00AC5
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 09:15:54 -0700 (PDT)
Received: by mail-qk1-f196.google.com with SMTP id u68so1316087qkg.9
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 09:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=TWlZewlZxOUiiv26vcCTFOLDrpjYezw+VnPQyZoe7KE=;
	b=dl8ju3+7Xmkuln9JUPaf3eLy+r+I4Hv1my0YA0lLLfu7nAVL+ADLwnG1Pwf0m7/YCG
	Cp8Iqg0AOysFxn2Z/HDPWi73PmXTBrAjpCen49PiQp3OvrTuxy136rBCYGbz+XtY1z4Y
	BGGwX2C37/gtEJ8waM92kJNvtb2OBjDjEe072Ij3l7hEqWozPz5FMv+5gEiv/RlUuQJC
	GIywcQ9pEQ1HXAxTWgbupVpb+umXfmXVXEWGoelIN5j7CS2W44DBQJpJHHARQgMJioS1
	KBtkKhfdYL2Iiyvpq/yIEIN2PMRkKcAvR4cJWZm+TGtTO5rojHfvEPG2+h1N54HpYKi1
	FXfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=TWlZewlZxOUiiv26vcCTFOLDrpjYezw+VnPQyZoe7KE=;
	b=bP1Rtr/oeLUKSiCvfZrf35hpWzNjnExO95idqGKoV09NEn/SrFQwGU2F89hOnd/i/F
	MrWrwOoB2RM1M5pr4/xy6Jua92J7gwPiyyDYZSW2x/Fj9/qTT47JAcjdPzom84z50Y6y
	jPS+Rm5+47hbPbQhwBYlM2b36dCb565vJ9JopDItdxMwktxJfOA6xqV6G4XJeVQu1KGn
	izu4neQzO92o7Ok39toPZ6mWGVOHBG6p5KSRu3BhujWBTQ83yOeovAPDEI6vPqSCiqa2
	7oMNM1cCcu5uOabGN1wrSYIdSf75k2zEdHBEmIWDaB97KKvUai8btriR0DcICHKdLfnx
	vy6g==
X-Gm-Message-State: AGRZ1gIgavSQoW1O0nja+JbNwy33tZpQlmYsODNNit7R4WS8GCrto0YZ
	SbzK07WY9Ag7hsu7cIf+09Q+igo/VvzXUStevZREQ2jn
X-Google-Smtp-Source: AJdET5dUUZZWgChfYegO4PWlLHsTwj2IukhXzb2Hu4rp9gx0FgJ5gyFTkOjsloJ1Lwaf2kBzYmopJ+Yqm/7VVN3NFTc=
X-Received: by 2002:a37:4c41:: with SMTP id z62mr2205814qka.206.1540829753259; 
	Mon, 29 Oct 2018 09:15:53 -0700 (PDT)
MIME-Version: 1.0
References: <8be59efc-16c2-711d-047b-84fa1c916b09@slscorp.com>
In-Reply-To: <8be59efc-16c2-711d-047b-84fa1c916b09@slscorp.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 29 Oct 2018 09:15:27 -0700
Message-ID: <CAMKF1sqEwRUY+dTs=etHZRttBYRjCmUhWDBq-PthuM+K=isWRw@mail.gmail.com>
To: hitendra.prajapati@slscorp.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Openjdk-8(Version 162b12) crash during runtime
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
X-List-Received-Date: Mon, 29 Oct 2018 16:15:55 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Oct 23, 2018 at 3:49 PM Hitendra Prajapati
<hitendra.prajapati@slscorp.com> wrote:
>
> I want to run latest java (version 162b12) which is given in latest
> meta-java branch (sumo) for the colibri-imx6 module(armv7 architecture)
> from Toradex.
>
> Currently I'm using latest poky version Sumo, and all the latest branch
> for different layers.
>
> I'm able to compile latest java successfully., but when i'm trying to
> run on module its show following error.
>
> GCC version: 7.3.0
>
>
> #
> # A fatal error has been detected by the Java Runtime Environment:
> #
> #  Internal Error (os_linux_zero.cpp:254), pid=14001, tid=0x7683a460
> #  fatal error: caught unhandled signal 11
> #
> # JRE version:  (8.0_162-b12) (build )
> # Java VM: OpenJDK Zero VM (25.162-b12 interpreted mode linux-arm )
> # Core dump written. Default location: /home/root/core or core.14001
> #
> # If you would like to submit a bug report, please visit:
> #   http://bugreport.java.com/bugreport/crash.jsp
> #
>
> for more information you can check attachment.
>
> please help me on this issue.
>

zeroVM is dying and dumping core, in any case using zeroVM would be
very slow for you in real world cases since its just an interpreter,
you might want to build with
some sort of JVM e.g. hotspot etc.

> Regards,
> Hitendra Prajapati
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

