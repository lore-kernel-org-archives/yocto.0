Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 845B1E014D3
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 22:55:10 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id xb4so1030396pbc.35
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 22:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:message-id:references:to:x-mailer;
	bh=BW3NRiEMhFv4gvXiiNbtztDacd86ssclv8wZrijsp7s=;
	b=aBjyUCsxm9FC48dMebYhRXHfm8lL5rIqAuHdU/Y1OohVHDDWkyklA98Wb+s15rMdwu
	/Jiste+jUogy+Mu5s6VKAUnI9EAD49XGfj0M04PCqpFfa34pJdguEeZ5BF+bQMpmk+OC
	vma8CtzFZYaQkm3K4wMBfj87EID0xQsaTR2iCI4mn0KRA4xGQ2czmY6FE35sAHuoCinF
	yk82UJnI5bEV/JGjG3sSqfrioNQULuM50D8/lLzNOAdMloAYNcZZkL6YeKworLMtdqm3
	StErGBKvYnOaNvAwZyCHO9GSdhjPIMNbmf9LLGnm1WyUfqYHmkpMsPvtMguWcw7ZTJNp
	JIyw==
X-Received: by 10.68.212.168 with SMTP id nl8mr56798227pbc.43.1366955709832;
	Thu, 25 Apr 2013 22:55:09 -0700 (PDT)
Received: from sa-nc-common-173.static.jnpr.net (natint3.juniper.net.
	[66.129.224.36]) by mx.google.com with ESMTPSA id
	ag4sm10270925pbc.20.2013.04.25.22.55.08 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 25 Apr 2013 22:55:09 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAFMfyzKZNic47o-x83EZu5ueu7imZE9ZWCtYGsPu+J-0oqE2qQ@mail.gmail.com>
Date: Thu, 25 Apr 2013 22:55:08 -0700
Message-Id: <D7500EF2-F639-468F-910E-4F8E9A42D549@gmail.com>
References: <CAFMfyzJJY0hFGXimgdVwzp8i58PnXPnAUyKH_bk9DU25FXVjiw@mail.gmail.com>
	<CAJTo0LbUfNkkgeM9HNN4pE6n-tMyMJY9_4_Ns5BTie91=Qy4HQ@mail.gmail.com>
	<CAFMfyzKZNic47o-x83EZu5ueu7imZE9ZWCtYGsPu+J-0oqE2qQ@mail.gmail.com>
To: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
X-Mailer: Apple Mail (2.1503)
Cc: yocto@yoctoproject.org
Subject: Re: Adding prebuilt binaries to /usr/bin on rootfs
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
X-List-Received-Date: Fri, 26 Apr 2013 05:55:10 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_34BC527D-A740-471F-BB3E-D5F6A6DE660F"

--Apple-Mail=_34BC527D-A740-471F-BB3E-D5F6A6DE660F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


On Apr 17, 2013, at 8:11 AM, Satya Swaroop Damarla =
<swaroop.damarla@gmail.com> wrote:

> Hi Burton,
>=20
> Please have a look at the build error I had
>=20
> WARNING: File '/usr/bin/sdusb-cmd' from skidata-tools was already =
stripped, this will prevent future debugging!
> ERROR: QA Issue: No GNU_HASH in the elf binary: =
'/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d=
16-poky-linux-gnueabi/skidata-tools/1.0-r0/packages-split/skidata-tools/us=
r/bin/devsrv'
> ERROR: QA Issue: No GNU_HASH in the elf binary: =
'/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d=
16-poky-linux-gnueabi/skidata-tools/1.0-r0/packages-split/skidata-tools/us=
r/bin/USBDownload'
> ERROR: QA Issue: No GNU_HASH in the elf binary: =
'/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d=
16-poky-linux-gnueabi/skidata-tools/1.0-r0/packages-split/skidata-tools/us=
r/bin/setty'
> ERROR: QA Issue: No GNU_HASH in the elf binary: =
'/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d=
16-poky-linux-gnueabi/skidata-tools/1.0-r0/packages-split/skidata-tools/us=
r/bin/TCPDownload'
> ERROR: QA Issue: No GNU_HASH in the elf binary: =
'/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d=
16-poky-linux-gnueabi/skidata-tools/1.0-r0/packages-split/skidata-tools/us=
r/bin/sdusb-cmd'
> ERROR: QA Issue: No GNU_HASH in the elf binary: =
'/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d=
16-poky-linux-gnueabi/skidata-tools/1.0-r0/packages-split/skidata-tools/us=
r/bin/i2c-test'
> ERROR: QA run found fatal errors. Please consider fixing them.
> ERROR: Function failed: do_package_qa
> ERROR: Logfile of failure stored in: =
/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d1=
6-poky-linux-gnueabi/skidata-tools/1.0-r0/temp/log.do_package.31327
> ERROR: Task 10 =
(/home/damarla/yocto/poky/meta/recipes-extended/skidata-tools/skidata-tool=
s.bb, do_package) failed with exit code '1'
>=20


This means linker flags are not proper. what happens if you add =
TARGET_CC_ARCH +=3D "${LDFLAGS}" to recipe=20



--Apple-Mail=_34BC527D-A740-471F-BB3E-D5F6A6DE660F
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv="Content-Type" content="text/html charset=iso-8859-1"></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; "><br><div><div>On Apr 17, 2013, at 8:11 AM, Satya Swaroop Damarla &lt;<a href="mailto:swaroop.damarla@gmail.com">swaroop.damarla@gmail.com</a>&gt; wrote:</div><br class="Apple-interchange-newline"><blockquote type="cite"><div dir="ltr">Hi Burton,<div><br></div><div style="">Please have a look at the build error I had</div><div style=""><br></div><div style=""><div>WARNING: File '/usr/bin/sdusb-cmd' from skidata-tools was already stripped, this will prevent future debugging!</div>
<div>ERROR: QA Issue: No GNU_HASH in the elf binary: '/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-r0/packages-split/skidata-tools/usr/bin/devsrv'</div>
<div>ERROR: QA Issue: No GNU_HASH in the elf binary: '/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-r0/packages-split/skidata-tools/usr/bin/USBDownload'</div>
<div>ERROR: QA Issue: No GNU_HASH in the elf binary: '/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-r0/packages-split/skidata-tools/usr/bin/setty'</div>
<div>ERROR: QA Issue: No GNU_HASH in the elf binary: '/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-r0/packages-split/skidata-tools/usr/bin/TCPDownload'</div>
<div>ERROR: QA Issue: No GNU_HASH in the elf binary: '/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-r0/packages-split/skidata-tools/usr/bin/sdusb-cmd'</div>
<div>ERROR: QA Issue: No GNU_HASH in the elf binary: '/home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-r0/packages-split/skidata-tools/usr/bin/i2c-test'</div>
<div>ERROR: QA run found fatal errors. Please consider fixing them.</div><div>ERROR: Function failed: do_package_qa</div><div>ERROR: Logfile of failure stored in: /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/cortexa9-vfp-vfpv3d16-poky-linux-gnueabi/skidata-tools/1.0-r0/temp/log.do_package.31327</div>
<div>ERROR: Task 10 (/home/damarla/yocto/poky/meta/recipes-extended/skidata-tools/<a href="http://skidata-tools.bb/">skidata-tools.bb</a>, do_package) failed with exit code '1'</div><div><br></div></div></div></blockquote><div><br></div><div><br></div><div>This means linker flags are not proper. what happens if you add&nbsp;TARGET_CC_ARCH += "${LDFLAGS}" to recipe&nbsp;</div><div><br></div></div><br></body></html>

--Apple-Mail=_34BC527D-A740-471F-BB3E-D5F6A6DE660F--
