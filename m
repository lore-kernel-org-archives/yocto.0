Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3A89E004D2
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 10:54:50 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 01 Feb 2012 10:54:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="102071289"
Received: from unknown (HELO envy.home) ([10.255.14.201])
	by azsmga001.ch.intel.com with ESMTP; 01 Feb 2012 10:54:46 -0800
Message-ID: <4F298A58.5030700@linux.intel.com>
Date: Wed, 01 Feb 2012 10:54:16 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: "Saxena, Rahul" <rahul.saxena@intel.com>
References: <63ECFF2A2302B44093D7CE9E9962C49002A109@ORSMSX103.amr.corp.intel.com>
In-Reply-To: <63ECFF2A2302B44093D7CE9E9962C49002A109@ORSMSX103.amr.corp.intel.com>
X-Enigmail-Version: 1.3.5
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Gaku music player
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
X-List-Received-Date: Wed, 01 Feb 2012 18:54:50 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 02/01/2012 09:57 AM, Saxena, Rahul wrote:
> Hello,
> 
>  
> 
> What type of music files is the Gaku music player on Sato desk top
> supposed to play ?
> 
> For me it did not work with mp3 files..however it is playing the
> soundtrack from a .ogg video file

It depends on which licenses you allow (the gstreamer mp3 plugin
requires acceptance of the commercial license iirc). Are you building on
edison or master?

--
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

