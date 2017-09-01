Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1008BE00D01; Fri,  1 Sep 2017 02:53:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.179 listed in dnsbl.sorbs.net]
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A803E00C8B
	for <yocto@yoctoproject.org>; Fri,  1 Sep 2017 02:53:32 -0700 (PDT)
Received: by mail-io0-f179.google.com with SMTP id i200so3321399ioa.1
	for <yocto@yoctoproject.org>; Fri, 01 Sep 2017 02:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rlj4XIYldm0W1pn+rSpukygfQQ+ysOMbeH3ulc8ooIc=;
	b=KD/GfB1cTR8AhkMyTxz6oaOJbS1lhJCT+DC57IWnj2e41IGoIkPX8tyNnQv8RdWKoB
	lQj5mwTr8wHSdsvPPafF8pG42DpjKSIGFWJ0JLjxLb7/+nFexpJt6RsBQtBvXPDIzUYG
	oUaSm7q1G/BuBSd1xxzHMhpYCqhISsee5z83MzZKMAfyG7kmnLxeqthTFT1ozUrz0J53
	7dLE6oDjBC4iIhMYkRtIMBIaIjI7kQ3bHDWFvgRJI4bqIsLwtkHlUQhWWwiszu6xiLmh
	e77AW7Rk4968UfcSqzojISQj+semWVM0ePHk1dYO9AtkIBD8j89be1/fv1dBNEvL+cba
	ITZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rlj4XIYldm0W1pn+rSpukygfQQ+ysOMbeH3ulc8ooIc=;
	b=Xrtgs1bi3qFzvXtqYtfB4uDl7IDTOW7Vj2EH8dt6IGePmJgj++MlmWAaAODSvxvlHr
	tOULZrHaie0CkDaGLkrSGaVA9PPHoSb5kPKvK7y+32gbguJgCK2HDBC6sXbpQMWN5/+L
	ZmRaDuhKncVOaVC1GcrMOYTqikm0s8cslZRrm6fcJ5Ak4BkwijhKxEhm79+x0b68UR9G
	lVXgJO2rJogg8IMqEIulHKJxt3oZ/gQGwoZCNDksu3hl4A3TDNXS+RtiniTvzwlLnntb
	cOygo4V014v57MN87YNO1z6MRB4DKBdhM8LHZzmrUX9kkxw6xq4Orn2RCfqyYyivHKhy
	8UsA==
X-Gm-Message-State: AHPjjUilqTFfasI+uV+LRbBxL3jcj49u5lnctX0phaeUnzmkPHHw79Zd
	SLXx2RIUGqn4tSzCyOwXdC8+wxbRwK2t
X-Google-Smtp-Source: ADKCNb7a792YqvScSlbGk/iSA3aZuI5II+T4ozyv7aisYVUmyGhIXfabp2OrfpXQrDIjYwXo8ZUebb2rc0WtuZG47NA=
X-Received: by 10.107.9.137 with SMTP id 9mr953218ioj.196.1504259612443; Fri,
	01 Sep 2017 02:53:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.33.83 with HTTP; Fri, 1 Sep 2017 02:53:11 -0700 (PDT)
In-Reply-To: <CAJ86T=VufG+uMKJPmencdqtEi_5KMtTi92DGZVT-snWmwVUaRQ@mail.gmail.com>
References: <1503708616-11645-1-git-send-email-armccurdy@gmail.com>
	<CAJ86T=VufG+uMKJPmencdqtEi_5KMtTi92DGZVT-snWmwVUaRQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 1 Sep 2017 10:53:11 +0100
Message-ID: <CAJTo0LZgCYxKe7HmO9BY5JSMxUofa0+Tbwhpox--QuJZRjFkNQ@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-gplv2][PATCH] gmp_4.2.1: prevent calls to mpn_add_nc() if HAVE_NATIVE_mpn_sub_nc is false
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
X-List-Received-Date: Fri, 01 Sep 2017 09:53:35 -0000
Content-Type: multipart/alternative; boundary="001a113f8f14d9aa3005581dbb38"

--001a113f8f14d9aa3005581dbb38
Content-Type: text/plain; charset="UTF-8"

Sorry I'd merged but not pushed.

Now pushed.

Ross

On 31 August 2017 at 19:49, Andre McCurdy <armccurdy@gmail.com> wrote:

> On Fri, Aug 25, 2017 at 5:50 PM, Andre McCurdy <armccurdy@gmail.com>
> wrote:
> > When building for aarch64 (ie relying only on generic C code rather
> > than asm) libgmp.so contains undefined references to __gmpn_add_nc
> > and __gmpn_sub_nc which causes attempts to link with -lgmp to fail:
> >
> >  | .../usr/lib/libgmp.so: undefined reference to `__gmpn_sub_nc'
> >  | .../usr/lib/libgmp.so: undefined reference to `__gmpn_add_nc'
> >
> > Solution based on a historical patch posted to the gmp mailing list:
> >
> >   https://gmplib.org/list-archives/gmp-discuss/2006-May/002344.html
> >
> > Signed-off-by: Andre McCurdy <armccurdy@gmail.com>
> > ---
>
> Ping.
>

--001a113f8f14d9aa3005581dbb38
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Sorry I&#39;d merged but not pushed.<div><br></div><div>No=
w pushed.</div><div><br></div><div>Ross</div></div><div class=3D"gmail_extr=
a"><br><div class=3D"gmail_quote">On 31 August 2017 at 19:49, Andre McCurdy=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:armccurdy@gmail.com" target=3D"_bl=
ank">armccurdy@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex"><span class=3D"">On Fri, Aug 25, 2017 at 5:50 PM, Andre McCurdy &lt;<=
a href=3D"mailto:armccurdy@gmail.com">armccurdy@gmail.com</a>&gt; wrote:<br=
>
&gt; When building for aarch64 (ie relying only on generic C code rather<br=
>
&gt; than asm) libgmp.so contains undefined references to __gmpn_add_nc<br>
&gt; and __gmpn_sub_nc which causes attempts to link with -lgmp to fail:<br=
>
&gt;<br>
&gt;=C2=A0 | .../usr/lib/libgmp.so: undefined reference to `__gmpn_sub_nc&#=
39;<br>
&gt;=C2=A0 | .../usr/lib/libgmp.so: undefined reference to `__gmpn_add_nc&#=
39;<br>
&gt;<br>
&gt; Solution based on a historical patch posted to the gmp mailing list:<b=
r>
&gt;<br>
&gt;=C2=A0 =C2=A0<a href=3D"https://gmplib.org/list-archives/gmp-discuss/20=
06-May/002344.html" rel=3D"noreferrer" target=3D"_blank">https://gmplib.org=
/list-<wbr>archives/gmp-discuss/2006-May/<wbr>002344.html</a><br>
&gt;<br>
&gt; Signed-off-by: Andre McCurdy &lt;<a href=3D"mailto:armccurdy@gmail.com=
">armccurdy@gmail.com</a>&gt;<br>
&gt; ---<br>
<br>
</span>Ping.<br>
</blockquote></div><br></div>

--001a113f8f14d9aa3005581dbb38--
