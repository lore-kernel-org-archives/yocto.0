Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D79FFE00D48; Thu, 14 Dec 2017 15:33:05 -0800 (PST)
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
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94433E00D1C
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 15:33:04 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id n138so14356600wmg.2
	for <yocto@yoctoproject.org>; Thu, 14 Dec 2017 15:33:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DRNZERxSFmcwjY1/YOrO/oa9Y/4GjG7mhMBJ/lfdE34=;
	b=B66cL3GptYjcei4vREfnM70EPWdn79Pp7M7qyX43QjTo271vrQe9m1mJlr5RWNOmq+
	G65YEPXNjBOOO8ARisAMNmE0KVjbc1TqN4L6ruDc60Hh2iQ015VqO9yLVvzUy04Rs7wi
	OQw/urp6GbfovaMHJi4bczuE4kughhyQWAbxBiUfP+A+9zFMJ9AJz25BierXxRuwfNLe
	s7cKERyQCXC74hsAq835MvETr9cZShryacfurB2mXTOMZdScwwUDyw3IH7rErKLxHgpX
	YgJJsznPp8cPb6es7jKu1FnhCL9IDSCb1Sg8jhMqY7ryOTzzc+DkL+RkByEVGN5S74Zp
	3VNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DRNZERxSFmcwjY1/YOrO/oa9Y/4GjG7mhMBJ/lfdE34=;
	b=Z4WrlBOm4kKBrvJfG05NIIt6RK24MRc3lyxbxGiSKWS5WAf8/7m4T/+sNVHlkH9VTM
	QQbetauw46yrwYAvJGq3irmJj7OEgDLb4U+sL82n1G9+0euAN7fs82r4cv6kxg58wui+
	4J4aUcFvaX73eDbhQjXV0UUVJ4UQ6uuJVsgkNRU6rLrxowwqn6qwzeO+hNd2G3yBo0GB
	qk5Crqqjj8MRuq8CknFQm3/GkwAezPRSyuyNQ6XG1utgQ1XAtVuXzqGeuw5tFKDsrU+W
	Fx44OcU2dzRpTpgdzSY99js6mQ+cPo7TzZvODGmafaDcbcgIV8gg7REGMmgAxFuLf+GM
	hizw==
X-Gm-Message-State: AKGB3mJjg0OtHFL0rvAzjHoJ7nOV/LHAAQjoAPFIE7psZo+5vDYhXq6o
	D7e6ZGqheQhMegziDbxp7hDwoaj+0Ga8EtffoNNNbA==
X-Google-Smtp-Source: ACJfBot9VBpQ5h9bkLICkjdTSzeP7XfvndzhMQZf79z+iX+CFQMQ+0oAGLRmkyq0IFkqEC0zm+tIJ6jxzm7uou3BiAM=
X-Received: by 10.28.199.75 with SMTP id x72mr3266481wmf.87.1513294383576;
	Thu, 14 Dec 2017 15:33:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.133.68 with HTTP; Thu, 14 Dec 2017 15:33:03 -0800 (PST)
In-Reply-To: <F1033569E865F34DB22FEDAEDE3F7246C14A6E@elys7052.corp.knorr-bremse.com>
References: <F1033569E865F34DB22FEDAEDE3F7246C14A6E@elys7052.corp.knorr-bremse.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 14 Dec 2017 15:33:03 -0800
Message-ID: <CAJ86T=W2tHMMbTac-pnPzqixLzYRw57KfqZcFmCvrUyCAy-vqg@mail.gmail.com>
To: "Greer, Charles (ext)" <Charles.Greer@bendix.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to disable a linux virtual terminal...
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
X-List-Received-Date: Thu, 14 Dec 2017 23:33:05 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Dec 14, 2017 at 1:51 PM, Greer, Charles (ext)
<Charles.Greer@bendix.com> wrote:
> Hi all,
>
> Would anyone know how to disable the virtual terminals in linux?  I am using
> Yocto, Morty version on an i.MX6 processor.

Try adding:

  USE_VT = "0"

to your machine config file.

