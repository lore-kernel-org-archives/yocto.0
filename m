Return-Path: <jfabernathy@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28D16E0123F
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 07:47:07 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vcbfl13 with SMTP id fl13so4856186vcb.35
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 07:47:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ZHv1xGLfPLQAQ/ALO0/oZtIqDSGqYsHec0puOuUR8Hg=;
	b=mhlaHLApeF/Cev84icnXuP+81KXMTh9hEPb8BAUDgtjFH8n1OZANca1spykq09FrQh
	wOXx1XXo4IM8XyclH2thedjfgTGTQYtAsSmDiebMvvqE9vuznV9jZCY//8Z91PkM7n3b
	mqYESrS0tl1R5IihzXtx7Y52XHKnoYDAAPVWU=
MIME-Version: 1.0
Received: by 10.220.38.10 with SMTP id z10mr756109vcd.48.1326210426392; Tue,
	10 Jan 2012 07:47:06 -0800 (PST)
Received: by 10.52.33.112 with HTTP; Tue, 10 Jan 2012 07:47:06 -0800 (PST)
Date: Tue, 10 Jan 2012 10:47:06 -0500
Message-ID: <CANFv2Emzgi2GqXGbLCJ4Ej+umyPHsNmJQ_eMj-6A0XAcVeFtyg@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: yocto@yoctoproject.org
Subject: yocto on Acer Aspire One NAV50
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
X-List-Received-Date: Tue, 10 Jan 2012 15:47:07 -0000
Content-Type: multipart/alternative; boundary=bcaec54fb9e85ccecd04b62e6d62

--bcaec54fb9e85ccecd04b62e6d62
Content-Type: text/plain; charset=ISO-8859-1

I created a core-image-sato using the meta-n450 BSP hoping I could work
with it on the Acer Aspire One 532h-2588.  However, that netbook uses the
Atheros AR5B95 wireless NIC and the Atheros AR8132 wired NIC, which are not
recognized.  Is there anything already in Yocto that could be turned on to
support these devices, or am I left with porting the drives?

Since Ubuntu 11.10 with it's kernel 3.0.0 supports these devices and runs
on the netbook, I'm guessing it's a matter of configuring the kernel to
include these modules.

Does this sound right??

Jim A

--bcaec54fb9e85ccecd04b62e6d62
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>I created a core-image-sato using the meta-n450 BSP hoping I could wor=
k with it on the Acer Aspire One 532h-2588.=A0 However, that netbook uses t=
he Atheros AR5B95 wireless NIC and the Atheros AR8132 wired NIC, which are =
not recognized.=A0 Is there anything already in Yocto that could be turned =
on to support these devices, or am I left with porting the drives?</div>

<div>=A0</div>
<div>Since Ubuntu 11.10 with it&#39;s kernel 3.0.0 supports these devices a=
nd runs on the netbook, I&#39;m guessing it&#39;s a matter of configuring t=
he kernel to include these modules. </div>
<div>=A0</div>
<div>Does this sound right??</div>
<div>=A0</div>
<div>Jim A</div>
<div>=A0</div>

--bcaec54fb9e85ccecd04b62e6d62--
