Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 759DBE007AA; Wed,  8 Mar 2017 09:26:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.173 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.173 listed in dnsbl.sorbs.net]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f173.google.com (mail-qk0-f173.google.com
	[209.85.220.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C62B8E0030B
	for <yocto@yoctoproject.org>; Wed,  8 Mar 2017 09:26:40 -0800 (PST)
Received: by mail-qk0-f173.google.com with SMTP id v125so75766037qkh.2
	for <yocto@yoctoproject.org>; Wed, 08 Mar 2017 09:26:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jZ/FBvpg5nGoSKn5jJTyTlNbBPqo3pzkSwv0KZKYzWc=;
	b=LAa5PepNZCsif3QweQ4GuY9OU9ryfk3uAD4gdBvXG9gKn38UGLN27aOcgfOyu9PtyA
	d9y5bWhZG4jZyZjvxox8z6VF8LD5AbqNgAv6DdICklOkqLJF+MFH4KIsEUbU7jMB6qOH
	zkI+hoSBA+Y78k/6n9xH+a9HteARLlI++yLc1GmEibVPCxkCYt7XdfVnfaY9kGL9tYRT
	FL13cdgR2XHYYkcZ+FYlzlqTRkVGalXUH17CvPbpy6ADOdQ6IwDYGbmhBm31cW9f2dJG
	tveTF7AeB3hKnzQRnPdXE2Kq9JvEKAXbP8hMAX/GA9KgmqLQxBsZ6LerJWSIxEx33ag7
	9Crg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jZ/FBvpg5nGoSKn5jJTyTlNbBPqo3pzkSwv0KZKYzWc=;
	b=LMnzT3YKGH855Nm2PSzVAkA5dO2EZgUUfvp8kkpi42hm1XdpMoGFTVCU9etS+pe+Js
	ymHH4siMTsW09Pg8FU1cCGqQQCjOwvlnKotu73+Hmxjn1EJ+8fbdN+KurNQXHxqlpugi
	7JZCOiuLQNPi+ZV88clGXZG9MlZcz5VETC3tnSqnJaLdCdA7JBXhKE9piyYpscjHtaeT
	8aGuDJ+c4Gy8tXCz0rtd1MaxMeM99BqpdVf/yhByQrQdkR4cx4+4N0nyyLNa2efjyoN5
	1dFC1Z2FI/NhArEl1gvx43v/njbkNyfxklB3Q6C6nDV8T0oMxkGiqd9z8+rbMKRwpUZ8
	NgnQ==
X-Gm-Message-State: AMke39lmZGy3DheiJu9Xj/caBSsi0YCJJYtBckdXZxq6m4SFV8iTz5AxncxC7g9BAOUILzfz3TOzQAI9I1pbNn6Y
X-Received: by 10.237.34.250 with SMTP id q55mr9108316qtc.144.1488993999897;
	Wed, 08 Mar 2017 09:26:39 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Wed, 8 Mar 2017 09:26:19 -0800 (PST)
In-Reply-To: <74195435-cd89-3ad8-1f01-9357175b78dd@fridu.net>
References: <5b2fcd4d-acd2-bfe3-5d91-1f713054ad92@fridu.net>
	<CAJTo0LbfX7tfNxuBB2df3XYvM2zKEDis4zMtpD3KcgEaQtJk3A@mail.gmail.com>
	<CADG2P4VOkc=f6-F8GwqM91MHY9Trw8A=7XU0skohOnsAxP+zJg@mail.gmail.com>
	<CAJTo0LbmYV=_CZU66+iuq9PQn0pXq1U9gZnB_jbsk8s=1Z7H0g@mail.gmail.com>
	<74195435-cd89-3ad8-1f01-9357175b78dd@fridu.net>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 8 Mar 2017 17:26:19 +0000
Message-ID: <CAJTo0LZ4ZGav_1ONGdz0rxWL4-R5ANWREfa-nPZpMt8eS8mmOw@mail.gmail.com>
To: "Dominig ar Foll (Intel Open Source)" <dominig.arfoll@fridu.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gst-plugins-bad- Patch fails 'ensure-valid-sentinels-for-gst_structure_get-etc.patch'
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
X-List-Received-Date: Wed, 08 Mar 2017 17:26:41 -0000
Content-Type: multipart/alternative; boundary=001a113eea5a6ffe71054a3b6eba

--001a113eea5a6ffe71054a3b6eba
Content-Type: text/plain; charset=UTF-8

On 8 March 2017 at 17:24, Dominig ar Foll (Intel Open Source) <
dominig.arfoll@fridu.net> wrote:

> as now the recipe is called because I have declared that I wanted to use
> vaapi.
> It seems to call fo gst-plugins-bad.
>
> There is obviously quite a few problem with that recipe.
>

gstreamer1.0-plugins-bad comes in 1.10.4 and +git_1.8.2 forms, the 1.10.4
version is preferred.  Your distro must have explicitly selected the +git
form.

Ross

--001a113eea5a6ffe71054a3b6eba
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 8 March 2017 at 17:24, Dominig ar Foll (Intel Open Source) <span dir=3D"=
ltr">&lt;<a href=3D"mailto:dominig.arfoll@fridu.net" target=3D"_blank">domi=
nig.arfoll@fridu.net</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><font size=3D"-1">as now the recipe is called because I have declared tha=
t I wanted
      to use vaapi.<br>
      It seems to call fo gst-plugins-bad.<br>
      <br>
      There is obviously quite a few problem with that recipe.<br></font></=
blockquote></div><br>gstreamer1.0-plugins-bad comes in 1.10.4 and +git_1.8.=
2 forms, the 1.10.4 version is preferred.=C2=A0 Your distro must have expli=
citly selected the +git form.</div><div class=3D"gmail_extra"><br></div><di=
v class=3D"gmail_extra">Ross</div></div>

--001a113eea5a6ffe71054a3b6eba--
