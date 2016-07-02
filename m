Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62DD2E00C6E; Sat,  2 Jul 2016 02:26:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8ED05E00C1E
	for <yocto@yoctoproject.org>; Sat,  2 Jul 2016 02:26:37 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id t74so118786977ioi.0
	for <yocto@yoctoproject.org>; Sat, 02 Jul 2016 02:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=J1SaDPhX/yZtGGEJopSe7I+5fIxAJK30310SFc+Hjf4=;
	b=EPIs4ziErFeXsm9+kzL4C/yiyCICS9GiJE4U8NTKAv3dV5KAsC0v+F6Is8YfI4m7+F
	OIXw7pzE7s2Xj/7V2566y4aMYXZwcGvo3JZ+I5cz1/6uMQZb8VfkM7b/B9+6Mr/tHKCF
	MdVEeoN0Qa5ZPXg/BtIvgJaJILnqfRFqI4c/0xlOfxBf65tFc/ydl/5/Pwjndcn1ORLL
	01grpePbm4SoJUE4SVVA1qrTZgNeyxbHfzhik1WPZWbbAHBvTvQpP9jSTlqEpmIwdfPt
	4RIGTlf7JbxuCYXyXsrK5qIMJVJJO0R8j+k90z8Lg5UMzcF4AJp8hHGYNnD2mviRP8PI
	qJGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=J1SaDPhX/yZtGGEJopSe7I+5fIxAJK30310SFc+Hjf4=;
	b=JExAD9Z1vJJXXeKugTtle71LtFbvN2Bg7CzATCdLjXu28GEF6lG1xvabnlSZ3oUem/
	eZ/q8+OWNRJfGmHpwN+ngfW1362sJjRh5tLhlag9e/BbBNmYd4oz+8Y1Z1fptsKDlJdK
	johD/UZNrj6WCiuNonmS4YKtOM2+2W29zMbuJVR7XRCvc+E7pMP2QHVS08GVPGZlx+y/
	C8Bg9JJEUz6cNQYPP+3j2Q7qOlO045hKmOxgZnZDLynyuVyfb0GGPVmiA3svAVKHWRId
	1LGS7Z6cqwVqRDBLsNyEdOb1gXZ3xgaTWLPvp1EYbBVYan5ULKZO0NCDb4qigPIlDcfB
	o4Ig==
X-Gm-Message-State: ALyK8tLMkuVHObDJpdtNaBD3UA2r87/RRhigvahUTh5/KsyBENpGlEi7/PCrYwHx5jgJsbJ7/aS8qzy07bOsjZQQ
X-Received: by 10.107.135.137 with SMTP id r9mr2164975ioi.133.1467451597189;
	Sat, 02 Jul 2016 02:26:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.151 with HTTP; Sat, 2 Jul 2016 02:26:17 -0700 (PDT)
In-Reply-To: <f7f70173e1304433b5bb00c0f8cec5bf@HIBDWSMB02.ad.harman.com>
References: <d023141f03804bacb323bdfb95daee19@HIBDWSMB02.ad.harman.com>
	<CAJTo0LYiA-mxZUuK8bOx64tFMvPmvRBBzExcQNfxsc5q6JvxMw@mail.gmail.com>
	<b57493dfacad490388b9bd3600179e65@HIBDWSMB02.ad.harman.com>
	<CAJTo0Lbu3O3Qqo2be_t4=pXr-B=q=J-diKNm-ZuJsbW0C=0wpQ@mail.gmail.com>
	<c3c0e392db09430d91496cf4def6c395@HIBDWSMB02.ad.harman.com>
	<CAJTo0LZCxCYNL-C0LU5oKVwSzeQfY5DCJXsiHR1N_PwdcBHHTw@mail.gmail.com>
	<0821b36bfa664ed49614099e658e46b9@HIBDWSMB02.ad.harman.com>
	<CAF3SDA4+4NhbBskh=PxDGqJP1PFcwFOEHYEK04DOTVv7mKTRrg@mail.gmail.com>
	<1980608174.6503.1467381831219.JavaMail.zimbra@evalan.com>
	<CAF3SDA5jrx7n5C6WpFGKJSxnnwY=VJJ-EDdUYwYt45Z5xfTw9Q@mail.gmail.com>
	<f7f70173e1304433b5bb00c0f8cec5bf@HIBDWSMB02.ad.harman.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 2 Jul 2016 10:26:17 +0100
Message-ID: <CAJTo0LaSUYdjYmxwV7OdbqKeic-B7pMZROEKvEpC7o0jetqxwQ@mail.gmail.com>
To: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: setcap using recipe
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
X-List-Received-Date: Sat, 02 Jul 2016 09:26:41 -0000
Content-Type: multipart/alternative; boundary=001a113ec8422d110f0536a3b361

--001a113ec8422d110f0536a3b361
Content-Type: text/plain; charset=UTF-8

On 2 July 2016 at 10:22, Kumar, Shrawan <Shrawan.Kumar@harman.com> wrote:

> Can someone review the attached recipe and help solve the problem
> statement  ?
>

As has been said, you need to ensure the postinst is delayed so it runs on
the target and not on the build host.

http://www.yoctoproject.org/docs/2.1/dev-manual/dev-manual.html#new-recipe-post-installation-scripts

Ross

--001a113ec8422d110f0536a3b361
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 2 July 2016 at 10:22, Kumar, Shrawan <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:Shrawan.Kumar@harman.com" target=3D"_blank">Shrawan.Kumar@harman.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);b=
order-left-style:solid;padding-left:1ex"><div id=3D":ekz" class=3D"">Can so=
meone review the attached recipe and help solve the problem statement=C2=A0=
 ?<br></div></blockquote></div><br>As has been said, you need to ensure the=
 postinst is delayed so it runs on the target and not on the build host.</d=
iv><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><a href=
=3D"http://www.yoctoproject.org/docs/2.1/dev-manual/dev-manual.html#new-rec=
ipe-post-installation-scripts">http://www.yoctoproject.org/docs/2.1/dev-man=
ual/dev-manual.html#new-recipe-post-installation-scripts</a><br></div><div =
class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div><div c=
lass=3D"gmail_extra"><br></div></div>

--001a113ec8422d110f0536a3b361--
