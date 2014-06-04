Return-Path: <janne@jannau.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DB0CE00BDF; Wed,  4 Jun 2014 06:48:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
X-Greylist: delayed 552 seconds by postgrey-1.32 at yocto-www;
	Wed, 04 Jun 2014 06:48:05 PDT
Received: from soltyk.jannau.net (soltyk.jannau.net [185.27.253.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35229E00B5C
	for <yocto@yoctoproject.org>; Wed,  4 Jun 2014 06:48:05 -0700 (PDT)
Received: by soltyk.jannau.net (Postfix, from userid 1000)
	id 3A0083E1602; Wed,  4 Jun 2014 15:38:50 +0200 (CEST)
Date: Wed, 4 Jun 2014 15:38:50 +0200
From: Janne Grunau <janne-x264@jannau.net>
To: Mailing list for x264 developers <x264-devel@videolan.org>
Message-ID: <20140604133849.GG3630@jannau.net>
References: <4D2B74E594FF4C4A97424079247E473A17DC8258@PGSMSX104.gar.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <4D2B74E594FF4C4A97424079247E473A17DC8258@PGSMSX104.gar.corp.intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Mailman-Approved-At: Fri, 06 Jun 2014 11:32:24 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: Re: [x264-devel] [Repo Issue] x264: Unable to find revision
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
X-List-Received-Date: Wed, 04 Jun 2014 13:48:09 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 2014-05-30 09:39:46 +0000, Chong, Hui Qing wrote:
> Hi, I am working on Yocto Project 1.6, Daisy branch. Previously I am able to build the image successfully, but now I have errors as follow:
> 
> ERROR: Fetcher failure: Unable to find revision 585324fee380109acd9986388f857f413a60b896 in branch master even from upstream
> ERROR: Function failed: Fetcher failure for URL: 'git://git.videolan.org/x264.git'. Unable to fetch URL from any source.
> 
> In the x264_git.bb file, the SRC_URI and SRCREV are:
> 
> SRC_URI = "git://git.videolan.org/x264.git \
> 	        file://don-t-default-to-cortex-a9-with-neon.patch \
> 	        "
> SRCREV = "585324fee380109acd9986388f857f413a60b896"
> 
> Does anyone notice this and is there any solution for this error? Thank you.

The git tree got rewritten, 585324fee380109acd9986388f857f413a60b896 has to 
be replaced by the corrosponding hash: 
ffc3ad4945da69f3caa2b40e4eed715a9a8d9526

http://sprunge.us/dGOU has a full map of old and new hashes

HTH

Janne

