Return-Path: <jpuhlman@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id C0A114C8005F
	for <yocto@yoctoproject.org>; Mon,  6 Jun 2011 17:27:56 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pwi16 with SMTP id 16so3303788pwi.35
	for <yocto@yoctoproject.org>; Mon, 06 Jun 2011 15:27:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
	:subject:content-type:content-transfer-encoding;
	bh=1P4eBNFlcytUN93UnNqZHMl7vKtVh2fw8uZXcb+faDI=;
	b=TMmqtAEm16s8dgSKSbdhdIroQB3xc1NTvBs/4JxbuyrQ6VbAPHRH4zaLAjxo7MhHFt
	A2MynvttF+RKtQN+DIpJn2QpIvL/2DCx6C3QUlHa8ZIFNRGi9D5haOb3FuNzxlfUL/YU
	rlZmy3JoTCdkuG+pNSTJ89DrVW6e8V5rvW6wY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	b=DHJ5ZfsupgsqU9nHIr8UOvpZ2FSpgfj38e145/JCUeBonMZpXoLD4WqJ9PXGKKdHaw
	eOeWrXUMsrxRLU0S9kIP1uyyTJ8hopLSH+vAWAwYu6+cDifmMnxsF9m3RjnIGzuEhNdo
	FxEzlDUbnr8xRR+kQo+bWBlydvmOcQXW80maQ=
Received: by 10.142.162.7 with SMTP id k7mr813802wfe.313.1307399276246;
	Mon, 06 Jun 2011 15:27:56 -0700 (PDT)
Received: from [192.168.1.10] (c-67-187-204-11.hsd1.ca.comcast.net
	[67.187.204.11])
	by mx.google.com with ESMTPS id q13sm3375016wfd.23.2011.06.06.15.27.55
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 06 Jun 2011 15:27:55 -0700 (PDT)
Message-ID: <4DED5469.3040903@gmail.com>
Date: Mon, 06 Jun 2011 15:27:53 -0700
From: Jeremy Puhlman <jpuhlman@gmail.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US;
	rv:1.9.2.17) Gecko/20110414 Lightning/1.0b2 Thunderbird/3.1.10
	ThunderBrowse/3.3.5
MIME-Version: 1.0
To: Yocto Mailer <yocto@yoctoproject.org>
Subject: Content-tools.
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
X-List-Received-Date: Mon, 06 Jun 2011 22:27:57 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

As discussed with others when I first dropped the remote-layering patch
that I was working internally with our management to open our content
tools, since they would likely be useful as a starting point for yocto
layering tooling. Due to some personal tragedies I have been a bit
side-lined, but here they are.

The repository for the tools are here:

git://gitorious.org/content-tools/content-tools.git

The wiki giving a quick run down of everything is here:
https://gitorious.org/content-tools/pages/Home

The long and the short of it is the tools provide and xml description
layer for collections/layers, and a method of describing what we call in
our product solutions. A solution is basically a group of
collections/layers, configuration options and a like that you would use
to produce any number of images or what not from a machine
configuration. You can add multiple solutions together, and they will
add the collections as needed.

The back end mirroring and content providing components work really
well, though all the references to collections could be swapped over to
layers, but it is more or less at that level the name difference is
largely meaningless. The project creation tool will need some additional
work. I have added some changes to the tool to make it work with layers
and sstate a bit better, but I don't think it is completely there, but
it is more or less a reasonable start. The main thing is the setup.sh
would need to be taught about the extra stuff in oe-init-build-env and a
method for dealing with pseudo, which it doesn't at this point.

The work their does kind of hinge on the remote layering code I provided
before, being in your bitbake to run all the way to the end.  Though,
integrating what ever fetchers in to the tools is also reasonable, its
just not where we were doing it.

If you like I can try to post up a example content repository up on our
ftp server to kick around if you like. The wiki page has a run through
from beginning to end of the tools and how set an example up.

-- 
Jeremy Puhlman
Montavista Sofware, LLC.


