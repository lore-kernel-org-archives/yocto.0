Return-Path: <marc.ferland@gmail.com>
Received: from mail-vb0-f42.google.com (mail-vb0-f42.google.com
	[209.85.212.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 199D1E0155D
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 12:59:37 -0700 (PDT)
Received: by mail-vb0-f42.google.com with SMTP id i3so10003278vbh.29
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 12:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:mime-version:content-type;
	bh=9Egvl3x+JcMW4bj4wy8Rh/sAGcHwicbvYqsnP+CBXdU=;
	b=yx/xWq91diUAFU1GOrp3cuYnwKNElMpjzwu+BRo1bZxX6DTIxztgvEuvaxpzoY78BY
	BsgmLojx9QYM7KEtqGPWL9X4vIbFoXwPESS/M8ZH+uU9vw/q0HmuuJFASfwwYWrx5z1N
	EiAcEt0N35yErGxkTs6GORmCdndvxD009VPhOnzetMObg9/bMV+1yo63LFoOBihtmDDy
	qYh7aVHTff+c5Pij1RwEWnSu6ieG1YKSOQfDZ6554HGSSfVYnKRRG7f2Eh0csofA+izb
	1tay/kna+T5N3hS0ZqnQqwhNpRhpz9nuHoi4GoUSNeSTFkDnZC+eUtPmogZN0jKw9Ddn
	jhMw==
X-Received: by 10.220.83.138 with SMTP id f10mr430720vcl.7.1372190377176;
	Tue, 25 Jun 2013 12:59:37 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPSA id tu6sm25402949vec.2.2013.06.25.12.59.35
	for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Tue, 25 Jun 2013 12:59:36 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Tue, 25 Jun 2013 15:59:48 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: yocto@yoctoproject.org
Date: Tue, 25 Jun 2013 15:59:48 -0400
Message-ID: <87fvw6arm3.fsf@sonatest.com>
MIME-Version: 1.0
Subject: variable override question
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
X-List-Received-Date: Tue, 25 Jun 2013 19:59:43 -0000
Content-Type: text/plain

Hi,

I have a linux-yocto_3.4.bbappend file in which I try to override the
KERNEL_FEATURES variable. I want it to be empty (I don't want the
netfilter stuff that's there by default).

So I've tried (in my bbappend):

KERNEL_FEATURES = ""

but somehow the netfilter.scc file still gets merged in.

What am I doing wrong?

Marc

