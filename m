Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web10.55887.1594036240128479062
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Jul 2020 04:50:41 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4B0kR2019Pz5tlK;
	Mon,  6 Jul 2020 13:50:37 +0200 (CEST)
Date: Mon, 6 Jul 2020 13:50:36 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Hans-Ulrich Schlieben <hu.schlieben@codewrights.de>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] #yocto howto use deltask
Message-ID: <20200706115036.2uervyzueqjggdpc@qschulz>
References: <qZOx.1594033211826466725.wfsG@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <qZOx.1594033211826466725.wfsG@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Mon, Jul 06, 2020 at 04:00:11AM -0700, Hans-Ulrich Schlieben wrote:
> Hi,
> 
> my image build fails with:
> ERROR: ims-image-fieldgate-1.0-r0 do_rootfs: The following packages could not be configured offline and rootfs is read-only: ['apparmor']
> 
> The image build succeeds if i remove the task pkg_postinst_ontarget_${PN} from apparmor_2.13.3.bb.
> 
> I tried to use deltask in my apparmor_2.13.3.bbappend with different settings:
> deltask postinst_ontarget
> deltask postinst
> deltask pkg_postinst
> deltask pkg_postinst_ontarget_
> deltask pkg_postinst_ontarget_apparmor
> deltask pkg_postinst_ontarget_apparmor_2
> 
> and
> 
> postinst_ontarget[noexec] = "1"
> postinst[noexec] = "1"
> pkg_postinst[noexec] = "1"
> pkg_postinst_ontarget_[noexec] = "1"
> pkg_postinst_ontarget_apparmor[noexec] = "1"
> pkg_postinst_ontarget_apparmor_2[noexec] = "1"
> 

What about:

pkg_postinst_ontarget_${PN}() {
	:
}

in your bbappend? This should effectively override the task from a
bbappend (except if there are _append for the task).

Can't comment on this being a good solution to your problem but that
should work to remove the content of pkg_postinst_ontarget.

Quentin
