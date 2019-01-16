Return-Path: <peterson.russell@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 937C4E00C6D; Wed, 16 Jan 2019 07:01:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (peterson.russell[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.180 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8ADF9E00C29
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2019 07:01:07 -0800 (PST)
Received: by mail-qt1-f180.google.com with SMTP id p17so7443601qtl.5
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2019 07:01:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=v+l2rqXv4vwzbVnxwodHt3PCHUdkZ+pGwBEsexB6+Bo=;
	b=nvsWWcEBX7gwi7633gx+SbiMxFfMkFXeKIMnZoGtjq2Jl4FwunLVxI4SWj1AyLZB1F
	h9EKSHYnA1XZnWPtxlXTvoVJIjibCv+o6JvBxeE4mRdsLXMQ0px2A1CIQA8AA31nkdcg
	QBHvLOdTKNMc1JtBEkFyemMZo697FIxm+7rI8Yn4ZW8ywjFMBvfPFPZpNJIgtLLihNqB
	z9Sv3SyZFuKi8YLnpTrHwZcxamV9bA3m9C1J1TjObMBycvOpcgFgPZRJTnmEQKEkrCD0
	w5s6CkeBoSNopyEM6TuNWe98nwcl9xu1AP77VSyXRv8x6S1fXr1HxyCQjbct0pT8Y1lY
	8xpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=v+l2rqXv4vwzbVnxwodHt3PCHUdkZ+pGwBEsexB6+Bo=;
	b=FSkBWxa/7hQD0b8M2aYwHyILEepeHgvl9/ROqnWnjIYy9XAGcDTHvzw7Mbilf2MH9S
	BP1BQNis3Y7iJOVrqNiqT6ilKPFFXeoPpAEo0x4JAcYkXsH/pRmQ5BqRsd6sfOr3EdQr
	BxWkNLRBJH3RvfNHWo7F+I6eInKYQXqkQm+g27z/wzIrHhtkRKifhuWtgHTPKRAgUtO2
	wipijrqlo8UDF3emwCPz+YXUj57c5MTWBAftVcvWSo15oKxozUDzRorlcuNYDUdLzrLE
	kQxGSIuTExVMvrM77Cj2a/geiwvGVxd52aSGUYjvcQ5L0efDsvEHaj35EEZqR6lUpzRx
	aIpA==
X-Gm-Message-State: AJcUukfigP+c0eR0QKGk4DDu+a5r4W1L3ytP0df+ZpJOV0E/IYFcpVnf
	vMSVjpla0POSxrgPRwYFNrovwaMpCKwaJqXUq3QROg==
X-Google-Smtp-Source: ALg8bN7iuw+cy6FPHU3v4jR/vzkLFJlOqSWVPBd/uwMql2qxfkYxI6hwUE8w5scDdx3N3Fub0noJJB2P1e6Qdr1QYT4=
X-Received: by 2002:a0c:d29b:: with SMTP id q27mr7293541qvh.62.1547650866644; 
	Wed, 16 Jan 2019 07:01:06 -0800 (PST)
MIME-Version: 1.0
From: Russell Peterson <peterson.russell@gmail.com>
Date: Wed, 16 Jan 2019 10:00:55 -0500
Message-ID: <CAJxG=fmJXKB6xBgCFe_yY3VtDGFN31km1cur=YMYdSSkn=Hqxg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: make-mod-scripts
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
X-List-Received-Date: Wed, 16 Jan 2019 15:01:08 -0000
Content-Type: multipart/alternative; boundary="000000000000248d97057f948ccf"

--000000000000248d97057f948ccf
Content-Type: text/plain; charset="UTF-8"

Hello,

We are seeing build failures every now and then regarding our out of tree
modules.

I have tracked the issue down to make-mod-scripts performing the make
oldconfig and prepare operations.  Normally this works, however, if for
some reason a clean is done on the linux kernel, the build artifacts
directory gets wiped out.  While the build artifacts directory does get
rebuilt, make-mod-scripts:do_configure is never triggered because it
doesn't think anything changed.  This breaks the module build because it
can't find auto.conf.

I think I can nostamp make-mod-scripts for now but is there a more elegant,
efficient solution here?  Seems like make-mod-scripts is designed to only
build once.

Regards,

Russell

--000000000000248d97057f948ccf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>We are seeing build failures eve=
ry now and then regarding our out of tree modules.</div><div><br></div><div=
>I have tracked the issue down to make-mod-scripts performing the make oldc=
onfig and prepare operations.=C2=A0 Normally this works, however, if for so=
me reason a clean is done on the linux kernel, the build artifacts director=
y gets wiped out.=C2=A0 While the build artifacts directory does get rebuil=
t, make-mod-scripts:do_configure is never triggered because it doesn&#39;t =
think anything changed.=C2=A0 This breaks the module build because it can&#=
39;t find auto.conf.</div><div><br></div><div>I think I can nostamp make-mo=
d-scripts for now but is there a more elegant, efficient solution here?=C2=
=A0 Seems like make-mod-scripts is designed to only build once.</div><div><=
br></div><div>Regards,</div><div><br></div><div>Russell</div><div><br></div=
></div>

--000000000000248d97057f948ccf--
