Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30768E00510
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 09:55:31 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 25 Nov 2013 09:55:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,769,1378882800"; d="scan'208";a="439548409"
Received: from akagikob-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.121.166])
	by fmsmga002.fm.intel.com with ESMTP; 25 Nov 2013 09:55:30 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Mon, 25 Nov 2013 17:55:29 +0000
Message-ID: <3067877.hygbnmzJEU@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1311240615540.543@oneiric>
References: <alpine.DEB.2.02.1311240615540.543@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] Documentation: dev manual, add a reference to poky-bleeding distro
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
X-List-Received-Date: Mon, 25 Nov 2013 17:55:34 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday 24 November 2013 06:18:55 Robert P. J. Day wrote:
> As an actual example of using AUTOREV, refer the reader to the
> Yocto-supplied poky-bleeding distribution.
> 
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> 
> ---
> 
> diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml
> b/documentation/dev-manual/dev-manual-common-tasks.xml index
> 6b60445..fba2484 100644
> --- a/documentation/dev-manual/dev-manual-common-tasks.xml
> +++ b/documentation/dev-manual/dev-manual-common-tasks.xml
> @@ -4405,6 +4405,36 @@
>              is the name of the recipe for which you want to enable
> automatic source revision updating.
>          </para>
> +
> +        <para>
> +            In fact, the Yocto Project provides a distribution named
> +            <filename>poky-bleeding</filename>, whose configuration file
> contains +            the line:
> +            <literallayout class='monospaced'>
> +     require conf/distro/include/poky-floating-revisions.inc
> +            </literallayout>
> +            which pulls in the listed include file that contains numerous
> lines of +            exactly that form:
> +            <literallayout class='monospaced'>
> +     SRCREV_pn-gconf-dbus ?= "${AUTOREV}"
> +     SRCREV_pn-matchbox-common ?= "${AUTOREV}"
> +     SRCREV_pn-matchbox-config-gtk ?= "${AUTOREV}"
> +     SRCREV_pn-matchbox-desktop ?= "${AUTOREV}"
> +     SRCREV_pn-matchbox-keyboard ?= "${AUTOREV}"
> +     SRCREV_pn-matchbox-panel ?= "${AUTOREV}"
> +     SRCREV_pn-matchbox-panel-2 ?= "${AUTOREV}"
> +     SRCREV_pn-matchbox-themes-extra ?= "${AUTOREV}"
> +     SRCREV_pn-matchbox-terminal ?= "${AUTOREV}"
> +     SRCREV_pn-matchbox-wm ?= "${AUTOREV}"
> +     SRCREV_pn-matchbox-wm-2 ?= "${AUTOREV}"
> +     SRCREV_pn-settings-daemon ?= "${AUTOREV}"
> +     SRCREV_pn-screenshot ?= "${AUTOREV}"
> +     SRCREV_pn-libfakekey ?= "${AUTOREV}"
> +     SRCREV_pn-oprofileui ?= "${AUTOREV}"
> +            </literallayout>
> +            and so on, allowing the developer to experiment with building a
> distribution that +            tracks the latest development source for
> numerous packages. +            </para>
>      </section>
> 
>      <section id='creating-a-read-only-root-filesystem'>

What's missing from this is something like "caution - poky-bleeding is not 
tested on a regular basis, if it breaks you get to keep all of the pieces"

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

