Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09629E00AD5; Fri,  3 May 2019 16:36:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
	[209.85.160.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8146DE009E7
	for <yocto@yoctoproject.org>; Fri,  3 May 2019 16:36:51 -0700 (PDT)
Received: by mail-qt1-f178.google.com with SMTP id e2so7050145qtb.4
	for <yocto@yoctoproject.org>; Fri, 03 May 2019 16:36:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=G8VHz4Ap+UmA028gaioOLuqoQV7NYN9QS+hCxkHOxZk=;
	b=Fy/svGZoChjt288Tk7pqN7XNs9uUPfVA77dA5Ks3QHNQyfNO7d1xSrMWzi7+956cg9
	21UzIAAvSDyhsBxqKdDb8Bm71YgsRG8zUMdQhkGXxmWmHYukGtFwfYP+B1CpjMuZA0wH
	K9bjkbWncOYq/yHbw4hZaaDO1I/y/XhKMz9XOHpZ5ZTQQ+TzJ/i8ZGMPvWbG1NyvXfBM
	721gZwhBWWhE932/UBh+32hitDc5JRm/JBZfYUd1tAnHxtvO8E+hRbp2ja0bGjdK+UKK
	rGdg04r0++d46B5WHxzEDFXW08POyosYMzzNUdsPDbf3x5tI0Zg1idOD+rx/Wcifotu7
	IbtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=G8VHz4Ap+UmA028gaioOLuqoQV7NYN9QS+hCxkHOxZk=;
	b=PN9sziRZxsrXO0fnEPHVpmcoBjKYmGOfAOoBf4ZqM7IVOKRrfPJoZwX5EUR1EBA6p+
	rsB+gP/e/YH3spTqOBrcHEMf3BSKqxDAEXa+49Zk07TFZOBMbwXfJQ6Kra/8nGcD7RN5
	Pwq6nqlVDzMfu5A3Hu5n91LBNGIfC6wUQFN4TcrotJUgIA9U+NaB0uwTrHbwsiTCt2qd
	KmoiiPRPGtHx0yIZ+bvinGxGf7JnwuCST6VjKw3ppdfL91z5QXujF7Cwjks73Kgd2gby
	Tu3QOQf3XjT/eHs/MPfZkNnb8QJUAGenewOtxE4DZEEfMKqc+yjRWxQnEmThwbYdZ8rM
	A7Kg==
X-Gm-Message-State: APjAAAUNhr28E3Y0oWZT3W4RvBOxA0cH3v/o2me/U2ASX5YbN/UAMHyh
	qZAM3MNCYLjVcHhLM0jl8p553uP9htQNtBIVn0c=
X-Google-Smtp-Source: APXvYqzkkG7JydajtQjcZRHMU0HePLmlQrdfvCEE79YFN5FtdPqOjHJjJ3ji2dzc3jnnoU2QebXG8n8x/prRzhKmf0s=
X-Received: by 2002:ac8:2963:: with SMTP id z32mr10967134qtz.236.1556926610659;
	Fri, 03 May 2019 16:36:50 -0700 (PDT)
MIME-Version: 1.0
References: <CAAV2bM2O7ve9ZvhqjFtcUysaKbKZxYqRV8idqg03Mp2-v+RFMQ@mail.gmail.com>
In-Reply-To: <CAAV2bM2O7ve9ZvhqjFtcUysaKbKZxYqRV8idqg03Mp2-v+RFMQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 3 May 2019 16:36:22 -0700
Message-ID: <CAMKF1squhLTh7nQahUuwb9mweGTB35vqu6OrKOfFVf9eCARWcQ@mail.gmail.com>
To: Emily S <easmith5555@gmail.com>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: Incorporating Xilinx DNNDK into Yocto
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
X-List-Received-Date: Fri, 03 May 2019 23:36:52 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 3, 2019 at 2:09 PM Emily S <easmith5555@gmail.com> wrote:
>
> Hi all -
>
> Xilinx has the Deep Neural Network Development Kit (DNNDK) that they just=
 released the source code for in the last month or so. They have the code w=
ritten nicely in the form of yocto recipes but it doesn't appear to be an a=
ctual layer: https://github.com/Xilinx/Edge-AI-Platform-Tutorials/tree/mast=
er/docs/DPU-Integration/reference-files/files . Is there a possibility of c=
reating a layer for it? Or should I look into other options, like adding it=
 as a submodule to my custom layer meta-l1calo: https://github.com/kratsg/m=
eta-l1calo?
>
> Or if anyone has additional options, suggestions are appreciated!

I think we need meta-ai


> Thanks for the help!
> Emily
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

