Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1E42E00786; Wed, 24 Sep 2014 02:20:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qg0-f52.google.com (mail-qg0-f52.google.com
	[209.85.192.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C841E0034C
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 02:20:03 -0700 (PDT)
Received: by mail-qg0-f52.google.com with SMTP id j5so4949182qga.11
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 02:20:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=4Kf7PUwg7Q4iU90oBcCz1Kfa2CxsjlU9ac8/jlauUow=;
	b=XnJKlTf36tAM02nbQLT73Knox1zq4bPCoEaZ5F3YX0TK4JDarS/6Uvdgh5NG02+/ub
	sS97pRUlPk9epA41A2E909EmeCx5I8TKJXe2gW7MO32/QhkJeiZOngT+CQlRF2u0GSwx
	LMTIPfwoIqYm7gqBGg2QxWA2x75ttRKFPSjUNsa/6gVTJ8pgFGqLdQ4j7oFRChDZKNEw
	esAMsoILdlp0+3tzRJjxucebzzaSBwu3dF1o0bhggVRKh5ds878hNUi8r6hyqT9A8L29
	rpYFINsjwgkCwstRK4BSvQDCl1ouddLCiiypSTRJABln5OwJkngB7r5/vcRjRolkoORQ
	eNmg==
X-Gm-Message-State: ALoCoQliZht0u6RDZGmMKqXfR6wN4fHrvoCSVOiebBFYiAe2tq3CIg88AAzvG0oJ+zDpfVOsXhuE
X-Received: by 10.140.94.144 with SMTP id g16mr6947253qge.77.1411550403014;
	Wed, 24 Sep 2014 02:20:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Wed, 24 Sep 2014 02:19:42 -0700 (PDT)
In-Reply-To: <3230301C09DEF9499B442BBE162C5E4825717E76@SESTOEX04.enea.se>
References: <9ADD3FDE8B189B4AA2F8A3C711F8155E552870EB@fmsmsx111.amr.corp.intel.com>
	<3230301C09DEF9499B442BBE162C5E4825717E76@SESTOEX04.enea.se>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 24 Sep 2014 10:19:42 +0100
Message-ID: <CAJTo0LZX5zVCyeDZVrhxsVoZRhHce4ePmxW+GiLLzm8OrFmm7w@mail.gmail.com>
To: Sona Sarmadi <sona.sarmadi@enea.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Minutes: Yocto Project Technical Team Meeting - Tuesday, September 9, 2014 8:00 AM US Pacific Time
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
X-List-Received-Date: Wed, 24 Sep 2014 09:20:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Sona,

On 24 September 2014 08:30, Sona Sarmadi <sona.sarmadi@enea.com> wrote:
> My name is Sona Sarmadi, and I am responsible for security for the Enea L=
inux & related opens source products which is based on Yocto. Together with=
 some other colleagues (Maxin John, Daniel Bornaz ..) we take care of secur=
ity patches (i.e. backport them from stable kernels to our kernels if they =
have not already fixed by Yocto or meta-vendors maintainers (such as meta-f=
sl-ppc, meta-fsl-arm, meta-ti, meta xilinx =E2=80=A6).

As well as security fixes for the kernel, do you also cover security
fixes for the userspace (i.e. everything else in oe-core)?  Help
keeping the rest of the system safe, and relevant fixes backported to
the stable releases, is always welcome.

Ross

