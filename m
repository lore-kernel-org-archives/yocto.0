Return-Path: <elizabeth.flanagan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13D5AE01304
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 17:45:38 -0700 (PDT)
Received: from mail-lb0-f180.google.com ([209.85.217.180])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 22 May 2012 17:45:37 -0700
Received: by lbbgh12 with SMTP id gh12so4273902lbb.25
	for <yocto@yoctoproject.org>; Tue, 22 May 2012 17:45:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:content-transfer-encoding:x-gm-message-state;
	bh=zUy5EvgQ0TdXNQmtP0BIyaXacphNhqJtDQfTSaGljzg=;
	b=icf3GvfMqg76C8Lmu+pjXq9JXHsx7YZaUMQ0oTEr+WD5M8cnCkkse/XfYu7GFXoHJj
	gZ3D5lNCYl6hHOo2BWp5OHK1zahjpeBkGn3tcA5EksJFiqwPHEJ6fm3qg0nUBiLIban1
	CSbUGdCtBuk/gtAUaU5VMVg7ksZmFAOvuw/jm7ziPasEysF9ZWcXZ2U7BWxQTvSV9j9O
	9XskhoxpO6NQ2melVb77I2TkKFDUjRr78haApRMtAm9if9/5PDTniCUNXoUl/JGgHNAe
	IhrMqcu7qvMYg2V+jc1e8dNidAI1a/njnCJOE3pAdr0UqQkHEkOzJCDksMzrLt/hDx5V
	roJw==
MIME-Version: 1.0
Received: by 10.112.11.38 with SMTP id n6mr10610582lbb.82.1337733935107; Tue,
	22 May 2012 17:45:35 -0700 (PDT)
Received: by 10.112.1.227 with HTTP; Tue, 22 May 2012 17:45:35 -0700 (PDT)
Date: Tue, 22 May 2012 17:45:35 -0700
Message-ID: <CAPhnLPBb-qcMq-MHwbxoiu9qXChaWJkvTgVavSR1goyh_8t55w@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org, yocto-announce@yoctoproject.org
X-Gm-Message-State: ALoCoQkMCgQFRb2mDYJhgb5yBDKRhLJoS085pwfYsP/myNIVjZudjvohSoXwBYoVnWX/3tSyviyD
Subject: [ANNOUNCEMENT] Cedar Trail with PowerVR for Edison 6.0.1
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
X-List-Received-Date: Wed, 23 May 2012 00:45:38 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

An updated Cedar Trail BSP for Edison has been released and is available at=
:

http://www.yoctoproject.org/download/bsp/intel%C2%AE-atom%E2%84%A2-processo=
r-n2000-and-d2000-series-based-platform-cedar-trail-powervr-graphics

The 'Cedar Trail' platform consists of the Cedarview (Intel=AE Atom=99
N2600, N2800 and D2700) processor, plus the Tiger Point (Intel=AE NM10
Express) Chipset.

This release enables the BSP to use the latest available kernel
patches for Intel's PowerVR graphics driver. The BSP image includes
time limited kernel images for testing purposes.

The images included in the BSP were built from:
meta-intel: http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel/commit/?h=
=3Dedison&id=3D8639a836d388812887ecd28bd4e7c6
poky: http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=3Dedison&id=
=3D0fbd6a161576b2cafa8583adde0ffb15347c884a

Source for the included images is available at:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/sources/

--=20
Elizabeth Flanagan
Yocto Project
Build and Release

