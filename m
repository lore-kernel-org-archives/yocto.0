Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5688E00CF3; Tue, 26 Sep 2017 19:47:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86B9DE00CEC
	for <yocto@yoctoproject.org>; Tue, 26 Sep 2017 19:47:57 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	26 Sep 2017 19:47:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,442,1500966000"; d="scan'208";a="904210261"
Received: from scchinx-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.141.101])
	by FMSMGA003.fm.intel.com with ESMTP; 26 Sep 2017 19:47:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Amanda Brindle <amanda.r.brindle@intel.com>
Date: Wed, 27 Sep 2017 15:47:49 +1300
Message-ID: <8514010.Q98O0cr7YJ@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <1506382892-1617-1-git-send-email-amanda.r.brindle@intel.com>
References: <1506382892-1617-1-git-send-email-amanda.r.brindle@intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex][PATCH] Indicate if layer has YP Compatible certification
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
X-List-Received-Date: Wed, 27 Sep 2017 02:47:58 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Amanda,

On Tuesday, 26 September 2017 12:41:32 PM NZDT Amanda Brindle wrote:
> Allow admin to create Yocto Project versions with the version name,
> description, an icon link that represents that version, and a link that
> contains more information about the version.
> 
> Admins who have the "set_yp_compatibility" permission can then
> decide if a layer has Yocto Project compatible certification,
> and if it does, admin can choose which version of Yocto Project
> the layer is compatible with. If a layer is deemed compatible,
> the version's icon will appear next to the layer's name, and
> the icon will redirect to the link with more information.
> 
> Fixes [YOCTO #11452]

I've merged this with a few minor changes:

* Renamed redirect_url to link_url as it seemed a bit more appropriate
* Fixed missing quotes around attribute values in the template
* Added a data migration
* Set a verbose_name for YPCompatibleVersion and 
LayerBranch.yp_compatible_version

(Hope this is OK - normally I would have asked for a v2, but we're approaching 
the deadline for M4).

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

