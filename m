Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCB32E00734
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 02:55:05 -0700 (PDT)
Received: by mail-vc0-f176.google.com with SMTP id ha12so660451vcb.35
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 02:55:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=yLz8TMLOvVOWrD2zBDx3V/BVdFsyuoKco6R3Rlk/gKo=;
	b=GQZTvDZf/2++nTjSiSJv+80fkty/QV7iXd5hHuF5D/eZ4yVHwHlu05bHimw4NBbsg/
	gmrlPmQdTKmSgz5740/OEMu2vF3xZ+Ftlk426/LIHgaLvDbXuE8iFWpEUKnxaqfNpIfC
	qZzumdvfIMaFmu3M8B+uJI4NVUNynixOfUEXSX5WDuEyKgeMiuaEQXzNRBo3annKje2h
	isM6SFvr1j5cClvN0V4/GdSxh2eTVzYqJUNKW4NyWSjKaMdv/e5bUfKmBKEm9IJBVrhx
	2Pp1m7/pcbos6z3Qm6XUAynZInIiIx1Z/zeOgi4K4ip8kqPGKhBflasREpq7nTZ0VhRG
	55aA==
X-Received: by 10.220.42.147 with SMTP id s19mr13387888vce.46.1372154104513;
	Tue, 25 Jun 2013 02:55:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Tue, 25 Jun 2013 02:54:44 -0700 (PDT)
In-Reply-To: <51C8E6AC.5000704@balister.org>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF5130F@ORSMSX101.amr.corp.intel.com>
	<51C8466F.8040808@balister.org>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF514AE@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1306241046210.24762@oneiric>
	<CAJTo0Lb8mXhsma_8XvWp2B68QQ9tcS6PVGj9QWqMENgeCt8h5g@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB123797FF514E7@ORSMSX101.amr.corp.intel.com>
	<51C87A0C.1050003@balister.org>
	<CAJTo0LbwiP-WR1uetxLgMxC0beO198kg-ubO_oWd85JRv4eaqg@mail.gmail.com>
	<51C88F22.6030605@balister.org>
	<CA+YB3rbnUOssFc-w5Ak-X_rVPqhJnkJ+NiWEyJDJXL61gGJ0Gg@mail.gmail.com>
	<51C8E6AC.5000704@balister.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 25 Jun 2013 10:54:44 +0100
Message-ID: <CAJTo0LY9H0uJ0tupJy9u7cwnDMmLn5BpD=4h=kC-xi0PzXrasA@mail.gmail.com>
To: Philip Balister <philip@balister.org>
X-Gm-Message-State: ALoCoQliyNoInwRy4XGl8EjBkZFauKS9OgYQQEB8hEfgKTalRtGo3NWN2HPhCzSztkLRaPGAYSDc
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Documenting YP Development Environment in more detail - user configuration
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
X-List-Received-Date: Tue, 25 Jun 2013 09:55:06 -0000
Content-Type: text/plain; charset=UTF-8

On 25 June 2013 01:39, Philip Balister <philip@balister.org> wrote:
> I totally agree we drifted way beyond the initial discussion of the
> figure. The key thought here is understanding how Poky differs from a
> typical use of oe-core + other layers.

Is there such a thing as a "typical" use of oe-core + layers?  Poky
uses a custom tool (combo-layer, in oe-core/scripts) to merge the
layers into a single repo.  You could also use git submodules to make
a single repo (such as Guacamayo), or git subtree merges, or use repo
(gumstix), or have a script that manages the fetching of multiple
layers (Angstrom).

Ross

