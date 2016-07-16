Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F9F6E00F84; Fri, 15 Jul 2016 17:09:34 -0700 (PDT)
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
	*      [209.85.220.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f182.google.com (mail-qk0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19AD1E00C7A
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 17:09:32 -0700 (PDT)
Received: by mail-qk0-f182.google.com with SMTP id x1so30735758qkb.3
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 17:09:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=M4RgJbSd1VH7NUwOnxeYT3mibfvFtW2XFEVlbF83UWk=;
	b=0aLS1MXjhEp19UPqmxuoF1T3PMZ8EybrJJ5xzRI8f6fe0ZiCiOIu0rq1DxfqySWGnC
	WfowchInO+HhlzwRmZdprqcexEujEMnjr1AHtO/1+ONkspoQQgjLy/sIKArGkPh8WyAv
	ssZg6QuZ2AhzObpz4a4m7X91/+raL65GxMASqFihiulAibua2pUfUZCGTNaz4kv6l437
	CqFVTOwujyAyc++0lvOFtSf7jOth5w6BhSRQcHw91XW+jO4UWrlSrrfuiEcjRSb1dObv
	NhqTe3LNC0srG9KZ2gx5MbX+enhpvgj0khWysEJduFn0RBztIeoGgu3Jqbo9TRILMNdh
	q77Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=M4RgJbSd1VH7NUwOnxeYT3mibfvFtW2XFEVlbF83UWk=;
	b=VRM7KYYrQJD8BJMXBCDcro7//NwVoQ+fGioUvy6ymuuPmky5QvsCsRKKwGywspMrf9
	KhT3FD8KSgq4hqBmH8nFdg/SqMHJvUVh9AcEHO1h06Bk6YOvSk5E62d6Fc/ANTyosQoc
	AXDhtQSEU/rI7GE1Do+0cX/WciWlZps75SnEKIzyS1Pd+cSI+tKZ9PwpJT68o6v6cQ33
	F0r/13QTKBNbLy/X1jQQP5MfPi1HkG+xDtUkzK6cGyNA5Xvazks7SUP8BcaBvTYwneFD
	0lvb/US5M5GWR14JdIti97cmojCMBYYrEexmxhy5W2b5pLhX4yVeqvigAqv4kuyqb9yn
	VMSg==
X-Gm-Message-State: ALyK8tKQ5Fbt2TkBNJo17FDVrEgSKt8Xkkq051NK4pM69t5nk6y8B+RcyeqxKbENAIDSAhe+/BZpMd7KcyMS0A==
X-Received: by 10.55.74.138 with SMTP id x132mr28956077qka.26.1468627771846;
	Fri, 15 Jul 2016 17:09:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Fri, 15 Jul 2016 17:09:02 -0700 (PDT)
In-Reply-To: <OF43B23F94.0C7F0AE3-ONC1257FF1.00448DD6-C1257FF1.00455590@esa-grimma.de>
References: <OF43B23F94.0C7F0AE3-ONC1257FF1.00448DD6-C1257FF1.00455590@esa-grimma.de>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 15 Jul 2016 17:09:02 -0700
Message-ID: <CAMKF1soR70CJYUmqHRxMj4MWPkzV+qWEsYOCwK+0yEKSvdp+Jw@mail.gmail.com>
To: S.Jaritz@esa-grimma.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to set the console color by default
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
X-List-Received-Date: Sat, 16 Jul 2016 00:09:34 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

2016-07-15 5:37 GMT-07:00  <S.Jaritz@esa-grimma.de>:
> Hej
>
> It is Friday and the week is almost over - it is time for some image
> beautifications!
>
> Is there a switch to activate the console colours by default? If not - wh=
at
> is the preferred way to produce a nice coloured console?


may be something like described here ?
http://www.linuxjournal.com/article/8603
>
> Regards!
>
> Stefan Jaritz
>
> ------------------------------------------------------------
> ESA Elektroschaltanlagen Grimma GmbH
> Broner Ring 30
> 04668 Grimma
> Telefon: +49 3437 9211 176
> Telefax: +49 3437 9211 26
> E-Mail: s.jaritz@esa-grimma.de
> Internet: www.esa-grimma.de
>
>
> Gesch=C3=A4ftsf=C3=BChrer:
> Dipl.-Ing. J=C3=B6rg Gaitzsch
> J=C3=B6rg Reinker
>
> Sitz der Gesellschaft: Grimma
> Ust.-ID: DE 141784437
> Amtsgericht: Leipzig, HRB 5159
> Steuernummer: 238/108/00755
>
>
> Diese E-Mail enth=C3=A4lt vertrauliche und/oder rechtlich gesch=C3=BCtzte
> Informationen.
> Wenn Sie nicht der richtige Adressat sind oder diese E-Mail irrt=C3=BCmli=
ch
> erhalten
> haben, informieren Sie bitte sofort den Absender und l=C3=B6schen Sie die=
se
> Nachricht. Das unerlaubte Kopieren sowie die unbefugte Weitergabe dieser
> Mail
> ist nicht gestattet.
>
> This e-mail may contain confidential and/or privileged information. If yo=
u
> are
> not the intended recipient (or have received this e-mail in error) please
> notify the sender immediately and destroy this e-mail. Any unauthorized
> copying, disclosure or distribution of the material in this e-mail is
> strictly
> forbidden.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

