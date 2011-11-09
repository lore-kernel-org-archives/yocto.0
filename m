Return-Path: <marc.ferland@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C1F0E00305
	for <yocto@yoctoproject.org>; Wed,  9 Nov 2011 10:57:09 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywm14 with SMTP id 14so3496468ywm.35
	for <yocto@yoctoproject.org>; Wed, 09 Nov 2011 10:57:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=RlUqQGpEDUwsRPcS22coG8Q6yRmdlyi7PVEnjJpva4c=;
	b=UNXM0Ns5mO+LeRGELPTEVlW765p1b1AL1raIcjLnFw8uvkmsKwA6Ylkx37VLcCKjpy
	Y42/ddmzjTtQElGWv6+I7gHMdaNCXzH7K0MoQwEFfEyYZ1dGaEIIEV91zQcW+pmAi+E4
	qCa05D8uwKA+3dF2kcbZg9YANg+ikn+8jdfhw=
MIME-Version: 1.0
Received: by 10.50.197.227 with SMTP id ix3mr4728996igc.51.1320865028642; Wed,
	09 Nov 2011 10:57:08 -0800 (PST)
Received: by 10.50.34.166 with HTTP; Wed, 9 Nov 2011 10:57:08 -0800 (PST)
Date: Wed, 9 Nov 2011 13:57:08 -0500
Message-ID: <CAMRMzCCtEKeyaf=PMF60KEhkpXmD17YNzSxxn3Sig3nggmoLqQ@mail.gmail.com>
From: Marc Ferland <marc.ferland@gmail.com>
To: yocto@yoctoproject.org
Subject: QIconvCodec error
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
X-List-Received-Date: Wed, 09 Nov 2011 18:57:09 -0000
Content-Type: multipart/alternative; boundary=14dae9340785d4176904b151dac3

--14dae9340785d4176904b151dac3
Content-Type: text/plain; charset=UTF-8

Hi,

I'm currently testing my application (which uses Qt) on an image which
inherits core-image with a qemux86 target. Everything built without errors
but each time I start my application (or any other Qt application) I get:

QIconvCodec::convertFromUnicode: using Latin-1 for conversion, iconv failed
for BOM: Bad file descriptor
QIconvCodec::convertToUnicode: using Latin-1 for conversion, iconv_open
failed
QIconvCodec::convertToUnicode: using Latin-1 for conversion, iconv_open
failed

Any idea? Would installing libiconv fix this? Shouldn't eglibc provide this?

Regards,

Marc

--14dae9340785d4176904b151dac3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,<br><br>I&#39;m currently testing my application (which uses Qt) on an i=
mage which inherits core-image with a qemux86 target. Everything built with=
out errors but each time I start my application (or any other Qt applicatio=
n) I get:<br>
<br>QIconvCodec::convertFromUnicode: using Latin-1 for conversion, iconv fa=
iled for BOM: Bad file descriptor<br>QIconvCodec::convertToUnicode: using L=
atin-1 for conversion, iconv_open failed<br>QIconvCodec::convertToUnicode: =
using Latin-1 for conversion, iconv_open failed<br>
<br>Any idea? Would installing libiconv fix this? Shouldn&#39;t eglibc prov=
ide this?<br><br>Regards,<br><br>Marc<br>

--14dae9340785d4176904b151dac3--
