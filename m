Return-Path: <adam.yh.lee@gmail.com>
Received: from mail-lb0-f182.google.com (mail-lb0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 247B2E003FA
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2014 17:17:56 -0800 (PST)
Received: by mail-lb0-f182.google.com with SMTP id w7so4986481lbi.41
	for <yocto@yoctoproject.org>; Mon, 27 Jan 2014 17:17:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=f6g6YNMV4D7POYYNebM6oAp+QPIYXSfPznyxUYUVA7w=;
	b=IG7uP1Zz5LrKnuTNRpL0dSZTKPQh0DX/URqbPxBZE/u53EK88XGPDazSu0Dj4HBqCG
	7e08tatbKKtvFYLhv5aVp2FlKcuHyNIuJmA37Y5aPe+zkZZNGc7lDz4mi4mhRhxMAJOK
	o7gptp6KayC6eCjZ7pcDPwGxiX+1W2HgeTemDdHnBudE+oD179Jw7mjfABKfVLaob1LJ
	YUvczS0MxZL0tcaND/+/n2RHzeZVA6Ycqpu9jwCTmFlIgITFc8tbrOH5H5S2Wxj5A0iP
	PkaKaSCJVT4KIWnAZ1WpGosyPa3DhXshbjPIcfw4mF8KhJ9BBqLump915b13J2O2SML5
	XN/w==
MIME-Version: 1.0
X-Received: by 10.112.188.135 with SMTP id ga7mr18624703lbc.5.1390871875029;
	Mon, 27 Jan 2014 17:17:55 -0800 (PST)
Received: by 10.114.57.68 with HTTP; Mon, 27 Jan 2014 17:17:54 -0800 (PST)
Date: Mon, 27 Jan 2014 17:17:54 -0800
Message-ID: <CAFeBWL7JEOrBEy+a1VRMhU7DEaFvcruQfchNXk9UVfMyX4C08g@mail.gmail.com>
From: Adam Lee <adam.yh.lee@gmail.com>
To: yocto@yoctoproject.org
Subject: Integrating a graphical login manager to XFCE
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
X-List-Received-Date: Tue, 28 Jan 2014 01:17:59 -0000
Content-Type: multipart/alternative; boundary=001a11c367ae0a0fdf04f0fd9859

--001a11c367ae0a0fdf04f0fd9859
Content-Type: text/plain; charset=ISO-8859-1

Good day everyone!
This is my first post to the group, so please forgive me for anything
inappropriate.
I've been using GDM thus far (since danny) but it has been challenging to
integrate it into my XFCE image. Merely specifying "gdm" as
VIRTUAL-RUNTIME_graphical_init_manager variable does not correctly
configure PAM, systemd and console-kit. Logging in with a user created by
doing "useradd" bounces me back to the login window. I take that user
session doesn't get created successfully ( I don't have the log at the
moment, but I will follow up soon). Apart from specifying GDM as the
init-manager, and including SystemD and PAM as distro features, what other
steps do I have to take?

Thank you for your guidance!

Adam

--001a11c367ae0a0fdf04f0fd9859
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day everyone!<div>This is my first post to the group,=
 so please forgive me for anything inappropriate.=A0</div><div>I&#39;ve bee=
n using GDM thus far (since danny) but it has been challenging to integrate=
 it into my XFCE image. Merely specifying &quot;gdm&quot; as VIRTUAL-RUNTIM=
E_graphical_init_manager variable does not correctly configure PAM, systemd=
 and console-kit. Logging in with a user created by doing &quot;useradd&quo=
t; bounces me back to the login window. I take that user session doesn&#39;=
t get created successfully (=A0I don&#39;t have the log at the moment, but =
I will follow up soon). Apart from specifying GDM as the init-manager, and =
including SystemD and PAM as distro features, what other steps do I have to=
 take?</div>
<div><br></div><div>Thank you for your guidance!</div><div><br></div><div>A=
dam</div></div>

--001a11c367ae0a0fdf04f0fd9859--
