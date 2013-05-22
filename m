Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ea0-f169.google.com (mail-ea0-f169.google.com
	[209.85.215.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92590E013E3
	for <yocto@yoctoproject.org>; Tue, 21 May 2013 22:40:41 -0700 (PDT)
Received: by mail-ea0-f169.google.com with SMTP id m14so842107eaj.14
	for <yocto@yoctoproject.org>; Tue, 21 May 2013 22:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=j3vOq7Ad6/hnlvo4MqSN9FP10VUtJnmbchrHV49VcGg=;
	b=HAkc0sOVehlPZE4a7+kfUGrjJX5relJ3QjmmsXHsnRuPUrYbKkgM63kcj9+56nyOit
	PX1MXem/kgSTr4zuhE21dma51H4Gwm/UjIsesAsCDt19h//cSFQjAk03EECSO35iwr3L
	qakvObahw/QQqbQB3u+rT6mcOHx1eeTYiwyls=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=j3vOq7Ad6/hnlvo4MqSN9FP10VUtJnmbchrHV49VcGg=;
	b=ZVnlAzuTNdP832xU3epKWUIcodwwmXbwr+4Xs88PVIG6WnYSoFmKaazh0xlz4oP9Pc
	gb7zJH3z0/W23wL/vvmCPlZ6LBxdaUjLL6xnRuCXpx3QNSC8794nzrePAKcr266nI3Sn
	TTXNOw9YV8/z2n2yHARC7GNCFVEbxf6jIfAb1wLk6dBhkDywG1WJ7ZNfTRqtFiLafZpo
	3kGUbDzsSjMJv1Q6XMFJJ/Sj88Uj/5+UQOUscuqIRzC7OWOsM51E/ZKqFekctG2pQW5O
	SQ6ABSMNN7ZQ1emZ6xep54mfJr8ZME6ZvOhoMaI8o7kicpVSgDhk5/FqGUGgQz/aaBWg
	feQw==
MIME-Version: 1.0
X-Received: by 10.15.10.130 with SMTP id g2mr11598169eet.25.1369201240148;
	Tue, 21 May 2013 22:40:40 -0700 (PDT)
Received: by 10.223.96.71 with HTTP; Tue, 21 May 2013 22:40:40 -0700 (PDT)
In-Reply-To: <CAN0nBNhwxY1hxj+BAyDKKkVnHSOpcxLfZB+vOq5MQqVvZQiSjA@mail.gmail.com>
References: <CAN0nBNhwxY1hxj+BAyDKKkVnHSOpcxLfZB+vOq5MQqVvZQiSjA@mail.gmail.com>
Date: Tue, 21 May 2013 22:40:40 -0700
Message-ID: <CA+gsK-qmFq2NLcd4-AO=aRBC7q3W8fwRarLpnv9-WtS2TWFLtg@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Precipice Development <precipice.development@gmail.com>
X-Gm-Message-State: ALoCoQnhq+hT//PYuHJMBQ9X4sQwLuryGITkzdscPQAHDLeuTRPzctAQiRmdUBn3DcUu3vt1zvB1
Cc: yocto@yoctoproject.org
Subject: Re: ADT Install Issues
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
X-List-Received-Date: Wed, 22 May 2013 05:40:41 -0000
Content-Type: multipart/alternative; boundary=001a11c3fe288bccb304dd4801c8

--001a11c3fe288bccb304dd4801c8
Content-Type: text/plain; charset=ISO-8859-1

What root file system are you using with your Eclipse ADT setup? If you are
using one of the default ones that you can specify in adt_installer.conf or
your own?

In any case it looks as if your root file system image is not suitable for
development work. You would need to use image targets that end in *-dev or
*-sdk such as core-image-minimal-dev.

Rudi

--001a11c3fe288bccb304dd4801c8
Content-Type: text/html; charset=ISO-8859-1

What root file system are you using with your Eclipse ADT setup? If you are using one of the default ones that you can specify in adt_installer.conf or your own?
<div><br></div><div>In any case it looks as if your root file system image is not suitable for development work. You would need to use image targets that end in *-dev or *-sdk such as core-image-minimal-dev.</div><div><br>
</div><div>Rudi</div>

--001a11c3fe288bccb304dd4801c8--
