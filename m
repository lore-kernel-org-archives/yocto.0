Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62DAAE00E12; Fri,  2 Aug 2019 13:06:21 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.178 listed in list.dnswl.org]
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com
	[209.85.160.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2054E0090E
	for <yocto@yoctoproject.org>; Fri,  2 Aug 2019 13:06:20 -0700 (PDT)
Received: by mail-qt1-f178.google.com with SMTP id h18so75206725qtm.9
	for <yocto@yoctoproject.org>; Fri, 02 Aug 2019 13:06:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Lo+RlmTaLke7vjCTW1XugODscjsZaDy69ByMebOt64o=;
	b=uY1PeeEW8rrXVE2RhJzsVyl7QGrUq/h5OkilRQ6N33A401im9dAWFJeRiGIw7ihBxw
	QPLq1r2LZ3cUu7TFf6a+9i9uvrDom/L0aeBgHWn8rDnL4BPCB5cqJg8PaVu/RjpFCBkr
	tR/5ownaSVZA5Bj4ey7DvbF4yRw29iZpYzEpFkI7fjrI8TmcQcNrlbwZtbzF9Z4nWiej
	HuNSYPLZ2H1hRHTLAZAXgMgNT7UXLWLZ6UwMX8sSHZSsp/9uy8mjfrRIuzxUOifw0Dgd
	jW0naObEfWTr/XK5WxsjIW2/xkDdCiGzNgVP4KMi9pk7jBMnztx1kYWBEWR1zPkDriso
	/t0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Lo+RlmTaLke7vjCTW1XugODscjsZaDy69ByMebOt64o=;
	b=W2/ZzxnHXbGyVEKvQK/LEYvoo7Uj5MgmlgYA18rfXHN2Z/MZDV+WlajF4SMzbhqkvS
	IYF/MMY7kQvZa8WsJokgwnw4bGXINURL7ZekSFhZpKqn4KUrmjEQXyMZKJeWl3sk8YNj
	3liQfdM8PBaIhlR3GbW+hJMCyfhp/zOzf7PiwWobe759IKnfar9ravZQpzUFpo1C5zX5
	MeHxAgV6S/kOG0CUbMvkQR2umw/iNeVDNVUjLCwpEO6majJHmfpgebeY2hJI8McxZF0W
	loeSf4vbTbwmYegZm2KNRGE9DY/5EXgkptj26ClmayN8EgdbWwMoJjMFJM61kUZfHc/0
	wIQg==
X-Gm-Message-State: APjAAAUxJS8I2QEp7/vtgkiOiHgOXfLAhpYFPzmNZ158wEPcpZFiQtJ6
	YsxPfvwLBXqKZOzTdP6rupMelcPS6nIdFnQImHB+jHxs
X-Google-Smtp-Source: APXvYqxJsUiD15BTWydQBXZ/Qn771easivBJuK3F1txYuuXK+o/gdeE1OAIcKF99A4U2zWS7h42hwCvyiX1Phe50vDU=
X-Received: by 2002:ac8:764f:: with SMTP id i15mr94949728qtr.194.1564776379833;
	Fri, 02 Aug 2019 13:06:19 -0700 (PDT)
MIME-Version: 1.0
References: <77db42fc-d21e-9819-ee95-5962ecde7956@faresoftware.it>
In-Reply-To: <77db42fc-d21e-9819-ee95-5962ecde7956@faresoftware.it>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 2 Aug 2019 13:05:53 -0700
Message-ID: <CAMKF1sreZX2THLrHqhU6jsEG7xmPZKA2tyEOrGUMWc02ubFoEQ@mail.gmail.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: installed-vs-shipped
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
X-List-Received-Date: Fri, 02 Aug 2019 20:06:21 -0000
Content-Type: text/plain; charset="UTF-8"

Add

FILES_${PN} += "/usr/local/bin"

in recipe. but it would be nicer if it was installed into /usr/bin by
qmake/make files itself

On Fri, Aug 2, 2019 at 11:59 AM Mauro Ziliani <mauro@faresoftware.it> wrote:
>
> Hi all.
>
> This is my problem.
>
> I have my terminal.pro project (qmake5) with target "terminal".
>
> The default destination folder for the binary is /usr/local/bin
>
> With this setup I get installed-vs-shipped error.
>
>
> Why?
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

