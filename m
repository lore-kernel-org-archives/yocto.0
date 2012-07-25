Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B82CE00280
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 18:56:04 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so634984pbb.35
	for <yocto@yoctoproject.org>; Tue, 24 Jul 2012 18:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=BJkU6tLRZN++tsOC368CVRdPzqnuhz/KyXs9r66iNAg=;
	b=mZHYMf7zj/seCtbJ5vm+CooWtf0QJvgbeFL4iCNlyVolKVA6p7klSL9CK+P6K3xq/7
	FYFFpUa2T0b6Ii8FhP9XT1ZhJnftMK8vb/KpK2Cfeo3OfYHDMhYhXeRvVDshy3Q0073h
	Q9vELFr0AJfasUC+DIEtTZhfANFDvIEmghIh23eSqiOqa5ptqfuXmrGNrwdRPFmcRM4b
	IcbK4zkncpt8sG/ZxNJvyo2K8jpPiISbcHmaj5DaQVV71itmwPekiWjWLMa/TEKdpt9t
	ub7U3zjehdeK+aJGhNWv+0xAY6+5fM1DJoXm3Qq+EZAMGyWHJ0dSgZw4Oeya+KwmTpp0
	4jFQ==
Received: by 10.68.129.168 with SMTP id nx8mr49132823pbb.112.1343181363967;
	Tue, 24 Jul 2012 18:56:03 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id gh9sm13284650pbc.20.2012.07.24.18.56.01
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 24 Jul 2012 18:56:03 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <500EFDAD.9020706@mlbassoc.com>
Date: Wed, 25 Jul 2012 05:55:57 +0400
Message-Id: <8BE102C1-C19E-4A6F-8A1D-F30AA584475B@gmail.com>
References: <3E35CC86-5BD8-4B88-99EE-F7C8A5742F50@gmail.com>
	<CAEsOVNegFwoe+83-n88-XVAEh13cbXaX1dsY4gM9rEeuvgytCg@mail.gmail.com>
	<2D733773-9752-489E-BB14-46E2F8025356@gmail.com>
	<500EFDAD.9020706@mlbassoc.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Mailer: Apple Mail (2.1278)
Cc: yocto@yoctoproject.org
Subject: Re: Unable to get login prompt for Xilinx ML507 PowerPC440 target development board
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
X-List-Received-Date: Wed, 25 Jul 2012 01:56:04 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_09F56BCA-A9B3-4BEA-976E-09CA19401188"

--Apple-Mail=_09F56BCA-A9B3-4BEA-976E-09CA19401188
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi Gary,

On Jul 24, 2012, at 11:55 PM, Gary Thomas wrote:

> Did 'udev' run?  I didn't see it in your log.  Normally, udev
> would be responsible for creating /dev/ttyUL0

No udev did not run.=20

> What image are you trying to run?  e.g. core-image-minimal, etc?

I tried with both core-image-minimal and core-image-base.

I am using the meta-xilinx layer, virtex5.conf=20

=
http://git.yoctoproject.org/cgit.cgi/meta-xilinx/plain/conf/machine/virtex=
5.conf

has the following entry

# Don't use tty1
# USE_VT =3D "0"
SERIAL_CONSOLE ?=3D "115200 ttyUL0"

# Device nodes add xsa for (system ace)
IMAGE_DEVICE_TABLES =3D "files/device_table-minimal.txt \
                       files/device_table_add-xsa.txt"

There is a device_table_add-xsa.txt file, whose contents are as follows:

# Add nodes for xilinx system ace
/dev/xsa    b   640     0   0   125     0   0   0   -
/dev/xsa1   b   640     0   1   125     0   0   0   -
/dev/xsa2   b   640     0   2   125     0   0   0   -
/dev/xsa3   b   640     0   3   125     0   0   0   -
/dev/ttyUL  c   666     0   0   204     187 0   1   4
Perhaps this is the reason? Should there be an additional entry for =
/dev/ttyUL0 ?

How can I ensure that udev runs?=20

Best regards,

Elvis Dowson


--Apple-Mail=_09F56BCA-A9B3-4BEA-976E-09CA19401188
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">Hi =
Gary,<div><br><div><div>On Jul 24, 2012, at 11:55 PM, Gary Thomas =
wrote:</div><div><br></div><blockquote type=3D"cite"><div>Did 'udev' =
run? &nbsp;I didn't see it in your log. &nbsp;Normally, udev<br>would be =
responsible for creating =
/dev/ttyUL0<br></div></blockquote><div><br></div><div>No udev did not =
run.&nbsp;</div><br><blockquote type=3D"cite"><div>What image are you =
trying to run? &nbsp;e.g. core-image-minimal, =
etc?<br></div></blockquote></div><br><div>I tried with both =
core-image-minimal and core-image-base.</div></div><div><br></div><div>I =
am using the meta-xilinx layer, =
virtex5.conf&nbsp;</div><div><br></div><div><a =
href=3D"http://git.yoctoproject.org/cgit.cgi/meta-xilinx/plain/conf/machin=
e/virtex5.conf">http://git.yoctoproject.org/cgit.cgi/meta-xilinx/plain/con=
f/machine/virtex5.conf</a></div><div><br></div><div>has the following =
entry</div><div><br></div><div><span class=3D"Apple-style-span" =
style=3D"font-family: Times; "><pre style=3D"word-wrap: break-word; =
white-space: pre-wrap; "># Don't use tty1
# USE_VT =3D "0"
SERIAL_CONSOLE ?=3D "115200 ttyUL0"

# Device nodes add xsa for (system ace)
IMAGE_DEVICE_TABLES =3D "files/device_table-minimal.txt \
                       =
files/device_table_add-xsa.txt"</pre></span><div><br></div></div><div>Ther=
e is a device_table_add-xsa.txt file, whose contents are as =
follows:</div><div><br></div><div><span class=3D"Apple-style-span" =
style=3D"font-family: Times; "><pre style=3D"word-wrap: break-word; =
white-space: pre-wrap; "># Add nodes for xilinx system ace
/dev/xsa    b   640     0   0   125     0   0   0   -
/dev/xsa1   b   640     0   1   125     0   0   0   -
/dev/xsa2   b   640     0   2   125     0   0   0   -
/dev/xsa3   b   640     0   3   125     0   0   0   -
/dev/ttyUL  c   666     0   0   204     187 0   1   =
4</pre></span><div>Perhaps this is the reason? Should there be an =
additional entry for /dev/ttyUL0 ?</div></div><div><br></div><div>How =
can I ensure that udev runs?&nbsp;</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis =
Dowson</div><div><br></div></body></html>=

--Apple-Mail=_09F56BCA-A9B3-4BEA-976E-09CA19401188--
