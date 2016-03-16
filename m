Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB9DDE007DC; Tue, 15 Mar 2016 17:24:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f43.google.com (mail-qg0-f43.google.com
	[209.85.192.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E801E006AE
	for <yocto@yoctoproject.org>; Tue, 15 Mar 2016 17:24:18 -0700 (PDT)
Received: by mail-qg0-f43.google.com with SMTP id u110so30060189qge.3
	for <yocto@yoctoproject.org>; Tue, 15 Mar 2016 17:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=5oRA30gAfSvz6uheYBlTKnkW5KQvj2uyPbxx2lBYIZc=;
	b=r7O5BQ5MhFmTFBqh88h0ThOC3cAqG6XewNAZ0rwk5rFKxXbT/D+2ER2IWflLZbB4bV
	f77H2NMUWYUDhxDkCYUnLe/aBhxo8J/5qrYuNsI2mnVWuwpHrzqGNCnyIWCWl2HST81U
	qrmr4bxd4FPXaRVaMjn+wLPRJwrFapSu+9HRTNYzEG5qAe9HFQRYaeV0R+1So4/zjAnU
	2s4p5ODCgSlWBoWQQfRXn/M41guTBuwiZvyfH7jzQ1O63OcKT2jTQSBAoh76evjrkplY
	8ccqT9MmWjPlwyFuF9UyzRp8wEnPQIvgS4Egmw1PHlP4jWXE20zvn1K3asT/QwNA7OOy
	n7mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=5oRA30gAfSvz6uheYBlTKnkW5KQvj2uyPbxx2lBYIZc=;
	b=adFsTKd2C4FmzYBo7s/eAa1U6GDB0biSqqooEJs94ks0AEvEcei3SDfaGMAgYoWvTx
	Q9rifu6XLwIhqdGtp2SBvT4dOZQxSH+vVYDOvlcyCRYt35Q3Lv/buUlp94USUWLRryUp
	dW2kMU238eEEnmVqquPa7nzP18tU+/nxdqadVYRV9QF5WixjBScQ3TQ8mJLJ2iaA1iUI
	JNB0dshuflK8EoIOdx0YEeEi9WvleXlENrVPAje8w2jjXkDDJQLAhjzAmkl47XHsGtJx
	Y4IMy4CTOHEnPL653tGBHqj8Q25OCW/OYeq9WxBVXuJ4VEPc1iLP6sFeVLAEUiW7w+al
	+Ytw==
X-Gm-Message-State: AD7BkJLxh91xNMEVOm9F0cC/3qA2e/b6y+npCENLxesVFZQtHDiHN6c36z343xWN6LlCj8A5rU5W69TMdTTGUQ==
MIME-Version: 1.0
X-Received: by 10.140.172.212 with SMTP id s203mr1291562qhs.41.1458087857404; 
	Tue, 15 Mar 2016 17:24:17 -0700 (PDT)
Received: by 10.55.130.196 with HTTP; Tue, 15 Mar 2016 17:24:16 -0700 (PDT)
Received: by 10.55.130.196 with HTTP; Tue, 15 Mar 2016 17:24:16 -0700 (PDT)
In-Reply-To: <9A61AAE9-AAD4-4DD4-8EDA-37213EC09B3D@keylevel.com>
References: <9A61AAE9-AAD4-4DD4-8EDA-37213EC09B3D@keylevel.com>
Date: Tue, 15 Mar 2016 17:24:16 -0700
Message-ID: <CAMKF1sodiaivma5gFneA+SwkQZdr79-gZo7mffW1QQnzH9BcdA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Master or master-next?
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
X-List-Received-Date: Wed, 16 Mar 2016 00:24:20 -0000
Content-Type: multipart/alternative; boundary=001a113a7eaecac15f052e1f88e9

--001a113a7eaecac15f052e1f88e9
Content-Type: text/plain; charset=UTF-8

Master
On Mar 15, 2016 3:57 PM, "Chris Tapp" <opensource@keylevel.com> wrote:

> Should I use master or master-next to track 2.1 release progress?
>
> --
>
> Chris Tapp
> opensource@keylevel.com
> www.keylevel.com
>
> ----
> You can tell you're getting older when your car insurance gets real cheap!
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a113a7eaecac15f052e1f88e9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Master</p>
<div class=3D"gmail_quote">On Mar 15, 2016 3:57 PM, &quot;Chris Tapp&quot; =
&lt;<a href=3D"mailto:opensource@keylevel.com">opensource@keylevel.com</a>&=
gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Should I=
 use master or master-next to track 2.1 release progress?<br>
<br>
--<br>
<br>
Chris Tapp<br>
<a href=3D"mailto:opensource@keylevel.com">opensource@keylevel.com</a><br>
<a href=3D"http://www.keylevel.com" rel=3D"noreferrer" target=3D"_blank">ww=
w.keylevel.com</a><br>
<br>
----<br>
You can tell you&#39;re getting older when your car insurance gets real che=
ap!<br>
<br>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div>

--001a113a7eaecac15f052e1f88e9--
