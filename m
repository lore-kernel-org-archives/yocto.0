Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C60EEE0091D; Thu,  3 Jan 2019 02:27:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com
	[209.85.167.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7B76E00872
	for <yocto@yoctoproject.org>; Thu,  3 Jan 2019 02:27:29 -0800 (PST)
Received: by mail-oi1-f169.google.com with SMTP id c206so27364760oib.0
	for <yocto@yoctoproject.org>; Thu, 03 Jan 2019 02:27:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=OL9QPmeX1PUuVJIW6n6TiAWbV+3y0xqQukJb9HJ/SCg=;
	b=bQ60kBsPXPlyofFkcOTEDSUPnsDp5mzutVAK9rIR0XuxEMbxEVO+U6CMrm5krTq6SJ
	043c9aQSpz2Ga91JNV1AdcHBxV/VEMSEa0XI2/4622M6k8ZJaF/b+r+H8svSUr9mjJf3
	HkCi1FRXfgrTzOh48HM4S3XlNvjA2tay9cH9ip6gAur7PJjjmDFfsPV0yBn3rgv46Rwh
	lNktteypzWVjv1+BTS/vwGKfBOtUBX7G4ycNwsXIbhRRI+43+ySBcqiIDQKsUT4H/m1M
	7uCRQhXiXfKhfW2jqkyjdejFbHL49JJ4oFLr5bI1O30FjvMDpLus1IPFz1qFyyOYW/Sg
	wctQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=OL9QPmeX1PUuVJIW6n6TiAWbV+3y0xqQukJb9HJ/SCg=;
	b=nrKQ9pf+wa0WkVadIUlQSFv3EehR7wCjqGXXUi05IFSn8ODyqbFD1AANYDGShriZ/S
	W1tfw/NNQTqMik7cMsYmUx9gW6ejrzo+7u0+EjJop6M0HjH2DBOsyS2ZZFazRDZVO66S
	NEJA1Dc615EdEnsjNCRm/PWHOGSWFCfE0uhczlEBfxdEgWk5fPrxjIZucY6SbUSLbK/D
	bOZ4vwVfJcW494Cz61my4zIxlqfT439DbX/HM/huioJmQzlyRPd2Cdp1eZl9S4jVcEdt
	XtKmngawXNeL+5AULXq/3c9jxBj1G0Q2LxIWzni2j3sKHKREGDKcEbGEJxZdRfMeGFNC
	1ywQ==
X-Gm-Message-State: AA+aEWaEW/+U85atYkT2oDjuBybGmyUw5hRuckceW59S5KsP5Ofhc7XC
	cQcL5o1Qa22m6SRkyfRI/ZLBOR5ofi2m3l3NSN4=
X-Google-Smtp-Source: AFSGD/X1ZCf8zNgO4eHw+vz07X+/u9WYkggNFV87sR+c2ESyOvj3f0G0S8MGh+7AwC0CfxZpmdxczPBWN0TUNGhzZNA=
X-Received: by 2002:aca:2dc9:: with SMTP id
	t192mr32579310oit.325.1546511249215; 
	Thu, 03 Jan 2019 02:27:29 -0800 (PST)
MIME-Version: 1.0
References: <CAFq4t4iVtG=LneBXbDrpwAQOD78sFX=S82pd12kZrTwS+UhgXQ@mail.gmail.com>
In-Reply-To: <CAFq4t4iVtG=LneBXbDrpwAQOD78sFX=S82pd12kZrTwS+UhgXQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 3 Jan 2019 11:27:15 +0100
Message-ID: <CANNYZj-43eSDE7w87Bykfns6T2eHPEpAyp9G9USZ+=noHUX12A@mail.gmail.com>
To: Peter Balazovic <balazovic.peter@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: devtool to built for update repo revision
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
X-List-Received-Date: Thu, 03 Jan 2019 10:27:30 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, 3 Jan 2019 at 10:09, Peter Balazovic <balazovic.peter@gmail.com> wrote:
> I am trying to use "devtool" from eSDK to create own recipe. At first it works with repo and can generate recipe and binaries and deploy to target machine.
>
> Now I'd like to update it with a new revision of source code.
> So I updated SRCREV per released commit and as well add PV = "0.1+git${SRCPV}".
>
> I am not editing source code locally at workspace of eSDK.
>
> I rebuilt it but it seems still the same revision is built. What else needs to update to correctly rebuild from new revision of repo?

When you have a recipe source code in the workspace, that source code
takes priority over what the recipe is saying. You need to first issue
'devtool finish' (puts the changes back into the recipe) or 'devtool
reset' (does not do that).

Alex

