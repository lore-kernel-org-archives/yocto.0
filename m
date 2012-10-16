Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C71DBE00292
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2012 02:31:02 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 16 Oct 2012 02:31:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,593,1344236400"; d="scan'208";a="235640516"
Received: from unknown (HELO helios.localnet) ([10.252.122.100])
	by fmsmga002.fm.intel.com with ESMTP; 16 Oct 2012 02:30:59 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Date: Tue, 16 Oct 2012 10:30:57 +0100
Message-ID: <2964284.i3b4jqrDuH@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.2 (Linux/3.2.0-32-generic-pae; KDE/4.9.2; i686; ; )
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A7F449@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A7F449@ORSMSX101.amr.corp.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: STAMP variable
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
X-List-Received-Date: Tue, 16 Oct 2012 09:31:03 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 15 October 2012 20:53:09 Rifenbark, Scott M wrote:
> There is a bug against the glossary description of the STAMP variable in the
> ref-manual (https://bugzilla.yoctoproject.org/show_bug.cgi?id=3262).  I
> would like to say that STAMP is the following:
> 
>    STAMP =
> "${TMPDIR}/stamps/${MULTIMACH_TARGET_SYS}/${PN}-${EXTENDPE}${PV}-${PR}"
> 
> And give a bit more information on it.  However, I currently have no
> descriptions for MULTIMACH_TARGET_SYS and EXTENDPE in the glossary.  Can
> someone offer some information about both these variables?
> 
> BTW - here is what we currently say for STAMP:
> 
>    STAMP - The directory (usually TMPDIR/stamps) with timestamps of executed
> tasks.

Right, the STAMP variable really specifies the main part of the path + filename 
for stamp files for a particular recipe, not just the directory.

MULTIMACH_TARGET_SYS is a variable used in a number of places to separate files 
for different machines such that you can build for multiple target machines 
using the same output directories.

EXTENDPE is a variable for use in file/path names which will act as a prefix for 
the version based on PE if PE is set and greater than zero for the recipe, or 
else will be empty. e.g. if PE is "1" then EXTENDPE will be "1_", whereas if 
PE is not set (the default) or 0 then EXTENDPE will be "".

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

