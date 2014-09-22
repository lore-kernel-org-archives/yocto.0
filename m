Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7C25E0086B; Mon, 22 Sep 2014 05:05:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.18.3.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from exprod8og112.obsmtp.com (exprod8og112.obsmtp.com [64.18.3.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35195E00869
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 05:05:27 -0700 (PDT)
Received: from mail-wi0-f182.google.com ([209.85.212.182]) (using TLSv1) by
	exprod8ob112.postini.com ([64.18.7.12]) with SMTP
	ID DSNKVCAQhk0WDWexRX8teiLWanW9V6T/L/1X@postini.com;
	Mon, 22 Sep 2014 05:05:30 PDT
Received: by mail-wi0-f182.google.com with SMTP id d1so2834130wiv.3
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 05:05:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=AqzDRvnDkX6WAoD/EHOTdmjGM0moOj9gzKE98oKRuOY=;
	b=f7FrQ0ihO90Q0GYmJKcyhpyHNT6emo19Ft8DuH3DmDDl18F6zcNL5IDtcOYrRH/Sdw
	sFDzrzYOtXr1g+E48iBpZNKk1/aAZl39+GGBSt+sYQHrxym27+aDLx2FRVGOixi94XTo
	+eLnKLDDWFFwHzbrihhDzrnN5fB7jIKUjwMtsrT+GWhkAXYy5wlbO4PEalaqPznoEpgJ
	XpXBoz7Ez8d4nP3CFH0q2ypW89+bRPbPMBHaepzaaiMgfaptg7A92AfV16QYPxuU2Dzv
	2ay0H0MTFNKMiuD/uhqwpTWlChC50puncEkNIceg/6EOhQdGhqSs36aazn9uu3GozwPe
	EGew==
X-Gm-Message-State: ALoCoQnsORGevRTssgnw7TwEUbUMuf1jI+PFW854HipbO+JR5dSfRhfaWSpS/wexvT4NBXwNZZ7E9emwjggbnM2rXHFLRvOF2D1Ri+DgIAApVl7lJE8XgA7JbTwqL+gWd1ogWnb31fy0Wc/sAjb0WAZ0ZpMjV10/4w==
X-Received: by 10.180.218.99 with SMTP id pf3mr15089213wic.19.1411387525584;
	Mon, 22 Sep 2014 05:05:25 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.180.218.99 with SMTP id pf3mr15089199wic.19.1411387525515;
	Mon, 22 Sep 2014 05:05:25 -0700 (PDT)
Received: by 10.27.170.66 with HTTP; Mon, 22 Sep 2014 05:05:25 -0700 (PDT)
In-Reply-To: <CAJTo0LZVPdNsbrnqgSfdarqi0bjiJDNOAmb5wgvRhOOy7qkYyg@mail.gmail.com>
References: <CAJrRHk5Kt5eqoTH_cnD8Px+NKe99cSLOb7b_1q4am_d=eDnWuQ@mail.gmail.com>
	<CAJTo0LZFP0i+LSYdE35cDNS3ZN4GEkFinoyQ6bTEA0E8gLvnFQ@mail.gmail.com>
	<CAJrRHk4pjaLTwO8ggUoQKs4ALVY565rU2SvcTyAYsSmm=jHvTQ@mail.gmail.com>
	<CAJTo0LZVPdNsbrnqgSfdarqi0bjiJDNOAmb5wgvRhOOy7qkYyg@mail.gmail.com>
Date: Mon, 22 Sep 2014 20:05:25 +0800
Message-ID: <CAJrRHk6fuL=44SCQuwZRBfbvhvYw6_g=0Uf3Tw=yFowe9KDvWg@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Nothing PROVIDES nativesdk-krb5
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
X-List-Received-Date: Mon, 22 Sep 2014 12:05:33 -0000
Content-Type: multipart/alternative; boundary=001a1134cde8196bcb0503a644f7

--001a1134cde8196bcb0503a644f7
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Good day Ross,

Yes, our recipe is depending on curl. The dependency chain is
(nativesdk-our_unit, nativesdk-curl, nativesdk-krb5).
The recipe needed curl for certain functions. It works perfectly for native
but when it comes to nativesdk, there is the disconnect. Why is krb5 not
seen in sdk but no error is seen for native?

- Joseph

On Mon, Sep 22, 2014 at 7:45 PM, Burton, Ross <ross.burton@intel.com> wrote=
:

> On 22 September 2014 12:41, Joseph Andrew de la Pe=C3=B1a
> <jdelapena@lexmark.com> wrote:
> > What poky version are you referring to? I'm using dora poky HEAD. Haven=
't
> > seen any krb5 recipe.
> > Please enlighten me.
>
> Well krb5 is in meta-oe/meta-connectivity.  But the point is that
> something is adding a dependency to curl for krb5, and as far as I
> can't tell it's not oe-core or meta-connectivity.  Using bitbake -e
> will tell you where it came from.
>
> Ross
>

--001a1134cde8196bcb0503a644f7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day Ross,<div><br></div><div>Yes, our recipe is depen=
ding on curl. The dependency chain is (nativesdk-our_unit, nativesdk-curl, =
nativesdk-krb5).</div><div>The recipe needed curl for certain functions. It=
 works perfectly for native but when it comes to nativesdk, there is the di=
sconnect. Why is krb5 not seen in sdk but no error is seen for native?</div=
><div><br></div><div>- Joseph</div></div><div class=3D"gmail_extra"><br><di=
v class=3D"gmail_quote">On Mon, Sep 22, 2014 at 7:45 PM, Burton, Ross <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank"=
>ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex">On 22 September 2014 12:41, Joseph Andrew de la Pe=C3=B1a<br>
<span class=3D"">&lt;<a href=3D"mailto:jdelapena@lexmark.com">jdelapena@lex=
mark.com</a>&gt; wrote:<br>
&gt; What poky version are you referring to? I&#39;m using dora poky HEAD. =
Haven&#39;t<br>
&gt; seen any krb5 recipe.<br>
&gt; Please enlighten me.<br>
<br>
</span>Well krb5 is in meta-oe/meta-connectivity.=C2=A0 But the point is th=
at<br>
something is adding a dependency to curl for krb5, and as far as I<br>
can&#39;t tell it&#39;s not oe-core or meta-connectivity.=C2=A0 Using bitba=
ke -e<br>
will tell you where it came from.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--001a1134cde8196bcb0503a644f7--
