Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f41.google.com (mail-oa0-f41.google.com
	[209.85.219.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 950C7E00569
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2013 07:15:55 -0800 (PST)
Received: by mail-oa0-f41.google.com with SMTP id g12so10807715oah.28
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2013 07:15:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ItTZLwcnmkZyiYGeb8JGxRrpKNgO2xrorR25tn62sfI=;
	b=MCwD1OFxLz7L3+EczSSUN1QYJJF9Do7Pr54yv4G7MfYSp8e37k0C+/DpzTDuEfjsmx
	FWNxfcqekqh/NstYpX6QWxO7ElAmNqVIgnEvTNcTyF09Y/GPZPdSnZvzxc+G6/ps41ck
	y9jWPCFRk1EsO8EKBwlzLTvzwPRiRbU4zdhTS2rnFcg+R/HVs6qG052HKQNYUGgtv1zN
	lWTTHeOkBIkvmoJVywC3UIf+9wtyqs9Mm4mPReGxswAmJem3oDRA2pQyfXVNBRmwnWvk
	mtrVO0oUdDKTnWhyB21ENzk4R+18FeGXoy0rn8Kl0KBYKA4odHT2eU37mZBLOPT6Srh4
	+f/Q==
MIME-Version: 1.0
X-Received: by 10.182.19.132 with SMTP id f4mr966615obe.14.1384960555395; Wed,
	20 Nov 2013 07:15:55 -0800 (PST)
Received: by 10.182.228.81 with HTTP; Wed, 20 Nov 2013 07:15:55 -0800 (PST)
Date: Wed, 20 Nov 2013 16:15:55 +0100
Message-ID: <CAFyqS9o5dBnO5C9yvy6UvUxbsHKhBAqNSiiRXsBhgd6w8qgurg@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: init-ifupdown: is this missing a RDEPEND to procps?
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
X-List-Received-Date: Wed, 20 Nov 2013 15:15:56 -0000
Content-Type: text/plain; charset=ISO-8859-1

The /etc/init.d/networking script is using sysctl to grab some
parameters from /etc/sysctl.conf. This file does not exists unless
procps is also installed.
I can not see that init-ifupdown RDEPENDS procps. Should it not? Or is
there a reason for not having it like that?

Thanks.
Hans

