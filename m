Return-Path: <joaohf@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 877564C80132
	for <yocto@yoctoproject.org>; Thu,  7 Apr 2011 08:24:26 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iym1 with SMTP id 1so3482617iym.35
	for <yocto@yoctoproject.org>; Thu, 07 Apr 2011 06:24:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type:content-transfer-encoding;
	bh=wWcbq7atQiCi6fzLJ4j7plYziQMzkk1cUU/zjwsUZaw=;
	b=xmaZhAd8n0D/QoMfZkSZE4kTNeRUKdDsB6ms2BMwzEAcVhw/CyxmZzEFQtp/sxNRLX
	1Xihqbq1DXIw9cWYhfLjCvWhESgJPXusuQJdJ8k7Vwdf0i2OwN3FkDEJ6yaqTHcpb6tg
	1ZTZbedg2dsyltxYDhkTqZ5KcLDDXziTFmgoM=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type
	:content-transfer-encoding;
	b=CVfUg6k9hOe94LlPiWhXEtQRYYhoaf0dw561feIldZzvgXLbzjFwDQrFlqnEutH+KE
	QZQAvofKpiLa21O6AyJxcK1FBJlAn4LgiXV5lwPgUWAd+EVm8hNEZGT0WPnm7DDt5n5X
	ljPJc8aRsjhW9Nszcauli71JcyDdH8sUpcxt8=
MIME-Version: 1.0
Received: by 10.42.135.201 with SMTP id q9mr1434154ict.340.1302182662206; Thu,
	07 Apr 2011 06:24:22 -0700 (PDT)
Received: by 10.42.148.134 with HTTP; Thu, 7 Apr 2011 06:24:22 -0700 (PDT)
Date: Thu, 7 Apr 2011 10:24:22 -0300
Message-ID: <BANLkTinnBApSJtwrPKpZnnjG+UvkWGt37A@mail.gmail.com>
From: =?UTF-8?Q?Jo=C3=A3o_Henrique_Freitas?= <joaohf@gmail.com>
To: yocto@yoctoproject.org
Subject: recipes for sniffer tool
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
X-List-Received-Date: Thu, 07 Apr 2011 13:24:26 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

Is there any recipes to build a sniffer the network?

I  searched but does not found any recipes about it.

I am trying to build tcpdump and/or wireshark (tshark only).

Is interesting for Yocto project to have a sniffer?

Thanks.
--=20
-----------------------------------------------------------
Jo=C3=A3o Henrique Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil
BSD051283
LPI 1
http://www.joaohfreitas.eti.br

