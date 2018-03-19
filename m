Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8696FE00903; Mon, 19 Mar 2018 13:08:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03C5EE007F2
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2018 13:07:59 -0700 (PDT)
Received: by mail-it0-f41.google.com with SMTP id w3-v6so12061760itc.4
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2018 13:07:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=25ycWOmRjD6bRzENDDC+qe/O0tpeKWUn8xc00qHfX6g=;
	b=lovPnGEUxz7LeCZ3yyD/wonZfoU7H6ByCLY84xQlgRVLW720u+7ReVl2L44KkWhYdD
	6u+miKnvDhpgpFiZ3BMc9yErQUwxCqY9JVTAgI1cxgyNgXXANH+GbQ+U738UTd2UmIub
	hEFOvm7XPKcIo8G7PmKwW5qDuydTdqriC1L0I+Y0PqkNMqrrGyOB3cT0KxgQAYe24APL
	ftZzLCLgROAKWWVYMRZS5Fxfe0XuOBimwkP0j5GInmeSgJVGDsynJ7zQFg89+htlJAtn
	IuMynWUpWnKp+mE08IdBgTeTnl8JOQDSZ5cuKQeOm5bedeVnoRup26InIrYWR2wOpJxO
	Q6ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=25ycWOmRjD6bRzENDDC+qe/O0tpeKWUn8xc00qHfX6g=;
	b=O1t/UQd2HCm/QdEPdYBWTKXbsF5eHiIxgX83HDvWQdboh4conK2JCBbcBljpTKAvWi
	xIEfhAlDOco4eEBfcrs5/gKfJtV3KBBd5Xd/iunRS839mi9yIVxrT/qF7Pb5ZyYf8ue7
	/qP3D1qU/LFSZ/dh8yGU1bgDcf7bJbSI8CGvc/2Ers5d9+G+02XrhABAgIWww81Ra0JL
	kzF2ihLBaxXQ/ganQnXJfY9pZXcWQi/zgksQonDZfiurvsHhur3g76EVOBuknM7ZfyC/
	MGdSPkrT8T6ysLhPiGteiniQJNcjOMUOSQ4LYlVaewRW0obALZCojwO0gqmdp7qmtj8Y
	XhFw==
X-Gm-Message-State: AElRT7FsOxwkis/hS7sSYVqeQL0jPol7TwQ1/Jqy6NR/MdAyKZSotKXK
	mLwkxlHcGIMQ3OgVy85q3Y63OFkzyODWWywwTmN5Wg==
X-Google-Smtp-Source: AG47ELsRTTkiQMDdn+Mwiq3BWBUxqH3Lre5618HjNrp3bOUDYQhyZHXfl8XGcUIAmvZrX8C5Gkt9d0WAXDBPKdSIxdc=
X-Received: by 2002:a24:4a53:: with SMTP id k80-v6mr66198itb.45.1521490079267; 
	Mon, 19 Mar 2018 13:07:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Mon, 19 Mar 2018 13:07:38 -0700 (PDT)
In-Reply-To: <dd055b01-fe83-d706-bce1-5a2aea3103fe@gmail.com>
References: <CY4PR11MB17663B664B1ED6ADE96BC48AC7D40@CY4PR11MB1766.namprd11.prod.outlook.com>
	<dd055b01-fe83-d706-bce1-5a2aea3103fe@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 19 Mar 2018 20:07:38 +0000
Message-ID: <CAJTo0LbxDGNrJH8tDiCgMKoSHUsK8Q17BUH=UVkY8zDBAm70+g@mail.gmail.com>
To: akuster808 <akuster808@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: =?UTF-8?B?UmU6IFtPRS1jb3JlXSBZb2N0byBQcm9qZWN0IFN0YXR1cyBXVzEy4oCZMTg=?=
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
X-List-Received-Date: Mon, 19 Mar 2018 20:08:00 -0000
Content-Type: multipart/alternative; boundary="000000000000b46d880567c983d3"

--000000000000b46d880567c983d3
Content-Type: text/plain; charset="UTF-8"

On 19 March 2018 at 19:22, akuster808 <akuster808@gmail.com> wrote:

> YP 2.5 M3 is in feature freeze.  See status above.
>
> Does this include package updates?
>

Yes, upgrades count as features.


> Do we have a place identified for new changes (2.6) while 2.5 stabilizes.
>

A formal place, no.  I tend to queue stuff in a branch if master isn't
taking all of my energy, otherwise the patches will sit on the list until
2.5 releases.  Typically master and sumo branches won't diverge until
post-release.

Ross

--000000000000b46d880567c983d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 19 March 2018 at 19:22, akuster808 <span dir=3D"ltr">&l=
t;<a href=3D"mailto:akuster808@gmail.com" target=3D"_blank">akuster808@gmai=
l.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"gma=
il_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF"><span class=3D"">
    <blockquote type=3D"cite"><div class=3D"m_-7367521829909012032WordSecti=
on1"><p style=3D"margin:0in;margin-bottom:.0001pt"><span style=3D"font-fami=
ly:&quot;Arial&quot;,sans-serif;color:black">YP
            2.5 M3 is in feature freeze.=C2=A0 See status above.</span></p>
      </div>
    </blockquote></span>
    Does this include package updates? <br></div></blockquote><div><br></di=
v><div>Yes, upgrades count as features.</div><div>=C2=A0<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><div text=3D"#000000" bgcolor=3D"#FFFFFF">
    Do we have a place identified for new changes (2.6) while 2.5
    stabilizes.=C2=A0<br></div></blockquote><div><br></div><div>A formal pl=
ace, no.=C2=A0 I tend to queue stuff in a branch if master isn&#39;t taking=
 all of my energy, otherwise the patches will sit on the list until 2.5 rel=
eases.=C2=A0 Typically master and sumo branches won&#39;t diverge until pos=
t-release.</div><div><br></div><div>Ross=C2=A0</div></div></div></div>

--000000000000b46d880567c983d3--
