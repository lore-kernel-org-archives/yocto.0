Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6DD3E00524; Wed, 22 Feb 2017 04:03:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.170 listed in dnsbl.sorbs.net]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f170.google.com (mail-qt0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27E1AE003D7
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2017 04:03:10 -0800 (PST)
Received: by mail-qt0-f170.google.com with SMTP id x35so340604qtc.2
	for <yocto@yoctoproject.org>; Wed, 22 Feb 2017 04:03:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=t00B3E9xZJnGJnFt4nv8XbqzLLN2Ko496H1WUQ43ODA=;
	b=HzJuDgIKFl62t8xSI6bQv/Agptpv0vP6Gm367Omri2MzaibGPWwk6/bSn1FbOltV9E
	w2v29xk56mmPPIBoxlZMupMJMzUA53APforM68MugVFFgpKP9cMzXGrRpiML/LNiXgU9
	aE4C9DQSDGeb+abL0ggHYNpxMIhhsCs2nc+f4pkocCju009jn8CqegUVZ3wZWTsLCndy
	TWDUQXqzaiVUvGmAkKT4OnULKAP06i6i6YO7MmH4+KCPZMhCGVty5FkTXtVqwDcp2K2R
	3aFOCZZHZOlGBMM7Xqi5Re7hzhBTbWzzTVbDIAthz55O3OT0edYYjKDxB/cPPTKnIIn7
	2muw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=t00B3E9xZJnGJnFt4nv8XbqzLLN2Ko496H1WUQ43ODA=;
	b=fPVhZgS2OM6fDSogCw/nhzfgJtSCVhijM27MJBzv5+tGyFjzbB5x3MaiJMKQnfzGIv
	xCnzwzuQ8l2oeplh8LYdiVkkNzDGuEFoEGCmbp+h+0KWcaSTymbrtFbvyfo8TWWbA2F6
	ev9hzlxSoY9B1+jVlCtZZzywNwqjnRXnLlJ2hLO9B/KYgaVezWZyDEfP89bTnbjRPfXq
	UxvH6zbjBkqT3fonqtHFV13aiVoM6q+z0ofIXeOxsorXC6y2LYsJYuYq1OoTA/GDUVy7
	H4tppj1Qm+ddONnLk8Zsd71vLbtW/FWyCgUxP3RG002uI3KOwY9UYkgt0tBC1UYH3NB0
	truQ==
X-Gm-Message-State: AMke39kB7yFcRyAoCSTV2otqOt8DPiQvUaQ7Pe1dzrzFS2I1EOTWRmvJUx9NjzTxR0gng+gJD5t+ou1qnkN1PMro
X-Received: by 10.200.41.7 with SMTP id y7mr1828030qty.109.1487764989945; Wed,
	22 Feb 2017 04:03:09 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Wed, 22 Feb 2017 04:02:49 -0800 (PST)
In-Reply-To: <alpine.LFD.2.20.1702210921290.9024@uk63952.mitel.com>
References: <alpine.LFD.2.20.1702210921290.9024@uk63952.mitel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 22 Feb 2017 12:02:49 +0000
Message-ID: <CAJTo0LbidTCeRzY9sC=FprM=VGyZMceL1aGOQSdJ2rBWzDtF5g@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Section 5.10.6, current YP reference manual, "default working directory"
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
X-List-Received-Date: Wed, 22 Feb 2017 12:03:12 -0000
Content-Type: multipart/alternative; boundary=001a1140834abc7dad05491d4733

--001a1140834abc7dad05491d4733
Content-Type: text/plain; charset=UTF-8

On 22 February 2017 at 11:58, Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

> so, *technically*, that claim in the ref manual is not wholly true;
> there are still a small number of tasks that use that default
> directory. is that a distinction worth making in the reference manual?
>

The point was that tasks used to have ${B} as the working directory without
any [dirs] set.  Now a task needs to set [dirs] if its wants to change the
working directory.

Ross

--001a1140834abc7dad05491d4733
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 22 February 2017 at 11:58, Robert P. J. Day <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcourse.ca<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":7v2" cl=
ass=3D"a3s aXjCH m15a65b101fc0559e">so, *technically*, that claim in the re=
f manual is not wholly true;<br>
there are still a small number of tasks that use that default<br>
directory. is that a distinction worth making in the reference manual?</div=
></blockquote></div><br>The point was that tasks used to have ${B} as the w=
orking directory without any [dirs] set.=C2=A0 Now a task needs to set [dir=
s] if its wants to change the working directory.</div><div class=3D"gmail_e=
xtra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1140834abc7dad05491d4733--
