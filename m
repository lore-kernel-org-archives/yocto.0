Return-Path: <vidal.develone@gmail.com>
Received: from mail-ee0-f47.google.com (mail-ee0-f47.google.com [74.125.83.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3748FE01484
	for <yocto@yoctoproject.org>; Wed,  8 May 2013 08:15:34 -0700 (PDT)
Received: by mail-ee0-f47.google.com with SMTP id b47so1022801eek.6
	for <yocto@yoctoproject.org>; Wed, 08 May 2013 08:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=7xjiGwF/KhY+26S47gDnLyMixM8sudgrYW8nyVVtUNs=;
	b=zuofDyN52mOh5KOPO2nDOuJtoY3qtn36PBsDiibzYzAtYGDLqb+KCbN/hyUIezBGKB
	36zxuE5RsfaexF0nlTxUb6rHl1lKXgt1VbOHn9PXrqmclJh2Ploy0mSSnO/324N964U3
	YEypuyXdXpsxvBTdO3QwrD+2tNlJAz45HWfknlOcO9JwvlyTBX2S3BUv00+eDaYw3c4B
	SLUfTIHxaBK3pSjWv+iOKYbLftgtwHnKllaT+UahcBwDj4yncyrRLW66Z/B6n3fAvVUS
	evNn41XN49zmDdHEDO6GtLnyCcAxyOokmoEg0+eGp1rRQnJuT5Vrhgf9rqcJGcW3wgoS
	p3TA==
MIME-Version: 1.0
X-Received: by 10.14.100.1 with SMTP id y1mr18194406eef.9.1368026132853; Wed,
	08 May 2013 08:15:32 -0700 (PDT)
Received: by 10.223.201.9 with HTTP; Wed, 8 May 2013 08:15:32 -0700 (PDT)
Date: Wed, 8 May 2013 09:15:32 -0600
Message-ID: <CANwz6nyTMRVp6daU0GNR8fBnEJam-yshPdorAgYn6-M72XLJRQ@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: netbase upgrade with meta-ti
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
X-List-Received-Date: Wed, 08 May 2013 15:15:34 -0000
Content-Type: multipart/alternative; boundary=001a11c39120b1578604dc366722

--001a11c39120b1578604dc366722
Content-Type: text/plain; charset=ISO-8859-1

Hello,
I am using Yocto with meta-ti to create beaglebone and pandaboard
core-image-sato files.
The following version of poky
commit 84d45db4ddced96c736f106f8122eefadf925c41
Author: Darren Hart <dvhart@linux.intel.com>
Date:   Wed May 1 13:43:33 2013 -0700

    grub-efi-native: Cleanup whitespace

    A few of the recent commits have used inconsistent whitespace with
    respect to tabs and spaces for indentation and alignment. Correct it.

    (From OE-Core rev: 3472c1f7ab409cd91c1d4782d9e00880b84e3ae8)

    Signed-off-by: Darren Hart <dvhart@linux.intel.com>
    Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
The new version of poky updated netbase from netbase_5.0 to netbase_5.1
This still works for my beagleboard but not for qemuarm.
The version of meta-ti that I am using which had worked up until 04/29/13
was
commit 5e6fb2bcf1fff597ebb0334bbf4a36ab027965d2
Author: Denys Dmytriyenko <denys@ti.com>
Date:   Fri Apr 26 17:23:05 2013 -0400

    linux-am335x-psp: fix typo in the filename to use underscore

    Signed-off-by: Denys Dmytriyenko <denys@ti.com>
What is the procedure to update meta-ti from netbase_5.0 to netbase_5.1
Any and all help will be appreciated.
Thanks
Ed Vidal

--001a11c39120b1578604dc366722
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div>Hello,<br></div>I =
am using Yocto with meta-ti to create beaglebone and pandaboard core-image-=
sato files.<br></div>The following version of poky<br>commit 84d45db4ddced9=
6c736f106f8122eefadf925c41<br>
Author: Darren Hart &lt;<a href=3D"mailto:dvhart@linux.intel.com">dvhart@li=
nux.intel.com</a>&gt;<br>Date:=A0=A0 Wed May 1 13:43:33 2013 -0700<br><br>=
=A0=A0=A0 grub-efi-native: Cleanup whitespace<br>=A0=A0=A0 <br>=A0=A0=A0 A =
few of the recent commits have used inconsistent whitespace with<br>
=A0=A0=A0 respect to tabs and spaces for indentation and alignment. Correct=
 it.<br>=A0=A0=A0 <br>=A0=A0=A0 (From OE-Core rev: 3472c1f7ab409cd91c1d4782=
d9e00880b84e3ae8)<br>=A0=A0=A0 <br>=A0=A0=A0 Signed-off-by: Darren Hart &lt=
;<a href=3D"mailto:dvhart@linux.intel.com">dvhart@linux.intel.com</a>&gt;<b=
r>
=A0=A0=A0 Signed-off-by: Richard Purdie &lt;<a href=3D"mailto:richard.purdi=
e@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>&gt;<br></div>=
The new version of poky updated netbase from netbase_5.0 to netbase_5.1=A0 =
This still works for my beagleboard but not for qemuarm.<br>
</div>The version of meta-ti that I am using which had worked up until 04/2=
9/13 was<br>commit 5e6fb2bcf1fff597ebb0334bbf4a36ab027965d2<br>Author: Deny=
s Dmytriyenko &lt;<a href=3D"mailto:denys@ti.com">denys@ti.com</a>&gt;<br>
Date:=A0=A0 Fri Apr 26 17:23:05 2013 -0400<br><br>=A0=A0=A0 linux-am335x-ps=
p: fix typo in the filename to use underscore<br>=A0=A0=A0 <br>=A0=A0=A0 Si=
gned-off-by: Denys Dmytriyenko &lt;<a href=3D"mailto:denys@ti.com">denys@ti=
.com</a>&gt;<br></div>
What is the procedure to update meta-ti from netbase_5.0 to netbase_5.1<br>=
</div>Any and all help will be appreciated.<br></div>Thanks <br></div>Ed Vi=
dal<br><div><div><div><div><br><br></div></div></div></div></div>

--001a11c39120b1578604dc366722--
