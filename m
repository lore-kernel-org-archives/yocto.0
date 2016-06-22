Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49C4DE00AD8; Wed, 22 Jun 2016 12:18:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1600E00A6D
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 12:18:40 -0700 (PDT)
Received: by mail-it0-f53.google.com with SMTP id a5so108324899ita.1
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 12:18:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=v5UxrZ15jNpi5SwsLCLG8buz1NtRyljKFaIQqteCrhw=;
	b=Ff47SafglvkR6r/2d65tfXI/kDH4T4Se2s+sQTuMMAeeZo7BKrfwjOrBP0YDpEwyJ2
	chdHIrHXZkReBQ/OgwWZhUmVdTxb3z2bNi288XFwbUK/mi3B7DfPJk7q0NhRRU8hrQYE
	WpruSe24If6tKnyz8HBHaJlfZ7TGUhB4GiCadPBoDeqlYHEMEzrpJ3b+GFrJO4Lal9jZ
	YYb1O2ehRaoHSZ6SZibAXmPzK2Pun6Zva7aZkKMXGghnhqNs2aRQhv6/1rhY9M9xFUe5
	/AiF96UvU0YPqNVotOfCnIgabNzstehIo1ZgXV679uafkcTDoMzO+8ffGExGq5sld70N
	RuRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=v5UxrZ15jNpi5SwsLCLG8buz1NtRyljKFaIQqteCrhw=;
	b=EcewyiJO+R2hBBGt6/xzbSX1JiXfLlDUWgo7WwI5TRPxvDWT+uLE4/D1eRWE33oNA2
	4ie2oCzrC3xfphbivlL6tqIOYFuAsiQx7fG7NkQXsosfK8snnRBD9QND57cx9b69Eq85
	hAle72DZcy1gWy7LU29Ou90jPbLT88LuHFCqPgpRy0zd37YoCpU4FyLbOeFoZRzfnNNz
	tdIL8B4gmYi64QUn7v2uYE8vv7yn8jtjsFXuw0/kAwlZMCirkEmN6KlhTM8rihG8TLwN
	jkZWjHuHmKHSdX5aHpxBxTmEQ+1uJ/iJpxZ/zGd9I6KQgjFtKSyANnxtseF4chvHbrWP
	jmkw==
X-Gm-Message-State: ALyK8tK+G45KVSSbKFmtGnrP2qpnxzkjQ0JgsZOAo/ZSn0JspI5VqlTwkPM4kw5il/naApu6/+ZhkeBRekWxvB0U
X-Received: by 10.36.2.71 with SMTP id 68mr17241245itu.38.1466623118819; Wed,
	22 Jun 2016 12:18:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Wed, 22 Jun 2016 12:18:19 -0700 (PDT)
In-Reply-To: <111ACD726EC3464BAED310F5EA7BEBDA600E27@RCHEXMBP1.fnc.net.local>
References: <111ACD726EC3464BAED310F5EA7BEBDA600CE1@RCHEXMBP1.fnc.net.local>
	<CAJTo0LYWdLr=uBy_vZ9GeiNQhxjRZbYubNSCzfOd3dFFDfJ-og@mail.gmail.com>
	<111ACD726EC3464BAED310F5EA7BEBDA600E27@RCHEXMBP1.fnc.net.local>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 22 Jun 2016 20:18:19 +0100
Message-ID: <CAJTo0La0PcLZtTbozgspB9nr6O81aq5rpjcHekiCQ2kZWYbAtg@mail.gmail.com>
To: "Rajasekaran, Monica" <Monica.Rajasekaran@us.fujitsu.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error applying patch - openvswitch
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
X-List-Received-Date: Wed, 22 Jun 2016 19:18:43 -0000
Content-Type: multipart/alternative; boundary=001a1144b1d00466370535e2ce41

--001a1144b1d00466370535e2ce41
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 22 June 2016 at 19:25, Rajasekaran, Monica <
Monica.Rajasekaran@us.fujitsu.com> wrote:

> After applying the patches, I brought up my openvswitch which works
> correctly alongside the controller but I don=E2=80=99t see any of the pri=
nt
> statements I added to view the changes inside. Is there a way to check th=
e
> updated source code with my patch in the target machine ?
>
>
Not really, but looking in the work directory (tmp/work) will tell you if
it got applied.

Ross

--001a1144b1d00466370535e2ce41
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 22 June 2016 at 19:25, Rajasekaran, Monica <span dir=3D"ltr">&lt;<a href=
=3D"mailto:Monica.Rajasekaran@us.fujitsu.com" target=3D"_blank">Monica.Raja=
sekaran@us.fujitsu.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quo=
t;Calibri&quot;,sans-serif;color:#1f497d">After applying the patches, I bro=
ught up my openvswitch which works correctly alongside the controller but I=
 don=E2=80=99t see any of the print statements I added to
 view the changes inside. Is there a way to check the updated source code w=
ith my patch in the target machine ?<u></u><u></u></span></p>
<div>
<p class=3D"MsoNormal"></p></div></blockquote></div><br>Not really, but loo=
king in the work directory (tmp/work) will tell you if it got applied.</div=
><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div>=
</div>

--001a1144b1d00466370535e2ce41--
