Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f178.google.com (mail-vc0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81F06E007B0
	for <yocto@yoctoproject.org>; Fri, 13 Dec 2013 10:48:11 -0800 (PST)
Received: by mail-vc0-f178.google.com with SMTP id lh4so1563215vcb.23
	for <yocto@yoctoproject.org>; Fri, 13 Dec 2013 10:48:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=UjCj+7X4wXlZ0nEU8KBVuOB6vsMG6G6MkW9hya66yQY=;
	b=Yjbm6XMo/6RII4CuLDtORpdsTOpHBunf+JAD5KdfeTIzo21vjv7YuYRNwMVmzCGFot
	D7QUC/MzpEuy38l+00tPvfwBLj1yj7i4v4i1lPW640AA6VY+DfYPoO0F63mmH0iKiuOf
	mlnkhqZSFiWKRBhCmWPStf+HQvAA6q8D4XUltrI/EoZWWlVI29xVUMM/j8s/oj2UJpcd
	DumyRA68NDcnozccUXf/5Dg1IumZWtLmGwKT2jDHQ/ZNggHiA2kuSY86KT0J9ejx/nFT
	Kz0XioDWLX1JztUeQQFazlOMkkzemTeDdjh/ef7kmBJrgOZh+tMjCPRrqCIHK6my+Bg8
	VD0A==
X-Gm-Message-State: ALoCoQkU2akdwTrrcj3aHEN9DfIuoYXJd6OC4ieKuyUVoVpteiIGpezHAHShZUvCCqhrWW5Vfuha
X-Received: by 10.58.237.42 with SMTP id uz10mr766409vec.73.1386960491051;
	Fri, 13 Dec 2013 10:48:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Fri, 13 Dec 2013 10:47:49 -0800 (PST)
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A8EFCEBA8@ORSMSX108.amr.corp.intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A8EFCEBA8@ORSMSX108.amr.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 13 Dec 2013 18:47:49 +0000
Message-ID: <CAJTo0LZ8Ncb-ZiSSZNPagAoR8mJEW8UeMgU2B4WTAgGLcq12Tg@mail.gmail.com>
To: "Liu, Song" <song.liu@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Minutes: Yocto Project 1.6 M1 release readiness review - Friday, December 13, 2013 8:00 AM-8:30 AM (UTC-08:00) Pacific Time (US & Canada).
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
X-List-Received-Date: Fri, 13 Dec 2013 18:48:14 -0000
Content-Type: text/plain; charset=UTF-8

On 13 December 2013 18:12, Liu, Song <song.liu@intel.com> wrote:
> Performance issue for rootfs. There is a possible fix. will see the
> performance after the fix. Will open a bug if the fix does not work.

If this is happening on ipkg images I found a problem where qemu will
spin infinity eating memory when running the intercepts until it gets
OOMd.  The bug I filed was
https://bugzilla.yoctoproject.org/show_bug.cgi?id=5664, this should be
fairly simple to fix (and the workaround is to comment out the tar
line in systemd.bb).

Ross

