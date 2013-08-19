Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f46.google.com (mail-vb0-f46.google.com
	[209.85.212.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 509A4E003E2
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2013 14:19:49 -0700 (PDT)
Received: by mail-vb0-f46.google.com with SMTP id p13so3586432vbe.33
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2013 14:19:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc
	:content-type;
	bh=lJ/E4KQBHxEPNY3nlvQVwU7nBG4GuzgeFDG0VD1ax1o=;
	b=Jzv1HKQYcf/u3Ze0P1HiEliZ9pxtM6cjNNlp8fFhLomC2kT9SgQrQo6KhoeABq0Vls
	nj8NjY7Gl+Qe04v8Skggok8O7x/efYz4l5XmyqGDmkmwkuuWz3L5+M4ESEerN2MrlnvI
	1l84g9+KoGDwm4X6rezqH9H4XiO81zSyRw5R5yG2JCukr7WcuN7M/nT886sKA2NLQCRK
	oi3A1DRDgeTLHsjBZY/YISf4iZmGM3WR7xvWz3a9wg4+M4CoHwen8SiCjuJd2n0wl1MV
	2wKCbs2y2koqMQgMKMRdm70niQf6tg5QpQc+AyRdlvla9OpeAgp8ShTF0OdQ5JSg0bzQ
	TDyg==
X-Gm-Message-State: ALoCoQkdMIsJSKLqGC12cNWQheOgy4zM1DW0yg8mpKX2GgiV/lzucI5flrA3DSm5zgAepy2C7a2o
MIME-Version: 1.0
X-Received: by 10.58.248.40 with SMTP id yj8mr10164vec.40.1376947188950; Mon,
	19 Aug 2013 14:19:48 -0700 (PDT)
Received: by 10.52.28.109 with HTTP; Mon, 19 Aug 2013 14:19:48 -0700 (PDT)
Date: Mon, 19 Aug 2013 14:19:48 -0700
Message-ID: <CAPhnLPBbfZD5w_PCqV_AzA33Q3v3iDrnwXHS3aFHP3xHqmXNOg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	SSD-OTC Romania Yocto QA <ssd-otc.romania.yocto.qa@intel.com>,
	Otavio Salvador <otavio@ossystems.com.br>
Subject: 1.4.2.rc1 now available for testing
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
X-List-Received-Date: Mon, 19 Aug 2013 21:19:50 -0000
Content-Type: text/plain; charset=ISO-8859-1

All,

I've built out 1.4.2's first release candidate. It is available at:

http://autobuilder.yoctoproject.org/pub/releases/dylan-1.4.2.rc1 in a

meta-fsl-arm cd605ff6e8d1b9131cd0cb1602959bea56fdec3d
meta-fsl-ppc 84edb861ec2f5cde6e4034504024a4261fdaf3af
meta-intel 048def7bae8e3e1a11c91f5071f99bdcf8e6dd16
meta-minnow bde2e79fdb35851ee1f855a41a536fe741d6294d
meta-qt3 4c27cce6688aa39852f3cba5e7b80ec279019605
poky d734ab491a30078d43dee5440c03acce2d251425
eclipse-poky-juno dc9a609c68fe4a6bbbf34d418fd6611489c1d6f7

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

