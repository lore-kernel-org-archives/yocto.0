Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DABAE00AC5; Mon, 20 Aug 2018 06:31:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE10DE00A86
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 06:31:44 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id k12-v6so25760360oiw.8
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2018 06:31:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=6Z92PmLGd8zHEss41Whq7PPKw/XK1j4wjGMsGOlaakE=;
	b=g+i1QZRg3Q33AweYQmrqTAYlRphbHlZ1+TppBqYhwAa2606knn2hW1PE7LTS8SbxYY
	x25MXh/xcqzRN44blbu4Tn4tmHQJxVf5mFiXiKwsyOkco1BteJY23ywa1V7OmZ50JLZG
	QQEhCJHcKA30AvheQSitOXwQsT8etAHjdXefKdcAfUtUy1QvASZ2fyWfq18NtN/2zfNP
	x8tCSxLUaPQg9PI15VERzXi/mlzilfhjfS9M0boVbtLezpUR0l0ENcCp9Woirp7tqryF
	wuwF88M07PUTaK2+nq7AlN6GjqIpnqAtcTIpdWQuoRyMvH9h5SvfeEHYHwrx2vuOcI4E
	OddA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=6Z92PmLGd8zHEss41Whq7PPKw/XK1j4wjGMsGOlaakE=;
	b=SuxoyrZrECSAk/SP3/TexOStsxpdjKGFH/pDWTAzrVDtkAYtA9HAF1g7+fyYp1qB1g
	6gPf0nnnJ6baj1umVFimgYO4FjNRPDZOYOcNjKIFnbzJUp0E1sYFvQtYKGrFqAro2HgP
	amszcjle+BR9RNIcgoQxUthEAS8xrVSN2N4NZuz6TWL8jHbKxW8TOZGUdjrIT/oxmFUT
	9a5JZxjcdguWcqbYof6afzryTa5hUomcKjklH0Vg4ag5OCQz3xyi9/+FyMfEDXSQfn8H
	cx1omxWKrEvSKFpvMoiO+F8cddkW8PkpjO125COFzpBz+37/iyk1eNiNi/ePcXlROvWN
	72aA==
X-Gm-Message-State: AOUpUlHloXsaZSZ5Lc8fMD713wjT7EZiGMEP9CrEckYIKos18I4DWpyt
	iN5IaZeXBuRA/axq2MiKCjfsIZauYF7JxUP2Oas=
X-Google-Smtp-Source: AA+uWPwN4V8GCaUqPxKcMY48ZHr39u8mOCh5CuF7IqHdpor3wBJNxUxN7NGdjfsNzdmJzU19emO/mNT0nNHKjPVH4vM=
X-Received: by 2002:a54:4611:: with SMTP id
	p17-v6mr13124196oip.226.1534771904321; 
	Mon, 20 Aug 2018 06:31:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90ed:0:0:0:0:0 with HTTP; Mon, 20 Aug 2018 06:31:43
	-0700 (PDT)
In-Reply-To: <CA+JN8xO0_DYoR3Bt9qVaZFHQRwnyd=fskuMy+YYrX3yTrAiZVQ@mail.gmail.com>
References: <CA+JN8xO0_DYoR3Bt9qVaZFHQRwnyd=fskuMy+YYrX3yTrAiZVQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 20 Aug 2018 15:31:43 +0200
Message-ID: <CANNYZj85_58EtQGhgkfe2N-Nk18jwO0iz87rxcAGfhzBYZsWZA@mail.gmail.com>
To: Seth Bollinger <seth.boll@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: coreutils postinstall warning
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
X-List-Received-Date: Mon, 20 Aug 2018 13:31:45 -0000
Content-Type: text/plain; charset="UTF-8"

2018-08-20 15:16 GMT+02:00 Seth Bollinger <seth.boll@gmail.com>:
> We've been seeing the following warning for a while now.  Is this expected?
>
> WARNING: manuf-image-1.0-r0 do_rootfs: Intentionally failing postinstall
> scriptlets of ['coreutils'] to defer them to first boot is deprecated.
> Please place them into pkg_postinst_ontarget_${PN} ().
>
> From what I can see, it's being caused by update-alternatives.  Is there a
> workaround for this?

You need to investigate further, specifically why the postinst
scriptlet is failing. Usually log.do_rootfs should give a hint.

Alex

