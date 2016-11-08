Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43346E007A2; Tue,  8 Nov 2016 04:35:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.178 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.178 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f178.google.com (mail-qk0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06F9BE00571
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 04:35:19 -0800 (PST)
Received: by mail-qk0-f178.google.com with SMTP id q130so214439751qke.1
	for <yocto@yoctoproject.org>; Tue, 08 Nov 2016 04:35:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zlXVT1MAKg4EBaUkqivr4dSNwn+J2UDbdN0ppd4yiSM=;
	b=ITPd15xTIn4DQBP4FEDbBfkHCf9DcnxfGKN6Ho6LMOxB63SuIIEjgMqE2ohIzlQBVz
	9ZBzNTdlKVcDTWM8wYgxTd7GCqLstj1mZTMKMSl5NP610s4jtdgu8We/+lleWXhq2+kH
	4wae7b3lfgQOEBWqF6n52cHvS6PEKqAp3WOZ2Z3EU5xGbjhU9zKf4T8p8k+4ia0m5YMO
	TyWhSw9vDcuNR2VwLF/1c7EvpDcH1BtxVoK33puZhC0qJKNffIUEEGdBiY6RNvuLp57U
	ci5EnDFdJg5KtFvkhH/dNv1hKouaE7q5QCQb8lQXOzSMFi+QoWlP6RV2VNxJgsCakHF5
	G1Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zlXVT1MAKg4EBaUkqivr4dSNwn+J2UDbdN0ppd4yiSM=;
	b=cv2vr8rCRSu9HY2C5PLxkTdtD23meWmX2jJlKDsnW1JginMxfGcKwec7h2iE6fBexr
	iv2NGrNdWC4dWRfhIp1A/mtm2eKyk9+rTTPTh/lKJE2EsTszJDO9QE00mDt8HQ4ZleHm
	/hdaG6dBcf4IZ9V6BZ8rUjQ8j9doOp9Zx98Zy7To9f8E+U3smGeu4i89jJF4ZCCgLQgD
	ZDR1suAq1cRSmdyzsWZvNfRn9WC5Iwb1qmTdKF5EfRefIZNkgE9oAETKJrouR1b02V7h
	ypMWG/62imh6g2Ldvn4e188KHUHQMvMzHaerCP0/+ERTsX/39gRFlKMX+AExi97iR5FB
	AJVg==
X-Gm-Message-State: ABUngvfTZJJqJsw2Rt4tPUsXOBRxvNJlQ38SeZskPCwXr6cviN9HemMQvqTWqZvygojasF4qGRhc1edD2h8rsMqx
X-Received: by 10.55.5.145 with SMTP id 139mr12034742qkf.77.1478608519112;
	Tue, 08 Nov 2016 04:35:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.85.136 with HTTP; Tue, 8 Nov 2016 04:34:58 -0800 (PST)
In-Reply-To: <9C7FDD6C-4BD2-449B-96A1-6540B53D23A8@cisco.com>
References: <3B7E27B6-76D5-460D-BE78-33E49D04BED0@cisco.com>
	<CAJTo0LYtibhhgeSAC27yHzNL8hYu6HpBzKZDvB+k4nv26V+FKw@mail.gmail.com>
	<9C7FDD6C-4BD2-449B-96A1-6540B53D23A8@cisco.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 8 Nov 2016 12:34:58 +0000
Message-ID: <CAJTo0LYXd=9bDWk_TB_ioZ96GY2gt31AxHR4w47sPdwPSo7VEA@mail.gmail.com>
To: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FW: cmake version 3.0.0 or greater
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
X-List-Received-Date: Tue, 08 Nov 2016 12:35:23 -0000
Content-Type: multipart/alternative; boundary=001a114c8f848b989f0540c95fd6

--001a114c8f848b989f0540c95fd6
Content-Type: text/plain; charset=UTF-8

On 8 November 2016 at 12:23, Dinh Nguyen (dinhn) <dinhn@cisco.com> wrote:

> Here is the error message when trying to build sdk-dslink-c within Yocto
>  Dizzy version.
>
> | + echo /media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp64/tmp/
> work/core2-64-poky-linux/sdk-dslink-c/1.1-r0
> | + /media/raghuram/data/dinhn/ioxDevLatest/ioxsdk/yp64/tmp/
> work/core2-64-poky-linux/sdk-dslink-c/1.1-r0/sdk-dslink-c-
> 939fb15c97688276b1234a0e0092e61fdbe65c03/tools/build.sh
> | CMake Error at CMakeLists.txt:1 (cmake_minimum_required):
> |   CMake 3.0.0 or higher is required.  You are running version 2.8.12.2
> |
>

This tells me that you didn't upgrade cmake-native to 3.x.

Ross

--001a114c8f848b989f0540c95fd6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 8 November 2016 at 12:23, Dinh Nguyen (dinhn) <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:dinhn@cisco.com" target=3D"_blank">dinhn@cisco.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div><div><div><font color=3D=
"#0000ff">Here is the error message when trying to build sdk-dslink-c withi=
n Yocto =C2=A0Dizzy version.</font></div>
</div>
<div style=3D"color:rgb(0,0,0)"><br>
</div>
</div>
<div>
<div style=3D"color:rgb(0,0,0)">| + echo /media/raghuram/data/dinhn/<wbr>io=
xDevLatest/ioxsdk/yp64/tmp/<wbr>work/core2-64-poky-linux/sdk-<wbr>dslink-c/=
1.1-r0</div>
<div style=3D"color:rgb(0,0,0)">| + /media/raghuram/data/dinhn/<wbr>ioxDevL=
atest/ioxsdk/yp64/tmp/<wbr>work/core2-64-poky-linux/sdk-<wbr>dslink-c/1.1-r=
0/sdk-dslink-c-<wbr>939fb15c97688276b1234a0e0092e6<wbr>1fdbe65c03/tools/bui=
ld.sh</div>
<div><font color=3D"#ff0000">| CMake Error at CMakeLists.txt:1 (cmake_minim=
um_required):</font></div>
<div><font color=3D"#ff0000">| =C2=A0 CMake 3.0.0 or higher is required.=C2=
=A0 You are running version 2.8.12.2</font></div>
<div style=3D"color:rgb(0,0,0)">|=C2=A0</div></div></blockquote></div><br>T=
his tells me that you didn&#39;t upgrade cmake-native to 3.x.</div><div cla=
ss=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a114c8f848b989f0540c95fd6--
