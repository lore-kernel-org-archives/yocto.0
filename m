Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id AF9144C8110B
	for <yocto@yoctoproject.org>; Sat, 27 Nov 2010 10:30:58 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn34 with SMTP id 34so883545iwn.35
	for <yocto@yoctoproject.org>; Sat, 27 Nov 2010 08:30:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:date:message-id
	:subject:from:to:content-type;
	bh=j1BoK7azHGtpM/re1BgXV3iyNYwYd/Lt74xn21wQoCA=;
	b=Pus5NZS/qmg/oRnrpljVYd+dNOAJzQpco179S+zFFuVkk92TZJWgIv51xyuxV/xBo7
	ppHeqA7sw8/JH9THwJ1zpr6SbIpkkJMh/3rBgB5Ib0mZnaCS5N0t2hUB16VXY9TjFEaj
	IuJTIgpU9P71LCZTU84WCDtLj1gxekMxa54rY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=eCQnukroYNI4wcCONBR030HemUNKPVnylKDX36zHwahCDVuYWqDazo7EQZB+jbZmuK
	ogvqbPakH5VJLmq2sbQLTqNoCEFkr7uHPfs8yktZsRQ34Oy77PMKSCsAt+vPCk9/QTG4
	jWI/bVPbjZvb6iqFee4SKlAUrspkqzu8IXEgs=
MIME-Version: 1.0
Received: by 10.231.13.137 with SMTP id c9mr3080134iba.76.1290875458175; Sat,
	27 Nov 2010 08:30:58 -0800 (PST)
Received: by 10.231.33.4 with HTTP; Sat, 27 Nov 2010 08:30:58 -0800 (PST)
Date: Sat, 27 Nov 2010 17:30:58 +0100
Message-ID: <AANLkTikG322KfbJ-ZEKXFbsOLkzLE3Kdp4L-096ODvxd@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: yocto@yoctoproject.org
Subject: bsp doc bug
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
X-List-Received-Date: Sat, 27 Nov 2010 16:30:58 -0000
Content-Type: text/plain; charset=ISO-8859-1

I was trying to create a bsp layer. In the doc I bumped into the
following example for layer.conf:

# We have a conf directory, add to BBPATH
BBPATH := "${BBPATH}${LAYERDIR}"

[...]

Isn't there a colon mssing here.
If I look at the layer.conf of meta-ememlow it does have a colon:

BBPATH := "${BBPATH}:${LAYERDIR}"

Guess this is a typo in the doc (both html and pdf have this)

Frans

