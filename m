Return-Path: <busytester@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id C8ADC4C80FCF
	for <yocto@yoctoproject.org>; Tue, 17 May 2011 19:46:09 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qwj9 with SMTP id 9so777881qwj.35
	for <yocto@yoctoproject.org>; Tue, 17 May 2011 17:46:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=ltSbNsYRn9hC29VuTl99HH30fEqRGBfYz2eEppV1xRA=;
	b=gTPIn1+BFsw3Pv2kPuvTLKSUbAfQqgeLSVzZHyqFUoDXvhSpI3SzdrKwI2STnwtgop
	uhWEWr+DaGWeQs1wfS1fXc/IVaJYA0+vY4+AAc+KmDAee/w/aI1zy3uZXzwxBbdWo1ky
	jc7L6rR4Yh3PAxJEIFrKBC3imX8aqBoIEKmtU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=jzjHLbQHcHmM/c57+JF8Oo1cLq+BR9ZnqXuuGRE2IdIvMJHapHZrpKivnlzWZ0rT3S
	QHKk7XGn2cCFKkI+rQBRHE08LJxEjBn1KGXUC8JTDkc1c6iOMKTXjkX9ovwFfwK5f62q
	l6sHU3Fiq5aGbGxFyKUYM+h/5uUEoXNREH9rE=
MIME-Version: 1.0
Received: by 10.229.90.66 with SMTP id h2mr985062qcm.109.1305679569263; Tue,
	17 May 2011 17:46:09 -0700 (PDT)
Received: by 10.229.98.140 with HTTP; Tue, 17 May 2011 17:46:09 -0700 (PDT)
Date: Tue, 17 May 2011 17:46:09 -0700
Message-ID: <BANLkTinwVS4Zu+21TR2eBa_-ArLb8gV0nQ@mail.gmail.com>
From: Daniel Lazzari <busytester@gmail.com>
To: yocto@yoctoproject.org
Subject: Can't create a new project with Yocto BitBake Commander plugin
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
X-List-Received-Date: Wed, 18 May 2011 00:46:10 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi everyone,

I searched and couldn't find anything on this issue, but it seems so
obvious that I'm guessing I'm doing something wrong. I installed the
Yocto Eclipse Plugin in Eclipse Helios Service Release 2 on an Ubuntu
10.04 machine. I selected File->New->Project, Selected Yocto BitBake
Commander->New Yocto Project, set the Project Name to Yocto and
selected the workspace folder where I have my Yocto checkout. It says
everything is valid at the top, I click Finish, and it just flashes
and keeps the dialog box up. No new project is created.

Has anyone else experienced this and knows of a fix or workaround? I'd
be happy to provide more details or log a bug for it if that helps.

Thanks,
Daniel Lazzari Jr.

