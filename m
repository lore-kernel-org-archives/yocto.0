Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f50.google.com (mail-pb0-f50.google.com
	[209.85.160.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7F20E014D6
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 16:00:08 -0700 (PDT)
Received: by mail-pb0-f50.google.com with SMTP id jt11so2253891pbb.37
	for <yocto@yoctoproject.org>; Fri, 05 Apr 2013 16:00:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:message-id:references:to:x-mailer;
	bh=5LjI+RPfC+CF50Ym7blaijLG8hCKPRVTo9VWM6JSjm4=;
	b=o96PmAM+d5uJcWiE6VqDwDJJBt+8uwbtKSrvVBd7d9/AYUbaTkNXH0DheYsmlLI6CZ
	WHC8V2swYoxVht1Ar+VxjTqanLHXBxukomiWVeSEjVFVbboqoni9OT0GOkP3lutVH/c2
	fhnKSI4Cd9KMLVpT3j0e3XPtEczzmoyhyWMlwlmYZvZ7GBKXoyaX5W0voEKnbEXqToN6
	vud6QwiiQ8Tlff4eelWG+iG+oI/YtjTQCWIyeTpH0cQUA5L84+gZ+LXUJ1Ft0zSOzWx/
	+fVBaPIx4PHWuHo+y/fIv2VXbrCbF9Jc8qHCsRFeI3d6NH0qu/ovMSQqHpE1En3NYOyH
	7DEQ==
X-Received: by 10.66.102.65 with SMTP id fm1mr17074625pab.164.1365202808657;
	Fri, 05 Apr 2013 16:00:08 -0700 (PDT)
Received: from vspringer-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPS id gn2sm15999964pbb.22.2013.04.05.16.00.07
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 05 Apr 2013 16:00:07 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CANwz6nxDTHJzbctFwKE9o8PDDwsz8SxsSSOiRNaDdc8abN77hw@mail.gmail.com>
Date: Fri, 5 Apr 2013 16:00:05 -0700
Message-Id: <EC024295-DFE9-4D1A-9EE5-DD7A02EACB5D@gmail.com>
References: <CANwz6nzAr3m8rebqwzY_KkU-JFNZUTh=Ks4HW048ugg=Q13wYA@mail.gmail.com>
	<DAE1825C-DECF-40F1-8C62-EBA1ADC46B7B@gmail.com>
	<CANwz6nwE14Fmnh2sV3wp9OCqzTEVotC4OLssA3fSRthQLqb6BQ@mail.gmail.com>
	<6B996A59-7914-4BEE-BEF4-FCC782E5B28F@gmail.com>
	<CANwz6nxDTHJzbctFwKE9o8PDDwsz8SxsSSOiRNaDdc8abN77hw@mail.gmail.com>
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
X-List-Received-Date: Fri, 05 Apr 2013 23:00:09 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_59E710C0-DE08-4D2F-88E8-14D42F5C4F83"

--Apple-Mail=_59E710C0-DE08-4D2F-88E8-14D42F5C4F83
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


On Apr 5, 2013, at 3:35 PM, Edward Vidal <vidal.develone@gmail.com> =
wrote:

> I believe that the error was in gcc-configure-common.inc it should of =
been f95 not fortran. I am do a clean build  now for beagleboard and =
beaglebone.

No, f95 is old and deprecated 'fortran' is right=

--Apple-Mail=_59E710C0-DE08-4D2F-88E8-14D42F5C4F83
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Diso-8859-1"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><br><div><div>On Apr 5, 2013, at 3:35 PM, Edward Vidal &lt;<a =
href=3D"mailto:vidal.develone@gmail.com">vidal.develone@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><span style=3D"font-family: Helvetica; font-size: medium; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: 2; text-align: =
-webkit-auto; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; display: inline !important; float: none; =
">I believe that the error was in gcc-configure-common.inc it should of =
been f95 not fortran. I am do a clean build&nbsp; now for beagleboard =
and beaglebone.</span><br style=3D"font-family: Helvetica; font-size: =
medium; font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: 2; text-align: =
-webkit-auto; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; "></blockquote></div><br><div>No, f95 is =
old and deprecated 'fortran' is right</div></body></html>=

--Apple-Mail=_59E710C0-DE08-4D2F-88E8-14D42F5C4F83--
