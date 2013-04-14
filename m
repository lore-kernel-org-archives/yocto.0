Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f172.google.com (mail-ie0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 464FAE006C5
	for <yocto@yoctoproject.org>; Sun, 14 Apr 2013 14:31:52 -0700 (PDT)
Received: by mail-ie0-f172.google.com with SMTP id c10so5163733ieb.31
	for <yocto@yoctoproject.org>; Sun, 14 Apr 2013 14:31:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=lQCjA98EJjwqZDdcONZkJBgbg+NCtqfRvG2p8MCArt4=;
	b=xM9ghD7HptSsW4GjiJJw+4oIpwDsWp4A4ZgkCC0i4iEFQ7Pvgxk8YT+H6VnGEE35bS
	AURM09uaXIHGKfsG+1bCeot5LCWW+QiX6GJsVLWjJaykT5h01z7XuzE+slhkIci9Mcv4
	qUN1ix+BOqvJhFr0SoGMrRlAuhFDRqhkajl2djJknTKZVrJ2sfIJWo3Lsp6yDgbn91gF
	BpOwAXQ4AMeUY93r7F99nx8UMc3SQ4ZZEygRMXsmOPBj2OWxjpaGDsHmvJK2cB4Cp3J4
	3VsI1M8VgpsWEaT7zAy0/3+ijoMN6J9E3UscvlqqYi4I12574142AXQin9RQWXN9TIOw
	2Kmg==
MIME-Version: 1.0
X-Received: by 10.50.7.3 with SMTP id f3mr3991803iga.50.1365975111452; Sun, 14
	Apr 2013 14:31:51 -0700 (PDT)
Received: by 10.50.191.170 with HTTP; Sun, 14 Apr 2013 14:31:51 -0700 (PDT)
In-Reply-To: <20130411131554.GA60364@sestofb10.enea.se>
References: <20130411131554.GA60364@sestofb10.enea.se>
Date: Sun, 14 Apr 2013 14:31:51 -0700
Message-ID: <CAMKF1spyhiaMd-Jqbt9KtzApkcbz1PhfKAiFsUCVw+T1BkN9fw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: =?UTF-8?Q?Bj=C3=B6rn_Stenberg?= <bjst@enea.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Scott Rifenbark <srifenbark@gmail.com>
Subject: Re: Adding ptest to the manual
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
X-List-Received-Date: Sun, 14 Apr 2013 21:31:52 -0000
Content-Type: multipart/alternative; boundary=089e0122f7b04a580f04da58dd73

--089e0122f7b04a580f04da58dd73
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

This looks good. Can you also add some samples on how to ptestify a package
1 auto make based
2. Non auto make based

You could link to sources too that would be nice

Thanks for the writeup

On Thursday, April 11, 2013, Bj=C3=B6rn Stenberg <bjst@enea.com> wrote:
> Hi.
>
> I was reminded during the last YPTM call that it would probably be good
to write something about ptest in the manual before release.
>
> I have written a page in the wiki about it (
https://wiki.yoctoproject.org/wiki/Ptest) but I'm not sure how to go about
adding a chapter to the manual. Are you using any specific tool or do you
edit the xml manually? Where do you think a section about ptest would fit
into the manual?
>
> --
> Bj=C3=B6rn
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--089e0122f7b04a580f04da58dd73
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

This looks good. Can you also add some samples on how to ptestify a package=
 <br>1 auto make based<br>2. Non auto make based <br><br>You could link to =
sources too that would be nice<br><br>Thanks for the writeup<br><br>On Thur=
sday, April 11, 2013, Bj=C3=B6rn Stenberg &lt;<a href=3D"mailto:bjst@enea.c=
om">bjst@enea.com</a>&gt; wrote:<br>
&gt; Hi.<br>&gt;<br>&gt; I was reminded during the last YPTM call that it w=
ould probably be good to write something about ptest in the manual before r=
elease.<br>&gt;<br>&gt; I have written a page in the wiki about it (<a href=
=3D"https://wiki.yoctoproject.org/wiki/Ptest">https://wiki.yoctoproject.org=
/wiki/Ptest</a>) but I&#39;m not sure how to go about adding a chapter to t=
he manual. Are you using any specific tool or do you edit the xml manually?=
 Where do you think a section about ptest would fit into the manual?<br>
&gt;<br>&gt; --<br>&gt; Bj=C3=B6rn<br>&gt; ________________________________=
_______________<br>&gt; yocto mailing list<br>&gt; <a href=3D"mailto:yocto@=
yoctoproject.org">yocto@yoctoproject.org</a><br>&gt; <a href=3D"https://lis=
ts.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo=
/yocto</a><br>
&gt;

--089e0122f7b04a580f04da58dd73--
