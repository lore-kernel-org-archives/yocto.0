Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44A20E00C1E; Tue,  9 Apr 2019 07:37:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com
	[209.85.167.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CB93E00AD5
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2019 07:37:10 -0700 (PDT)
Received: by mail-oi1-f180.google.com with SMTP id y84so13692868oia.12
	for <yocto@yoctoproject.org>; Tue, 09 Apr 2019 07:37:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=JjzsJs7eJ1UUucENyIpLAj5B8ZjcQZFxdbsufKPMjnc=;
	b=UVaZKi05RlIJuK0+rxW4poK64pqnbrsP3I1+ipU3sY86JVlXLBpRb7rmW0LYky4gfg
	dxHmi9eCf+5ARsYVdFcNqiAUjflVYAOlzBxxRYBq91J7SwoWnpXW4iRaIk2XGbf/orC0
	QVZ+5SzVAmmKnWGsPaQdv7iK6u5dl+ZIRITGPLA39GMRb8jZ3JCtEKm3WhYGbervn6oU
	WGXsVoZ15pTqoVYHLNF+oTbf4XpF+GTXj3M4QJllKimkcS3dHIdwiFRV7XHcd4ImNq2z
	rRN4O98hTPWxjVTVEfEHyur2NqecX4gKV4FzSOGxgkgUhpWolVbeNOTJId9YX3PEOXzj
	dHqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=JjzsJs7eJ1UUucENyIpLAj5B8ZjcQZFxdbsufKPMjnc=;
	b=QB6LBsCsqn6LiGb545YuwVohSaUvPDB4oec4GqGNnG5u1ZCT6A8QaKjCuRM+gW7/I6
	oK5w6ueM9rRJPoR3lhZ0piN0nDBF3ka2Gi0Ucd/rYXO1AOJOHhs/n3iTibw1bP4U+wuq
	wsPgFfe9kM2nBpKc3Nh7ri8Ggj1FlysbZ4bX98lBIurI0ULGM0FetK8zJxPf/w5sIsfv
	1E4lgqfJYSIQo4AmXX4jb2yPtx/wPKLFaYnBIV223zqCTl2rdTW0tInXcwnczahtKPTQ
	nsoAmewLv7ytjpGTIC6fUKahY1WzZ8NB2s82reLZyzRQtCvjyWERu67FnzQMhqgnGcGc
	y5UA==
X-Gm-Message-State: APjAAAUhXyWsS0tMLgcpHJmOKCxQPG5BUKnKljwNbGcA5M4RUB0U8+fm
	vpI1Lihun9RZ222DMRsrOTnnbN54BOHzzDSa8xY=
X-Google-Smtp-Source: APXvYqz7BmiP8ix4/FUd3AWLKaPRD6ySzVW8yopcyv4Q7lNIefmVvY0+Pgrm883fJca9fPp4Au305fOiI7TEZzG21Nc=
X-Received: by 2002:aca:cc86:: with SMTP id
	c128mr18922178oig.119.1554820629768; 
	Tue, 09 Apr 2019 07:37:09 -0700 (PDT)
MIME-Version: 1.0
References: <e34cf81dae9140b4a411d054e3db49e5@ifm.com>
In-Reply-To: <e34cf81dae9140b4a411d054e3db49e5@ifm.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 9 Apr 2019 16:36:58 +0200
Message-ID: <CANNYZj-pdrv+FUg43ePSAZHB-k4iKJsfRTDXqrbmp_UGMq7Zww@mail.gmail.com>
To: "Pandey, Kamal" <Kamal.Pandey@ifm.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: dhcp and avahi package addition to image
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
X-List-Received-Date: Tue, 09 Apr 2019 14:37:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Most likely neither of these recipes actually provides a package named
'dhcp' or 'avahi'. Run 'bitbake -e avahi' and look for the PACKAGES
variable in the output, that would tell you the actual package names
that you can add to the image.

Alex

On Tue, 9 Apr 2019 at 16:16, Pandey, Kamal <Kamal.Pandey@ifm.com> wrote:
>
> Hello,
>
>
>
> I was trying to add avahi and dhcp  to my image. While running $bitbake d=
hcp avahi, everything is working fine but when I add these packages to pack=
agegroup  or directly to the image recipe using EXTRA_IMAGE_INSTALL or IMAG=
E_INSTALL_append. It starts giving error.
>
> The error  for avahi is shown below:
>
> ERROR: core-image-special-pdm3-1.0-r0 do_rootfs: Could not invoke dnf. Co=
mmand '/home/iepl007/yocto_build/build_dir/tmp/work/pdm3_zynqmp-pdm3-linux/=
core-image-special-pdm3/1.0-r0/recipe-sysroot-native/usr/bin/dnf -y -c /hom=
e/iepl007/yocto_build/build_dir/tmp/work/pdm3_zynqmp-pdm3-linux/core-image-=
special-pdm3/1.0-r0/rootfs/etc/dnf/dnf.conf --setopt=3Dreposdir=3D/home/iep=
l007/yocto_build/build_dir/tmp/work/pdm3_zynqmp-pdm3-linux/core-image-speci=
al-pdm3/1.0-r0/rootfs/etc/yum.repos.d --repofrompath=3Doe-repo,/home/iepl00=
7/yocto_build/build_dir/tmp/work/pdm3_zynqmp-pdm3-linux/core-image-special-=
pdm3/1.0-r0/oe-rootfs-repo --installroot=3D/home/iepl007/yocto_build/build_=
dir/tmp/work/pdm3_zynqmp-pdm3-linux/core-image-special-pdm3/1.0-r0/rootfs -=
-setopt=3Dlogdir=3D/home/iepl007/yocto_build/build_dir/tmp/work/pdm3_zynqmp=
-pdm3-linux/core-image-special-pdm3/1.0-r0/temp --nogpgcheck install packag=
egroup-pdm3-apps packagegroup-pdm3-qt packagegroup-core-tools-debug package=
group-core-boot packagegroup-core-x11 packagegroup-pdm3-base packagegroup-c=
ore-tools-profile packagegroup-pdm3-fonts base-passwd packagegroup-core-ssh=
-openssh shadow run-postinsts kernel-image-fitimage-4.14.79-yocto-standard'=
 returned 1:
>
> Added oe-repo repo from /home/iepl007/yocto_build/build_dir/tmp/work/pdm3=
_zynqmp-pdm3-linux/core-image-special-pdm3/1.0-r0/oe-rootfs-repo
>
> Last metadata expiration check: 0:00:00 ago on Tue 09 Apr 2019 01:49:20 P=
M UTC.
>
> Error:
>
> Problem: conflicting requests
>
>   - nothing provides avahi needed by packagegroup-pdm3-apps-1.0-r1.noarch
>
>
>
> ERROR: core-image-special-pdm3-1.0-r0 do_rootfs: Function failed: do_root=
fs
>
> ERROR: Logfile of failure stored in: /home/iepl007/yocto_build/build_dir/=
tmp/work/pdm3_zynqmp-pdm3-linux/core-image-special-pdm3/1.0-r0/temp/log.do_=
rootfs.12565
>
> ERROR: Task (/home/iepl007/yocto_build/poky/../meta-pdm3-dev/meta-ifm-pdm=
3/recipes-core/images/core-image-special-pdm3.bb:do_rootfs) failed with exi=
t code '1'
>
>
>
>
>
> And the error for dhcp is shown below:
>
>
>
>
>
> ERROR: Nothing RPROVIDES 'dhcp' (but /home/iepl007/yocto_build/poky/../me=
ta-pdm3-dev/meta-ifm-pdm3/recipes-core/packagegroups/packagegroup-pdm3-app.=
bb RDEPENDS on or otherwise requires it)
>
> NOTE: Runtime target 'dhcp' is unbuildable, removing...
>
> Missing or unbuildable dependency chain was: ['dhcp']
>
> NOTE: Runtime target 'packagegroup-pdm3-apps' is unbuildable, removing...
>
> Missing or unbuildable dependency chain was: ['packagegroup-pdm3-apps', '=
dhcp']
>
> ERROR: Required build target 'pdm3-special-swuimage' has no buildable pro=
viders.
>
> Missing or unbuildable dependency chain was: ['pdm3-special-swuimage', 'c=
ore-image-special-pdm3', 'packagegroup-pdm3-apps', 'dhcp']
>
>
>
> Please provide a solution for this I don=E2=80=99t want to clean my sstat=
e-cache or the tmp directory. I am ready to debug the corrupted sstate if s=
omeone is experienced with sstate-cache.
>
> Thanks
>
> Kamal Pandey
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

