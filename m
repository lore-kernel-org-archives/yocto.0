Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD884E00BF3; Mon,  5 May 2014 10:41:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
Received: from mail-la0-f45.google.com (mail-la0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C5A2E003C7
	for <yocto@yoctoproject.org>; Mon,  5 May 2014 10:41:44 -0700 (PDT)
Received: by mail-la0-f45.google.com with SMTP id c6so770714lan.18
	for <yocto@yoctoproject.org>; Mon, 05 May 2014 10:41:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=viqQWvgfEq3ifbGHjVTmj8VIhyPMfpEkdRqZvLV+FL0=;
	b=AffbGK8KdnJAtJt1/vjyWw7xBnm79/adpMH8gZU7j/UiitTfSiZFt5W+7p45e5VMRB
	h/TDQsJr4FWqIOlmPrbU0QEldipuOX/1vWqbrtbWMYs1N023SWVcDj/VDf9hllONE2sb
	w9QxjmPEKdrlVVk2oFG+n9U71W/drPX1fuSkiEmcWw2w/iQ4vYyGGsj483bpBboPCk3L
	j2L5szRRzNzckCe6qIkWumdhDhajls63E5Q8CAawatxTueysgQdSguG09uAo6e6bKyQs
	y299UrGQiIMoBSewY561BcWqVG7XnUzZx9P92eij5762nS/qCsmjPitB4ImHeRop6VNd
	xekA==
X-Received: by 10.112.46.225 with SMTP id y1mr26534842lbm.12.1399311703261;
	Mon, 05 May 2014 10:41:43 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.148.170 with HTTP; Mon, 5 May 2014 10:41:22 -0700 (PDT)
In-Reply-To: <CF8CE2C0.8C7E%seth.bollinger@digi.com>
References: <CF8CE2C0.8C7E%seth.bollinger@digi.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Mon, 5 May 2014 10:41:22 -0700
X-Google-Sender-Auth: FOcnXAXVh1yjIjRu-LMDlQz9fNU
Message-ID: <CABcZANm6aOq19bag-1oWNs_88BhaN-dq6hS=PZ8EqPvJQveTFg@mail.gmail.com>
To: "Bollinger, Seth" <Seth.Bollinger@digi.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: DL_DIR problems
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
X-List-Received-Date: Mon, 05 May 2014 17:41:55 -0000
Content-Type: multipart/alternative; boundary=001a1134947400c9b504f8aaa549

--001a1134947400c9b504f8aaa549
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, May 5, 2014 at 4:40 AM, Bollinger, Seth <Seth.Bollinger@digi.com>wr=
ote:

> We=E2=80=99re trying to share a DL_DIR over NFS so all developers don=E2=
=80=99t have to
> re-download source files every time they want to do a clean build.
>  Unfortunately we=E2=80=99re running into problems with lock files that a=
re left
> behind by (sometimes) terminated processes.  This will block users who ar=
e
> trying subsequent builds.  How are others approaching this problem?


One option would be to maintain an internal downloads mirror, either
populated by an autobuilder or by an rsync after engineer builds to the
server hosting it. There'd be duplication in local disk space, but you'd
avoid the NFS locking issues.
--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a1134947400c9b504f8aaa549
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">On Mon, May 5, 2014 at 4:40 AM,=
 Bollinger, Seth <span dir=3D"ltr">&lt;<a href=3D"mailto:Seth.Bollinger@dig=
i.com" target=3D"_blank">Seth.Bollinger@digi.com</a>&gt;</span> wrote:<br><=
div class=3D"gmail_quote">

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">We=E2=80=99re trying to share a DL_DIR over =
NFS so all developers don=E2=80=99t have to re-download source files every =
time they want to do a clean build. =C2=A0Unfortunately we=E2=80=99re runni=
ng into problems with lock files that are left behind by (sometimes) termin=
ated processes. =C2=A0This will block users who are trying subsequent build=
s. =C2=A0How are others approaching this problem?</blockquote>

</div><br></div><div class=3D"gmail_extra">One option would be to maintain =
an internal downloads mirror, either populated by an autobuilder or by an r=
sync after engineer builds to the server hosting it. There&#39;d be duplica=
tion in local disk space, but you&#39;d avoid the NFS locking issues.<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--001a1134947400c9b504f8aaa549--
