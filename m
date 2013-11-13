Return-Path: <andrei@gherzan.ro>
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D73CE01732
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 07:39:07 -0800 (PST)
Received: by mail-wi0-f177.google.com with SMTP id hq4so991241wib.16
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 07:39:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=FwXhfyZ5inEZ81IaIm23U4CKVwPFBXWwRQSjsEvtmN8=;
	b=Lq1ViNNAS+VLqByypAbUcvIhjuVUF7GWa0upHpOKBuXS+n7xz49roEpxZG09cT6S5L
	+mKOivtKoIDnJ2L2PPHeDZ2rioy7dMtD8+L8dJ2hsCL6N2o99fG0Werc8fDQRn3wog6h
	5/292S3vs/1sxQoFe87fAe9uJ797mEqKxohrPMdE5EZtMfVrMjbGi2D/hPrhwawVUwF+
	hE06qWLLogyLtqqYvZSCuzdsfLnmEhDSSWH1WduuVJQCXYxY+Wo6CxUvXwRwds0nNOc6
	OcLDivwZ0WssS7rkxaKm4mK9496nLDrOHYUmcBKThx/fjlTv0Gl1RwOM5mWXCCvDQ121
	YWsQ==
X-Gm-Message-State: ALoCoQn/rQ+LNg+3F0UwCtgMSxZKdyuu0FdkFr2dQUx4SHzYTHoeDO5DiEuR6/g8iis9jNlqylwM
X-Received: by 10.180.210.134 with SMTP id mu6mr13856813wic.37.1384357146061; 
	Wed, 13 Nov 2013 07:39:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.91.202 with HTTP; Wed, 13 Nov 2013 07:38:46 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1384272787-14492-1-git-send-email-andrei@gherzan.ro>
References: <1384272787-14492-1-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 13 Nov 2013 17:38:46 +0200
Message-ID: <CAK18fxF_pC4oXmeD658WzT18DFR5cpbH4moCjKma+4KyhovLhg@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/1] README: Add info about gerrit server
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
X-List-Received-Date: Wed, 13 Nov 2013 15:39:08 -0000
Content-Type: multipart/alternative; boundary=001a11c37bdcef058f04eb10c3b6

--001a11c37bdcef058f04eb10c3b6
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Nov 12, 2013 at 6:13 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> Add some other minor formatting changes.
>
> Change-Id: Ib8fe5e11c1d95d14ff825a26d356b5ae432f2f93
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  README | 40 +++++++++++++++++++++++++++++++---------
>  1 file changed, 31 insertions(+), 9 deletions(-)
>
> diff --git a/README b/README
> index db88066..409cda8 100644
> --- a/README
> +++ b/README
> @@ -37,6 +37,8 @@ Contents:
>  3. Extra apps
>      3.A. omxplayer
>  4. Contribution
> +5. Gerrit Review Server
> +6. Maintainers
>
>
>
> @@ -170,20 +172,40 @@ To contribute to this layer you should send the
> patches for review to the
>  mailing list.
>
>  Mailing list:
> -
>      https://lists.yoctoproject.org/listinfo/yocto
>
>  Source code:
> -
>      git://git.yoctoproject.org/meta-raspberrypi
>      http://git.yoctoproject.org/git/meta-raspberrypi
>      https://github.com/djwillis/meta-raspberrypi
> -
> -When sending patches, please use something like:
> -
> -git send-email --to yocto@yoctoproject.org \
> ---subject-prefix='meta-raspberrypi][PATCH'
> -
> -
> +    https://review.gherzan.ro:8443/meta-raspberrypi
> +
> +To send changes:
> +
> +A) Send patches to mailing list using something like:
> +    git send-email --to yocto@yoctoproject.org \
> +    --subject-prefix='meta-raspberrypi][PATCH'
> +
> +B) OPTIONALLY push changes to gerrit (help maintainers merge and review
> patches
> +easier in this way).
> +    git push ssh://<username>@review.gherzan.ro:29418/meta-raspberrypi
> +    <local-branch>:refs/for/master
> +    See 5. Gerrit Review Server.
> +
> +5. Gerrit Review Server
> +=========================
> +We have a gerrit server configured at review.gherzan.ro. Changes made in
> gerrit
> +are merged in git.yoctoproject.org/meta-raspberrypi.
> +
> +You can setup a gerrit account in less than 2 minutes:
> +A) Login / Register on https://review.gherzan.ro:8443.
> +B) Add your PUBLIC key in Settings/SSH Public Keys.
> +C) Add remote in your local repo:
> +    git remote add gherzan ssh://<username>@
> review.gherzan.ro:29418/meta-raspberrypi
> +D) Push changes to gerrit using:
> +    git push gherzan <local-branch>:refs/for/master
> +
> +6. Maintainers
> +==============
>  Layer maintainers: John Willis <John.Willis at distant-earth.com>
>                     Andrei Gherzan <andrei at gherzan.ro>
> --
> 1.8.1.4
>
>

Merged another patchset: https://review.gherzan.ro:8443/#/c/2/

ag

--001a11c37bdcef058f04eb10c3b6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Tue, Nov 12, 2013 at 6:13 PM, Andrei Gherzan <span dir=3D"ltr">&=
lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro=
</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">Add some other minor formatting changes.<br>
<br>
Change-Id: Ib8fe5e11c1d95d14ff825a26d356b5ae432f2f93<br>
Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andr=
ei@gherzan.ro</a>&gt;<br>
---<br>
=A0README | 40 +++++++++++++++++++++++++++++++---------<br>
=A01 file changed, 31 insertions(+), 9 deletions(-)<br>
<br>
diff --git a/README b/README<br>
index db88066..409cda8 100644<br>
--- a/README<br>
+++ b/README<br>
@@ -37,6 +37,8 @@ Contents:<br>
=A03. Extra apps<br>
=A0 =A0 =A03.A. omxplayer<br>
=A04. Contribution<br>
+5. Gerrit Review Server<br>
+6. Maintainers<br>
<br>
<br>
<br>
@@ -170,20 +172,40 @@ To contribute to this layer you should send the patch=
es for review to the<br>
=A0mailing list.<br>
<br>
=A0Mailing list:<br>
-<br>
=A0 =A0 =A0<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=
=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
=A0Source code:<br>
-<br>
=A0 =A0 =A0git://<a href=3D"http://git.yoctoproject.org/meta-raspberrypi" t=
arget=3D"_blank">git.yoctoproject.org/meta-raspberrypi</a><br>
=A0 =A0 =A0<a href=3D"http://git.yoctoproject.org/git/meta-raspberrypi" tar=
get=3D"_blank">http://git.yoctoproject.org/git/meta-raspberrypi</a><br>
=A0 =A0 =A0<a href=3D"https://github.com/djwillis/meta-raspberrypi" target=
=3D"_blank">https://github.com/djwillis/meta-raspberrypi</a><br>
-<br>
-When sending patches, please use something like:<br>
-<br>
-git send-email --to <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctop=
roject.org</a> \<br>
---subject-prefix=3D&#39;meta-raspberrypi][PATCH&#39;<br>
-<br>
-<br>
+ =A0 =A0<a href=3D"https://review.gherzan.ro:8443/meta-raspberrypi" target=
=3D"_blank">https://review.gherzan.ro:8443/meta-raspberrypi</a><br>
+<br>
+To send changes:<br>
+<br>
+A) Send patches to mailing list using something like:<br>
+ =A0 =A0git send-email --to <a href=3D"mailto:yocto@yoctoproject.org">yoct=
o@yoctoproject.org</a> \<br>
+ =A0 =A0--subject-prefix=3D&#39;meta-raspberrypi][PATCH&#39;<br>
+<br>
+B) OPTIONALLY push changes to gerrit (help maintainers merge and review pa=
tches<br>
+easier in this way).<br>
+ =A0 =A0git push ssh://&lt;username&gt;@<a href=3D"http://review.gherzan.r=
o:29418/meta-raspberrypi" target=3D"_blank">review.gherzan.ro:29418/meta-ra=
spberrypi</a><br>
+ =A0 =A0&lt;local-branch&gt;:refs/for/master<br>
+ =A0 =A0See 5. Gerrit Review Server.<br>
+<br>
+5. Gerrit Review Server<br>
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br>
+We have a gerrit server configured at <a href=3D"http://review.gherzan.ro"=
 target=3D"_blank">review.gherzan.ro</a>. Changes made in gerrit<br>
+are merged in <a href=3D"http://git.yoctoproject.org/meta-raspberrypi" tar=
get=3D"_blank">git.yoctoproject.org/meta-raspberrypi</a>.<br>
+<br>
+You can setup a gerrit account in less than 2 minutes:<br>
+A) Login / Register on <a href=3D"https://review.gherzan.ro:8443" target=
=3D"_blank">https://review.gherzan.ro:8443</a>.<br>
+B) Add your PUBLIC key in Settings/SSH Public Keys.<br>
+C) Add remote in your local repo:<br>
+ =A0 =A0git remote add gherzan ssh://&lt;username&gt;@<a href=3D"http://re=
view.gherzan.ro:29418/meta-raspberrypi" target=3D"_blank">review.gherzan.ro=
:29418/meta-raspberrypi</a><br>
+D) Push changes to gerrit using:<br>
+ =A0 =A0git push gherzan &lt;local-branch&gt;:refs/for/master<br>
+<br>
+6. Maintainers<br>
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
=A0Layer maintainers: John Willis &lt;John.Willis at <a href=3D"http://dist=
ant-earth.com" target=3D"_blank">distant-earth.com</a>&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Andrei Gherzan &lt;andrei at <a hre=
f=3D"http://gherzan.ro" target=3D"_blank">gherzan.ro</a>&gt;<br>
<span class=3D""><font color=3D"#888888">--<br>
1.8.1.4<br>
<br>
</font></span></blockquote></div><br><br clear=3D"all"><div>Merged another =
patchset:=A0<a href=3D"https://review.gherzan.ro:8443/#/c/2/">https://revie=
w.gherzan.ro:8443/#/c/2/</a></div><div><br></div><div>ag</div>
</div></div>

--001a11c37bdcef058f04eb10c3b6--
