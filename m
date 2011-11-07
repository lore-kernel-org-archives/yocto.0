Return-Path: <jfabernathy@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD6FDE00307
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2011 13:59:34 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ywm14 with SMTP id 14so8025786ywm.35
	for <yocto@yoctoproject.org>; Mon, 07 Nov 2011 13:59:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Pse8HuOx6R9ESMpQW1WSg4HP7BDMonvN7XRC7zih+i4=;
	b=JDEgRLESOnCJ1Ng756HHVH1sScJP7uwzkMHMqDZ7Uwz2I0DcsA6LqkELCDJrqPd8nW
	aRG9xvLl70iNvbkfG9fh8FsCvDLgxljhv+QSIuCRMIVLrD152yKK/jYURVpE/LU+MIc/
	40KVXb/SOIEMR2rJj4MJljihkwyLiIs0eiJLQ=
MIME-Version: 1.0
Received: by 10.236.129.208 with SMTP id h56mr37256263yhi.74.1320703173887;
	Mon, 07 Nov 2011 13:59:33 -0800 (PST)
Received: by 10.236.109.134 with HTTP; Mon, 7 Nov 2011 13:59:32 -0800 (PST)
Date: Mon, 7 Nov 2011 16:59:32 -0500
Message-ID: <CANFv2Ene=ZfVOzs76fsW7XNRm7K_0DNDB=q90AHV5Zs3KxcjNw@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: yocto@yoctoproject.org
Subject: use case howto?
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
X-List-Received-Date: Mon, 07 Nov 2011 21:59:35 -0000
Content-Type: multipart/alternative; boundary=20cf3010e95188888e04b12c2bfe

--20cf3010e95188888e04b12c2bfe
Content-Type: text/plain; charset=ISO-8859-1

I approach embedded Linux from a path of taking a Distro like Ubuntu or
Fedora and chopping it down to a working set of code that forms the final
solution.  Obviously, not the same methology as Yocto.  With some success
with the current methods, it's difficult to see the advantages of Yocto.
I'm reading what I can find to get smarting on Yocto, but like most new
concepts, you try to compare what you used to do with how to do it with the
new concept.

For example, if I use a distro, I can install packages really simply with
yum or apt-get; update them the same way. If I start with a Yocto meta-???
that's closest to my hardware solution, and get it working at a base level,
how do I add things, like browsers, or other application?

Jim A

--20cf3010e95188888e04b12c2bfe
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>I approach embedded Linux from a path of taking a Distro like Ubuntu o=
r Fedora and chopping=A0it down to a working set of code that forms the fin=
al solution.=A0 Obviously, not the same methology as Yocto.=A0 With some su=
ccess with the current methods, it&#39;s difficult to see the advantages of=
 Yocto.=A0 I&#39;m reading what I can find to get smarting on Yocto, but li=
ke most new concepts, you try to compare what you used to do with how to do=
 it with the new concept.</div>

<div>=A0</div>
<div>For example, if I use a distro, I can install packages really simply w=
ith yum or apt-get; update them the same way. If I start with a Yocto meta-=
??? that&#39;s closest to my hardware solution, and get it working at a bas=
e level, how do I add things, like browsers, or other application?</div>

<div>=A0</div>
<div>Jim A</div>

--20cf3010e95188888e04b12c2bfe--
