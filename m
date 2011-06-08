Return-Path: <sinestado@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 588C84C8005F
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2011 18:17:20 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yxd5 with SMTP id 5so689303yxd.35
	for <yocto@yoctoproject.org>; Wed, 08 Jun 2011 16:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:subject:from:to:content-type:date:message-id
	:mime-version:x-mailer;
	bh=xuAbNyoUjGgvHAie+bmajxm9XBglxpHbroIs33M7nWk=;
	b=QjQ4Mi8O9/Q0VKa75QRFJ05OQU9zgSGBb2FJ3Me/tKRqrYD/NRFX+HvaHNfqk696Q3
	PCO7YBwzaoCNXuIYb5TF5PK6BcmGRf80Sxb8zz8zOoMC2MP3t/s+0l6l6FsMbL9KooaI
	T0Q3oeT+/dcbe0ucb2nnvM/o2J8s5V9v9F2JY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=subject:from:to:content-type:date:message-id:mime-version:x-mailer;
	b=f507HMZllvKMkGjavNKnNhhDvogFPgMP0zXYdnRoI3NhxPH63lpup5qPKazqBd4k0B
	3O0kdYwIpW+gAzfqkKwq58yz1501etcFa90iVzTUqfI6lL6vb0rdWBqm4xnyffeQpc7P
	/1rohOlymAqJOgxxsUk0zYjUYPdwuHO8Bqd2k=
Received: by 10.236.157.74 with SMTP id n50mr72888yhk.9.1307575040039;
	Wed, 08 Jun 2011 16:17:20 -0700 (PDT)
Received: from [192.168.0.100] ([190.49.41.182])
	by mx.google.com with ESMTPS id e24sm552036yhk.65.2011.06.08.16.17.16
	(version=SSLv3 cipher=OTHER); Wed, 08 Jun 2011 16:17:19 -0700 (PDT)
From: sushisan <sinestado@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 08 Jun 2011 20:17:12 -0300
Message-ID: <1307575032.27437.9.camel@emiliano.local>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 (2.32.2-1.fc14) 
Subject: recipe priority in multiple metas
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
X-List-Received-Date: Wed, 08 Jun 2011 23:17:20 -0000
Content-Type: multipart/alternative; boundary="=-fTYYPuP6fGKDl8+RIgFF"

--=-fTYYPuP6fGKDl8+RIgFF
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi:

I have a project that use openssl.

I practically all recipes used are in yocto project
but I need someones that are in meta-oe (ie: fuse)

openssl is in  meta/recipes-connectivity AND in meta-oe/recipes
connectivity

I've putted meta first than meta-oe in my bblayers.conf, but when I try
to do a bitbake openssl
bitbake try to compile ever the meta-oe recipe

How I set priority in search recipes?

--=-fTYYPuP6fGKDl8+RIgFF
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 TRANSITIONAL//EN">
<HTML>
<HEAD>
  <META HTTP-EQUIV="Content-Type" CONTENT="text/html; CHARSET=UTF-8">
  <META NAME="GENERATOR" CONTENT="GtkHTML/3.32.2">
</HEAD>
<BODY>
Hi:<BR>
<BR>
I have a project that use openssl.<BR>
<BR>
I practically all recipes used are in yocto project<BR>
but I need someones that are in meta-oe (ie: fuse)<BR>
<BR>
openssl is in&nbsp; meta/recipes-connectivity AND in meta-oe/recipes connectivity<BR>
<BR>
I've putted meta first than meta-oe in my bblayers.conf, but when I try to do a bitbake openssl<BR>
bitbake try to compile ever the meta-oe recipe<BR>
<BR>
How I set priority in search recipes?
</BODY>
</HTML>

--=-fTYYPuP6fGKDl8+RIgFF--
