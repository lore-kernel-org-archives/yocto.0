Return-Path: <ico2ico2@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05908E00CE3; Thu, 21 Apr 2016 06:08:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2E7FE006D3
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 06:08:06 -0700 (PDT)
Received: by mail-oi0-f49.google.com with SMTP id x201so82195926oif.3
	for <yocto@yoctoproject.org>; Thu, 21 Apr 2016 06:08:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to; bh=laPc/1VaKeU1F/RFDEdRaFh9JnkUd6ZavPQ1k3rpah4=;
	b=QxR8Ak6xsgg8ptZTZM3wNJ7DxdmaYX+v0Oa2Yypjki2CjnXGBt2vSKGvYSpdRGECh2
	UuGI4R8ElE1wGaPkpHwwZUgG80B4a/1RO0Le+f3yV6oBlHlqpB9lE15NWQxMAO/juEKJ
	prHMp9a9fIDgnKuxlas4aQdlEyWeUhQOEoCwy9k+5CRzly767heowN+GL8ymFPSIXt/c
	po1IQUVnCktOlHghC66ayo3rb6iQ+KMFB0JPchWWJMSyhAQMbW7ajcPnbjN3Yd+fD1DD
	st0Xg51/sE9UdFpp/hCm/04PKR09oqG97/9fVHvlsbelDuMzY+J7eO3S5RGQzoDxBRS5
	bWHA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sassan-me-uk.20150623.gappssmtp.com; s=20150623;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to; bh=laPc/1VaKeU1F/RFDEdRaFh9JnkUd6ZavPQ1k3rpah4=;
	b=lcy0saIDTgt/YhfoBZhsROUl82ZzD538fk2BcALrcaZEWpiuixIxNiNldJYIH+twMF
	zek99DHtWfrBPnLmMAUH/0yujz81u3/s9fU3YF511ka0OJIWGmPpZaPz0hqYHD5ghKRh
	OHill68jwUrCTBlNL4SYKOKeraBtZDJVFhVNud/WtvPzrzQkwsqBp+q6PMtUIN7pkmQb
	P8ZaIol2XJ4jQTzUvqZ1Egl8gbovRAAuuBX4gLskJA0x8TPCKKR70H3OOuXLpkzXtyLY
	kjJ9YD5CBVzrQiugywYIcMxCbhGMzLUxBueTTQ7rre2mHBYZxIEA54bKUIqDbZyPLkWz
	FW/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
	:message-id:subject:from:to;
	bh=laPc/1VaKeU1F/RFDEdRaFh9JnkUd6ZavPQ1k3rpah4=;
	b=cyHWblSXe/nw+PzyHsLwrYWf4AhVuvKIpOZ3DNTovf3kiPx/diTZJ9JFYO3sSQBDV4
	/Eg3wgehw9cSXMAwtrzFPP13HhVHuKTnwIxDB0Ws9oYQ1wc3lM6ofJKYM+W31JbpN+i+
	8fcL4DR8ps24pWjk72lmt9i5x7nzKAwyxgJcQM4jkg45Zi05I/1SDHdPSgD8yzPOtQ8j
	4cL8gnoLn3vxofUVZvjx3lyi/32ossMGvwmYP37XYVOWCLR1n8yacEdgtkt5Ai8ekmp9
	8UgXw87DSzkSYrBfZ3tiHmxFdRIhaVohbEsIQE/4i/B3FNibw9qfk+yIuFVBEGCG9SH1
	2EpA==
X-Gm-Message-State: AOPr4FVMz1fRjj2+zIkXhKhslJ5Xsg5HW6B/pduR0MaWIyAaWzJCvTn/fcJmfTV5abMqBkGxNGmxYgxLvntdXA==
MIME-Version: 1.0
X-Received: by 10.157.2.69 with SMTP id 63mr6419378otb.170.1461244085714; Thu,
	21 Apr 2016 06:08:05 -0700 (PDT)
Sender: ico2ico2@gmail.com
Received: by 10.60.22.70 with HTTP; Thu, 21 Apr 2016 06:08:05 -0700 (PDT)
In-Reply-To: <CAAz8cFi=_GeHhBWjLjL-obNOSb+9n890E8J_J17HWXF7Qzz1Aw@mail.gmail.com>
References: <CAAz8cFi=_GeHhBWjLjL-obNOSb+9n890E8J_J17HWXF7Qzz1Aw@mail.gmail.com>
Date: Thu, 21 Apr 2016 14:08:05 +0100
X-Google-Sender-Auth: edTvOVRzBZZJvX7dbzWej38_RuI
Message-ID: <CAAz8cFg-FP_2wiT_6YaTHtrtTesHNUm1Zd4Kneb-7fz5aiNj4w@mail.gmail.com>
From: Sassan Panahinejad <sassan@sassan.me.uk>
To: yocto@yoctoproject.org
Subject: Preventing rebuild of dependencies
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
X-List-Received-Date: Thu, 21 Apr 2016 13:08:10 -0000
Content-Type: multipart/alternative; boundary=94eb2c114d24a8ca400530fe66b3

--94eb2c114d24a8ca400530fe66b3
Content-Type: text/plain; charset=UTF-8

Hi,

On several Yocto-based projects I've worked on, I've ended up accidentally
triggering rebuilds of large packages such as QT or Chromium.

The example I keep running into at the moment is whenever I modify the
kernel config, I trigger Chromium to rebuild next time I rebuild the image.
This means losing as much as 4 hours every time.

When searching for a solution, I found other posts and the workaround
usually given is not to rebuild the image after kernel changes and copy the
kernel manually. That's all very well, but I'm also making changes to other
parts of the system and therefore need to be able to rebuild the image
without waiting for Chromium to compile.

The problem seems to come down to one of Chromium's deps depending on the
kernel for some headers. Now naturally changes to a dependency results in a
rebuild, but I the operator know that the change in question will not have
any affect.

I'd like to just be able to blacklist rebuilding of Chromium and QT, but I
can't find a way other than sticking in some fake rules in the Chromium
recipe. In buildroot, one could often cheat by touching the relevant stamp
file to make it think it had rebuilt. Is the same possible in Yocto?

Note: sstate-cache is enabled.

Thanks
Sassan Panahinejad

--94eb2c114d24a8ca400530fe66b3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><div>Hi,<br><b=
r></div><div>On several Yocto-based projects I&#39;ve worked on, I&#39;ve e=
nded up accidentally triggering rebuilds of large packages such as QT or Ch=
romium.<br><br></div><div>The example I keep running into at the moment is =
whenever I modify the kernel config, I trigger Chromium to rebuild next tim=
e I rebuild the image. This means losing as much as 4 hours every time.<br>=
<br></div><div>When searching for a solution, I found other posts and the w=
orkaround usually given is not to rebuild the image after kernel changes an=
d copy the kernel manually. That&#39;s all very well, but I&#39;m also maki=
ng changes to other parts of the system and therefore need to be able to re=
build the image without waiting for Chromium to compile.<br><br></div><div>=
The problem seems to come down to one of Chromium&#39;s deps depending on t=
he kernel for some headers. Now naturally changes to a dependency results i=
n a rebuild, but I the operator know that the change in question will not h=
ave any affect.<br><br></div><div>I&#39;d like to just be able to blacklist=
 rebuilding of Chromium and QT, but I can&#39;t find a way other than stick=
ing in some fake rules in the Chromium recipe. In buildroot, one could ofte=
n cheat by touching the relevant stamp file to make it think it had rebuilt=
. Is the same possible in Yocto?<br><br></div><div>Note: sstate-cache is en=
abled.<br><br></div><div>Thanks<span class=3D"HOEnZb"><font color=3D"#88888=
8"><br></font></span></div><span class=3D"HOEnZb"><font color=3D"#888888"><=
div>Sassan Panahinejad<br></div></font></span></div>
</div><br></div>

--94eb2c114d24a8ca400530fe66b3--
