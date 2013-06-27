Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-vb0-f42.google.com (mail-vb0-f42.google.com
	[209.85.212.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5010E0145C
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 22:57:58 -0700 (PDT)
Received: by mail-vb0-f42.google.com with SMTP id i3so275157vbh.29
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 22:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=jHq91l82SmOTmsxSF7bRxqvwGQEtoj1eycnZhX2UEX0=;
	b=VzfiQn5g9PBTI4v9VynKCA1YOomS0VRoos7dBQRiERSwqyLhQNG4/QoIm48wpVCVcR
	wBMSmlgznxfLyBSBOXbdXC1FkEEuCFJouq9OchsDpDqNFR0vKr/y9O1yY+MMu0kFhLjp
	YtgyC2VAc43In0FvuQ+cLXxKyM8OxxwO4CYec+L3892M9+hP0TsRzfoGP/0hUhmta6BL
	vCRIqe+UMXDrl8qtGaUd1khsqpvk9gu8QKlHeCgoilnsT1fw2hhojmAFA4cjQpUSf/xS
	qtgVrc2xY///7MdXiBRwzjDPjaocSMd11VHXUIXS5VI93wX9j/Q0m3TBvXADDKeSJMSR
	/JXg==
MIME-Version: 1.0
X-Received: by 10.221.49.134 with SMTP id va6mr3035349vcb.14.1372312678157;
	Wed, 26 Jun 2013 22:57:58 -0700 (PDT)
Received: by 10.52.94.241 with HTTP; Wed, 26 Jun 2013 22:57:58 -0700 (PDT)
In-Reply-To: <CAFMfyzJJYFEHe580kndOndgDMe_nvcVxEZzx2J3cvHASQaZf9Q@mail.gmail.com>
References: <CAFMfyzJJYFEHe580kndOndgDMe_nvcVxEZzx2J3cvHASQaZf9Q@mail.gmail.com>
Date: Thu, 27 Jun 2013 07:57:58 +0200
Message-ID: <CAFMfyzKBeQCVcjKVMJAz19Y+yDEm6dw5JOzDzonpc6VKUPq_vA@mail.gmail.com>
From: DAMARLA Satya Swaroop <satyaswaroop.damarla@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: NAND Filesystems
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
X-List-Received-Date: Thu, 27 Jun 2013 05:57:59 -0000
Content-Type: multipart/alternative; boundary=001a11339edab3d2fb04e01c71b5

--001a11339edab3d2fb04e01c71b5
Content-Type: text/plain; charset=ISO-8859-1

I think I found the solution... Its in image_types.bbclass


On Wed, Jun 26, 2013 at 5:08 PM, DAMARLA Satya Swaroop <
satyaswaroop.damarla@gmail.com> wrote:

> Hi Guys,
>
> Google doesnot provide a good link but may I ask you where can I search
> for NAND filesystems that yocto supports for the target
>
> Greets,
> Satya
>

--001a11339edab3d2fb04e01c71b5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I think I found the solution... Its in image_types.bbclass=
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed,=
 Jun 26, 2013 at 5:08 PM, DAMARLA Satya Swaroop <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:satyaswaroop.damarla@gmail.com" target=3D"_blank">satyaswaroop=
.damarla@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi Guys,<div><br></div><div=
>Google doesnot provide a good link but may I ask you where can I search fo=
r NAND filesystems that yocto supports for the target=A0</div>
<div><br></div><div>Greets,</div><div>Satya</div>
</div>
</blockquote></div><br></div>

--001a11339edab3d2fb04e01c71b5--
