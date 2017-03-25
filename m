Return-Path: <munagala.nareshbabu@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D373E00AB7; Sat, 25 Mar 2017 09:12:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (munagala.nareshbabu[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.49 listed in dnsbl.sorbs.net]
Received: from mail-it0-f49.google.com (mail-it0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9212E006CD
	for <yocto@yoctoproject.org>; Sat, 25 Mar 2017 09:12:49 -0700 (PDT)
Received: by mail-it0-f49.google.com with SMTP id y18so36192789itc.0
	for <yocto@yoctoproject.org>; Sat, 25 Mar 2017 09:12:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=aElZo1Z/4cdR+khJA24GSEQr0YWyWFlcMCuMF0mpXD8=;
	b=r1HnT1VMt0MDOkfMwagP5sZyMEz4hjnZ1SmZRKjruliAeJ5pWrk0eozs9Rou34Sa/S
	OL7sQ0jhu8CukByLUCKR8PaR5uxxOkd6Njh/WmoQSoPsT/EnNB74ITCXKFg6cd9Msolt
	tEwUEmBpvvyrDSX34jFqG1qXPKdort5pS5S06/+gchOe4kucwxExmuouxaUBThhi34G0
	f6cdNOGkfduc4Ccj1ExuD3lcSQ9MIyUzU2ZhQMm10tyAlyOjObrIBRl6S4yoi0cSZX6l
	wFfKk6ZDcG0BKFPtkDcx36RIfvR4JfPMR8dNniZ+5dYrDs60MuIC38atWuRpmRBga5Jn
	rRYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=aElZo1Z/4cdR+khJA24GSEQr0YWyWFlcMCuMF0mpXD8=;
	b=Ywb5lFxH9y3c6TGFczb/loiVjUZGbk2V6aKWDpqjaYnUkcCCCNKeXKk0jXDS+Au7el
	7TaLCrFtbkq5jNm+So20X1oFqtO6V/SvbUxH4A53sFfDIFuwez0zVG7/ZJNnNAHo9+8c
	JE10FcyTrb8VZU9Wjpu79AZQlCLS1REatUK76uilgOlviqINDiPJPhzS2WeCnbnCo1PT
	Gi58TnxRcPiiKgYejT/HqJKoyV6GX09Ye58D4BIjBe6Y0rV8CsMcXa8LGfWPhQw5S/Sx
	lREYCT1ru2RZ0FOyEc5msrtGXP0CPDbhoNCDmTz0w0yVmKSP3q63dw9nw/WOfLVgHUFX
	rwrw==
X-Gm-Message-State: AFeK/H0iFBWuvJu4gTMgeILQ0WRLr7U0Y/jHsU+FkioRD8lnEVYo+p89lsZs60ODFeXXo81SuH7mvpkF0MidaQ==
X-Received: by 10.36.22.85 with SMTP id a82mr2453034ita.83.1490458368577; Sat,
	25 Mar 2017 09:12:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.159.212 with HTTP; Sat, 25 Mar 2017 09:12:48 -0700 (PDT)
From: Munagala Naresh <munagala.nareshbabu@gmail.com>
Date: Sat, 25 Mar 2017 21:42:48 +0530
Message-ID: <CACfW1NpQWCVS+KrF6-mH7ELj=nKrmnvv0-1dagw260qbDQ_YsQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: CPU profiling at thread level
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
X-List-Received-Date: Sat, 25 Mar 2017 16:12:51 -0000
Content-Type: multipart/alternative; boundary=001a11452daa9cbc3f054b90616d

--001a11452daa9cbc3f054b90616d
Content-Type: text/plain; charset=UTF-8

Hi Team,

To analyzes the CPU load consumption of a particular process, we need to
find the thread level consumption. Default *top *and *ps *utils are not
supporting all the parameters that are available in Linux/Android.


Could you please suggest some alternatives which works in openembeded
platform?

-- 
Regards
Naresh Babu

--001a11452daa9cbc3f054b90616d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(31,73,125)">Hi Team,</span><br><b=
r><span style=3D"font-size:11pt;font-family:&quot;calibri&quot;,sans-serif;=
color:rgb(31,73,125)">

</span><p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">To analy=
zes the CPU load consumption of a particular process, we need to find the t=
hread level consumption. Default <b>top </b>and <b>ps </b>utils are not sup=
porting all the parameters that are available in Linux/Android. <br></span>=
</p><p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)"><br></span>=
</p>

<p class=3D"MsoNormal"><span style=3D"color:rgb(31,73,125)">Could you pleas=
e suggest some
alternatives which works in openembeded platform?</span></p>

<div><br>-- <br><div class=3D"gmail_signature">Regards<br>Naresh Babu=C2=A0=
<br><br><div><br><div><br></div></div><div style=3D"padding:0px;margin-left=
:0px;margin-top:0px;overflow:hidden;color:black;font-size:10px;text-align:l=
eft;line-height:130%"></div><div style=3D"padding:0px;margin-left:0px;margi=
n-top:0px;overflow:hidden;color:black;font-size:10px;text-align:left;line-h=
eight:130%"></div></div>
</div></div>

--001a11452daa9cbc3f054b90616d--
