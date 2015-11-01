Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5F85E00B48; Sun,  1 Nov 2015 07:41:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f171.google.com (mail-ig0-f171.google.com
	[209.85.213.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A53FE00AE6
	for <yocto@yoctoproject.org>; Sun,  1 Nov 2015 07:41:52 -0800 (PST)
Received: by igbdj2 with SMTP id dj2so39682616igb.1
	for <yocto@yoctoproject.org>; Sun, 01 Nov 2015 07:41:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=xZxdGDDZMfydo9IIthixyDKdQVnmk4XhXwJWXDND7JU=;
	b=ay8Pfo8fzVmvhK39dcFmaELFnfVQ1Li2Nbuh/j2L2jVoh1OiiXjCocjTRXL+FTvXed
	QADzHQ5RD64R+n52zWalTVtvlXggsIREE1hjgbHJyqn8VfZCwy8IiuX6UiSQGzpjvPwT
	oCdfiP6Eqlqy17bxDrw8EUG8ogAjynBSkv9P+9PC+1y6I0PggroHIRyhOg9eIb26Mn9k
	SoXYQiTPU7FOC/s1lOCxf53yKzr9lkjqfyqtLA3EhCQARrBo3dDqLODzfhxMwRC5S6Pe
	pcZC0oBXym7qMHpBmAgG/DMihjfNSMwpRN4XenKS600mOxNRMskaSm6oIlFSW3I+WXhn
	+rhw==
X-Received: by 10.50.156.103 with SMTP id wd7mr6473029igb.75.1446392512490;
	Sun, 01 Nov 2015 07:41:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.38.133 with HTTP; Sun, 1 Nov 2015 07:41:23 -0800 (PST)
In-Reply-To: <CAG=op9dOD9-phw9V+ceuvLhDxuPYQJPmNUJrrneC9_ywS+f5aw@mail.gmail.com>
References: <CAG=op9dOD9-phw9V+ceuvLhDxuPYQJPmNUJrrneC9_ywS+f5aw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 1 Nov 2015 07:41:23 -0800
Message-ID: <CAMKF1srraL3_z6_AOG9Yo+P_5FY3E9Lv-ZywyQd+CGt7UsK77w@mail.gmail.com>
To: Chaitanya Dhere <dherechaitanya@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Missing config.txt in rpi-basic-image.bb
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
X-List-Received-Date: Sun, 01 Nov 2015 15:41:55 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Nov 1, 2015 at 5:41 AM, Chaitanya Dhere
<dherechaitanya@gmail.com> wrote:
> Hello all,
>               I am working on rpi-basic-image. After flashing this
> image, raspberry pi 2 boots up fine. But I'm unable to locate
> config.txt under /boot directory. I want to put :
>
> dtparam=i2c1=on

just create one and see what happens.

>
> in that file so as to work on a sensor based on i2c1 bus.
> Currently I'm unable to locate i2c-1 device. i2c-dev and i2c-bcm2708
> modules are already loaded.
>
> Kindly let me know how to enable it.
>
> Thanks,
> Chaitanya
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

