Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2AB8E009E2; Fri, 18 May 2018 03:52:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B962E009B9
	for <yocto@yoctoproject.org>; Fri, 18 May 2018 03:52:06 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id a8-v6so13349134wmg.5
	for <yocto@yoctoproject.org>; Fri, 18 May 2018 03:52:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=6hGSNR6oZkhPKKsbp9CkKot+VfZ4RbwlARlwfQSDchA=;
	b=lkBtbKbAJSkWwNqBGZ1SuEooc/m5QXqRanyIrS31Jm/8cldKTzGvYdJINymVMi4572
	qaYEXhKLxkYq6m4+9kfPrdlnns7jkENim+RTzlxEIPLGd0wHtpa0Nx9cZrAioB/Es2hX
	BI2DmZjjqjQzAlPvsoW+KQq6YN3Xef0RUEbpBDaKlfWs86BGEHUFq86ForRDed2Q6dpM
	goWg7gh/bqdsYn2tKy2ttk7CGjkErCLNcRvSokzUuhpUTI+/XlC4fDMuPgPLXNvBVkq4
	+T5Dt3Te0FdxU1TfcGHkMkfTmKvvVZPBnsyIm97z6zH6LMJ5ts84/p3kD98zmkrKu/SC
	Fz3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=6hGSNR6oZkhPKKsbp9CkKot+VfZ4RbwlARlwfQSDchA=;
	b=lyoXQV7c3evsFqEA8UXsP8U9ekPnQh0nfRaGx6x8jL1MWMJBsC0zQfuPKwA8GuXD64
	/pRMtEvy0SBSRxB0N1DR775jCQ1TtFfdMeHP/xC234QHs3/eLU45jCnWJFz1u3PpoHxf
	iowr3A+ktHVwS0FNDXZ/xX5RiB4vgJvxohxLnMjGEjFVkcmllHRY2KRi0owxxVpQS27A
	g+FNrk6VaZc+hZtesZ6gUVv44XFZrhLpzMhhl8RnVEYdNE62BkE4psyLlGyQfenhVGd4
	HpPxcMe4KhGN0wHVABrB8SaPQyVnPs5e5D1MYa9BUcZxSsa1rG+9DmIB7bO2poHNRJ32
	YG8g==
X-Gm-Message-State: ALKqPwcsc17iGjLokL4imz2vYNorMbP/PaMc14y9RL+xjG8Zcvhvz8fe
	h43/QXOpJv2WOsx89COkSGNP9WH09mMDMFyE3AA=
X-Google-Smtp-Source: AB8JxZosEShE1FTRWQ9Le8wyHXsQ2f4sy/L+adngiN42dd+iCamCV2gGsJVSzylQO1UssVnL4LcVvGJpvvkM2vJZ+B8=
X-Received: by 2002:a1c:fc3:: with SMTP id
	186-v6mr4570953wmp.113.1526640725967; 
	Fri, 18 May 2018 03:52:05 -0700 (PDT)
MIME-Version: 1.0
References: <CALmqtKZf-2zEYTr7duH3FRUkPtL_-ftUys+nMfkBNph5Axx0wA@mail.gmail.com>
In-Reply-To: <CALmqtKZf-2zEYTr7duH3FRUkPtL_-ftUys+nMfkBNph5Axx0wA@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Fri, 18 May 2018 12:51:54 +0200
Message-ID: <CAAfyv34XBx5FanV82mj7+1Fg5r0Kevzw-ROF22BOt1DyghCFNw@mail.gmail.com>
To: enrico.bonomi92@gmail.com
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Display 1920x1080 double LVDS channel problem
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
X-List-Received-Date: Fri, 18 May 2018 10:52:08 -0000
Content-Type: text/plain; charset="UTF-8"

Hello,

On Fri, May 18, 2018 at 11:41 AM Enrico Bonomi <enrico.bonomi92@gmail.com>
wrote:

> Hi,

> I'm working with an imx6duallite with Yocto 1.7.3. I want to drive a
1920x1080 display with 2 LVDS channels but i came across a problem.
Pictures are shown correctly on display but they have wrong colors (for
example a blue bar during psplash is shown pink).
This is not yocto specific question. I think you can get more help on
meta-freescale@yoctoproject.org

> my .dts has the following ldb:

> &ldb {
> ipu_id = <1>;
> disp_id = <0>;
> ext_ref = <1>;
> mode = "sep0";
> sec_ipu_id = <1>;
> sec_disp_id = <1>;
> status = "okay";
> split-mode;

> lvds-channel@0{
> fsl,data-mapping = "spwg";
> fsl,data-width = <24>;
> crtc = "ipu1-di0";
> status = "okay";
> };

> lvds-channel@1{
> fsl,data-mapping = "spwg";
> fsl,data-width = <24>;
> crtc = "ipu1-di0";
> status = "okay";
> };



> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

