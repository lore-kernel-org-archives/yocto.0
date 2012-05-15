Return-Path: <halstead@happypunch.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96C59E013BB
	for <yocto@yoctoproject.org>; Mon, 14 May 2012 20:21:57 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so6521570yhf.35
	for <yocto@yoctoproject.org>; Mon, 14 May 2012 20:21:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=happypunch.com; s=google;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:content-type;
	bh=RVkJBle8/c5OfAyEEAaD+rliD90Uvrvp0Gv+uqe8yY4=;
	b=AonvfKXMit2SIqkQTdg6poC2rd71LR9EznPmuIyYooKfNhnNq6/InPZrnD9OTS6Kez
	qTVqz1pRZilh/eYODwpNuiTQbfFxYlVigJrvzz8/GPdEogxfnMp+qqloJSuMAxsmWbGM
	CFEYBuz9d61zmxvmLhcBEy5nl6YccmjNfZWLQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=RVkJBle8/c5OfAyEEAaD+rliD90Uvrvp0Gv+uqe8yY4=;
	b=ZAsMPpw/XgW4hl+rBFuqXio5lULr3kgWDEJdK603OolAZvnRSGEYI9eyf2QVAWwrIp
	CLiBq4q3z0EBEoWeKsr9rEXfpAjffrf9hJrvQcHzGS/SYTQoD7MsCHdpiMxY2gZm+Ii5
	DbomNluEzPlNmYSnxb3Y0N4nfWefng9g1boEAUa+l1yxy9Hx93NwK1RWag0oZODmlXQN
	+nwLAHj/DNkpDx7oZIQkTnLRjXx8vUzty0GkenBE4f32twYSfWqvqafYozL4EAVWxsjl
	k4MsoVY2vIdQsN1uXICHMnEDm+7JYd6KOjsBm+CFxxdChLm+EDJn61wJ82SM+TmVEBQU
	yhTA==
MIME-Version: 1.0
Received: by 10.50.186.134 with SMTP id fk6mr6500282igc.22.1337052116600; Mon,
	14 May 2012 20:21:56 -0700 (PDT)
Sender: halstead@happypunch.com
Received: by 10.50.216.228 with HTTP; Mon, 14 May 2012 20:21:56 -0700 (PDT)
Received: by 10.50.216.228 with HTTP; Mon, 14 May 2012 20:21:56 -0700 (PDT)
In-Reply-To: <CA+f-kVKVWsG7A4N2Sabgb-J81PrDH+2tNaormqNGfgEkTfnNxw@mail.gmail.com>
References: <CA+f-kVKVWsG7A4N2Sabgb-J81PrDH+2tNaormqNGfgEkTfnNxw@mail.gmail.com>
Date: Mon, 14 May 2012 20:21:56 -0700
X-Google-Sender-Auth: j9d2H951tzCT7_d7sZl4LhyZc-s
Message-ID: <CA+f-kVJxDQDddjSEb3eR_-ZQuDx_FCq+BPgRZUU61rfCPJchBA@mail.gmail.com>
From: Michael Halstead <michael@yoctoproject.org>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQmI3/+jf/RdZD85UyA9fdLSN/x1YjQ/ByNVeWo80IwSHpZt99tqLHy1Pfld/JR/y6DAVbiV
Subject: Download mirror instability
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 15 May 2012 03:21:58 -0000
Content-Type: multipart/alternative; boundary=14dae9340f2d74c7ec04c00ab472

--14dae9340f2d74c7ec04c00ab472
Content-Type: text/plain; charset=ISO-8859-1

We are experiencing download mirror instability that began with a DDOS on
Friday. Since then the network configuration attached to the mirror server
has been in flux. This caused several outages. Fetcher failures during the
last 36 hours are probably caused by these issues.

I am in the process of building a new download server which will help with
stability. I will post to the list when the build is complete.

Michael Halstead
Yocto Project / Sys Admin

--14dae9340f2d74c7ec04c00ab472
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p>We are experiencing download mirror instability that began with a DDOS o=
n Friday. Since then the network configuration attached to the mirror serve=
r has been in flux. This caused several outages. Fetcher failures during th=
e last 36 hours are probably caused by these issues.</p>

<p>I am in the process of building a new download server which will help wi=
th stability. I will post to the list when the build is complete.</p>
<p>Michael Halstead<br>
Yocto Project / Sys Admin</p>

--14dae9340f2d74c7ec04c00ab472--
