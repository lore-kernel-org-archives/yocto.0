Return-Path: <eballetbo@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38FB8E01285
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2011 00:29:58 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iafi7 with SMTP id i7so10424610iaf.35
	for <yocto@yoctoproject.org>; Tue, 06 Sep 2011 00:29:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type
	:content-transfer-encoding;
	bh=GWWNuZ5q+xS+TzKl5a2xaQfjeJRWEp2JYCMtrjWuSA8=;
	b=tY51ZKgnt3OQVQZDSN15Zbz7EqP1EKVo6MNOGfmt17U35+JxyANWF87aw8NJV2Saz0
	1etvTeYfWmQ8WlU7uCXzJFVvNLmINsnhOnoDU45BpMmME+IR7ZHhs1njxbX+hLHCNKIl
	QOAiCRq0wlSfruHlp3btN8v/XJ160P1XzTSSU=
MIME-Version: 1.0
Received: by 10.231.74.13 with SMTP id s13mr9004230ibj.78.1315294197685; Tue,
	06 Sep 2011 00:29:57 -0700 (PDT)
Received: by 10.231.158.72 with HTTP; Tue, 6 Sep 2011 00:29:57 -0700 (PDT)
Date: Tue, 6 Sep 2011 09:29:57 +0200
Message-ID: <CAFqH_53qx7d13w-AcNErp5qm9HmhOOkPU62pD03Xv222YMO8YQ@mail.gmail.com>
From: =?UTF-8?Q?Enric_Balletb=C3=B2_i_Serra?= <eballetbo@gmail.com>
To: yocto@yoctoproject.org
Subject: Error Creating Project with Eclipse IDE
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
X-List-Received-Date: Tue, 06 Sep 2011 07:29:58 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi all,

Following http://www.yoctoproject.org/docs/1.1/adt-manual/adt-manual.htm
(chapter 4.2), when I=E2=80=99m creating a New Project I=E2=80=99m getting =
the
message:

  Error Creating Project
  Project cannot be created
  Reason: Internal Error: java.lang.NullPointerException

I'm running Eclipse Helios (Version: Helios Service Release 2, Build
id: 20110301-1815) on Ubuntu 10.10 machine.

Any clue with this ?

Thanks in advance,
   Enric

