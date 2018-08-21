Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F698E0095C; Tue, 21 Aug 2018 12:32:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com
	[209.85.222.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1226DE006C7
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2018 12:32:37 -0700 (PDT)
Received: by mail-ua1-f50.google.com with SMTP id r15-v6so12557937uao.1
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2018 12:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=teNZXwyfEDpfgdhQyAxNzagL43XccgsaT+sIvAGKtnk=;
	b=jtn06ue2K1tIqL2jWdTWiuyRv1My3fs8tEjbIkC+L09as2b6cQOkcPmdJFxtCXHiDn
	IbwYT2OmFAz5OZJ/32OKBN3cBCrKNTsduZ0f+icX1pTM6XW6+4xHegkcK8sXASB1p5xK
	8aXotXT5KbZkc1gy7vOn0tH0Pc/Fw0z/+0BksOHF/NgwOGZpBCIvmCQZ1Ezmf4XfzAvn
	cjo1hT5joTVNl+G3AzIxo0BxqNM+fodxpkbFVKW69xagvuSYLLpEpg2xs0/7ZjvpTvA3
	ajF1uuPPnferd4ATs312eVfu6wux5znw/XzwFiPthdGrhHy+K4kwxdDzZ3qBqomguprT
	2mKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=teNZXwyfEDpfgdhQyAxNzagL43XccgsaT+sIvAGKtnk=;
	b=O++vUn0nSAUqt87Fi62/zWpt3vL/ht+/q/LumQgyNz/og6SYfNLlozT0HYDkJNhL0J
	IS57ToUfoRJQyn6DOMKHB4vrcwKdciTLcp+qaXhy9HUH/gegccfSP+h18uceE7KhNnq/
	WwgGW/XVj9ojJKyHZVwgnOmTLTlvmXFezB+XIZNyW2XiAGbfuLCGh/V9x+mNy6xVGgwc
	Iljr9UNjes+J6nTu6g01GvCCTmro4GCbxjXqjnpsOuvN8Zi6Xpb9A/N73LKvy3UV1iNe
	cDP6ewmHkXQAKbYHIuYPbrWKcTsCgoi0OCgIBbtM6d6KN/7Udrf2snghnFVh29gi/KVa
	0BLg==
X-Gm-Message-State: AOUpUlFYPakwG1Ghp5R8aLaR69pxmOwBF9OO4VAiWv2Z3ZHvtonb14qA
	vrPtx27k1DvdMxcx+PIzDMwVyzNYV8DR0TQ1JJc=
X-Google-Smtp-Source: AA+uWPyh8V7cffa7QS3RILn2AtAn/i0RbETP/ttbIHeI88s9hAmvqkTUY3Xj559eJ+I8bifpOIcKj32O/C+10HFV5BU=
X-Received: by 2002:ab0:5b8f:: with SMTP id
	y15-v6mr33332645uae.59.1534879957298; 
	Tue, 21 Aug 2018 12:32:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2a5:0:0:0:0:0 with HTTP;
	Tue, 21 Aug 2018 12:32:36 -0700 (PDT)
In-Reply-To: <74ae9335.9209.1655bed4668.Coremail.13824125580@163.com>
References: <74ae9335.9209.1655bed4668.Coremail.13824125580@163.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Tue, 21 Aug 2018 12:32:36 -0700
Message-ID: <CAJ86T=U+L=fusmX5=4wO045=5J7zyCwjHYO3fg7tHopkrxX8ig@mail.gmail.com>
To: tugouxp <13824125580@163.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: how to understand the "PACKAGECONFIG_class-nativesdk " and "PACKAGECONFIG_class-target" ?
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
X-List-Received-Date: Tue, 21 Aug 2018 19:32:38 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Aug 21, 2018 at 3:00 AM, tugouxp <13824125580@163.com> wrote:
> how to understand the two:
> "PACKAGECONFIG_class_target
> PACKAGECONFIG_class-nativesdk "
> semantics in bb files? i did not found any explanation on the official
> document,  so, please help me ,thanks !

They are conditional over-rides of the value of PACKAGECONFIG. The
first over-ride takes effect when building the recipe for the target
(ie the "normal" way to build a recipe, where the sources are cross
compiled to run on the target), invoked with "bitbake <recipename>".
The second over-ride takes effect when building the recipe for the SDK
(a special way to build a recipe so that the resulting binaries can
run on the host but are only linked with libraries which are shipped
with the SDK), invoked with "bitbake nativesdk-<recipename>".

Using these class specific over-rides to set PACKAGECONFIG differently
when building for the target, for native (ie over-ride _class-native)
or for the SDK allows the build to be configured differently in each
case. Often the native and SDK specific builds will enable fewer
features than the target builds.

Note that in your example the target specific over-ride is wrong - it
should be _class-target rather than _class_target.

