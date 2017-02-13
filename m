Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A955E00726; Mon, 13 Feb 2017 08:17:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.181 listed in list.dnswl.org]
Received: from mail-qt0-f181.google.com (mail-qt0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BC94E00566
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 08:16:55 -0800 (PST)
Received: by mail-qt0-f181.google.com with SMTP id w20so87171230qtb.1
	for <yocto@yoctoproject.org>; Mon, 13 Feb 2017 08:16:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Jr2LLq9dnoSF062Ch1uhh0PQnWXJ/MctXXpaTX7aDOI=;
	b=xFjYgITJn2t3pf06D6PTvhOreKJB/W26eGq6+Kuqvhzw9/V19L/YeAeT4YPG4vTv9I
	4e2uEC5xhOiGkm/ZMocnAL5n7+uvc4fxw2i57whXSqkXHCxE1/Jbdr4qHNS+6+H1c65j
	J5g2s4oEFGkSu7rJbwHT8g+j/f/8tVsSR0SNZf8wq9xMrMGkNG+YCaeK9xo35wBD6iNK
	3r3a2Cs/T9nmaKDgZHul7h4Yi3dkZIJq0X6emx0gGhM6vBs4wbA/YGwb+ljoyV2blmAq
	OZIIN+inh+UYQ/PPUrDN3r0OQjnCM6GqOl6cmSnlRVnwCpdxojxHlJc1XxCuC+LBOnUr
	in7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Jr2LLq9dnoSF062Ch1uhh0PQnWXJ/MctXXpaTX7aDOI=;
	b=d2ljRxsqROBDqxYh/6YbDlpcJu2iqvJJJyEJMSoKr/pgPdllr52EP8OiIefHimFtNi
	6+dM0L1hgQkPKqhDoZNTsIg5vrFKCgnGgLR85U9ks/EqEmfkYTaqoYThGh5/ID9ZZ8ql
	8E0aZ4CREqMytlCHzvejeAw42lEae/RW9rWL5ypAu08QZGZLy/QcA/9I5ECkcRyg88BU
	/CY5EaLb/R+ywb/Ebue7Jb1Yb8/kHYphZ7D4bYMNiv73prHKa2zT2WivenMuEAAY7gYT
	rLuI/RGMXO4aAOLxRUKJOHRP56s1b0sZyNZSB9DfijW4hdEh4RLPVVt3WiaSYOystDBJ
	iIag==
X-Gm-Message-State: AMke39nsisyP5n8i/Omay+JKPdPCow6RMNQenGCNOT7MmKGEmcxj48Gq7620Aifdl2kyHYBf1ZobCa2PRKLb+Oip
X-Received: by 10.200.53.247 with SMTP id l52mr22030308qtb.144.1487002614801; 
	Mon, 13 Feb 2017 08:16:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Mon, 13 Feb 2017 08:16:34 -0800 (PST)
In-Reply-To: <1364734484.348693.1487002445271@email.1and1.co.uk>
References: <007b01d28611$cea76a90$6bf63fb0$@ln-systems.com>
	<CAJTo0LYeXAhckriALOOtB9cMBd9fq8CHY3f5EQ3JBXJog-d7HA@mail.gmail.com>
	<1364734484.348693.1487002445271@email.1and1.co.uk>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 13 Feb 2017 16:16:34 +0000
Message-ID: <CAJTo0LaGH5pBXAf7YpWvm2qp98t9_VikDUMKmP3KwyqsSKxs4g@mail.gmail.com>
To: Colin Helliwell <colin.helliwell@ln-systems.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Out-of-tree module errors installing its udev rule
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
X-List-Received-Date: Mon, 13 Feb 2017 16:17:03 -0000
Content-Type: multipart/alternative; boundary=001a1142ba20a2cce705486bc687

--001a1142ba20a2cce705486bc687
Content-Type: text/plain; charset=UTF-8

On 13 February 2017 at 16:14, Colin Helliwell <
colin.helliwell@ln-systems.com> wrote:

> > Also udev rules go into ${nonarch_base_libdir}.
>
> Oh ok, hadn't encounter that var. What's the reasoning? (i.e. where would
> that be pointing in comparison to ${base_libdir}
>

udev rules are arch-independent so udev looks in /lib, whereas $libdir can
change depending on multilib (it may be /lib64).

Ross

--001a1142ba20a2cce705486bc687
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 13 February 2017 at 16:14, Colin Helliwell <span dir=3D"ltr">&lt;<a href=
=3D"mailto:colin.helliwell@ln-systems.com" target=3D"_blank">colin.helliwel=
l@ln-systems.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><s=
pan class=3D"">&gt; Also udev rules go into ${nonarch_base_libdir}.<br><br>
</span>Oh ok, hadn&#39;t encounter that var. What&#39;s the reasoning? (i.e=
. where would that be pointing in comparison to ${base_libdir}<br></blockqu=
ote></div><br>udev rules are arch-independent so udev looks in /lib, wherea=
s $libdir can change depending on multilib (it may be /lib64).</div><div cl=
ass=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1142ba20a2cce705486bc687--
