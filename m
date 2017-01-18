Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68AA3E00A16; Wed, 18 Jan 2017 07:40:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2E9BE009CE
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 07:40:32 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id c85so4951923wmi.1
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 07:40:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=dSGPb5iO0xQhkBYhQje7HDWBYtsc3tP4Qq8g4pfs41o=;
	b=OhwiT3FyHwMZIDIXvcxW+ebhlllW3t/QFW3poTd+cWozfMBuSbDB7jLHy+UddGaSZn
	aeyxHm+Flgl75Emjbp8kzx9tx6AfIGXkpHrWFzHvpZI+NdnroWBRnzv4fD4nUQZRdlLw
	/CWXq95sdXGE+m2oXMbi9vFspfRDCM28cHDz1QArndkcy4fFgG0vxY9Ppdx4OwM1SoYy
	KUgauoT/fKuE3qkwZIh095ysiE/SJyDwpSv5SDE101b9XfX8sAY3/65GiFW9u+aHX5Ct
	saj9C9usnZpACoIliCmefKeufOR256I+j43qSyNWlzbHVdcVXQZaUB2e61Fpq5y70OYU
	bGXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=dSGPb5iO0xQhkBYhQje7HDWBYtsc3tP4Qq8g4pfs41o=;
	b=QAHxV3uGzWmur9h2trhoZs4JoewzKVKfBdI2y4gWFQ6OtV0hcgt/t2Nl9LGkv3O5UV
	JhHEDUpU1jGdeYFmHQtWpEAjgqXdpPqafJK5uQQavDonGftQvza51ScbHRawFYjNzhj0
	JzS7LFRsG3i3Wjm/VFZixhnYYbUdOUBdV17CxLWYrpGLFqSZBDLwSeDsL0/naXTff/ib
	FR2RZ+u+rtMrtokL7Cy6RFw+I/wB2zrf+5ZeqfKcEe31NtxgbvM5WRS2rPBi/dJfLCnU
	eIPv0ukOWM3mls1GkxbQs3IP7woHnwaTNYisamPZdxRY/4qyo7K85T7xV6w8R9pmFmHO
	Atqw==
X-Gm-Message-State: AIkVDXLou32rnLijvvPu56gpcA5gzJJUvnHvLMlrNr+yKDtQ9oO5u445GiemhWRsQktQyw==
X-Received: by 10.28.113.9 with SMTP id m9mr22396337wmc.60.1484754031718;
	Wed, 18 Jan 2017 07:40:31 -0800 (PST)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	a186sm46203410wmh.1.2017.01.18.07.40.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 18 Jan 2017 07:40:30 -0800 (PST)
Date: Wed, 18 Jan 2017 15:40:24 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Paul Barker <paul@paulbarker.me.uk>
Message-ID: <20170118154024.GA31825@carbonA>
References: <1484551617-11222-1-git-send-email-paul@paulbarker.me.uk>
	<8b8a6e45-6aa1-1536-92ae-837192b97ca7@mlbassoc.com>
	<d027a8ed-4f40-e4cb-d1de-349d93343f63@mlbassoc.com>
	<E4828DAD-529B-4C43-A13B-67096B6741EE@paulbarker.me.uk>
MIME-Version: 1.0
In-Reply-To: <E4828DAD-529B-4C43-A13B-67096B6741EE@paulbarker.me.uk>
User-Agent: Mutt/1.7.2 (2016-11-26)
Cc: yocto@yoctoproject.org, Gary Thomas <gary@mlbassoc.com>
Subject: Re: [meta-raspberrypi][PATCH 0/2] Drop kernel versions 4.7 and 4.8
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
X-List-Received-Date: Wed, 18 Jan 2017 15:40:37 -0000
X-Groupsio-MsgNum: 33907
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="J/dobhs11T7y2rNN"
Content-Disposition: inline

--J/dobhs11T7y2rNN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jan 16, 2017 at 03:12:51PM +0000, Paul Barker wrote:
> On 16 January 2017 14:51:55 GMT+00:00, Gary Thomas <gary@mlbassoc.com> wrote:
> >On 2017-01-16 15:48, Gary Thomas wrote:
> >> On 2017-01-16 08:26, Paul Barker wrote:
> >>> As discussed recently on the list, we can just keep LTS versions now
> >>> that v4.9 is available.
> >>>
> >>> I'm sending these so anyone who still needs v4.7 or v4.8 can shout
> >>> 'stop!' before we remove them.
> >>>
> >>> Paul Barker (2):
> >>>   linux-raspberrypi: Drop v4.7
> >>>   linux-raspberrypi: Drop v4.8
> >>>
> >>>  .../0001-fix-dtbo-rules.patch                      | 44
> >----------------------
> >>>  recipes-kernel/linux/linux-raspberrypi_4.7.bb      |  9 -----
> >>>  recipes-kernel/linux/linux-raspberrypi_4.8.bb      |  8 ----
> >>>  3 files changed, 61 deletions(-)
> >>>  delete mode 100644
> >recipes-kernel/linux/linux-raspberrypi-4.7/0001-fix-dtbo-rules.patch
> >>>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi_4.7.bb
> >>>  delete mode 100644 recipes-kernel/linux/linux-raspberrypi_4.8.bb
> >>>
> >>
> >> +1 at least for 4.7 given that with today's repo I get this:
> >>
> >> ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+c2cbd9c611-r0
> >do_kernel_version_sanity_check: Package Version
> >> (4.7.7+gitAUTOINC+c2cbd9c611) does not match of kernel being built
> >(4.7.10). Please update the PV variable to match the
> >> kernel source.
> >> ERROR: linux-raspberrypi-1_4.7.7+gitAUTOINC+c2cbd9c611-r0
> >do_kernel_version_sanity_check: Function failed:
> >> do_kernel_version_sanity_check (log file is located at
> >>
> >/build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-raspberrypi/1_4.7.7+gitAUTOINC+c2cbd9c611-r0/temp/log.do_kernel_version_sanity_check.27925)
> >>
> >> ERROR: Logfile of failure stored in:
> >>
> >/build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-raspberrypi/1_4.7.7+gitAUTOINC+c2cbd9c611-r0/temp/log.do_kernel_version_sanity_check.27925
> >>
> >> ERROR: Task
> >>
> >(/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.7.bb:do_kernel_version_sanity_check)
> >> failed with exit code '1'
> >>
> >
> >
> >However, there is this error when I tried to switch to 4.9:
> >ERROR: linux-raspberrypi-1_4.9.2+gitAUTOINC+4052b0da7d-r0 do_fetch:
> >Fetcher failure: Unable to find revision
> >4052b0da7dbab0df22ca8733cf50b3e573e221e0 in branch rpi-4.9.y even from
> >upstream
> >ERROR: linux-raspberrypi-1_4.9.2+gitAUTOINC+4052b0da7d-r0 do_fetch:
> >Fetcher failure for URL:
> >'git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.9.y'.
> >Unable to fetch URL from any source.
> >ERROR: linux-raspberrypi-1_4.9.2+gitAUTOINC+4052b0da7d-r0 do_fetch:
> >Function failed: base_do_fetch
> >ERROR: Logfile of failure stored in:
> >/build/rpi3_2016-09-13/tmp/work/raspberrypi3-amltd-linux-gnueabi/linux-raspberrypi/1_4.9.2+gitAUTOINC+4052b0da7d-r0/temp/log.do_fetch.13098
> >ERROR: Task
> >(/local/poky-cutting-edge/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.9.bb:do_fetch)
> >failed
> >with exit code '1'
> >
> >Using meta-raspberrypi:e1f69daa805cb02ddd123ae2d4d48035cb5b41d0
>
> I think any upstream branch after 4.4.y is still at risk of being rebased at the minute. I think the best solution is to still drop 4.7.y and 4.8.y, but try to get an update in for 4.9.y first.

I totally agree with this. I left this thread for a while to see if
people are really attached to these versions. Our last decision was to
keep:
1. last LTS
2. current stable version as considered by the upstream [default]
3. the latest bleading edge

Based we should only keep 4.4 and 4.10 (or 4.9).

Ane comments before I proceed? :)

>
>
> --
> Sent from my Android device with K-9 Mail. Please excuse my brevity.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--
Andrei Gherzan

--J/dobhs11T7y2rNN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEQvNqws+Dz7aX1cEEc7voa356t88FAlh/jGYACgkQc7voa356
t89tuxAAipcQcD1ZrpE2XsUdSD2vugxZv+lgUXTU+G3Whypx8H+NBLSewV0OSWgR
1ywSnBM7hEsdCsYUww5HiSxW9Q6FrwJC5xZO+t/OyAnab6xbKWm7qE7dKouheUWx
QbaIq3hwaAWp2x5YS6VzAN0ka7D7k3Me8644Qudyrs0bUWuZSvN65xf1hO+UCBV3
Idc2C2Mj3OW3ecX2wzfOt5izqkflOziPcCMrygLVZxS5bh3pKI8BXmizlFEWnuac
C2K3jIR1bTfF3cxyG6nFuBnm3YJ5a0/IXL0+FAhVLIM+CvjEZcEBtLcmvKHo69B6
r3NRfin2PBz/A6zOgndhnCTL1mnt/G22b6QROXcoCmtC8TA7AJY1oQ1/SkZplUzl
nXiyqXKx+DUBYJcmIIbv/xnf6e5qyMQ76af/lzefsWRIlxigOlOWiQS0znPdsE2I
+zWYkSgnxRKsltWHWE85roVR1mAMpJhKQh9w+X2AULOW286YNNnFwXu3mRHRkVP1
XG8dcQoLreyOrDceS7TK5WoI0GZM3SGfFXppi9ZcZHJWyFgo+BX+0ntrCXTxCclQ
G0RBbDWX9BVzSY7f43Kg6IpD1emvTvbrfaA4xJCORgUFfQ8WGntxWIDwY+uWfWIA
KKErmBbL3IxYsWqiCf8QOR4UsNtqhQW2R1xes4409QjJrl9E5+Q=
=ZD5u
-----END PGP SIGNATURE-----

--J/dobhs11T7y2rNN--
