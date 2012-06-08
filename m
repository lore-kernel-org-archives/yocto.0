Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11915E01437
	for <yocto@yoctoproject.org>; Fri,  8 Jun 2012 13:56:52 -0700 (PDT)
Received: from mail-qa0-f49.google.com ([209.85.216.49])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 08 Jun 2012 13:56:51 -0700
Received: by qabj40 with SMTP id j40so1209252qab.15
	for <yocto@yoctoproject.org>; Fri, 08 Jun 2012 13:56:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=FaDthkSmCyVPBSfUgp9RQnGAvjlLjqjxHTkpC1QT0hA=;
	b=KTCJltGsRNsBon+IVgqi22QGisg2QrD1lo4wKbuadFJTjMWTkaStEqv4oTV98PpBaH
	NK1DKS0H/Jb0DGVx33KSSRYKYBttxolE6YuxZAKDn+c5Mxp32C/E7xEXGujHperFIgyM
	Uea+5qIPI0VYRxKpY+hcRpdOEXgq7bUSGvWTn5o31ABhD5D1iAEv7wA99ceogXhMSkDH
	LITbH22UCZcmzYgPjpMCQkOLTcWalgpmIN/iFYBjKE2pPLUa6cKAZU2PIw0bMPUNMYm2
	OwKb94sW81gG7Hwo3jlSJErSG3JmWiy2sXwmQTGqdah7ONi7hpoAYIzm2B+xprhMwTZb
	E1tw==
Received: by 10.224.184.207 with SMTP id cl15mr8530355qab.44.1339189010617;
	Fri, 08 Jun 2012 13:56:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.229.53.212 with HTTP; Fri, 8 Jun 2012 13:56:30 -0700 (PDT)
In-Reply-To: <CDED78A957032E45B3239CDDA7642D151C842AFC@ORSMSX105.amr.corp.intel.com>
References: <CBF7C947.109A2%belen.barros.pena@intel.com>
	<4FD22B4B.3050206@linux.intel.com>
	<CAJTo0LbNaNmKMuF2gw+mUUyCRzEC+P34b6aVGX_AjYNSjQxzag@mail.gmail.com>
	<4FD2600A.3010403@linux.intel.com>
	<CAJTo0Lbk0mhDUYYu5mMCytrTWWgVkkybHnfQr_4V2HEb1QFRVA@mail.gmail.com>
	<CDED78A957032E45B3239CDDA7642D151C842AFC@ORSMSX105.amr.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 8 Jun 2012 21:56:30 +0100
Message-ID: <CAJTo0LaPisdhnpTFPMfrGKFaFQzmU0TTUs9Xqfn2+nf9noPf9w@mail.gmail.com>
To: "Stewart, David C" <david.c.stewart@intel.com>
X-Gm-Message-State: ALoCoQnrsX8EhJiTM60CQStOavbxJ+vkUnf2M2wQbwg1zr+lViFKYAXuiTccum8uVwzDqi+I0YqA
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Hob implementation: vanilla or branded?
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
X-List-Received-Date: Fri, 08 Jun 2012 20:56:52 -0000
Content-Type: text/plain; charset=UTF-8

On 8 June 2012 21:42, Stewart, David C <david.c.stewart@intel.com> wrote:
> By the way, if there is no theme set, will the app use a reasonable default?

It's very hard to not have a theme set.  In GNOME the default is
Adwaita (GNOME 3) or Clearlooks (GNOME 2).  Many reasonable
distributions of KDE ship a theming bridge so GTK+ uses the current Qt
theme.  Under Windows the Windows-like theme is used.  If you try and
run a GTK+ app without an environment that doesn't set a theme, you'll
get the default theme which looks a lot like Windows 95.

Ross

