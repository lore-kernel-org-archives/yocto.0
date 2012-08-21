Return-Path: <seth.boll@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06E5DE0044A
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2012 19:13:35 -0700 (PDT)
Received: by obbtb18 with SMTP id tb18so13416583obb.35
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2012 19:13:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=MPkfAx7/ZPMZhvb6bbfQGvmVIq4/POHVqVy/tiJTlZY=;
	b=QxKi4AqH+EiIMCMPobbz+0Yey0kR7VIevUxux9qz47vWF7bgMuPffYuCSEHpsakSj4
	cq/l1sYX9rC1b1VhMWb4sfR3SJJXPNH0ayv8EMqxO4iheLjTjmtVTEXJZL99vrcK0U2j
	hSuIn8SuF4J1dVcPZWWqeKd0aoqYCF/TVF0XmhCKbVh5tsm5OM5m7q9n0wXXTOF+hG6G
	XKWehZHKJczrKpRjV9OP7Qlov4hRalX2D2VDRRazticvKbY28YM1hu5cYEEKPPS/ZfVg
	ec26RCWjD1dvRpBMMlrKZFEUl725wactCk5Dw0LfHpwtifVwPvSR3Bc0zSLU1iAJSgaS
	seMw==
MIME-Version: 1.0
Received: by 10.60.2.42 with SMTP id 10mr12252192oer.9.1345515215030; Mon, 20
	Aug 2012 19:13:35 -0700 (PDT)
Received: by 10.76.33.234 with HTTP; Mon, 20 Aug 2012 19:13:34 -0700 (PDT)
Date: Mon, 20 Aug 2012 21:13:34 -0500
Message-ID: <CA+JN8xMPwisCNTrbzQaDm97D0ShGWRaCbkj752wLcF13eV6j=Q@mail.gmail.com>
From: Seth Bollinger <seth.boll@gmail.com>
To: yocto@yoctoproject.org
Subject: Classes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 21 Aug 2012 02:13:36 -0000
Content-Type: multipart/alternative; boundary=e89a8fb205fe6e8a3304c7bd2cf8

--e89a8fb205fe6e8a3304c7bd2cf8
Content-Type: text/plain; charset=ISO-8859-1

Hello,

Will anyone recommend some classes regarding yocto and open embedded?  It
would be nice to get up to speed quickly and into the nitty gritty instead
of an overview.

Something covering the following items would be nice:

1.  How should projects be laid out?  Distro, image, task, BSP, what things
should go where?
2.  How should subprojects inherit from superprojects?  If you need to
create many subplatforms from a base platform, what's the best way to go
about this?
3.  How should classes such as distutils be created to be inherited by
other recipes (ruby modules that require a C extension to be compiled would
be one example).
4.  How should hardware specific software be handled?

I fear that (as a newb) I will design a layout that will be sub-optimal,
but we'll discover that after we have 25 platforms that will need major
refactoring.  :)

Thanks,

Seth

--e89a8fb205fe6e8a3304c7bd2cf8
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,<div><br></div><div>Will anyone recommend some classes regarding yoct=
o and open embedded? =A0It would be nice to get up to speed quickly and int=
o the nitty gritty instead of an overview.</div><div><br></div><div>Somethi=
ng covering the following items would be nice:</div>
<div><br></div><div>1. =A0How should projects be laid out? =A0Distro, image=
, task, BSP, what things should go where?</div><div>2. =A0How should subpro=
jects inherit from superprojects? =A0If you need to create many subplatform=
s from a base platform, what&#39;s the best way to go about this?</div>
<div>3. =A0How should classes such as distutils be created to be inherited =
by other recipes (ruby modules that require a C extension to be compiled wo=
uld be one example).</div><div>4. =A0How should hardware specific software =
be handled?</div>
<div><br></div><div>I fear that (as a newb) I will design a layout that wil=
l be sub-optimal, but we&#39;ll discover that after we have 25 platforms th=
at will need major refactoring. =A0:)</div><div><br></div><div>Thanks,</div=
>
<div><br></div><div>Seth</div><div><br></div>

--e89a8fb205fe6e8a3304c7bd2cf8--
