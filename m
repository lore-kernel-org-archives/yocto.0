Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D216E00D32; Thu,  9 May 2019 02:57:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_IMAGE_ONLY_32,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,T_REMOTE_IMAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* 0.0 HTML_IMAGE_ONLY_32 BODY: HTML: images with 2800-3200 bytes of
	words *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.41 listed in list.dnswl.org]
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABCC1E00CC9
	for <yocto@yoctoproject.org>; Thu,  9 May 2019 02:57:32 -0700 (PDT)
Received: by mail-ot1-f41.google.com with SMTP id w6so1723647otl.7
	for <yocto@yoctoproject.org>; Thu, 09 May 2019 02:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=8p9CUPWdomsiahFFRNc3TTC+OKZG7ggjEnnNZtBpPYE=;
	b=eP5K0SWOy6fQE1DyBh+anL5MQVipMe98LLIppyyfcUAteOGB0mdyTncQ7f4bKjK29b
	Okxjgr6GQNezg0bepBYFsdWbIUGnyntHFCWLWhPBClcjZZ3pdHudWfBUIjR9HrGGbx26
	d7BJB4bPWDEzx5lnJq4LsaQwo8ftX4mXhpY38hrSu8qReB5Wvk5PSrKdySWg+4YZL0Yp
	9VuzwRFdKJw8yskYY9EIrsrio4uu76WIdqMyxtb8zHkJ1HFPltBXZQUT+sf96RPrISpG
	uJyXHuGp8FwCSelxv5GPe/r4Xlzwh9r1qODFzdGftmM7o4pwq3wWyhfLo94P2qMtCWLb
	1i7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=8p9CUPWdomsiahFFRNc3TTC+OKZG7ggjEnnNZtBpPYE=;
	b=N6VV88dp/c9T2nYW9BE0nHRu5prRFx/prVeuMvGtQcOHKUdyTiEaWLH+u9KAOm8PGP
	GkrBpFYR9JA/mu6bqBp1uKJEv0j3X2clryAaIQtg5G9d550C/LPJSGiJrg68c+l00WUv
	uAQyUj8cbWR88AZQx6vHNghf0OmHelmTBoxHoV0fET9vGJIcdeNwTL8L9bmHgrsYbEPO
	uIIilpnrFGtgTI0cm+JuUKkMBwlwC8XqvDqMau0i83yWcaG8Cr1enlBWzVqFGy+gfuxH
	nqeUsOzLBz+xIp/J1hxfpP57tzRaTkylQJFo9x41VGgWNRhmdciFh8ih+HpaMNj11aYd
	RD7Q==
X-Gm-Message-State: APjAAAXnNsnGNlD7l5jEt3r+jt4WhjSQxStg1V3sGut1oOE3Jb4dgeld
	7IdF5S9Op/MCdASGfzyERCpCq6RRTx8DFA41OD8HOw==
X-Google-Smtp-Source: APXvYqwYmTlTe24UAz0GCUmyB8qj1K7ds3QVtr6GlNSah6C/6imKd/2CxBAyC7VgfnG92Dp8aOd+2sQ/l3drkjLWt7A=
X-Received: by 2002:a05:6830:1647:: with SMTP id
	h7mr1899818otr.360.1557395852197; 
	Thu, 09 May 2019 02:57:32 -0700 (PDT)
MIME-Version: 1.0
References: <AM0PR10MB2658E98F7B370BD2FAEE187EC3330@AM0PR10MB2658.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: <AM0PR10MB2658E98F7B370BD2FAEE187EC3330@AM0PR10MB2658.EURPRD10.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 9 May 2019 11:57:20 +0200
Message-ID: <CANNYZj8xt+8-f5iC4akR-BpYZFTa4F-ehZHGQYrh3OApK8Wvjw@mail.gmail.com>
To: Fabian Knapp <knapp@ambibox.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Multiple MACHINEs and DISTROs: When to use own build dir, SSTATE_DIR, DL_DIR ?
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
X-List-Received-Date: Thu, 09 May 2019 09:57:50 -0000
Content-Type: multipart/alternative; boundary="0000000000008b84530588717a3a"

--0000000000008b84530588717a3a
Content-Type: text/plain; charset="UTF-8"

SSTATE_DIR and DL_DIR can (and should) be shared between all builds.

Each MACHINE/DISTRO combination works best with it's own build_dir.

Alex

On Thu, 9 May 2019 at 11:47, Fabian Knapp <knapp@ambibox.de> wrote:

>
> Hello,
>
> we have multiple MACHINEs and DISTROs and Im wondering for which
> combinations I have to setup a dedicated build dir, SSTATE_DIR and DL_DIR.
>
> Information in the form of:
>
> Each (change of) MACHINE needs its dedicated SSTATE_DIR and build dir but
> can share DL_DIR.
>
> would be very helpful for me.
>
> Thank you in advance.
>
> Fabian
>
> [image: Visit us at EES Europe] <http://www.thesmartere.de>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000008b84530588717a3a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>SSTATE_DIR and DL_DIR can (and should) be shared betw=
een all builds.</div><div><br></div><div>Each MACHINE/DISTRO combination wo=
rks best with it&#39;s own build_dir.</div><div><br></div><div>Alex<br></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Thu, 9 May 2019 at 11:47, Fabian Knapp &lt;<a href=3D"mailto:knapp@amb=
ibox.de">knapp@ambibox.de</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hello,<br>
<br>
we have multiple MACHINEs and DISTROs and Im wondering for which combinatio=
ns I have to setup a dedicated build dir, SSTATE_DIR and DL_DIR.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Information in the form of:<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Each (change of) MACHINE needs its dedicated SSTATE_DIR and build dir but c=
an share DL_DIR.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
would be very helpful for me.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Thank you in advance.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Fabian<br>
</div>
<div id=3D"gmail-m_-8225400485179223689Signature">
<div id=3D"gmail-m_-8225400485179223689divtagdefaultwrapper" dir=3D"ltr" st=
yle=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Arial,Helvetica,=
sans-serif">
</div>
</div>
<br>
<a href=3D"http://www.thesmartere.de" target=3D"_blank"><img src=3D"https:/=
/ambibox.de/downloads/TSEE2019_Banner_AmbiboxGmbH_de_1.jpg" alt=3D"Visit us=
 at EES Europe" width=3D"500"></a>
</div>

-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--0000000000008b84530588717a3a--
