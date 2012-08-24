Return-Path: <mhubig@imko.de>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DC4DE00346
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 03:05:49 -0700 (PDT)
Received: by bkty5 with SMTP id y5so554795bkt.35
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 03:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imko.de; s=google;
	h=date:from:to:subject:message-id:mail-followup-to:mime-version
	:content-type:content-disposition:user-agent;
	bh=jDxQktR6inmxZgz4h0pMVn1XB8Qvtq/jelEQAEqYSNE=;
	b=kfvgZ7zPzAu6SVBRjmHnJXmA01wuwHeHYihflHDiQmOHhxlCTz4/jFn/u1qLJRfNtB
	rLRfJbHuU7Oiujl0vPnhmkufpjUUfU/IpD1nnpFU3G4Fcf7twbkNa9R5prArpCxvY7h0
	zHF5nild/OI4yP/Kv6JVrOUrVM7h1zuTP8suU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:subject:message-id:mail-followup-to:mime-version
	:content-type:content-disposition:user-agent:x-gm-message-state;
	bh=jDxQktR6inmxZgz4h0pMVn1XB8Qvtq/jelEQAEqYSNE=;
	b=CzLKBhcZ8lMGQ9DFC3ZpZ3yaOP+cD8dKBO6ZdCDVGg4CWDc8HHDCWHwMkNZKYBorL5
	/cUeMbcTtFhcNlPfPsxkjCtdR0+4+ApNKnuFc4zQsShmOARa2EshedS52EKqXDcOCqcS
	OWbHcfgy4z65K7HDTcjRxMuqYNouiN0AJQVwB8P4a14aoht/hjsfZehbpTDKf0UUSySN
	yJvYd2ndSl0PKIBJaQIdbOVANhblunJ/Kxa1uRwQClDnVaLYD3QB71IeQ1svqLjya3eZ
	2yQ+EA6GotmhbQDhCwCtPyr8tO+oJyWT8hAlCw/BwZuZQ3OgACuX2iZW83UxY3IfIpux
	cSIQ==
Received: by 10.204.129.14 with SMTP id m14mr1670841bks.7.1345802745729;
	Fri, 24 Aug 2012 03:05:45 -0700 (PDT)
Received: from imko.de (business-092-079-181-094.static.arcor-ip.net.
	[92.79.181.94])
	by mx.google.com with ESMTPS id g6sm6054143bkg.2.2012.08.24.03.05.43
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 24 Aug 2012 03:05:44 -0700 (PDT)
Date: Fri, 24 Aug 2012 12:05:41 +0200
From: Markus Hubig <mhubig@imko.de>
To: Yocto Project Mailing List <yocto@yoctoproject.org>
Message-ID: <20120824114034.3297d25c-b448-4631-93b1-fba8afc4d8c5.mhubig@imko.de>
Mail-Followup-To: Yocto Project Mailing List <yocto@yoctoproject.org>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Gm-Message-State: ALoCoQkO0V4uPeLso3h8ZBV8zTx6qFZXfXkWF2LObuPJQ75Wmpv3kXFI8z11JR8zwnurV9PRfVX3
Subject: License information of tasks
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
X-List-Received-Date: Fri, 24 Aug 2012 10:05:49 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi @all,

I'm building a layer to provide a customized image. Now I'm struggling
a bit by the license informations one have to provide for a task.

First: tasks are packages without content.

| rpm -qpl task-core-boot-1.0-r9.stamp9g20.rpm
| (contains no files)

... so why do they need some license information in the first place?

Second: OK if there are some reasons to provide license informations,
how do I include them?

In task-core-boot there are included like this:

| LICENSE = "MIT"
| LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
|                     file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"

No I wanna do the same, but of course relative to the base dir of my layer. But
I don't find a way of doing this ... 

| LICENSE = "LGPL-3.0"
| LIC_FILES_CHKSUM = "file://${LAYERDIR}/LICENSE;md5=5b241fa147528c635da6d1598c4a4056 \
|                     file://${LAYERDIR}/COPYING;md5=c79ff39f19dfec6d293b95dea7b07891 \
|                     file://${LAYERDIR}/COPYING.LESSER;md5=bfccfe952269fff2b407dd11f2f3083b"

... which looks good but don't work (I'm on 1.3_M3).

%  ERROR: Function failed: task-imko-python: LIC_FILES_CHKSUM points to an invalid file:
%   ...task-imko-python-1.0-r1/task-imko-python-1.0/${LAYERDIR}/LICENSE
%  ERROR: Logfile of failure stored in:
%   .../task-imko-python-1.0-r1/temp/log.do_configure.1179
%  Log data follows:
%  | DEBUG: Executing python function sysroot_cleansstate
%  | DEBUG: Python function sysroot_cleansstate finished
%  | DEBUG: Executing shell function do_configure
%  | DEBUG: Shell function do_configure finished
%  | DEBUG: Executing python function do_qa_configure
%  | NOTE: Checking autotools environment for common misconfiguration
%  | DEBUG: Python function do_qa_configure finished
%  | ERROR: Function failed: task-imko-python: LIC_FILES_CHKSUM points to an invalid file:
%   .../task-imko-python-1.0-r1/task-imko-python-1.0/${LAYERDIR}/LICENSE
%  NOTE: package task-imko-python-1.0-r1: task do_configure: Failed

Any ideas?

Cheers, Markus

-- 
Human beings were created by water to transport it uphill.

