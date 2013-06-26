Return-Path: <katutxakurra@gmail.com>
Received: from mail-ie0-f182.google.com (mail-ie0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E82DE0141B
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 07:32:53 -0700 (PDT)
Received: by mail-ie0-f182.google.com with SMTP id s9so31577317iec.27
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 07:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=tZRxublU77cTUalGouBOFrRilVR5BjFihhpDw7hNR3A=;
	b=T+2EFYGyGZm1o8Km79iYpkGeM35RzqbJLkR3b5gaA12PYPUs/gB1hSZLfAtSBSG2Kz
	sEbi8uoYJQa9c/3zxRujlwUG1nP529HrnD7P4oSXCjsnG2FyHSzBUwCBJaDRC0vdU4ux
	H4JAsCssm4dLgl6AWYJ7PGb9/M3PNpcpTLh+Te9DHSzDEHt++2QC7+d+1wkp2NrpsDTY
	QFs20qd6tdvXDBDKFgeMy3IaZbMXC53+fmr7lp2F/2m65AkeOT10s1mBnhJ+iKp+HaTP
	kuorDgdr7Fa3ah2HDcdmv1lY16dNSyvHH54ZGIym0X1xAWNgryRA60NMPW2YGkM34xLP
	DvQA==
MIME-Version: 1.0
X-Received: by 10.50.130.113 with SMTP id od17mr2900381igb.10.1372257172505;
	Wed, 26 Jun 2013 07:32:52 -0700 (PDT)
Received: by 10.50.43.167 with HTTP; Wed, 26 Jun 2013 07:32:52 -0700 (PDT)
Date: Wed, 26 Jun 2013 15:32:52 +0100
Message-ID: <CAM1ZcoUioyojYfHot5ue+2qfpiYm884T7psN8aSg+XLdUjH+-Q@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: run commands after installation
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
X-List-Received-Date: Wed, 26 Jun 2013 14:32:56 -0000
Content-Type: multipart/alternative; boundary=047d7b2e43244ecade04e00f85f4

--047d7b2e43244ecade04e00f85f4
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I want to create a user after adding the snmp recipe. The command to do
that is:

net-snmp-config --create-snmpv3-user -a "my_password" myuser

What's the best way to do it? I have tried from do_install_append and also
from ROOTFS_POSTPROCESS_COMMAND but no luck so far.

Thanks

--047d7b2e43244ecade04e00f85f4
Content-Type: text/html; charset=ISO-8859-1

<div dir="ltr">Hi,<div><br></div><div style>I want to create a user after adding the snmp recipe. The command to do that is:</div><div style><br></div><div style>net-snmp-config --create-snmpv3-user -a &quot;my_password&quot; myuser<br>
</div><div style><br></div><div style>What&#39;s the best way to do it? I have tried from do_install_append and also from ROOTFS_POSTPROCESS_COMMAND but no luck so far.</div><div style><br></div><div style>Thanks</div><div style>
<br></div><div style><br></div><div style><br></div></div>

--047d7b2e43244ecade04e00f85f4--
