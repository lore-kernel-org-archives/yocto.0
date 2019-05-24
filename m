Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22282E00BAA; Fri, 24 May 2019 02:35:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.182 listed in list.dnswl.org]
Received: from mail-it1-f182.google.com (mail-it1-f182.google.com
	[209.85.166.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96813E00B58
	for <yocto@yoctoproject.org>; Fri, 24 May 2019 02:35:09 -0700 (PDT)
Received: by mail-it1-f182.google.com with SMTP id 9so12854621itf.4
	for <yocto@yoctoproject.org>; Fri, 24 May 2019 02:35:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=EMvN+mBrVjGAzn6+BGuvMjJo3F0g3CgHnpAM31oaPzU=;
	b=0z3ADi6dAaQBEYftsVosgLeobMwzjapG/njsoVCkE+c+huKFd25kOh58M++NSYsk+a
	PDbpMK3KUO2UBab+i5R7Qaz9xxs7eQYY4XhG8ZOzHh4GbC/fVX0GoAr6XkkzqK8PiXtW
	/HD9n2X5oH37fRBl0dtF29pmk4OdNyjIzPpWvYSsAwNboFJgb4rD5FkFCr1AyYf3JAGP
	kuNJxs+6LAjwoptG/Sj6NFfkg7eiq6w95yeENB1BRMBmNyRw608n4U5nAMYPSjAX7sV3
	EkoK5JM7ksKDjbXLGm7b6rBR61w9hUmB5pnEMwrgIl4QRzw5/BMOJKnz+1OU1ykyd7Ln
	bwGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=EMvN+mBrVjGAzn6+BGuvMjJo3F0g3CgHnpAM31oaPzU=;
	b=MGXQT7bN4AEvByT+mZTcJA4L+Xf3aN3z3Tg5Lq3FCOIn5cBy1CgyjNhGwqJCWNurQS
	LPH42qW4XmcplnQ28VF/dDAGDdx9P2Z4iN69/mxr/n3HHA+2P1zYIMO98oAYh8hTR5ve
	49dWMaOhegbGQd7LJEWWwV8riRcNqfIVMZVpRJ3/iDu8lkCAJFyOTSnk6pqixGblXkWh
	qfeB345WdKRAHweCweKSR1+A/zp7w35vgMGaKMmXZb2AgXoqKdF9+0oZThS1cABjxmN5
	huGk+BG9kiluE8SuDTIO89tqq6BTsv+bevPDltyazsqdsFNXKkCWF9ihOhCXzgjFvjzH
	D16w==
X-Gm-Message-State: APjAAAW5H3tYbmPwsJ/xvjj3E7PUFpOpLyJ46imjaJmXeIPTBn5x7AsY
	1yswGXBgWeQVa4aSCAo1PdMR7ICS9CvYIq+9vzEYFA==
X-Google-Smtp-Source: APXvYqxXkYecS7o/mwhlu2REtGq7LRYVUX+qTAWhkBpjOFjXtSgF5lvNYz5UACSZOrg0VUg+puTkSIZe4D91mM6Pxqg=
X-Received: by 2002:a24:19cd:: with SMTP id b196mr17750498itb.74.1558690509165;
	Fri, 24 May 2019 02:35:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ2oMhLz9VHJoO_m8N7=jPN+3dxxCSZcsi8ZWMLtUtB0eGsOwg@mail.gmail.com>
In-Reply-To: <CAJ2oMhLz9VHJoO_m8N7=jPN+3dxxCSZcsi8ZWMLtUtB0eGsOwg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 24 May 2019 10:34:57 +0100
Message-ID: <CAJTo0LapxigXZi=AGp5TCMLGdaSyWktBgmVhajSJQFDS7nJuKg@mail.gmail.com>
To: Ranran <ranshalit@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Finding recipe for ATOM N450
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
X-List-Received-Date: Fri, 24 May 2019 09:35:10 -0000
Content-Type: text/plain; charset="UTF-8"

The meta-intel BSP is the recommend BSP for all Intel platfoms.

Ross

On Fri, 24 May 2019 at 10:30, Ranran <ranshalit@gmail.com> wrote:
>
> Hello,
>
> I searched for ATOM N450 recipe, but only found very old one:
> https://old.yoctoproject.org/downloads/bsps/edison11/atom-pc
> The problem is that we need newer gcc (above 4.8.2).
>
> Should it be better to just use generic x86 recipe ?
> https://old.yoctoproject.org/downloads/bsps/rocko24/generic-x86
>
> Thank you,
> ranran
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

