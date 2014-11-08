Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82440E00832; Sat,  8 Nov 2014 06:54:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qc0-f173.google.com (mail-qc0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5707E0072A
	for <yocto@yoctoproject.org>; Sat,  8 Nov 2014 06:53:57 -0800 (PST)
Received: by mail-qc0-f173.google.com with SMTP id x3so3919972qcv.18
	for <yocto@yoctoproject.org>; Sat, 08 Nov 2014 06:53:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=o7pRKQVpc4dekjRXsaPf7mnyd94IK0YfEpb5M9/rmKk=;
	b=Y4zia8SHUH7+g+6QZ45O0jCnsii9lLWE0k9U7I7TLGtgPLgQz8XEd4/KBDmzhh430u
	MchbSgbgFrkMhCfxFyUM4FgsVVH4ctCks4+cwjxqn0KWd0qbYySPvIdvnQIOX9PIWY/y
	t/vSFiKvHti12gy8aqorsw6M0Mxj59mzuqowbqPxFh/n2jmbyBGB8h+HFUnT1dzB9eDM
	qx/CsJn0lA/prs/z45WE1ueMLxzRQpa60sdfTMVU+dY0kwn20pACdceewOw+Q/rJNW3d
	uavjhNFRIEqZUp9KOjNyMhrKUNvb5myQCy8pZSNrSEWe2ltrPV9+pInVg/Eui2rc+hQ9
	b8VA==
X-Gm-Message-State: ALoCoQkgCDChWXo5CxF/Wjnj7sjBUzSRSeTGYjTPyyw2cjx3bXXOaXyuUfx4L+uyAjkW7uQ3oIXL
X-Received: by 10.224.2.135 with SMTP id 7mr28394903qaj.64.1415458436767; Sat,
	08 Nov 2014 06:53:56 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.98.213 with HTTP; Sat, 8 Nov 2014 06:53:36 -0800 (PST)
In-Reply-To: <CAFZh4h_rar=t5MV5jsEsoZ6YPx04jVx9QkTq-SJV5jmXk6oUqw@mail.gmail.com>
References: <545E21EA.9040403@ripperd.com>
	<CAFZh4h_rar=t5MV5jsEsoZ6YPx04jVx9QkTq-SJV5jmXk6oUqw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 8 Nov 2014 14:53:36 +0000
Message-ID: <CAJTo0LY1X+LeRst8o2mAN4vHewB5NM8DYB7Roczm+=E0YbBWGA@mail.gmail.com>
To: Brian Hutchinson <b.hutchman@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build optimization question
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
X-List-Received-Date: Sat, 08 Nov 2014 14:54:01 -0000
Content-Type: multipart/alternative; boundary=001a11c3defa51827505075a19a1

--001a11c3defa51827505075a19a1
Content-Type: text/plain; charset=UTF-8

On 8 November 2014 14:23, Brian Hutchinson <b.hutchman@gmail.com> wrote:

> I'm planning to just start excluding some of the packages in it ... I
> don't need sound, wireless, Bluetooth etc.
>
>
If you don't need sound, wifi, and bluetooth then remove the relevant flags
from DISTRO_FEATURES and they'll never be built.

Ross

--001a11c3defa51827505075a19a1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 8 November 2014 14:23, Brian Hutchinson <span dir=3D"ltr">&lt;<a href=3D=
"mailto:b.hutchman@gmail.com" target=3D"_blank">b.hutchman@gmail.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><p dir=3D"ltr">I&#39;m pl=
anning to just start excluding some of the packages in it ... I don&#39;t n=
eed sound, wireless, Bluetooth etc.</p>
<p dir=3D"ltr"></p></blockquote></div><br>If you don&#39;t need sound, wifi=
, and bluetooth then remove the relevant flags from DISTRO_FEATURES and the=
y&#39;ll never be built.</div><div class=3D"gmail_extra"><br></div><div cla=
ss=3D"gmail_extra">Ross</div></div>

--001a11c3defa51827505075a19a1--
