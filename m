Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F7A4E0071E; Fri, 30 Dec 2016 05:21:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.210.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wj0-f193.google.com (mail-wj0-f193.google.com
	[209.85.210.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20F65E006EC
	for <yocto@yoctoproject.org>; Fri, 30 Dec 2016 05:21:00 -0800 (PST)
Received: by mail-wj0-f193.google.com with SMTP id kp2so60732051wjc.0
	for <yocto@yoctoproject.org>; Fri, 30 Dec 2016 05:21:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=oxUP9JyOl5T1YNNnGx6yDTZkwcUL3DyZHeWY+uII8YA=;
	b=iU98qtp8LWQ7MmTtdYy3UQeOm2mNMEvXs3p5p1yc47Hezz5xv4CiTWnPnibgcbvXZJ
	rdmO+IOktmRCwT5IGUQRTkVaWkus8AkQmSwlhFHee4Je4W5D4xSBKywTs8R4KImNRfK0
	7CdixIsSGVT1FGfTai998B2l/dJJW+MOVd4upsk7N32TzODfEBUYeKncCpBIwOpPuiMK
	omxGrAaiofhGG2k/FMrldICKtynSzr+eugY7QA23LJ5TEycsIh7OwbHsAdRzfSC3o726
	JdJTTIOaHmuYFBzMjcpR0zzpMHon4CFJjTWhwEZH40IKHLWO2/r6XeqFPmW+ZOkuFerj
	a1wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=oxUP9JyOl5T1YNNnGx6yDTZkwcUL3DyZHeWY+uII8YA=;
	b=O1LCFjfmitNfOUu0uLLGHL7P4hrb0PHNtHKXGv+KJEektpCNfnLRzs3dFIs6G5docS
	Bl8AdYp8SZHCZEmh/i3pODkKL+NkhfBGSykFbS7U4rrH8F43+0IefHsXr3gdaVdrqlZQ
	+XZXHqOJ07KUpQW2ESWp2N8W6Z3X7yCdS++qkE2jBmQDMHxjYWeu6fBBEUNEmdkV9zLy
	SjDYmsdHWbD5afdcnTUyQKtij0navOFnIA9UjTXiqWaZPRQSX/MHUFLnCAzie9rWJ1jH
	Xnn3BqVo3poSPPRcRYPe9qHeJ5klhnhgpBpl/Syfh+QhuqzqcRmE6fdoOXD3H5wNfbrN
	LunA==
X-Gm-Message-State: AIkVDXJLGzVo59JW7uw+BUhvEtZTHrfPy8/OS8zCwRTdK7LRHE7yW7h32elLt+avQrxjQg==
X-Received: by 10.194.122.65 with SMTP id lq1mr41054396wjb.12.1483104059207;
	Fri, 30 Dec 2016 05:20:59 -0800 (PST)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	z6sm73414586wjt.24.2016.12.30.05.20.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 30 Dec 2016 05:20:58 -0800 (PST)
Date: Fri, 30 Dec 2016 13:20:51 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Piotr Lewicki <piotr.lewicki@elfin.de>
Message-ID: <20161230132051.GJ26059@carbonA>
References: <1481796330-13908-1-git-send-email-piotr.lewicki@elfin.de>
	<1481796330-13908-2-git-send-email-piotr.lewicki@elfin.de>
	<7304ACDB-B05D-472D-8FF5-FC5CE402E88E@gmail.com>
	<20161229182015.GE26059@carbonA>
	<feb28a07-c7de-033b-ba79-e9f81dd63667@elfin.de>
MIME-Version: 1.0
In-Reply-To: <feb28a07-c7de-033b-ba79-e9f81dd63667@elfin.de>
User-Agent: Mutt/1.7.1 (2016-10-04)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/1] linux-rpi: clean .config in before do_configure step
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
X-List-Received-Date: Fri, 30 Dec 2016 13:21:05 -0000
X-Groupsio-MsgNum: 33603
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rwgQ89ZNnFUwFHTC"
Content-Disposition: inline

--rwgQ89ZNnFUwFHTC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Dec 30, 2016 at 08:20:00AM +0100, Piotr Lewicki wrote:
> On 29.12.2016 19:20, Andrei Gherzan wrote:
> > On Fri, Dec 16, 2016 at 08:58:22AM -0800, Khem Raj wrote:
> > > > On Dec 15, 2016, at 2:05 AM, Piotr Lewicki <piotr.lewicki@elfin.de> wrote:
> > > >
> > > > Signed-off-by: Piotr Lewicki <piotr.lewicki@elfin.de>
> > > > ---
> > > > recipes-kernel/linux/linux-rpi.inc | 11 +++++++++--
> > > > 1 file changed, 9 insertions(+), 2 deletions(-)
> > > >
> > > > diff --git a/recipes-kernel/linux/linux-rpi.inc b/recipes-kernel/linux/linux-rpi.inc
> > > > index 95a9530..c665b9f 100644
> > > > --- a/recipes-kernel/linux/linux-rpi.inc
> > > > +++ b/recipes-kernel/linux/linux-rpi.inc
> > > > @@ -34,11 +34,13 @@ kernel_configure_variable() {
> > > >      fi
> > > > }
> > > >
> > > > -do_configure_prepend() {
> > > > +do_rpi_kconfig_clean() {
> > > >      # Clean .config
> > > > -    echo "" > ${B}/.config
> > > > +    echo -n "" > ${B}/.config
> > > >      CONF_SED_SCRIPT=""
> > > > +}
> > > >
> > > > +do_configure_prepend() {
> > > >      # oabi / eabi support
> > > >      kernel_configure_variable AEABI y
> > > >      if [ "${ARM_KEEP_OABI}" = "1" ] ; then
> > > > @@ -124,8 +126,11 @@ do_configure_prepend() {
> > > >      # Keep this the last line
> > > >      # Remove all modified configs and add the rest to .config
> > > >      sed -e "${CONF_SED_SCRIPT}" < '${WORKDIR}/defconfig' >> '${B}/.config'
> > > > +    # Clean variable- useful when calling configure step multiple times
> > > > +    CONF_SED_SCRIPT=""
> > > >
> > > >      yes '' | oe_runmake oldconfig
> > > > +
> > > > }
> > > >
> > > > # Automatically depend on lzop-native if CONFIG_KERNEL_LZO is enabled
> > > > @@ -146,3 +151,5 @@ python () {
> > > >
> > > >      configfile.close()
> > > > }
> > > > +
> > > > +addtask rpi_kconfig_clean before do_configure after do_populate_lic
> > > we should investigate the kernel tooling from OE-Core and use that IMO
> > I'm all for this. We should get rid of this and unify with oe-core
> > tooling.
> >
> > @Piotr Would you like to work on this and remove completely this while
> > reworking on the kernel fragments configuration support? I'll take a
> > look on the old patches too.
> @Andrei: I'll try to do this.

That would be very helpful. This one of my top things to change in this
layer.

--
Andrei Gherzan

--rwgQ89ZNnFUwFHTC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJYZl8zAAoJEHO76Gt+erfPNXAP/2mlwnqWx2kyyLd7bMZ5AupQ
ix1TmPCcA0IuZqD1d8cbshlmu5joZ1ULEQxzw0zKglhj60egSP7sNNfYkK+bVyNI
oii8kM8Hv7rwDIDfopC0UNVEDIalsGfufkrfr6qXGhBkd74EQke4zB2PS0iwVcq2
vpESf65wbKz8RtLcRxXE4AE/eDGTJVwi+O/oa47FmJNcrj1A1eLBqZNXSqFTHcAV
e54bUneXBhcmGmqo7AdX9DqeRdTKyxw5hvarzFA3PiBNlxKlY51otX6vS/zh1GjV
XTRx7wLllCixbUfPFlfx/Rp7woCy4njqGOKY7dBd3mkt4hdWIHYOfMxifqygF+em
IT9GE96JPzIB3KMnmAX+Vk9I/gW+KQOTQwh493X2SkjGbIWA+Xp3rhTqv6VfP0fr
wJE5WBzuw4mx6xJdbD1CQ9reyZ0UzgHnxt3mOiM6gXDsgeZj56ETxeoL0S5PUUDp
CkZb9rIpOuzMdSLlb6cBnOSywXV5lXH07/cOnK/xiaUiaJU6egfXmjaw2G97jacB
vdB3akmhaUnFsljWDd3UBvgXNL+Mf3TYqKLp61h/WhtF1yBio2yvQCdaqsWkgMJ2
qkDd7YYLalgcYIv1eZQ90kemIyiKpIk3TgrWw7/Jnyr6JYCYnZi86mTpS28+ehJ1
xtGmGWnlMwCIzfKYlXJZ
=slLn
-----END PGP SIGNATURE-----

--rwgQ89ZNnFUwFHTC--
