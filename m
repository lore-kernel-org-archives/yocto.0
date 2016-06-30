Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B7D5E00E6E; Thu, 30 Jun 2016 03:35:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f51.google.com (mail-it0-f51.google.com
	[209.85.214.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33F7AE00D53
	for <yocto@yoctoproject.org>; Thu, 30 Jun 2016 03:35:08 -0700 (PDT)
Received: by mail-it0-f51.google.com with SMTP id a5so146055785ita.1
	for <yocto@yoctoproject.org>; Thu, 30 Jun 2016 03:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=G6iRiNSt6KlJmbQt68UJEVpFK92i0RzsnJTOwvgb/wk=;
	b=qhu2zK7D/Hc7gcAuj8EJr+JzeKDt9wS6ckdBu0Rbk04uG5uYvj4n0UlYNQP30vQO07
	EfwLZtFDtU3rxjcnUQVB+Vy1EaZhHbopoBo/JeL49ycvOejwRgyyh2zHhGTjyNSRTCp0
	DyTh/+FBEBBtxxSMbxJ2TSq3tbIX32a7Vy0DEzUfCyAw9GWC/UZnTMJ37X89BptQccTB
	Vsbl7qTnsJCPENvhCqr2Jkj0pZx1I4+RcyLACA6NNB4405DLDWo7VyOrohnEdYa1IWZb
	mK3kzaxtE+PM2YV9v6UEj6iapUZBy8OCyx3ISyRUKsQE/vJNtkcVby9bei4lclnaRXWh
	c1DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=G6iRiNSt6KlJmbQt68UJEVpFK92i0RzsnJTOwvgb/wk=;
	b=mb/cFJhucvCJUG8DHOVG58i7ZSeNE3z0TCZsPYgngfHSZI6O1rHE51gdReWW0oJkuD
	qLfU5KEYjiChFUuqsgYap1/XBsCpnwrJbjJ5RAUDLoaOWJrDbaEAoFvkRyrJUDaCDkHo
	uIyi9/xwPlTduQi4mTDlYrUPYtSx5CQTEg0Nn+Jvm2LQMj1PT6yh3xveIUU6loYz5eid
	ffFohOAW+jqFoZEqwhcnVtttC06062+kcXh99CzPJg3fnlBiYmX2wkYhv3SYpHs37zej
	Z8bwd5huAGVqqDiKGQdu5aKIOzeZrxhYFhNL0jocdvL0rmcs8hKpWAV2In/01Fap665s
	+XoQ==
X-Gm-Message-State: ALyK8tIVo5uEn7PqDdkvx4QOSwMPvXEGCBxWeBw8fircAvMy1SnuI798h8J4A33i9RcrudW/tKVzMHEzT1AZr2Kn
X-Received: by 10.36.20.212 with SMTP id 203mr18495122itg.83.1467282908283;
	Thu, 30 Jun 2016 03:35:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.142.151 with HTTP; Thu, 30 Jun 2016 03:34:48 -0700 (PDT)
In-Reply-To: <DB5PR06MB157388E96AD38C53FEB34989CF240@DB5PR06MB1573.eurprd06.prod.outlook.com>
References: <DB5PR06MB157369E58A396E97FE19504FCF240@DB5PR06MB1573.eurprd06.prod.outlook.com>
	<CAEjjRe+E3-yR1dbg2tRn1JF1KNPFqk9q7vL+WVj42-JOiJm8Pg@mail.gmail.com>
	<DB5PR06MB157388E96AD38C53FEB34989CF240@DB5PR06MB1573.eurprd06.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 30 Jun 2016 11:34:48 +0100
Message-ID: <CAJTo0LYPjZtScomnbNvcT0CjnxBhWmP3AN3Dv4hVWY5Sbzo5DQ@mail.gmail.com>
To: "Gujulan Elango, Hari Prasath (H.)" <hgujulan@visteon.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Package build files not getting copied to sysroots directory
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
X-List-Received-Date: Thu, 30 Jun 2016 10:35:12 -0000
Content-Type: multipart/alternative; boundary=001a1143e198889f7605367c6c3f

--001a1143e198889f7605367c6c3f
Content-Type: text/plain; charset=UTF-8

On 30 June 2016 at 10:40, Gujulan Elango, Hari Prasath (H.) <
hgujulan@visteon.com> wrote:

> The dlt-daemon package build directory at tmp/work/aarch64-poky-linux/dlt-daemon/2.11.1-r0/image
> has the following build output where I couldn't see any directory named
> lib64. Probably this is the reason I am getting the QA warning as well.
>
>
Yes.  The recipe isn't passing to the build what libdir should be, or the
build isn't listening.  Either way, everything apart from the dlt-daemon
build thinks libdir is /usr/lib64.

Ross

--001a1143e198889f7605367c6c3f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 30 June 2016 at 10:40, Gujulan Elango, Hari Prasath (H.) <span dir=3D"lt=
r">&lt;<a href=3D"mailto:hgujulan@visteon.com" target=3D"_blank">hgujulan@v=
isteon.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p>The d=
lt-daemon package build directory at <span>tmp/work/aarch64-poky-linux/dlt-=
daemon/2.11.1-r0/image has the following build output</span> where I couldn=
&#39;t see any directory named lib64. Probably this is the reason I am gett=
ing the QA warning as well.</p>
<p></p></blockquote></div><br>Yes.=C2=A0 The recipe isn&#39;t passing to th=
e build what libdir should be, or the build isn&#39;t listening.=C2=A0 Eith=
er way, everything apart from the dlt-daemon build thinks libdir is /usr/li=
b64.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">R=
oss</div></div>

--001a1143e198889f7605367c6c3f--
