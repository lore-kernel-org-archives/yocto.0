Return-Path: <marc.ferland@gmail.com>
Received: from mail-qw0-f41.google.com (mail-qw0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB421E0030C
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 11:55:23 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qats34 with SMTP id s34so382311qat.14
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 11:55:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=sender:from:to:subject:date:message-id:user-agent:mime-version
	:content-type; bh=7EDgp7SzQBN/KhdC1Q8Tn2n4joAW4ZhDEJ1AtZWCUos=;
	b=HtHPb4nYWhb+Z1XENPbasWsO2o+62B41aVFNk6dtb2HjbHarzAksOxeSEJRosoObfn
	KsZydMydl977iXHz1e2EFXChT1pUokUICJTcpWjnd3Or0JvpNuusvYGJh/bom/4J6Axr
	l0v5vYbnzhbDhvuU4L1r+VVSjoPrf0YkVRYm0=
Received: by 10.224.176.80 with SMTP id bd16mr7892525qab.39.1326398122998;
	Thu, 12 Jan 2012 11:55:22 -0800 (PST)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id s19sm11849207qap.2.2012.01.12.11.55.20
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 12 Jan 2012 11:55:21 -0800 (PST)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Thu, 12 Jan 2012 14:55:35 -0500
From: Marc Ferland <ferlandm@sonatest.com>
To: yocto@yoctoproject.org
Date: Thu, 12 Jan 2012 14:55:35 -0500
Message-ID: <877h0wn1ag.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/23.3 (gnu/linux)
MIME-Version: 1.0
Subject: QtCreator and Yocto SDK
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
X-List-Received-Date: Thu, 12 Jan 2012 19:55:24 -0000
Content-Type: text/plain; charset=us-ascii

Hi,

I'm currently looking for instructions on how to integrate a Yocto SDK
with QtCreator.

I've successfully built my application by sourcing the environment file
and simply calling qmake/make, but QtCreator refuses to build the
project.

Any ideas/tips?

Marc

