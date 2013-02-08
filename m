Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ea0-f180.google.com (mail-ea0-f180.google.com
	[209.85.215.180]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 1F569E0027C
	for <yocto@yoctoproject.org>; Thu,  7 Feb 2013 17:22:28 -0800 (PST)
Received: by mail-ea0-f180.google.com with SMTP id c1so1422381eaa.39
	for <yocto@yoctoproject.org>; Thu, 07 Feb 2013 17:22:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:x-received:sender:date:x-google-sender-auth:message-id
	:subject:from:to:content-type;
	bh=FJx4Ki76AVCehyMQBpJlOIU0vcWWhw3IjjLDNLKwNx8=;
	b=aaJZh/1rHBp1dQ8URMCcsxmf9LHBNl/NaXqoEfycg/290DKhfrbAcvo4JbVi0bO5UX
	FWnaFs2VPjXoPHQUf76CJWlT200Wrt8jWE/MGAnkTedL46WnrpjNc/vDX1VnHVziS9rb
	xtNPXCkxqcdo6HiWbqUuNYy3/m7UWWIhJK2zw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:sender:date:x-google-sender-auth:message-id
	:subject:from:to:content-type:x-gm-message-state;
	bh=FJx4Ki76AVCehyMQBpJlOIU0vcWWhw3IjjLDNLKwNx8=;
	b=gofBeMjj9+2CgAwWXz2RJET3eBNk0WXuKHQg873teq7YFDf5j7W1WgYzS9Ra62+r+d
	+4Tkog4HBYKoclo7Nu8tAUOw/a69UdToSKNqq+IyJPUmpPdPa3ynKHUfW/TFkZkiDlvD
	wGUXHg4Dd5Y6wkj5wbxTM2/1pK/yOsn/pNxCGdCn3Eef6pZD4RMOCCCTJknvFTH0isKk
	CpNwwVQ832D4WDbSi4loWdQNDZapuQ42gyjGoOIZeL55zZVIwVZDXAfoNTkRs9gtABxq
	oaOa/P2VyqzhXI9MdMa+7kuKafvSoj1eirT1r3bxyop86P+QCD7MkKrQm6fMEkXWWMS2
	ja2A==
MIME-Version: 1.0
X-Received: by 10.14.223.137 with SMTP id v9mr10121578eep.22.1360286546871;
	Thu, 07 Feb 2013 17:22:26 -0800 (PST)
Sender: rstreif@linuxfoundation.org
Received: by 10.223.133.193 with HTTP; Thu, 7 Feb 2013 17:22:26 -0800 (PST)
Date: Thu, 7 Feb 2013 17:22:26 -0800
X-Google-Sender-Auth: qja50g4HGYQ89JX6Tdqi_Ra2eVE
Message-ID: <CA+gsK-o6CCdwsM3oHNvso2rGy7_LMBZEfkd0hc3BYXVmJBbQPg@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQnKLQSNA/DyVRAtJTpbInUaqAA70hUCgVxpfsmn/bI2/GSSdqfcVXJbHl2ImekGHpjnpNxS
Subject: PROVIDES for Yocto Kernel Recipes
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
X-List-Received-Date: Fri, 08 Feb 2013 01:22:29 -0000
Content-Type: multipart/alternative; boundary=047d7b66fa2f6b45a504d52c64df

--047d7b66fa2f6b45a504d52c64df
Content-Type: text/plain; charset=ISO-8859-1

I apologize if that has been brought up before.

The linux-yocto kernel recipes include the git tags into PV by explicitly
setting:

PV = "${LINUX_VERSION}+git${SRCPV}"

This means that you cannot for example do

bitbake linux-yocto-3.2

anymore because PROVIDES does not contain linux-yocto-3.2 but only the
rather cumbersome string linux-yocto-3.2+git${SRCPV}, with ${SRCPV}
expanded of course.

The percent notation only works for

PREFERRED_VERSION_linux-yocto = "3.2%"

but does not work for

bitbake linux-yocto-3.2%

That really only leaves you with setting PREFERRED_VERSION which is not
that convenient if you just want to build a different kernel version.

I am not sure how others feel about that and maybe I am missing something
but it would be rather simple to add that back by setting

PV = "${LINUX_VERSION} ${LINUX_VERSION}+git${SRCPV}"

Well, kind of, you still would have to know the minor version number.

Cheers,
Rudi

--047d7b66fa2f6b45a504d52c64df
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I apologize if that has been brought up before.<div><br></=
div><div style>The linux-yocto kernel recipes include the git tags into PV =
by explicitly setting:</div><div style><br></div><div style>PV =3D &quot;${=
LINUX_VERSION}+git${SRCPV}&quot;<br>
</div><div style><br></div><div style>This means that you cannot for exampl=
e do</div><div style><br></div><div style>bitbake linux-yocto-3.2</div><div=
 style><br></div><div style>anymore because PROVIDES does not contain linux=
-yocto-3.2 but only the rather cumbersome string linux-yocto-3.2+git${SRCPV=
}, with ${SRCPV} expanded of course.</div>
<div style><br></div><div style>The percent notation only works for</div><d=
iv style><br></div><div style>PREFERRED_VERSION_linux-yocto =3D &quot;3.2%&=
quot;</div><div style><br></div><div style>but does not work for</div><div =
style>
<br></div><div style>bitbake linux-yocto-3.2%</div><div style><br></div><di=
v style>That really only leaves you with setting PREFERRED_VERSION which is=
 not that convenient if you just want to build a different kernel version.<=
/div>
<div style><br></div><div style>I am not sure how others feel about that an=
d maybe I am missing something but it would be rather simple to add that ba=
ck by setting</div><div style><br></div><div style><div>PV =3D &quot;${LINU=
X_VERSION} ${LINUX_VERSION}+git${SRCPV}&quot;<br>
</div><div><br></div><div style>Well, kind of, you still would have to know=
 the minor version number.</div><div><br></div><div style>Cheers,</div><div=
 style>Rudi</div><div><br></div></div></div>

--047d7b66fa2f6b45a504d52c64df--
