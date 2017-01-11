Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAEBDE00932; Wed, 11 Jan 2017 01:16:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.126.134 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.227.126.134 listed in list.dnswl.org]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6ACF8E0030B
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2017 01:16:14 -0800 (PST)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue002
	[212.227.15.163]) with ESMTPSA (Nemesis) id 0MdzeH-1c5z6013YT-00PeS0
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2017 10:16:13 +0100
From: <colin.helliwell@ln-systems.com>
To: <yocto@yoctoproject.org>
References: <10cd01d26822$55003760$ff00a620$@ln-systems.com>
	<1783218.8DiePDOEFx@rjs-zotac.streifs.net>
In-Reply-To: <1783218.8DiePDOEFx@rjs-zotac.streifs.net>
Date: Wed, 11 Jan 2017 09:16:12 -0000
Organization: LN Systems Limited
Message-ID: <015101d26beb$5adb3e10$1091ba30$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQKuwVx2zqSiHLGyxTbtQWjqu8Z9MAHqBNa2n2ljVHA=
X-Provags-ID: V03:K0:gE6zkm3svxqPxq5uqF1OayQxgm+5kEh/i0Q+U7gUosOOWeVfiXF
	tDHjzxioY8HaHW+DcoQOftRAT5TrZ8ojk8qKYalGX3iX7+WFa+EPrbyEfYEEqvoOsC/s74B
	CxjAhqKOjHRiiuNSdEFeMfiid1+5Ouu35ESIeKLqsJGoWAmsDZXKr9wr6dfaavukh/5FrFE
	Bs7qxN3Txg/A1RbF07tfQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:lUkYQhvlEIc=:8X9CuE3iCtd7SRWYS7giGH
	Gqb88oBVKsQZtt8nV276STc8w82mBLGK0XgwumUhpSfc90h1ptkBuRSeSmwFN7m+yKmAua+Nw
	isveC4UbzTZnbFCPiX1U8qi4TnCg/Vqul8WprC4oPM4Qv7qYOvQtuCNZABQ/khI4aqNXjxFw/
	tazM+s3Kj6/3/TdLrAcPLr5B1APBTed8l/soYXEgPE4kWEjlknLt6nU1o3EVDi4QMeNuYTbau
	al0Vp4v9HjcDRks9vN29dPYHrw6IrMFMZZpj08nhumTkyh0PAA+f7grPOcEhpIdXxpzUNEgmc
	QLQ9vq3GTJI944BdLALV77upcgUMmXKyjVXmQuEFDLfdE4hysO9inELXiUVi8PO6a4OcPTPGn
	cX+AdbxYUtde0FV3pVYK2bBDHgYQDyl0fmr7OfQr4k1dcr3LHzoIbTw0SPy82H0Xm4YlNf7+z
	kXAqJOsAiQvPvrLDWuzHZtgQAvZ8CmebNjaHE8n09I9V0s2zqRfxlng9+Nxr2Iuw8IP3x1/NY
	IfbLHr5hY6BJhx3kJeuFaQosPYezQFiKedAhRm3JOKH5K317bHLtPXFBEiCeq01AC+WvqS9kd
	zveotaTaN6p067iuDubPbMzy0KipYQtOkDqN47oO1DEJSZK68+v8cbJlERDyAbaO8u4NeL0Ql
	LENfUxD+rnQ2jrK0BLSDhZRwgQe0pyfq0shFsFBvBArMJHRcNIYUgEBmc7B3QpX/oByupnuaI
	uPYUoAnzismYl8kW
Subject: Re: Adding to inittab based on image content
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: colin.helliwell@ln-systems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 11 Jan 2017 09:16:17 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-gb

Thanks Rudi, that's got it.

-----Original Message-----
From: Rudolf J Streif [mailto:rudolf.streif@gmail.com] 
Sent: 06 January 2017 17:18
To: yocto@yoctoproject.org; colin.helliwell@ln-systems.com
Subject: Re: [yocto] Adding to inittab based on image content

Hi Colin,

The correct way of doing this is a package postinstallation script that is
run by the package manager after the package containing your application is
installed on the target system.

You add to your recipe:

pkg_postinst_${PN}() {
#!/bin/sh
echo "whateveryouneed" >> ${D}/etc/inittab }

The build system will include this as the post install script into the
package in the correct form for the package manager you are using e.g. RPM,
DEB, IPK.

This will work when the build system installs your package into the system
root or when executed on the target.

You can also distinguish the two cases:

pkg_postinst_${PN}() {
#!/bin/sh
if [ x"$D" = "x" ] ; then
   # shell commands for target execution else
   # shell commands for build system execution fi }

In the case of target execution $D is not set.



