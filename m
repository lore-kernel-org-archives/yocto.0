Return-Path: <diego.sueiro@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id E1B704C81065
	for <yocto@yoctoproject.org>; Thu, 20 Jan 2011 17:15:51 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so1207757iwn.35
	for <yocto@yoctoproject.org>; Thu, 20 Jan 2011 15:15:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:from:date:message-id:subject:to
	:content-type; bh=rcYazewQcNzUg55TObBHuL5CaXkRFlLU7/tsvM2Z/3I=;
	b=CZ6nGXtQ48dk3lHZDfJDyEGDESikjwarKpVH3AeeOCh9aSZ0+qRKW8zboi9uCJa2M4
	zhF6DSfeLUM09W+9hwO+tLCa2AT5HcA6Anf+noLoGTn3yD8TDEMENj1zyaKJ6zMhcZZ/
	FEC/t2PV3y535kfGXJiTL+DTpeaZsjmdQbCRU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:from:date:message-id:subject:to:content-type;
	b=Ee/v40IXx/xlzo2vPR0TNgIB1M1jsB8MRe2DjWyG5v+gbs0blnLrymgo+0Mth5SMZ1
	0WHnS0WcS75O6WbtLiXlDSPyjxUAGIEz0dRRPuy4LyMEyD5vRIiuScJYCHuF4GxMw0L+
	ob3R2e70iREYbj/HFmRfspZpFjBJ3uvnepI0o=
Received: by 10.42.217.196 with SMTP id hn4mr3399285icb.249.1295565351555;
	Thu, 20 Jan 2011 15:15:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.42.226.70 with HTTP; Thu, 20 Jan 2011 15:15:31 -0800 (PST)
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Thu, 20 Jan 2011 21:15:31 -0200
Message-ID: <AANLkTi=XdyonrJRV03znEbLf5r67rVWOLBiAJrWoYE8E@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Eclipse Plugin Yocto Project Settings
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
X-List-Received-Date: Thu, 20 Jan 2011 23:15:52 -0000
Content-Type: multipart/alternative; boundary=20cf30549c699014a4049a4f50c6

--20cf30549c699014a4049a4f50c6
Content-Type: text/plain; charset=ISO-8859-1

On "Target Settings" for "QEMU" "Root Filesystem" options there is no way to
choose a individual file, just directories are allowed to be chosen.

When I tried to pass a poky-image-sato-qemuarm.ext3 file I had to put the
filename manually.



Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/

--20cf30549c699014a4049a4f50c6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>On &quot;Target Settings&quot; for &quot;QEMU&quot; &quot;Root Filesys=
tem&quot; options there is no way to choose a individual file, just directo=
ries are allowed to be chosen.</div><div><br></div><div>When I tried to pas=
s a poky-image-sato-qemuarm.ext3 file I had to put the filename manually.</=
div>

<div><br></div><div><br></div><div><br></div><div><div>Regards,</div><div><=
br></div>--<br>*dS<br>Diego Sueiro<br><br>/*long live rock &#39;n roll*/<br=
>
</div>

--20cf30549c699014a4049a4f50c6--
