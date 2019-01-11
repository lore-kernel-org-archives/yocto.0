Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FAEEE00CD8; Fri, 11 Jan 2019 12:25:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.193 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
	[209.85.160.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1EBEE00BE8
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 12:25:42 -0800 (PST)
Received: by mail-qt1-f193.google.com with SMTP id y20so20229243qtm.13
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 12:25:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=nSzu/DxTfk1FvuMWSKlNNpRxstPdLav1KArexGb18Og=;
	b=o22Twfyi3HL4bkPIP6H7S3xOlYeNiOUKXZivjlksS2KEfHEKTb0emVOfPKmeN5pcZ8
	1SMotEAxknnCLh0tVbaaakQxPkuEJC+9wl46J9kju3Datt1hpg1NshmXy/lR2GwtTPd3
	5wF/EOmuNjctHut2zLJB0IdFfcAyTs+AlqaEOkNo+bGYEEsEqe4nK/Sob6DIreXO858F
	WPFwtFrNWWz/klL88JPgnKIJVnM6cfTq+SZdi0OMutBiD0pnLYp5746zz+Eh5g5hnH2z
	ly9psASMnUl0Bh9jSXZu952zU+Vdhvb4Qjgdaii40R1ioDV/TBvep/avH6mrutiDHgz/
	36fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=nSzu/DxTfk1FvuMWSKlNNpRxstPdLav1KArexGb18Og=;
	b=OZ2hQmddG6Gf+oSHj87JtI2xcYQk3l2Si66wMmhz9DK63OGjUIWkS3A7g2RUpGaOb9
	advWrp6auLUHAdWZ/C0Ug/qafpjdTlf2Rkld17CJij4oJV5KCLc4U302rPUqk/A+sDVK
	JyQI/3O5pZIfOD6gZl48Yt1yf52SMWQFF9aSplDi3Ii3FSqGBuKIDn5tKlifNeYnq3Z+
	bySgnDa8N85pVBODTTtUR4ZlaQzsmPAmLhPrXoErB59xngU2Kr439n7nKZI1U4UXZWhX
	1m2noN54T9PJfdDMQyjSHDC8IXhWXS1dj/uubE73NR8qqjMI/ehuewZzrmD6L5ZEaMWZ
	qKMw==
X-Gm-Message-State: AJcUukdpaxSdef9Vjm9IyOSa8U5i1BxgdwAh+erDU+GZwJZN3oLUQEIu
	4g6GC2q69hbWLdNNleUJv/F+f3+4Pyey+DHMQVLbdA==
X-Google-Smtp-Source: ALg8bN7gNNIGWSGiK7Kq+Mkahl984Olbzmpw0MAOrqlrQZZCWzm9H5+VHf1Z/Z9e6lD1rJYsrHuBd7l51UYxQW/MNi8=
X-Received: by 2002:ac8:518d:: with SMTP id c13mr14720852qtn.254.1547238341911;
	Fri, 11 Jan 2019 12:25:41 -0800 (PST)
MIME-Version: 1.0
References: <20190111190256.9354-1-mhalstead@linuxfoundation.org>
In-Reply-To: <20190111190256.9354-1-mhalstead@linuxfoundation.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 11 Jan 2019 12:25:31 -0800
Message-ID: <CAMKF1sqOtMu9+cqa=_Gan3NqXmT6YDXKNvsOtAf3SCSc9C974w@mail.gmail.com>
To: Michael Halstead <mhalstead@linuxfoundation.org>
Cc: yocto@yoctoproject.org
Subject: Re: [patchtest][PATCH] scripts: Reset working repository to match origin during clean up
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
X-List-Received-Date: Fri, 11 Jan 2019 20:25:43 -0000
Content-Type: multipart/alternative; boundary="000000000000c0aa17057f347f74"

--000000000000c0aa17057f347f74
Content-Type: text/plain; charset="UTF-8"

Hi Michael

Can we enable these checks for meta-openembedded repo as well

On Fri, Jan 11, 2019 at 11:03 AM Michael Halstead <
mhalstead@linuxfoundation.org> wrote:

> If the local HEAD is a patchtest generated merge commit patchtest may be
> unable
> to apply new patches. This should prevent patchtest from becoming stuck
> in that state.
>
> Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
> ---
>  scripts/create-share-folder | 2 +-
>  scripts/host                | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/scripts/create-share-folder b/scripts/create-share-folder
> index 861da4b..9432cb1 100755
> --- a/scripts/create-share-folder
> +++ b/scripts/create-share-folder
> @@ -122,7 +122,7 @@ function update_repository() {
>         (
>             cd $REPODIR
>             git am --abort --quiet
> -           git reset --hard --quiet
> +           git reset --hard --quiet FETCH_HEAD
>             git clean -f -e ".git-pw*" --quiet
>         )
>
> diff --git a/scripts/host b/scripts/host
> index 85f0e4a..893ce63 100755
> --- a/scripts/host
> +++ b/scripts/host
> @@ -83,7 +83,7 @@ function clean() {
>      (
>         cd $path
>         git am --abort
> -       git reset --hard
> +       git reset --hard FETCH_HEAD
>         git clean -f -e ".git-pw*"
>      )
>  }
> --
> 2.17.2
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000c0aa17057f347f74
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Hi Michael=C2=A0</div></div><div dir=3D"auto"><br></=
div><div dir=3D"auto">Can we enable these checks for meta-openembedded repo=
 as well=C2=A0</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On=
 Fri, Jan 11, 2019 at 11:03 AM Michael Halstead &lt;<a href=3D"mailto:mhals=
tead@linuxfoundation.org">mhalstead@linuxfoundation.org</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">If the local HEAD is a patchtest genera=
ted merge commit patchtest may be unable<br>
to apply new patches. This should prevent patchtest from becoming stuck<br>
in that state.<br>
<br>
Signed-off-by: Michael Halstead &lt;<a href=3D"mailto:mhalstead@linuxfounda=
tion.org" target=3D"_blank">mhalstead@linuxfoundation.org</a>&gt;<br>
---<br>
=C2=A0scripts/create-share-folder | 2 +-<br>
=C2=A0scripts/host=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=
 2 +-<br>
=C2=A02 files changed, 2 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/scripts/create-share-folder b/scripts/create-share-folder<br>
index 861da4b..9432cb1 100755<br>
--- a/scripts/create-share-folder<br>
+++ b/scripts/create-share-folder<br>
@@ -122,7 +122,7 @@ function update_repository() {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 (<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cd $REPODIR<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 git am --abort --quiet<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0git reset --hard --quiet<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0git reset --hard --quiet FETCH_HE=
AD<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 git clean -f -e &quot;.git-pw*&qu=
ot; --quiet<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 )<br>
<br>
diff --git a/scripts/host b/scripts/host<br>
index 85f0e4a..893ce63 100755<br>
--- a/scripts/host<br>
+++ b/scripts/host<br>
@@ -83,7 +83,7 @@ function clean() {<br>
=C2=A0 =C2=A0 =C2=A0(<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 cd $path<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 git am --abort<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0git reset --hard<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0git reset --hard FETCH_HEAD<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 git clean -f -e &quot;.git-pw*&quot;<br>
=C2=A0 =C2=A0 =C2=A0)<br>
=C2=A0}<br>
-- <br>
2.17.2<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--000000000000c0aa17057f347f74--
