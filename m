Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5ED54E00EA8; Thu,  4 Aug 2016 01:37:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D82CE00E56
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2016 01:37:00 -0700 (PDT)
Received: by mail-it0-f50.google.com with SMTP id f6so316215661ith.1
	for <yocto@yoctoproject.org>; Thu, 04 Aug 2016 01:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=IF+45vrvZUZqDDO3CEEYbTKCsd5PjWoJxpaEsLEzHqU=;
	b=VvJ+xGnQGv3sft4n4Re5QmNPxMxmTjJHHLnCSv7NRedV2zUOSKL2LIkoxxUjM9b5LM
	Q3Y/9ZBHUlbiSV4FiOPbHifAtxunIekL0zA0DHNZevco68Q916UawS0S0m18Uk/FtSqa
	XUsM7zzN6gml4BsWgQ8jx3UWvBaId+TUyaJI5eU+E7bM4K08PDbYHa4fjUrUofqQV8MZ
	b31V+bV1nJwY7Ewf5gSYq19utfDf3ztkhB/uKmuD4cmb00uGiJRnfhT/F3xMx3OP7+nl
	xtkipXx6xnUk+2ZBuoqi4DxyU3XqB3jxf7QMJB30Nzhh2LIn94bn3zJ0Lxat5GCMD8Sx
	15Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=IF+45vrvZUZqDDO3CEEYbTKCsd5PjWoJxpaEsLEzHqU=;
	b=BRDkIBopr1qr0ZVLzEORGFFL0Mpm5VP6ZWEr0UpBK1xC7rmiqqsNZtGOYDKlHOXPj8
	dLKlurQH8wZPmVve0ZNkhwsjkw+3Dzhsb0K1ws1PcAIZENfkBbcDKbYTjMR22H0oNifk
	0AP8mL979Cx2EX3zNzEPINDJA2EOtpsExdusKdTJ4RHhts1oJA+/i6PoTwyvRrXUVdy2
	W4foWiOLvb5n2s4+jFj7uvapLT2ae6tgKwUgjpr0fT45DYD946N8GKvCk57HfUT8X6CB
	nDqCOGKDTo9GIgSYAk+S6mqjub2q2wDL6UPKgw4nw5x9xq1OGe8RThVkPtnZf/LbFJ0a
	6H5Q==
X-Gm-Message-State: AEkoouuVueryT0YxOIMileXpXIIqFfMkiCObwueMqsXWgzrbpcUXm15wCJ94ER6R+v52Pu6/2nPrqUDHEhqawxJL
X-Received: by 10.36.121.204 with SMTP id z195mr30386535itc.22.1470299819637; 
	Thu, 04 Aug 2016 01:36:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Thu, 4 Aug 2016 01:36:39 -0700 (PDT)
In-Reply-To: <1470258571-29721-1-git-send-email-philippe.coval@osg.samsung.com>
References: <1470258571-29721-1-git-send-email-philippe.coval@osg.samsung.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 4 Aug 2016 09:36:39 +0100
Message-ID: <CAJTo0LaWDDbfxsdpHaTpB0fx8S34S1XgxNPVsvFWfmXbiCc5Rg@mail.gmail.com>
To: Philippe Coval <philippe.coval@osg.samsung.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, kishen.maloor@intel.com
Subject: Re: [meta-oic][PATCH] Update for IoTivity 1.1.1
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
X-List-Received-Date: Thu, 04 Aug 2016 08:37:04 -0000
Content-Type: multipart/alternative; boundary=001a114aa4667690ce05393adaf9

--001a114aa4667690ce05393adaf9
Content-Type: text/plain; charset=UTF-8

On 3 August 2016 at 22:09, Philippe Coval <philippe.coval@osg.samsung.com>
wrote:

> +INSANE_SKIP_${PN}-dev = "ldflags"
> +INSANE_SKIP_${PN}-plugins-samples = "ldflags"
> +INSANE_SKIP_${PN}-resource = "ldflags"
> +INSANE_SKIP_${PN}-resource-samples = "ldflags"
> +INSANE_SKIP_${PN}-service = "ldflags"
> +INSANE_SKIP_${PN}-service-samples = "ldflags"
> +INSANE_SKIP_${PN}-tests = "ldflags"
>

This happens because the recipe isn't respecting LDFLAGS.  You really
should be ensuring LDFLAGS is used by the build instead of skipping the
warning.

Ross

--001a114aa4667690ce05393adaf9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 3 August 2016 at 22:09, Philippe Coval <span dir=3D"ltr">&lt;<a href=3D"=
mailto:philippe.coval@osg.samsung.com" target=3D"_blank">philippe.coval@osg=
.samsung.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div i=
d=3D":5l0" class=3D"a3s aXjCH m156523ff9c6a7947">+INSANE_SKIP_${PN}-dev =3D=
 &quot;ldflags&quot;<br>
+INSANE_SKIP_${PN}-plugins-samples =3D &quot;ldflags&quot;<br>
+INSANE_SKIP_${PN}-resource =3D &quot;ldflags&quot;<br>
+INSANE_SKIP_${PN}-resource-samples =3D &quot;ldflags&quot;<br>
+INSANE_SKIP_${PN}-service =3D &quot;ldflags&quot;<br>
+INSANE_SKIP_${PN}-service-samples =3D &quot;ldflags&quot;<br>
+INSANE_SKIP_${PN}-tests =3D &quot;ldflags&quot;</div></blockquote></div><b=
r>This happens because the recipe isn&#39;t respecting LDFLAGS.=C2=A0 You r=
eally should be ensuring LDFLAGS is used by the build instead of skipping t=
he warning.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_e=
xtra">Ross</div></div>

--001a114aa4667690ce05393adaf9--
