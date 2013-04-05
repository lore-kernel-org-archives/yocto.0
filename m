Return-Path: <raj.khem@gmail.com>
Received: from mail-da0-f47.google.com (mail-da0-f47.google.com
	[209.85.210.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09B17E01503
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 10:00:18 -0700 (PDT)
Received: by mail-da0-f47.google.com with SMTP id s35so1664064dak.34
	for <yocto@yoctoproject.org>; Fri, 05 Apr 2013 10:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:message-id:references:to:x-mailer;
	bh=wAs/BQLdyypni0E2FPcxXcSaLXb8Upxh0MQlOhvGHbk=;
	b=mfBLdB7Xjm7hzyehahFN8BtNYjgeBJ0EH1I9tG5M482pmPhW+8aG5R0YQkap9zpw/h
	rXxMde2tcOrha4tTeMpjjlVH1/c1bpZbO01/uH+AjPFbS/v0DKQlw565I8z2Bw/5Rz+5
	6XW+ATmyl/GZYR8R6M4Og89AN2AFWvUtvJ2j+7emzoDigUxmmIUMw61lPvgcCN1oi+GS
	vW5JYvt6OIS1/Q+a/RlXlCr3drlgQmdpIk5hG9YutDuhkMV4gw8pU9LanbTT6YsPbLFH
	nyuHKumyq2dz8yDQD8CrFZ5te7MkyeoenJiZ8kAyQgEHJLdhxm5bHyyOZInqjEQfwSR3
	Hebw==
X-Received: by 10.68.138.135 with SMTP id qq7mr15515663pbb.42.1365181217794;
	Fri, 05 Apr 2013 10:00:17 -0700 (PDT)
Received: from vspringer-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPS id u9sm16686565paf.22.2013.04.05.10.00.15
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 05 Apr 2013 10:00:17 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CANwz6nzAr3m8rebqwzY_KkU-JFNZUTh=Ks4HW048ugg=Q13wYA@mail.gmail.com>
Date: Fri, 5 Apr 2013 10:00:14 -0700
Message-Id: <DAE1825C-DECF-40F1-8C62-EBA1ADC46B7B@gmail.com>
References: <CANwz6nzAr3m8rebqwzY_KkU-JFNZUTh=Ks4HW048ugg=Q13wYA@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
X-Mailer: Apple Mail (2.1503)
Cc: yocto@yoctoproject.org
Subject: Re: gcc enable-languages
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
X-List-Received-Date: Fri, 05 Apr 2013 17:00:18 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_CC007537-1F37-4FC1-AC02-6D0CA4768508"

--Apple-Mail=_CC007537-1F37-4FC1-AC02-6D0CA4768508
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


On Apr 5, 2013, at 8:51 AM, Edward Vidal <vidal.develone@gmail.com> =
wrote:

> Hello,
> I want to add support for FORTRAN in my image.
> On target gcc -v shows --enable-languages=3Dc,c++
> This needs to --enable-languages=3Dc,c++,fortran.based on my host =
system.
> How does the variable FORTRAN in =
/home/vidal/POKY/build032813_panda/poky/meta/recipes-devtools/gcc/gcc-conf=
igure-common.inc get set?  Can this be done in the local.conf file?
> Does the FORTRAN ?=3D ",f77" this need to be FORTRAN ?=3D ",fortran" =
since we are building gcc4.7?


yes thats a bug, I think you can submit a patch for that. in order to =
enable it fully you also need to change gcc-configure-runtime.inc
add libgfortran to RUNTIMETARGET it would be nice if both knobs were =
turned on or off by one switch so you don't have to do it in two
different places but such is life

> =
/home/vidal/POKY/build032713_panda/poky/meta/recipes-devtools/gcc/gcc-conf=
igure-common.inc
> I changed the following=20
> < LANGUAGES ?=3D "c,c++,fortran${JAVA}"
> ---
> > LANGUAGES ?=3D "c,c++${FORTRAN}${JAVA}"
> I am currently testing on a build for the  beagleboard and beaglebone
> Any and all help will be appreciated.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_CC007537-1F37-4FC1-AC02-6D0CA4768508
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv="Content-Type" content="text/html charset=iso-8859-1"></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; "><br><div><div>On Apr 5, 2013, at 8:51 AM, Edward Vidal &lt;<a href="mailto:vidal.develone@gmail.com">vidal.develone@gmail.com</a>&gt; wrote:</div><br class="Apple-interchange-newline"><blockquote type="cite"><div dir="ltr"><div><div><div><div><div>Hello,<br></div>I want to add support for FORTRAN in my image.<br></div>On target gcc -v shows --enable-languages=c,c++<br></div>This needs to --enable-languages=c,c++,fortran.based on my host system.<br>

</div>How does the variable FORTRAN in /home/vidal/POKY/build032813_panda/poky/meta/recipes-devtools/gcc/gcc-configure-common.inc get set?&nbsp; Can this be done in the local.conf file?<br></div><div>Does the FORTRAN ?= ",f77" this need to be FORTRAN ?= ",fortran" since we are building gcc4.7?<br></div></div></blockquote><div><br></div><div><br></div><div>yes thats a bug, I think you can submit a patch for that. in order to enable it fully you also need to change&nbsp;gcc-configure-runtime.inc</div><div>add libgfortran to&nbsp;RUNTIMETARGET it would be nice if both knobs were turned on or off by one switch so you don't have to do it in two</div><div>different places but such is life</div><br><blockquote type="cite"><div dir="ltr"><div>
/home/vidal/POKY/build032713_panda/poky/meta/recipes-devtools/gcc/gcc-configure-common.inc<br></div><div>I changed the following <br>


	
	
	
	<style type="text/css">P { margin-bottom: 0.08in; direction: ltr; color: rgb(0, 0, 0); }P.western { font-family: "Liberation Serif","Times New Roman",serif; font-size: 12pt; }P.cjk { font-family: "WenQuanYi Zen Hei Sharp"; font-size: 12pt; }P.ctl { font-family: "DejaVu Sans"; font-size: 12pt; }A:link {  }</style><p class="" style="margin-bottom:0in">&lt; LANGUAGES ?=
"c,c++,fortran${JAVA}"
</p><p class="" style="margin-bottom:0in">---
</p><p class="" style="margin-bottom:0in">&gt; LANGUAGES ?=
"c,c++${FORTRAN}${JAVA}"
</p>

I am currently testing on a build for the&nbsp; beagleboard and beaglebone<br>
</div>Any and all help will be appreciated.</div>
_______________________________________________<br>yocto mailing list<br><a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>https://lists.yoctoproject.org/listinfo/yocto<br></blockquote></div><br></body></html>

--Apple-Mail=_CC007537-1F37-4FC1-AC02-6D0CA4768508--
