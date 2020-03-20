Received: from wp323.webpack.hosteurope.de (wp323.webpack.hosteurope.de [80.237.133.92])
 by mx.groups.io with SMTP id smtpd.web12.7930.1584699506259937671
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Mar 2020 03:18:27 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: delisys.ch, ip: 80.237.133.92, mailfrom: n.jeker@delisys.ch)
Received: from 22.71.14.46.static.wline.lns.sme.cust.swisscom.ch ([46.14.71.22] helo=linuxpower); authenticated
	by wp323.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1jFEjQ-0001kM-9R; Fri, 20 Mar 2020 11:18:24 +0100
Message-ID: <7c93329edf06e5f9501357012151b4a76142dfc5.camel@delisys.ch>
Subject: Re: [yocto] Patching submodules
From: "Nicolas Jeker" <n.jeker@delisys.ch>
To: yocto@lists.yoctoproject.org
Date: Fri, 20 Mar 2020 11:18:23 +0100
In-Reply-To: <CAAV2bM0jA_0QbKaRPmWMXss+Kt5kv_KbLvLHaCRKpY9PeVxM4w@mail.gmail.com>
References: 
	<CAAV2bM0jA_0QbKaRPmWMXss+Kt5kv_KbLvLHaCRKpY9PeVxM4w@mail.gmail.com>
User-Agent: Evolution 3.36.0 
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de;n.jeker@delisys.ch;1584699506;8580063b;
X-HE-SMSGID: 1jFEjQ-0001kM-9R
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2020-03-19 at 23:10 -0500, Emily wrote:
> Hi all - 
> 
> I have a recipe that I'd like to patch - the source is in a repo
> which has a submodule, and the patch occurs in the submodule. Is
> there a way I can apply this patch without getting an error? I do
> kind of understand why it's a problem - the patch is changing the
> pointer of the submodule to a commit which doesn't actually exist. Do
> I need to build the submodule as a separate recipe and patch it
> separately maybe? 

Is there a reason why you don't use a bbappend file with your patch in
it in a custom layer?

Something like this:

package_ver.bbappend
--------------------
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += "file://abc.patch"


With this directory structure:

meta-custom-layer
├── package_ver.bbappend
└── package
    └── abc.patch

Replace "package" and "ver" with the correct values (if you don't want
to set the version you can use "%" as a wildcard).

Maybe I missed something about your submodule situation and my advice
is completely wrong, if so, just disregard it.

> I used devtool for the patch and if I don't run the devtool reset
> command, then everything builds, but I think this is just because the
> workspace created by devtool was added as a layer, which probably
> isn't a good long term solution. 

You should be able to get the above structure by using 'devtool finish
recipe meta-custom-layer'. If that doesn't work you can do it manually
as described above.

> The error I get (pasted below) says I can "enforce with -f" but I'm
> not sure where that option goes exactly. Thanks for the help! 
> 
> Emily
> 
> Error on build: 
> ERROR: opc-ua-server-gfex-1.0+gitAUTOINC+921c563309-r0 do_patch:
> Command Error: 'quilt --quiltrc
> /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-
> linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot-
> native/etc/quiltrc push' exited with 0  Output:
> Applying patch 0001-Update-Poverty-to-point-to-boost-python3.patch
> File Poverty is not a regular file -- refusing to patch
> 1 out of 1 hunk ignored -- rejects in file
> Patch 0001-Update-Poverty-to-point-to-boost-python3.patch does not
> apply (enforce with -f)
> ERROR: opc-ua-server-gfex-1.0+gitAUTOINC+921c563309-r0 do_patch:
> Function failed: patch_do_patch

I don't know why this error occurs, maybe someone else knows more.

