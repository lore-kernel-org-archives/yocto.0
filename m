Return-Path: <adim@jfrog.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0499E00A49; Sun, 23 Jun 2019 06:16:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	T_REMOTE_IMAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
	[209.85.128.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C42AE008A4
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2019 06:15:59 -0700 (PDT)
Received: by mail-wm1-f49.google.com with SMTP id z23so10719600wma.4
	for <yocto@yoctoproject.org>; Sun, 23 Jun 2019 06:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jfrog.com; s=jfrogcom;
	h=mime-version:from:date:message-id:subject:to;
	bh=usqSIgPQQilbK9bNKDzoLZ+OUuazw4d5FwC7nP076KM=;
	b=eOpu2iM2D4E/XTutOJb1dwzqEMLXe1djPYRzfeD9GOt+3T75nYQHeZXzVEZBwJkocj
	DCv2g3YmbHrn3ybYq+p4o8cFTaDkfPuO9tqBRxjdT1v4mPbVPAFzchfWD8BJ9kNDTLzS
	WTSPtnuO7fZAEPf2PBf3U3jL64miKaTDP6Clk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=usqSIgPQQilbK9bNKDzoLZ+OUuazw4d5FwC7nP076KM=;
	b=LyS/w/lYExZnoiTP0ayP6gEN0JOYKpzT8ebOrkicWLkqXC5l48xQyHDaz79DqOIdt6
	fyFvER2Au1NvwkL/vCfh7/xtWygnZ/pNM5T/EcZzPdOGfQ0IriLO8bQrd5NJVdlUD8GP
	gY16oJyV0CH+vfsabeOWtDweVxV6V96b5+M4bksobe5+B687bhE7ZCuqBQqEbUCKY+px
	53ISmI5Wn9DzcJOwlHxASRZW7JN0dSNvNrxKGn2c1dh0+YTCysYMUjZqsMVqQyVeLeRI
	xLGH3OqLaa+TCrq92zZqMwqzNIDmzzYnqQFGiW5g0/mBzJrUDssIlFfdz1TpOGtPD9u4
	cX3w==
X-Gm-Message-State: APjAAAW9K02k1p5TN3VpuweigMAt/HR4xW4AEytpHeYR8SXwdU5yYa6a
	QyoebKxL3mKICLQaAQSREyMJ/7bOkFMasQ/WwMC6GGCAWB9ua5I6I/GhsVUow7yPCa2zaMED6Bc
	xVfCTxJAyGGifWXvPOh8sSrDTT5sawy8=
X-Google-Smtp-Source: APXvYqwjV88dMWw8C03z+U/f5d+ukX60QbHn9mg1IXfHqc2LmDdo+Sw6GkUs1txCicbZuCoV0VVqXKJD5C+ZotDfpL8=
X-Received: by 2002:a05:600c:23d2:: with SMTP id
	p18mr11472980wmb.108.1561295758954; 
	Sun, 23 Jun 2019 06:15:58 -0700 (PDT)
MIME-Version: 1.0
From: Adi Malca <adim@jfrog.com>
Date: Sun, 23 Jun 2019 16:15:48 +0300
Message-ID: <CAM483UybQzjLoxaa6M25stxwf7xWXa-xW9Q6WxHz=PjwimaT3A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: OPKG Spec
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
X-List-Received-Date: Sun, 23 Jun 2019 13:16:00 -0000
Content-Type: multipart/alternative; boundary="0000000000001a49bd058bfd7f3c"

--0000000000001a49bd058bfd7f3c
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm looking for the current official OPKG spec with spelling and case
sensitive.
For example:

*Package*:

*Version*:

*Description*:

*Section*:

*Priority*:

*Maintainer*:

*License*:

*Architecture*:

*OE*:

*Homepage*:

*Depends*:

*Source*:

*Filename*:

*SHA1*:

*SHA256*:


Best Regards,
Adi

-- 
 <https://support.jfrog.com/>

-- 
 
<https://swampup.jfrog.com/?utm_source=signature&utm_medium=email&utm_campaign=swampUP&utm_term=event&utm_content=all_06_19>

--0000000000001a49bd058bfd7f3c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I&#39;m looking for the current =
official OPKG spec with spelling and case sensitive.</div><div><div>For exa=
mple:</div><div><pre style=3D"white-space:pre-wrap;margin-top:10px;margin-b=
ottom:10px;color:rgb(22,50,92);font-size:12px"><b>Package</b>: </pre><pre s=
tyle=3D"white-space:pre-wrap;margin-top:10px;margin-bottom:10px;color:rgb(2=
2,50,92);font-size:12px"><b style=3D"font-family:Arial,Helvetica,sans-serif=
">Version</b><span style=3D"font-family:Arial,Helvetica,sans-serif">: </spa=
n></pre><pre style=3D"white-space:pre-wrap;margin-top:10px;margin-bottom:10=
px;color:rgb(22,50,92);font-size:12px"><b style=3D"font-family:Arial,Helvet=
ica,sans-serif">Description</b><span style=3D"font-family:Arial,Helvetica,s=
ans-serif">: </span></pre><pre style=3D"white-space:pre-wrap;margin-top:10p=
x;margin-bottom:10px;color:rgb(22,50,92);font-size:12px"><b>Section</b>: </=
pre><pre style=3D"white-space:pre-wrap;margin-top:10px;margin-bottom:10px;c=
olor:rgb(22,50,92);font-size:12px"><b>Priority</b>: </pre><pre style=3D"whi=
te-space:pre-wrap;margin-top:10px;margin-bottom:10px;color:rgb(22,50,92);fo=
nt-size:12px"><b>Maintainer</b>: </pre><pre style=3D"white-space:pre-wrap;m=
argin-top:10px;margin-bottom:10px;color:rgb(22,50,92);font-size:12px"><b>Li=
cense</b>: </pre><pre style=3D"white-space:pre-wrap;margin-top:10px;margin-=
bottom:10px;color:rgb(22,50,92);font-size:12px"><b>Architecture</b>: </pre>=
<pre style=3D"white-space:pre-wrap;margin-top:10px;margin-bottom:10px;color=
:rgb(22,50,92);font-size:12px"><b style=3D"font-family:Arial,Helvetica,sans=
-serif">OE</b><span style=3D"font-family:Arial,Helvetica,sans-serif">: </sp=
an></pre><pre style=3D"white-space:pre-wrap;margin-top:10px;margin-bottom:1=
0px;color:rgb(22,50,92);font-size:12px"><b>Homepage</b>:</pre><pre style=3D=
"white-space:pre-wrap;margin-top:10px;margin-bottom:10px;color:rgb(22,50,92=
);font-size:12px"><b>Depends</b>: </pre><pre style=3D"white-space:pre-wrap;=
margin-top:10px;margin-bottom:10px;color:rgb(22,50,92);font-size:12px"><b>S=
ource</b>: </pre><pre style=3D"white-space:pre-wrap;margin-top:10px;margin-=
bottom:10px;color:rgb(22,50,92);font-size:12px"><b style=3D"font-family:Ari=
al,Helvetica,sans-serif">Filename</b><span style=3D"font-family:Arial,Helve=
tica,sans-serif">: </span></pre><pre style=3D"white-space:pre-wrap;margin-t=
op:10px;margin-bottom:10px;color:rgb(22,50,92);font-size:12px"><b>SHA1</b>:=
</pre><pre style=3D"white-space:pre-wrap;margin-top:10px;margin-bottom:10px=
;color:rgb(22,50,92);font-size:12px"><b>SHA256</b>:</pre><pre style=3D"whit=
e-space:pre-wrap;margin-top:10px;margin-bottom:10px;color:rgb(22,50,92);fon=
t-size:12px"><br></pre><pre style=3D"white-space:pre-wrap;margin-top:10px;m=
argin-bottom:10px;color:rgb(22,50,92);font-size:12px"><div style=3D"color:r=
gb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:small;white-s=
pace:normal">Best Regards,</div><div style=3D"color:rgb(34,34,34);font-fami=
ly:Arial,Helvetica,sans-serif;font-size:small;white-space:normal">Adi</div>=
</pre></div></div></div>

<br>
<a href=3D"https://support.jfrog.com/" target=3D"_blank"><img src=3D"https:=
//leap.jfrog.com/rs/256-FNZ-187/images/supportportal-ticket.png"></a>
<br>
<a href=3D"https://swampup.jfrog.com/?utm_source=3Dsignature&amp;utm_medium=
=3Demail&amp;utm_campaign=3DswampUP&amp;utm_term=3Devent&amp;utm_content=3D=
all_06_19" target=3D"_blank"><img src=3D"https://leap.jfrog.com/rs/256-FNZ-=
187/images/email%20signature%202.gif"></a>

--0000000000001a49bd058bfd7f3c--
