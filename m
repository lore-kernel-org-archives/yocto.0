Return-Path: <tarek.elsherbiny@gmail.com>
Received: from mail-qc0-f170.google.com (mail-qc0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCED2E00858
	for <yocto@yoctoproject.org>; Mon,  6 Jan 2014 10:13:40 -0800 (PST)
Received: by mail-qc0-f170.google.com with SMTP id x13so17956668qcv.15
	for <yocto@yoctoproject.org>; Mon, 06 Jan 2014 10:13:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Lpkinrw98FYyU00S7npv5o7XwUQxJvtF1rznHKbq3hg=;
	b=IA7n6rYC1B3Z4WJ/kSDKJ3OqVuHlfZh3STzr4FZRiNhi0aaMTVnq27ORkUE31uIl8t
	Mui0zJV/pfeFKST2P7d8cAq7KPFQZFvWQgycZp1jPgjOjc/W5EUIjUFWPk3Jl+04RyYI
	dZYOCTYFyYaHo8oc1qQlKvjJkoUlg5yfFPh7zPLOzHOPJsKqNdwgjM2mArf7eZJ97/vw
	U7fxd/108NGD1nVJOd/+bJYXlbDDhmjsCHNTMTu5/L+rmuenfkJHhLVH2bkZJ/qKxShn
	NvjfKE8DDlr4Lvx8FBkRS2NMmY24aokIUcplVba4oiCbzCbZaaMVVxDHDOlC2qloigd5
	d0FA==
MIME-Version: 1.0
X-Received: by 10.49.17.232 with SMTP id r8mr187309979qed.74.1389032019680;
	Mon, 06 Jan 2014 10:13:39 -0800 (PST)
Received: by 10.96.81.104 with HTTP; Mon, 6 Jan 2014 10:13:39 -0800 (PST)
Date: Mon, 6 Jan 2014 18:13:39 +0000
Message-ID: <CAB3sqtb6bujs6EB+cBs_AhUgjkAWPOiST0RXe4wSUD3QKKwz9w@mail.gmail.com>
From: Tarek El-Sherbiny <tarek.elsherbiny@gmail.com>
To: yocto@yoctoproject.org
Subject: Upgrade Kernel using smart
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
X-List-Received-Date: Mon, 06 Jan 2014 18:13:43 -0000
Content-Type: multipart/alternative; boundary=047d7bea3be41d62c204ef513826

--047d7bea3be41d62c204ef513826
Content-Type: text/plain; charset=ISO-8859-1

Hi All,

When I typed the command "smart upgrade" smart detected over a 100 kernel
module that needs to be installed.
Most of these modules are not relevant and not installed on my system.
How do I tell smart to check and upgrade only  for the currently installed
modules?

Thanks,

-- 
*Tarek*

--047d7bea3be41d62c204ef513826
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><br></div><div>When I typed the command &quot;=
smart upgrade&quot; smart detected over a 100 kernel module that needs to b=
e installed.</div><div>Most of these modules are not relevant and not insta=
lled on my system.=A0</div>
<div>How do I tell smart to check and upgrade only =A0for the currently ins=
talled modules?</div><div><br></div><div>Thanks,<br clear=3D"all"><div><br>=
</div>-- <br><div dir=3D"ltr"><i><font color=3D"#666666" face=3D"arial, hel=
vetica, sans-serif">Tarek</font></i></div>

</div></div>

--047d7bea3be41d62c204ef513826--
