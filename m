Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 601424C8090B
	for <yocto@yoctoproject.org>; Thu,  2 Jun 2011 10:16:11 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 02 Jun 2011 08:16:10 -0700
X-ExtLoop1: 1
Received: from unknown (HELO [10.255.13.27]) ([10.255.13.27])
	by orsmga002.jf.intel.com with ESMTP; 02 Jun 2011 08:16:10 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1307024851.git.paul.eggleton@linux.intel.com>
References: <cover.1307024851.git.paul.eggleton@linux.intel.com>
Date: Thu, 02 Jun 2011 10:16:09 -0500
Message-ID: <1307027769.2376.15.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/2] meta-intel: minor layer fixes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 02 Jun 2011 15:16:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-06-02 at 07:32 -0700, Paul Eggleton wrote:
> A couple of minor things I uncovered whilst working on the layer tools.
> 
> Paul Eggleton (2):
>   meta-emenlow: remove obsolete bbappends
>   meta-crownbay: tidy up layer configuration
> 
>  meta-crownbay/conf/layer.conf                      |    6 +-----
>  .../clutter/clutter-1.4_1.4.2.bbappend             |    4 ----
>  .../recipes-qt/qt4/qt4-x11-free_4.6.3.bbappend     |    2 --
>  3 files changed, 1 insertions(+), 11 deletions(-)
>  delete mode 100644 meta-emenlow/recipes-graphics/clutter/clutter-1.4_1.4.2.bbappend
>  delete mode 100644 meta-emenlow/recipes-qt/qt4/qt4-x11-free_4.6.3.bbappend
> 

Acked-by: Tom Zanussi <tom.zanussi@intel.com>

Applied to meta-intel/master.

Thanks, Paul!


