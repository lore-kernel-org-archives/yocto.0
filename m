Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB911E006C6; Tue, 16 Aug 2016 13:41:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.67 listed in list.dnswl.org]
Received: from mail-oi0-f67.google.com (mail-oi0-f67.google.com
	[209.85.218.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3963AE0043B
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 13:41:29 -0700 (PDT)
Received: by mail-oi0-f67.google.com with SMTP id t127so7789265oie.1
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 13:41:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+5ncIGRrwKO8H9wE29mEmJDQLfkP+0MpyPX4QhExLXI=;
	b=nVKC8tICtijswNz1oAo3Ky0Q4+uqDJEwDdGts7pwZDwPf0tDglhW1a0/33eTGrRmjG
	/TrlsSSOowRWjHXNP0vT8Wn2wgD0IxINYXDnUiLLiiHoyu8mRiFBBb0FNhUio12GdG9K
	r/sii7HyHLSHiPveGqg37ZIR2kEr2HPqftyxzLsM3Cq86Hy5VrsFzHcHp2XTolzHFwW4
	6aDQSsFnOpm86U5alHRO6wBuK42rtSn/+uAX/ecevKrqnPAOoIPJpqi6mBwPeQ8U3+Nn
	0qjOFjvANXyIxv8H6q5I3JfvBxg1pCdUjasdVnDEb6MC0TqZU0PDBZoDAAQXBIITyLue
	dgMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+5ncIGRrwKO8H9wE29mEmJDQLfkP+0MpyPX4QhExLXI=;
	b=OVsPpoZ1Ffv5rH8hkhWP+h2zg3AgXfnX4T6Pwpx/PVhmx4OljZNzwXTXF1dH/A8UK/
	Dswgw13Bg60eBOhcE7ETRYsukB8j77vmChyuoH3VNQf1h3GR7o1QwiFMVCnj3GC8xcmu
	bK2OKBPci7mOUy44+ejXK1H9T1EwqTdbCEIxefVr3WEkLoxX3IjpaR1psRkJ+3hb3bBJ
	IoL28gBgeAeO9ACY9uspxoA/01MU7GcxQaaLQoLVPszg+/MYJDXyCGitTV3v0GK1dXlT
	XzACZ+1m+eCG2D4aoJFIhETHamZAT8x5XFgsVkETkfWvi9Jx7swsQGoBrQ4ACrJfQShn
	fM2g==
X-Gm-Message-State: AEkooutPULJvyULZ1klWPDCW2FDK9G+OSEBX017pdbEbuXn0POYh9uXQEg2CXNa2tMbVCPmhCbvpSZFcB5dSCg==
X-Received: by 10.202.5.4 with SMTP id 4mr19400040oif.31.1471380089079; Tue,
	16 Aug 2016 13:41:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.13.137 with HTTP; Tue, 16 Aug 2016 13:40:58 -0700 (PDT)
In-Reply-To: <d92af01d6a634d8d969be96a43808106@XBOX02.axis.com>
References: <CAF_dkJD9wqM7rg7U1VeiDs+adEREcoNna58dghfN2BvbxVLWqA@mail.gmail.com>
	<CAF_dkJBvmdC-QXVUf6TU5xC_nVPWa1YeZYnGFbudshtNLWnLig@mail.gmail.com>
	<d92af01d6a634d8d969be96a43808106@XBOX02.axis.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Tue, 16 Aug 2016 16:40:58 -0400
Message-ID: <CAF_dkJCyi_6Cx_vzYCHRNHuuhu7q8ebp=XhBiNpM2Ofu+hyMsw@mail.gmail.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to maintain a global DL_DIR?
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
X-List-Received-Date: Tue, 16 Aug 2016 20:41:30 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Aug 16, 2016 at 4:24 PM, Peter Kjellerstedt
<peter.kjellerstedt@axis.com> wrote:
> You seem to be using an old version of Poky.
I am using the version of poky distributed with the board.  In this
case, the board is the Edison board, and the manufacturer is Intel.  I
guess I was assuming that the Edison would have been distributed with
the latest version of Yocto/OE.  Oh well.

For other boards with other distributions, who knows what I will find?


> If you do not have the option of using Krogoth or newer, you could
> use this trick in your .bashrc:
>
> alias bitbake="BB_ENV_EXTRAWHITE=\"$BB_ENV_EXTRAWHITE DL_DIR\" bitbake"
>
> It may not be kosher, but it works. ;)

I like that solution a whole lot more than the solution I proposed.

Learning that the Yocto shipped with the Edison is old, and that there
is a newer/better way to address this problem is.. priceless.

Thanks for the tip.

--wpd

