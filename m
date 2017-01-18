Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 124C7E00ACE; Wed, 18 Jan 2017 06:58:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC10AE00A6D
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 06:58:53 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga105.jf.intel.com with ESMTP; 18 Jan 2017 06:58:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,249,1477983600"; d="scan'208";a="1114495484"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.71])
	by fmsmga002.fm.intel.com with ESMTP; 18 Jan 2017 06:58:51 -0800
Date: Wed, 18 Jan 2017 16:59:26 +0200
From: "Maxin B. John" <maxin.john@intel.com>
To: Gowtham Pandi <gowtham.pandi@tataelxsi.co.in>
Message-ID: <20170118145925.GA18363@mbabyjoh-desk.ger.corp.intel.com>
References: <SINPR0401MB1808A26F945A2E7ACB69D115A97F0@SINPR0401MB1808.apcprd04.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <SINPR0401MB1808A26F945A2E7ACB69D115A97F0@SINPR0401MB1808.apcprd04.prod.outlook.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Pulseaudio: build issue
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
X-List-Received-Date: Wed, 18 Jan 2017 14:58:55 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Gowtham,

On Wed, Jan 18, 2017 at 12:00:52PM +0000, Gowtham Pandi wrote:
>
>Hi All,
>
>I am using Raspberry Pi 3 model B. I am facing build issues while building bitbake pulseaudio.
>
>Please find my configuration details:
>
>Yocto : Jethro branch
>pulseaudio.inc RDEPENDS_pulseaudio-server += "alsa-plugins-pulseaudio-conf"
>we are using alsa-plugins_1.0.29.bb
>bitbake pulseaudio
>ERROR: Nothing RPROVIDES 'alsa-plugins-pulseaudio-conf' 
> (but /home/guest/openembedded-core/meta/recipes-multimedia/pulseaudio/pulseaudio_6.0.bb RDEPENDS on or otherwise requires it)
>
>NOTE: Runtime target 'alsa-plugins-pulseaudio-conf' is unbuildable, removing... 
>Missing or unbuildable dependency chain was: ['alsa-plugins-pulseaudio-conf'] 
> ERROR: Required build target 'pulseaudio' has no buildable providers.
> Missing or unbuildable dependency chain was: ['pulseaudio', 'alsa-plugins-pulseaudio-conf']
>
>
>Please share your inputs.

Please make sure that "pulseaudio" is present in the 'DISTRO_FEATURES'.

To test this, add the following line in your "local.conf" file and build again:
DISTRO_FEATURES_append =" pulseaudio"

>
>Thanks
>Gowtham  P

Best Regards,
Maxin

