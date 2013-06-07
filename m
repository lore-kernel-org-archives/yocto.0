Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qa0-f46.google.com (mail-qa0-f46.google.com
	[209.85.216.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99108E00742
	for <yocto@yoctoproject.org>; Fri,  7 Jun 2013 08:32:23 -0700 (PDT)
Received: by mail-qa0-f46.google.com with SMTP id ih17so1128597qab.5
	for <yocto@yoctoproject.org>; Fri, 07 Jun 2013 08:32:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=QHrf3ae+oXE5nG2rhtEU0EJgU7Huio0p9KBDBvzEZEc=;
	b=r+Jf9fBiScHx/imo+wqLEMGWot2rB2TYH2yWqJDLuA2gfEhEBGaeiL5WwJm5k+nTOD
	wQv6zdRom8yNxfmvIe6rZaNkkFaHWCzbykhLHqXrTp4b8z1LKZhMQHwnWNuUDnuDr3kc
	hXEVc9lIFeDWCoV+ngjCryJnl0d9wAIcs5hCn17X1eixyYHvO3WsENZH8rP5T00GZPfQ
	jHJBlJE/4SoHcd4BkZhm7WghK+ocX4brZaRO2faMieqTCwADMWvoGKTf10GW3r9zMUU1
	z2hBEyMmdut6g86HZrjU0fbM4/Sa79oPsEQsh9SGoeEaYaw1LZy3RxCoKP4MMETn/wZM
	JvNQ==
MIME-Version: 1.0
X-Received: by 10.224.179.77 with SMTP id bp13mr3534517qab.34.1370619142925;
	Fri, 07 Jun 2013 08:32:22 -0700 (PDT)
Received: by 10.49.24.239 with HTTP; Fri, 7 Jun 2013 08:32:22 -0700 (PDT)
In-Reply-To: <CAFyqS9oP_F1+Fa2+cVMnhmTwJTbzcD2ec2QQ0Cf-Mup6mDRKQw@mail.gmail.com>
References: <CAFyqS9oP_F1+Fa2+cVMnhmTwJTbzcD2ec2QQ0Cf-Mup6mDRKQw@mail.gmail.com>
Date: Fri, 7 Jun 2013 17:32:22 +0200
Message-ID: <CAFyqS9r1iQSpcvVbVk67HfYocupE6nhrQ+7i5WFgEkXBkFoF2w@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: staging of native header file to non-native package
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
X-List-Received-Date: Fri, 07 Jun 2013 15:32:23 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

The simplest way I found to solve this was to add the following to my recip=
e

PACKAGES +=3D " ${PN}-include"

${PN}-include_FILES =3D "foobar.h"

BBCLASSEXTEND =3D+ "native"

By doing this I could get away with one recipe for both {PN} and ${PN}-nati=
ve.
And all the target package needs to do is to RDEPENDS ${PN}-include
which will make sure it picks up the staged header file in the target
sysroot. No files will be written to the target rootfs since the .rpm
for ${PN}-include is empty.

But any suggestions to improve on this solution is more than welcome :)

On Fri, Jun 7, 2013 at 10:05 AM, Hans Beck=E9rus <hans.beckerus@gmail.com> =
wrote:
> Hello. We have a native package that implements a header file that is
> required also by another non-native package. What is the best approach
> to handle such a situation?
> I guess one option is to create two recipes for the package containing
> the header filer; one native and a one non-native that does not
> configure/compile anything but only installs the header file? But that
> seems ugly :( Must be some more clever way if solving this?
>
> Hans


On Fri, Jun 7, 2013 at 10:05 AM, Hans Beck=E9rus <hans.beckerus@gmail.com> =
wrote:
> Hello. We have a native package that implements a header file that is
> required also by another non-native package. What is the best approach
> to handle such a situation?
> I guess one option is to create two recipes for the package containing
> the header filer; one native and a one non-native that does not
> configure/compile anything but only installs the header file? But that
> seems ugly :( Must be some more clever way if solving this?
>
> Hans


On Fri, Jun 7, 2013 at 10:05 AM, Hans Beck=E9rus <hans.beckerus@gmail.com> =
wrote:
> Hello. We have a native package that implements a header file that is
> required also by another non-native package. What is the best approach
> to handle such a situation?
> I guess one option is to create two recipes for the package containing
> the header filer; one native and a one non-native that does not
> configure/compile anything but only installs the header file? But that
> seems ugly :( Must be some more clever way if solving this?
>
> Hans

