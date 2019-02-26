Return-Path: <ozimki@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 545FFE00D00; Tue, 26 Feb 2019 01:47:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ozimki[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com
	[209.85.222.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22318E00CED
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2019 01:47:45 -0800 (PST)
Received: by mail-ua1-f47.google.com with SMTP id d4so126104uap.5
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2019 01:47:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=3hTYSSuo9VDihwGdajg/I94fARdeoWoz9eRbSQ+CpUQ=;
	b=AKgSj8aL6U4PJts7gFHbT1VtIVuz+6YKGRglqB7biCg43FxEjn3qAC705KjH9YhrcD
	xPnqXir+C3v/OZS+ax5HzQkevKBr/lfNnDrA1X1jCrc/uyDtoTInq1xLw4S4FwfbkIkX
	rSgSIw9YAapw+n3v4jWEnlingfAm5jpuJMQrV34TSjES/iB/M0A/pN/t46wYNrCCA3gd
	ZMY4ocrRx6+ww33Litw5sFrv+/Y86lnP/1ROaU8Pmh6BCrmTX4M+1zQvlKIYM3WI0map
	iXqtfDYFt4saSRAlpl/FkBRh86e5+Pz5AbZD6L25ujh3dDrfjndey3jXPqurynaHJRNv
	iESg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=3hTYSSuo9VDihwGdajg/I94fARdeoWoz9eRbSQ+CpUQ=;
	b=fXLd7yPBhPvuL7oVYKuynilUNT8dQ9g1e6LofdeCtX/vEIrOlgMGFEERXgklmZzVxS
	c7B153wiCRSl/LrNzT9XC1BVaP2htc2vVAf8Z2WPG2Ob/XazaWRQVtiayvkFoyqHd6x9
	fjp+sDRYyroJq41vQsXWSoDXkod2tc/khhSrWonHlOoAY4vBRamGDjN2JyHpYpEIgxdr
	QTTzbWdMFZnd3FFUTb/shL5RMPzS3MbjK7s4eClBK88xeNwKSC8hv6MP5QUjFJKamBb7
	1LR8brpE5TaBzGL9g92XURet2eVGaNjuOcL8PaqY9N3vxI+hqS8m+8S5g4c14V/b4fiT
	Kvng==
X-Gm-Message-State: AHQUAuZM+0qAs9IbMtJr+ybovfD8n1FKII6NxgS17zMN8LToK/gxDWf6
	MU3Dtih+UyJpzV0KEStNPXxtTpDqxfKN2zHGz1Wh3XyU8HY=
X-Google-Smtp-Source: AHgI3IaAJS4AvINH7W/FOpZSLjCQGtcd/3gdhmgnlKn+IowdP7MLIZBeETjVfN7GAkJreCZmIyXkbiVJVUVfx5jWtV4=
X-Received: by 2002:ab0:6947:: with SMTP id c7mr10917665uas.22.1551174464801; 
	Tue, 26 Feb 2019 01:47:44 -0800 (PST)
MIME-Version: 1.0
From: Joanna <ozimki@gmail.com>
Date: Tue, 26 Feb 2019 10:47:33 +0100
Message-ID: <CAF78zj5PNMTN=0+dkiToF+chyJzko3Y6iDdncUwEhkbZVU=r3w@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 28 Feb 2019 08:21:22 -0800
Subject: Re: Error in do_rootfs while builing on sumo with cmake the library called "libfmt" 4.1.0 (on rocko it was ok)
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
X-List-Received-Date: Tue, 26 Feb 2019 09:47:47 -0000
Content-Type: text/plain; charset="UTF-8"

I had a similar problem where the rapidjson recipe was not working only on sumo.
The problem was that the default ${PN} package was empty so it would
not be generated, but do_rootfs would try to include it.
It helped to add a bbappend with the following line:
FILES_${PN} = " ${includedir}/ "

in your case you could possibly add ${libdir}/ as well,
This will create the rapidjson package and dnf will be happy.

I do not know if it is the right way to do that but it solves the
problem for me.

